// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\flag_shared.gsc;

#namespace namespace_13fefac0;

// Namespace namespace_13fefac0/namespace_13fefac0
// Params 0, eflags: 0x0
// Checksum 0xda396f2d, Offset: 0xb8
// Size: 0x34
function init() {
    level thread function_26ecdeeb();
    level thread function_8e536d77();
}

// Namespace namespace_13fefac0/namespace_13fefac0
// Params 0, eflags: 0x0
// Checksum 0xb411a5fe, Offset: 0xf8
// Size: 0xa4
function function_26ecdeeb() {
    self notify("19ba4246a0d44eb1");
    self endon("19ba4246a0d44eb1");
    for (count = 0; 1; count = 0) {
        wait(randomfloatrange(5, 35));
        if (function_feb0a774() > 1.1) {
            count++;
            if (count >= 5) {
                function_17cf7de1(1);
                return;
            }
            continue;
        }
    }
}

// Namespace namespace_13fefac0/namespace_13fefac0
// Params 0, eflags: 0x0
// Checksum 0x4ee8d985, Offset: 0x1a8
// Size: 0xa7a
function function_8e536d77() {
    self notify("3c12f3aea776c15e");
    self endon("3c12f3aea776c15e");
    var_7db82908 = [18:{#keytype:4, #trace:21, #threshold:5.5, #key:#"hash_164e590374876a39"}, 17:{#keytype:4, #trace:20, #threshold:5.5, #key:#"hash_5873106a43bbf0a9"}, 16:{#keytype:4, #trace:19, #threshold:5.5, #key:#"hash_2873049796893c2"}, 15:{#keytype:4, #trace:18, #threshold:5.5, #key:#"hash_71fab2192fa2537d"}, 14:{#keytype:4, #trace:17, #threshold:5.5, #key:#"hash_1f866ae0a3a62832"}, 13:{#keytype:4, #trace:16, #threshold:5.5, #key:#"hash_2aab2762450675b4"}, 12:{#keytype:4, #trace:15, #threshold:5.5, #key:#"hash_59e3029d696683fa"}, 11:{#keytype:4, #trace:14, #threshold:5.5, #key:#"hash_4cbba40de74aa531"}, 10:{#keytype:4, #trace:13, #threshold:5.5, #key:#"hash_31b5b9e273560fa9"}, 9:{#keytype:4, #trace:12, #threshold:5.5, #key:#"hash_6be8efea7e9a9b0f"}, 8:{#keytype:4, #trace:11, #threshold:5.5, #key:#"hash_15dc4c705c20e0db"}, 7:{#keytype:4, #trace:10, #threshold:5.5, #key:#"hash_16a3b3072a1b1e64"}, 6:{#keytype:3, #trace:9, #threshold:2.1, #key:#"hash_29745170b0d7f97"}, 5:{#keytype:3, #trace:8, #threshold:2.1, #key:#"hash_6767c669a9321f55"}, 4:{#keytype:3, #trace:7, #threshold:2.1, #key:#"hash_25b1fd96e365b875"}, 3:{#mode:0, #keytype:1, #trace:6, #threshold:2.1, #key:#"hash_4ad8c9ef00dd61c3"}, 2:{#mode:1, #keytype:1, #trace:5, #threshold:2.1, #key:#"hash_4a9ebeef00abd6cb"}, 1:{#mode:0, #keytype:2, #trace:4, #threshold:600, #key:#"hash_3f0689f4ecc2fbab"}, 0:{#mode:1, #keytype:2, #trace:3, #threshold:400, #key:#"hash_3cccb7d9e336696a"}];
    while (1) {
        wait(randomfloatrange(5, 35));
        var_760d7bc4 = 0;
        var_b4320b5b = function_7a2da789();
        foreach (item in var_7db82908) {
            if ((isdefined(item.mode) ? item.mode : currentsessionmode()) != currentsessionmode()) {
                continue;
            }
            val = 0;
            switch (item.keytype) {
            case 1:
                val = getdvarfloat(item.key, 0);
                break;
            case 2:
                val = getdvarint(item.key, 0);
                break;
            case 3:
                val = isdefined(function_82c5e33d(item.key)) ? function_82c5e33d(item.key) : 0;
                break;
            case 4:
                if (isdefined(var_b4320b5b)) {
                    val = isdefined(var_b4320b5b[item.key]) ? var_b4320b5b[item.key] : 0;
                }
                break;
            }
            if (val >= item.threshold) {
                function_17cf7de1(item.trace);
                var_760d7bc4 = 1;
            }
        }
        if (var_760d7bc4) {
            return 1;
        }
    }
}

// Namespace namespace_13fefac0/namespace_13fefac0
// Params 1, eflags: 0x0
// Checksum 0x7ef3e9df, Offset: 0xc30
// Size: 0x130
function function_35cb919f(params) {
    if (!isplayer(params.eattacker) || !isdefined(self.spawn_pos)) {
        return;
    }
    var_3749a388 = self.spawn_pos.var_d51f4e2d;
    if (!isdefined(var_3749a388)) {
        return;
    }
    n_current_time = gettime();
    if (n_current_time - var_3749a388 < int(1 * 1000)) {
        n_distance = distance(self.spawn_pos.origin, self.origin);
        if (n_distance > 1000) {
            if (!isdefined(level.var_11f03ada)) {
                if (!isdefined(level.var_11f03ada)) {
                    level.var_11f03ada = 0;
                }
                level thread function_b36f8acc();
            }
            level.var_11f03ada++;
        }
    }
}

// Namespace namespace_13fefac0/namespace_13fefac0
// Params 0, eflags: 0x0
// Checksum 0x36d74bdb, Offset: 0xd68
// Size: 0x96
function function_b36f8acc() {
    level endon(#"end_game", #"hash_61e567fec60cf9b9");
    wait(5);
    if (level.var_11f03ada >= 10) {
        function_17cf7de1(22);
        level flag::set(#"hash_61e567fec60cf9b9");
    }
    level.var_11f03ada = undefined;
}

