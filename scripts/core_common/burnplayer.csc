// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace burnplayer;

// Namespace burnplayer/burnplayer
// Params 0, eflags: 0x5
// Checksum 0x243fbc50, Offset: 0x128
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"burnplayer", &preinit, undefined, undefined, undefined);
}

// Namespace burnplayer/burnplayer
// Params 0, eflags: 0x6 linked
// Checksum 0x9e0ab47b, Offset: 0x170
// Size: 0x12c
function private preinit() {
    clientfield::register("allplayers", "burn", 1, 1, "int", &burning_callback, 0, 1);
    clientfield::register("allplayers", "burn_fx_3p", 11001, 1, "int", &function_3caf53f1, 0, 1);
    clientfield::register("playercorpse", "burned_effect", 1, 1, "int", &burning_corpse_callback, 0, 1);
    loadeffects();
    callback::on_localplayer_spawned(&on_localplayer_spawned);
    callback::on_localclient_connect(&on_local_client_connect);
}

// Namespace burnplayer/burnplayer
// Params 0, eflags: 0x2 linked
// Checksum 0x68c2c4fa, Offset: 0x2a8
// Size: 0x10
function loadeffects() {
    level.burntags = [];
}

// Namespace burnplayer/burnplayer
// Params 1, eflags: 0x2 linked
// Checksum 0x6c6108ed, Offset: 0x2c0
// Size: 0xc
function on_local_client_connect(*localclientnum) {
    
}

// Namespace burnplayer/burnplayer
// Params 1, eflags: 0x2 linked
// Checksum 0x1c7eaf30, Offset: 0x2d8
// Size: 0x94
function on_localplayer_spawned(*localclientnum) {
    if (self function_21c0fa55() && self clientfield::get("burn") == 0 && self postfx::function_556665f2(#"pstfx_burn_loop")) {
        self postfx::stoppostfxbundle(#"pstfx_burn_loop");
    }
}

// Namespace burnplayer/burnplayer
// Params 7, eflags: 0x2 linked
// Checksum 0xbdc57936, Offset: 0x378
// Size: 0xa4
function burning_callback(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self function_a6cb96f(fieldname);
        self function_adae7d84(fieldname);
        return;
    }
    self function_8227cec3(fieldname);
    self function_68a11df6(fieldname);
}

// Namespace burnplayer/burnplayer
// Params 7, eflags: 0x2 linked
// Checksum 0xdae6afb2, Offset: 0x428
// Size: 0x7c
function function_3caf53f1(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self function_adae7d84(fieldname, 1);
        return;
    }
    self function_68a11df6(fieldname);
}

// Namespace burnplayer/burnplayer
// Params 7, eflags: 0x2 linked
// Checksum 0x4b023251, Offset: 0x4b0
// Size: 0x8c
function burning_corpse_callback(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self set_corpse_burning(fieldname);
        return;
    }
    self function_8227cec3(fieldname);
    self function_68a11df6(fieldname);
}

// Namespace burnplayer/burnplayer
// Params 1, eflags: 0x2 linked
// Checksum 0x326194cd, Offset: 0x548
// Size: 0x2c
function set_corpse_burning(localclientnum) {
    self thread _burnbody(localclientnum, 1);
}

