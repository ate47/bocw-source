// Atian COD Tools GSC CW decompiler test
#using script_324d329b31b9b4ec;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\struct.csc;

#namespace supplydrop;

// Namespace supplydrop/supplydrop_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xcdb4a1, Offset: 0x1e0
// Size: 0x294
function init_shared() {
    if (!isdefined(level.var_ba8d5308)) {
        level.var_ba8d5308 = {};
        ir_strobe::init_shared();
        params = getscriptbundle("killstreak_helicopter_guard");
        level._effect[#"heli_guard_light"][#"friendly"] = params.var_667eb0de;
        level._effect[#"heli_guard_light"][#"enemy"] = params.var_1d8c24a8;
        clientfield::register("vehicle", "supplydrop_care_package_state", 1, 1, "int", &supplydrop_care_package_state, 0, 0);
        clientfield::register("vehicle", "supplydrop_ai_tank_state", 1, 1, "int", &supplydrop_ai_tank_state, 0, 0);
        clientfield::register("vehicle", "" + #"hash_e4eb5c0853abab8", 6000, 1, "int", &function_feeeb71b, 0, 0);
        clientfield::register("scriptmover", "crate_landed", 1, 1, "int", &function_4559c532, 0, 0);
        if (sessionmodeismultiplayergame() && is_false(getgametypesetting(#"useitemspawns"))) {
            clientfield::register("scriptmover", "supply_drop_parachute_rob", 1, 1, "int", &supply_drop_parachute, 0, 0);
        }
        level.var_835198ed = getscriptbundle("killstreak_supply_drop");
    }
}

// Namespace supplydrop/supplydrop_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x5278ef5c, Offset: 0x480
// Size: 0x16c
function function_4559c532(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        localplayer = function_5c10bd79(fieldname);
        if (localplayer !== self.owner) {
            self function_1f0c7136(2);
        }
        if (localplayer hasperk(fieldname, #"specialty_showscorestreakicons") || self.team == localplayer.team) {
            self setcompassicon(level.var_835198ed.var_cb98fbf7);
            self function_5e00861(isdefined(level.var_835198ed.var_c3e4af00) ? level.var_835198ed.var_c3e4af00 : 0);
            var_b13727dd = getgametypesetting("compassAnchorScorestreakIcons");
            self function_dce2238(var_b13727dd);
        }
    }
}

// Namespace supplydrop/supplydrop_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x15bfb0b1, Offset: 0x5f8
// Size: 0x86
function function_724944f0(localclientnum) {
    player = self;
    player.markerfx = undefined;
    if (isdefined(player.markerobj)) {
        player.markerobj delete();
    }
    if (isdefined(player.markerfxhandle)) {
        killfx(localclientnum, player.markerfxhandle);
        player.markerfxhandle = undefined;
    }
}

// Namespace supplydrop/supplydrop_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x84ccf2c0, Offset: 0x688
// Size: 0x3c
function setupanimtree() {
    if (self hasanimtree() == 0) {
        self useanimtree("generic");
    }
}

// Namespace supplydrop/supplydrop_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x82ea1a20, Offset: 0x6d0
// Size: 0x62
function supplydrop_care_package_state(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    if (bwastimejump == 1) {
    }
}

// Namespace supplydrop/supplydrop_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x23418da5, Offset: 0x740
// Size: 0x76
function supplydrop_ai_tank_state(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self setupanimtree();
    if (bwastimejump == 1) {
    }
}

// Namespace supplydrop/supplydrop_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x4e325a3a, Offset: 0x7c0
// Size: 0x130
function updatemarkerthread(localclientnum) {
    self endoncallback(&function_724944f0, #"death");
    player = self;
    killstreakcorebundle = getscriptbundle("killstreak_core");
    while (isdefined(player.markerobj)) {
        viewangles = getlocalclientangles(localclientnum);
        forwardvector = vectorscale(anglestoforward(viewangles), killstreakcorebundle.ksmaxairdroptargetrange);
        results = bullettrace(player geteye(), player geteye() + forwardvector, 0, player);
        player.markerobj.origin = results[#"position"];
        waitframe(1);
    }
}

// Namespace supplydrop/supplydrop_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xf78ae3e4, Offset: 0x8f8
// Size: 0x102
function stopcrateeffects(localclientnum) {
    crate = self;
    if (isdefined(crate.thrusterfxhandle0)) {
        stopfx(localclientnum, crate.thrusterfxhandle0);
    }
    if (isdefined(crate.thrusterfxhandle1)) {
        stopfx(localclientnum, crate.thrusterfxhandle1);
    }
    if (isdefined(crate.thrusterfxhandle2)) {
        stopfx(localclientnum, crate.thrusterfxhandle2);
    }
    if (isdefined(crate.thrusterfxhandle3)) {
        stopfx(localclientnum, crate.thrusterfxhandle3);
    }
    crate.thrusterfxhandle0 = undefined;
    crate.thrusterfxhandle1 = undefined;
    crate.thrusterfxhandle2 = undefined;
    crate.thrusterfxhandle3 = undefined;
}

// Namespace supplydrop/supplydrop_shared
// Params 1, eflags: 0x0
// Checksum 0xa8f4be2b, Offset: 0xa08
// Size: 0x74
function cleanupthrustersthread(localclientnum) {
    crate = self;
    crate notify(#"cleanupthrustersthread_singleton");
    crate endon(#"cleanupthrustersthread_singleton");
    crate waittill(#"death");
    crate stopcrateeffects(localclientnum);
}

// Namespace supplydrop/supplydrop_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xb72b1b39, Offset: 0xa88
// Size: 0x94
function supply_drop_parachute(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self playrenderoverridebundle(#"hash_336cece53ae2342f");
        return;
    }
    self stoprenderoverridebundle(#"hash_336cece53ae2342f");
}

// Namespace supplydrop/supplydrop_shared
// Params 7, eflags: 0x0
// Checksum 0xa67cc0ad, Offset: 0xb28
// Size: 0x264
function marker_state_changed(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    player = self;
    killstreakcorebundle = getscriptbundle("killstreak_core");
    if (bwastimejump == 1) {
        player.markerfx = killstreakcorebundle.fxvalidlocation;
    } else if (bwastimejump == 2) {
        player.markerfx = killstreakcorebundle.fxinvalidlocation;
    } else {
        player.markerfx = undefined;
    }
    if (isdefined(player.markerobj) && !player.markerobj hasdobj(fieldname)) {
        return;
    }
    if (isdefined(player.markerfxhandle)) {
        killfx(fieldname, player.markerfxhandle);
        player.markerfxhandle = undefined;
    }
    if (isdefined(player.markerfx)) {
        if (!isdefined(player.markerobj)) {
            player.markerobj = spawn(fieldname, (0, 0, 0), "script_model");
            player.markerobj.angles = (270, 0, 0);
            player.markerobj setmodel(#"wpn_t7_none_world");
            player.markerobj util::waittill_dobj(fieldname);
            player thread updatemarkerthread(fieldname);
        }
        player.markerfxhandle = util::playfxontag(fieldname, player.markerfx, player.markerobj, "tag_origin");
        return;
    }
    if (isdefined(player.markerobj)) {
        player.markerobj delete();
    }
}

// Namespace supplydrop/supplydrop_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xa8b3efc7, Offset: 0xd98
// Size: 0xae
function function_feeeb71b(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self.var_7246dab7 = util::playfxontag(fieldname, #"hash_5677371ed9b935dd", self, "tag_body");
        return;
    }
    if (isdefined(self.var_7246dab7)) {
        killfx(fieldname, self.var_7246dab7);
        self.var_7246dab7 = undefined;
    }
}

