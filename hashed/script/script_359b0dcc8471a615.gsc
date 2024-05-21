// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_7fe06af4;

// Namespace namespace_7fe06af4/gametype_init
// Params 1, eflags: 0x20
// Checksum 0xfae4a40, Offset: 0x118
// Size: 0x4c
function event_handler[gametype_init] init(*eventstruct) {
    clientfield::register("world", "" + #"hash_5e7d02ead4a03f50", 1, 2, "int");
}

// Namespace namespace_7fe06af4/gametype_start
// Params 1, eflags: 0x20
// Checksum 0x90dec204, Offset: 0x170
// Size: 0xb4
function event_handler[gametype_start] main(*eventstruct) {
    level thread function_5089875d();
    /#
        level thread devgui_init();
    #/
    if (!function_a23c96ea()) {
        return;
    }
    callback::on_game_playing(&on_game_playing);
    level.var_d38af2b = 0;
    level.var_ecb7b947 = 0;
    level.destructible_callbacks[#"headless"] = &function_e0136874;
}

// Namespace namespace_7fe06af4/namespace_7fe06af4
// Params 0, eflags: 0x2 linked
// Checksum 0xaa2076cd, Offset: 0x230
// Size: 0x2b0
function function_5089875d() {
    mannequins = getentarray("ee_mannequin", "script_noteworthy");
    var_ecf867b5 = getentarray("ee_mannequin_clip", "targetname");
    var_1c94845d = [];
    mannequins = array::randomize(mannequins);
    var_8091ece = mannequins.size;
    if (var_8091ece > 28) {
        var_8091ece = 28;
    }
    setdvar(#"hash_21da43870d56a220", var_8091ece);
    foreach (i, mannequin in mannequins) {
        var_4c9b75d1 = arraygetclosest(mannequin.origin, var_ecf867b5);
        if (i < 28) {
            if (isdefined(var_4c9b75d1)) {
                var_4c9b75d1 disconnectpaths();
            }
            continue;
        }
        if (isdefined(var_4c9b75d1)) {
            var_4c9b75d1 delete();
        }
        if (!isdefined(var_1c94845d)) {
            var_1c94845d = [];
        } else if (!isarray(var_1c94845d)) {
            var_1c94845d = array(var_1c94845d);
        }
        var_1c94845d[var_1c94845d.size] = mannequin;
    }
    array::delete_all(var_1c94845d);
    /#
        if (getdvarint(#"hash_42a5a4b0b2854ca1", 0)) {
            foreach (mannequin in mannequins) {
                if (isdefined(mannequin)) {
                    mannequin thread function_fa68a2e6();
                }
            }
        }
    #/
}

// Namespace namespace_7fe06af4/namespace_7fe06af4
// Params 0, eflags: 0x2 linked
// Checksum 0x1f6ad138, Offset: 0x4e8
// Size: 0x44
function on_game_playing() {
    level.mannequin_time = gettime();
    /#
        level thread function_9c9ba5();
    #/
    /#
        level thread function_ee18bf8f();
    #/
}

// Namespace namespace_7fe06af4/namespace_7fe06af4
// Params 7, eflags: 0x2 linked
// Checksum 0x23e3210d, Offset: 0x538
// Size: 0x14c
function function_e0136874(*destructible_event, *attacker, *weapon, *piece_index, *point, *dir, *mod) {
    if (!isdefined(level.mannequin_time)) {
        return;
    }
    mannequin_timelimit = int(getdvarint(#"mannequin_timelimit", 120) * 1000);
    if (gettime() < level.mannequin_time + mannequin_timelimit || !mannequin_timelimit) {
        level.var_ecb7b947++;
        var_fa149ac8 = getdvarint(#"hash_21da43870d56a220", 28);
        if (level.var_ecb7b947 >= var_fa149ac8 && level.var_d38af2b == 0) {
            level.destructible_callbacks[#"headless"] = undefined;
            level thread function_d38af2b();
        }
    }
}

// Namespace namespace_7fe06af4/namespace_7fe06af4
// Params 0, eflags: 0x2 linked
// Checksum 0xa8dfc2c3, Offset: 0x690
// Size: 0x1c
function function_d38af2b() {
    function_a150d07b(1);
}

// Namespace namespace_7fe06af4/namespace_7fe06af4
// Params 1, eflags: 0x2 linked
// Checksum 0x42d4b4f5, Offset: 0x6b8
// Size: 0x154
function function_a150d07b(randomize = 0) {
    if (randomize) {
        state = randomintrange(1, 3);
        setdvar(#"hash_41e6a8d79082e88", state);
    }
    if (!isdefined(state)) {
        state = getdvarint(#"hash_41e6a8d79082e88", 0);
    }
    if (level.var_ffae3a51 === state) {
        return;
    }
    level.var_ffae3a51 = state;
    if (state != 0) {
        level.var_97902f80 = 1;
        music::setmusicstate("ee_oneshot", undefined, 3);
    } else {
        music::setmusicstate("");
        level.var_97902f80 = 0;
    }
    level clientfield::set("" + #"hash_5e7d02ead4a03f50", state);
}

// Namespace namespace_7fe06af4/namespace_7fe06af4
// Params 0, eflags: 0x2 linked
// Checksum 0xd10e5eaf, Offset: 0x818
// Size: 0x62
function function_a23c96ea() {
    if (getdvarint(#"nuketown_mannequin", 0)) {
        return true;
    }
    if (sessionmodeisonlinegame() && !sessionmodeisprivateonlinegame()) {
        return false;
    }
    return true;
}

/#

    // Namespace namespace_7fe06af4/namespace_7fe06af4
    // Params 0, eflags: 0x0
    // Checksum 0x14f80859, Offset: 0x888
    // Size: 0x94
    function devgui_init() {
        waitframe(1);
        mapname = util::get_map_name();
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
    }

    // Namespace namespace_7fe06af4/namespace_7fe06af4
    // Params 0, eflags: 0x0
    // Checksum 0xd864315d, Offset: 0x928
    // Size: 0x40
    function function_9c9ba5() {
        level endon(#"game_ended");
        while (true) {
            wait(0.5);
            function_a150d07b();
        }
    }

    // Namespace namespace_7fe06af4/namespace_7fe06af4
    // Params 0, eflags: 0x0
    // Checksum 0xadaa6d25, Offset: 0x970
    // Size: 0xa8
    function function_ee18bf8f() {
        level endon(#"game_ended");
        while (true) {
            wait(0.5);
            state = getdvarint(#"hash_4c0f0935eafdfaa", 0);
            if (state || state === 2) {
                function_d38af2b();
                setdvar(#"hash_4c0f0935eafdfaa", 0);
            }
        }
    }

    // Namespace namespace_7fe06af4/namespace_7fe06af4
    // Params 0, eflags: 0x0
    // Checksum 0xbcfff312, Offset: 0xa20
    // Size: 0x5e
    function function_fa68a2e6() {
        self endon(#"death", #"headless");
        while (true) {
            sphere(self.origin, 16, (0, 1, 0));
            waitframe(1);
        }
    }

#/
