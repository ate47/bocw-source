// Atian COD Tools GSC CW decompiler test
#using script_4611af4073d18808;
#using script_2c9915120c137848;
#using script_2474a362752098d2;
#using script_77357b2d180aa2b8;
#using script_683a55734f15d50e;
#using script_1a9763988299e68d;
#using script_2a5bf5b4a00cee0d;
#using script_3bbf85ab4cb9f3c2;
#using script_40f967ad5d18ea74;
#using script_3faf478d5b0850fe;
#using script_47851dbeea22fe66;
#using script_164a456ce05c3483;
#using script_4d748e58ce25b60c;
#using script_5f20d3b434d24884;
#using script_774302f762d76254;
#using script_634ae70c663d1cc9;
#using script_6b6510e124bad778;
#using script_1b0b07ff57d1dde3;
#using script_1ee011cd0961afd7;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_17dcb1172e441bf6;
#using script_74a56359b7d02ab6;
#using script_5549681e1669c11a;
#using script_f38dc50f0e82277;
#using script_68cdf0ca5df5e;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\spawning_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_3e8ab514;

// Namespace namespace_3e8ab514
// Method(s) 43 Total 43
class class_744b99c {

    // Namespace class_744b99c/namespace_3e8ab514
    // Params 0, eflags: 0xa linked
    // Checksum 0x29606e44, Offset: 0x6f8
    // Size: 0xce
    __constructor() {
        self.var_be31d6d6 = undefined;
        self.var_af599afa = undefined;
        self.m_name = undefined;
        self.var_45e27b4f = [];
        self.var_dc9b8143 = [];
        self.var_2a0f52f3 = [];
        self.var_7c1b05a1 = undefined;
        self.var_a1fa7529 = [];
        self.var_767ea0af = [];
        self.var_af27fdee = [];
        self.var_6c9ec3e8 = undefined;
        self.var_c7395a06 = undefined;
        self.var_e2a6dd61 = [];
        self.var_3fe6d9f7 = [];
        self.var_da475035 = [];
        self.var_486c1553 = undefined;
        self.var_622da539 = undefined;
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 0, eflags: 0x82 linked class_linked
    // Checksum 0x56984df6, Offset: 0x7d0
    // Size: 0x14
    function __destructor() {
        deactivate();
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 0, eflags: 0x2 linked
    // Checksum 0xa588bf22, Offset: 0x2d30
    // Size: 0xb0
    function function_1137c8bb() {
        objective_setstate(12, "invisible");
        foreach (exit in self.var_45e27b4f) {
            exit clientfield::set("set_icon", 0);
        }
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 0, eflags: 0x2 linked
    // Checksum 0xb470021c, Offset: 0xeb8
    // Size: 0xa
    function function_1e9525b8() {
        return self.var_af599afa;
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 0, eflags: 0x2 linked
    // Checksum 0xa5b2f1bc, Offset: 0x3228
    // Size: 0x34
    function function_226986c2() {
        self waittill(#"deactivate");
        self triggerenable(0);
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 0, eflags: 0x2 linked
    // Checksum 0xce938430, Offset: 0x3268
    // Size: 0x310
    function function_2a41670b() {
        self notify("390c36386c9d7fda");
        self endon("390c36386c9d7fda");
        self endon(#"deactivate");
        if (self.classname === "info_volume") {
            var_e275e943 = struct::get_array(self.target, "targetname");
            /#
                assert(var_e275e943.size);
            #/
            idx = 0;
            while (1) {
                wait(0.25);
                foreach (player in getplayers()) {
                    if (!is_true(player.laststand)) {
                        continue;
                    }
                    if (player istouching(self)) {
                        player setorigin(var_e275e943[idx].origin);
                        waitframe(1);
                        player namespace_83eb6304::function_3ecfde67("lightningStrike");
                        player namespace_e32bb68::function_3a59ec34("evt_doa_lightning_bolt");
                        idx = (idx + 1) % var_e275e943.size;
                    }
                }
            }
        } else {
            self triggerenable(1);
            self thread function_226986c2();
            var_d2820900 = struct::get(self.target, "targetname");
            while (1) {
                result = undefined;
                result = self waittill(#"trigger");
                if (isdefined(result.activator) && is_true(result.activator.laststand)) {
                    result.activator setorigin(var_d2820900.origin);
                    waitframe(1);
                    result.activator namespace_83eb6304::function_3ecfde67("lightningStrike");
                    result.activator namespace_e32bb68::function_3a59ec34("evt_doa_lightning_bolt");
                }
            }
        }
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 1, eflags: 0x2 linked
    // Checksum 0x76a7f25b, Offset: 0x36b8
    // Size: 0x28e
    function function_2c3a3e50(trigger) {
        if (is_true(level.var_8cff5775.var_318aa67a)) {
            return;
        }
        self endon(#"disconnect");
        /#
            assert(trigger.script_noteworthy == "<unknown string>");
        #/
        if (!isdefined(self.var_8cff5775.var_bb4d9604)) {
            self.var_8cff5775.var_bb4d9604 = [];
        } else if (!isarray(self.var_8cff5775.var_bb4d9604)) {
            self.var_8cff5775.var_bb4d9604 = array(self.var_8cff5775.var_bb4d9604);
        }
        self.var_8cff5775.var_bb4d9604[self.var_8cff5775.var_bb4d9604.size] = trigger;
        if (!is_true(self.var_8cff5775.var_3e81d24c)) {
            self thread namespace_a4bedd45::function_1f704cee(1);
        } else {
            self thread namespace_a4bedd45::function_1735c657(1);
        }
        self.var_8cff5775.var_4f3aee7b = 1;
        if (!isdefined(self.var_8cff5775.var_77c540c8)) {
            self.var_8cff5775.var_77c540c8 = 0;
        }
        self.var_8cff5775.var_77c540c8 = 5;
        while (trigger istriggerenabled()) {
            if (self istouching(trigger)) {
                self.var_8cff5775.var_77c540c8 = 5;
            } else {
                self.var_8cff5775.var_77c540c8--;
                if (self.var_8cff5775.var_77c540c8 <= 0) {
                    break;
                }
            }
            wait(0.5);
        }
        self notify(#"hash_7893364bd228d63e", {#var_cff8d1e:1});
        arrayremovevalue(self.var_8cff5775.var_bb4d9604, trigger);
        self.var_8cff5775.var_4f3aee7b = 0;
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 0, eflags: 0x2 linked
    // Checksum 0x72180e32, Offset: 0x29e8
    // Size: 0xa
    function getname() {
        return self.m_name;
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 0, eflags: 0x2 linked
    // Checksum 0xb1cb28f5, Offset: 0x2a18
    // Size: 0x32
    function function_31ca9ed1() {
        /#
            assert(isdefined(self.var_6c9ec3e8));
        #/
        return self.var_6c9ec3e8.var_3061fc9;
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 0, eflags: 0x2 linked
    // Checksum 0x353ae97b, Offset: 0x3950
    // Size: 0x52c
    function function_33300d38() {
        self notify("110d38ab25f2dcd0");
        self endon("110d38ab25f2dcd0");
        self triggerenable(!is_true(self.var_472c86f9));
        result = undefined;
        result = self waittill(#"hash_7626a6770055d63c", #"deactivate", #"trigger");
        self triggerenable(0);
        if (result._notify == "trigger") {
            if (isdefined(level.var_8cff5775.var_6f3d327)) {
                self thread function_33300d38();
                return;
            }
            /#
                assert(isdefined(self.script_noteworthy), "<unknown string>");
            #/
            room = namespace_5a917022::function_c8892b0f(self.script_noteworthy);
            /#
                assert(isdefined(room), "<unknown string>" + self.script_noteworthy);
            #/
            foreach (player in namespace_7f5aeb59::function_23e1f90f()) {
                player notify(#"hash_279998c5df86c04d");
                player notify(#"hash_7893364bd228d63e");
                if (player === result.activator) {
                    continue;
                }
                if (!isalive(player) || is_true(player.var_8cff5775.var_70c50ae0)) {
                    player namespace_7f5aeb59::function_513831e1();
                }
                if (distancesquared(player.origin, result.activator.origin) > function_a3f6cdac(700)) {
                    player setorigin(result.activator.origin + (randomintrange(-40, 40), randomintrange(-40, 40), 0));
                    waitframe(1);
                    player namespace_83eb6304::function_3ecfde67("lightningStrike");
                    player namespace_e32bb68::function_3a59ec34("evt_doa_lightning_bolt");
                }
            }
            self.var_472c86f9 = 1;
            level thread namespace_7f5aeb59::function_67f054d7();
            level waittill(#"hash_1b322de3d2e3e781");
            level thread namespace_5a917022::function_898ca25f(room);
            level waittill(#"hash_7dd47c99b7707b1c");
            var_4200bfbf = struct::get_array(self.target);
            /#
                assert(isdefined(var_4200bfbf) && var_4200bfbf.size >= 4, "<unknown string>");
            #/
            players = namespace_7f5aeb59::function_23e1f90f();
            idx = 0;
            foreach (player in players) {
                player setorigin(var_4200bfbf[idx].origin);
                player setplayerangles(var_4200bfbf[idx].angles);
                player clientfield::increment_to_player("resetCamera");
                idx++;
            }
            wait(1);
            level thread namespace_7f5aeb59::function_836aeb74();
        }
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 6, eflags: 0x2 linked
    // Checksum 0x494e0f44, Offset: 0x28a0
    // Size: 0xe4
    function function_39d2eb74(loc, var_c9d9522c, chance, count, permanent, scale = 1) {
        loc.script_noteworthy = var_c9d9522c;
        loc.chance = chance;
        loc.count = count;
        loc.permanent = permanent;
        loc.activated.loc = 0;
        loc.var_a3192b0f.loc = 0;
        loc.var_82725140.loc = 0;
        loc.scale = scale;
        loc.var_e3d90223.loc = randomint(100) < loc.chance;
        function_d52481d0(loc);
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 0, eflags: 0x2 linked
    // Checksum 0x34439eb0, Offset: 0x2a58
    // Size: 0x32
    function function_39f259cc() {
        /#
            assert(isdefined(self.var_6c9ec3e8));
        #/
        return self.var_6c9ec3e8.var_9045aedc;
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 1, eflags: 0x2 linked
    // Checksum 0xb682499b, Offset: 0x2a98
    // Size: 0x290
    function function_40ee47dc(*section) {
        self notify("17669044dbaf5b6f");
        self endon("17669044dbaf5b6f");
        var_ad142a82 = self;
        if (!isdefined(var_ad142a82)) {
            return;
        }
        var_ad142a82 endon(#"death");
        var_ad142a82.trigger endon(#"death");
        level endon(#"hash_7626a6770055d63c");
        result = undefined;
        result = var_ad142a82.trigger waittill(#"trigger");
        foreach (player in namespace_7f5aeb59::function_23e1f90f()) {
            if (player === result.activator) {
                continue;
            }
            if (!isalive(player) || is_true(player.var_8cff5775.var_70c50ae0)) {
                player namespace_7f5aeb59::function_513831e1();
            }
            player setorigin(var_ad142a82.origin + (randomintrange(-40, 40), randomintrange(-40, 40), 0));
            waitframe(1);
            player namespace_83eb6304::function_3ecfde67("lightningStrike");
            player namespace_e32bb68::function_3a59ec34("evt_doa_lightning_bolt");
        }
        namespace_7f5aeb59::function_f8645db3(getdvarint(#"hash_3ee59243c26b309e", 1750), getdvarint(#"hash_7c5b80d878427a83", 1000));
        level notify(#"hash_7626a6770055d63c");
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 0, eflags: 0x2 linked
    // Checksum 0xa7ce70f9, Offset: 0x1500
    // Size: 0x64
    function function_411b63ca() {
        /#
            assert(isdefined(self.var_6c9ec3e8));
        #/
        if (isdefined(self.var_6c9ec3e8)) {
            self.var_6c9ec3e8.exit.var_ad142a82.trigger notify(#"trigger");
        }
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 1, eflags: 0x2 linked
    // Checksum 0x3a3423f9, Offset: 0x7f0
    // Size: 0x6be
    function initialize(var_96c645bc) {
        self.var_af599afa = var_96c645bc;
        self.m_name = var_96c645bc.script_noteworthy;
        self.var_be31d6d6 = int(var_96c645bc.script_int);
        /#
            assert(isdefined(self.m_name) && isdefined(self.var_be31d6d6), "doa_wild_section_j2_visited");
        #/
        self.var_6c9ec3e8 = undefined;
        self.var_af27fdee = struct::get_array(var_96c645bc.target);
        /#
            assert(self.var_af27fdee.size > 0);
        #/
        foreach (section in self.var_af27fdee) {
            section.id.section = int(section.script_int);
            /#
                assert(isdefined(section.id));
            #/
            section.var_3061fc9.section = 0;
            section.var_9045aedc.section = 1;
            section.playerstarts.section = struct::get_array(section.target);
            /#
                assert(section.playerstarts.size == 4);
            #/
            /#
                assert(isdefined(section.script_string));
            #/
            params = strtok(section.script_string, ";");
            /#
                assert(params.size >= 2);
            #/
            section.var_3061fc9.section = int(params[0]);
            section.var_9045aedc.section = int(params[1]);
            if (params.size > 2) {
                section.exit.section = struct::get(params[2]);
            }
            if (params.size > 3) {
                section.var_b52bc3a8.section = params[3];
            }
        }
        self.var_a1fa7529 = arraycombine(getentarray(self.m_name + "_wild_hazard", "targetname"), struct::get_array(self.m_name + "_wild_hazard", "targetname"));
        self.var_a26d9c0d = getentarray(self.m_name + "_wild_forced_zone", "targetname");
        self.var_767ea0af = getentarray(self.m_name + "_wild_deathWarp", "targetname");
        self.var_2a0f52f3 = struct::get_array(self.m_name + "_wild_dungeons");
        foreach (dungeon in self.var_2a0f52f3) {
            params = strtok(dungeon.script_parameters, ";");
            /#
                assert(params.size == 7, "<unknown string>" + self.m_name + "<unknown string>");
            #/
            dungeon.name.dungeon = params[0];
            dungeon.type.dungeon = params[1];
            dungeon.var_c9569a5c.dungeon = params[2];
            dungeon.var_27264bb4.dungeon = params[3];
            dungeon.var_a69f4ab4.dungeon = params[4];
            dungeon.var_efa6dcc2.dungeon = params[5];
            dungeon.var_7efce95.dungeon = params[6];
            dungeon.var_93ed3009.dungeon = struct::get_array(dungeon.name + "_dungeon_player_exits");
            /#
                assert(dungeon.var_93ed3009.size >= 4, "<unknown string>");
            #/
        }
        self.var_da475035 = getentarray(self.m_name + "_wild_kill_player_vehicle", "targetname");
        self.var_7c1b05a1 = struct::get_array(self.m_name + "_wild_object");
        self.var_c7395a06 = struct::get_array(self.m_name + "_wild_npc");
        self.var_e2a6dd61 = getentarray(self.m_name + "_wild_camera_tweak", "targetname");
        self.var_3fe6d9f7 = getentarray(self.m_name + "_wild_room", "targetname");
        foreach (room in self.var_3fe6d9f7) {
            room.var_472c86f9.room = 0;
        }
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 1, eflags: 0x2 linked
    // Checksum 0xd61dc81a, Offset: 0x1130
    // Size: 0xc0
    function function_464d882c(var_71390dff = 0) {
        foreach (var_4a2d3ac2 in self.var_a1fa7529) {
            if (isdefined(var_4a2d3ac2)) {
                var_4a2d3ac2 notify(#"hash_3e251384a5400dce");
            }
        }
        if (var_71390dff) {
            level notify(#"hash_15db1223146bc923");
        }
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 2, eflags: 0x2 linked
    // Checksum 0x5a875fd9, Offset: 0x2ee0
    // Size: 0xce
    function function_4774f263(type, trigger) {
        self notify("6652f7560bb5c5cf");
        self endon("6652f7560bb5c5cf");
        self endon(#"disconnect");
        self clientfield::set_to_player(type, 32 - 1);
        self.var_4d30576a = trigger;
        while (trigger istriggerenabled() && self istouching(trigger)) {
            waitframe(1);
        }
        self clientfield::set_to_player(type, 0);
        self.var_4d30576a = undefined;
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 0, eflags: 0x2 linked
    // Checksum 0x331c4fb9, Offset: 0x30f8
    // Size: 0x128
    function function_4a266c60() {
        self notify("43967756f0176b62");
        self endon("43967756f0176b62");
        self endon(#"deactivate");
        self triggerenable(1);
        self thread function_53f0be18();
        while (1) {
            result = undefined;
            result = self waittill(#"trigger");
            if (isdefined(result.activator)) {
                if (result.activator.script_noteworthy === self.script_noteworthy || result.activator.targetname === self.script_noteworthy) {
                    result.activator dodamage(result.activator.health, result.activator.origin);
                }
            }
        }
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 0, eflags: 0x2 linked
    // Checksum 0x2b993087, Offset: 0x30b8
    // Size: 0x34
    function function_53f0be18() {
        self waittill(#"deactivate");
        self triggerenable(0);
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 0, eflags: 0x2 linked
    // Checksum 0xfcec0441, Offset: 0x29a8
    // Size: 0x32
    function function_5dfb6d67() {
        /#
            assert(isdefined(self.var_6c9ec3e8));
        #/
        return self.var_6c9ec3e8.playerstarts;
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 1, eflags: 0x2 linked
    // Checksum 0x89495e1f, Offset: 0x11f8
    // Size: 0x94
    function function_60ca2154(id) {
        foreach (section in self.var_af27fdee) {
            if (section.id == id) {
                return section;
            }
        }
        return undefined;
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 0, eflags: 0x2 linked
    // Checksum 0x32d077ad, Offset: 0x2a00
    // Size: 0xa
    function function_660eca7a() {
        return self.var_be31d6d6;
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 1, eflags: 0x2 linked
    // Checksum 0x3a4aeb8c, Offset: 0x1298
    // Size: 0x9c
    function function_70111aa4(id) {
        foreach (section in self.var_af27fdee) {
            if (section.id == id) {
                return section.playerstarts[0];
            }
        }
        return undefined;
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 1, eflags: 0x2 linked
    // Checksum 0x511d0272, Offset: 0x27c8
    // Size: 0x1a
    function function_774497ee(var_34fa8ed5) {
        self.var_622da539 = var_34fa8ed5;
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 0, eflags: 0x2 linked
    // Checksum 0x1b45d084, Offset: 0x13e8
    // Size: 0xa
    function function_7c246362() {
        return self.var_6c9ec3e8;
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 0, eflags: 0x2 linked
    // Checksum 0x3282982, Offset: 0x2ea0
    // Size: 0x34
    function function_82fd5391() {
        self waittill(#"deactivate");
        self triggerenable(0);
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 1, eflags: 0x2 linked
    // Checksum 0x12885ccf, Offset: 0xed0
    // Size: 0xc2
    function function_87f950c1(type) {
        if (!isdefined(type)) {
            return self.var_a1fa7529;
        } else {
            var_f9c9c0 = [];
            foreach (var_4a2d3ac2 in self.var_a1fa7529) {
                if (var_4a2d3ac2.script_noteworthy === type) {
                    var_f9c9c0[var_f9c9c0.size] = var_4a2d3ac2;
                }
            }
            return var_f9c9c0;
        }
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 0, eflags: 0x2 linked
    // Checksum 0x23adbd59, Offset: 0xfa0
    // Size: 0x184
    function function_90de0b96() {
        level thread namespace_268747c0::function_3874b272("explo_barrel");
        level thread namespace_268747c0::function_3874b272("killbox");
        level thread namespace_268747c0::function_3874b272("killzone");
        level thread namespace_268747c0::function_3874b272("pungi");
        level thread namespace_268747c0::function_3874b272("pressureplate");
        level thread namespace_268747c0::function_3874b272("elec_pole");
        level thread namespace_268747c0::function_3874b272("flogger");
        level thread namespace_268747c0::function_3874b272("logdrop");
        level thread namespace_268747c0::function_3874b272("dragonhead");
        level thread namespace_268747c0::function_3874b272("fireball");
        level thread namespace_268747c0::function_3874b272("physicsbox");
        level thread namespace_268747c0::function_3874b272("platform");
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 1, eflags: 0x2 linked
    // Checksum 0xabc8beba, Offset: 0x1400
    // Size: 0xf4
    function function_98a61f4e(section = 0) {
        self.var_6c9ec3e8 = function_60ca2154(section);
        var_ec67aff2 = function_70111aa4(section);
        level thread namespace_ec06fe4a::function_87612422(var_ec67aff2.origin, var_ec67aff2.angles);
        if (isdefined(self.var_6c9ec3e8.exit) && isdefined(self.var_6c9ec3e8.exit.var_ad142a82)) {
            objective_onentity(12, self.var_6c9ec3e8.exit.var_ad142a82);
            objective_setstate(12, "active");
        }
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 0, eflags: 0x2 linked
    // Checksum 0xdfaa08dd, Offset: 0x3580
    // Size: 0x34
    function function_9b22d331() {
        self waittill(#"deactivate");
        self triggerenable(0);
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 0, eflags: 0x2 linked
    // Checksum 0xa959fef7, Offset: 0x35c0
    // Size: 0xf0
    function function_a7380338() {
        self endon(#"deactivate");
        level waittill(#"hash_5c97c4241ba01be4");
        self triggerenable(1);
        self thread function_9b22d331();
        while (1) {
            result = undefined;
            result = self waittill(#"trigger");
            if (isdefined(result.activator)) {
                if (isinarray(result.activator.var_8cff5775.var_bb4d9604, self)) {
                    continue;
                }
                result.activator thread function_2c3a3e50(self);
            }
        }
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 0, eflags: 0x2 linked
    // Checksum 0x3ac90931, Offset: 0x2990
    // Size: 0xa
    function function_a9d5a03d() {
        return self.var_c7395a06;
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 0, eflags: 0x2 linked
    // Checksum 0x8c4754e1, Offset: 0x2238
    // Size: 0x560
    function deactivate() {
        level clientfield::increment("wilddeactivated");
        objective_setstate(12, "invisible");
        function_464d882c(1);
        foreach (zone in self.var_a26d9c0d) {
            if (isdefined(zone)) {
                zone notify(#"deactivate");
            }
        }
        foreach (zone in self.var_767ea0af) {
            if (isdefined(zone)) {
                zone notify(#"deactivate");
            }
        }
        foreach (var_f0ce243e in self.var_e2a6dd61) {
            if (isdefined(var_f0ce243e)) {
                var_f0ce243e notify(#"deactivate");
            }
        }
        foreach (trig in self.var_da475035) {
            if (isdefined(trig)) {
                trig notify(#"deactivate");
            }
        }
        foreach (dungeon in self.var_2a0f52f3) {
            if (isdefined(dungeon.trigger)) {
                dungeon.trigger delete();
            }
        }
        foreach (exit in self.var_45e27b4f) {
            if (isdefined(exit.trigger)) {
                exit.trigger delete();
            }
            if (isdefined(exit)) {
                exit delete();
            }
        }
        self.var_45e27b4f = [];
        foreach (npc in self.var_c7395a06) {
            npc.activated.npc = 0;
            npc.count.npc = isdefined(npc.script_int) ? int(npc.script_int) : 1;
        }
        foreach (room in self.var_3fe6d9f7) {
            if (isdefined(room)) {
                room notify(#"deactivate");
            }
        }
        if (isdefined(self.var_622da539)) {
            level thread [[ self.var_622da539 ]](self.var_6c9ec3e8);
        }
        self.var_6c9ec3e8 = undefined;
        self notify(#"hash_25392c6d0eb63175");
        level notify(#"hash_77e4bcc14697c018");
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 1, eflags: 0x2 linked
    // Checksum 0xf88df70c, Offset: 0x27a0
    // Size: 0x1a
    function function_b6954aba(var_34fa8ed5) {
        self.var_486c1553 = var_34fa8ed5;
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 1, eflags: 0x2 linked
    // Checksum 0x110db2d3, Offset: 0x17d0
    // Size: 0xa60
    function activate(section = 0) {
        namespace_4dae815d::function_21cd3890(4);
        level.var_8cff5775.var_997a0313++;
        level.var_8cff5775.var_8dc464fe = gettime();
        foreach (dungeon in self.var_2a0f52f3) {
            dungeon.trigger.dungeon = namespace_ec06fe4a::function_b5731057("trigger_box", dungeon.origin, 2, dungeon.var_27264bb4, dungeon.var_efa6dcc2, dungeon.var_a69f4ab4);
        }
        function_c4836f01();
        function_98a61f4e(section);
        function_90de0b96();
        foreach (zone in self.var_a26d9c0d) {
            zone thread function_a7380338();
        }
        foreach (zone in self.var_767ea0af) {
            zone thread function_2a41670b();
        }
        foreach (trig in self.var_da475035) {
            trig thread function_4a266c60();
        }
        foreach (loc in self.var_7c1b05a1) {
            loc.chance.loc = 100;
            if (isdefined(loc.script_parameters)) {
                args = strtok(loc.script_parameters, ";");
                if (args.size > 0) {
                    loc.chance.loc = int(args[0]);
                }
                if (args.size > 1) {
                    loc.scale.loc = int(args[1]);
                }
                if (args.size > 2 && loc.script_noteworthy === #"hash_6b07679758a7acc") {
                    loc.parameters.loc = [];
                    for (i = 2; i < args.size; i++) {
                        if (!isdefined(loc.parameters)) {
                            loc.parameters.loc = [];
                        } else if (!isarray(loc.parameters)) {
                            loc.parameters.loc = array(loc.parameters);
                        }
                        loc.parameters[loc.parameters.size] = args[i];
                    }
                }
            }
            if (is_true(level.var_8cff5775.var_318aa67a) && loc.script_noteworthy === "zombietron_firstperson") {
                loc.chance.loc = 0;
            }
            if (loc.script_noteworthy === "zombietron_skeleton_key") {
                loc.chance.loc = loc.chance - 25 * level.var_8cff5775.var_be74bf2c;
                if (loc.chance < 1) {
                    loc.chance.loc = 1;
                }
            }
            loc.var_e3d90223.loc = randomint(100) < loc.chance;
            loc.count.loc = isdefined(loc.script_int) ? int(loc.script_int) : 1;
            loc.activated.loc = 0;
            loc.var_a3192b0f.loc = 0;
            loc.var_82725140.loc = 0;
            loc.permanent.loc = 0;
            if (isdefined(loc.script_noteworthy) && issubstr(loc.script_noteworthy, "world_")) {
                loc.permanent.loc = 1;
            }
        }
        foreach (npc in self.var_c7395a06) {
            npc.activated.npc = 0;
            npc.permanent.npc = 0;
            npc.chance.npc = 100;
            /#
                assert(isdefined(npc.script_parameters));
            #/
            if (isdefined(npc.script_parameters) && isdefined("wild_npc requires script_parameters <type>,[chance],[radius],[permanent],[boss],[notify]")) {
                args = strtok(npc.script_parameters, ";");
                /#
                    assert(args.size > 0, "<unknown string>");
                #/
                if (args.size > 0) {
                    npc.type.npc = args[0];
                }
                if (args.size > 1) {
                    npc.chance.npc = int(args[1]);
                }
                if (args.size > 2) {
                    npc.radius.npc = int(args[2]);
                }
                if (args.size > 3) {
                    npc.permanent.npc = int(args[3]) ? 1 : 0;
                }
                if (args.size > 4) {
                    npc.var_c7121c91.npc = int(args[4]) ? 1 : 0;
                }
                if (args.size > 5) {
                    npc.var_a4c4ac53.npc = args[5];
                }
            }
            npc.var_e3d90223.npc = randomint(100) < npc.chance;
            npc.count.npc = isdefined(npc.script_int) ? int(npc.script_int) : 1;
        }
        foreach (var_f0ce243e in self.var_e2a6dd61) {
            var_f0ce243e thread function_e7bbc8d1();
        }
        foreach (room in self.var_3fe6d9f7) {
            room thread function_33300d38();
        }
        while (!function_6a6f39a2(self.m_name)) {
            waitframe(1);
        }
        if (!isnavvolumeloaded()) {
            var_a82c51e1 = 1;
        }
        level thread namespace_3e8ab514::function_e8146c4c();
        if (isdefined(self.var_486c1553)) {
            level thread [[ self.var_486c1553 ]](self.var_6c9ec3e8);
        }
        level notify(#"hash_62332fcf2ebc16d1");
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 0, eflags: 0x2 linked
    // Checksum 0x4f63d3, Offset: 0x1588
    // Size: 0x240
    function function_c4836f01() {
        foreach (section in self.var_af27fdee) {
            if (isdefined(section.exit)) {
                var_8f38b15f = 1;
                if (isdefined(section.var_b52bc3a8) && level flag::get(section.var_b52bc3a8) == 0) {
                    var_8f38b15f = 0;
                }
                if (var_8f38b15f) {
                    var_b458883a = namespace_ec06fe4a::function_e22ae9b3(section.exit.origin, "zombietron_teleporter");
                    section.exit.var_ad142a82 = var_b458883a;
                    self.var_45e27b4f[self.var_45e27b4f.size] = var_b458883a;
                    var_b458883a namespace_83eb6304::function_3ecfde67("teleporter_dungeon_light");
                    var_b458883a clientfield::set("set_icon", 1);
                    var_b458883a setmodel("zombietron_teleporter");
                    var_b458883a setmovingplatformenabled(1, 1);
                    var_b458883a disconnectpaths();
                    var_b458883a thread namespace_ec06fe4a::function_f506b4c7();
                    var_b458883a.trigger.var_b458883a = namespace_ec06fe4a::function_b5731057("trigger_radius", var_b458883a.origin, 0, 40, 80);
                    var_b458883a thread function_40ee47dc(var_b458883a.var_d1fc07a7);
                }
            }
        }
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 0, eflags: 0x2 linked
    // Checksum 0xa6db65f9, Offset: 0x27f0
    // Size: 0xc
    function function_c547fa0e() {
        return self.var_af27fdee.size;
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 1, eflags: 0x2 linked
    // Checksum 0x80e503cd, Offset: 0x1340
    // Size: 0x9a
    function function_c8fbcc3f(id) {
        foreach (section in self.var_af27fdee) {
            if (section.id == id) {
                return section.var_9045aedc;
            }
        }
        return undefined;
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 0, eflags: 0x2 linked
    // Checksum 0x2d753bbb, Offset: 0x2de8
    // Size: 0xb0
    function function_ce6bb21b() {
        objective_setstate(12, "active");
        foreach (exit in self.var_45e27b4f) {
            exit clientfield::set("set_icon", 1);
        }
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 1, eflags: 0x2 linked
    // Checksum 0xe90a928b, Offset: 0x2820
    // Size: 0x74
    function function_d52481d0(loc) {
        if (!isdefined(self.var_7c1b05a1)) {
            self.var_7c1b05a1 = [];
        } else if (!isarray(self.var_7c1b05a1)) {
            self.var_7c1b05a1 = array(self.var_7c1b05a1);
        }
        self.var_7c1b05a1[self.var_7c1b05a1.size] = loc;
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 0, eflags: 0x2 linked
    // Checksum 0x77d9c8c, Offset: 0x2808
    // Size: 0xa
    function function_d9ad5c49() {
        return self.var_7c1b05a1;
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 0, eflags: 0x2 linked
    // Checksum 0x2d687d70, Offset: 0x2fb8
    // Size: 0xf8
    function function_e7bbc8d1() {
        self notify("2a6b93317e52d0c2");
        self endon("2a6b93317e52d0c2");
        self endon(#"deactivate");
        self triggerenable(1);
        self thread function_82fd5391();
        type = isdefined(self.script_noteworthy) ? self.script_noteworthy : "setCameraDown";
        while (1) {
            result = undefined;
            result = self waittill(#"trigger");
            if (!isdefined(result.activator.var_4d30576a)) {
                result.activator thread function_4774f263(type, self);
            }
        }
    }

    // Namespace namespace_744b99c/namespace_3e8ab514
    // Params 0, eflags: 0x2 linked
    // Checksum 0x67b2b2b9, Offset: 0x1570
    // Size: 0xa
    function function_ef5ade99() {
        return self.var_45e27b4f;
    }

}

// Namespace namespace_3e8ab514/namespace_3e8ab514
// Params 0, eflags: 0x2 linked
// Checksum 0xb018218d, Offset: 0x46c0
// Size: 0xf4
function function_2828aa1() {
    if (isinarray([[ level.var_8cff5775.var_a77e6349 ]]->function_d9ad5c49(), level.var_8cff5775.var_c0036bbd) == 0) {
        loc = level.var_8cff5775.var_c0036bbd;
        loc.chance.loc = 100;
        loc.var_e3d90223.loc = 1;
        loc.count.loc = 1;
        loc.activated.loc = 0;
        loc.var_a3192b0f.loc = 0;
        loc.var_82725140.loc = 0;
        loc.permanent.loc = 1;
        loc.script_string.loc = "arcade_machine1";
        loc.radius.loc = 40;
        [[ level.var_8cff5775.var_a77e6349 ]]->function_d52481d0(loc);
    }
}

// Namespace namespace_3e8ab514/namespace_3e8ab514
// Params 0, eflags: 0x2 linked
// Checksum 0xa7598f20, Offset: 0x47c0
// Size: 0x3e0
function init() {
    clientfield::register("world", "setWild", 1, 2, "int");
    clientfield::register("world", "setWildTOD", 1, 3, "int");
    clientfield::register("world", "setWildSection", 1, 3, "int");
    clientfield::register("world", "wilddeactivated", 1, 1, "counter");
    objective_add(12, "invisible", (0, 0, 0), #"hash_712c19ea98a115ee");
    objective_add(13, "invisible", (0, 0, 0), #"hash_93a5b32fcbc4d3c");
    var_e20c12eb = struct::get_array("zombietron_arcademachine_loc", "targetname");
    level.var_8cff5775.var_c0036bbd = var_e20c12eb[randomint(var_e20c12eb.size)];
    level flag::init("doa_wild_section_j2_visited", 0);
    var_581c8f9a = struct::get_array("doa_wild");
    level.var_8cff5775.var_d7dbacba = [];
    foreach (var_46058269 in var_581c8f9a) {
        var_3d2cc936 = new class_744b99c();
        [[ var_3d2cc936 ]]->initialize(var_46058269);
        level.var_8cff5775.var_d7dbacba[level.var_8cff5775.var_d7dbacba.size] = var_3d2cc936;
        var_663588d = "Zombietron/Wilds/";
        sections = [[ var_3d2cc936 ]]->function_c547fa0e();
        if (sections > 1) {
            for (i = 0; i < sections; i++) {
                cmdline = "scr_wild_activate " + [[ var_3d2cc936 ]]->getname() + "@" + i + "; zombie_devgui wild";
                util::add_devgui(var_663588d + [[ var_3d2cc936 ]]->getname() + "    Section " + i + 1 + ":" + [[ var_3d2cc936 ]]->function_660eca7a(), cmdline);
            }
        } else {
            cmdline = "scr_wild_activate " + [[ var_3d2cc936 ]]->getname() + "; zombie_devgui wild";
            util::add_devgui(var_663588d + [[ var_3d2cc936 ]]->getname() + ":" + [[ var_3d2cc936 ]]->function_660eca7a(), cmdline);
        }
    }
}

// Namespace namespace_3e8ab514/namespace_3e8ab514
// Params 0, eflags: 0x2 linked
// Checksum 0xd97bf9ee, Offset: 0x4ba8
// Size: 0x1ce
function main() {
    level endon(#"game_over");
    level waittill(#"hash_671684f03a58b3a3");
    level clientfield::set("setWild", 2);
    level clientfield::set("setWildSection", 7);
    util::wait_network_frame();
    level clientfield::set("setWildTOD", 2);
    foreach (var_46058269 in level.var_8cff5775.var_d7dbacba) {
        [[ var_46058269 ]]->deactivate();
        [[ var_46058269 ]]->initialize([[ var_46058269 ]]->function_1e9525b8());
    }
    level flag::clear("doa_wild_section_j2_visited");
    level namespace_c85a46fe::function_edfcfa44();
    objective_setstate(12, "invisible");
    objective_setstate(13, "invisible");
    level.var_8cff5775.var_8dc464fe = undefined;
}

// Namespace namespace_3e8ab514/namespace_3e8ab514
// Params 1, eflags: 0x2 linked
// Checksum 0xc741380a, Offset: 0x4d80
// Size: 0x9c
function function_e5e987ae(name) {
    level.var_8cff5775.var_e15152e6 = undefined;
    level.var_8cff5775.var_baeb966b = undefined;
    if (!isdefined(name)) {
        return;
    }
    if (level.var_8cff5775.var_6c58d51 > getdvarint(#"hash_2743236aa9857bee", 0)) {
        return;
    }
    var_46058269 = function_d5e7454f(name);
    if (!isdefined(var_46058269)) {
        return;
    }
    return var_46058269;
}

// Namespace namespace_3e8ab514/namespace_3e8ab514
// Params 2, eflags: 0x2 linked
// Checksum 0xd6c768b1, Offset: 0x4e28
// Size: 0x9b0
function function_7c5bc025(name, section) {
    if (isdefined(level.var_8cff5775.var_a77e6349)) {
        [[ level.var_8cff5775.var_a77e6349 ]]->deactivate();
        level namespace_c85a46fe::function_edfcfa44();
    }
    level.var_8cff5775.var_a77e6349 = function_d5e7454f(name);
    /#
        assert(isdefined(level.var_8cff5775.var_a77e6349), "<unknown string>" + name);
    #/
    [[ level.var_8cff5775.var_a77e6349 ]]->activate(section);
    level.var_8cff5775.var_fc8d8951 = gettime();
    level.var_8cff5775.var_be3ad33f = 0;
    foreach (player in getplayers()) {
        player.var_8cff5775.var_1f5b5d6b = player.var_8cff5775.var_370ac26d;
    }
    namespace_8c04284b::function_a70ff03e([[ level.var_8cff5775.var_a77e6349 ]]->function_31ca9ed1());
    level util::set_lighting_state([[ level.var_8cff5775.var_a77e6349 ]]->function_39f259cc());
    level clientfield::set("setWild", [[ level.var_8cff5775.var_a77e6349 ]]->function_660eca7a());
    level clientfield::set("setWildSection", section);
    foreach (player in getplayers()) {
        player notify(#"hash_279998c5df86c04d");
    }
    util::wait_network_frame();
    level clientfield::set("setWildTOD", [[ level.var_8cff5775.var_a77e6349 ]]->function_39f259cc());
    level namespace_a6ddb172::function_7a0e5387();
    util::wait_network_frame();
    level notify(#"hash_77a8f97f2648672", {#section:section, #name:name});
    level.var_8cff5775.var_3902985f = &function_c6dcd966;
    level.var_8cff5775.var_a71b0305 = &function_a1832a08;
    level thread function_715ea8aa(level.var_8cff5775.var_a77e6349);
    level thread function_3efbdeb3(level.var_8cff5775.var_a77e6349);
    var_ecacf04b = [[ level.var_8cff5775.var_a77e6349 ]]->function_5dfb6d67();
    players = getplayers();
    for (i = 0; i < players.size; i++) {
        spot = var_ecacf04b[i];
        players[i] setorigin(spot.origin + vectorscale((0, 0, 1), 60));
        players[i] setplayerangles(spot.angles);
        players[i].var_8cff5775.var_3cf36932 = 0;
        players[i].var_8cff5775.var_4847bf49 = 0;
        players[i] clientfield::increment_to_player("resetCamera");
        players[i] clientfield::increment_to_player("setCompassVis");
        players[i] namespace_7f5aeb59::function_61d74d57();
    }
    util::wait_network_frame();
    level namespace_7f5aeb59::function_d0251f76(0);
    level thread namespace_c85a46fe::function_782e605e(name);
    level thread namespace_a6056a45::function_de7fb95(name, 1);
    function_2828aa1();
    level notify(#"hash_5c97c4241ba01be4");
    level thread namespace_7f5aeb59::function_836aeb74(4);
    level waittill(#"hash_58caf0ade03043bb");
    level namespace_a6ddb172::function_7a0e5387(14);
    level thread namespace_9fc66ac::announce(59);
    if (isdefined(level.var_8cff5775.var_6b57e2f)) {
        level thread [[ level.var_8cff5775.var_6b57e2f ]](name);
    }
    result = undefined;
    result = level waittill(#"hash_7626a6770055d63c", #"game_over");
    if (result._notify != "game_over") {
        level namespace_c85a46fe::function_edfcfa44();
        namespace_ec06fe4a::function_de70888a();
        banner = isdefined(result.banner) ? result.banner : 15;
        level namespace_a6ddb172::function_7a0e5387(banner);
        if (!isdefined(result.banner)) {
            level thread namespace_9fc66ac::announce(60);
        }
        foreach (player in getplayers()) {
            player giveachievement(#"doa_achievement_escapewild");
            player thread namespace_7f5aeb59::function_bc1f5034(0);
        }
        wait(3.5);
        level thread namespace_7f5aeb59::function_67f054d7(1.5);
        level notify(#"hash_7893364bd228d63e");
        wait(0.5);
        level namespace_a6ddb172::function_7a0e5387();
    }
    level waittill(#"hash_1b322de3d2e3e781");
    if (isdefined(level.var_8cff5775.var_a77e6349)) {
        [[ level.var_8cff5775.var_a77e6349 ]]->deactivate();
    }
    level clientfield::set("banner_eventplayer", 0);
    level namespace_c85a46fe::function_edfcfa44();
    namespace_491fa2b2::function_df55eb9d(0);
    namespace_a6056a45::function_e2f97f03(0);
    namespace_dfc652ee::function_19fa261e();
    namespace_ec06fe4a::function_de70888a();
    level.var_8cff5775.var_2bc99c8d = [];
    level.var_8cff5775.var_a77e6349 = undefined;
    level.var_8cff5775.var_6b57e2f = undefined;
    level.var_8cff5775.var_3902985f = undefined;
    level.var_8cff5775.var_a71b0305 = undefined;
    level.var_8cff5775.var_fc8d8951 = undefined;
    util::wait_network_frame();
    level notify(#"hash_325440d5433be263");
}

// Namespace namespace_3e8ab514/namespace_3e8ab514
// Params 1, eflags: 0x2 linked
// Checksum 0x62810263, Offset: 0x57e0
// Size: 0xa2
function function_d5e7454f(name) {
    foreach (var_46058269 in level.var_8cff5775.var_d7dbacba) {
        if ([[ var_46058269 ]]->getname() === name) {
            return var_46058269;
        }
    }
}

// Namespace namespace_3e8ab514/namespace_3e8ab514
// Params 2, eflags: 0x0
// Checksum 0xc01b184f, Offset: 0x5890
// Size: 0xc4
function function_87922476(name, section) {
    foreach (var_46058269 in level.var_8cff5775.var_d7dbacba) {
        if ([[ var_46058269 ]]->getname() === name && [[ var_46058269 ]]->function_660eca7a() === section) {
            return var_46058269;
        }
    }
}

// Namespace namespace_3e8ab514/namespace_3e8ab514
// Params 1, eflags: 0x2 linked
// Checksum 0x3d44af19, Offset: 0x5960
// Size: 0x76
function function_c6dcd966(item) {
    if (isdefined(item.var_aa1b5d45)) {
        item.var_aa1b5d45.var_82725140++;
        item.var_aa1b5d45.var_e3d90223 = 0;
        if ([[ item.def ]]->gettype() == 14) {
            item.var_aa1b5d45.norespawn = 1;
        }
    }
}

// Namespace namespace_3e8ab514/namespace_3e8ab514
// Params 1, eflags: 0x2 linked
// Checksum 0x70c263cc, Offset: 0x59e0
// Size: 0xba
function function_a1832a08(item) {
    item.var_aa1b5d45.item = level.var_8cff5775.var_aa1b5d45;
    if (isdefined(item.var_aa1b5d45)) {
        item notify(#"hash_2a866f50cc161ca8");
        level.var_8cff5775.var_aa1b5d45.pickups[level.var_8cff5775.var_aa1b5d45.pickups.size] = item;
        level.var_8cff5775.var_aa1b5d45.var_a3192b0f = level.var_8cff5775.var_aa1b5d45.pickups.size;
    }
}

// Namespace namespace_3e8ab514/namespace_3e8ab514
// Params 1, eflags: 0x2 linked
// Checksum 0x51d4c576, Offset: 0x5aa8
// Size: 0x3fa
function spawnitem(item) {
    if (is_true(item.activated)) {
        return;
    }
    item.pickups.item = [];
    item.activated.item = 1;
    level.var_8cff5775.var_aa1b5d45 = item;
    var_e9e24bda = 1600;
    if (is_true(level.var_8cff5775.var_318aa67a)) {
        var_e9e24bda = 2400;
    }
    switch (item.script_noteworthy) {
    case #"hash_717f51c8c82e526c":
        namespace_f63bdb08::function_2a1e5c1f(item.origin, item.angles, item.model, isdefined(item.script_int) ? int(item.script_int) : undefined, isdefined(item.script_objective) ? int(item.script_objective) : undefined, 1, item.script_parameters);
        if (is_true(level.var_8cff5775.var_318aa67a)) {
            var_e9e24bda = 2800;
        }
        break;
    case #"hash_697f800b2db4370e":
        namespace_41f5b853::function_cd388232(item.origin, item.angles, item.script_string, item.radius, 1);
        break;
    case #"hash_708bdcbf801445c6":
        namespace_dfc652ee::function_68442ee7(item.origin, 20, isdefined(item.radius) ? item.radius : 200);
        break;
    case #"hash_6b07679758a7acc":
        /#
            assert(isdefined(item.parameters), "<unknown string>");
        #/
        def = namespace_dfc652ee::function_6265bde4(item.parameters[randomint(item.parameters.size)]);
    case #"hash_defdefdefdefdef0":
        if (!isdefined(def)) {
            def = namespace_dfc652ee::function_6265bde4(item.script_noteworthy);
        }
        if (isdefined(def)) {
            if ([[ def ]]->gettype() == 13) {
                if (item.count > 1) {
                    level namespace_dfc652ee::function_d06cbfe8(item.origin, item.count, 64, 1, def, 1);
                } else {
                    level namespace_dfc652ee::function_b8f6a8cd(def, item.origin, 0, 1, item.scale, item.angles);
                }
            } else {
                level namespace_dfc652ee::function_83aea294(item.origin, item.count, 12, def, undefined, 1);
            }
        }
        break;
    }
    if (!item.permanent) {
        level thread function_612fa49c(item, var_e9e24bda);
    } else {
        item.var_e3d90223.item = 0;
    }
    level.var_8cff5775.var_aa1b5d45 = undefined;
}

// Namespace namespace_3e8ab514/namespace_3e8ab514
// Params 2, eflags: 0x2 linked
// Checksum 0x373e315, Offset: 0x5eb0
// Size: 0x22a
function function_612fa49c(item, distance = 1600) {
    while (item.activated && isdefined(level.var_8cff5775.var_a77e6349)) {
        wait(1);
        players = namespace_7f5aeb59::function_23e1f90f();
        active = 0;
        foreach (player in players) {
            if (distancesquared(item.origin, player.origin) < function_a3f6cdac(distance)) {
                active = 1;
                break;
            }
        }
        item.activated = active;
    }
    remove = 1;
    if (item.var_82725140 == 0) {
        remove = 0;
    }
    if (remove) {
        item.var_e3d90223.item = 0;
    }
    if (isdefined(item.pickups)) {
        arrayremovevalue(item.pickups, undefined);
        foreach (pickup in item.pickups) {
            pickup delete();
        }
    }
    item.pickups.item = [];
}

// Namespace namespace_3e8ab514/namespace_3e8ab514
// Params 1, eflags: 0x2 linked
// Checksum 0x98bf3855, Offset: 0x60e8
// Size: 0x26a
function function_715ea8aa(var_46058269) {
    self notify("24e39a89860f9a00");
    self endon("24e39a89860f9a00");
    level endon(#"hash_325440d5433be263");
    level.var_8cff5775.var_2bc99c8d = [[ var_46058269 ]]->function_d9ad5c49();
    var_429b69c0 = 1200;
    if (is_true(level.var_8cff5775.var_318aa67a)) {
        var_429b69c0 = 2000;
    }
    while (1) {
        players = namespace_7f5aeb59::function_23e1f90f();
        items = [];
        foreach (player in players) {
            items = arraycombine(items, arraysortclosest(level.var_8cff5775.var_2bc99c8d, player.origin, undefined, 0, var_429b69c0));
        }
        foreach (item in items) {
            if (is_true(item.activated)) {
                continue;
            }
            if (!is_true(item.var_e3d90223)) {
                continue;
            }
            if (is_true(item.norespawn)) {
                continue;
            }
            level spawnitem(item);
        }
        wait(1);
    }
}

// Namespace namespace_3e8ab514/namespace_3e8ab514
// Params 2, eflags: 0x0
// Checksum 0x28d7cdaf, Offset: 0x6360
// Size: 0x106
function function_b3585fb7(origin, timeout) {
    self notify("6013f3df1a42b12");
    self endon("6013f3df1a42b12");
    self endon(#"death");
    level thread namespace_1e25ad94::function_b57a9d84(origin, 0, 20, 20, 20, timeout, self isatgoal() ? (0, 1, 0) : (1, 0, 0));
    var_3d92670f = gettime() + timeout * 1000;
    while (gettime() < var_3d92670f) {
        level thread namespace_1e25ad94::debugline(self.origin, origin, 0.05, self haspath() ? (0, 1, 0) : (1, 0, 0));
        waitframe(1);
    }
}

// Namespace namespace_3e8ab514/namespace_3e8ab514
// Params 1, eflags: 0x2 linked
// Checksum 0x41836c6f, Offset: 0x6470
// Size: 0xba
function function_e5488243(npc) {
    mode = "guard";
    if (isdefined(npc.script_string)) {
        mode = npc.script_string;
    }
    switch (mode) {
    case #"none":
        
    case #"patrol":
        break;
    case #"guard":
    case #"hash_defdefdefdefdef0":
        self thread namespace_250e9486::function_e1f7a9a0(npc.radius);
        break;
    }
}

// Namespace namespace_3e8ab514/namespace_3e8ab514
// Params 0, eflags: 0x2 linked
// Checksum 0x8daa9a34, Offset: 0x6538
// Size: 0x230
function function_d81916f4() {
    self notify("3c0a22e5e2de9a90");
    self endon("3c0a22e5e2de9a90");
    level endon(#"game_over", #"hash_77e4bcc14697c018");
    while (self.activated) {
        result = undefined;
        result = self waittill(#"hash_4c72e79bdad8315e");
        namespace_1e25ad94::function_f5f0c0f8("ai_queue_spawned notify recieved for ent:" + result.ai getentitynumber() + " at: " + gettime() + " note typestamp:" + result.time);
        if (isdefined(result.ai) && !isinarray(self.var_2b5ed682, result.ai)) {
            result.ai.boss = isdefined(self.boss) ? self.boss : result.ai.boss;
            result.ai.script_noteworthy = self.script_noteworthy;
            result.ai forceteleport(self.origin, self.angles);
            self.var_2b5ed682[self.var_2b5ed682.size] = result.ai;
            if (isdefined(self.var_a4c4ac53)) {
                level notify(self.var_a4c4ac53, {#ai:result.ai});
            }
            self.count--;
            /#
                assert(self.count >= 0);
            #/
            result.ai.var_d1fac34a = self;
            result.ai thread function_e5488243(self);
        }
    }
}

// Namespace namespace_3e8ab514/namespace_3e8ab514
// Params 1, eflags: 0x2 linked
// Checksum 0x5236e426, Offset: 0x6770
// Size: 0x15e
function function_72405345(npc) {
    profilestart();
    if (isdefined(level.var_8cff5775.var_182fb75a)) {
        profilestop();
        return;
    }
    if (is_true(npc.activated)) {
        profilestop();
        return;
    }
    if (npc.count <= 0) {
        profilestop();
        return;
    }
    npc.var_2b5ed682.npc = [];
    npc.activated.npc = 1;
    if (!isdefined(npc.var_49a15185)) {
        npc.var_49a15185.npc = namespace_ff8b8430::function_d7c5adee(npc.type);
    }
    npc thread function_d81916f4();
    radius = 0;
    if (npc.count > 1) {
        radius = 30;
    }
    namespace_ff8b8430::function_a6b807ea(npc.var_49a15185, npc.count, npc.origin, radius, undefined, undefined, npc);
    if (!npc.permanent) {
        level thread function_7d406bae(npc);
    } else {
        arrayremovevalue(level.var_8cff5775.var_95cc492a, npc);
    }
    profilestop();
}

// Namespace namespace_3e8ab514/namespace_3e8ab514
// Params 2, eflags: 0x2 linked
// Checksum 0x4067ab2a, Offset: 0x68d8
// Size: 0x33c
function function_7d406bae(npc, distance = 2400) {
    level endon(#"game_over");
    while (npc.activated && isdefined(level.var_8cff5775.var_a77e6349)) {
        players = namespace_7f5aeb59::function_23e1f90f();
        active = 0;
        foreach (player in players) {
            if (distancesquared(npc.origin, player.origin) < function_a3f6cdac(distance)) {
                active = 1;
                break;
            }
        }
        npc.activated = active;
        wait(1);
    }
    items = namespace_ff8b8430::function_924423d(npc);
    var_a5a975dd = 0;
    foreach (item in items) {
        var_a5a975dd = var_a5a975dd + item.count;
    }
    arrayremovevalue(npc.var_2b5ed682, undefined);
    npc.count.npc = npc.count + npc.var_2b5ed682.size + var_a5a975dd;
    foreach (guy in npc.var_2b5ed682) {
        if (is_true(guy.boss)) {
            guy thread namespace_ec06fe4a::function_52afe5df();
        } else {
            guy thread namespace_ec06fe4a::function_570729f0(0.1);
        }
    }
    npc.var_2b5ed682.npc = [];
    if (npc.count <= 0) {
        arrayremovevalue(level.var_8cff5775.var_95cc492a, npc);
    }
}

// Namespace namespace_3e8ab514/namespace_3e8ab514
// Params 1, eflags: 0x2 linked
// Checksum 0xea82ff93, Offset: 0x6c20
// Size: 0x25a
function function_3efbdeb3(var_46058269) {
    self notify("241439b55f3fd7a1");
    self endon("241439b55f3fd7a1");
    level endon(#"hash_325440d5433be263");
    level endon(#"game_over");
    level.var_8cff5775.var_95cc492a = [[ var_46058269 ]]->function_a9d5a03d();
    while (1) {
        if (namespace_250e9486::function_60f6a9e() && !isdefined(level.var_8cff5775.var_182fb75a)) {
            players = namespace_7f5aeb59::function_23e1f90f();
            var_f807cf8f = [];
            foreach (player in players) {
                var_f807cf8f = arraycombine(var_f807cf8f, arraysortclosest(level.var_8cff5775.var_95cc492a, player.origin, undefined, 0, 2000));
            }
            foreach (npc in var_f807cf8f) {
                if (is_true(npc.activated)) {
                    continue;
                }
                if (!is_true(npc.var_e3d90223)) {
                    continue;
                }
                level function_72405345(npc);
            }
        }
        wait(1);
    }
}

// Namespace namespace_3e8ab514/namespace_3e8ab514
// Params 0, eflags: 0x2 linked
// Checksum 0xae060c5a, Offset: 0x6e88
// Size: 0x1b0
function function_e8146c4c() {
    level endon(#"hash_325440d5433be263");
    level endon(#"game_over");
    wait(5);
    foreach (player in getplayers()) {
        player namespace_6e90e490::function_55775bbc(12);
    }
    wait(30);
    while (isdefined(level.var_8cff5775.var_6f3d327)) {
        wait(1);
    }
    if (!is_true(level.var_8cff5775.var_318aa67a)) {
        foreach (player in getplayers()) {
            player namespace_6e90e490::function_55775bbc(13);
        }
    }
}

// Namespace namespace_3e8ab514/namespace_3e8ab514
// Params 2, eflags: 0x2 linked
// Checksum 0x8c5956ab, Offset: 0x7040
// Size: 0x11a
function function_271e0d71(name, section) {
    round = 1;
    if (name === "jungle_1") {
        switch (section) {
        case 0:
            round = 4;
            level.var_8cff5775.var_997a0313 = 1;
            break;
        case 1:
            round = 36;
            level.var_8cff5775.var_997a0313 = 3;
            break;
        case 2:
            round = 19;
            level.var_8cff5775.var_997a0313 = 2;
            break;
        case 3:
            round = 60;
            level.var_8cff5775.var_997a0313 = 4;
            break;
        }
    }
    return namespace_8c04284b::function_962e9d92(round);
}
