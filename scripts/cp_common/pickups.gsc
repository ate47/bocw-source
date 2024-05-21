// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\pickups.gsc;
#using scripts\cp_common\util.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\vehicle_death_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\trigger_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\statemachine_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\hud_util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\fx_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace pickups;

// Namespace pickups
// Method(s) 13 Total 38
class class_23a25920 : class_853435cd {

    var var_186525b;
    var var_321c3bc5;
    var var_3698bb1c;
    var var_3bda444c;
    var var_41c57d21;
    var var_6c1960f9;
    var var_72363683;
    var var_7fd12b33;
    var var_9e81b973;
    var var_a96ddb10;
    var var_b0db3a9d;
    var var_b3cb3ff1;
    var var_bbda97e3;
    var var_c83e8d33;
    var var_ca82d1f4;
    var var_cf948829;
    var var_d8751bde;
    var var_e94e55c6;
    var var_f3eb8d5c;
    var var_f4317779;
    var var_f73358be;
    var var_f88b64e8;
    var var_fd6bcf05;

    // Namespace class_23a25920/pickups
    // Params 0, eflags: 0x8
    // Checksum 0xcaf0131b, Offset: 0x230
    // Size: 0xf8
    constructor() {
        var_7fd12b33 = 1;
        var_e94e55c6 = 0;
        var_72363683 = 128;
        var_f73358be = 256;
        var_b0db3a9d = 2;
        var_ca82d1f4 = (0, 0, 0);
        var_3698bb1c = 0;
        var_6c1960f9 = (45, 0, 0);
        var_3bda444c = 64;
        var_cf948829 = 0;
        var_d8751bde = 1;
        var_c83e8d33 = [];
        var_c83e8d33[0] = &function_88076f9a;
        var_b3cb3ff1 = [];
        var_b3cb3ff1[0] = &function_8c7ecbd7;
    }

    // Namespace namespace_23a25920/pickups
    // Params 1, eflags: 0x0
    // Checksum 0xf2abdd3f, Offset: 0x370
    // Size: 0x4c
    function function_20bf54c(str_struct) {
        if (!isdefined(str_struct.angles)) {
            str_struct.angles = (0, 0, 0);
        }
        function_f46949a6(str_struct.origin, str_struct.angles);
    }

    // Namespace namespace_23a25920/pickups
    // Params 2, eflags: 0x0
    // Checksum 0xa9907fcc, Offset: 0x3c8
    // Size: 0x2c
    function function_27f1989f(v_pos, v_angles) {
        function_f46949a6(v_pos, v_angles);
    }

    // Namespace namespace_23a25920/pickups
    // Params 0, eflags: 0x0
    // Checksum 0x43bdef8f, Offset: 0x330
    // Size: 0x32
    function function_5a2eead1() {
        if (isdefined(var_9e81b973)) {
            return var_9e81b973;
        } else if (isdefined(var_f3eb8d5c)) {
            return var_f3eb8d5c;
        }
        return undefined;
    }

