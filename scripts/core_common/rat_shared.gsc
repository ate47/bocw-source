#using scripts\core_common\callbacks_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\util_shared;

#namespace rat;

/#

    // Namespace rat/rat_shared
    // Params 0, eflags: 0x0
    // Checksum 0x686a4edd, Offset: 0xa0
    // Size: 0x65c
    function init() {
        if (!isdefined(level.rat)) {
            level.rat = spawnstruct();
            level.rat.common = spawnstruct();
            level.rat.script_command_list = [];
            level.rat.playerskilled = 0;
            level.rat.var_cd4fd549 = 0;
            callback::on_player_killed(&function_cecf7c3d);
            level.rat.var_44083397 = [];
            addratscriptcmd("<dev string:x38>", &function_5fd1a95b);
            addratscriptcmd("<dev string:x4e>", &rscteleport);
            addratscriptcmd("<dev string:x5a>", &function_51706559);
            addratscriptcmd("<dev string:x6a>", &function_b2fe8b5a);
            addratscriptcmd("<dev string:x77>", &function_bff535fb);
            addratscriptcmd("<dev string:x87>", &function_220d66d8);
            addratscriptcmd("<dev string:x94>", &function_be6e2f9f);
            addratscriptcmd("<dev string:xa0>", &function_ff0fa082);
            addratscriptcmd("<dev string:xb1>", &function_aecb1023);
            addratscriptcmd("<dev string:xc6>", &function_90282828);
            addratscriptcmd("<dev string:xda>", &function_3b51dc31);
            addratscriptcmd("<dev string:xe9>", &function_a6d4d86b);
            addratscriptcmd("<dev string:xfb>", &function_54b7f226);
            addratscriptcmd("<dev string:x110>", &function_1b77bedd);
            addratscriptcmd("<dev string:x124>", &rscsimulatescripterror);
            addratscriptcmd("<dev string:x13b>", &function_1f00a502);
            addratscriptcmd("<dev string:x150>", &function_696e6dd3);
            addratscriptcmd("<dev string:x15d>", &function_dec22d87);
            addratscriptcmd("<dev string:x174>", &function_e3ab4393);
            addratscriptcmd("<dev string:x18d>", &function_d5c8e330);
            addratscriptcmd("<dev string:x19f>", &function_dff6f575);
            addratscriptcmd("<dev string:x1ab>", &function_d197a150);
            addratscriptcmd("<dev string:x1be>", &function_c4336b49);
            addratscriptcmd("<dev string:x1ce>", &function_ccc178f3);
            addratscriptcmd("<dev string:x1e6>", &function_2fa64525);
            addratscriptcmd("<dev string:x1f6>", &function_6fb461e2);
            addratscriptcmd("<dev string:x20a>", &function_f52fc58b);
            addratscriptcmd("<dev string:x21f>", &function_dbc9b57c);
            addratscriptcmd("<dev string:x231>", &function_4f3a7675);
            addratscriptcmd("<dev string:x241>", &function_458913b0);
            addratscriptcmd("<dev string:x258>", &function_191d6974);
            addratscriptcmd("<dev string:x265>", &function_d1b632ff);
            addratscriptcmd("<dev string:x277>", &function_7d9a084b);
            addratscriptcmd("<dev string:x28e>", &function_1ac5a32b);
            addratscriptcmd("<dev string:x2a7>", &function_7992a479);
            addratscriptcmd("<dev string:x2b5>", &function_9efe300c);
        }
    }

    // Namespace rat/rat_shared
    // Params 0, eflags: 0x0
    // Checksum 0x6fdda161, Offset: 0x708
    // Size: 0x24
    function function_7d22c1c9() {
        level flag::set("<dev string:x2c8>");
    }

    // Namespace rat/rat_shared
    // Params 0, eflags: 0x0
    // Checksum 0x34ebeffc, Offset: 0x738
    // Size: 0x24
    function function_65e13d0f() {
        level flag::clear("<dev string:x2c8>");
    }

    // Namespace rat/rat_shared
    // Params 0, eflags: 0x0
    // Checksum 0x4d78f2b3, Offset: 0x768
    // Size: 0x24
    function function_b4f2a076() {
        level flag::set("<dev string:x2e6>");
    }

    // Namespace rat/rat_shared
    // Params 0, eflags: 0x0
    // Checksum 0x6690e7e7, Offset: 0x798
    // Size: 0x24
    function function_6aa20375() {
        level flag::clear("<dev string:x2e6>");
    }

    // Namespace rat/rat_shared
    // Params 2, eflags: 0x0
    // Checksum 0xd54d4fae, Offset: 0x7c8
    // Size: 0x44
    function addratscriptcmd(commandname, functioncallback) {
        init();
        level.rat.script_command_list[commandname] = functioncallback;
    }

    // Namespace rat/rat_scriptcommand
    // Params 1, eflags: 0x20
    // Checksum 0xb2841282, Offset: 0x818
    // Size: 0x114
    function event_handler[rat_scriptcommand] codecallback_ratscriptcommand(params) {
        init();
        assert(isdefined(params._cmd));
        assert(isdefined(params._id));
        assert(isdefined(level.rat.script_command_list[params._cmd]), "<dev string:x302>" + params._cmd);
        callback = level.rat.script_command_list[params._cmd];
        ret = level [[ callback ]](params);
        ratreportcommandresult(params._id, 1, ret);
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0x9f4b9aad, Offset: 0x938
    // Size: 0x15c
    function getplayer(params) {
        if (isdefined(params._xuid)) {
            xuid = int(params._xuid);
            foreach (player in getplayers()) {
                if (!isdefined(player.bot)) {
                    player_xuid = int(player getxuid(1));
                    if (xuid == player_xuid) {
                        return player;
                    }
                }
            }
            ratreportcommandresult(params._id, 0, "<dev string:x321>");
            wait 1;
            return;
        }
        return util::gethostplayer();
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0x2a235a82, Offset: 0xaa0
    // Size: 0xa8
    function function_5fd1a95b(params) {
        foreach (cmd, func in level.rat.script_command_list) {
            function_55e20e75(params._id, cmd);
        }
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0xb19156ae, Offset: 0xb50
    // Size: 0x6c
    function function_7992a479(params) {
        player = getplayer(params);
        weapon = getweapon(params.weaponname);
        player giveweapon(weapon);
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0xcf112d41, Offset: 0xbc8
    // Size: 0x2c
    function function_1b77bedd(*params) {
        if (isdefined(level.inprematchperiod)) {
            return level.inprematchperiod;
        }
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0xa352e3ac, Offset: 0xc00
    // Size: 0x124
    function rscteleport(params) {
        player = getplayer(params);
        pos = (float(params.x), float(params.y), float(params.z));
        player setorigin(pos);
        if (isdefined(params.ax)) {
            angles = (float(params.ax), float(params.ay), float(params.az));
            player setplayerangles(angles);
        }
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0x1b50b5df, Offset: 0xd30
    // Size: 0x4c
    function function_696e6dd3(params) {
        player = getplayer(params);
        player setstance(params.stance);
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0xb2ea4f0, Offset: 0xd88
    // Size: 0x44
    function function_b2fe8b5a(params) {
        player = getplayer(params);
        return player getstance();
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0xe8b2f4af, Offset: 0xdd8
    // Size: 0xe4
    function function_ccc8790a(params) {
        level endon(#"hash_5ce872746ed86569");
        player = getplayer(params);
        xuid = int(player getxuid(1));
        level.rat.var_44083397[xuid] = 0;
        while (!level.rat.var_44083397[xuid]) {
            level.rat.var_44083397[xuid] = player ismeleeing();
            wait 0.01;
        }
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0x8d48f612, Offset: 0xec8
    // Size: 0x2c
    function function_d5c8e330(params) {
        level thread function_ccc8790a(params);
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0xebce3682, Offset: 0xf00
    // Size: 0xae
    function function_dff6f575(params) {
        player = getplayer(params);
        xuid = int(player getxuid(1));
        var_faf86e88 = level.rat.var_44083397[xuid];
        if (!var_faf86e88) {
            level notify(#"hash_5ce872746ed86569");
        }
        return var_faf86e88;
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0x13aee09d, Offset: 0xfb8
    // Size: 0x44
    function function_bff535fb(params) {
        player = getplayer(params);
        return player playerads();
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0x39f193da, Offset: 0x1008
    // Size: 0x38
    function function_220d66d8(params) {
        player = getplayer(params);
        return player.health;
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0x7c13015, Offset: 0x1048
    // Size: 0xac
    function function_be6e2f9f(params) {
        player = getplayer(params);
        if (isdefined(params.amount)) {
            player dodamage(int(params.amount), player getorigin());
            return;
        }
        player dodamage(1, player getorigin());
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0x825f9c47, Offset: 0x1100
    // Size: 0x78
    function function_ff0fa082(params) {
        player = getplayer(params);
        if (!isdefined(player)) {
            return "<dev string:x349>";
        }
        currentweapon = player getcurrentweapon();
        if (isdefined(currentweapon.name)) {
            return currentweapon.name;
        }
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0x4e8c4c94, Offset: 0x1180
    // Size: 0x68
    function function_7d9a084b(params) {
        player = getplayer(params);
        currentweapon = player getcurrentweapon();
        if (isdefined(currentweapon.name)) {
            return currentweapon.reloadtime;
        }
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0x7f7527e7, Offset: 0x11f0
    // Size: 0x64
    function function_aecb1023(params) {
        player = getplayer(params);
        currentweapon = player getcurrentweapon();
        return player getammocount(currentweapon);
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0x5811d395, Offset: 0x1260
    // Size: 0x64
    function function_90282828(params) {
        player = getplayer(params);
        currentweapon = player getcurrentweapon();
        return player getweaponammoclip(currentweapon);
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0x492eb0fe, Offset: 0x12d0
    // Size: 0x64
    function function_3b51dc31(params) {
        player = getplayer(params);
        currentweapon = player getcurrentweapon();
        return player getweaponammoclipsize(currentweapon);
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0xfec3559f, Offset: 0x1340
    // Size: 0xac
    function function_54b7f226(params) {
        player = getplayer(params);
        origin = player getorigin();
        function_55e20e75(params._id, origin);
        angles = player getplayerangles();
        function_55e20e75(params._id, angles);
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0xd5bea3b9, Offset: 0x13f8
    // Size: 0x4c
    function function_a6d4d86b(params) {
        if (isdefined(params.var_185699f8)) {
            return getnumconnectedplayers(1);
        }
        return getnumconnectedplayers(0);
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0x158ceada, Offset: 0x1450
    // Size: 0x72
    function function_cecf7c3d(*params) {
        if (isdefined(self.bot)) {
            level.rat.var_cd4fd549 += 1;
            return;
        }
        level.rat.playerskilled += 1;
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0x844ee04e, Offset: 0x14d0
    // Size: 0x24
    function function_d197a150(*params) {
        return level.rat.playerskilled;
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0x4cee0b15, Offset: 0x1500
    // Size: 0x24
    function function_c4336b49(*params) {
        return level.rat.var_cd4fd549;
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0xa6ead2c0, Offset: 0x1530
    // Size: 0x19c
    function function_51706559(params) {
        foreach (player in level.players) {
            if (!isdefined(player.bot)) {
                continue;
            }
            pos = (float(params.x), float(params.y), float(params.z));
            player setorigin(pos);
            if (isdefined(params.ax)) {
                angles = (float(params.ax), float(params.ay), float(params.az));
                player setplayerangles(angles);
            }
            if (!isdefined(params.all)) {
                break;
            }
        }
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0x7c2c9842, Offset: 0x16d8
    // Size: 0x190
    function function_dec22d87(params) {
        player = getplayer(params);
        forward = anglestoforward(player.angles);
        distance = 50;
        if (isdefined(params.distance)) {
            distance = float(params.distance);
        }
        spawn = player.origin + forward * distance;
        foreach (other_player in level.players) {
            if (other_player == player) {
                continue;
            }
            if (isdefined(params.var_5d792f96) && int(params.var_5d792f96) && !isdefined(other_player.bot)) {
                continue;
            }
            other_player setorigin(spawn);
        }
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0xb6c1e6a2, Offset: 0x1870
    // Size: 0x1ec
    function function_e3ab4393(params) {
        player = getplayer(params);
        forward = anglestoforward(player.angles);
        distance = 50;
        if (isdefined(params.distance)) {
            distance = float(params.distance);
        }
        spawn = player.origin + forward * distance;
        foreach (other_player in level.players) {
            if (isdefined(params.bot) && int(params.bot) && !isdefined(other_player.bot)) {
                continue;
            }
            if (player getteam() != other_player getteam()) {
                other_player setorigin(spawn);
                other_player setplayerangles(player.angles);
                return;
            }
        }
        ratreportcommandresult(params._id, 0, "<dev string:x34d>");
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0xd75ad8d, Offset: 0x1a68
    // Size: 0xcc
    function function_1ac5a32b(params) {
        player = getplayer(params);
        forward = anglestoforward(player.angles);
        distance = 50;
        if (isdefined(params.distance)) {
            distance = float(params.distance);
        }
        front = player.origin + forward * distance;
        player setorigin(front);
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0x85aac976, Offset: 0x1b40
    // Size: 0x44
    function function_ccc178f3(params) {
        player = getplayer(params);
        return player isplayinganimscripted();
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0xfeb1db89, Offset: 0x1b90
    // Size: 0x52
    function function_6fb461e2(params) {
        player = getplayer(params);
        if (isdefined(player)) {
            return !player arecontrolsfrozen();
        }
        return 0;
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0xa3e40270, Offset: 0x1bf0
    // Size: 0x3c
    function function_2fa64525(params) {
        if (isdefined(params.flag)) {
            return flag::get(params.flag);
        }
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0xa27693c3, Offset: 0x1c38
    // Size: 0xb2
    function function_1f00a502(*params) {
        foreach (player in getplayers()) {
            if (isbot(player)) {
                return player.health;
            }
        }
        return -1;
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0x44ae7b0c, Offset: 0x1cf8
    // Size: 0x42
    function function_4f3a7675(*params) {
        if (isdefined(level.var_5efad16e)) {
            level [[ level.var_5efad16e ]]();
            return 1;
        }
        return 0;
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0xd8827e05, Offset: 0x1d48
    // Size: 0x64
    function function_d04e8397(name) {
        level flag::set("<dev string:x37e>");
        level scene::play(name);
        level flag::clear("<dev string:x37e>");
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0x72c75648, Offset: 0x1db8
    // Size: 0x64
    function function_191d6974(params) {
        if (isdefined(params.name)) {
            level thread function_d04e8397(params.name);
            return;
        }
        ratreportcommandresult(params._id, 0, "<dev string:x38b>");
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0xdc3c8b72, Offset: 0x1e28
    // Size: 0x2c
    function function_d1b632ff(*params) {
        return flag::get("<dev string:x37e>");
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0xaca5e08c, Offset: 0x1e60
    // Size: 0x5a
    function rscsimulatescripterror(params) {
        if (params.errorlevel == "<dev string:x3a5>") {
            assertmsg("<dev string:x3ae>");
            return;
        }
        thisdoesntexist.orthis = 0;
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0xcb89a518, Offset: 0x1ec8
    // Size: 0x154
    function rscrecteleport(*params) {
        println("<dev string:x3ca>");
        player = [[ level.rat.common.gethostplayer ]]();
        pos = player getorigin();
        angles = player getplayerangles();
        cmd = "<dev string:x3ef>" + pos[0] + "<dev string:x403>" + pos[1] + "<dev string:x40a>" + pos[2] + "<dev string:x411>" + angles[0] + "<dev string:x419>" + angles[1] + "<dev string:x421>" + angles[2];
        ratrecordmessage(0, "<dev string:x429>", cmd);
        setdvar(#"rat_record_teleport_request", 0);
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0x8a5cd8e9, Offset: 0x2028
    // Size: 0x7c
    function function_f52fc58b(params) {
        num = 0;
        if (isdefined(params)) {
            if (isdefined(params.num)) {
                num = int(params.num);
            }
        }
        if (num > 0) {
            adddebugcommand("<dev string:x439>" + num);
        }
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0x971b89a, Offset: 0x20b0
    // Size: 0x7c
    function function_dbc9b57c(params) {
        num = 0;
        if (isdefined(params)) {
            if (isdefined(params.num)) {
                num = int(params.num);
            }
        }
        if (num > 0) {
            adddebugcommand("<dev string:x459>" + num);
        }
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0x7fb6b02a, Offset: 0x2138
    // Size: 0x44
    function function_458913b0(params) {
        player = getplayer(params);
        toggleplayercontrol(player);
    }

    // Namespace rat/rat_shared
    // Params 1, eflags: 0x0
    // Checksum 0x976117a0, Offset: 0x2188
    // Size: 0x134
    function function_9efe300c(params) {
        player = getplayer(params);
        spawn = 0;
        team = "<dev string:x476>";
        if (isdefined(params) && isdefined(params.spawn)) {
            if (isdefined(params.spawn)) {
                spawn = int(params.spawn);
            }
            if (isdefined(params.team)) {
                team = params.team;
            }
        }
        if (isdefined(level.spawn_start) && isdefined(level.spawn_start[team])) {
            player setorigin(level.spawn_start[team][spawn].origin);
            player setplayerangles(level.spawn_start[team][spawn].angles);
        }
    }

#/
