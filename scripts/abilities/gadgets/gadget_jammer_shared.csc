// Atian COD Tools GSC CW decompiler test
#using script_13da4e6b98ca81a1;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace jammer;

// Namespace jammer/gadget_jammer_shared
// Params 0, eflags: 0x5
// Checksum 0x3db02067, Offset: 0x1e0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"gadget_jammer", &preinit, undefined, undefined, undefined);
}

// Namespace jammer/gadget_jammer_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x98b8c2b9, Offset: 0x228
// Size: 0x14
function private preinit() {
    init_shared();
}

// Namespace jammer/gadget_jammer_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x8685d0cf, Offset: 0x248
// Size: 0xec
function init_shared() {
    if (!isdefined(level.var_578f7c6d)) {
        level.var_578f7c6d = spawnstruct();
    }
    level.var_578f7c6d.weapon = getweapon(#"gadget_jammer");
    level.jammerradius = getdvarint(#"hash_7f7f1118da837313", level.var_578f7c6d.weapon.explosionradius);
    if (!isdefined(level.var_6d8e6535)) {
        level.var_6d8e6535 = [];
    }
    registerclientfields();
    callback::on_localclient_connect(&on_localplayer_connect);
}

// Namespace jammer/gadget_jammer_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xe4c72bd5, Offset: 0x340
// Size: 0x22
function register(entity, var_b89c18) {
    entity.var_a19988fc = var_b89c18;
}

// Namespace jammer/gadget_jammer_shared
// Params 0, eflags: 0x6 linked
// Checksum 0xe2093e45, Offset: 0x370
// Size: 0x244
function private registerclientfields() {
    clientfield::register("scriptmover", "isJammed", 1, 1, "int", &function_43a5b68a, 0, 0);
    clientfield::register("missile", "isJammed", 1, 1, "int", &function_43a5b68a, 0, 0);
    clientfield::register("vehicle", "isJammed", 1, 1, "int", &function_43a5b68a, 0, 0);
    clientfield::register("toplayer", "isJammed", 1, 1, "int", &player_isjammed, 0, 1);
    clientfield::register("allplayers", "isHiddenByFriendlyJammer", 1, 1, "int", &function_b53badf6, 0, 1);
    clientfield::register("missile", "jammer_active", 1, 1, "int", &jammeractive, 0, 0);
    clientfield::register("missile", "jammer_hacked", 1, 1, "counter", &jammerhacked, 0, 0);
    clientfield::register("toplayer", "jammedvehpostfx", 1, 1, "int", &function_4a82368f, 0, 1);
}

// Namespace jammer/gadget_jammer_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x3fcc63f3, Offset: 0x5c0
// Size: 0x5c
function on_localplayer_connect(localclientnum) {
    setuimodelvalue(createuimodel(function_1df4c3b0(localclientnum, #"hash_6f4b11a0bee9b73d"), "jammedStrength"), 0);
}

// Namespace jammer/gadget_jammer_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x5d4b8b93, Offset: 0x628
// Size: 0x7c
function jammeractive(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, bwastimejump) {
    if (fieldname == 1) {
        self function_2560e153(binitialsnap, bwastimejump);
        self thread function_5e3d8fe(binitialsnap);
    }
}

// Namespace jammer/gadget_jammer_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xfca4a6ee, Offset: 0x6b0
// Size: 0xfc
function jammerhacked(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isentity(self.iconent)) {
        return;
    }
    localplayer = function_5c10bd79(bwastimejump);
    if (util::function_fbce7263(localplayer.team, self.team) && !codcaster::function_b8fe9b52(bwastimejump)) {
        self.iconent setcompassicon("ui_hud_minimap_shroud_flipbook");
        return;
    }
    self.iconent setcompassicon("ui_hud_minimap_shroud_friendly");
}

// Namespace jammer/gadget_jammer_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xecc83a27, Offset: 0x7b8
// Size: 0x1e0
function function_43a5b68a(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump) {
    self.isjammed = undefined;
    if (newval == 1) {
        self.isjammed = 1;
    }
    if (!isdefined(self)) {
        return;
    }
    if (isdefined(self.var_a19988fc)) {
        self thread [[ self.var_a19988fc ]](localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump);
    }
    weapon = isdefined(self.identifier_weapon) ? self.identifier_weapon : self.weapon;
    if (!isdefined(weapon.var_96850284)) {
        return;
    }
    self util::waittill_dobj(localclientnum);
    if (!isdefined(self)) {
        return;
    }
    if (newval == 1) {
        self.var_4dc44ba4 = playtagfxset(localclientnum, weapon.var_96850284, self);
        return;
    }
    if (newval == 0 && oldval == 1 && isdefined(self.var_4dc44ba4)) {
        foreach (fx in self.var_4dc44ba4) {
            stopfx(localclientnum, fx);
        }
    }
}

// Namespace jammer/gadget_jammer_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xfabd180, Offset: 0x9a0
// Size: 0x11c
function function_b53badf6(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self) || !isplayer(self)) {
        return;
    }
    self util::waittill_dobj(fieldname);
    if (!isdefined(self)) {
        return;
    }
    localplayer = function_5c10bd79(fieldname);
    if (self == localplayer || self.team == localplayer.team) {
        return;
    }
    if (bwastimejump == 1) {
        self function_811196d1(1);
        return;
    }
    if (bwastimejump == 0) {
        self function_811196d1(0);
    }
}

// Namespace jammer/gadget_jammer_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x60f7008c, Offset: 0xac8
// Size: 0x266
function player_isjammed(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, bwastimejump) {
    if (!isdefined(self) || !isplayer(self)) {
        return;
    }
    self util::waittill_dobj(bnewent);
    if (!isdefined(self)) {
        return;
    }
    var_da91b79d = getuimodel(function_1df4c3b0(bnewent, #"hash_6f4b11a0bee9b73d"), "jammedStrength");
    if (fieldname == 1) {
        self notify(#"stop_sounds");
        playsound(bnewent, #"hash_4a43757dd4b02977");
        level.var_6d8e6535[bnewent] = function_604c9983(bnewent, #"hash_3330b85ee1abeb2b");
        self thread function_e9e14905(bnewent);
        setuimodelvalue(var_da91b79d, 1);
        self notify(#"hash_55123a0e484012d5");
        return;
    }
    if (fieldname == 0) {
        if (isdefined(level.var_6d8e6535[bnewent]) && !bwastimejump) {
            playsound(bnewent, #"hash_112352517abf5b11");
        }
        self notify(#"stop_sounds");
        if (binitialsnap == 1 && isalive(self) && self function_da43934d()) {
            self thread function_b47f94f(bnewent, var_da91b79d);
            return;
        }
        setuimodelvalue(var_da91b79d, 0);
        self notify(#"hash_55123a0e484012d5");
    }
}

// Namespace jammer/gadget_jammer_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x2027e042, Offset: 0xd38
// Size: 0xd4
function function_b47f94f(*localclientnum, var_da91b79d) {
    self endon(#"hash_55123a0e484012d5");
    endtime = 0.25;
    for (progress = 0; progress < endtime; progress += 0.1) {
        percent = 1 - min(1, progress / endtime);
        setuimodelvalue(var_da91b79d, percent);
        wait(0.15);
    }
    setuimodelvalue(var_da91b79d, 0);
}

// Namespace jammer/gadget_jammer_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x627dc8c0, Offset: 0xe18
// Size: 0x264
function function_2560e153(localclientnum, bwastimejump) {
    localplayer = function_5c10bd79(localclientnum);
    if (bwastimejump === 1) {
        if (isdefined(self.iconent)) {
            return;
        }
    } else if (isdefined(self.iconent)) {
        self.iconent delete();
    }
    self.iconent = spawn(localclientnum, self.origin, "script_model", localplayer getentitynumber(), self.team);
    self.iconent setmodel(#"tag_origin");
    self.iconent linkto(self);
    self.iconent setcompassicon("ui_hud_minimap_shroud_flipbook");
    self.iconent function_a5edb367(#"neutral");
    self.iconent enableonradar();
    if (localplayer.team == self.team || codcaster::function_b8fe9b52(localclientnum)) {
        self.iconent setcompassicon("ui_hud_minimap_shroud_friendly");
    } else {
        self.iconent setcompassicon("ui_hud_minimap_shroud_flipbook");
    }
    diameter = getdvarint(#"hash_7f7f1118da837313", level.var_578f7c6d.weapon.explosionradius) * 2;
    self.iconent function_5e00861(diameter, 1);
    self thread function_fc59d60e(localclientnum);
}

// Namespace jammer/gadget_jammer_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x66a40844, Offset: 0x1088
// Size: 0x14e
function function_5e3d8fe(localclientnum) {
    self notify("5359f065dcc45c69");
    self endon("5359f065dcc45c69");
    self endon(#"death");
    self util::waittill_dobj(localclientnum);
    var_df1b3b55 = 0.6;
    var_8288805c = 0.2;
    if (isdefined(self.weapon.customsettings)) {
        var_966a1350 = getscriptbundle(self.weapon.customsettings);
        if (isdefined(var_966a1350.var_b941081f) && isdefined(var_966a1350.var_40772cbe)) {
            while (isdefined(self)) {
                self.fx = util::playfxontag(localclientnum, var_966a1350.var_b941081f, self, var_966a1350.var_40772cbe);
                wait(var_8288805c);
                if (isdefined(self.fx)) {
                    stopfx(localclientnum, self.fx);
                }
                wait(var_df1b3b55);
            }
        }
    }
}

// Namespace jammer/gadget_jammer_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x52e210f8, Offset: 0x11e0
// Size: 0x7c
function function_e9e14905(localclientnum) {
    self waittill(#"death", #"stop_sounds");
    if (isdefined(level.var_6d8e6535[localclientnum])) {
        function_d48752e(localclientnum, level.var_6d8e6535[localclientnum]);
        level.var_6d8e6535[localclientnum] = undefined;
    }
}

// Namespace jammer/gadget_jammer_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xf43967fa, Offset: 0x1268
// Size: 0xcc
function function_4a82368f(*local_client_num, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self postfx::playpostfxbundle(#"hash_68b6dee9bf4fbfbe");
        return;
    }
    if (bwastimejump == 0 && self postfx::function_556665f2(#"hash_68b6dee9bf4fbfbe")) {
        self postfx::stoppostfxbundle(#"hash_68b6dee9bf4fbfbe");
    }
}

// Namespace jammer/gadget_jammer_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x88b584ee, Offset: 0x1340
// Size: 0x4c
function private function_fc59d60e(*localclientnum) {
    self waittill(#"death");
    if (isdefined(self.iconent)) {
        self.iconent delete();
    }
}