    // Namespace namespace_23a25920/pickups
    // Params 0, eflags: 0x0
    // Checksum 0x2558f9a6, Offset: 0x790
    // Size: 0x74
    function function_7596eaba() {
        self endon(#"hash_64239485ac219282");
        if (var_3698bb1c <= 0) {
            return;
        }
        self thread function_fbd26ca4();
        wait(var_3698bb1c);
        if (isdefined(var_f4317779)) {
            [[ var_f4317779 ]]();
            return;
        }
        function_b0bb4753();
    }

    // Namespace namespace_23a25920/pickups
    // Params 1, eflags: 0x0
    // Checksum 0x58075a7a, Offset: 0x910
    // Size: 0x3c
    function function_88076f9a(*e_triggerer) {
        var_f3eb8d5c delete();
        var_41c57d21 setinvisibletoall();
    }

    // Namespace namespace_23a25920/pickups
    // Params 1, eflags: 0x0
    // Checksum 0xf4ed7b21, Offset: 0x958
    // Size: 0x2c
    function function_8c7ecbd7(e_triggerer) {
        function_e4848d8b(e_triggerer.origin, e_triggerer.angles);
    }

    // Namespace namespace_23a25920/pickups
    // Params 0, eflags: 0x0
    // Checksum 0xbb928839, Offset: 0x8c0
    // Size: 0x16
    function function_b0bb4753() {
        self notify(#"hash_6a2c328b1d50aa13");
    }

    // Namespace namespace_23a25920/pickups
    // Params 2, eflags: 0x0
    // Checksum 0xd9ddc407, Offset: 0x4a8
    // Size: 0x2dc
    function function_e4848d8b(v_pos, v_angles) {
        if (!isdefined(var_f3eb8d5c)) {
            var_f3eb8d5c = util::spawn_model(var_bbda97e3, v_pos + (0, 0, var_cf948829), v_angles);
            var_f3eb8d5c notsolid();
            if (isdefined(var_186525b)) {
                playfxontag(var_186525b, var_f3eb8d5c, "tag_origin");
            }
        }
        var_f88b64e8 = "Press and hold ^3[{+activate}]^7 to pick up " + var_321c3bc5;
        if (!isdefined(var_41c57d21)) {
            e_trigger = namespace_853435cd::function_586f4850(v_pos);
            namespace_853435cd::function_da60851e(e_trigger);
        }
        var_41c57d21 setvisibletoall();
        var_41c57d21.origin = v_pos;
        var_41c57d21 notify(#"hash_1e0761873243cc3c");
        var_41c57d21 notify(#"hash_57abab410be3519a", {#is_enabled:1});
        var_41c57d21 sethintstring(var_f88b64e8);
        var_41c57d21.var_e80dc2c9 = var_321c3bc5;
        if (!isdefined(var_41c57d21.targetname)) {
            var_2d30a5c3 = "";
            var_e7ad72f8 = strtok(tolower(var_321c3bc5), " ");
            foreach (n_index, var_ef371c51 in var_e7ad72f8) {
                if (n_index > 0) {
                    var_2d30a5c3 += "_";
                }
                var_2d30a5c3 += var_ef371c51;
            }
            var_41c57d21.targetname = "trigger_" + var_2d30a5c3;
        }
        if (var_d8751bde) {
            self thread namespace_853435cd::function_5bf90f3();
        }
    }

    // Namespace namespace_23a25920/pickups
    // Params 0, eflags: 0x0
    // Checksum 0xd70741a, Offset: 0x8e0
    // Size: 0x28
    function function_eefaf48f() {
        if (var_e94e55c6 > 0) {
            return;
        }
        if (var_7fd12b33 > 0) {
            wait(var_7fd12b33);
        }
    }

    // Namespace namespace_23a25920/pickups
    // Params 2, eflags: 0x0
    // Checksum 0x25e93fb0, Offset: 0x400
    // Size: 0xa0
    function function_f46949a6(v_pos, v_angles) {
        while (true) {
            if (isdefined(var_a96ddb10)) {
                [[ var_a96ddb10 ]](v_pos, v_angles);
            } else {
                var_fd6bcf05 = "Press ^3[{+usereload}]^7 to drop " + var_321c3bc5;
                function_e4848d8b(v_pos, v_angles);
            }
            self waittill(#"hash_6a2c328b1d50aa13");
            function_eefaf48f();
        }
    }

    // Namespace namespace_23a25920/pickups
    // Params 0, eflags: 0x0
    // Checksum 0x60fd3b15, Offset: 0x810
    // Size: 0xa4
    function function_fbd26ca4() {
        self endon(#"hash_64239485ac219282");
        for (n_time_remaining = var_3698bb1c; n_time_remaining >= 0 && isdefined(var_f3eb8d5c); n_time_remaining -= 1) {
            /#
                print3d(var_f3eb8d5c.origin + (0, 0, 15), n_time_remaining, (1, 0, 0), 1, 1, 20);
            #/
            wait(1);
        }
    }

}

// Namespace pickups
// Method(s) 27 Total 27
class class_853435cd {

    var var_1a240798;
    var var_1eebdf18;
    var var_2ee2d618;
    var var_321c3bc5;
    var var_36fa6722;
    var var_3af41bf3;
    var var_3bda444c;
    var var_3eab25d1;
    var var_41c57d21;
    var var_6c1960f9;
    var var_6fb22430;
    var var_9e81b973;
    var var_a97fc12d;
    var var_ab527f4a;
    var var_b3cb3ff1;
    var var_bbda97e3;
    var var_c83e8d33;
    var var_ca82d1f4;
    var var_cb41794b;
    var var_d8751bde;
    var var_dfd92224;
    var var_f579539f;
    var var_f9a3177e;

    // Namespace class_853435cd/pickups
    // Params 0, eflags: 0x8
    // Checksum 0xc7280a6f, Offset: 0x1158
    // Size: 0x82
    constructor() {
        var_1eebdf18 = 1;
        var_6fb22430 = 0;
        var_d8751bde = 0;
        var_a97fc12d = 36;
        var_36fa6722 = 128;
        var_2ee2d618 = 72;
        var_f9a3177e = 128;
        var_3eab25d1 = &function_719839c9;
        var_321c3bc5 = "Item";
    }

    // Namespace namespace_853435cd/pickups
    // Params 0, eflags: 0x0
    // Checksum 0x7cff29c4, Offset: 0x1438
    // Size: 0x1ca
    function function_5bf90f3() {
        self notify(#"hash_6b04c4b346983dcf");
        self endon(#"hash_6b04c4b346983dcf", #"unmake");
        while (true) {
            waitframe(1);
            if (!isdefined(var_41c57d21)) {
                return;
            }
            waitresult = var_41c57d21 waittill(#"trigger");
            e_triggerer = waitresult.activator;
            if (is_true(e_triggerer.var_91430b23)) {
                var_41c57d21 sethintstringforplayer(e_triggerer, "");
                continue;
            }
            if (!var_d8751bde) {
                continue;
            }
            if (is_true(e_triggerer.var_f579539f)) {
                continue;
            }
            if (!e_triggerer util::use_button_held()) {
                continue;
            }
            if (isdefined(var_cb41794b) && ![[ var_cb41794b ]]()) {
                continue;
            }
            if (!isdefined(var_41c57d21)) {
                return;
            }
            if (!e_triggerer istouching(var_41c57d21)) {
                continue;
            }
            if (is_true(e_triggerer.var_91430b23)) {
                continue;
            }
            e_triggerer.var_91430b23 = 1;
            self thread carry(e_triggerer);
            return;
        }
    }

    // Namespace namespace_853435cd/pickups
    // Params 0, eflags: 0x0
    // Checksum 0x2224397d, Offset: 0x1410
    // Size: 0x1e
    function function_1194dc50() {
        var_d8751bde = 0;
        self notify(#"hash_6b04c4b346983dcf");
    }

    // Namespace namespace_853435cd/pickups
    // Params 1, eflags: 0x0
    // Checksum 0xbeb16885, Offset: 0x1610
    // Size: 0x1a4
    function carry(e_triggerer) {
        e_triggerer endon(#"death", #"player_downed");
        e_triggerer.var_bba78ecd = self;
        var_1a240798 = e_triggerer;
        var_41c57d21 notify(#"hash_57abab410be3519a", {#is_enabled:0});
        self notify(#"hash_64239485ac219282");
        e_triggerer val::set(#"pickups", "disable_weapons");
        wait(0.5);
        if (isdefined(var_c83e8d33)) {
            foreach (var_5ec881b0 in var_c83e8d33) {
                self thread [[ var_5ec881b0 ]](e_triggerer);
            }
        } else {
            e_triggerer allowjump(0);
        }
        self thread function_a3eb43fb(e_triggerer);
        self thread function_49a5069c(e_triggerer);
        self thread function_5e3c4ecf(e_triggerer);
    }

    // Namespace namespace_853435cd/pickups
    // Params 0, eflags: 0x0
    // Checksum 0x80c9af30, Offset: 0x17c0
    // Size: 0x14
    function function_38a7d42b() {
        return "Press ^3[{+usereload}]^7 to drop " + var_321c3bc5;
    }

    // Namespace namespace_853435cd/pickups
    // Params 1, eflags: 0x0
    // Checksum 0xd6bdc02f, Offset: 0x18b8
    // Size: 0x3c
    function function_4467e501(player) {
        player notify(#"hash_5cda245aa347c433");
        /#
            player util::function_2e0c1f7d();
        #/
    }

    // Namespace namespace_853435cd/pickups
    // Params 1, eflags: 0x0
    // Checksum 0x9ac6e1b5, Offset: 0x19c0
    // Size: 0x208
    function function_49a5069c(e_triggerer) {
        e_triggerer endon(#"hash_14d9c4d2e5930237", #"death", #"player_downed");
        var_2535acb6 = e_triggerer geteye();
        v_player_angles = e_triggerer getplayerangles();
        v_player_angles += var_6c1960f9;
        v_player_angles = anglestoforward(v_player_angles);
        v_angles = e_triggerer.angles + var_ca82d1f4;
        v_origin = var_2535acb6 + v_player_angles * var_3bda444c;
        if (!isdefined(var_dfd92224)) {
            if (isdefined(var_bbda97e3)) {
                var_dfd92224 = var_bbda97e3;
            } else {
                var_dfd92224 = "script_origin";
            }
        }
        var_9e81b973 = util::spawn_model(var_dfd92224, v_origin, v_angles);
        var_9e81b973 notsolid();
        while (isdefined(var_9e81b973)) {
            var_2535acb6 = e_triggerer geteye();
            v_player_angles = e_triggerer getplayerangles();
            v_player_angles += var_6c1960f9;
            v_player_angles = anglestoforward(v_player_angles);
            var_9e81b973.angles = e_triggerer.angles + var_ca82d1f4;
            var_9e81b973.origin = var_2535acb6 + v_player_angles * var_3bda444c;
            waitframe(1);
        }
    }

    // Namespace namespace_853435cd/pickups
    // Params 1, eflags: 0x0
    // Checksum 0x1522a269, Offset: 0x2040
    // Size: 0x68
    function function_586f4850(v_origin) {
        e_trigger = spawn_interact_trigger(v_origin, var_a97fc12d, var_36fa6722, "");
        e_trigger sethintlowpriority(1);
        return e_trigger;
    }

    // Namespace namespace_853435cd/pickups
    // Params 1, eflags: 0x0
    // Checksum 0xd90a531d, Offset: 0x1900
    // Size: 0xb4
    function function_5e3c4ecf(e_triggerer) {
        e_triggerer endon(#"hash_14d9c4d2e5930237", #"death", #"player_downed");
        self thread drop_on_death(e_triggerer);
        while (e_triggerer usebuttonpressed()) {
            waitframe(1);
        }
        while (!e_triggerer usebuttonpressed()) {
            waitframe(1);
        }
        self thread drop(e_triggerer);
    }

    // Namespace namespace_853435cd/pickups
    // Params 4, eflags: 0x0
    // Checksum 0xda01c4e2, Offset: 0x20b0
    // Size: 0x148
    function spawn_interact_trigger(v_origin, n_radius, n_height, str_hint) {
        assert(isdefined(v_origin), "<unknown string>");
        assert(isdefined(n_radius), "<unknown string>");
        assert(isdefined(n_height), "<unknown string>");
        e_trigger = spawn("trigger_radius", v_origin, 0, n_radius, n_height);
        e_trigger triggerignoreteam();
        e_trigger setvisibletoall();
        e_trigger setteamfortrigger(#"none");
        e_trigger setcursorhint("HINT_NOICON");
        if (isdefined(str_hint)) {
            e_trigger sethintstring(str_hint);
        }
        return e_trigger;
    }

    // Namespace namespace_853435cd/pickups
    // Params 1, eflags: 0x0
    // Checksum 0xc1529397, Offset: 0x1c88
    // Size: 0x124
    function drop(e_triggerer) {
        function_e65686df(e_triggerer);
        /#
            e_triggerer util::function_2e0c1f7d();
        #/
        if (isdefined(var_9e81b973)) {
            var_9e81b973 delete();
        }
        if (isdefined(var_b3cb3ff1)) {
            foreach (drop_func in var_b3cb3ff1) {
                [[ drop_func ]](e_triggerer);
            }
        }
        var_1a240798 = undefined;
        self thread function_5bf90f3();
        e_triggerer thread function_8894d283();
    }

    // Namespace namespace_853435cd/pickups
    // Params 1, eflags: 0x0
    // Checksum 0x7c09a4ea, Offset: 0x1278
    // Size: 0x40
    function function_719839c9(player) {
        self notify(#"hash_1ea37b5a988f7dbe");
        if (isdefined(var_ab527f4a)) {
            self thread [[ var_ab527f4a ]](player);
        }
    }

    // Namespace namespace_853435cd/pickups
    // Params 1, eflags: 0x0
    // Checksum 0x6abb868, Offset: 0x1820
    // Size: 0x90
    function function_7211e953(player) {
        self endon(#"death");
        player endon(#"death", #"hash_5cda245aa347c433");
        while (true) {
            /#
                player util::function_b5d0a39e(function_38a7d42b(), undefined, undefined, 0, 0.35);
            #/
            wait(0.35);
        }
    }

    // Namespace namespace_853435cd/pickups
    // Params 0, eflags: 0x0
    // Checksum 0xeac7b17d, Offset: 0x1ec8
    // Size: 0x56
    function function_8894d283() {
        self endon(#"death", #"disconnect");
        var_f579539f = 1;
        self function_b2724ca6();
        var_f579539f = undefined;
    }

    // Namespace namespace_853435cd/pickups
    // Params 1, eflags: 0x0
    // Checksum 0xed5ce437, Offset: 0x1f68
    // Size: 0x74
    function drop_on_death(e_triggerer) {
        self notify(#"drop_on_death");
        self endon(#"drop_on_death");
        e_triggerer waittill(#"player_downed", #"death");
        if (isdefined(var_1a240798)) {
            drop(e_triggerer);
        }
    }

    // Namespace namespace_853435cd/pickups
    // Params 1, eflags: 0x0
    // Checksum 0x88e2b7a2, Offset: 0x17e0
    // Size: 0x34
    function function_a3eb43fb(player) {
        /#
            player util::function_b5d0a39e(function_38a7d42b());
        #/
    }

    // Namespace namespace_853435cd/pickups
    // Params 0, eflags: 0x0
    // Checksum 0xd5cb9e59, Offset: 0x13e0
    // Size: 0x24
    function function_ab97e447() {
        var_d8751bde = 1;
        self thread function_5bf90f3();
    }

    // Namespace namespace_853435cd/pickups
    // Params 0, eflags: 0x0
    // Checksum 0xccaa5810, Offset: 0x1f28
    // Size: 0x38
    function function_b2724ca6() {
        self endon(#"player_downed");
        while (self usebuttonpressed()) {
            waitframe(1);
        }
    }

    // Namespace namespace_853435cd/pickups
    // Params 1, eflags: 0x0
    // Checksum 0xc6393093, Offset: 0x1db8
    // Size: 0x7e
    function remove(e_triggerer) {
        function_e65686df(e_triggerer);
        /#
            e_triggerer util::function_2e0c1f7d();
        #/
        if (isdefined(var_9e81b973)) {
            var_9e81b973 delete();
        }
        var_1a240798 = undefined;
        self notify(#"hash_6a2c328b1d50aa13");
    }

    // Namespace namespace_853435cd/pickups
    // Params 0, eflags: 0x0
    // Checksum 0x8a067872, Offset: 0x12c0
    // Size: 0xce
    function function_d45dcb98() {
        self endon(#"unmake");
        while (true) {
            waitresult = var_41c57d21 waittill(#"trigger");
            player = waitresult.activator;
            if (is_true(player.var_91430b23) && player.var_bba78ecd.var_321c3bc5 == "Toolbox") {
                [[ player.var_bba78ecd ]]->remove(player);
                [[ var_3eab25d1 ]](player);
            }
            waitframe(1);
        }
    }

    // Namespace namespace_853435cd/pickups
    // Params 0, eflags: 0x0
    // Checksum 0xc6fafb25, Offset: 0x1e40
    // Size: 0x7e
    function destroy() {
        if (isdefined(var_1a240798)) {
            function_e65686df(var_1a240798);
            /#
                var_1a240798 util::function_2e0c1f7d();
            #/
        }
        if (isdefined(var_9e81b973)) {
            var_9e81b973 delete();
        }
        var_1a240798 = undefined;
    }

    // Namespace namespace_853435cd/pickups
    // Params 1, eflags: 0x0
    // Checksum 0x95ca5167, Offset: 0x1398
    // Size: 0x3a
    function function_da60851e(e_trigger) {
        assert(!isdefined(var_41c57d21));
        var_41c57d21 = e_trigger;
    }

    // Namespace namespace_853435cd/pickups
    // Params 1, eflags: 0x0
    // Checksum 0xb09a712e, Offset: 0x1bd0
    // Size: 0xac
    function function_e65686df(e_triggerer) {
        e_triggerer endon(#"death", #"player_downed");
        if (!e_triggerer.var_91430b23) {
            return;
        }
        e_triggerer notify(#"hash_14d9c4d2e5930237");
        e_triggerer val::reset(#"pickups", "disable_weapons");
        e_triggerer.var_91430b23 = 0;
        e_triggerer allowjump(1);
    }

    // Namespace namespace_853435cd/pickups
    // Params 0, eflags: 0x0
    // Checksum 0xf4468caf, Offset: 0x11e8
    // Size: 0xa
    function function_e75b676d() {
        return var_1a240798;
    }

    // Namespace namespace_853435cd/pickups
    // Params 0, eflags: 0x0
    // Checksum 0x5ea82ff5, Offset: 0x1200
    // Size: 0x70
    function function_ee1219b7() {
        if (isdefined(var_3af41bf3)) {
            self thread [[ var_3af41bf3 ]]();
            return;
        }
        while (isdefined(var_41c57d21)) {
            if (!var_1eebdf18) {
                var_41c57d21 sethintstring("Bring Toolbox to repair");
                waitframe(1);
                continue;
            }
            waitframe(1);
        }
    }

    // Namespace namespace_853435cd/pickups
    // Params 1, eflags: 0x0
    // Checksum 0x150557dd, Offset: 0x1fe8
    // Size: 0x4a
    function function_f0b2ddd3(v_origin) {
        var_173e4d21 = spawn_interact_trigger(v_origin, var_2ee2d618, var_f9a3177e, "Bring Toolbox to repair");
        return var_173e4d21;
    }

}

