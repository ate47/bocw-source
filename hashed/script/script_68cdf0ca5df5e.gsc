// Atian COD Tools GSC CW decompiler test
#using script_5133d88c555e460;
#using script_36fc02e86719d0f5;
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
#using script_1b0b07ff57d1dde3;
#using script_1ee011cd0961afd7;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_17dcb1172e441bf6;
#using script_74a56359b7d02ab6;
#using script_5549681e1669c11a;
#using script_f38dc50f0e82277;
#using script_413ab8fe25a61c50;
#using scripts\core_common\lui_shared.gsc;
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

#namespace namespace_8c04284b;

// Namespace namespace_8c04284b
// Method(s) 67 Total 67
class class_f4bf8a8 {

    // Namespace class_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0xa linked
    // Checksum 0xdf77a2f, Offset: 0xc70
    // Size: 0xc2
    __constructor() {
        self.var_81e9b5ca = [];
        self.var_c0023851 = undefined;
        self.var_73ab8b47 = [];
        self.var_486c1553 = undefined;
        self.var_622da539 = undefined;
        self.var_9cd25248 = undefined;
        self.var_2e06f9d4 = 1;
        self.var_961441d1 = 1;
        self.var_24df6bfb = 28;
        self.var_e2a6dd61 = [];
        self.var_5d3a1 = [];
        self.var_bedb7d90 = 5;
        self.var_5e72455f = 10;
        self.var_35760f46 = 0;
        self.var_60821378 = 3;
        self.var_d7b6f39c = [];
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x82 linked class_linked
    // Checksum 0xb61f86ab, Offset: 0xd40
    // Size: 0x98
    function __destructor() {
        foreach (exit in self.var_b198ac5a) {
            if (isdefined(exit.var_f3b82c6d)) {
                exit.var_f3b82c6d delete();
            }
        }
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0x6bf0fb88, Offset: 0x1f60
    // Size: 0xa
    function function_806bba() {
        return self.var_961441d1;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 1, eflags: 0x2 linked
    // Checksum 0x7ef1c5e9, Offset: 0x1f38
    // Size: 0x1a
    function function_1f47a68(val) {
        self.var_961441d1 = val;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0x6eeaf82, Offset: 0x1b90
    // Size: 0x12
    function function_ffcf1d1() {
        return self.var_af599afa.origin;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0x804172f0, Offset: 0x1ea0
    // Size: 0xa
    function function_14b480d1() {
        return self.var_622da539;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 1, eflags: 0x2 linked
    // Checksum 0xab29d2bd, Offset: 0x1ff0
    // Size: 0x1a
    function function_19a90502(val) {
        self.var_60821378 = val;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0x5b6f9e5d, Offset: 0x1dc8
    // Size: 0xa
    function ispaused() {
        return self.var_7c7691d6;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 1, eflags: 0x2 linked
    // Checksum 0x3c271ffa, Offset: 0x2278
    // Size: 0x1d8
    function function_1e4d7a0c(var_4983b208) {
        function_e87bab7b(var_4983b208);
        foreach (spot in self.var_74297693) {
            if (isdefined(spot.mdl)) {
                continue;
            }
            if ((spot.var_4983b208 & var_4983b208) == 0) {
                continue;
            }
            if (isdefined(spot.var_36836fff) && level.var_8cff5775.roundnumber > spot.var_36836fff) {
                continue;
            }
            spot.mdl.spot = namespace_ec06fe4a::function_e22ae9b3(spot.origin, spot.modelname, spot.angles, self.m_name + "_decor_item");
            if (isdefined(spot.mdl)) {
                spot.mdl setscale(spot.scale);
                if (is_true(spot.var_bfbc537c)) {
                    spot.mdl disconnectpaths();
                    spot.mdl solid();
                } else {
                    spot.mdl notsolid();
                }
            }
        }
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 1, eflags: 0x2 linked
    // Checksum 0xdd2593f8, Offset: 0x34f0
    // Size: 0xa0
    function function_20b2a1e4(mask) {
        self endon(#"deactivate");
        while (1) {
            if (level.var_8cff5775.var_ecff3871) {
                self triggerenable((mask & 2) != 0);
            } else {
                self triggerenable((mask & 1) != 0);
            }
            level waittill(#"hash_180d4d3b6b7ea3f3");
        }
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 1, eflags: 0x2 linked
    // Checksum 0xad0328a0, Offset: 0x3d10
    // Size: 0x1a
    function function_20b4ef55(side) {
        return self.var_5d3a1[side].size;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 1, eflags: 0x2 linked
    // Checksum 0xde65e527, Offset: 0x1d40
    // Size: 0x7a
    function function_21d1be3d(side) {
        /#
            assert(isdefined(self.var_63f7cb8f[side]), "glow_blue" + side + "<unknown string>" + self.m_name);
        #/
        return self.var_63f7cb8f[side][randomint(self.var_63f7cb8f[side].size)];
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 2, eflags: 0x2 linked
    // Checksum 0xc0fbe0d4, Offset: 0x1c90
    // Size: 0xa2
    function function_23476287(idx, side) {
        /#
            assert(isdefined(self.var_73c16a24[side]), "glow_blue" + side + "<unknown string>" + self.m_name);
        #/
        /#
            assert(idx < self.var_73c16a24.size, "<unknown string>" + side + "<unknown string>" + self.m_name);
        #/
        return self.var_73c16a24[side][idx];
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 1, eflags: 0x2 linked
    // Checksum 0xa128801e, Offset: 0x26b0
    // Size: 0xc2
    function function_242886d5(type) {
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

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 1, eflags: 0x2 linked
    // Checksum 0x6706e8, Offset: 0x3bc0
    // Size: 0xc6
    function function_25962665(wave) {
        if (!isdefined(self.var_5d3a1[wave.spawn_side])) {
            self.var_5d3a1[wave.spawn_side] = [];
        } else if (!isarray(self.var_5d3a1[wave.spawn_side])) {
            self.var_5d3a1[wave.spawn_side] = array(self.var_5d3a1[wave.spawn_side]);
        }
        self.var_5d3a1[wave.spawn_side][self.var_5d3a1[wave.spawn_side].size] = wave;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0x6a438cf1, Offset: 0x1b30
    // Size: 0xa
    function getname() {
        return self.m_name;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0xf081d230, Offset: 0x1b78
    // Size: 0xa
    function getcenter() {
        return self.var_af599afa;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0x955d4508, Offset: 0x1be8
    // Size: 0xa
    function function_3476ff6d() {
        return self.var_79baa471;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0x32851b70, Offset: 0x1e30
    // Size: 0xa
    function function_3bf5b85d() {
        return self.var_486c1553;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 1, eflags: 0x2 linked
    // Checksum 0x8756c4bf, Offset: 0x1eb8
    // Size: 0x1a
    function function_3e91f789(val) {
        self.var_9cd25248 = val;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 2, eflags: 0x2 linked
    // Checksum 0x5b792262, Offset: 0xde0
    // Size: 0xd44
    function initialize(var_1c139142, index) {
        self.var_af599afa = var_1c139142;
        self.m_name = var_1c139142.script_noteworthy;
        self.var_613b7253 = hash(self.m_name);
        self.var_be31d6d6 = index;
        self.var_b60ab5fd = struct::get_array(self.m_name + "_safe_spot", "targetname");
        self.var_74297693 = struct::get_array(self.m_name + "_decor", "targetname");
        self.var_79baa471 = struct::get_array(self.m_name + "_rise_spot", "targetname");
        self.var_5479b5f3 = struct::get_array(self.m_name + "_pickup", "targetname");
        self.var_a1fa7529 = struct::get_array(self.m_name + "_hazard", "targetname");
        self.var_80292cd = struct::get_array(self.m_name + "_player_spawnpoint", "targetname");
        self.var_73ab8b47 = struct::get_array(self.m_name + "_silverback_spawn", "targetname");
        self.var_b198ac5a = [];
        var_dfb0558b = getentarray(self.m_name + "_doa_exit", "targetname");
        self.var_c0023851 = struct::get(self.m_name + "_wild_spot", "targetname");
        self.var_e2a6dd61 = getentarray(self.m_name + "_camera_tweak", "targetname");
        foreach (exit in var_dfb0558b) {
            self.var_b198ac5a[exit.script_noteworthy] = exit;
        }
        /#
            assert(self.var_b198ac5a.size == 4, "Exit Taken Trigger: ");
        #/
        self.var_63f7cb8f = [];
        self.var_63f7cb8f[#"bottom"] = struct::get_array(self.m_name + "_enemy_spawn_bottom", "targetname");
        self.var_63f7cb8f[#"left"] = struct::get_array(self.m_name + "_enemy_spawn_left", "targetname");
        self.var_63f7cb8f[#"top"] = struct::get_array(self.m_name + "_enemy_spawn_top", "targetname");
        self.var_63f7cb8f[#"right"] = struct::get_array(self.m_name + "_enemy_spawn_right", "targetname");
        foreach (spot in self.var_63f7cb8f[#"bottom"]) {
            spot.origin.spot = namespace_ec06fe4a::function_65ee50ba(spot.origin);
        }
        foreach (spot in self.var_63f7cb8f[#"left"]) {
            spot.origin.spot = namespace_ec06fe4a::function_65ee50ba(spot.origin);
        }
        foreach (spot in self.var_63f7cb8f[#"top"]) {
            spot.origin.spot = namespace_ec06fe4a::function_65ee50ba(spot.origin);
        }
        foreach (spot in self.var_63f7cb8f[#"right"]) {
            spot.origin.spot = namespace_ec06fe4a::function_65ee50ba(spot.origin);
        }
        foreach (spot in self.var_74297693) {
            spot.var_4983b208.spot = 15;
            if (isdefined(spot.script_int)) {
                spot.var_4983b208.spot = int(spot.script_int);
            }
            /#
                assert(spot.var_4983b208 >= 1 && spot.var_4983b208 <= 15);
            #/
            toks = strtok(spot.script_string, ";");
            /#
                assert(toks.size >= 3);
            #/
            spot.modelname.spot = toks[0];
            spot.scale.spot = float(toks[1]);
            spot.var_bfbc537c.spot = int(toks[2]);
            if (toks.size >= 4) {
                spot.var_36836fff.spot = int(toks[3]);
            }
        }
        self.var_73c16a24 = [];
        self.var_73c16a24[#"bottom"] = struct::get_array(self.m_name + "_exit_start_bottom", "targetname");
        self.var_73c16a24[#"left"] = struct::get_array(self.m_name + "_exit_start_left", "targetname");
        self.var_73c16a24[#"top"] = struct::get_array(self.m_name + "_exit_start_top", "targetname");
        self.var_73c16a24[#"right"] = struct::get_array(self.m_name + "_exit_start_right", "targetname");
        self.var_36f9408 = [];
        self.var_36f9408[#"bottom"] = getent(self.m_name + "_blocker_bottom", "targetname");
        self.var_36f9408[#"left"] = getent(self.m_name + "_blocker_left", "targetname");
        self.var_36f9408[#"top"] = getent(self.m_name + "_blocker_top", "targetname");
        self.var_36f9408[#"right"] = getent(self.m_name + "_blocker_right", "targetname");
        self.var_36f9408[#"bottom"].var_e603ff2c = self.var_36f9408[#"bottom"].origin;
        self.var_36f9408[#"left"].var_e603ff2c = self.var_36f9408[#"left"].origin;
        self.var_36f9408[#"top"].var_e603ff2c = self.var_36f9408[#"top"].origin;
        self.var_36f9408[#"right"].var_e603ff2c = self.var_36f9408[#"right"].origin;
        self.var_36f9408[#"bottom"].side = "bottom";
        self.var_36f9408[#"left"].side = "left";
        self.var_36f9408[#"top"].side = "top";
        self.var_36f9408[#"right"].side = "right";
        self.var_5d3a1[#"top"] = [];
        self.var_5d3a1[#"bottom"] = [];
        self.var_5d3a1[#"left"] = [];
        self.var_5d3a1[#"right"] = [];
        self.var_694b395b = getent(self.m_name + "_safezone", "targetname");
        self.var_d7b6f39c = getentarray(self.m_name + "_unsafezone", "targetname");
        self.var_cb3e8eba = getentarray(self.m_name + "_doa_exit", "targetname");
        self.var_7c7691d6 = 0;
        deactivate();
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0x9082942e, Offset: 0x2910
    // Size: 0x84
    function function_464d882c() {
        foreach (var_4a2d3ac2 in self.var_a1fa7529) {
            var_4a2d3ac2 notify(#"hash_3e251384a5400dce");
        }
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 4, eflags: 0x2 linked
    // Checksum 0xa78decff, Offset: 0x3060
    // Size: 0x276
    function function_4774f263(type, trigger, var_6a1dbbf3 = 0, var_fe263624 = 0) {
        self notify("4a076f664a823540");
        self endon("4a076f664a823540");
        self endon(#"disconnect");
        var_6a1dbbf3 = int(var_6a1dbbf3);
        var_425999f6 = int(var_fe263624);
        var_eaa7d704 = 32 - 1;
        var_753de10b = trigger.maxs[var_6a1dbbf3];
        var_974c88c7 = self.maxs[var_fe263624];
        while (isdefined(trigger) && self istouching(trigger) && trigger istriggerenabled()) {
            var_a738da71 = self.origin - trigger.origin;
            var_9fa53333 = rotatepoint(var_a738da71, trigger.angles * -1);
            var_605440f7 = var_9fa53333 + trigger.origin;
            dist2 = abs(trigger.origin[var_fe263624] - var_605440f7[var_fe263624]) - var_974c88c7;
            var_85322688 = 1 - dist2 / var_753de10b;
            var_7ead8893 = int(mapfloat(0, 1, 0, var_eaa7d704, var_85322688));
            self clientfield::set_to_player(type, var_7ead8893);
            util::wait_network_frame();
        }
        self clientfield::set_to_player(type, 0);
        self.var_4d30576a = undefined;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 1, eflags: 0x2 linked
    // Checksum 0x11a8afcf, Offset: 0x1de0
    // Size: 0x1a
    function function_4aca7529(val) {
        self.var_7c7691d6 = val;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0xf708e87f, Offset: 0x2458
    // Size: 0x1a
    function function_51dd0a59() {
        if (!isdefined(self.var_c0023851)) {
            return;
        }
        return self.var_c0023851;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0xd4fe4ef2, Offset: 0x1e60
    // Size: 0xa
    function function_55916d40() {
        return self.var_35760f46;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0x1a50faab, Offset: 0x1bb0
    // Size: 0x2c
    function function_59fc184c() {
        return self.var_79baa471[randomint(self.var_79baa471.size)];
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0xde3fc2a4, Offset: 0x2018
    // Size: 0xa
    function function_62d5e1be() {
        return self.var_60821378;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0xd1eff32a, Offset: 0x2610
    // Size: 0x92
    function function_635991ca() {
        if (self.var_73ab8b47.size) {
            return self.var_73ab8b47[randomint(self.var_73ab8b47.size)];
        }
        sides = array("top", "bottom", "left", "right");
        return function_21d1be3d(sides[randomint(sides.size)]);
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0xe4def41b, Offset: 0x1b60
    // Size: 0xa
    function function_660eca7a() {
        return self.var_be31d6d6;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 1, eflags: 0x2 linked
    // Checksum 0x20219bd6, Offset: 0x1ef8
    // Size: 0x1a
    function function_68400720(val) {
        self.var_2e06f9d4 = val;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 1, eflags: 0x2 linked
    // Checksum 0x2b4fef18, Offset: 0x1f78
    // Size: 0x2e
    function function_6d5262dc(val) {
        if (val > 40) {
            val = 40;
        }
        self.var_24df6bfb = val;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 4, eflags: 0x2 linked
    // Checksum 0x60f0302b, Offset: 0x2518
    // Size: 0xf0
    function function_70fb5745(var_1c154e00, min = 256, max = 512, var_b15b89a7 = 0) {
        if (!isdefined(var_1c154e00)) {
            return self.var_b60ab5fd[randomint(self.var_b60ab5fd.size)];
        } else {
            spots = arraysortclosest(self.var_b60ab5fd, var_1c154e00, undefined, min, max);
            if (var_b15b89a7) {
                return spots[0];
            }
            if (spots.size > 0) {
                return spots[randomint(spots.size)];
            }
            return self.var_af599afa;
        }
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 1, eflags: 0x2 linked
    // Checksum 0x450ce95c, Offset: 0x2f90
    // Size: 0x84
    function function_73ec120c(side) {
        self.var_36f9408[side].origin = self.var_36f9408[side].var_e603ff2c + vectorscale((0, 0, -1), 50000);
        namespace_1e25ad94::function_f5f0c0f8("Moving blocker: " + side + " to origin " + self.var_36f9408[side].origin);
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 1, eflags: 0x2 linked
    // Checksum 0x63af6c44, Offset: 0x1e78
    // Size: 0x1a
    function function_774497ee(var_49983302) {
        self.var_622da539 = var_49983302;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0xf9398f32, Offset: 0x1b48
    // Size: 0xa
    function function_7856fdb6() {
        return self.var_613b7253;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0xd08880f0, Offset: 0x2080
    // Size: 0xa
    function function_786b9d39() {
        return self.var_5e72455f;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 1, eflags: 0x2 linked
    // Checksum 0x6fd5fbd4, Offset: 0x3598
    // Size: 0x132
    function function_7ce9bb97(*deactivate) {
        objective_setstate(10, "invisible");
        foreach (exit in self.var_b198ac5a) {
            exit triggerenable(0);
            exit.enabled.exit = 0;
            namespace_1e25ad94::function_f5f0c0f8("Disabling trigger: " + exit.script_noteworthy);
            if (isdefined(exit.var_f3b82c6d)) {
                exit.var_f3b82c6d namespace_83eb6304::turnofffx("exit_fog_marker");
            }
        }
        level notify(#"hash_69b4bed202ddfa69");
        self.var_81e9b5ca = [];
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0xaf2a25e, Offset: 0x24a8
    // Size: 0xa
    function function_8054e011() {
        return self.var_b60ab5fd;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0xc8433330, Offset: 0x3020
    // Size: 0x34
    function function_82fd5391() {
        self waittill(#"deactivate");
        self triggerenable(0);
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0x41da03fe, Offset: 0x1ee0
    // Size: 0xa
    function function_8a7cec70() {
        return self.var_9cd25248;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0xeda5db43, Offset: 0x3878
    // Size: 0x200
    function function_8bca81f0() {
        self notify("3a1d3e220bd0ab10");
        self endon("3a1d3e220bd0ab10");
        level endon(#"hash_69b4bed202ddfa69");
        wait(1);
        while (1) {
            result = undefined;
            result = self waittilltimeout(10, #"trigger");
            if (result._notify == #"timeout") {
                continue;
            }
            if (isbot(result.activator) || is_true(result.activator.var_c497caa3)) {
                continue;
            }
            break;
        }
        namespace_1e25ad94::function_f5f0c0f8("Exit Taken Trigger: " + self.script_noteworthy);
        foreach (player in namespace_7f5aeb59::function_23e1f90f()) {
            player notify(#"hash_279998c5df86c04d");
            player thread namespace_7f5aeb59::function_bc1f5034();
        }
        result.activator notify(#"hash_658e10e65ed524c0");
        level notify(#"hash_658e10e65ed524c0", {#direction:self.script_noteworthy, #activator:result.activator});
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0xca2cff67, Offset: 0x27c0
    // Size: 0x144
    function function_90de0b96() {
        level thread namespace_268747c0::function_3874b272("explo_barrel");
        level thread namespace_268747c0::function_3874b272("killbox");
        level thread namespace_268747c0::function_3874b272("killzone");
        level thread namespace_268747c0::function_3874b272("pungi");
        level thread namespace_268747c0::function_3874b272("flogger");
        level thread namespace_268747c0::function_3874b272("logdrop");
        level thread namespace_268747c0::function_3874b272("physicsbox");
        level thread namespace_268747c0::function_3874b272("fireball");
        level thread namespace_268747c0::function_3874b272("dragonhead");
        level thread namespace_268747c0::function_3874b272("platform");
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0x737970e9, Offset: 0x1f20
    // Size: 0xa
    function function_9485c2a9() {
        return self.var_2e06f9d4;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 1, eflags: 0x2 linked
    // Checksum 0x2a09a720, Offset: 0x2098
    // Size: 0xb2
    function function_94e37da2(player) {
        foreach (zone in self.var_d7b6f39c) {
            if (player istouching(zone)) {
                return 0;
            }
        }
        return player istouching(self.var_694b395b);
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0xd23de2c5, Offset: 0x2ed0
    // Size: 0xb8
    function function_9f494a87() {
        foreach (blocker in self.var_36f9408) {
            blocker.origin.blocker = blocker.var_e603ff2c;
            namespace_1e25ad94::function_f5f0c0f8("Moving blocker: " + blocker.side + " to origin " + blocker.origin);
        }
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0x592eeb2b, Offset: 0x2780
    // Size: 0x34
    function function_a95693e1() {
        level thread namespace_268747c0::function_3874b272("elec_pole", function_8a7cec70());
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 1, eflags: 0x2 linked
    // Checksum 0xa390f414, Offset: 0x3858
    // Size: 0x18
    function function_aad69885(side) {
        return self.var_b198ac5a[side];
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0x1de5876c, Offset: 0x2c90
    // Size: 0x236
    function deactivate() {
        level notify(#"hash_25b8523c402831e5");
        function_464d882c();
        function_7ce9bb97(1);
        function_9f494a87();
        function_e87bab7b();
        objective_setstate(10, "invisible");
        foreach (exit in self.var_b198ac5a) {
            if (isdefined(exit.var_f3b82c6d)) {
                exit.var_f3b82c6d delete();
            }
        }
        foreach (var_f0ce243e in self.var_e2a6dd61) {
            if (isdefined(var_f0ce243e)) {
                var_f0ce243e notify(#"deactivate");
            }
        }
        self.var_5d3a1[#"top"] = [];
        self.var_5d3a1[#"bottom"] = [];
        self.var_5d3a1[#"left"] = [];
        self.var_5d3a1[#"right"] = [];
        var_ac834eea = function_14b480d1();
        if (isdefined(var_ac834eea)) {
            level thread [[ var_ac834eea ]]();
        }
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0xf0014255, Offset: 0x1e48
    // Size: 0xe
    function function_b2f9e813() {
        self.var_35760f46 = gettime();
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 1, eflags: 0x2 linked
    // Checksum 0x6d3d549a, Offset: 0x1e08
    // Size: 0x1a
    function function_b6954aba(var_e74c8f7) {
        self.var_486c1553 = var_e74c8f7;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0x955f3744, Offset: 0x24c0
    // Size: 0xa
    function function_c0402c8a() {
        return self.var_5479b5f3;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0xa535d7ee, Offset: 0x29a0
    // Size: 0x2e2
    function activate() {
        level clientfield::set_world_uimodel("DOA_GLOBALUIMODEL_ARENANUMBER", function_660eca7a());
        objective_setstate(10, "invisible");
        foreach (exit in self.var_b198ac5a) {
            origin = exit namespace_ec06fe4a::function_65ee50ba(exit.origin, 12);
            if (!isdefined(exit.var_f3b82c6d)) {
                exit.var_f3b82c6d.exit = namespace_ec06fe4a::function_e22ae9b3(origin + vectorscale((0, 0, 1), 16), "tag_origin");
                exit.var_f3b82c6d.targetname = self.m_name + "_exit_" + exit.script_noteworthy;
            }
        }
        foreach (var_f0ce243e in self.var_e2a6dd61) {
            var_f0ce243e thread function_e7bbc8d1();
        }
        function_90de0b96();
        function_7ce9bb97();
        function_9f494a87();
        while (!function_6a6f39a2(self.m_name)) {
            waitframe(1);
        }
        self.var_5d3a1[#"top"] = [];
        self.var_5d3a1[#"bottom"] = [];
        self.var_5d3a1[#"left"] = [];
        self.var_5d3a1[#"right"] = [];
        var_2f0b512f = [[ level.var_8cff5775.var_39e3fa99 ]]->function_3bf5b85d();
        if (isdefined(var_2f0b512f)) {
            level thread [[ var_2f0b512f ]]();
        }
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 1, eflags: 0x2 linked
    // Checksum 0xa79fee56, Offset: 0x36d8
    // Size: 0x15c
    function function_c8300b0e(side) {
        exit = function_aad69885(side);
        function_73ec120c(exit.script_noteworthy);
        exit triggerenable(1);
        exit.enabled.exit = 1;
        namespace_1e25ad94::function_f5f0c0f8("Enabling trigger: " + exit.script_noteworthy);
        exit thread function_8bca81f0();
        exit.var_f3b82c6d namespace_83eb6304::function_3ecfde67("exit_fog_marker");
        exit.var_f3b82c6d namespace_83eb6304::turnofffx("arena_barrier");
        objective_setstate(10, "active");
        objective_onentity(10, exit.var_f3b82c6d);
        objective_setprogress(10, 1);
        self.var_81e9b5ca[self.var_81e9b5ca.size] = exit;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0x950c9712, Offset: 0x1fb0
    // Size: 0x36
    function function_c892290a() {
        return is_true(level.var_8cff5775.hardcoremode) ? 40 : self.var_24df6bfb;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0x6fa49a75, Offset: 0x3a80
    // Size: 0x132
    function function_c9f6682b() {
        if (namespace_ec06fe4a::function_a8975c67()) {
            playsoundatposition(#"hash_2021d3391e72675c", (0, 0, 0));
        }
        profilestart();
        self.var_81e9b5ca = [];
        num = 1;
        var_41629194 = [];
        while (num) {
            side = namespace_8c04284b::function_7802d126();
            if (!isinarray(var_41629194, side)) {
                var_41629194[var_41629194.size] = side;
                num--;
            }
        }
        foreach (side in var_41629194) {
            function_c8300b0e(side);
        }
        profilestop();
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 1, eflags: 0x2 linked
    // Checksum 0x6324b2ca, Offset: 0x2480
    // Size: 0x1a
    function function_cb179d87(set) {
        self.var_c0023851 = set;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0xdd5f8218, Offset: 0x2068
    // Size: 0xa
    function function_cc773c53() {
        return self.var_bedb7d90;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0xafa64527, Offset: 0x3840
    // Size: 0xa
    function function_dfb49846() {
        return self.var_81e9b5ca;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 2, eflags: 0x2 linked
    // Checksum 0x739010e7, Offset: 0x2030
    // Size: 0x2e
    function function_e0de916a(var_cc6976cf, var_fd3fce8b) {
        self.var_bedb7d90 = var_cc6976cf;
        self.var_5e72455f = var_fd3fce8b;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0x54533729, Offset: 0x32e0
    // Size: 0x208
    function function_e7bbc8d1() {
        self endon(#"deactivate");
        self triggerenable(1);
        self thread function_82fd5391();
        type = isdefined(self.script_noteworthy) ? self.script_noteworthy : "setCameraDown";
        if (isdefined(self.script_int)) {
            self thread function_20b2a1e4(int(self.script_int));
        }
        var_6a1dbbf3 = 0;
        var_fe263624 = 0;
        if (isdefined(self.script_parameters)) {
            toks = strtok(self.script_parameters, ";");
            /#
                assert(toks.size >= 2);
            #/
            var_6a1dbbf3 = int(toks[0]);
            var_fe263624 = int(toks[1]);
        }
        self.angles = angleclamp180(self.angles);
        while (1) {
            result = undefined;
            result = self waittill(#"trigger");
            if (isplayer(result.activator) && !isdefined(result.activator.var_4d30576a)) {
                result.activator.var_4d30576a = self;
                result.activator thread function_4774f263(type, self, var_6a1dbbf3, var_fe263624);
            }
        }
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 1, eflags: 0x2 linked
    // Checksum 0xa65b6df, Offset: 0x2158
    // Size: 0x112
    function function_e87bab7b(var_4983b208 = 0) {
        foreach (spot in self.var_74297693) {
            if (!isdefined(spot.mdl)) {
                continue;
            }
            if (spot.var_4983b208 & var_4983b208) {
                continue;
            }
            if (is_true(spot.var_bfbc537c)) {
                spot.mdl connectpaths();
            }
            spot.mdl delete();
            spot.mdl = undefined;
        }
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 1, eflags: 0x2 linked
    // Checksum 0x65492496, Offset: 0x24d8
    // Size: 0x34
    function function_eca91fd8(origin) {
        return arraysort(self.var_b60ab5fd, origin)[self.var_b60ab5fd.size - 1];
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 1, eflags: 0x2 linked
    // Checksum 0xa1991b58, Offset: 0x3c90
    // Size: 0x74
    function function_ee30f092(side) {
        if (function_20b4ef55(side) > 0) {
            wave = self.var_5d3a1[side][0];
            arrayremoveindex(self.var_5d3a1[side], 0);
            return wave;
        }
        return undefined;
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0x75ffaf38, Offset: 0x3d38
    // Size: 0x64
    function function_f231126a() {
        return function_20b4ef55("top") + function_20b4ef55("bottom") + function_20b4ef55("left") + function_20b4ef55("right");
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 1, eflags: 0x2 linked
    // Checksum 0x9801cd94, Offset: 0x1c38
    // Size: 0x50
    function function_fc81ec00(idx) {
        /#
            assert(idx < self.var_80292cd.size, "39087439f10bf314" + self.m_name);
        #/
        return self.var_80292cd[idx];
    }

    // Namespace namespace_f4bf8a8/namespace_8c04284b
    // Params 0, eflags: 0x2 linked
    // Checksum 0x7311882b, Offset: 0x1c00
    // Size: 0x2c
    function function_fdea25f1() {
        return self.var_5479b5f3[randomint(self.var_5479b5f3.size)];
    }

}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 1, eflags: 0x2 linked
// Checksum 0x451e5070, Offset: 0x4a60
// Size: 0xb0
function function_b97739d8(idx = 0) {
    /#
        assert(idx >= 0 && idx < 4);
    #/
    if (idx < 0 || idx > 3) {
        return;
    }
    if (isdefined(level.var_8cff5775.var_39e3fa99)) {
        return [[ level.var_8cff5775.var_39e3fa99 ]]->function_fc81ec00(idx);
    }
    return level.var_8cff5775.var_9c14d513[idx];
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 0, eflags: 0x2 linked
// Checksum 0x6d267f08, Offset: 0x4b18
// Size: 0x3b4
function init() {
    clientfield::register("world", "setArena", 1, 5, "int");
    clientfield::register("world", "setTOD", 1, 3, "int");
    level flag::init("arena_zero_rounds", 0);
    level flag::init("arena_hold_presentation", 0);
    level flag::init("arena_hold_banner_presentation", 0);
    level flag::init("arena_pauseAdvancement", 0);
    level.var_8cff5775.var_422d359d = [];
    level.var_8cff5775.var_7f0b4a69 = 0;
    level.var_8cff5775.var_8f91d36b = 0;
    level.var_8cff5775.var_654a3ea9 = 0;
    level.var_8cff5775.var_23ce73 = 0;
    level.var_8cff5775.var_39459d49 = 0;
    level.var_8cff5775.var_4e554b79 = &function_b97739d8;
    level.var_8cff5775.var_9c14d513 = struct::get_array("island_player_spawnpoint", "targetname");
    var_422d359d = struct::get_array("arena_center", "targetname");
    var_7f6c6c04 = [];
    foreach (arena in var_422d359d) {
        /#
            assert(isdefined(arena.script_parameters), "<unknown string>");
        #/
        args = strtok(arena.script_parameters, ";");
        order = int(args[0]);
        /#
            assert(!isdefined(var_7f6c6c04[order]), "<unknown string>" + arena.script_noteworthy);
        #/
        var_7f6c6c04[order] = arena;
    }
    id = 0;
    for (index = 0; index < 100; index++) {
        if (isdefined(var_7f6c6c04[index])) {
            function_afa7d50a(var_7f6c6c04[index], id);
            id++;
        }
    }
    objective_add(10, "invisible", (0, 0, 0), #"hash_428c6cab9076a611");
    level clientfield::set("setArena", 32 - 1);
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 0, eflags: 0x2 linked
// Checksum 0x47f62135, Offset: 0x4ed8
// Size: 0x7ec
function main() {
    level.var_8cff5775.var_e5ef2ab4 = 0;
    level.var_8cff5775.var_8f91d36b = 0;
    level.var_8cff5775.var_654a3ea9 = 0;
    level.var_8cff5775.var_23ce73 = 0;
    level.var_8cff5775.var_a598a835 = undefined;
    level.var_8cff5775.var_a77e4601 = [];
    level.var_8cff5775.var_39459d49 = 0;
    level.var_8cff5775.var_11623c49 = randomintrange(200, 600);
    level flag::clear("arena_zero_rounds");
    level flag::clear("arena_hold_presentation");
    level flag::clear("arena_hold_banner_presentation");
    function_a70ff03e(0, 1);
    if (level.var_8cff5775.var_422d359d.size == 0) {
        return;
    }
    foreach (arena in level.var_8cff5775.var_422d359d) {
        [[ arena ]]->deactivate();
    }
    level.var_8cff5775.var_39e3fa99 = undefined;
    level endon(#"game_over");
    level waittill(#"hash_671684f03a58b3a3");
    level namespace_a6ddb172::function_7a0e5387();
    waitframe(1);
    if (is_true(level.var_65efe052)) {
        util::wait_network_frame();
        level namespace_a6ddb172::function_7a0e5387(51);
    }
    level.var_8cff5775.var_23fd3659 = 0;
    level clientfield::set("setArena", level.var_8cff5775.var_23fd3659);
    while (1) {
        level thread function_6d6bfe1f(level.var_8cff5775.var_23fd3659);
        result = undefined;
        result = level waittill(#"hash_2fa3a8c87dfbde5c", #"hash_3b78590473351869");
        if (result._notify == "waiting_on_player_exit_teleporterOnly") {
            nextarena = level.var_8cff5775.var_23fd3659 + 1;
            if (nextarena >= level.var_8cff5775.var_422d359d.size) {
                nextarena = 0;
            }
            arena = level.var_8cff5775.var_422d359d[nextarena];
            level thread namespace_ec06fe4a::function_87612422([[ arena ]]->function_ffcf1d1(), undefined, 0.5, 999999);
        }
        result = undefined;
        result = level waittill(#"hash_770d5565510bda45", #"hash_23fda6a40f9f6f6");
        if (result._notify == #"hash_23fda6a40f9f6f6") {
            level thread namespace_3e8ab514::function_7c5bc025(result.param, result.data);
            level waittill(#"hash_325440d5433be263");
            namespace_d2efac9a::function_47498d07(0, 0, 1);
        }
        level namespace_a6ddb172::function_7a0e5387();
        while (flag::get("arena_pauseAdvancement")) {
            waitframe(1);
        }
        level.var_8cff5775.var_23fd3659++;
        /#
            if (getdvarint(#"hash_d874e4e73e9f18") == 4) {
                level.var_8cff5775.var_23fd3659--;
            }
        #/
        if (level.var_8cff5775.var_23fd3659 >= level.var_8cff5775.var_422d359d.size) {
            level.var_8cff5775.var_23fd3659 = 0;
            level.var_8cff5775.var_6c58d51++;
            level.var_8cff5775.var_e5ef2ab4 = 0;
            level.var_8cff5775.var_3e7292fc = math::clamp(100 - level.var_8cff5775.var_6c58d51 * 25, 20, 100);
            foreach (var_94f3b914 in level.var_8cff5775.var_329c97a3) {
                chance = [[ var_94f3b914 ]]->function_17454656();
                chance = math::clamp(chance + level.var_8cff5775.var_6c58d51 * 2, 6, 100);
                [[ var_94f3b914 ]]->function_7edd7727(chance);
            }
        }
        level clientfield::set_world_uimodel("DOA_GLOBALUIMODEL_ARENANUMBER", level.var_8cff5775.var_23fd3659);
        level.var_8cff5775.var_a3e53b88 = 1;
        wait(5);
        if (level.var_8cff5775.var_a5ade8f8 === 0 && level.var_8cff5775.var_6c58d51 > 0) {
            level.var_8cff5775.var_a5ade8f8 = math::clamp(level.var_8cff5775.var_6c58d51 * 8, 0, 40);
        }
        players = getplayers();
        foreach (player in players) {
            player clientfield::increment_to_player("resetCamera");
        }
    }
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 2, eflags: 0x2 linked
// Checksum 0xd6b86358, Offset: 0x56d0
// Size: 0xe4
function function_afa7d50a(var_1c139142, index) {
    arena = new class_f4bf8a8();
    [[ arena ]]->initialize(var_1c139142, index);
    level.var_8cff5775.var_422d359d[[[ arena ]]->function_660eca7a()] = arena;
    var_663588d = "Zombietron/Arenas/";
    cmdline = "scr_arena_activate " + [[ arena ]]->getname() + "; zombie_devgui arena";
    util::add_devgui(var_663588d + [[ arena ]]->getname() + ":" + [[ arena ]]->function_660eca7a(), cmdline);
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 1, eflags: 0x2 linked
// Checksum 0x6ac330f2, Offset: 0x57c0
// Size: 0xb0
function function_a7c5291d(name) {
    foreach (arena in level.var_8cff5775.var_422d359d) {
        if ([[ arena ]]->getname() == name) {
            return [[ arena ]]->function_660eca7a();
        }
    }
    return -1;
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 1, eflags: 0x2 linked
// Checksum 0x739181a9, Offset: 0x5878
// Size: 0xa2
function function_85c7d70e(name) {
    foreach (arena in level.var_8cff5775.var_422d359d) {
        if ([[ arena ]]->getname() == name) {
            return arena;
        }
    }
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 1, eflags: 0x2 linked
// Checksum 0xf4d1ed29, Offset: 0x5928
// Size: 0xac
function function_1ced05a1(id) {
    foreach (arena in level.var_8cff5775.var_422d359d) {
        if ([[ arena ]]->function_660eca7a() == id) {
            return [[ arena ]]->getname();
        }
    }
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 1, eflags: 0x2 linked
// Checksum 0xab7a7626, Offset: 0x59e0
// Size: 0x250
function function_27960a04(var_e1dd1170) {
    /#
        assert(isdefined(level.var_8cff5775.var_422d359d[var_e1dd1170]), "<unknown string>" + var_e1dd1170);
    #/
    level notify(#"hash_66786792448addbf");
    level clientfield::set("setArena", var_e1dd1170);
    level clientfield::set("setTOD", 0);
    level util::set_lighting_state(0, 0);
    level.var_8cff5775.var_a598a835 = undefined;
    util::wait_network_frame();
    level.var_8cff5775.var_39e3fa99 = level.var_8cff5775.var_422d359d[var_e1dd1170];
    [[ level.var_8cff5775.var_39e3fa99 ]]->activate();
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_4aca7529(1);
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_68400720(1);
    level thread namespace_ec06fe4a::function_87612422([[ level.var_8cff5775.var_39e3fa99 ]]->function_ffcf1d1());
    function_8405d534();
    function_a70ff03e(0, 1);
    level util::streamer_wait(undefined, 0, 2);
    namespace_9fc66ac::function_5beeba99();
    namespace_1e25ad94::function_f5f0c0f8("Arena " + var_e1dd1170 + " activated (" + [[ level.var_8cff5775.var_39e3fa99 ]]->getname() + ")");
    level notify(#"hash_2a3cff0bb22ed26d");
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 2, eflags: 0x2 linked
// Checksum 0xeffaec69, Offset: 0x5c38
// Size: 0x1f0
function function_a70ff03e(var_ae63be37 = 0, reset = 0) {
    players = getplayers();
    if (reset) {
        level.var_8cff5775.var_ecff3871 = 0;
        foreach (player in players) {
            if (isdefined(player)) {
                player doa_player::function_a48eea2b(level.var_8cff5775.var_ecff3871, 1);
            }
        }
    } else {
        level.var_8cff5775.var_ecff3871 = var_ae63be37;
        foreach (player in players) {
            if (isdefined(player)) {
                player doa_player::function_a48eea2b(level.var_8cff5775.var_ecff3871);
            }
        }
    }
    level notify(#"hash_180d4d3b6b7ea3f3", {#var_5078f168:level.var_8cff5775.var_ecff3871});
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 1, eflags: 0x2 linked
// Checksum 0x4e516267, Offset: 0x5e30
// Size: 0x32c
function function_8405d534(side) {
    players = namespace_7f5aeb59::function_23e1f90f();
    idx = 0;
    foreach (player in players) {
        player.var_8cff5775.var_3cf36932 = 1;
        if (isdefined(side)) {
            spot = [[ level.var_8cff5775.var_39e3fa99 ]]->function_23476287(idx, side);
            /#
                assert(isdefined(spot), "<unknown string>");
            #/
        } else {
            spot = [[ level.var_8cff5775.var_39e3fa99 ]]->function_fc81ec00(idx);
            /#
                assert(isdefined(spot), "<unknown string>");
            #/
        }
        player notify(#"hash_279998c5df86c04d");
        player setorigin(spot.origin);
        player setplayerangles(spot.angles);
        if (is_true(level.var_8cff5775.var_67d8328d) && isdefined(player.var_8cff5775.var_46b45756)) {
            level thread [[ player.var_8cff5775.var_46b45756 ]](spot.origin + vectorscale((0, 0, 1), 100), player);
        }
        player.var_8cff5775.var_46b45756 = undefined;
        player notify(#"hash_7893364bd228d63e", {#var_cff8d1e:1});
        player namespace_83eb6304::turnofffx("firstPersonMarker");
        player clientfield::increment_to_player("controlBinding");
        player clientfield::increment_to_player("setCompassVis");
        player namespace_7f5aeb59::function_61d74d57();
        player.var_8cff5775.var_9f897c4d = gettime();
        idx++;
    }
    level.var_8cff5775.var_67d8328d = undefined;
    level.var_8cff5775.var_dcbded2 = [];
    level namespace_7f5aeb59::function_d0251f76();
    level thread function_37dc18ca();
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 0, eflags: 0x2 linked
// Checksum 0x89e2898d, Offset: 0x6168
// Size: 0x2b4
function function_37dc18ca() {
    self notify("5037d1e6b45447b3");
    self endon("5037d1e6b45447b3");
    level endon(#"game_over");
    util::wait_network_frame();
    while (1) {
        if (isdefined(level.var_8cff5775.var_39e3fa99)) {
            players = namespace_7f5aeb59::function_23e1f90f();
            foreach (player in players) {
                if (player isinmovemode("ufo", "noclip")) {
                    continue;
                }
                if (isdefined(level.var_8cff5775.var_6f3d327)) {
                    continue;
                }
                if (!is_true(player.var_8cff5775.var_3cf36932)) {
                    continue;
                }
                if (isdefined(level.var_8cff5775.var_a77e6349)) {
                    continue;
                }
                if (![[ level.var_8cff5775.var_39e3fa99 ]]->function_94e37da2(player)) {
                    player notify(#"hash_279998c5df86c04d");
                    spot = [[ level.var_8cff5775.var_39e3fa99 ]]->function_70fb5745(player.origin, 0, 1024, 1);
                    if (!isdefined(spot)) {
                        spot = [[ level.var_8cff5775.var_39e3fa99 ]]->function_70fb5745();
                    }
                    if (isdefined(spot)) {
                        namespace_1e25ad94::function_f5f0c0f8("Safe Zone Monitor teleporting player (" + player.var_8cff5775.color + ") at: " + player.origin + " to a safe spot in (" + [[ level.var_8cff5775.var_39e3fa99 ]]->getname() + ") at :" + spot.origin, 1);
                        player setorigin(spot.origin);
                    }
                }
            }
        }
        wait(0.5);
    }
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 0, eflags: 0x2 linked
// Checksum 0xdbbf294c, Offset: 0x6428
// Size: 0xe4
function function_9f0eb43e() {
    if (is_true(level.var_8cff5775.var_8f710e5d) || level.var_8cff5775.roundnumber > 4 && randomint(100) < 15 || level.var_8cff5775.roundnumber - level.var_8cff5775.var_7f0b4a69 > 7) {
        level thread namespace_58e19d6::function_571bb3ac();
        level.var_8cff5775.var_7f0b4a69 = level.var_8cff5775.roundnumber;
        level thread namespace_9fc66ac::announce(70);
    }
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 0, eflags: 0x2 linked
// Checksum 0x11078fad, Offset: 0x6518
// Size: 0x7c
function function_aad0c9db() {
    level thread function_e1916608();
    level thread function_16902251();
    level thread function_17e79564();
    level thread function_1b42a0bb();
    level thread namespace_ff8b8430::function_7495bd30();
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 1, eflags: 0x2 linked
// Checksum 0x809d2c78, Offset: 0x65a0
// Size: 0xf0
function function_962e9d92(roundnumber) {
    if (roundnumber >= 30 && level.var_8cff5775.var_6c58d51 == 0) {
        return int(1000 + 29 * 100 + (roundnumber - 29) * 50 + level.var_8cff5775.var_997a0313 * (250 + getplayers().size * 250));
    }
    return 1000 + (roundnumber - 1) * 100 + level.var_8cff5775.var_997a0313 * (250 + getplayers().size * 250);
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 1, eflags: 0x2 linked
// Checksum 0x2d55c2c2, Offset: 0x6698
// Size: 0x22
function function_f15b9f04(roundnumber) {
    return 24 + (roundnumber - 1) * 2;
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 2, eflags: 0x2 linked
// Checksum 0x672a4583, Offset: 0x66c8
// Size: 0x1248
function function_6d6bfe1f(var_e1dd1170, rounds = 4) {
    self notify("39087439f10bf314");
    self endon("39087439f10bf314");
    level endon(#"game_over", #"hash_7b68a1d715669022");
    level flag::clear("arena_zero_rounds");
    namespace_4dae815d::function_e22d3978(level.var_8cff5775.roundnumber + 1);
    /#
        assert(var_e1dd1170 != -1, "<unknown string>");
    #/
    namespace_4dae815d::function_21cd3890(0);
    function_a70ff03e(0, 1);
    var_4c9d3462 = 0;
    namespace_ec06fe4a::function_de70888a();
    level.var_8cff5775.var_a3e53b88 = undefined;
    function_27960a04(var_e1dd1170);
    if (is_true(level.var_65efe052)) {
        wait(5);
    }
    level namespace_a6ddb172::function_7a0e5387();
    level.var_65efe052 = undefined;
    level function_aad0c9db();
    var_d0cb8cd4 = gettime();
    var_4a140058 = function_1ced05a1(var_e1dd1170);
    level.var_8cff5775.var_4cfbc260 = rounds;
    var_406866b1 = 0;
    [[ level.var_8cff5775.var_39e3fa99 ]]->function_1e4d7a0c(1);
    while (level.var_8cff5775.var_4cfbc260 > 0) {
        level.var_8cff5775.var_39459d49 = level.var_8cff5775.var_39459d49 + getplayers().size;
        if (getdvarint(#"hash_23f1ebb21fe023b", 3) != 3) {
            level.var_8cff5775.var_6a0340ad = getdvarint(#"hash_23f1ebb21fe023b", 3);
        } else {
            level.var_8cff5775.var_6a0340ad = [[ level.var_8cff5775.var_39e3fa99 ]]->function_62d5e1be();
        }
        level.var_8cff5775.var_46ba1186 = gettime();
        level.var_8cff5775.var_9fcf26ea = 0;
        level.var_8cff5775.var_de939ab7 = 0;
        level.var_8cff5775.var_cde5274e = 0;
        level.var_8cff5775.var_2b4e2465 = 0;
        level.var_8cff5775.var_5de71250 = 0;
        level.var_8cff5775.var_f66b524a = 0;
        level.var_8cff5775.var_aa7fba18 = 0;
        level.var_8cff5775.challengeactive = 0;
        level.var_8cff5775.var_465867b = 0;
        namespace_1e25ad94::function_f5f0c0f8("Arena (" + var_4a140058 + ") round starting at: " + level.var_8cff5775.var_46ba1186 + " RoundNumber: " + level.var_8cff5775.roundnumber + " Rounds Left on this Arena: " + level.var_8cff5775.var_4cfbc260);
        [[ level.var_8cff5775.var_39e3fa99 ]]->function_9f494a87();
        [[ level.var_8cff5775.var_39e3fa99 ]]->function_7ce9bb97();
        [[ level.var_8cff5775.var_39e3fa99 ]]->function_a95693e1();
        wait(1.5);
        util::function_21678f2c(getplayers(), 10000);
        level notify(#"hash_9bcb41ff819f6bc");
        level namespace_7f5aeb59::function_836aeb74();
        function_1eaaceab(level.var_8cff5775.var_5598fe58);
        /#
            assert(level.var_8cff5775.var_5598fe58.size == 0, "<unknown string>");
        #/
        foreach (player in getplayers()) {
            if (isdefined(player.var_8cff5775)) {
                player.var_8cff5775.var_c739e4eb = 0;
            }
        }
        if (namespace_77eccc4f::function_379191c(var_4a140058)) {
            result = undefined;
            result = level waittill(#"hash_145c9457d2598ba");
            level.var_8cff5775.challengeactive = 1;
        }
        switch (level.var_8cff5775.var_6a0340ad) {
        case 1:
            level function_3d25cb06();
            level thread function_81282ad3();
            break;
        case 2:
            level function_3d25cb06();
            level thread function_9e0d71e5();
            break;
        case 3:
            level thread function_7655afe();
            break;
        case #"hash_defdefdefdefdef0":
            /#
                assert(0, "<unknown string>");
            #/
            break;
        }
        [[ level.var_8cff5775.var_39e3fa99 ]]->function_4aca7529(0);
        level notify(#"hash_28b51ed78ee920f1");
        level namespace_7f5aeb59::function_ec758d18();
        level flag::wait_till_clear("doa_round_spawning");
        [[ level.var_8cff5775.var_39e3fa99 ]]->function_4aca7529(1);
        namespace_ec06fe4a::function_b6b79fd1(-1);
        while (level flag::get("doa_round_paused") || is_true(level.hostmigrationtimer)) {
            waitframe(1);
        }
        level flag::set("doa_round_over");
        level.var_8cff5775.var_c59f32d7 = gettime();
        level.var_8cff5775.var_f66b524a = level.var_8cff5775.var_c59f32d7 - level.var_8cff5775.var_46ba1186;
        if (is_true(level.var_8cff5775.challengeactive)) {
            namespace_7f5aeb59::function_f8645db3(getdvarint(#"hash_7256472be03ba328", 1000));
        }
        if (!is_true(level.var_8cff5775.var_3ec3c9aa)) {
            eventparams = {#var_49a074e7:int(float(level.var_8cff5775.var_f66b524a) / 1000), #roundnumber:level.var_8cff5775.roundnumber};
            function_92d1707f(#"hash_70c149ea78c8a7ac", eventparams);
        } else {
            namespace_1e25ad94::function_f5f0c0f8("Arena (" + var_4a140058 + ") round [" + level.var_8cff5775.roundnumber + "] skipping DLOG event due to interference");
        }
        level.var_8cff5775.var_3ec3c9aa = undefined;
        namespace_1e25ad94::function_f5f0c0f8("Arena (" + var_4a140058 + ") round [" + level.var_8cff5775.roundnumber + "] finished at: " + gettime() + " Total Time:" + float(level.var_8cff5775.var_f66b524a) / 1000 + " seconds");
        if (is_true(level.var_8cff5775.var_7ada373e)) {
            namespace_1e25ad94::function_4e3cfad("	Arena (" + var_4a140058 + ") round [" + level.var_8cff5775.roundnumber + "] finished at: " + gettime() + " Total Time:" + float(level.var_8cff5775.var_f66b524a) / 1000 + " seconds" + " AI Spawned:" + level.var_8cff5775.var_9fcf26ea, undefined, undefined, undefined, 10);
        }
        level notify(#"round_over");
        waitframe(1);
        if (level flag::get("arena_zero_rounds")) {
            level.var_8cff5775.var_4cfbc260 = 0;
        }
        if (level.var_8cff5775.var_4cfbc260 > 1) {
            spot = [[ level.var_8cff5775.var_39e3fa99 ]]->function_fdea25f1();
            roll = randomint(100);
            radius = spot.radius;
            if (!isdefined(radius)) {
                radius = 32;
            }
            if (roll == 0) {
                namespace_dfc652ee::function_68442ee7(spot.origin, 1, radius, 1);
            }
            namespace_dfc652ee::function_68442ee7(spot.origin, randomintrange(4, 10), radius, 0);
            if (namespace_ec06fe4a::function_a8975c67()) {
                playsoundatposition(#"hash_2021d3391e72675c", (0, 0, 0));
            }
            if ([[ level.var_8cff5775.var_39e3fa99 ]]->function_806bba()) {
                [[ level.var_8cff5775.var_39e3fa99 ]]->function_c9f6682b();
                function_9f0eb43e();
            }
            level thread function_6932cdb4();
            namespace_1e25ad94::function_f5f0c0f8("Arena (" + var_4a140058 + ") waiting for doa_exit_taken");
            level namespace_a6ddb172::function_7a0e5387(10);
            result = undefined;
            result = level waittill(#"hash_658e10e65ed524c0");
            if (namespace_ec06fe4a::function_a8975c67()) {
                playsoundatposition(#"evt_doa_travel_doors_chosen", (0, 0, 0));
            }
            namespace_1e25ad94::function_f5f0c0f8("Arena (" + var_4a140058 + ") waiting for doa_exit_taken recieved");
            [[ level.var_8cff5775.var_39e3fa99 ]]->function_7ce9bb97();
            var_1075516b = result.direction;
            namespace_ec06fe4a::function_de70888a();
            level thread namespace_7f5aeb59::function_67f054d7();
            level waittill(#"hash_1b322de3d2e3e781");
            level namespace_a6ddb172::function_7a0e5387();
            level notify(#"hash_2282d796a1f7533a");
            namespace_ec06fe4a::function_de70888a();
            waitframe(1);
            if (namespace_5a917022::function_7230f033()) {
                level waittill(#"hash_7dd47c99b7707b1c");
            }
            function_a70ff03e(!level.var_8cff5775.var_ecff3871);
            var_4c9d3462++;
            if (var_4c9d3462 > 3) {
                var_4c9d3462 = 0;
            }
            level util::set_lighting_state(var_4c9d3462, 0);
            level clientfield::set("setTOD", var_4c9d3462);
            namespace_dfc652ee::function_19fa261e();
            namespace_ec06fe4a::function_7ae4c183();
            if (isdefined(var_1075516b)) {
                var_406866b1++;
                [[ level.var_8cff5775.var_39e3fa99 ]]->function_1e4d7a0c(1 << var_406866b1);
                function_8405d534(var_1075516b);
            }
        }
        level.var_8cff5775.var_4cfbc260--;
        level.var_8cff5775.var_9a86a331 = [];
        level.var_8cff5775.var_f4cf4e3 = level.var_8cff5775.var_f4cf4e3 + 2;
        level.var_8cff5775.zombie_health = level.var_8cff5775.zombie_health + 100;
        if (level.var_8cff5775.var_4cfbc260 > 0) {
            namespace_4dae815d::function_e22d3978(level.var_8cff5775.roundnumber + 1);
        }
        namespace_250e9486::function_d1bc3f11(level.var_8cff5775.roundnumber);
    }
    var_a8f554bd = 2;
    while (var_a8f554bd > 0) {
        var_a8f554bd--;
        spot = [[ level.var_8cff5775.var_39e3fa99 ]]->function_fdea25f1();
        radius = spot.radius;
        if (!isdefined(radius)) {
            radius = 32;
        }
        roll = randomint(100);
        if (roll == 0) {
            namespace_dfc652ee::function_68442ee7(spot.origin, 1, radius, 1);
        }
        namespace_dfc652ee::function_68442ee7(spot.origin, randomintrange(4, 10), radius, 0);
    }
    level thread function_3f18205d();
    level thread function_6932cdb4();
    timesec = float(gettime() - var_d0cb8cd4) / 1000;
    level.var_8cff5775.var_b456a02b = level.var_8cff5775.var_b456a02b + timesec;
    namespace_1e25ad94::function_f5f0c0f8("Arena (" + var_4a140058 + ") time spent: " + timesec + " seconds.");
    namespace_ec06fe4a::function_de70888a();
    level notify(#"hash_7b68a1d715669022");
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 0, eflags: 0x6 linked
// Checksum 0x4140e65b, Offset: 0x7918
// Size: 0x10c
function private function_6932cdb4() {
    wait(1);
    var_370ac26d = getdvarint(#"hash_b6131d2b653429b", 425) + level.var_8cff5775.roundnumber * getdvarint(#"hash_58e9d99a358668d8", 75);
    maxxp = getdvarint(#"hash_2f1edc610eb9f340", 3500) + level.var_8cff5775.var_6c58d51 * getdvarint(#"hash_7240e9b38c2b7e29", 2500);
    if (var_370ac26d > maxxp) {
        var_370ac26d = maxxp;
    }
    namespace_7f5aeb59::function_f8645db3(var_370ac26d);
    namespace_d2efac9a::function_47498d07(undefined, 1);
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 0, eflags: 0x2 linked
// Checksum 0x881f465d, Offset: 0x7a30
// Size: 0xe56
function function_3f18205d() {
    self notify("3435e896293dcba3");
    self endon("3435e896293dcba3");
    level endon(#"game_over", #"hash_4a13bd350867b4ae");
    level notify(#"hash_de33bd076cde122");
    foreach (player in getplayers()) {
        player notify(#"hash_279998c5df86c04d");
    }
    waitframe(1);
    while (level flag::get("arena_hold_presentation")) {
        waitframe(1);
    }
    /#
        assert(isdefined(level.var_8cff5775.var_39e3fa99), "<unknown string>");
    #/
    var_dd3eca11 = [[ level.var_8cff5775.var_39e3fa99 ]]->function_9485c2a9();
    var_c6906ae1 = undefined;
    if (level.var_8cff5775.var_6c58d51 == 0) {
        var_c6906ae1 = [[ level.var_8cff5775.var_39e3fa99 ]]->function_51dd0a59();
        if (is_true(level.var_8cff5775.hardcoremode) && isdefined(var_c6906ae1)) {
            if (var_c6906ae1.targetname !== #"hash_10d262cdf5d256d8") {
                var_c6906ae1 = undefined;
            }
        }
    }
    if (isdefined(var_c6906ae1)) {
        var_9f6855ea = isdefined(level.var_8cff5775.var_e15152e6) ? level.var_8cff5775.var_e15152e6 : var_c6906ae1.script_noteworthy;
        var_c4f905c2 = isdefined(var_c6906ae1.script_int) ? int(var_c6906ae1.script_int) : isdefined(level.var_8cff5775.var_baeb966b) ? level.var_8cff5775.var_baeb966b : 0;
        var_46058269 = namespace_3e8ab514::function_e5e987ae(var_9f6855ea);
        var_82dd2bd0 = isdefined(var_c6906ae1) ? var_c6906ae1.origin : [[ level.var_8cff5775.var_39e3fa99 ]]->function_70fb5745([[ level.var_8cff5775.var_39e3fa99 ]]->function_ffcf1d1()).origin;
        if (isdefined(var_46058269)) {
            var_ec67aff2 = [[ var_46058269 ]]->function_70111aa4(var_c4f905c2);
            level thread namespace_ec06fe4a::function_87612422(var_ec67aff2.origin, var_ec67aff2.angles, 0.1, 999999, [[ var_46058269 ]]->function_c8fbcc3f(var_c4f905c2));
        }
    } else {
        var_dd3eca11 = 1;
    }
    /#
        if (is_true(level.var_e5d89122) || is_true(level.var_8cff5775.var_1f2c7d5f)) {
            var_dd3eca11 = 1;
            var_46058269 = undefined;
        }
    #/
    id = [[ level.var_8cff5775.var_39e3fa99 ]]->function_660eca7a();
    if (var_dd3eca11) {
        namespace_1e25ad94::function_f5f0c0f8("Arena " + id + " spawning teleporter");
        origin = [[ level.var_8cff5775.var_39e3fa99 ]]->function_ffcf1d1();
        var_45041f7 = namespace_ec06fe4a::function_e22ae9b3(origin + vectorscale((0, 0, -1), 115), "zombietron_teleporter");
        if (isdefined(var_45041f7)) {
            var_45041f7 thread namespace_ec06fe4a::function_d55f042c(level, "game_over");
            var_45041f7 setmodel("zombietron_teleporter");
            var_45041f7 solid();
            var_45041f7 setmovingplatformenabled(1);
            var_45041f7 namespace_83eb6304::function_3ecfde67("teleporter_dungeon_light");
            var_45041f7 namespace_e32bb68::function_3a59ec34("evt_doa_teleporter_spawn");
            var_45041f7 thread namespace_ec06fe4a::function_f506b4c7();
            var_45041f7 moveto(origin + vectorscale((0, 0, 1), 12), 1.5);
            level notify(#"hash_3004b3af4b0e5aa0", {#var_ad142a82:var_45041f7});
            var_45041f7 waittill(#"movedone");
            var_45041f7 namespace_e32bb68::function_3a59ec34("evt_doa_teleporter_lp");
            level.var_8cff5775.var_ad142a82 = var_45041f7;
            var_45041f7.trigger.var_45041f7 = namespace_ec06fe4a::function_b5731057("trigger_radius", var_45041f7.origin + vectorscale((0, 0, -1), 100), 0, 20, 200);
            if (isdefined(var_45041f7.trigger)) {
                var_45041f7.trigger thread namespace_ec06fe4a::function_d55f042c(var_45041f7, "death");
            } else {
                /#
                    assert(0, "<unknown string>");
                #/
            }
            while (level flag::get("arena_hold_banner_presentation")) {
                waitframe(1);
            }
            var_c2366736 = isdefined(var_46058269) ? 12 : 11;
            level namespace_a6ddb172::function_7a0e5387(var_c2366736);
        } else {
            /#
                assert(0, "<unknown string>");
            #/
        }
    } else {
        /#
            assert(isdefined(var_46058269));
        #/
        while (level flag::get("arena_hold_banner_presentation")) {
            waitframe(1);
        }
        level namespace_a6ddb172::function_7a0e5387(13);
    }
    note = "teleporter_taken";
    param = undefined;
    data = undefined;
    if (isdefined(var_46058269)) {
        var_6c225512 = namespace_ec06fe4a::function_e22ae9b3(var_82dd2bd0, "tag_origin");
        if (isdefined(var_6c225512)) {
            var_6c225512 namespace_83eb6304::function_3ecfde67("wild_portal");
            var_6c225512 namespace_83eb6304::function_3ecfde67("wild_portal_elec_burst");
            var_6c225512 namespace_e32bb68::function_3a59ec34("evt_doa_teleporter_wilds_spawn");
            var_6c225512 namespace_e32bb68::function_3a59ec34("evt_doa_teleporter_wilds_lp");
            var_6c225512 thread namespace_ec06fe4a::function_d55f042c(level, "game_over");
        } else {
            /#
                assert(0, "<unknown string>");
            #/
        }
        var_6c225512.trigger.var_6c225512 = namespace_ec06fe4a::function_b5731057("trigger_radius", var_6c225512.origin + vectorscale((0, 0, -1), 30), 0, 40, 100);
        level.var_8cff5775.var_6c225512 = var_6c225512;
        if (isdefined(var_6c225512.trigger)) {
            var_6c225512.trigger thread namespace_ec06fe4a::function_d55f042c(var_6c225512, "death");
        } else {
            /#
                assert(0, "<unknown string>");
            #/
        }
        wait(1);
        var_6c225512 namespace_83eb6304::function_3ecfde67("wild_portal_radial_burst");
        var_6c225512 namespace_e32bb68::function_3a59ec34("evt_doa_teleporter_wilds_burst");
        var_6c225512.trigger thread function_ba702ab7("enter_the_wild");
        if (isdefined(var_45041f7) && !is_true(var_45041f7.malfunction)) {
            var_45041f7.trigger thread function_ba702ab7("teleporter_taken");
        }
        level.var_8cff5775.var_9ae7e5e6 = var_6c225512;
        level notify(#"hash_3b78590473351869");
        result = function_df020ff4();
        note = result.note;
        level.var_8cff5775.var_9ae7e5e6 = undefined;
        if (note == "enter_the_wild") {
            param = var_9f6855ea;
            data = var_c4f905c2;
        }
    } else {
        /#
            assert(isdefined(var_45041f7));
        #/
        level notify(#"hash_2fa3a8c87dfbde5c");
        result = undefined;
        result = var_45041f7.trigger waittill(#"trigger");
        var_45041f7.trigger delete();
    }
    if (note === "teleporter_taken") {
        if (namespace_ec06fe4a::function_a8975c67()) {
            playsoundatposition(#"hash_44baccb35f91eeb6", (0, 0, 0));
        }
        foreach (player in getplayers()) {
            player namespace_d2efac9a::function_9a8fff78();
        }
    }
    level thread namespace_7f5aeb59::function_67f054d7();
    level waittill(#"hash_1b322de3d2e3e781");
    [[ level.var_8cff5775.var_39e3fa99 ]]->deactivate();
    if (isdefined(var_45041f7)) {
        var_45041f7 namespace_83eb6304::turnofffx("teleporter_dungeon_light");
        var_45041f7 namespace_83eb6304::turnofffx("glow_red");
        var_45041f7 namespace_83eb6304::turnofffx("glow_green");
        var_45041f7 namespace_83eb6304::turnofffx("glow_blue");
        util::wait_network_frame();
        var_45041f7 delete();
    }
    if (isdefined(var_6c225512)) {
        var_6c225512.trigger delete();
        var_6c225512 delete();
        level.var_8cff5775.var_6c225512 = undefined;
    }
    if (note === #"hash_23fda6a40f9f6f6") {
        level.var_8cff5775.zombie_health = level.var_8cff5775.zombie_health + 250 + getplayers().size * 250;
    }
    level.var_8cff5775.var_ad142a82 = undefined;
    level.var_8cff5775.var_a5e5c622 = level.var_8cff5775.var_39e3fa99;
    level.var_8cff5775.var_39e3fa99 = undefined;
    level clientfield::set("setArena", 32 - 1);
    namespace_dfc652ee::function_19fa261e();
    namespace_ec06fe4a::function_7ae4c183();
    level notify(note, {#data:data, #param:param});
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 1, eflags: 0x2 linked
// Checksum 0xcc374ee1, Offset: 0x8890
// Size: 0x98
function function_ba702ab7(note) {
    self endon(#"death");
    level endon(#"hash_45f77908e3043522");
    result = undefined;
    result = self waittill(#"trigger");
    level notify(#"hash_45f77908e3043522", {#activator:result.activator, #note:note});
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 0, eflags: 0x2 linked
// Checksum 0x6fcb4670, Offset: 0x8930
// Size: 0x32
function function_df020ff4() {
    result = undefined;
    result = level waittill(#"hash_45f77908e3043522");
    return result;
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 0, eflags: 0x2 linked
// Checksum 0xbbbb6891, Offset: 0x8970
// Size: 0x2a8
function function_e1916608() {
    self notify("6ffb2dd99af75b0c");
    self endon("6ffb2dd99af75b0c");
    level endon(#"game_over");
    level endon(#"hash_1cf1c429bb1c9a07");
    wait(randomint(3) + 1);
    var_339523da = 4;
    var_4e7bdb02 = 10;
    var_d736690e = 10;
    var_4180202d = 20;
    var_627acedf = undefined;
    while (1) {
        wait(randomfloatrange(var_d736690e, var_4180202d));
        if (flag::get("doa_round_over") || !isdefined(level.var_8cff5775.var_39e3fa99)) {
            continue;
        }
        if (isdefined(var_627acedf)) {
            if (gettime() > var_627acedf) {
                while (isdefined(level.var_8cff5775.var_39e3fa99) && [[ level.var_8cff5775.var_39e3fa99 ]]->ispaused()) {
                    wait(1);
                }
            }
        } else if ([[ level.var_8cff5775.var_39e3fa99 ]]->ispaused()) {
            var_627acedf = gettime() + 30000;
        }
        if (namespace_ff8b8430::function_e7e91016()) {
            /#
                function_4e3cfad("<unknown string>", (1, 0, 0), undefined, 1.5);
                function_f5f0c0f8("<unknown string>");
            #/
            continue;
        }
        if (!isdefined(level.var_8cff5775.var_39e3fa99)) {
            continue;
        }
        spot = [[ level.var_8cff5775.var_39e3fa99 ]]->function_fdea25f1();
        radius = spot.radius;
        if (!isdefined(radius)) {
            radius = 72;
        }
        namespace_dfc652ee::function_68442ee7(spot.origin, randomintrange(var_339523da, var_4e7bdb02), radius, randomint(100) > 98);
    }
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 0, eflags: 0x2 linked
// Checksum 0x263de434, Offset: 0x8c20
// Size: 0x3f0
function function_16902251() {
    self notify("5798315263234892");
    self endon("5798315263234892");
    level endon(#"hash_7b68a1d715669022");
    level endon(#"game_over");
    level endon(#"hash_25b8523c402831e5");
    level endon(#"hash_1cf1c429bb1c9a07");
    var_d736690e = 12;
    var_4180202d = 24;
    wait(randomint(8));
    var_46b5961c = 0;
    var_4b444556 = [[ level.var_8cff5775.var_39e3fa99 ]]->getcenter();
    var_9bb0a315 = arraycombine([[ level.var_8cff5775.var_39e3fa99 ]]->function_8054e011(), [[ level.var_8cff5775.var_39e3fa99 ]]->function_c0402c8a());
    while (1) {
        wait(0.25);
        while ([[ level.var_8cff5775.var_39e3fa99 ]]->ispaused()) {
            wait(1);
        }
        if (namespace_ff8b8430::function_e7e91016()) {
            /#
                function_4e3cfad("<unknown string>", (1, 0, 0), undefined, 1.5);
                function_f5f0c0f8("<unknown string>");
            #/
            continue;
        }
        var_4d842336 = namespace_dfc652ee::function_57160cba();
        type = [[ var_4d842336 ]]->gettype();
        spot = var_9bb0a315[randomint(var_9bb0a315.size)];
        if (!namespace_dfc652ee::function_ae609287(var_4d842336, spot.origin)) {
            continue;
        }
        if (type == var_46b5961c) {
            var_46b5961c = 0;
            continue;
        }
        var_46b5961c = type;
        var_9e20508c = 1;
        if (type == 3) {
            var_9e20508c = getplayers().size;
            [[ var_4d842336 ]]->function_772950ea(1);
        }
        var_9994cd6e = 8;
        while (var_9e20508c) {
            if (var_9994cd6e > 0 && distancesquared(var_4b444556.origin, spot.origin) < function_a3f6cdac(300)) {
                spot = var_9bb0a315[randomint(var_9bb0a315.size)];
                waitframe(1);
                var_9994cd6e--;
                continue;
            }
            var_4b444556 = spot;
            radius = 48;
            namespace_dfc652ee::function_83aea294(spot.origin, 1, radius, var_4d842336);
            var_9e20508c--;
            spot = var_9bb0a315[randomint(var_9bb0a315.size)];
            var_9994cd6e = 8;
        }
        if ([[ var_4d842336 ]]->function_772950ea(0)) {
            [[ var_4d842336 ]]->function_755a46e6();
        }
        wait(randomfloatrange(var_d736690e, var_4180202d));
    }
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 0, eflags: 0x2 linked
// Checksum 0xb56a0467, Offset: 0x9018
// Size: 0x2d8
function function_17e79564() {
    self notify("3520af402d8485a4");
    self endon("3520af402d8485a4");
    level endon(#"hash_7b68a1d715669022");
    level endon(#"game_over");
    level endon(#"hash_1cf1c429bb1c9a07");
    wait(5);
    var_d736690e = 30;
    var_4180202d = 40;
    nextweapon = 0;
    var_e36d70e2 = undefined;
    var_d7f489eb = array::randomize(arraycombine([[ level.var_8cff5775.var_39e3fa99 ]]->function_8054e011(), [[ level.var_8cff5775.var_39e3fa99 ]]->function_c0402c8a()));
    var_9a572c4e = 0;
    while (1) {
        if (isdefined(var_e36d70e2)) {
            if (gettime() > var_e36d70e2) {
                while ([[ level.var_8cff5775.var_39e3fa99 ]]->ispaused()) {
                    wait(1);
                }
            }
        } else if ([[ level.var_8cff5775.var_39e3fa99 ]]->ispaused()) {
            var_e36d70e2 = gettime() + 30000;
        }
        if (gettime() > nextweapon) {
            if (isdefined(level.var_8cff5775.var_cfa10fcf)) {
                var_9e20508c = level.var_8cff5775.var_cfa10fcf;
                level.var_8cff5775.var_cfa10fcf = undefined;
            } else {
                var_9e20508c = 1;
                if (randomint(100) > 98) {
                    var_9e20508c = var_9e20508c + randomint(3);
                }
            }
            def = namespace_dfc652ee::function_57160cba(6);
            spot = var_d7f489eb[var_9a572c4e];
            var_9a572c4e++;
            if (var_9a572c4e >= var_d7f489eb.size) {
                var_9a572c4e = 0;
            }
            radius = spot.radius;
            if (!isdefined(radius)) {
                radius = 36;
            }
            namespace_dfc652ee::function_83aea294(spot.origin, var_9e20508c, radius, def);
            nextweapon = gettime() + randomintrange(var_d736690e, var_4180202d) * 1000;
        }
        waitframe(1);
    }
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 1, eflags: 0x2 linked
// Checksum 0xfd2d6bea, Offset: 0x92f8
// Size: 0x10
function function_80bb0f94(*name) {
    return 1;
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 0, eflags: 0x2 linked
// Checksum 0x205c4adb, Offset: 0x9310
// Size: 0x1b4
function function_1b42a0bb() {
    self notify("7e0335e89fa03145");
    self endon("7e0335e89fa03145");
    level endon(#"hash_7b68a1d715669022");
    level endon(#"game_over");
    if (function_80bb0f94([[ level.var_8cff5775.var_39e3fa99 ]]->getname()) == 0) {
        return;
    }
    while (1) {
        while (!is_true(level.var_8cff5775.var_a6cd0cb7) && isdefined(level.var_8cff5775.var_39e3fa99) && [[ level.var_8cff5775.var_39e3fa99 ]]->ispaused() || isdefined(level.var_8cff5775.var_6f3d327)) {
            wait(1);
        }
        level.var_8cff5775.var_11623c49--;
        if (level.var_8cff5775.var_11623c49 <= 0) {
            level.var_8cff5775.var_a6cd0cb7 = undefined;
            level function_8f63849();
            while (isdefined(level.var_8cff5775.var_1311d8f5)) {
                wait(1);
            }
            level.var_8cff5775.var_11623c49 = randomintrange(200, 600);
        }
        wait(1);
    }
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 0, eflags: 0x2 linked
// Checksum 0x6fc9cb45, Offset: 0x94d0
// Size: 0x354
function function_8f63849() {
    self notify("6368f448f211935e");
    self endon("6368f448f211935e");
    level endon(#"hash_7b68a1d715669022");
    level endon(#"game_over");
    if (isdefined(level.var_8cff5775.var_1311d8f5)) {
        level.var_8cff5775.var_1311d8f5 delete();
    }
    spot = [[ level.var_8cff5775.var_39e3fa99 ]]->function_70fb5745();
    var_d6e32de9 = [[ level.var_8cff5775.var_39e3fa99 ]]->function_70fb5745(spot.origin, 24, 256);
    if (isdefined(var_d6e32de9)) {
        def = namespace_dfc652ee::function_57160cba(6);
        namespace_dfc652ee::function_83aea294(var_d6e32de9.origin, 1, 8, def);
    }
    origin = namespace_ec06fe4a::function_65ee50ba(spot.origin) + vectorscale((0, 0, 1), 6);
    var_70527f67 = namespace_ec06fe4a::function_e22ae9b3(origin + vectorscale((0, 0, -1), 115), "zombietron_weapon_charging_pad");
    if (isdefined(var_70527f67)) {
        var_70527f67.targetname.var_70527f67 = "weaponCharger";
        var_70527f67 solid();
        var_70527f67 namespace_83eb6304::function_3ecfde67("glow_yellow");
        var_70527f67.var_81b02b86.var_70527f67 = 120;
        var_70527f67 moveto(origin, 1.5);
        var_70527f67 waittill(#"movedone");
        var_70527f67 connectpaths();
        var_70527f67.trigger.var_70527f67 = namespace_ec06fe4a::function_b5731057("trigger_radius", origin + vectorscale((0, 0, -1), 20), 0, 20, 72);
        var_70527f67 namespace_83eb6304::function_3ecfde67("weaponChargerActive");
        var_70527f67 namespace_e32bb68::function_3a59ec34("evt_doa_weapon_charge_start");
        var_70527f67 namespace_e32bb68::function_3a59ec34("evt_doa_weapon_charge_lp");
        level.var_8cff5775.var_1311d8f5 = var_70527f67;
        level.var_8cff5775.var_1311d8f5 thread function_6aa1d6a();
        level.var_8cff5775.var_1311d8f5 thread function_b0a158d7();
        level.var_8cff5775.var_1311d8f5 thread function_f39d5561();
    }
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 0, eflags: 0x2 linked
// Checksum 0xbe4d149f, Offset: 0x9830
// Size: 0x3d0
function function_b0a158d7() {
    self endon(#"death");
    if (!isdefined(self.trigger)) {
        level notify(#"hash_bc1b9c6675b1faa");
        return;
    }
    var_666e15ce = 150;
    def = namespace_dfc652ee::function_2c9923d7(36);
    var_7cc1c2b2 = array(def, def, def, def);
    while (self.var_81b02b86 > 0 && isdefined(self.trigger)) {
        players = namespace_7f5aeb59::function_23e1f90f();
        foreach (player in players) {
            entnum = player.var_8cff5775.entnum;
            player.var_8cff5775.var_57eaec6e = 0;
            if (player istouching(self.trigger)) {
                if (is_true(player.laststand)) {
                    continue;
                }
                if (player.var_8cff5775.weaponlevel == 2 && player.var_8cff5775.var_d8955419 == 1024) {
                    continue;
                }
                player.var_8cff5775.var_57eaec6e = 1;
                if (player.var_8cff5775.weaponlevel == 0) {
                    player.var_8cff5775.var_d8955419 = 1024;
                }
                switch (player.var_8cff5775.weaponlevel) {
                case 0:
                    type = 36;
                    glow = "glow_white";
                    break;
                case 1:
                    type = 37;
                    glow = "glow_red";
                    break;
                case 2:
                    type = 38;
                    glow = "glow_blue";
                    break;
                }
                if (type === [[ var_7cc1c2b2[entnum] ]]->gettype()) {
                    def = var_7cc1c2b2[entnum];
                } else {
                    def = namespace_dfc652ee::function_2c9923d7(type);
                    var_7cc1c2b2[entnum] = def;
                }
                namespace_dfc652ee::itemspawn(def, player.origin, player.angles, undefined, 1, glow, undefined, undefined, player, 0);
                player.var_8cff5775.var_6b4163f1 = 0;
                self.var_81b02b86 = self.var_81b02b86 - 5;
            }
        }
        wait(1);
    }
    if (isdefined(self.trigger)) {
        self.trigger delete();
    }
    level notify(#"hash_bc1b9c6675b1faa");
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 0, eflags: 0x2 linked
// Checksum 0x137ed96f, Offset: 0x9c08
// Size: 0x30
function function_f39d5561() {
    self endon(#"death");
    wait(30);
    level notify(#"hash_bc1b9c6675b1faa");
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 0, eflags: 0x2 linked
// Checksum 0xa38fcd44, Offset: 0x9c40
// Size: 0x26c
function function_6aa1d6a() {
    self endon(#"death");
    level waittill(#"hash_7b68a1d715669022", #"game_over", #"hash_4a98bd219750f891", #"hash_bc1b9c6675b1faa", #"round_over", #"hash_7ebdbe412d2fed17");
    if (isdefined(self.trigger)) {
        self.trigger delete();
    }
    wait(1);
    self namespace_83eb6304::turnofffx("weaponChargerActive");
    self namespace_e32bb68::function_ae271c0b("evt_doa_weapon_charge_lp");
    self namespace_83eb6304::function_3ecfde67("weaponChargerDone");
    self namespace_e32bb68::function_3a59ec34("evt_doa_weapon_charge_end");
    self moveto(self.origin + vectorscale((0, 0, -1), 115), 1.5);
    self waittill(#"movedone");
    self connectpaths();
    self namespace_83eb6304::turnofffx("weaponChargerActive");
    level.var_8cff5775.var_1311d8f5 = undefined;
    players = namespace_7f5aeb59::function_23e1f90f();
    foreach (player in players) {
        player.var_8cff5775.var_57eaec6e = 0;
    }
    self delete();
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 2, eflags: 0x2 linked
// Checksum 0x8b0fad9d, Offset: 0x9eb8
// Size: 0x34e
function function_81282ad3(delay = 0, var_68e61c47 = 0) {
    self notify("20e62f006de791f4");
    self endon("20e62f006de791f4");
    level endon(#"game_over");
    level endon(#"round_over");
    level flag::set("doa_round_spawning");
    level flag::clear("doa_round_over");
    if (delay > 0) {
        wait(delay);
    }
    starttime = gettime();
    if (level flag::get("challenge_round_spawnOverride")) {
        level flag::wait_till_clear("challenge_round_spawnOverride");
    } else {
        namespace_1e25ad94::function_f5f0c0f8("Round " + level.var_8cff5775.roundnumber + " starting at: " + starttime + " Waves expected: " + level.var_8cff5775.var_9a86a331.size);
        level.var_8cff5775.var_aa7fba18 = level.var_8cff5775.var_9a86a331.size;
        do {
            for (wave = 0; wave < level.var_8cff5775.var_9a86a331.size; wave++) {
                while (level flag::get("doa_round_paused") || is_true(level.hostmigrationtimer)) {
                    waitframe(1);
                }
                if (level flag::get("doa_game_is_over")) {
                    break;
                }
                level thread function_a87190c4(level.var_8cff5775.var_9a86a331[wave]);
                wait(level.var_8cff5775.var_9a86a331[wave].var_bd90dbbc);
            }
        } while(var_68e61c47);
    }
    while (level.var_8cff5775.var_aa7fba18 > 0 || level.var_8cff5775.var_dcbded2.size) {
        wait(1);
    }
    endtime = gettime();
    namespace_1e25ad94::function_f5f0c0f8("Round " + level.var_8cff5775.roundnumber + " took (" + (endtime - starttime) / 1000 + ") seconds to complete.");
    level flag::clear("doa_round_spawning");
    level.var_8cff5775.var_9a86a331 = [];
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 1, eflags: 0x2 linked
// Checksum 0x1bf11152, Offset: 0xa210
// Size: 0x242
function function_24058346(spot) {
    if (level.var_8cff5775.var_a77e4601.size) {
        var_7a8f2a62 = level.var_8cff5775.var_a77e4601[randomint(level.var_8cff5775.var_a77e4601.size)];
    } else {
        var_7a8f2a62 = level.var_8cff5775.var_329c97a3[randomint(level.var_8cff5775.var_329c97a3.size)];
    }
    if (var_7a8f2a62 != level.var_8cff5775.var_65a70dc) {
        if ([[ var_7a8f2a62 ]]->function_baae6c9d([[ level.var_8cff5775.var_39e3fa99 ]]->getname())) {
            var_7a8f2a62 = level.var_8cff5775.var_65a70dc;
        }
        var_9d97ad8e = [[ var_7a8f2a62 ]]->function_7f3e577e(level.var_8cff5775.var_3e7292fc) || gettime() - [[ level.var_8cff5775.var_39e3fa99 ]]->function_55916d40() > 15000;
        if (!isinarray(level.var_8cff5775.var_a77e4601, var_7a8f2a62) && var_9d97ad8e == 0) {
            var_7a8f2a62 = level.var_8cff5775.var_65a70dc;
        }
        if ([[ var_7a8f2a62 ]]->function_e3d90223() == 0) {
            var_7a8f2a62 = level.var_8cff5775.var_65a70dc;
        }
        if (var_7a8f2a62 != level.var_8cff5775.var_65a70dc) {
            [[ level.var_8cff5775.var_39e3fa99 ]]->function_b2f9e813();
        }
    }
    return namespace_ff8b8430::function_4e8ae191(var_7a8f2a62, 1, spot.origin, 0, undefined, undefined, undefined, level.var_8cff5775.var_39e3fa99);
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 1, eflags: 0x2 linked
// Checksum 0x208babdb, Offset: 0xa460
// Size: 0x1a0
function function_a87190c4(wave) {
    level endon(#"round_over");
    level endon(#"game_over");
    endtime = gettime() + wave.var_d89d85d0 * 1000;
    while (gettime() < endtime || wave.var_3ed31a82 > 0) {
        while (level flag::get("doa_round_paused") || is_true(level.hostmigrationtimer)) {
            waitframe(1);
        }
        if (level flag::get("doa_game_is_over")) {
            break;
        }
        if (is_true(level.hostmigrationtimer)) {
            waitframe(1);
            continue;
        }
        wait(0.35);
        spot = [[ level.var_8cff5775.var_39e3fa99 ]]->function_21d1be3d(wave.spawn_side);
        ai = function_24058346(spot);
        if (isdefined(ai)) {
            wave.var_3ed31a82--;
        }
    }
    level.var_8cff5775.var_aa7fba18--;
    wave notify(#"hash_6af26e86a712142f");
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 1, eflags: 0x2 linked
// Checksum 0x1b664a02, Offset: 0xa608
// Size: 0xf0
function function_3d25cb06(roundnumber = level.var_8cff5775.roundnumber) {
    level.var_8cff5775.var_9a86a331 = [];
    max = 30 + level.var_8cff5775.var_6c58d51 * 30;
    waves = 6 + int(roundnumber * 1.2);
    if (waves > max) {
        waves = max;
    }
    for (i = 0; i < waves; i++) {
        level.var_8cff5775.var_9a86a331[i] = function_2419e70a(i, roundnumber);
    }
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 0, eflags: 0x2 linked
// Checksum 0x5b9509fa, Offset: 0xa700
// Size: 0x8a
function function_7802d126() {
    switch (randomint(4)) {
    case 0:
        return "bottom";
    case 1:
        return "top";
    case 2:
        return "right";
    case 3:
        return "left";
        break;
    }
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 1, eflags: 0x0
// Checksum 0x1a6aa4cb, Offset: 0xa798
// Size: 0x82
function function_d60e0e9a(side) {
    switch (side) {
    case #"top":
        return "bottom";
    case #"bottom":
        return "top";
    case #"left":
        return "right";
    case #"right":
        return "left";
        break;
    }
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 2, eflags: 0x6 linked
// Checksum 0x7c9837db, Offset: 0xa828
// Size: 0x13a
function private function_2419e70a(var_50c8366e, round_number) {
    wave = spawnstruct();
    wave.var_d89d85d0.wave = 1 + randomfloatrange(0, 1 + var_50c8366e * 0.3) + randomfloatrange(0, 1 + round_number * 0.2);
    wave.spawn_side.wave = function_7802d126();
    wave.var_bd90dbbc.wave = 1 + randomfloatrange(wave.var_d89d85d0 * 0.3, wave.var_d89d85d0 * 0.9);
    wave.var_3ed31a82.wave = int(wave.var_d89d85d0 / 0.35 * 0.35);
    wave.var_517688b4 = var_50c8366e;
    return wave;
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 0, eflags: 0x2 linked
// Checksum 0x691f615, Offset: 0xa970
// Size: 0x30
function function_3af22009() {
    if (!isdefined(self.endtime)) {
        return 0;
    }
    return gettime() > self.endtime || self.var_3ed31a82 <= 0;
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 0, eflags: 0x2 linked
// Checksum 0xc8dff81b, Offset: 0xa9a8
// Size: 0x46e
function function_67a3bb43() {
    level endon(#"round_over");
    level endon(#"game_over");
    self notify("2f006c2033275640");
    self endon("2f006c2033275640");
    result = undefined;
    result = self waittill(#"hash_b1f03f83d7dde45");
    if (!isdefined(self.starttime)) {
        self.starttime = gettime();
        self.endtime = self.starttime + self.var_d89d85d0 * 1000;
    }
    while (!self function_3af22009()) {
        self.var_1834860 = result.var_1834860;
        self.wanted = result.wanted;
        while (self.wanted > 0) {
            spot = [[ level.var_8cff5775.var_39e3fa99 ]]->function_21d1be3d(self.spawn_side);
            if (level.var_8cff5775.var_a77e4601.size) {
                var_7a8f2a62 = level.var_8cff5775.var_a77e4601[randomint(level.var_8cff5775.var_a77e4601.size)];
                var_7d992156 = 1;
            } else {
                var_7a8f2a62 = level.var_8cff5775.var_329c97a3[randomint(level.var_8cff5775.var_329c97a3.size)];
                var_7d992156 = undefined;
            }
            var_9e20508c = self.wanted;
            if (var_7a8f2a62 != level.var_8cff5775.var_65a70dc) {
                if ([[ var_7a8f2a62 ]]->function_baae6c9d([[ level.var_8cff5775.var_39e3fa99 ]]->getname())) {
                    var_7a8f2a62 = level.var_8cff5775.var_65a70dc;
                }
                var_9d97ad8e = [[ var_7a8f2a62 ]]->function_7f3e577e(level.var_8cff5775.var_3e7292fc) || gettime() - [[ level.var_8cff5775.var_39e3fa99 ]]->function_55916d40() > 15000;
                if (!isinarray(level.var_8cff5775.var_a77e4601, var_7a8f2a62) && var_9d97ad8e == 0) {
                    var_7a8f2a62 = level.var_8cff5775.var_65a70dc;
                }
                if ([[ var_7a8f2a62 ]]->function_e3d90223() == 0) {
                    var_7a8f2a62 = level.var_8cff5775.var_65a70dc;
                }
                if (var_7a8f2a62 != level.var_8cff5775.var_65a70dc) {
                    [[ level.var_8cff5775.var_39e3fa99 ]]->function_b2f9e813();
                    if (!is_true(var_7d992156)) {
                        var_9e20508c = 1;
                    }
                }
            }
            self.var_3ed31a82 = self.var_3ed31a82 - var_9e20508c;
            self.wanted = self.wanted - var_9e20508c;
            namespace_ff8b8430::function_a6b807ea(var_7a8f2a62, var_9e20508c, spot.origin, 0, undefined, undefined, undefined, level.var_8cff5775.var_39e3fa99, self.var_1834860, 0, self.endtime);
            wait(randomfloatrange(0.5, 2));
        }
        /#
            if (is_true(level.var_8cff5775.var_2409dcb5)) {
                level thread debugline(spot.origin, [[ level.var_8cff5775.var_39e3fa99 ]]->function_ffcf1d1(), self.var_7f9fdec7, (1, 0, 0));
            }
        #/
    }
    self.var_f5a8d3a4 = 1;
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 0, eflags: 0x2 linked
// Checksum 0x49cb6a57, Offset: 0xae20
// Size: 0x7c4
function function_9e0d71e5() {
    self notify("41f1f5a885cedbd");
    self endon("41f1f5a885cedbd");
    level endon(#"game_over");
    level endon(#"round_over");
    level flag::set("doa_round_spawning");
    level flag::clear("doa_round_over");
    starttime = gettime();
    var_d517bf3a = 1;
    if (level flag::get("challenge_round_spawnOverride")) {
        level flag::wait_till_clear("challenge_round_spawnOverride");
        var_d517bf3a = level.var_8cff5775.var_6c58d51 > 0;
    }
    if (var_d517bf3a) {
        namespace_1e25ad94::function_f5f0c0f8("Round " + level.var_8cff5775.roundnumber + " starting at: " + starttime + " Waves expected: " + level.var_8cff5775.var_9a86a331.size);
        level.var_8cff5775.var_aa7fba18 = level.var_8cff5775.var_9a86a331.size;
        for (wave = 0; wave < level.var_8cff5775.var_9a86a331.size; wave++) {
            [[ level.var_8cff5775.var_39e3fa99 ]]->function_25962665(level.var_8cff5775.var_9a86a331[wave]);
        }
        level.var_8cff5775.var_9a86a331 = [];
        var_68280a24 = [[ level.var_8cff5775.var_39e3fa99 ]]->function_cc773c53();
        var_fe3c2d16 = [[ level.var_8cff5775.var_39e3fa99 ]]->function_786b9d39();
        waves = [];
        waves[#"top"] = [[ level.var_8cff5775.var_39e3fa99 ]]->function_ee30f092("top");
        if (isdefined(waves[#"top"])) {
            waves[#"top"] thread function_67a3bb43();
        }
        waves[#"bottom"] = [[ level.var_8cff5775.var_39e3fa99 ]]->function_ee30f092("bottom");
        if (isdefined(waves[#"bottom"])) {
            waves[#"bottom"] thread function_67a3bb43();
        }
        waves[#"left"] = [[ level.var_8cff5775.var_39e3fa99 ]]->function_ee30f092("left");
        if (isdefined(waves[#"left"])) {
            waves[#"left"] thread function_67a3bb43();
        }
        waves[#"right"] = [[ level.var_8cff5775.var_39e3fa99 ]]->function_ee30f092("right");
        if (isdefined(waves[#"right"])) {
            waves[#"right"] thread function_67a3bb43();
        }
        done = 0;
        var_1834860 = 100;
        while (!done) {
            waves = array::randomize(waves);
            foreach (wave in waves) {
                wave notify(#"hash_b1f03f83d7dde45", {#wanted:randomintrange(var_68280a24, var_fe3c2d16), #var_1834860:var_1834860});
                level.var_8cff5775.var_aa7fba18 = math::clamp(level.var_8cff5775.var_aa7fba18 - 1, 0, level.var_8cff5775.var_aa7fba18);
                var_1834860++;
                while (wave.var_bd90dbbc > 0) {
                    wait(0.2);
                    wave.var_bd90dbbc.wave = wave.var_bd90dbbc - 0.2;
                }
            }
            waitframe(1);
            done = 1;
            var_77fcdba0 = [];
            foreach (wave in waves) {
                var_96fd970d = undefined;
                if (is_true(wave.var_f5a8d3a4)) {
                    var_96fd970d = [[ level.var_8cff5775.var_39e3fa99 ]]->function_ee30f092(wave.spawn_side);
                    if (isdefined(var_96fd970d)) {
                        var_96fd970d thread function_67a3bb43();
                        if (!isdefined(var_77fcdba0)) {
                            var_77fcdba0 = [];
                        } else if (!isarray(var_77fcdba0)) {
                            var_77fcdba0 = array(var_77fcdba0);
                        }
                        var_77fcdba0[var_77fcdba0.size] = var_96fd970d;
                    }
                } else {
                    if (!isdefined(var_77fcdba0)) {
                        var_77fcdba0 = [];
                    } else if (!isarray(var_77fcdba0)) {
                        var_77fcdba0 = array(var_77fcdba0);
                    }
                    var_77fcdba0[var_77fcdba0.size] = wave;
                }
            }
            waves = var_77fcdba0;
            if (waves.size) {
                done = 0;
            }
        }
    }
    level flag::clear("doa_round_spawning");
    level notify(#"hash_7ebdbe412d2fed17");
    wait(1);
    while (level.var_8cff5775.var_dcbded2.size) {
        waitframe(1);
    }
    endtime = gettime();
    namespace_1e25ad94::function_f5f0c0f8("Round " + level.var_8cff5775.roundnumber + " took (" + (endtime - starttime) / 1000 + ") seconds to complete.");
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 0, eflags: 0x2 linked
// Checksum 0x1c5c7acf, Offset: 0xb5f0
// Size: 0x1d6
function function_53678480() {
    var_1b0347ef = [];
    if (level.var_8cff5775.var_23ce73 & 1) {
        if (!isdefined(var_1b0347ef)) {
            var_1b0347ef = [];
        } else if (!isarray(var_1b0347ef)) {
            var_1b0347ef = array(var_1b0347ef);
        }
        var_1b0347ef[var_1b0347ef.size] = "top";
    }
    if (level.var_8cff5775.var_23ce73 & 2) {
        if (!isdefined(var_1b0347ef)) {
            var_1b0347ef = [];
        } else if (!isarray(var_1b0347ef)) {
            var_1b0347ef = array(var_1b0347ef);
        }
        var_1b0347ef[var_1b0347ef.size] = "left";
    }
    if (level.var_8cff5775.var_23ce73 & 4) {
        if (!isdefined(var_1b0347ef)) {
            var_1b0347ef = [];
        } else if (!isarray(var_1b0347ef)) {
            var_1b0347ef = array(var_1b0347ef);
        }
        var_1b0347ef[var_1b0347ef.size] = "right";
    }
    if (level.var_8cff5775.var_23ce73 & 8) {
        if (!isdefined(var_1b0347ef)) {
            var_1b0347ef = [];
        } else if (!isarray(var_1b0347ef)) {
            var_1b0347ef = array(var_1b0347ef);
        }
        var_1b0347ef[var_1b0347ef.size] = "bottom";
    }
    return var_1b0347ef;
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 0, eflags: 0x2 linked
// Checksum 0x59d85f6, Offset: 0xb7d0
// Size: 0x1d2
function function_32d53491() {
    var_1b0347ef = [];
    if ((level.var_8cff5775.var_23ce73 & 1) == 0) {
        if (!isdefined(var_1b0347ef)) {
            var_1b0347ef = [];
        } else if (!isarray(var_1b0347ef)) {
            var_1b0347ef = array(var_1b0347ef);
        }
        var_1b0347ef[var_1b0347ef.size] = 1;
    }
    if ((level.var_8cff5775.var_23ce73 & 2) == 0) {
        if (!isdefined(var_1b0347ef)) {
            var_1b0347ef = [];
        } else if (!isarray(var_1b0347ef)) {
            var_1b0347ef = array(var_1b0347ef);
        }
        var_1b0347ef[var_1b0347ef.size] = 2;
    }
    if ((level.var_8cff5775.var_23ce73 & 4) == 0) {
        if (!isdefined(var_1b0347ef)) {
            var_1b0347ef = [];
        } else if (!isarray(var_1b0347ef)) {
            var_1b0347ef = array(var_1b0347ef);
        }
        var_1b0347ef[var_1b0347ef.size] = 4;
    }
    if ((level.var_8cff5775.var_23ce73 & 8) == 0) {
        if (!isdefined(var_1b0347ef)) {
            var_1b0347ef = [];
        } else if (!isarray(var_1b0347ef)) {
            var_1b0347ef = array(var_1b0347ef);
        }
        var_1b0347ef[var_1b0347ef.size] = 8;
    }
    return var_1b0347ef;
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 1, eflags: 0x2 linked
// Checksum 0x4acfef9c, Offset: 0xb9b0
// Size: 0x7c
function function_a30ab289(side) {
    switch (side) {
    case #"top":
        return 1;
    case #"left":
        return 2;
    case #"right":
        return 4;
    case #"bottom":
        return 8;
        break;
    }
    return 0;
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 1, eflags: 0x2 linked
// Checksum 0x274bb1f2, Offset: 0xba38
// Size: 0x1d0
function function_dc848b36(side) {
    level endon(#"game_over", #"round_over");
    var_612922db = function_a30ab289(side);
    while (level flag::get("doa_round_spawning")) {
        while (level flag::get("doa_round_paused") || is_true(level.hostmigrationtimer)) {
            waitframe(1);
        }
        if (level.var_8cff5775.var_23ce73 & var_612922db) {
            spot = [[ level.var_8cff5775.var_39e3fa99 ]]->function_21d1be3d(side);
            ai = function_24058346(spot);
            if (isdefined(ai)) {
                level.var_8cff5775.var_3ed31a82 = math::clamp(level.var_8cff5775.var_3ed31a82 - 1, 0, level.var_8cff5775.var_3ed31a82);
                wait(0.35);
            } else {
                wait(randomfloatrange(0.15, 0.35));
            }
        } else {
            wait(randomfloatrange(0.15, 0.5));
        }
    }
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 1, eflags: 0x2 linked
// Checksum 0xc8196c1b, Offset: 0xbc10
// Size: 0x298
function function_870f7b82(probability) {
    level endon(#"game_over", #"round_over");
    probability = math::clamp(probability, 0, 100);
    if (probability == 0) {
        return;
    }
    var_912bdf32 = getdvarint(#"hash_3679fe3f1521db3d", 5);
    var_c7befab = getdvarint(#"hash_2b73855c34966f6b", 12);
    minwaittime = getdvarint(#"hash_2209051f3a7463fc", 1);
    maxwaittime = getdvarint(#"hash_7150d4531dfb10c6", 5);
    var_5689c058 = undefined;
    while (level flag::get("doa_round_spawning")) {
        if (randomint(100) < probability) {
            var_49261ce3 = function_32d53491();
            if (var_49261ce3.size) {
                if (isdefined(var_5689c058) && var_49261ce3.size > 1 && isinarray(var_49261ce3, var_5689c058)) {
                    arrayremovevalue(var_49261ce3, var_5689c058);
                }
                var_5689c058 = var_49261ce3[randomint(var_49261ce3.size)];
                level.var_8cff5775.var_23ce73 = level.var_8cff5775.var_23ce73 & var_5689c058;
                var_936be0c2 = randomfloatrange(var_912bdf32, var_c7befab);
                wait(var_936be0c2);
                level.var_8cff5775.var_23ce73 = level.var_8cff5775.var_23ce73 & ~var_5689c058;
            }
        }
        wait(randomfloatrange(minwaittime, maxwaittime));
    }
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 0, eflags: 0x2 linked
// Checksum 0x5d69397b, Offset: 0xbeb0
// Size: 0x112
function function_cc48fee6() {
    var_30d7b69b = {};
    var_30d7b69b.var_dcf9fac7.var_30d7b69b = getdvarint(#"hash_4c0888d26878c503", 3);
    var_30d7b69b.var_39a29169.var_30d7b69b = getdvarint(#"hash_6bb8a71eee3d3d15", 47);
    var_30d7b69b.var_5bb9bdea.var_30d7b69b = 0;
    probability = 100;
    for (var_dcf9fac7 = var_30d7b69b.var_dcf9fac7; var_dcf9fac7; var_dcf9fac7--) {
        var_30d7b69b.var_5bb9bdea.var_30d7b69b = var_30d7b69b.var_5bb9bdea + int(level.var_8cff5775.var_8bf23c51 * probability / 100);
        probability = math::clamp(probability - var_30d7b69b.var_39a29169, 5, 100);
    }
    return var_30d7b69b;
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 1, eflags: 0x2 linked
// Checksum 0xea0b798f, Offset: 0xbfd0
// Size: 0x104
function function_70a9cb95(var_30d7b69b) {
    level.var_8cff5775.var_23ce73 = 0;
    var_dcf9fac7 = var_30d7b69b.var_dcf9fac7;
    var_39a29169 = var_30d7b69b.var_39a29169;
    probability = 100;
    while (var_dcf9fac7) {
        level thread function_870f7b82(probability);
        probability = probability - var_39a29169;
        var_dcf9fac7--;
    }
    level thread function_dc848b36("top");
    level thread function_dc848b36("left");
    level thread function_dc848b36("bottom");
    level thread function_dc848b36("right");
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 0, eflags: 0x2 linked
// Checksum 0xfca297bf, Offset: 0xc0e0
// Size: 0x2a
function function_c8462f96() {
    level.var_8cff5775.var_8f91d36b = 0;
    level.var_8cff5775.var_3ed31a82 = 0;
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 0, eflags: 0x2 linked
// Checksum 0xc7705949, Offset: 0xc118
// Size: 0x55c
function function_7655afe() {
    self notify("214f45353a3979d");
    self endon("214f45353a3979d");
    level endon(#"game_over", #"round_over");
    level flag::set("doa_round_spawning");
    level flag::clear("doa_round_over");
    starttime = gettime();
    var_d517bf3a = 1;
    if (level flag::get("challenge_round_spawnOverride")) {
        level.var_8cff5775.var_3ed31a82 = 0;
        level flag::wait_till_clear("challenge_round_spawnOverride");
        var_d517bf3a = level.var_8cff5775.var_6c58d51 > 0;
    }
    if (var_d517bf3a) {
        level.var_8cff5775.var_8bf23c51 = 20 + level.var_8cff5775.roundnumber * 2.5 + 180 * level.var_8cff5775.var_6c58d51;
        /#
            if (getdvarint(#"hash_5c718b756a54aaba", 0)) {
                level.var_8cff5775.var_8bf23c51 = 999999;
                [[ level.var_8cff5775.var_39e3fa99 ]]->function_6d5262dc(40);
            }
            if (getdvarint(#"hash_5d9faab41425ec06", 0)) {
                level.var_8cff5775.var_8bf23c51 = getdvarint(#"hash_5d9faab41425ec06", 0);
                level thread function_e10101e(getdvarint(#"hash_5d9faab41425ec06", 0) + 1);
            }
        #/
        var_319ab9be = function_cc48fee6();
        level function_70a9cb95(var_319ab9be);
        level.var_8cff5775.var_3ed31a82 = int(var_319ab9be.var_5bb9bdea / 0.35 * 0.35);
        level.var_8cff5775.var_8f91d36b = starttime + level.var_8cff5775.var_8bf23c51 * 1000;
        level.var_8cff5775.var_a8834e17 = level.var_8cff5775.var_8f91d36b - gettime();
        var_eb0fc859 = level.var_8cff5775.var_8bf23c51 / 4 * 1000;
        var_1ba263be = starttime + var_eb0fc859;
        var_6889287c = var_1ba263be + var_eb0fc859;
        var_dc22600b = var_6889287c + var_eb0fc859;
        level.var_8cff5775.var_654a3ea9 = 0;
        var_d4f1a9a3 = starttime;
        do {
            wait(1);
            time = gettime();
            if (time > level.var_8cff5775.var_8f91d36b && level.var_8cff5775.var_3ed31a82 > 0) {
                level.var_8cff5775.var_654a3ea9++;
            }
            if (var_d4f1a9a3 < var_1ba263be && time >= var_1ba263be) {
                level notify(#"hash_5b8b8bf728571b12");
            }
            if (var_d4f1a9a3 < var_6889287c && time >= var_6889287c) {
                level notify(#"hash_73d11f98f78c29be");
            }
            if (var_d4f1a9a3 < var_dc22600b && time >= var_dc22600b) {
                level notify(#"hash_c57f3f18a005e45");
            }
            var_d4f1a9a3 = time;
        } while(time < level.var_8cff5775.var_8f91d36b || level.var_8cff5775.var_3ed31a82 > 0);
    }
    level.var_8cff5775.var_23ce73 = 0;
    level flag::clear("doa_round_spawning");
    level notify(#"hash_7ebdbe412d2fed17");
    wait(1);
    while (level.var_8cff5775.var_dcbded2.size) {
        waitframe(1);
    }
    endtime = gettime();
    namespace_1e25ad94::function_f5f0c0f8("Round " + level.var_8cff5775.roundnumber + " took (" + (endtime - starttime) / 1000 + ") seconds to complete.");
}

// Namespace namespace_8c04284b/namespace_8c04284b
// Params 1, eflags: 0x2 linked
// Checksum 0xf2ae5872, Offset: 0xc680
// Size: 0x324
function function_41e097fc(var_e1dd1170) {
    level notify(#"round_over");
    level notify(#"hash_7b68a1d715669022");
    level.var_8cff5775.var_3ec3c9aa = 1;
    namespace_ec06fe4a::function_de70888a();
    level namespace_ec06fe4a::function_b6b79fd1(3);
    namespace_ec06fe4a::function_7ae4c183();
    level thread namespace_7f5aeb59::function_67f054d7();
    level waittill(#"hash_1b322de3d2e3e781");
    namespace_ec06fe4a::function_42304070();
    if (isdefined(level.var_8cff5775.var_39e3fa99)) {
        [[ level.var_8cff5775.var_39e3fa99 ]]->function_9f494a87();
        [[ level.var_8cff5775.var_39e3fa99 ]]->function_7ce9bb97();
        [[ level.var_8cff5775.var_39e3fa99 ]]->deactivate();
    }
    level notify(#"hash_7b68a1d715669022");
    level.var_8cff5775.var_23fd3659 = var_e1dd1170;
    level.var_8cff5775.var_f4cf4e3 = function_f15b9f04(level.var_8cff5775.var_23fd3659 * 4);
    level.var_8cff5775.zombie_health = function_962e9d92(level.var_8cff5775.var_23fd3659 * 4);
    namespace_4dae815d::function_e22d3978(level.var_8cff5775.var_23fd3659 * 4);
    foreach (player in getplayers()) {
        if (isdefined(player) && isdefined(player.var_8cff5775)) {
            player.var_8cff5775.var_87c1cd32 = level.var_8cff5775.roundnumber;
            player.var_8cff5775.var_b8232cd0 = level.var_8cff5775.roundnumber;
        }
    }
    namespace_250e9486::function_d1bc3f11(level.var_8cff5775.roundnumber, 1);
    level thread function_6d6bfe1f(level.var_8cff5775.var_23fd3659);
}
