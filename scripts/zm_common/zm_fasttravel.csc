// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\exploder_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace zm_fasttravel;

// Namespace zm_fasttravel/zm_fasttravel
// Params 0, eflags: 0x5
// Checksum 0x40d69170, Offset: 0x368
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_fasttravel", &preinit, undefined, undefined, undefined);
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 0, eflags: 0x6 linked
// Checksum 0x6ac2c0e, Offset: 0x3b0
// Size: 0x24
function private preinit() {
    init_clientfields();
    init_fx();
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 0, eflags: 0x2 linked
// Checksum 0x550523a4, Offset: 0x3e0
// Size: 0x304
function init_clientfields() {
    clientfield::register("world", "fasttravel_exploder", 1, 1, "int", &fasttravel_exploder, 0, 0);
    clientfield::register("scriptmover", "" + #"wormhole_fx", 1, 2, "int", &wormhole_fx, 0, 0);
    clientfield::register("toplayer", "player_stargate_fx", 1, 1, "int", &player_stargate_fx, 0, 1);
    clientfield::register("toplayer", "player_chaos_light_rail_fx", 1, 1, "int", &player_chaos_light_rail_fx, 0, 1);
    clientfield::register("toplayer", "fasttravel_teleport_sfx", 1, 1, "int", &fasttravel_teleport_sfx, 0, 0);
    clientfield::register("toplayer", "" + #"hash_638ce9451eb0ea49", 1, 3, "int", &function_f998fa4c, 0, 0);
    clientfield::register("allplayers", "fasttravel_start_fx", 1, 1, "counter", &fasttravel_start_fx, 0, 0);
    clientfield::register("allplayers", "fasttravel_end_fx", 1, 1, "counter", &fasttravel_end_fx, 0, 0);
    clientfield::register("allplayers", "fasttravel_rail_fx", 1, 2, "int", &fasttravel_rail_fx, 0, 0);
    clientfield::register("allplayers", "" + #"hash_1747eb69683ce477", 1, 1, "int", &function_7287c2e4, 0, 0);
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 0, eflags: 0x2 linked
// Checksum 0xa37e2762, Offset: 0x6f0
// Size: 0x11c
function init_fx() {
    level._effect[#"fasttravel_start"] = #"hash_2f54a4439f3a1dbf";
    level._effect[#"fasttravel_end"] = #"hash_4ab05aa1282b9bb7";
    level._effect[#"fasttravel_rail_1p"] = #"hash_259bb7806d596ed3";
    level._effect[#"fasttravel_break_1p"] = #"hash_37257517a8fd29e";
    level._effect[#"fasttravel_rail_3p"] = #"hash_72a1af7c420b4134";
    level._effect[#"fasttravel_break_3p"] = #"hash_13715b19c0c0e890";
    level._effect[#"fasttravel_rail_travel"] = #"hash_3659a06ed75f940a";
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 7, eflags: 0x2 linked
// Checksum 0xa03a4928, Offset: 0x818
// Size: 0x84
function fasttravel_exploder(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        level exploder::exploder("fxexp_fast_travel_orbs");
        return;
    }
    level exploder::stop_exploder("fxexp_fast_travel_orbs");
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 7, eflags: 0x2 linked
// Checksum 0x90b72a4, Offset: 0x8a8
// Size: 0x224
function player_chaos_light_rail_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        if (isdemoplaying() && demoisanyfreemovecamera()) {
            return;
        }
        var_8203417 = function_5c10bd79(fieldname);
        if (self != var_8203417) {
            return;
        }
        if (!isdefined(self.var_9a68f89f)) {
            v_origin = self gettagorigin("tag_eye");
            self.var_9a68f89f = self function_dddf661d(fieldname, "fasttravel_rail_travel", "tag_origin", v_origin, self.angles);
            self thread function_eaba4969(fieldname, "fasttravel_rail_travel_complete", self.var_9a68f89f);
        }
        if (isdefined(level.var_5603a802)) {
            self thread postfx::playpostfxbundle(level.var_5603a802);
        } else {
            self thread postfx::playpostfxbundle("pstfx_zm_chaos_temp");
        }
        return;
    }
    self notify(#"fasttravel_rail_travel_complete");
    if (isdefined(self.var_9a68f89f)) {
        function_4468d7ac(fieldname, self.var_9a68f89f);
        self.var_9a68f89f = undefined;
    }
    if (isdefined(level.var_5603a802)) {
        self postfx::exitpostfxbundle(level.var_5603a802);
        return;
    }
    self postfx::exitpostfxbundle("pstfx_zm_chaos_temp");
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 7, eflags: 0x2 linked
// Checksum 0xfdbcf146, Offset: 0xad8
// Size: 0xe4
function wormhole_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    str_fx = "zombie/fx9_aether_tear_portal_tunnel_1p";
    var_1aae8a96 = #"hash_10ea00ff34841c0b";
    if (bwastimejump === 2) {
        str_fx = var_1aae8a96;
    }
    if (isdefined(str_fx)) {
        self util::waittill_dobj(fieldname);
        waitframe(1);
        level.portal_fx = util::playfxontag(fieldname, str_fx, self, "tag_fx_wormhole");
    }
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 7, eflags: 0x2 linked
// Checksum 0xc3406ea3, Offset: 0xbc8
// Size: 0xb4
function player_stargate_fx(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        if (isdemoplaying() && demoisanyfreemovecamera()) {
            return;
        }
        self thread postfx::playpostfxbundle("pstfx_zm_wormhole");
        return;
    }
    self postfx::exitpostfxbundle("pstfx_zm_wormhole");
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 7, eflags: 0x2 linked
// Checksum 0x10bfc194, Offset: 0xc88
// Size: 0x14c
function function_f998fa4c(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump > 0) {
        if (bwastimejump > 4) {
            bwastimejump = 4;
        }
        str_name = "s_teleport_room_" + bwastimejump;
        s_teleport_room = struct::get(str_name, "targetname");
        self camerasetposition(s_teleport_room.origin);
        self camerasetlookat(s_teleport_room.angles);
        self cameraactivate(1);
        self flag::set(#"hash_7151daf10b79dc1");
        return;
    }
    self cameraactivate(0);
    self flag::clear(#"hash_7151daf10b79dc1");
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 7, eflags: 0x2 linked
// Checksum 0xf097a779, Offset: 0xde0
// Size: 0x13e
function fasttravel_teleport_sfx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self util::waittill_dobj(fieldname);
    if (!isdefined(self)) {
        return;
    }
    if (is_true(self.var_915bbac)) {
        return;
    }
    if (bwastimejump) {
        if (!isdefined(self.fasttravel_teleport_sfx)) {
            self playsound(fieldname, #"hash_695df080bafaf6b7");
            self.fasttravel_teleport_sfx = self playloopsound(#"hash_337255a64f96457b");
        }
        return;
    }
    if (isdefined(self.fasttravel_teleport_sfx)) {
        self playsound(fieldname, #"hash_32def2a5219ba9ee");
        self stoploopsound(self.fasttravel_teleport_sfx);
        self.fasttravel_teleport_sfx = undefined;
    }
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 7, eflags: 0x2 linked
// Checksum 0xccd889c5, Offset: 0xf28
// Size: 0x1dc
function fasttravel_start_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    level endon(#"end_game");
    self endon(#"bled_out", #"disconnect");
    if (self != function_5c10bd79(fieldname)) {
        if (bwastimejump == 1) {
            var_1d1bbd52 = struct::get_array("fasttravel_trigger", "targetname");
            var_4d611aa2 = arraygetclosest(self.origin, var_1d1bbd52);
            if (!isdefined(var_4d611aa2)) {
                return;
            }
            v_angles = vectortoangles(var_4d611aa2.origin - self.origin);
            mdl_fx = util::spawn_model(fieldname, "tag_origin", self.origin, v_angles);
            waitframe(1);
            util::playfxontag(fieldname, level._effect[#"fasttravel_start"], mdl_fx, "tag_origin");
            if (!isdefined(level.var_b41e82d4)) {
                level.var_b41e82d4 = 1.5;
            }
            wait(level.var_b41e82d4);
            mdl_fx delete();
        }
    }
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 7, eflags: 0x2 linked
// Checksum 0x6c26c038, Offset: 0x1110
// Size: 0x5c
function fasttravel_end_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self thread play_fasttravel_end_fx(fieldname);
    }
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 2, eflags: 0x2 linked
// Checksum 0x9362f421, Offset: 0x1178
// Size: 0x12c
function play_fasttravel_end_fx(localclientnum, var_b8763ebc = "fasttravel_end") {
    level endon(#"end_game");
    self endon(#"bled_out", #"disconnect");
    if (self != function_5c10bd79(localclientnum)) {
        v_angles = combineangles(self.angles, (-90, 0, 0));
        mdl_fx = util::spawn_model(localclientnum, "tag_origin", self.origin, v_angles);
        waitframe(1);
        util::playfxontag(localclientnum, level._effect[var_b8763ebc], mdl_fx, "tag_origin");
        wait(1.15);
        mdl_fx delete();
    }
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 7, eflags: 0x2 linked
// Checksum 0x6dd13da8, Offset: 0x12b0
// Size: 0x43e
function fasttravel_rail_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        if (!isdefined(self.sfx_fasttravel)) {
            self playsound(fieldname, #"hash_7204b092c976136b");
            self.sfx_fasttravel = self playloopsound(#"hash_33b6a998603c309d");
        }
        if (!isdefined(self.var_a6b9f4c1)) {
            var_8203417 = function_5c10bd79(fieldname);
            if (self == var_8203417) {
                v_origin = self gettagorigin("tag_eye");
                self.var_a6b9f4c1 = self function_dddf661d(fieldname, "fasttravel_rail_1p", "tag_origin", v_origin, self.angles);
            } else {
                v_origin = self gettagorigin("j_spine4");
                self.var_a6b9f4c1 = self function_dddf661d(fieldname, "fasttravel_rail_3p", "tag_origin", v_origin, self.angles);
            }
            self thread function_eaba4969(fieldname, "fasttravel_rail_fx_complete", self.var_a6b9f4c1);
        }
        return;
    }
    if (bwastimejump == 2) {
        if (!isdefined(self.sfx_fasttravel)) {
            self playsound(fieldname, #"hash_7f171ce50ab41fb8");
            self.sfx_fasttravel = self playloopsound(#"hash_59921813746566c8");
        }
        if (isdefined(self.var_a6b9f4c1)) {
            self notify(#"fasttravel_rail_fx_complete");
            function_4468d7ac(fieldname, self.var_a6b9f4c1);
        }
        var_8203417 = function_5c10bd79(fieldname);
        if (self == var_8203417) {
            v_origin = self gettagorigin("tag_eye");
            self.var_a6b9f4c1 = self function_dddf661d(fieldname, "fasttravel_break_1p", "tag_origin", v_origin, self.angles);
        } else {
            v_origin = self gettagorigin("j_spine4");
            self.var_a6b9f4c1 = self function_dddf661d(fieldname, "fasttravel_break_3p", "tag_origin", v_origin, self.angles);
        }
        self thread function_eaba4969(fieldname, "fasttravel_rail_fx_complete", self.var_a6b9f4c1);
        return;
    }
    if (bwastimejump == 0) {
        if (isdefined(self.sfx_fasttravel)) {
            self playsound(fieldname, #"hash_588047eba8deb34e");
            self stoploopsound(self.sfx_fasttravel);
            self.sfx_fasttravel = undefined;
        }
        if (isdefined(self.var_a6b9f4c1)) {
            self notify(#"fasttravel_rail_fx_complete");
            function_4468d7ac(fieldname, self.var_a6b9f4c1);
            self.var_a6b9f4c1 = undefined;
        }
    }
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 5, eflags: 0x6 linked
// Checksum 0x568c8398, Offset: 0x16f8
// Size: 0xae
function private function_dddf661d(localclientnum, str_fx, str_tag, v_origin, v_angles) {
    mdl_fx = util::spawn_model(localclientnum, "tag_origin", v_origin, v_angles);
    mdl_fx linkto(self, str_tag);
    mdl_fx.n_fx = util::playfxontag(localclientnum, level._effect[str_fx], mdl_fx, "tag_origin");
    return mdl_fx;
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 3, eflags: 0x6 linked
// Checksum 0x4a4e6d83, Offset: 0x17b0
// Size: 0x6c
function private function_eaba4969(localclientnum, var_92d4e054, mdl_fx) {
    level endon(#"end_game");
    self endon(var_92d4e054);
    self waittill(#"death");
    function_4468d7ac(localclientnum, mdl_fx);
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 2, eflags: 0x6 linked
// Checksum 0x1bf1b67e, Offset: 0x1828
// Size: 0x64
function private function_4468d7ac(localclientnum, mdl_fx) {
    if (isdefined(mdl_fx)) {
        if (isdefined(mdl_fx.n_fx)) {
            stopfx(localclientnum, mdl_fx.n_fx);
        }
        mdl_fx delete();
    }
}

// Namespace zm_fasttravel/zm_fasttravel
// Params 7, eflags: 0x2 linked
// Checksum 0x6ac0da98, Offset: 0x1898
// Size: 0x3c6
function function_7287c2e4(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        if (zm_utility::function_f8796df3(fieldname)) {
            self playrenderoverridebundle(#"hash_6ec5fcc31672bb85");
            self postfx::playpostfxbundle(#"hash_5bcfd80691463dec");
            self.var_f7c6ea19 = playfxoncamera(fieldname, #"hash_7fcde6a254a7228", (0, 0, 0), (1, 0, 0), (0, 0, 1));
        } else {
            self playrenderoverridebundle(#"hash_733f9eb274c33ff8");
            self.var_40ba3bb2 = util::playfxontag(fieldname, #"hash_803ea6a2550a53a", self, "j_head");
            self.var_4a2dac48 = util::playfxontag(fieldname, #"hash_ee42b8ead6d79d1", self, "j_spine4");
        }
        if (!isdefined(self.var_efa99dd5)) {
            self playsound(fieldname, #"hash_525507bf80e4399", self.origin + (0, 0, 75));
            self.var_efa99dd5 = self playloopsound(#"hash_8cab833a49210df", undefined, (0, 0, 75));
        }
        return;
    }
    self notify(#"hash_69b6a912d9991761");
    if (self function_d2503806(#"hash_6ec5fcc31672bb85")) {
        self stoprenderoverridebundle(#"hash_6ec5fcc31672bb85");
    }
    if (self function_d2503806(#"hash_733f9eb274c33ff8")) {
        self stoprenderoverridebundle(#"hash_733f9eb274c33ff8");
    }
    if (self postfx::function_556665f2(#"hash_5bcfd80691463dec")) {
        self postfx::exitpostfxbundle(#"hash_5bcfd80691463dec");
    }
    if (isdefined(self.var_f7c6ea19)) {
        stopfx(fieldname, self.var_f7c6ea19);
        self.var_f7c6ea19 = undefined;
    }
    if (isdefined(self.var_40ba3bb2)) {
        stopfx(fieldname, self.var_40ba3bb2);
        self.var_40ba3bb2 = undefined;
    }
    if (isdefined(self.var_4a2dac48)) {
        stopfx(fieldname, self.var_4a2dac48);
        self.var_4a2dac48 = undefined;
    }
    if (isdefined(self.var_efa99dd5)) {
        self playsound(fieldname, #"hash_4025d3c0c7607b08", self.origin + (0, 0, 75));
        self stoploopsound(self.var_efa99dd5);
        self.var_efa99dd5 = undefined;
    }
}

