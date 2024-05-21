// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\ui.gsc;
#using scripts\cp_common\challenges.gsc;
#using script_32399001bdb550da;
#using scripts\cp_common\skipto.gsc;
#using scripts\cp_common\collectibles.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\weapons_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\rank_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\dev_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace devgui;

/#

    // Namespace devgui/devgui
    // Params 0, eflags: 0x5
    // Checksum 0xc91788e8, Offset: 0x100
    // Size: 0x3c
    function private autoexec __init__system__() {
        system::register(#"devgui", &preinit, undefined, undefined, undefined);
    }

    // Namespace devgui/devgui
    // Params 0, eflags: 0x4
    // Checksum 0xc695e607, Offset: 0x148
    // Size: 0x25c
    function private preinit() {
        setdvar(#"hash_3171105f4e51bc2f", "<unknown string>");
        setdvar(#"hash_3fbd408cc23e2ec5", "<unknown string>");
        setdvar(#"hash_557029b1aad50b1", "<unknown string>");
        setdvar(#"debug_center_screen", 0);
        setdvar(#"hash_cc97c3c3764310d", "<unknown string>");
        setdvar(#"hash_2a12498fc0843fb5", 0);
        setdvar(#"hash_749e46b2c11ec7c7", 0);
        setdvar(#"hash_6e5349ce99d7adc3", "<unknown string>");
        thread devgui_think();
        thread devgui_weapon_think();
        thread devgui_weapon_asset_name_display_think();
        thread dev::devgui_test_chart_think();
        thread init_debug_center_screen();
        level thread function_5a9c86f0();
        level thread dev::body_customization_devgui(2);
        level thread function_57edec18();
        callback::on_start_gametype(&function_df48a6b6);
        callback::on_connect(&devgui_player_connect);
        callback::on_disconnect(&devgui_player_disconnect);
        level.devgui_player_connect = &devgui_player_connect;
        level.devgui_player_disconnect = &devgui_player_disconnect;
    }

    // Namespace devgui/devgui
    // Params 0, eflags: 0x0
    // Checksum 0x6f55e2d, Offset: 0x3b0
    // Size: 0x1e4
    function function_df48a6b6() {
        level flag::wait_till("<unknown string>");
        rootclear = "<unknown string>";
        adddebugcommand(rootclear);
        players = getplayers();
        foreach (player in getplayers()) {
            rootclear = "<unknown string>" + player.playername + "<unknown string>";
            adddebugcommand(rootclear);
        }
        thread devgui_player_weapons();
        util::waittill_can_add_debug_command();
        level.player_devgui_base = "<unknown string>";
        devgui_add_player_commands(level.player_devgui_base, "<unknown string>", 0);
        players = getplayers();
        for (i = 0; i < players.size; i++) {
            ip1 = i + 1;
            players[i] devgui_add_player_commands(level.player_devgui_base, players[i].playername, ip1);
        }
    }

    // Namespace devgui/devgui
    // Params 0, eflags: 0x0
    // Checksum 0x4cdf009d, Offset: 0x5a0
    // Size: 0x9c
    function devgui_player_connect() {
        if (!isdefined(level.player_devgui_base)) {
            return;
        }
        players = getplayers();
        for (i = 0; i < players.size; i++) {
            if (players[i] != self) {
                continue;
            }
            self devgui_add_player_commands(level.player_devgui_base, players[i].playername, i + 1);
        }
    }

    // Namespace devgui/devgui
    // Params 0, eflags: 0x0
    // Checksum 0xf7762b42, Offset: 0x648
    // Size: 0x54
    function devgui_player_disconnect() {
        if (!isdefined(level.player_devgui_base)) {
            return;
        }
        rootclear = "<unknown string>" + self.playername + "<unknown string>";
        util::add_queued_debug_command(rootclear);
    }

    // Namespace devgui/devgui
    // Params 3, eflags: 0x0
    // Checksum 0x2f5bb77e, Offset: 0x6a8
    // Size: 0x4e0
    function devgui_add_player_commands(root, pname, pid) {
        player_devgui_root = root + pname + "<unknown string>";
        cmdindex = 1;
        function_5d9b4158(player_devgui_root, pid, "<unknown string>", cmdindex, "<unknown string>");
        cmdindex++;
        function_5d9b4158(player_devgui_root, pid, "<unknown string>", cmdindex, "<unknown string>");
        cmdindex++;
        function_5d9b4158(player_devgui_root, pid, "<unknown string>", cmdindex, "<unknown string>");
        cmdindex++;
        function_5d9b4158(player_devgui_root, pid, "<unknown string>", cmdindex, "<unknown string>");
        cmdindex++;
        function_5d9b4158(player_devgui_root, pid, "<unknown string>", cmdindex, "<unknown string>");
        cmdindex++;
        function_5d9b4158(player_devgui_root, pid, "<unknown string>", cmdindex, "<unknown string>");
        cmdindex++;
        function_5d9b4158(player_devgui_root, pid, "<unknown string>", cmdindex, "<unknown string>");
        cmdindex++;
        function_5d9b4158(player_devgui_root, pid, "<unknown string>", cmdindex, "<unknown string>");
        cmdindex++;
        function_5d9b4158(player_devgui_root, pid, "<unknown string>", cmdindex, "<unknown string>");
        cmdindex++;
        if (isbot(self)) {
            return;
        }
        function_5d9b4158(player_devgui_root, pid, "<unknown string>", cmdindex, "<unknown string>");
        cmdindex++;
        function_5d9b4158(player_devgui_root, pid, "<unknown string>", cmdindex, "<unknown string>");
        cmdindex++;
        function_5d9b4158(player_devgui_root, pid, "<unknown string>", cmdindex, "<unknown string>");
        cmdindex++;
        function_5d9b4158(player_devgui_root, pid, "<unknown string>", cmdindex, "<unknown string>");
        cmdindex++;
        function_5d9b4158(player_devgui_root, pid, "<unknown string>", cmdindex, "<unknown string>");
        cmdindex++;
        function_5d9b4158(player_devgui_root, pid, "<unknown string>", cmdindex, "<unknown string>");
        cmdindex++;
        function_5d9b4158(player_devgui_root, pid, "<unknown string>", cmdindex, "<unknown string>");
        cmdindex++;
        function_5d9b4158(player_devgui_root, pid, "<unknown string>", cmdindex, "<unknown string>");
        cmdindex++;
        function_5d9b4158(player_devgui_root, pid, "<unknown string>", cmdindex, "<unknown string>");
        cmdindex++;
        function_5d9b4158(player_devgui_root, pid, "<unknown string>", cmdindex, "<unknown string>");
        cmdindex++;
        function_5d9b4158(player_devgui_root, pid, "<unknown string>", cmdindex, "<unknown string>");
        cmdindex++;
        function_5d9b4158(player_devgui_root, pid, "<unknown string>", cmdindex, "<unknown string>");
        cmdindex++;
        function_5d9b4158(player_devgui_root, pid, "<unknown string>", cmdindex, "<unknown string>");
        cmdindex++;
        function_5d9b4158(player_devgui_root, pid, "<unknown string>", cmdindex, "<unknown string>");
        cmdindex++;
        function_5d9b4158(player_devgui_root, pid, "<unknown string>", cmdindex, "<unknown string>");
        cmdindex++;
    }

    // Namespace devgui/devgui
    // Params 5, eflags: 0x0
    // Checksum 0x389ac98e, Offset: 0xb90
    // Size: 0x94
    function function_5d9b4158(root, pid, cmdname, *cmdindex, cmddvar) {
        util::add_queued_debug_command(pid + cmdindex + "<unknown string>" + "<unknown string>" + "<unknown string>" + cmdname + "<unknown string>" + "<unknown string>" + "<unknown string>" + cmddvar + "<unknown string>");
    }

    // Namespace devgui/devgui
    // Params 3, eflags: 0x0
    // Checksum 0x604549aa, Offset: 0xc30
    // Size: 0x104
    function devgui_handle_player_command(*cmd, playercallback, pcb_param) {
        pid = getdvarint(#"hash_3fbd408cc23e2ec5", 0);
        if (pid > 0) {
            player = getplayers()[pid - 1];
            if (isdefined(player)) {
                if (isdefined(pcb_param)) {
                    player thread [[ playercallback ]](pcb_param);
                } else {
                    player thread [[ playercallback ]]();
                }
            }
        } else {
            array::thread_all(getplayers(), playercallback, pcb_param);
        }
        setdvar(#"hash_3fbd408cc23e2ec5", "<unknown string>");
    }

    // Namespace devgui/devgui
    // Params 0, eflags: 0x0
    // Checksum 0x93fdf259, Offset: 0xd40
    // Size: 0x6d0
    function devgui_think() {
        for (;;) {
            cmd = getdvarstring(#"hash_3171105f4e51bc2f");
            if (cmd == "<unknown string>") {
                waitframe(1);
                continue;
            }
            switch (cmd) {
            case #"health":
                devgui_handle_player_command(cmd, &function_9cd052c5);
                break;
            case #"ammo":
                devgui_handle_player_command(cmd, &devgui_toggle_ammo);
                break;
            case #"ignore":
                devgui_handle_player_command(cmd, &function_651c7865);
                break;
            case #"invul_on":
                devgui_handle_player_command(cmd, &devgui_invulnerable, 1);
                break;
            case #"invul_off":
                devgui_handle_player_command(cmd, &devgui_invulnerable, 0);
                break;
            case #"hash_40eb49b3498f2d5a":
                devgui_handle_player_command(cmd, &function_c60fba82, #"axis");
                break;
            case #"hash_546db01572b08d35":
                devgui_handle_player_command(cmd, &function_c60fba82, #"allies");
                break;
            case #"kill":
                devgui_handle_player_command(cmd, &devgui_kill);
                break;
            case #"revive":
                devgui_handle_player_command(cmd, &function_541ccb87);
                break;
            case #"hash_52845e239e497665":
                devgui_handle_player_command(cmd, &function_fa6a74c3, 100);
                break;
            case #"hash_43a9fbb800953127":
                devgui_handle_player_command(cmd, &function_fa6a74c3, 1000);
                break;
            case #"hash_8219fc726384517":
                devgui_handle_player_command(cmd, &function_c11f6cfe, 100);
                break;
            case #"hash_4afdee64ba81c711":
                devgui_handle_player_command(cmd, &function_c11f6cfe, 1000);
                break;
            case #"hash_42b246496512ccba":
                devgui_handle_player_command(cmd, &collectibles::function_a66b8474);
                break;
            case #"hash_777573ed749058d3":
                devgui_handle_player_command(cmd, &collectibles::function_4e4a7021);
                break;
            case #"hash_62c2f3a35c11cebf":
                devgui_handle_player_command(cmd, &function_8c36f50);
                break;
            case #"hash_3e24fbcff4d4b1eb":
                devgui_handle_player_command(cmd, &function_895ead7c);
                break;
            case #"hash_7d67399c1e80c90f":
                devgui_handle_player_command(cmd, &function_38ea35b);
                break;
            case #"hash_67a420615cfa783d":
                devgui_handle_player_command(cmd, &function_d1f1f7b0);
                break;
            case #"hash_22e23b36dec9f72e":
                devgui_handle_player_command(cmd, &function_b729c951);
                break;
            case #"hash_27b8b67661308678":
                devgui_handle_player_command(cmd, &function_fa6a74c3, 1000000);
                break;
            case #"hash_17ae6e19e0c5fdd2":
                devgui_handle_player_command(cmd, &function_f96938ce);
                break;
            case #"hash_171c599dfd8645fb":
                devgui_handle_player_command(cmd, &function_de31914a, "<unknown string>");
                break;
            case 0:
                break;
            default:
                if (isdefined(level.custom_devgui)) {
                    if (isarray(level.custom_devgui)) {
                        foreach (devgui in level.custom_devgui) {
                            if (is_true([[ devgui ]](cmd))) {
                                break;
                            }
                        }
                    } else {
                        [[ level.custom_devgui ]](cmd);
                    }
                }
                break;
            }
            setdvar(#"hash_3171105f4e51bc2f", "<unknown string>");
            wait(0.5);
        }
    }

    // Namespace devgui/devgui
    // Params 1, eflags: 0x0
    // Checksum 0x9a4221b3, Offset: 0x1418
    // Size: 0x2c
    function function_de31914a(stat_name) {
        self challenges::function_8332bc5e(stat_name, 50);
    }

    // Namespace devgui/devgui
    // Params 0, eflags: 0x0
    // Checksum 0x9876e365, Offset: 0x1450
    // Size: 0xe0
    function function_f96938ce() {
        var_16e5e46 = skipto::function_228558fd();
        foreach (msn in var_16e5e46) {
            self stats::function_dad108fa(#"hash_6c042cdc991e48c2" + getsubstr(getmissionname(msn), 0, 3), 1);
        }
    }

    // Namespace devgui/devgui
    // Params 0, eflags: 0x0
    // Checksum 0xfff92686, Offset: 0x1538
    // Size: 0x84
    function function_b729c951() {
                for (itemindex = 1; itemindex < 76; itemindex++) {
            self stats::set_stat(#"itemstats", itemindex, #"stats", #"kills", #"statvalue", 999);
        }
    }

    // Namespace devgui/devgui
    // Params 0, eflags: 0x0
    // Checksum 0xe71ea568, Offset: 0x15c8
    // Size: 0x64
    function function_d1f1f7b0() {
                for (itemindex = 1; itemindex < 76; itemindex++) {
            self stats::set_stat(#"itemstats", itemindex, #"xp", 1000000);
        }
    }

    // Namespace devgui/devgui
    // Params 0, eflags: 0x0
    // Checksum 0x41e9399a, Offset: 0x1638
    // Size: 0xd0
    function function_38ea35b() {
        if (!isdefined(getrootmapname())) {
            return;
        }
        foreach (msn in skipto::function_228558fd()) {
            self stats::set_stat(#"playerstatsbymap", msn, #"hash_1e0160af4fd80dff", 4, 1);
        }
    }

    // Namespace devgui/devgui
    // Params 0, eflags: 0x0
    // Checksum 0xd6d703c1, Offset: 0x1710
    // Size: 0x11c
    function function_895ead7c() {
        if (is_true(self.var_f031ddbc)) {
            self closeluimenu(self.var_f031ddbc);
        }
        self.var_f031ddbc = self openluimenu("<unknown string>");
        waitresult = self waittill(#"menuresponse");
        menu = waitresult.menu;
        for (response = waitresult.response; response != "<unknown string>"; response = waitresult.response) {
            waitresult = self waittill(#"menuresponse");
            menu = waitresult.menu;
        }
        self closeluimenu(self.var_f031ddbc);
    }

    // Namespace devgui/devgui
    // Params 0, eflags: 0x0
    // Checksum 0xc8a0b5a0, Offset: 0x1838
    // Size: 0xc8
    function function_8c36f50() {
        var_16e5e46 = skipto::function_228558fd();
        foreach (mission_name in var_16e5e46) {
            self stats::set_stat(#"playerstatsbymap", mission_name, #"hasbeencompleted", 1);
        }
    }

    // Namespace devgui/devgui
    // Params 1, eflags: 0x0
    // Checksum 0xd7df0e5a, Offset: 0x1908
    // Size: 0x74
    function function_fa6a74c3(var_32db513) {
        assert(isdefined(self));
        assert(isplayer(self));
        self addrankxpvalue("<unknown string>", var_32db513, 0);
    }

    // Namespace devgui/devgui
    // Params 1, eflags: 0x0
    // Checksum 0x70c6db84, Offset: 0x1988
    // Size: 0x104
    function function_c11f6cfe(var_32db513) {
        assert(isdefined(self));
        assert(isplayer(self));
        weapon_ref = self.currentweapon.rootweapon.name;
        weapon_index = getitemindexfromref(weapon_ref);
        var_2888ab1b = self stats::get_stat(#"itemstats", weapon_index, #"xp");
        self stats::set_stat(#"itemstats", weapon_index, #"xp", var_32db513 + var_2888ab1b);
    }

    // Namespace devgui/devgui
    // Params 1, eflags: 0x0
    // Checksum 0x67b6bb84, Offset: 0x1a98
    // Size: 0x74
    function devgui_invulnerable(onoff) {
        if (onoff) {
            self val::set(#"devgui", "<unknown string>", 0);
            return;
        }
        self val::reset(#"devgui", "<unknown string>");
    }

    // Namespace devgui/devgui
    // Params 1, eflags: 0x0
    // Checksum 0x1e493f3e, Offset: 0x1b18
    // Size: 0x8c
    function function_c60fba82(teamname) {
        assert(isdefined(self));
        assert(isplayer(self));
        self.team = teamname;
        self.sessionteam = teamname;
        self.pers[#"team"] = teamname;
    }

    // Namespace devgui/devgui
    // Params 0, eflags: 0x0
    // Checksum 0x778e5153, Offset: 0x1bb0
    // Size: 0x114
    function devgui_kill() {
        assert(isdefined(self));
        assert(isplayer(self));
        if (isalive(self)) {
            self val::set(#"devgui_kill", "<unknown string>", 1);
            death_from = (randomfloatrange(-20, 20), randomfloatrange(-20, 20), randomfloatrange(-20, 20));
            self dodamage(self.health + 666, self.origin + death_from);
        }
    }

    // Namespace devgui/devgui
    // Params 0, eflags: 0x0
    // Checksum 0xcc9edc1d, Offset: 0x1cd0
    // Size: 0x15e
    function devgui_toggle_ammo() {
        assert(isdefined(self));
        assert(isplayer(self));
        if (!isalive(self)) {
            return;
        }
        self notify(#"devgui_toggle_ammo");
        self endon(#"devgui_toggle_ammo");
        self.ammo4evah = !is_true(self.ammo4evah);
        while (isdefined(self) && self.ammo4evah) {
            weapon = self getcurrentweapon();
            if (weapon != level.weaponnone) {
                self setweaponoverheating(0, 0);
                max = weapon.maxammo;
                if (isdefined(max)) {
                    self setweaponammostock(weapon, max);
                }
            }
            wait(1);
        }
    }

    // Namespace devgui/devgui
    // Params 0, eflags: 0x0
    // Checksum 0xe44e460, Offset: 0x1e38
    // Size: 0x9c
    function function_651c7865() {
        assert(isdefined(self));
        assert(isplayer(self));
        if (!isalive(self)) {
            return;
        }
        self val::set(#"hash_257f3b3118db7db7", "<unknown string>", !self.ignoreme);
    }

    // Namespace devgui/devgui
    // Params 0, eflags: 0x0
    // Checksum 0x5418d7c3, Offset: 0x1ee0
    // Size: 0x116
    function function_541ccb87() {
        assert(isdefined(self));
        assert(isplayer(self));
        if (!isalive(self)) {
            return;
        }
        self reviveplayer();
        if (isdefined(self.revivetrigger)) {
            self.revivetrigger delete();
            self.revivetrigger = undefined;
        }
        self allowjump(1);
        self.laststand = undefined;
        self callback::callback(#"on_player_revived");
        self notify(#"player_revived", {#reviver:self});
    }

    // Namespace devgui/devgui
    // Params 1, eflags: 0x0
    // Checksum 0xcf62e392, Offset: 0x2000
    // Size: 0x72
    function function_4a38f3a4(maxhealth) {
        self endon(#"disconnect", #"hash_147b5d37057b5a78");
        while (true) {
            wait(1);
            if (self.maxhealth != maxhealth) {
                self.maxhealth = maxhealth;
                self.health = self.maxhealth;
            }
        }
    }

    // Namespace devgui/devgui
    // Params 0, eflags: 0x0
    // Checksum 0x598c5785, Offset: 0x2080
    // Size: 0xfa
    function function_9cd052c5() {
        assert(isdefined(self));
        assert(isplayer(self));
        if (!isalive(self)) {
            return;
        }
        self notify(#"hash_147b5d37057b5a78");
        if (self.maxhealth >= 2000 && isdefined(self.var_77257e19)) {
            self.maxhealth = self.var_77257e19;
        } else {
            self.var_77257e19 = self.maxhealth;
            self.maxhealth = 2000;
            self thread function_4a38f3a4(self.maxhealth);
        }
        self.health = self.maxhealth;
    }

    // Namespace devgui/devgui
    // Params 0, eflags: 0x0
    // Checksum 0x2d80aa3f, Offset: 0x2188
    // Size: 0x4e4
    function devgui_player_weapons() {
        level endon(#"game_ended");
        if (is_true(game.devgui_weapons_added)) {
            return;
        }
        level flag::wait_till("<unknown string>");
        wait(0.1);
        a_weapons = enumerateweapons("<unknown string>");
        var_8a678090 = [];
        var_d766eebd = [];
        var_b972bcd9 = [];
        for (i = 0; i < a_weapons.size; i++) {
            if (weapons::is_primary_weapon(a_weapons[i]) || weapons::is_side_arm(a_weapons[i])) {
                arrayinsert(var_8a678090, a_weapons[i], 0);
                continue;
            }
            if (weapons::is_grenade(a_weapons[i])) {
                arrayinsert(var_d766eebd, a_weapons[i], 0);
                continue;
            }
            arrayinsert(var_b972bcd9, a_weapons[i], 0);
        }
        var_92724e9c = "<unknown string>";
        adddebugcommand(var_92724e9c + "<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>");
        adddebugcommand(var_92724e9c + "<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>");
        adddebugcommand(var_92724e9c + "<unknown string>" + "<unknown string>" + "<unknown string>" + "<unknown string>");
        level thread devgui_add_player_weapons(var_92724e9c, "<unknown string>", 0, var_d766eebd, "<unknown string>");
        level thread devgui_add_player_weapons(var_92724e9c, "<unknown string>", 0, var_8a678090, "<unknown string>");
        level thread devgui_add_player_weapons(var_92724e9c, "<unknown string>", 0, var_b972bcd9, "<unknown string>");
        function_131c6ccd(var_92724e9c, "<unknown string>", 0, var_8a678090, "<unknown string>");
        players = getplayers();
        size = players.size;
        if (size > 2) {
            size = 2;
        }
        for (i = 0; i < size; i++) {
            ip1 = i + 1;
            adddebugcommand(var_92724e9c + players[i].playername + "<unknown string>" + "<unknown string>" + "<unknown string>");
            adddebugcommand(var_92724e9c + players[i].playername + "<unknown string>" + "<unknown string>" + "<unknown string>");
            adddebugcommand(var_92724e9c + players[i].playername + "<unknown string>" + "<unknown string>" + "<unknown string>");
            level thread devgui_add_player_weapons(var_92724e9c, players[i].playername, ip1, var_d766eebd, "<unknown string>");
            level thread devgui_add_player_weapons(var_92724e9c, players[i].playername, ip1, var_8a678090, "<unknown string>");
            level thread devgui_add_player_weapons(var_92724e9c, players[i].playername, ip1, var_b972bcd9, "<unknown string>");
            level thread function_131c6ccd(var_92724e9c, players[i].playername, ip1, var_8a678090, "<unknown string>");
        }
        game.devgui_weapons_added = 1;
    }

    // Namespace devgui/devgui
    // Params 5, eflags: 0x0
    // Checksum 0xfac173a5, Offset: 0x2678
    // Size: 0x218
    function function_131c6ccd(root, pname, index, a_weapons, weapon_type) {
        level endon(#"game_ended");
        player_devgui_root = root + pname + "<unknown string>" + "<unknown string>" + weapon_type + "<unknown string>";
        attachments = [];
        foreach (weapon in a_weapons) {
            foreach (var_ffefdfd6 in weapon.supportedattachments) {
                array::add(attachments, var_ffefdfd6, 0);
            }
        }
        pid = "<unknown string>" + index;
        foreach (att in attachments) {
            function_8f3e84bc(player_devgui_root, pid, att, 1);
        }
    }

    // Namespace devgui/devgui
    // Params 5, eflags: 0x0
    // Checksum 0x1e102ab9, Offset: 0x2898
    // Size: 0x21c
    function devgui_add_player_weapons(root, pname, index, a_weapons, weapon_type) {
        level endon(#"game_ended");
        player_devgui_root = root + pname + "<unknown string>" + "<unknown string>" + weapon_type + "<unknown string>";
        pid = "<unknown string>" + index;
        if (isdefined(a_weapons)) {
            for (i = 0; i < a_weapons.size; i++) {
                if (weapon_type == "<unknown string>") {
                    attachments = [];
                } else {
                    attachments = a_weapons[i].supportedattachments;
                }
                name = getweaponname(a_weapons[i]);
                if (attachments.size) {
                    devgui_add_player_weap_command(player_devgui_root + name + "<unknown string>", pid, name, i + 1);
                    foreach (att in attachments) {
                        if (att != "<unknown string>") {
                            devgui_add_player_weap_command(player_devgui_root + name + "<unknown string>", pid, name + "<unknown string>" + att, i + 1);
                        }
                    }
                    continue;
                }
                devgui_add_player_weap_command(player_devgui_root, pid, name, i + 1);
            }
        }
    }

    // Namespace devgui/devgui
    // Params 4, eflags: 0x0
    // Checksum 0x6e176054, Offset: 0x2ac0
    // Size: 0xa4
    function devgui_add_player_weap_command(root, pid, weap_name, *cmdindex) {
        util::waittill_can_add_debug_command();
        adddebugcommand(pid + cmdindex + "<unknown string>" + "<unknown string>" + "<unknown string>" + weap_name + "<unknown string>" + "<unknown string>" + "<unknown string>" + cmdindex + "<unknown string>");
    }

    // Namespace devgui/devgui
    // Params 4, eflags: 0x0
    // Checksum 0xbb7e06c5, Offset: 0x2b70
    // Size: 0xa4
    function function_8f3e84bc(root, pid, var_b0f63180, *cmdindex) {
        util::waittill_can_add_debug_command();
        adddebugcommand(pid + cmdindex + "<unknown string>" + "<unknown string>" + "<unknown string>" + var_b0f63180 + "<unknown string>" + "<unknown string>" + "<unknown string>" + cmdindex + "<unknown string>");
    }

    // Namespace devgui/devgui
    // Params 0, eflags: 0x0
    // Checksum 0x730ddbfe, Offset: 0x2c20
    // Size: 0x128
    function devgui_weapon_think() {
        for (;;) {
            weapon_name = getdvarstring(#"hash_557029b1aad50b1");
            if (weapon_name != "<unknown string>") {
                devgui_handle_player_command(weapon_name, &devgui_give_weapon, weapon_name);
                setdvar(#"hash_557029b1aad50b1", "<unknown string>");
            }
            attachmentname = getdvarstring(#"hash_cc97c3c3764310d");
            if (attachmentname != "<unknown string>") {
                devgui_handle_player_command(attachmentname, &function_848084d4, attachmentname);
                setdvar(#"hash_cc97c3c3764310d", "<unknown string>");
            }
            wait(0.5);
        }
    }

    // Namespace devgui/devgui
    // Params 0, eflags: 0x0
    // Checksum 0xae3f3d74, Offset: 0x2d50
    // Size: 0x3c6
    function devgui_weapon_asset_name_display_think() {
        update_time = 0.5;
        print_duration = int(update_time / float(function_60d95f53()) / 1000);
        printlnbold_update = int(1 / update_time);
        printlnbold_counter = 0;
        colors = [];
        colors[colors.size] = (1, 1, 1);
        colors[colors.size] = (1, 0, 0);
        colors[colors.size] = (0, 1, 0);
        colors[colors.size] = (1, 1, 0);
        colors[colors.size] = (1, 0, 1);
        colors[colors.size] = (0, 1, 1);
        for (;;) {
            wait(update_time);
            display = getdvarint(#"hash_749e46b2c11ec7c7", 0);
            if (!display) {
                continue;
            }
            if (!printlnbold_counter) {
                iprintlnbold(getweaponname(level.players[0] getcurrentweapon()));
            }
            printlnbold_counter++;
            if (printlnbold_counter >= printlnbold_update) {
                printlnbold_counter = 0;
            }
            color_index = 0;
            for (i = 1; i < level.players.size; i++) {
                player = level.players[i];
                weapon = player getcurrentweapon();
                if (!isdefined(weapon) || level.weaponnone == weapon) {
                    continue;
                }
                print3d(player gettagorigin("<unknown string>"), getweaponname(weapon), colors[color_index], 1, 0.15, print_duration);
                color_index++;
                if (color_index >= colors.size) {
                    color_index = 0;
                }
            }
            color_index = 0;
            ai_list = getaiarray();
            for (i = 0; i < ai_list.size; i++) {
                ai = ai_list[i];
                if (isvehicle(ai)) {
                    weapon = ai.turretweapon;
                } else {
                    weapon = ai.weapon;
                }
                if (!isdefined(weapon) || level.weaponnone == weapon) {
                    continue;
                }
                print3d(ai gettagorigin("<unknown string>"), getweaponname(weapon), colors[color_index], 1, 0.15, print_duration);
                color_index++;
                if (color_index >= colors.size) {
                    color_index = 0;
                }
            }
        }
    }

    // Namespace devgui/devgui
    // Params 1, eflags: 0x0
    // Checksum 0x62ad888d, Offset: 0x3120
    // Size: 0x31c
    function devgui_give_weapon(weapon_name) {
        assert(isdefined(self));
        assert(isplayer(self));
        if (!isalive(self)) {
            return;
        }
        self notify(#"devgui_give_ammo");
        self endon(#"devgui_give_ammo");
        currentweapon = self getcurrentweapon();
        split = strtok(weapon_name, "<unknown string>");
        switch (split.size) {
        case 1:
        default:
            weapon = getweapon(split[0]);
            break;
        case 2:
            weapon = getweapon(split[0], split[1]);
            break;
        case 3:
            weapon = getweapon(split[0], split[1], split[2]);
            break;
        case 4:
            weapon = getweapon(split[0], split[1], split[2], split[3]);
            break;
        case 5:
            weapon = getweapon(split[0], split[1], split[2], split[3], split[4]);
            break;
        }
        if (currentweapon != weapon) {
            if (getdvarint(#"hash_2a12498fc0843fb5", 0)) {
                adddebugcommand("<unknown string>" + weapon_name);
                waitframe(1);
            } else {
                self takeweapon(currentweapon);
                self giveweapon(weapon);
                self switchtoweapon(weapon);
            }
            max = weapon.maxammo;
            if (max) {
                self setweaponammostock(weapon, max);
            }
        }
    }

    // Namespace devgui/devgui
    // Params 1, eflags: 0x0
    // Checksum 0xd77fbaa8, Offset: 0x3448
    // Size: 0x41c
    function function_848084d4(var_b0f63180) {
        assert(isdefined(self));
        assert(isplayer(self));
        if (!isalive(self)) {
            return;
        }
        self notify(#"hash_1db87c450e38d18f");
        self endon(#"hash_1db87c450e38d18f");
        currentweapon = self getcurrentweapon();
        var_aa9cebb1 = 0;
        split = strtok(getweaponname(currentweapon), "<unknown string>");
        foreach (attachment in currentweapon.supportedattachments) {
            if (attachment == var_b0f63180) {
                var_aa9cebb1 = 1;
            }
        }
        if (var_aa9cebb1 == 0) {
            iprintlnbold("<unknown string>" + var_b0f63180 + "<unknown string>" + split[0]);
            attachmentsstring = "<unknown string>";
            if (currentweapon.supportedattachments.size == 0) {
                attachmentsstring += "<unknown string>";
            }
            foreach (attachment in currentweapon.supportedattachments) {
                attachmentsstring += "<unknown string>" + attachment;
            }
            iprintlnbold(attachmentsstring);
            return;
        }
        foreach (currentattachment in split) {
            if (currentattachment == var_b0f63180) {
                iprintlnbold("<unknown string>" + var_b0f63180 + "<unknown string>" + getweaponname(currentweapon));
                return;
            }
        }
        split[split.size] = var_b0f63180;
        for (index = split.size; index < 9; index++) {
            split[index] = "<unknown string>";
        }
        self takeweapon(currentweapon);
        newweapon = getweapon(split[0], split[1], split[2], split[3], split[4], split[5], split[6], split[7]);
        self giveweapon(newweapon);
        self switchtoweapon(newweapon);
    }

    // Namespace devgui/devgui
    // Params 0, eflags: 0x0
    // Checksum 0xda29f7d8, Offset: 0x3870
    // Size: 0x12c
    function init_debug_center_screen() {
        zero_idle_movement = 0;
        for (;;) {
            if (getdvarint(#"debug_center_screen", 0)) {
                if (!isdefined(level.center_screen_debug_hudelem_active) || level.center_screen_debug_hudelem_active == 0) {
                    thread debug_center_screen();
                    zero_idle_movement = getdvarint(#"zero_idle_movement", 0);
                    if (zero_idle_movement == 0) {
                        setdvar(#"zero_idle_movement", 1);
                        zero_idle_movement = 1;
                    }
                }
            } else {
                level notify(#"stop center screen debug");
                if (zero_idle_movement == 1) {
                    setdvar(#"zero_idle_movement", 0);
                    zero_idle_movement = 0;
                }
            }
            waitframe(1);
        }
    }

    // Namespace devgui/devgui
    // Params 0, eflags: 0x0
    // Checksum 0xc4b6fef9, Offset: 0x39a8
    // Size: 0x238
    function debug_center_screen() {
        level.center_screen_debug_hudelem_active = 1;
        wait(0.1);
        level.center_screen_debug_hudelem1 = newdebughudelem(level.players[0]);
        level.center_screen_debug_hudelem1.alignx = "<unknown string>";
        level.center_screen_debug_hudelem1.aligny = "<unknown string>";
        level.center_screen_debug_hudelem1.fontscale = 1;
        level.center_screen_debug_hudelem1.alpha = 0.5;
        level.center_screen_debug_hudelem1.x = 320 - 1;
        level.center_screen_debug_hudelem1.y = 240;
        level.center_screen_debug_hudelem1 setshader("<unknown string>", 1000, 1);
        level.center_screen_debug_hudelem2 = newdebughudelem(level.players[0]);
        level.center_screen_debug_hudelem2.alignx = "<unknown string>";
        level.center_screen_debug_hudelem2.aligny = "<unknown string>";
        level.center_screen_debug_hudelem2.fontscale = 1;
        level.center_screen_debug_hudelem2.alpha = 0.5;
        level.center_screen_debug_hudelem2.x = 320 - 1;
        level.center_screen_debug_hudelem2.y = 240;
        level.center_screen_debug_hudelem2 setshader("<unknown string>", 1, 480);
        level waittill(#"stop center screen debug");
        level.center_screen_debug_hudelem1 destroy();
        level.center_screen_debug_hudelem2 destroy();
        level.center_screen_debug_hudelem_active = 0;
    }

    // Namespace devgui/devgui
    // Params 0, eflags: 0x0
    // Checksum 0x206f41bb, Offset: 0x3be8
    // Size: 0xa4
    function function_5a9c86f0() {
        setdvar(#"hash_646be3524c8b225b", 0);
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        level thread function_505cd4da();
    }

    // Namespace devgui/devgui
    // Params 0, eflags: 0x0
    // Checksum 0x8039556f, Offset: 0x3c98
    // Size: 0x288
    function function_505cd4da() {
        level notify(#"hash_242671403e167291");
        level endon(#"hash_242671403e167291");
        while (true) {
            cmd = getdvarstring(#"hash_646be3524c8b225b");
            var_6019e2d9 = [];
            if (isarray(level.var_ef4974d7)) {
                var_6019e2d9 = getarraykeys(level.var_ef4974d7);
            }
            switch (cmd) {
            case #"hash_12e35667bc66baa9":
                ui::function_f7aafb81("<unknown string>");
                break;
            case #"hash_22ed7cc6e9fda6c2":
                ui::function_bb62027a("<unknown string>");
                break;
            case #"hash_679b069e13fed10c":
                level.var_738bd204 = 1;
                foreach (var_fd2ef744 in var_6019e2d9) {
                    ui::function_f7aafb81(var_fd2ef744);
                }
                break;
            case #"hash_421b1673272a4585":
                level.var_738bd204 = undefined;
                foreach (var_fd2ef744 in var_6019e2d9) {
                    ui::function_bb62027a(var_fd2ef744);
                }
                break;
            }
            setdvar(#"hash_646be3524c8b225b", 0);
            wait(0.5);
        }
    }

    // Namespace devgui/devgui
    // Params 0, eflags: 0x4
    // Checksum 0xde68ef2b, Offset: 0x3f28
    // Size: 0x1be
    function private function_57edec18() {
        util::add_devgui("<unknown string>", "<unknown string>");
        util::add_devgui("<unknown string>", "<unknown string>");
        while (true) {
            if (getdvarint(#"scr_drone_camera", 0)) {
                if (isdefined(level.drone_camera)) {
                    waitframe(1);
                    continue;
                }
                player = getplayers()[0];
                if (!isdefined(player)) {
                    waitframe(1);
                    continue;
                }
                drone_camera = spawnvehicle("<unknown string>", player.origin + (0, 0, 150), player.angles, "<unknown string>");
                drone_camera.ignoreme = 1;
                drone_camera usevehicle(player, 0);
                level.drone_camera = drone_camera;
            } else if (isdefined(level.drone_camera)) {
                driver = level.drone_camera getseatoccupant(0);
                if (isdefined(driver)) {
                    driver unlink();
                }
                level.drone_camera delete();
            }
            waitframe(1);
        }
    }

#/