// Namespace burnplayer/burnplayer
// Params 1, eflags: 0x2 linked
// Checksum 0xcf2590df, Offset: 0x580
// Size: 0xa6
function function_8227cec3(*localclientnum) {
    if (self function_21c0fa55()) {
        if (self postfx::function_556665f2(#"pstfx_burn_loop")) {
            self postfx::stoppostfxbundle(#"pstfx_burn_loop");
        }
        if (is_true(self.var_bd048859)) {
            self playsound(0, #"hash_41520794c2fd8aa");
            self.var_bd048859 = 0;
        }
    }
}

// Namespace burnplayer/burnplayer
// Params 1, eflags: 0x2 linked
// Checksum 0xb69ec5ea, Offset: 0x630
// Size: 0x1e
function function_68a11df6(*localclientnum) {
    self notify(#"burn_off");
}

// Namespace burnplayer/burnplayer
// Params 1, eflags: 0x2 linked
// Checksum 0x262dfc4f, Offset: 0x658
// Size: 0x74
function function_a6cb96f(localclientnum) {
    if (self function_21c0fa55() && !isthirdperson(localclientnum) && !self isremotecontrolling(localclientnum)) {
        self thread burn_on_postfx();
    }
}

// Namespace burnplayer/burnplayer
// Params 2, eflags: 0x2 linked
// Checksum 0x7895d677, Offset: 0x6d8
// Size: 0x6c
function function_adae7d84(localclientnum, use_tagfxset = 0) {
    if (!self function_21c0fa55() || isthirdperson(localclientnum)) {
        self thread _burnbody(localclientnum, use_tagfxset);
    }
}

// Namespace burnplayer/burnplayer
// Params 0, eflags: 0x2 linked
// Checksum 0x623777d5, Offset: 0x750
// Size: 0xa4
function burn_on_postfx() {
    self endon(#"burn_off");
    self endon(#"death");
    self notify(#"burn_on_postfx");
    self endon(#"burn_on_postfx");
    self playsound(0, #"hash_791f349cb716e078");
    self.var_bd048859 = 1;
    self thread postfx::playpostfxbundle(#"pstfx_burn_loop");
}

// Namespace burnplayer/burnplayer
// Params 3, eflags: 0x6 linked
// Checksum 0xf23a974a, Offset: 0x800
// Size: 0x9c
function private _burntag(localclientnum, tag, postfix) {
    if (isdefined(self) && self hasdobj(localclientnum)) {
        fxname = "burn_" + tag + postfix;
        if (isdefined(level._effect[fxname])) {
            return util::playfxontag(localclientnum, level._effect[fxname], self, tag);
        }
    }
}

// Namespace burnplayer/burnplayer
// Params 3, eflags: 0x6 linked
// Checksum 0xb5584191, Offset: 0x8a8
// Size: 0x19c
function private _burntagson(localclientnum, tags, use_tagfxset) {
    if (!isdefined(self)) {
        return;
    }
    self endon(#"death");
    self endon(#"burn_off");
    self notify(#"burn_tags_on");
    self endon(#"burn_tags_on");
    if (use_tagfxset) {
        self util::waittill_dobj(localclientnum);
        activefx = playtagfxset(localclientnum, "weapon_hero_molotov_fire_3p", self);
    } else {
        activefx = [];
        for (i = 0; i < tags.size; i++) {
            activefx[activefx.size] = self _burntag(localclientnum, tags[i], "_loop");
        }
    }
    playsound(0, #"chr_ignite", self.origin);
    burnsound = self playloopsound(#"chr_burn_loop_overlay", 0.5);
    self thread _burntagswatchend(localclientnum, activefx, burnsound);
    self thread _burntagswatchclear(localclientnum, activefx, burnsound);
}

// Namespace burnplayer/burnplayer
// Params 2, eflags: 0x6 linked
// Checksum 0x6424d27a, Offset: 0xa50
// Size: 0x5c
function private _burnbody(localclientnum, use_tagfxset = 0) {
    self endon(#"death");
    self thread _burntagson(localclientnum, level.burntags, use_tagfxset);
}

// Namespace burnplayer/burnplayer
// Params 3, eflags: 0x6 linked
// Checksum 0x47986990, Offset: 0xab8
// Size: 0x100
function private _burntagswatchend(localclientnum, fxarray, burnsound) {
    self waittill(#"burn_off", #"death");
    if (isdefined(self) && isdefined(burnsound)) {
        self stoploopsound(burnsound, 1);
    }
    if (isdefined(fxarray)) {
        foreach (fx in fxarray) {
            stopfx(localclientnum, fx);
        }
    }
}

// Namespace burnplayer/burnplayer
// Params 3, eflags: 0x6 linked
// Checksum 0x9c2efeb6, Offset: 0xbc0
// Size: 0xe8
function private _burntagswatchclear(localclientnum, fxarray, burnsound) {
    self endon(#"burn_off");
    self waittill(#"death");
    if (isdefined(burnsound)) {
        stopsound(burnsound);
    }
    if (isdefined(fxarray)) {
        foreach (fx in fxarray) {
            stopfx(localclientnum, fx);
        }
    }
}

