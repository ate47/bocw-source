// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\laststand.gsc;
#using scripts\core_common\item_world.gsc;
#using scripts\core_common\bots\bot.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\rat_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\flag_shared.gsc;

#namespace rat;

/#

    // Namespace rat/wz_rat
    // Params 0, eflags: 0x5
    // Checksum 0xbe2563f8, Offset: 0xc0
    // Size: 0x3c
    function private autoexec __init__system__() {
        system::register(#"wz_rat", &preinit, undefined, undefined, undefined);
    }

    // Namespace rat/wz_rat
    // Params 0, eflags: 0x4
    // Checksum 0xaae7aabf, Offset: 0x108
    // Size: 0x1b4
    function private preinit() {
        init();
        level.rat.common.gethostplayer = &util::gethostplayer;
        level.rat.deathcount = 0;
        addratscriptcmd("<unknown string>", &function_70f41194);
        addratscriptcmd("<unknown string>", &function_31980089);
        addratscriptcmd("<unknown string>", &function_1251949b);
        addratscriptcmd("<unknown string>", &function_684893c8);
        addratscriptcmd("<unknown string>", &function_7eabbc02);
        addratscriptcmd("<unknown string>", &function_d50abf44);
        addratscriptcmd("<unknown string>", &function_89684f6a);
        addratscriptcmd("<unknown string>", &function_4bf92a0d);
        setdvar(#"rat_death_count", 0);
    }

    // Namespace rat/wz_rat
    // Params 1, eflags: 0x0
    // Checksum 0xda153f0, Offset: 0x2c8
    // Size: 0x1e
    function function_d50abf44(*params) {
        return level.players.size;
    }

    // Namespace rat/wz_rat
    // Params 1, eflags: 0x0
    // Checksum 0x47957b81, Offset: 0x2f0
    // Size: 0x15c
    function function_7eabbc02(params) {
        remaining = 0;
        host = [[ level.rat.common.gethostplayer ]]();
        hostteam = host.team;
        if (isdefined(params.remaining)) {
            remaining = int(params.remaining);
        }
        if (isdefined(level.players)) {
            for (i = 0; i < level.players.size; i++) {
                if (level.players.size <= remaining) {
                    break;
                }
                if (!isdefined(level.players[i].bot) || level.players[i].team == hostteam || level.players[i].team == "<unknown string>") {
                    continue;
                }
                bot::remove_bot(level.players[i]);
            }
        }
    }

    // Namespace rat/wz_rat
    // Params 1, eflags: 0x0
    // Checksum 0x27e48d35, Offset: 0x458
    // Size: 0xbc
    function function_684893c8(*params) {
        count = 0;
        if (isdefined(level.players)) {
            foreach (player in level.players) {
                if (player laststand::player_is_in_laststand()) {
                    count++;
                }
            }
        }
        return count;
    }

    // Namespace rat/wz_rat
    // Params 1, eflags: 0x0
    // Checksum 0x170f4733, Offset: 0x520
    // Size: 0x4c
    function function_1251949b(*params) {
        player = [[ level.rat.common.gethostplayer ]]();
        return player laststand::player_is_in_laststand();
    }

    // Namespace rat/wz_rat
    // Params 1, eflags: 0x0
    // Checksum 0x2fd98149, Offset: 0x578
    // Size: 0x4c
    function function_70f41194(*params) {
        player = [[ level.rat.common.gethostplayer ]]();
        return player.inventory.var_c212de25;
    }

    // Namespace rat/wz_rat
    // Params 1, eflags: 0x0
    // Checksum 0x1197bd70, Offset: 0x5d0
    // Size: 0x238
    function function_31980089(params) {
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
        items = item_world::function_2e3efdda(player.origin, undefined, numitems, distance);
        foreach (item in items) {
            if (item.itementry.name == "<unknown string>") {
                continue;
            }
            if (isdefined(params.handler)) {
                if (params.handler != item.itementry.handler && params.handler != "<unknown string>") {
                    continue;
                }
            }
            if (name == "<unknown string>" || item.itementry.name == name) {
                function_55e20e75(params._id, item.origin);
            }
        }
    }

    // Namespace rat/wz_rat
    // Params 1, eflags: 0x0
    // Checksum 0xe47c85a, Offset: 0x810
    // Size: 0x5e
    function function_89684f6a(*params) {
        player = [[ level.rat.common.gethostplayer ]]();
        return player.inventory.items[5].networkid != 32767;
    }

    // Namespace rat/wz_rat
    // Params 1, eflags: 0x0
    // Checksum 0xa5f75cf5, Offset: 0x878
    // Size: 0x4c
    function function_4bf92a0d(*params) {
        player = [[ level.rat.common.gethostplayer ]]();
        return player isonground();
    }

#/
