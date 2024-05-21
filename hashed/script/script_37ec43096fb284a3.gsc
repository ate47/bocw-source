// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\audio_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace namespace_d0ab5955;

// Namespace namespace_d0ab5955/namespace_d0ab5955
// Params 0, eflags: 0x5
// Checksum 0x999e2327, Offset: 0x1f0
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_d07e35f920d16a8", &preinit, &postinit, undefined, undefined);
}

// Namespace namespace_d0ab5955/namespace_d0ab5955
// Params 0, eflags: 0x2 linked
// Checksum 0x643390bb, Offset: 0x248
// Size: 0x278
function preinit() {
    clientfield::register("scriptmover", "fogofwarflag", 1, 1, "int", &function_a380fe5, 0, 0);
    clientfield::register("toplayer", "fogofwareffects", 1, 2, "int", undefined, 0, 1);
    clientfield::register("toplayer", "fogofwartimer", 1, 1, "int", &function_947e99a9, 0, 1);
    clientfield::register("allplayers", "outsidetile", 1, 1, "int", undefined, 0, 0);
    clientfield::register("world", "tile_id", 1, 6, "int", &function_ec0b7087, 1, 0);
    if (!is_true(getgametypesetting(#"hash_59854c1f30538261"))) {
        return;
    }
    level.var_7bd7bdc8 = [1:#"hash_6a04f899ab555f22", 2:#"hash_2964f82e2c05c8b8", 3:#"hash_54da2f2da5752d99"];
    level.var_6e62d281 = #"hash_289962ed0e76921d";
    var_ac22a760 = struct::get_array(#"hash_3460aae6bb799a99", "content_key");
    for (index = 1; index <= var_ac22a760.size; index++) {
        var_ac22a760[index - 1].id = index;
    }
    callback::on_localclient_connect(&on_localclient_connect);
    level.var_e9d75843 = [];
}

// Namespace namespace_d0ab5955/namespace_d0ab5955
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x4c8
// Size: 0x4
function postinit() {
    
}

// Namespace namespace_d0ab5955/namespace_d0ab5955
// Params 7, eflags: 0x2 linked
// Checksum 0xe7399e15, Offset: 0x4d8
// Size: 0x23c
function function_a380fe5(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (isinarray(array(#"hash_3a6936975102a2ad", #"hash_57b5acde2128e4b4", #"hash_70bad03d167e277e", #"hash_26623c82c1fb8a87", #"hash_7b74b9b952f922d3", #"hash_181d690a4afd8b13", #"hash_1a45645c0face09a", #"hash_576c4f3f7832cd99", #"hash_49a40f3b53479d95"), hash(self.model))) {
        var_ee6bcd51 = #"hash_515a30ee41d5cb3c";
    } else {
        var_ee6bcd51 = #"hash_4a9cb80afea6f8cb";
    }
    if (util::get_map_name() === "wz_sanatorium") {
        var_ee6bcd51 += "_sanatorium";
    } else if (util::get_map_name() === "mp_black_sea") {
        var_ee6bcd51 += "_black_sea";
    }
    if (hash(self.model) === #"hash_10f3318f64304974") {
        var_ee6bcd51 = #"hash_1a5c12ea1f8d94e7";
    }
    if (bwastimejump) {
        self playrenderoverridebundle(var_ee6bcd51);
        self function_78233d29(var_ee6bcd51, "", "Scale", 1);
        return;
    }
    self stoprenderoverridebundle(var_ee6bcd51);
}

// Namespace namespace_d0ab5955/namespace_d0ab5955
// Params 7, eflags: 0x2 linked
// Checksum 0x145fbd73, Offset: 0x720
// Size: 0x160
function function_ec0b7087(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    var_ac22a760 = struct::get_array(#"hash_3460aae6bb799a99", "content_key");
    foreach (var_ea0ed69c in var_ac22a760) {
        var_f6b2bc6f = getent(fieldname, var_ea0ed69c.targetname, "target");
        if (isdefined(var_f6b2bc6f)) {
            if (var_ea0ed69c.id == bwastimejump) {
                var_f6b2bc6f function_704c070e(fieldname);
                continue;
            }
            var_f6b2bc6f function_53a26ea0(fieldname);
        }
    }
}

// Namespace namespace_d0ab5955/namespace_d0ab5955
// Params 1, eflags: 0x2 linked
// Checksum 0xe2020aac, Offset: 0x888
// Size: 0x74
function on_localclient_connect(localclientnum) {
    level thread function_347f52dd(localclientnum);
    setuimodelvalue(createuimodel(function_1df4c3b0(localclientnum, #"hash_6f4b11a0bee9b73d"), "outOfBoundsEndTime"), 0);
}

// Namespace namespace_d0ab5955/namespace_d0ab5955
// Params 1, eflags: 0x6 linked
// Checksum 0x703c2509, Offset: 0x908
// Size: 0x114
function private function_347f52dd(localclientnum) {
    self notify("a0877a3f18b5d15");
    self endon("a0877a3f18b5d15");
    var_ef2f4cec = spawnstruct();
    level.var_e9d75843[localclientnum] = var_ef2f4cec;
    while (true) {
        currentplayer = function_5c10bd79(localclientnum);
        if (!isdefined(currentplayer)) {
            waitframe(1);
            continue;
        }
        intensity = currentplayer clientfield::get_to_player("fogofwareffects");
        if (var_ef2f4cec.var_6f2e5a2b !== intensity) {
            var_ef2f4cec notify(#"hash_387bb78db1d4d1be");
            var_ef2f4cec function_d45dd62(localclientnum, intensity, currentplayer);
            var_ef2f4cec.var_6f2e5a2b = intensity;
        }
        waitframe(1);
    }
}

// Namespace namespace_d0ab5955/namespace_d0ab5955
// Params 7, eflags: 0x6 linked
// Checksum 0xab0e4b34, Offset: 0xa28
// Size: 0xe4
function private function_947e99a9(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    oobmodel = getuimodel(function_1df4c3b0(fieldname, #"hash_6f4b11a0bee9b73d"), "outOfBoundsEndTime");
    if (bwastimejump > 0) {
        setuimodelvalue(oobmodel, getservertime(0, 1) + level.oob_timelimit_ms);
        return;
    }
    setuimodelvalue(oobmodel, 0);
}

// Namespace namespace_d0ab5955/namespace_d0ab5955
// Params 3, eflags: 0x6 linked
// Checksum 0x28c1c824, Offset: 0xb18
// Size: 0x21a
function private function_d45dd62(localclientnum, intensity = 0, currentplayer) {
    if (isdefined(self.var_7bd7bdc8)) {
        function_24cd4cfb(localclientnum, self.var_7bd7bdc8);
        self.var_7bd7bdc8 = undefined;
        if (isdefined(self.var_6e62d281)) {
            stopfx(localclientnum, self.var_6e62d281);
        }
        self.var_6e62d281 = undefined;
    }
    if (isdefined(currentplayer.var_103fdf58)) {
        playsound(localclientnum, #"hash_37b1613c2cb4c8f3", (0, 0, 0));
        currentplayer stoploopsound(currentplayer.var_103fdf58);
        currentplayer.var_103fdf58 = undefined;
    }
    postfx = level.var_7bd7bdc8[intensity];
    if (isdefined(postfx)) {
        if (function_148ccc79(localclientnum, postfx)) {
            codestoppostfxbundlelocal(localclientnum, postfx);
        }
        function_a837926b(localclientnum, postfx);
        if (viewmodelhastag(localclientnum, "tag_torso")) {
            self.var_6e62d281 = playviewmodelfx(localclientnum, level.var_6e62d281, "tag_torso");
        }
        self.var_7bd7bdc8 = postfx;
        if (!isdefined(currentplayer.var_103fdf58)) {
            playsound(localclientnum, #"hash_7b5289d48cc02d77", (0, 0, 0));
            currentplayer.var_103fdf58 = currentplayer playloopsound("evt_sr_phase_player_lp");
        }
    }
}

