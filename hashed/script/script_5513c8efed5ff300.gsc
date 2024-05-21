// Atian COD Tools GSC CW decompiler test
#using script_35ae72be7b4fec10;
#using script_72016c9e6b96ab18;
#using script_32399001bdb550da;
#using scripts\cp_common\gametypes\globallogic_ui.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_70eba6e6;

// Namespace namespace_70eba6e6/namespace_70eba6e6
// Params 0, eflags: 0x5
// Checksum 0x1572bc84, Offset: 0x3e8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_7f07ebed7e062c01", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_70eba6e6/namespace_70eba6e6
// Params 0, eflags: 0x6 linked
// Checksum 0x80c37b1f, Offset: 0x430
// Size: 0x38c
function private preinit() {
    callback::on_connect(&function_af62abd5);
    /#
        function_5ac4dc99("<unknown string>", 0);
        function_cd140ee9("<unknown string>", &function_1f275908);
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        function_5ac4dc99("<unknown string>", 0);
        function_5ac4dc99("<unknown string>", -1);
        function_5ac4dc99("<unknown string>", -1);
        function_5ac4dc99("<unknown string>", -1);
        function_5ac4dc99("<unknown string>", "<unknown string>");
        function_5ac4dc99("<unknown string>", "<unknown string>");
        level.var_698302a = {#var_b24c705f:[0, 1, 2, 4], #var_4751b3ae:[0, 1, 2, 3, 4, 5, 6, 7, 8], #var_fec76b21:[0, 1, 2, 3], #var_86c1b5e2:"<unknown string>", #var_dc2904c0:"<unknown string>", #var_6d4f5e7d:-1, #var_3f25d9dc:-1, #var_8ef81ab9:-1, #var_73c7789b:-1, #var_a47d91bd:"<unknown string>", #var_3b8c60fd:"<unknown string>"};
        function_5ac4dc99("<unknown string>", 0);
        function_cd140ee9("<unknown string>", &function_5db7f789);
        adddebugcommand("<unknown string>");
    #/
}

/#

    // Namespace namespace_70eba6e6/namespace_70eba6e6
    // Params 1, eflags: 0x0
    // Checksum 0xcc0ca74a, Offset: 0x7c8
    // Size: 0x2c
    function function_1f275908(params) {
        level thread function_d9bd950c(params);
    }

    // Namespace namespace_70eba6e6/namespace_70eba6e6
    // Params 1, eflags: 0x0
    // Checksum 0xb731814f, Offset: 0x800
    // Size: 0x174
    function function_d9bd950c(params) {
        level endon(#"game_ended");
        waitframe(1);
        player = getplayers()[0];
        assert(params.name == "<unknown string>");
        var_443e3ea5 = params.value;
        setdvar(#"hash_6e0caf373bd4af27", 0);
        if (function_ba0491ff()) {
            return;
        }
        if (var_443e3ea5 == 1) {
            player function_f8bd1258();
            return;
        }
        if (var_443e3ea5 == 2) {
            player function_5a4cb86d(0, 1);
            return;
        }
        if (var_443e3ea5 == 3) {
            player function_5a4cb86d(1);
            return;
        }
        if (var_443e3ea5 == 4) {
            player function_e6558603("<unknown string>");
        }
    }

    // Namespace namespace_70eba6e6/namespace_70eba6e6
    // Params 0, eflags: 0x0
    // Checksum 0x34c4e4a8, Offset: 0x980
    // Size: 0x2c
    function function_ba0491ff() {
        return namespace_61e6d095::exists(#"hash_7f07ebed7e062c01");
    }

    // Namespace namespace_70eba6e6/namespace_70eba6e6
    // Params 0, eflags: 0x4
    // Checksum 0x898d409, Offset: 0x9b8
    // Size: 0xb6
    function private function_690435a2() {
        level.var_698302a.var_86c1b5e2 = "<unknown string>";
        level.var_698302a.var_dc2904c0 = "<unknown string>";
        level.var_698302a.var_6d4f5e7d = -1;
        level.var_698302a.var_3f25d9dc = -1;
        level.var_698302a.var_8ef81ab9 = -1;
        level.var_698302a.var_73c7789b = -1;
        level.var_698302a.var_a47d91bd = "<unknown string>";
        level.var_698302a.var_3b8c60fd = "<unknown string>";
    }

    // Namespace namespace_70eba6e6/namespace_70eba6e6
    // Params 1, eflags: 0x4
    // Checksum 0xf113bdd8, Offset: 0xa78
    // Size: 0xe0
    function private function_5db7f789(params) {
        player = getplayers()[0];
        assert(params.name == "<unknown string>");
        if (params.value) {
            setdvar(#"hash_2832abd8d28063d5", 1);
            player thread function_64892fd7();
            return;
        }
        setdvar(#"hash_2832abd8d28063d5", 0);
        player notify(#"hash_2988c621f7fe6406");
    }

    // Namespace namespace_70eba6e6/namespace_70eba6e6
    // Params 0, eflags: 0x4
    // Checksum 0x370b8900, Offset: 0xb60
    // Size: 0x620
    function private function_64892fd7() {
        player = self;
        player endoncallback(&function_9e5a1627, #"hash_2988c621f7fe6406");
        var_d29ad73d = 8;
        player.var_b9da7d3 = [];
        for (i = 0; i < var_d29ad73d; i++) {
            hudelem = newdebughudelem(player);
            hudelem.alignx = "<unknown string>";
            hudelem.aligny = "<unknown string>";
            hudelem.x = 400;
            hudelem.y = 60 + i * 14;
            hudelem.foreground = 1;
            hudelem.fontscale = 1;
            hudelem settext("<unknown string>");
            hudelem.var_75b1e6b7 = "<unknown string>";
            hudelem.color = (0.75, 0.75, 0.75);
            player.var_b9da7d3[i] = hudelem;
        }
        player.var_b9da7d3[0] settext("<unknown string>");
        while (true) {
            wait(0.5);
            var_e462aa74 = "<unknown string>" + player savegame::function_2ee66e93(#"hash_6077f719ce58d931", 0);
            var_812674f1 = player.var_b9da7d3[2];
            if (var_e462aa74 != var_812674f1.var_75b1e6b7) {
                var_812674f1.var_75b1e6b7 = var_e462aa74;
                var_812674f1 settext("<unknown string>" + var_e462aa74 + "<unknown string>");
            }
            skintone = function_e86cb765(1);
            var_913a3f00 = "<unknown string>" + player savegame::function_2ee66e93(#"hash_69e7b14384f0405b", 0);
            var_94bd8e48 = player.var_b9da7d3[3];
            if (skintone + var_913a3f00 != var_94bd8e48.var_75b1e6b7) {
                var_94bd8e48.var_75b1e6b7 = skintone + var_913a3f00;
                var_94bd8e48 settext("<unknown string>" + skintone + "<unknown string>" + var_913a3f00 + "<unknown string>");
            }
            gender = function_33bf99f8(0);
            var_9ef6c180 = "<unknown string>" + player savegame::function_2ee66e93(#"hash_57be239af33ccdc3", 0);
            var_46e7de58 = player.var_b9da7d3[4];
            if (gender + var_9ef6c180 != var_46e7de58.var_75b1e6b7) {
                var_46e7de58.var_75b1e6b7 = gender + var_9ef6c180;
                var_46e7de58 settext("<unknown string>" + gender + "<unknown string>" + var_9ef6c180 + "<unknown string>");
            }
            var_41d928c1 = function_b6a02677();
            var_3a4e7e97 = "<unknown string>" + player savegame::function_2ee66e93(#"hash_353e9f2516585cdc", 0);
            var_ffd421b = player.var_b9da7d3[5];
            if (var_41d928c1 + var_3a4e7e97 != var_ffd421b.var_75b1e6b7) {
                var_ffd421b.var_75b1e6b7 = var_41d928c1 + var_3a4e7e97;
                var_ffd421b settext("<unknown string>" + var_41d928c1 + "<unknown string>" + var_3a4e7e97 + "<unknown string>");
            }
            var_3f2d7dac = function_c005cf32();
            var_5a4c49ae = player savegame::function_2ee66e93(#"hash_25264c7bd6d77125", "<unknown string>");
            var_9ed75cd6 = player.var_b9da7d3[6];
            if (var_3f2d7dac + var_5a4c49ae != var_9ed75cd6.var_75b1e6b7) {
                var_9ed75cd6.var_75b1e6b7 = var_3f2d7dac + var_5a4c49ae;
                var_9ed75cd6 settext("<unknown string>" + var_3f2d7dac + "<unknown string>" + var_5a4c49ae + "<unknown string>");
            }
            var_2c7fd851 = function_a24493b0();
            var_8d21fbc2 = player savegame::function_2ee66e93(#"hash_2526497bd6d76c0c", "<unknown string>");
            var_52f46486 = player.var_b9da7d3[7];
            if (var_2c7fd851 + var_8d21fbc2 != var_52f46486.var_75b1e6b7) {
                var_52f46486.var_75b1e6b7 = var_2c7fd851 + var_8d21fbc2;
                var_52f46486 settext("<unknown string>" + var_2c7fd851 + "<unknown string>" + var_8d21fbc2 + "<unknown string>");
            }
        }
    }

    // Namespace namespace_70eba6e6/namespace_70eba6e6
    // Params 0, eflags: 0x4
    // Checksum 0x80c865e1, Offset: 0x1188
    // Size: 0xb2
    function private function_9e5a1627() {
        player = self;
        if (isdefined(player.var_b9da7d3)) {
            foreach (elem in player.var_b9da7d3) {
                elem destroy();
            }
            player.var_b9da7d3 = undefined;
        }
    }

    // Namespace namespace_70eba6e6/namespace_70eba6e6
    // Params 1, eflags: 0x4
    // Checksum 0xa7a8fbeb, Offset: 0x1248
    // Size: 0x22c
    function private function_310e0ec3(var_5ecaff57) {
        player = self;
        println("<unknown string>" + var_5ecaff57 + "<unknown string>");
        println("<unknown string>" + player function_9ef5c585() + "<unknown string>");
        println("<unknown string>" + player function_50bca807() + "<unknown string>");
        println("<unknown string>" + player function_d0ce814() + "<unknown string>");
        println("<unknown string>" + player function_e86cb765() + "<unknown string>");
        println("<unknown string>" + player function_33bf99f8() + "<unknown string>");
        println("<unknown string>" + player function_b6a02677() + "<unknown string>");
        println("<unknown string>" + player function_c005cf32() + "<unknown string>");
        println("<unknown string>" + player function_a24493b0() + "<unknown string>");
        println("<unknown string>" + var_5ecaff57 + "<unknown string>");
    }

#/

// Namespace namespace_70eba6e6/namespace_70eba6e6
// Params 0, eflags: 0x6 linked
// Checksum 0x1da41bca, Offset: 0x1480
// Size: 0x8ac
function private function_af62abd5() {
    player = self;
    if (!player function_d4a8b603()) {
        player function_ba2aba1();
    }
    player profile_traits::function_56266435();
    /#
        var_27a3190b = getdvarint(#"hash_562b6e46f7c0d74", 0);
        if (var_27a3190b) {
            var_f5e40a02 = ["<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>"];
            var_d2e296c = ["<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>"];
            level.var_698302a.var_86c1b5e2 = "<unknown string>";
            level.var_698302a.var_dc2904c0 = "<unknown string>";
            var_91fbf14a = getscriptbundle("<unknown string>");
            var_d3a0f3dc = var_91fbf14a.var_bb7dcd09;
            placeofbirthchoice = int(var_d3a0f3dc[randomint(var_d3a0f3dc.size)].identifier);
            level.var_698302a.var_6d4f5e7d = placeofbirthchoice;
            var_748079da = level.var_698302a.var_b24c705f;
            genderchoice = var_748079da[randomint(var_748079da.size)];
            level.var_698302a.var_3f25d9dc = genderchoice;
            if (genderchoice == 1) {
                level.var_698302a.var_86c1b5e2 = var_d2e296c[randomint(var_d2e296c.size)];
            } else {
                level.var_698302a.var_86c1b5e2 = var_f5e40a02[randomint(var_f5e40a02.size)];
            }
            var_8fc144 = level.var_698302a.var_4751b3ae;
            skintonechoice = var_8fc144[randomint(var_8fc144.size)];
            level.var_698302a.var_8ef81ab9 = skintonechoice;
            var_55800dbc = level.var_698302a.var_fec76b21;
            militarybackgroundchoice = var_55800dbc[randomint(var_55800dbc.size)];
            level.var_698302a.var_73c7789b = militarybackgroundchoice;
            var_8145cfce = [];
            var_4b60cd28 = profile_traits::function_979631fd();
            foreach (var_7ada56b4 in var_4b60cd28) {
                var_8145cfce[var_8145cfce.size] = var_7ada56b4.ref_name;
            }
            var_8145cfce[var_8145cfce.size] = "<unknown string>";
            var_f7b0ce98 = randomint(var_8145cfce.size);
            var_dbbfc950 = var_8145cfce[var_f7b0ce98];
            level.var_698302a.var_a47d91bd = var_dbbfc950;
            arrayremoveindex(var_8145cfce, var_f7b0ce98);
            var_8145cfce[var_8145cfce.size] = "<unknown string>";
            var_ef4a31df = randomint(var_8145cfce.size);
            var_b22f761b = var_8145cfce[var_ef4a31df];
            level.var_698302a.var_3b8c60fd = var_b22f761b;
        }
        var_3f25d9dc = getdvarint(#"hash_40e128cba78bd107", -1);
        if (var_3f25d9dc != -1) {
            assert(array::contains(level.var_698302a.var_b24c705f, var_3f25d9dc));
            level.var_698302a.var_3f25d9dc = var_3f25d9dc;
            if (var_27a3190b) {
                if (var_3f25d9dc == 1) {
                    level.var_698302a.var_86c1b5e2 = var_d2e296c[randomint(var_d2e296c.size)];
                } else {
                    level.var_698302a.var_86c1b5e2 = var_f5e40a02[randomint(var_f5e40a02.size)];
                }
            }
        }
        var_8ef81ab9 = getdvarint(#"hash_4a2288c2d7004347", -1);
        if (var_8ef81ab9 != -1) {
            assert(array::contains(level.var_698302a.var_4751b3ae, var_8ef81ab9));
            level.var_698302a.var_8ef81ab9 = var_8ef81ab9;
        }
        var_73c7789b = getdvarint(#"hash_500850d9ea77cbbe", -1);
        if (var_73c7789b != -1) {
            assert(array::contains(level.var_698302a.var_fec76b21, var_73c7789b));
            level.var_698302a.var_73c7789b = var_73c7789b;
        }
        var_a47d91bd = getdvarstring(#"hash_6d7c31e00d2b9c5d", "<unknown string>");
        if (var_a47d91bd != "<unknown string>") {
            if (var_a47d91bd == "<unknown string>") {
                var_a47d91bd = "<unknown string>";
            }
            level.var_698302a.var_a47d91bd = var_a47d91bd;
        }
        var_3b8c60fd = getdvarstring(#"hash_9513d0258b2a742", "<unknown string>");
        if (var_3b8c60fd != "<unknown string>") {
            if (var_3b8c60fd == "<unknown string>") {
                var_3b8c60fd = "<unknown string>";
            }
            level.var_698302a.var_3b8c60fd = var_3b8c60fd;
        }
        player function_310e0ec3("<unknown string>");
    #/
    player thread function_7f5a55bb();
}

// Namespace namespace_70eba6e6/namespace_70eba6e6
// Params 0, eflags: 0x6 linked
// Checksum 0xfd94dab, Offset: 0x1d38
// Size: 0x114
function private function_7f5a55bb() {
    self notify("74ba0adde5a1f3df");
    self endon("74ba0adde5a1f3df");
    player = self;
    globallogic_ui::function_9ed5232e("playerProfileChoices." + "firstName", player function_9ef5c585());
    globallogic_ui::function_9ed5232e("playerProfileChoices." + "lastName", player function_50bca807());
    globallogic_ui::function_9ed5232e("playerProfileChoices." + "militaryBackground", player function_b6a02677());
    player function_a2fd5d34();
    waitframe(1);
    level flag::set(#"hash_60361de05624e591");
}

// Namespace namespace_70eba6e6/namespace_70eba6e6
// Params 0, eflags: 0x6 linked
// Checksum 0xfe4abfc4, Offset: 0x1e58
// Size: 0x274
function private function_a2fd5d34() {
    player = self;
    traits = profile_traits::function_979631fd();
    var_8651d525 = profile_traits::function_3937b542();
    var_75177bd7 = [player function_c005cf32(), player function_a24493b0()];
    for (var_f368f4c7 = 0; var_f368f4c7 < var_75177bd7.size; var_f368f4c7++) {
        var_fb7d23d9 = var_8651d525;
        if (level flag::get("cp_profile_perks_activated")) {
            foreach (var_7ada56b4 in traits) {
                if (var_75177bd7[var_f368f4c7] == var_7ada56b4.ref_name) {
                    var_fb7d23d9 = var_7ada56b4;
                    break;
                }
            }
        }
        globallogic_ui::function_9ed5232e("playerProfileChoices." + "traitsList." + var_f368f4c7 + ".displayName", var_fb7d23d9.display_name);
        globallogic_ui::function_9ed5232e("playerProfileChoices." + "traitsList." + var_f368f4c7 + ".effect", var_fb7d23d9.var_50d366ef);
        globallogic_ui::function_9ed5232e("playerProfileChoices." + "traitsList." + var_f368f4c7 + ".displayIcon", var_fb7d23d9.var_55c1d6d9);
        globallogic_ui::function_9ed5232e("playerProfileChoices." + "traitsList." + var_f368f4c7 + ".displayIcon", var_fb7d23d9.var_af4176bc);
    }
}

// Namespace namespace_70eba6e6/namespace_70eba6e6
// Params 0, eflags: 0x6 linked
// Checksum 0x291f1469, Offset: 0x20d8
// Size: 0x32
function private function_d4a8b603() {
    player = self;
    return player savegame::function_2ee66e93(#"hash_36948672f773e98c", 0);
}

// Namespace namespace_70eba6e6/namespace_70eba6e6
// Params 0, eflags: 0x6 linked
// Checksum 0x2bf155d7, Offset: 0x2118
// Size: 0x284
function private function_ba2aba1() {
    player = self;
    player savegame::set_player_data(#"hash_36948672f773e98c", 1);
    player savegame::set_player_data(#"hash_2895afd5f948f51", 0);
    player savegame::set_player_data(#"hash_3d3a5e4595ae72e3", "");
    player savegame::set_player_data(#"hash_3c708f964c0cdc7d", "");
    player savegame::set_player_data(#"hash_6077f719ce58d931", 0);
    player savegame::set_player_data(#"hash_57be239af33ccdc3", 0);
    player savegame::set_player_data(#"hash_69e7b14384f0405b", 0);
    player savegame::set_player_data(#"hash_353e9f2516585cdc", 0);
    player savegame::set_player_data(#"hash_25264c7bd6d77125", "");
    player savegame::set_player_data(#"hash_2526497bd6d76c0c", "");
    player stats::set_stat(#"hash_56496a50c42322a9", "");
    player stats::set_stat(#"hash_47f2aa02a53a0d57", "");
    player stats::set_stat(#"hash_37a113cbd02390eb", "");
    player stats::set_stat(#"hash_37a114cbd023929e", "");
    player stats::set_stat(#"hash_5a9ce7cd1e0428d8", 0);
    player stats::set_stat(#"hash_74b91965f8d9ed72", 0);
    uploadstats(player);
    player profile_traits::function_56266435();
}

// Namespace namespace_70eba6e6/namespace_70eba6e6
// Params 2, eflags: 0x6 linked
// Checksum 0xc25bc4e0, Offset: 0x23a8
// Size: 0x28c
function private function_cd5334d6(var_8f977acb, profilesubject = "player") {
    player = self;
    if (namespace_61e6d095::exists(#"hash_7f07ebed7e062c01")) {
        assertmsg("<unknown string>");
        return;
    }
    if (var_8f977acb == 0) {
        player function_ba2aba1();
        /#
            function_690435a2();
        #/
    }
    player val::set(#"hash_5423215595996405", "freezecontrols", 1);
    namespace_61e6d095::create(#"hash_7f07ebed7e062c01", #"hash_50b31cab180e98b9");
    namespace_61e6d095::function_28027c42(#"hash_7f07ebed7e062c01", #"hash_7f07ebed7e062c01");
    player function_c7410540(var_8f977acb, profilesubject);
    confirmresponse = level waittill(#"personnel_profile_closed");
    if (is_true(confirmresponse.isconfirmed)) {
        var_b91e212a = var_8f977acb == 0 || var_8f977acb == 2;
        if (var_b91e212a) {
            player function_e4376e3f();
            /#
                function_690435a2();
                player function_310e0ec3("<unknown string>");
            #/
            player thread function_7f5a55bb();
        }
    }
    namespace_61e6d095::remove(#"hash_7f07ebed7e062c01");
    namespace_61e6d095::function_4279fd02(#"hash_7f07ebed7e062c01");
    player val::reset_all(#"hash_5423215595996405");
}

// Namespace namespace_70eba6e6/namespace_70eba6e6
// Params 2, eflags: 0x6 linked
// Checksum 0xc81c573c, Offset: 0x2640
// Size: 0xd8c
function private function_c7410540(var_8f977acb, profilesubject) {
    player = self;
    namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "isFormReadOnly", var_8f977acb == 1 || var_8f977acb == 3 || var_8f977acb == 4);
    namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "doWorldBlur", var_8f977acb != 0);
    namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "profileSubject", profilesubject);
    namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "allowUserCancel", var_8f977acb == 1 || var_8f977acb == 3);
    if (profilesubject == "player") {
        var_395259b3 = function_9ef5c585();
        var_eab7d1bb = function_50bca807();
        var_e3f597b4 = function_d0ce814();
        var_ce0a1f88 = function_33bf99f8(0);
        var_bafffbdb = function_e86cb765(1);
        var_11a94e50 = function_b6a02677();
        var_27c3f84b = function_c005cf32();
        var_2ec808b9 = function_a24493b0();
        namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "firstName", var_395259b3);
        namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "lastName", var_eab7d1bb);
        namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "alias", #"hash_38ced75fbdff9271");
        namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "occupation", #"hash_326ac1d12fe3e93a");
        namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "placeOfBirth", "");
        namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "gender", "");
        namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "skinTone", "");
        namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "militaryBackground", "");
        namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "militaryBackgroundDesc", "");
        namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "psychProfile1", #"");
        namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "psychProfile1Desc", #"");
        namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "psychProfile1Effect", #"");
        namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "psychProfile2", #"");
        namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "psychProfile2Desc", #"");
        namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "psychProfile2Effect", #"");
        namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "psychProfile1Icon", #"hash_43c3c6d2b05b79b5");
        namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "psychProfile2Icon", #"hash_43c3c6d2b05b79b5");
        namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "placeOfBirthChoice", var_e3f597b4);
        namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "genderChoice", var_ce0a1f88);
        namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "skinToneChoice", var_bafffbdb);
        namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "militaryBackgroundChoice", var_11a94e50);
        namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "psychProfile1Choice", var_27c3f84b);
        namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "psychProfile2Choice", var_2ec808b9);
        var_8651d525 = profile_traits::function_3937b542();
        namespace_61e6d095::function_f2a9266(#"hash_7f07ebed7e062c01", 0, "Identifier", 0);
        namespace_61e6d095::function_f2a9266(#"hash_7f07ebed7e062c01", 0, "reference", "");
        namespace_61e6d095::function_f2a9266(#"hash_7f07ebed7e062c01", 0, "displayName", var_8651d525.display_name);
        namespace_61e6d095::function_f2a9266(#"hash_7f07ebed7e062c01", 0, "description", var_8651d525.var_e473fa1e);
        namespace_61e6d095::function_f2a9266(#"hash_7f07ebed7e062c01", 0, "effect", var_8651d525.var_50d366ef);
        namespace_61e6d095::function_f2a9266(#"hash_7f07ebed7e062c01", 0, "type", 1);
        namespace_61e6d095::function_f2a9266(#"hash_7f07ebed7e062c01", 0, "displayIcon", var_8651d525.var_55c1d6d9);
        namespace_61e6d095::function_f2a9266(#"hash_7f07ebed7e062c01", 0, "displayIconBorder", #"");
        traits = profile_traits::function_979631fd();
        for (i = 0; i < traits.size; i++) {
            listindex = i + 1;
            namespace_61e6d095::function_f2a9266(#"hash_7f07ebed7e062c01", listindex, "Identifier", i + 1);
            namespace_61e6d095::function_f2a9266(#"hash_7f07ebed7e062c01", listindex, "reference", traits[i].ref_name);
            namespace_61e6d095::function_f2a9266(#"hash_7f07ebed7e062c01", listindex, "displayName", traits[i].display_name);
            namespace_61e6d095::function_f2a9266(#"hash_7f07ebed7e062c01", listindex, "description", traits[i].var_e473fa1e);
            namespace_61e6d095::function_f2a9266(#"hash_7f07ebed7e062c01", listindex, "effect", traits[i].var_50d366ef);
            namespace_61e6d095::function_f2a9266(#"hash_7f07ebed7e062c01", listindex, "type", 0);
            namespace_61e6d095::function_f2a9266(#"hash_7f07ebed7e062c01", listindex, "displayIcon", traits[i].var_55c1d6d9);
            namespace_61e6d095::function_f2a9266(#"hash_7f07ebed7e062c01", listindex, "displayIconBorder", traits[i].var_af4176bc);
        }
        return;
    }
    var_1659d59a = 0;
    var_1856af9d = getscriptbundle(#"hash_7dc9096275da99d4");
    foreach (var_fdf21313 in var_1856af9d.profiles) {
        if (var_fdf21313.ref_name == profilesubject) {
            var_1659d59a = 1;
            namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "firstName", var_fdf21313.var_34d094eb);
            namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "lastName", var_fdf21313.var_705af76d);
            namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "alias", var_fdf21313.alias);
            namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "placeOfBirth", var_fdf21313.var_d4beb13);
            namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "occupation", var_fdf21313.occupation);
            namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "gender", var_fdf21313.gender);
            namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "skinTone", var_fdf21313.var_ff3aefaf);
            namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "militaryBackground", var_fdf21313.var_bc8da67d);
            namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "militaryBackgroundDesc", var_fdf21313.var_bf761850);
            namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "psychProfile1", var_fdf21313.var_755218ae);
            namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "psychProfile1Desc", var_fdf21313.var_e47799ef);
            namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "psychProfile2", var_fdf21313.var_a06feee9);
            namespace_61e6d095::function_9ade1d9b(#"hash_7f07ebed7e062c01", "psychProfile2Desc", var_fdf21313.var_9c7eba22);
            break;
        }
    }
    assert(var_1659d59a, "<unknown string>" + profilesubject + "<unknown string>");
}

// Namespace namespace_70eba6e6/namespace_70eba6e6
// Params 0, eflags: 0x6 linked
// Checksum 0x72ece63d, Offset: 0x33d8
// Size: 0x43c
function private function_e4376e3f() {
    player = self;
    var_b5987294 = namespace_61e6d095::function_82e355ff(#"hash_7f07ebed7e062c01", "firstName");
    var_6b5bdb53 = namespace_61e6d095::function_82e355ff(#"hash_7f07ebed7e062c01", "lastName");
    placeofbirthchoice = int(namespace_61e6d095::function_82e355ff(#"hash_7f07ebed7e062c01", "placeOfBirthChoice"));
    genderchoice = int(namespace_61e6d095::function_82e355ff(#"hash_7f07ebed7e062c01", "genderChoice"));
    skintonechoice = int(namespace_61e6d095::function_82e355ff(#"hash_7f07ebed7e062c01", "skinToneChoice"));
    militarybackgroundchoice = int(namespace_61e6d095::function_82e355ff(#"hash_7f07ebed7e062c01", "militaryBackgroundChoice"));
    var_dbbfc950 = namespace_61e6d095::function_82e355ff(#"hash_7f07ebed7e062c01", "psychProfile1Choice");
    var_b22f761b = namespace_61e6d095::function_82e355ff(#"hash_7f07ebed7e062c01", "psychProfile2Choice");
    player savegame::set_player_data(#"hash_36948672f773e98c", 1);
    player savegame::set_player_data(#"hash_2895afd5f948f51", 1);
    player savegame::set_player_data(#"hash_3d3a5e4595ae72e3", var_b5987294);
    player savegame::set_player_data(#"hash_3c708f964c0cdc7d", var_6b5bdb53);
    player savegame::set_player_data(#"hash_6077f719ce58d931", placeofbirthchoice);
    player savegame::set_player_data(#"hash_57be239af33ccdc3", genderchoice);
    player savegame::set_player_data(#"hash_69e7b14384f0405b", skintonechoice);
    player savegame::set_player_data(#"hash_353e9f2516585cdc", militarybackgroundchoice);
    player savegame::set_player_data(#"hash_25264c7bd6d77125", var_dbbfc950);
    player savegame::set_player_data(#"hash_2526497bd6d76c0c", var_b22f761b);
    player stats::set_stat(#"hash_56496a50c42322a9", var_b5987294);
    player stats::set_stat(#"hash_47f2aa02a53a0d57", var_6b5bdb53);
    player stats::set_stat(#"hash_37a113cbd02390eb", var_dbbfc950);
    player stats::set_stat(#"hash_37a114cbd023929e", var_b22f761b);
    player stats::set_stat(#"hash_5a9ce7cd1e0428d8", militarybackgroundchoice);
    player stats::set_stat(#"hash_74b91965f8d9ed72", 1);
    uploadstats(player);
    player function_516d14be();
}

// Namespace namespace_70eba6e6/namespace_70eba6e6
// Params 0, eflags: 0x6 linked
// Checksum 0x69a3f7aa, Offset: 0x3820
// Size: 0x9a
function private function_9ef5c585() {
    assert(isplayer(self));
    player = self;
    /#
        if (level.var_698302a.var_86c1b5e2 != "<unknown string>") {
            return level.var_698302a.var_86c1b5e2;
        }
    #/
    return player savegame::function_2ee66e93(#"hash_3d3a5e4595ae72e3", "");
}

// Namespace namespace_70eba6e6/namespace_70eba6e6
// Params 0, eflags: 0x6 linked
// Checksum 0xf8c2b65d, Offset: 0x38c8
// Size: 0x9a
function private function_50bca807() {
    assert(isplayer(self));
    player = self;
    /#
        if (level.var_698302a.var_dc2904c0 != "<unknown string>") {
            return level.var_698302a.var_dc2904c0;
        }
    #/
    return player savegame::function_2ee66e93(#"hash_3c708f964c0cdc7d", "");
}

// Namespace namespace_70eba6e6/namespace_70eba6e6
// Params 0, eflags: 0x6 linked
// Checksum 0xaf431d27, Offset: 0x3970
// Size: 0xa2
function private function_d0ce814() {
    assert(isplayer(self));
    player = self;
    /#
        if (level.var_698302a.var_6d4f5e7d != -1) {
            return level.var_698302a.var_6d4f5e7d;
        }
    #/
    return int(player savegame::function_2ee66e93(#"hash_6077f719ce58d931", 0));
}

// Namespace namespace_70eba6e6/namespace_70eba6e6
// Params 0, eflags: 0x6 linked
// Checksum 0x385c1a2c, Offset: 0x3a20
// Size: 0x9a
function private function_c005cf32() {
    assert(isplayer(self));
    player = self;
    /#
        if (level.var_698302a.var_a47d91bd != "<unknown string>") {
            return level.var_698302a.var_a47d91bd;
        }
    #/
    return savegame::function_2ee66e93(#"hash_25264c7bd6d77125", "");
}

// Namespace namespace_70eba6e6/namespace_70eba6e6
// Params 0, eflags: 0x6 linked
// Checksum 0x91196c38, Offset: 0x3ac8
// Size: 0x9a
function private function_a24493b0() {
    assert(isplayer(self));
    player = self;
    /#
        if (level.var_698302a.var_3b8c60fd != "<unknown string>") {
            return level.var_698302a.var_3b8c60fd;
        }
    #/
    return savegame::function_2ee66e93(#"hash_2526497bd6d76c0c", "");
}

// Namespace namespace_70eba6e6/namespace_70eba6e6
// Params 0, eflags: 0x2 linked
// Checksum 0x5d318c6a, Offset: 0x3b70
// Size: 0x32
function function_8de25d9c() {
    return is_true(savegame::function_2ee66e93(#"hash_2895afd5f948f51"));
}

// Namespace namespace_70eba6e6/namespace_70eba6e6
// Params 0, eflags: 0x2 linked
// Checksum 0x6a1023af, Offset: 0x3bb0
// Size: 0x54
function function_f8bd1258() {
    assert(isplayer(self));
    player = self;
    player function_cd5334d6(0);
}

// Namespace namespace_70eba6e6/namespace_70eba6e6
// Params 2, eflags: 0x2 linked
// Checksum 0x25e43be6, Offset: 0x3c10
// Size: 0xd4
function function_5a4cb86d(editable, allowusercancel) {
    assert(isplayer(self));
    player = self;
    if (is_true(editable)) {
        player function_cd5334d6(2);
        return;
    }
    if (is_true(allowusercancel)) {
        player function_cd5334d6(1);
        return;
    }
    player function_cd5334d6(4);
}

// Namespace namespace_70eba6e6/namespace_70eba6e6
// Params 1, eflags: 0x0
// Checksum 0x2c5c60a7, Offset: 0x3cf0
// Size: 0x5c
function function_e6558603(profilesubject) {
    assert(isplayer(self));
    player = self;
    player function_cd5334d6(3, profilesubject);
}

// Namespace namespace_70eba6e6/namespace_70eba6e6
// Params 0, eflags: 0x2 linked
// Checksum 0xfe273acf, Offset: 0x3d58
// Size: 0x16c
function function_516d14be() {
    assert(isplayer(self));
    player = self;
    player profile_traits::function_56266435();
    var_dbbfc950 = player function_c005cf32();
    if (var_dbbfc950 != "" && var_dbbfc950 != "classified") {
        var_6976a186 = profile_traits::function_d9b59414(var_dbbfc950);
        player profile_traits::function_18198dfb(var_6976a186);
    }
    var_b22f761b = player function_a24493b0();
    if (var_b22f761b != "" && var_b22f761b != "classified") {
        var_6976a186 = profile_traits::function_d9b59414(var_b22f761b);
        player profile_traits::function_18198dfb(var_6976a186);
    }
    level flag::set("cp_profile_perks_activated");
    player thread function_a2fd5d34();
}

// Namespace namespace_70eba6e6/namespace_70eba6e6
// Params 1, eflags: 0x2 linked
// Checksum 0x1eb8035f, Offset: 0x3ed0
// Size: 0x178
function function_33bf99f8(var_cd6e620 = 0) {
    assert(isplayer(self));
    player = self;
    var_ce0a1f88 = int(player savegame::function_2ee66e93(#"hash_57be239af33ccdc3", 0));
    /#
        if (level.var_698302a.var_3f25d9dc != -1) {
            var_ce0a1f88 = level.var_698302a.var_3f25d9dc;
        }
        var_2c1ecd1d = level.var_698302a.var_b24c705f;
        if (!array::contains(var_2c1ecd1d, var_ce0a1f88)) {
            assertmsg("<unknown string>" + var_ce0a1f88);
        }
    #/
    if (var_cd6e620 == 2) {
        if (var_ce0a1f88 == 0 || var_ce0a1f88 == 4) {
            var_ce0a1f88 = 1;
        }
    } else if (var_cd6e620 == 1) {
        if (var_ce0a1f88 == 4) {
            var_ce0a1f88 = 0;
        }
    }
    return var_ce0a1f88;
}

// Namespace namespace_70eba6e6/namespace_70eba6e6
// Params 1, eflags: 0x2 linked
// Checksum 0x21b796bb, Offset: 0x4050
// Size: 0x150
function function_e86cb765(var_5ab66aa) {
    assert(isplayer(self));
    player = self;
    var_20ba2c34 = 0;
    var_bafffbdb = int(player savegame::function_2ee66e93(#"hash_69e7b14384f0405b", var_20ba2c34));
    /#
        if (level.var_698302a.var_8ef81ab9 != -1) {
            var_bafffbdb = level.var_698302a.var_8ef81ab9;
        }
        var_2c1ecd1d = level.var_698302a.var_4751b3ae;
        if (!array::contains(var_2c1ecd1d, var_bafffbdb)) {
            assertmsg("<unknown string>" + var_bafffbdb);
        }
    #/
    if (!is_true(var_5ab66aa) && var_bafffbdb == var_20ba2c34) {
        var_bafffbdb = 1;
    }
    return var_bafffbdb;
}

// Namespace namespace_70eba6e6/namespace_70eba6e6
// Params 0, eflags: 0x2 linked
// Checksum 0x2ed147bf, Offset: 0x41a8
// Size: 0x108
function function_b6a02677() {
    assert(isplayer(self));
    player = self;
    var_8e656c74 = int(player savegame::function_2ee66e93(#"hash_353e9f2516585cdc", 0));
    /#
        if (level.var_698302a.var_73c7789b != -1) {
            var_8e656c74 = level.var_698302a.var_73c7789b;
        }
        var_2c1ecd1d = level.var_698302a.var_fec76b21;
        if (!array::contains(var_2c1ecd1d, var_8e656c74)) {
            assertmsg("<unknown string>" + var_8e656c74);
        }
    #/
    return var_8e656c74;
}

