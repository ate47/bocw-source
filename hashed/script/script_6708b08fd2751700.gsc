// Atian COD Tools GSC CW decompiler test
#using script_1029986e2bc8ca8e;
#using script_2618e0f3e5e11649;
#using script_3411bb48d41bd3b;
#using scripts\core_common\item_world.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\bots\bot.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\rat_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace rat;

// Namespace rat/namespace_7d3a1543
// Params 0, eflags: 0x5
// Checksum 0x640a85a9, Offset: 0xd8
// Size: 0x3c
function private autoexec __init__system__() {
    /#
        register(#"hash_2a909a3d7374cf00", &function_70a657d8, undefined, undefined, undefined);
    #/
}

// Namespace rat/namespace_7d3a1543
// Params 0, eflags: 0x4
// Checksum 0xe331388d, Offset: 0x120
// Size: 0x394
function private function_70a657d8() {
    /#
        init();
        level.rat.common.gethostplayer = &gethostplayer;
        level.rat.deathcount = 0;
        addratscriptcmd("<unknown string>", &function_70f41194);
        addratscriptcmd("<unknown string>", &function_31980089);
        addratscriptcmd("<unknown string>", &function_1251949b);
        addratscriptcmd("<unknown string>", &function_684893c8);
        addratscriptcmd("<unknown string>", &function_7eabbc02);
        addratscriptcmd("<unknown string>", &function_d50abf44);
        addratscriptcmd("<unknown string>", &function_89684f6a);
        addratscriptcmd("<unknown string>", &function_baeffaeb);
        addratscriptcmd("<unknown string>", &function_63a39134);
        addratscriptcmd("<unknown string>", &function_d19f7fe9);
        addratscriptcmd("<unknown string>", &function_2bd96c6e);
        addratscriptcmd("<unknown string>", &function_ee280019);
        addratscriptcmd("<unknown string>", &function_40e4c9de);
        addratscriptcmd("<unknown string>", &function_fea33619);
        addratscriptcmd("<unknown string>", &function_163c296a);
        addratscriptcmd("<unknown string>", &function_92891f6e);
        addratscriptcmd("<unknown string>", &function_834d65f9);
        addratscriptcmd("<unknown string>", &function_ad78fe8a);
        addratscriptcmd("<unknown string>", &function_adb96ff1);
        addratscriptcmd("<unknown string>", &function_a93cbd41);
        setdvar(#"rat_death_count", 0);
    #/
}

// Namespace rat/namespace_7d3a1543
// Params 1, eflags: 0x0
// Checksum 0xce7bb681, Offset: 0x4c0
// Size: 0x26
function function_d50abf44(*params) {
    /#
        return getplayers().size;
    #/
}

// Namespace rat/namespace_7d3a1543
// Params 1, eflags: 0x0
// Checksum 0xcd30177b, Offset: 0x4f0
// Size: 0x19c
function function_7eabbc02(params) {
    /#
        remaining = 0;
        host = [[ level.rat.common.gethostplayer ]]();
        hostteam = host.team;
        if (isdefined(params.remaining)) {
            remaining = int(params.remaining);
        }
        if (isdefined(getplayers())) {
            for (i = 0; i < getplayers().size; i++) {
                if (getplayers().size <= remaining) {
                    break;
                }
                if (!isdefined(getplayers()[i].bot) || getplayers()[i].team == hostteam || getplayers()[i].team == "<unknown string>") {
                    continue;
                }
                remove_bot(getplayers()[i]);
            }
        }
    #/
}

// Namespace rat/namespace_7d3a1543
// Params 1, eflags: 0x0
// Checksum 0x115f9aed, Offset: 0x698
// Size: 0xd4
function function_684893c8(*params) {
    /#
        count = 0;
        if (isdefined(getplayers())) {
            foreach (player in getplayers()) {
                if (player player_is_in_laststand()) {
                    count++;
                }
            }
        }
        return count;
    #/
}

// Namespace rat/namespace_7d3a1543
// Params 1, eflags: 0x0
// Checksum 0x377a6d1d, Offset: 0x778
// Size: 0x4c
function function_1251949b(*params) {
    /#
        player = [[ level.rat.common.gethostplayer ]]();
        return player player_is_in_laststand();
    #/
}

// Namespace rat/namespace_7d3a1543
// Params 1, eflags: 0x0
// Checksum 0x19317072, Offset: 0x7d0
// Size: 0x4c
function function_70f41194(*params) {
    /#
        player = [[ level.rat.common.gethostplayer ]]();
        return player.inventory.var_c212de25;
    #/
}

// Namespace rat/namespace_7d3a1543
// Params 1, eflags: 0x0
// Checksum 0x794abfed, Offset: 0x828
// Size: 0x238
function function_31980089(params) {
    /#
        player = [[ level.rat.common.gethostplayer ]]();
        numitems = 1000;
        distance = 1000;
        name = "<unknown string>";
        if (isdefined(params.var_1d978d3)) {
            numitems = int(params.var_1d978d3);
        }
        if (isdefined(params.distance)) {
            distance = int(params.distance);
        }
        if (isdefined(params.name)) {
            name = params.name;
        }
        items = function_2e3efdda(player.origin, undefined, numitems, distance);
        foreach (item in items) {
            if (item.var_a6762160.name == "<unknown string>") {
                continue;
            }
            if (isdefined(params.handler)) {
                jumpiffalse(params.handler != item.var_a6762160.handler && params.handler != "<unknown string>") LOC_000001d4;
            } else if (name == "<unknown string>" || item.var_a6762160.name == name) {
                function_55e20e75(params._id, item.origin);
            }
        }
    #/
}

// Namespace rat/namespace_7d3a1543
// Params 1, eflags: 0x0
// Checksum 0xe967f3ef, Offset: 0xa68
// Size: 0x5e
function function_89684f6a(*params) {
    /#
        player = [[ level.rat.common.gethostplayer ]]();
        return player.inventory.items[5].var_bd027dd9 != 32767;
    #/
}

// Namespace rat/namespace_7d3a1543
// Params 1, eflags: 0x0
// Checksum 0xf6747033, Offset: 0xad0
// Size: 0xb6
function function_baeffaeb(*params) {
    /#
        player = [[ level.rat.common.gethostplayer ]]();
        direction = player getplayerangles();
        direction_vec = anglestoforward(direction);
        guy = undefined;
        guy = function_9d3ad056("<unknown string>", player.origin, player.angles, "<unknown string>");
    #/
}

// Namespace rat/namespace_7d3a1543
// Params 1, eflags: 0x0
// Checksum 0x67382b1f, Offset: 0xb90
// Size: 0x24
function function_63a39134(*params) {
    /#
        return get_current_zombie_count();
    #/
}

// Namespace rat/namespace_7d3a1543
// Params 1, eflags: 0x0
// Checksum 0xc6a397a4, Offset: 0xbc0
// Size: 0x24
function function_d19f7fe9(*params) {
    /#
        function_368a7cde();
    #/
}

// Namespace rat/namespace_7d3a1543
// Params 1, eflags: 0x0
// Checksum 0x6e9effae, Offset: 0xbf0
// Size: 0x4c
function function_2bd96c6e(params) {
    /#
        location = level.var_7d45d0d4.locations[params.location];
        return location.var_dcb924fd.var_b588b063;
    #/
}

// Namespace rat/namespace_7d3a1543
// Params 1, eflags: 0x0
// Checksum 0x190733c9, Offset: 0xc48
// Size: 0x42
function function_40e4c9de(params) {
    /#
        location = level.var_7d45d0d4.locations[params.location];
        location.var_dcb924fd = undefined;
    #/
}

// Namespace rat/namespace_7d3a1543
// Params 1, eflags: 0x0
// Checksum 0x6ab36cbf, Offset: 0xc98
// Size: 0x84
function function_ee280019(params) {
    /#
        location = level.var_7d45d0d4.locations[params.location];
        if (!isdefined(location.var_dcb924fd.var_4272a188)) {
            return;
        }
        function_55e20e75(params._id, location.var_dcb924fd.var_4272a188.origin);
    #/
}

// Namespace rat/namespace_7d3a1543
// Params 1, eflags: 0x0
// Checksum 0x3eb1acaf, Offset: 0xd28
// Size: 0xb4
function function_fea33619(params) {
    /#
        player = [[ level.rat.common.gethostplayer ]]();
        location = level.var_7d45d0d4.locations[params.location];
        if (!isdefined(location.var_dcb924fd) || !isdefined(location.var_dcb924fd.var_e55c8b4e)) {
            return 0;
        }
        location.var_dcb924fd.var_4272a188 useby(player);
    #/
}

// Namespace rat/namespace_7d3a1543
// Params 1, eflags: 0x0
// Checksum 0x7e00dccc, Offset: 0xde8
// Size: 0x4c
function function_163c296a(*params) {
    /#
        if (!isdefined(level.var_7d45d0d4.activeobjective)) {
            return "<unknown string>";
        }
        return level.var_7d45d0d4.activeobjective.var_b588b063;
    #/
}

// Namespace rat/namespace_7d3a1543
// Params 1, eflags: 0x0
// Checksum 0x235e26f4, Offset: 0xe40
// Size: 0xa8
function function_92891f6e(params) {
    /#
        var_4f7fa3d1 = 1;
        if (params.success === "<unknown string>") {
            var_4f7fa3d1 = 0;
        }
        if (!isdefined(level.var_7d45d0d4.activeobjective)) {
            return 0;
        }
        instance = level.var_7d45d0d4.activeobjective;
        objective_ended(level.var_7d45d0d4.activeobjective, var_4f7fa3d1);
        return instance.success;
    #/
}

// Namespace rat/namespace_7d3a1543
// Params 1, eflags: 0x0
// Checksum 0x47867250, Offset: 0xef0
// Size: 0x184
function function_834d65f9(params) {
    /#
        if (!isdefined(level.var_7d45d0d4.activeobjective) || level.var_7d45d0d4.activeobjective.var_b588b063 != "<unknown string>") {
            return;
        }
        var_4f7fa3d1 = 1;
        if (params.success === "<unknown string>") {
            var_4f7fa3d1 = 0;
        }
        instance = level.var_7d45d0d4.activeobjective;
        if (var_4f7fa3d1) {
            level notify(#"timer_defend");
            stop_timer();
        } else {
            foreach (s_instance in instance.var_fe2612fe[#"console"]) {
                s_instance.var_4a416ea9.health = 0;
                s_instance.var_4a416ea9 notify(#"damage");
            }
        }
        return instance.success;
    #/
}

// Namespace rat/namespace_7d3a1543
// Params 0, eflags: 0x0
// Checksum 0x20ee2af1, Offset: 0x1080
// Size: 0x74
function function_ad78fe8a() {
    /#
        player = [[ level.rat.common.gethostplayer ]]();
        portal = level.var_7d75c960.var_fb516651;
        portal.var_56356783[0].mdl_gameobject use_object_onuse(player);
    #/
}

// Namespace rat/namespace_7d3a1543
// Params 0, eflags: 0x0
// Checksum 0xd387cc45, Offset: 0x1100
// Size: 0x54
function function_adb96ff1() {
    /#
        instance = level.var_7d45d0d4.activeobjective;
        level.var_7d75c960.var_fb516651.mdl_portal.health = 0;
        return instance.success;
    #/
}

// Namespace rat/namespace_7d3a1543
// Params 1, eflags: 0x0
// Checksum 0xb0950ef0, Offset: 0x1160
// Size: 0xe0
function function_a93cbd41(params) {
    /#
        if (!isdefined(level.var_7d45d0d4.activeobjective) || level.var_7d45d0d4.activeobjective.var_b588b063 != "<unknown string>") {
            return;
        }
        var_4f7fa3d1 = 1;
        if (params.success === "<unknown string>") {
            var_4f7fa3d1 = 0;
        }
        instance = level.var_7d45d0d4.activeobjective;
        if (var_4f7fa3d1) {
            goto LOC_000000d2;
        }
        level notify(#"hash_681a588173f0b1d7");
        stop_timer();
    LOC_000000d2:
        return instance.success;
    #/
}
