// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\audio_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\array_shared.csc;
#using scripts\core_common\struct.csc;

#namespace skipto;

// Namespace skipto/skipto
// Params 0, eflags: 0x5
// Checksum 0xcceba3bf, Offset: 0x1b0
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"skipto", &preinit, &postinit, undefined, undefined);
}

// Namespace skipto/skipto
// Params 0, eflags: 0x6 linked
// Checksum 0xc0c47970, Offset: 0x208
// Size: 0x184
function private preinit() {
    level flag::init("level_has_skiptos");
    level flag::init("level_has_skipto_branches");
    level.var_28c22d88 = [];
    clientfield::register("toplayer", "catch_up_transition", 1, 1, "counter", &catch_up_transition, 0, 0);
    clientfield::register("world", "set_last_map_dvar", 1, 1, "counter", &set_last_map_dvar, 0, 0);
    level.var_46d8992a = "_default";
    function_7d6f76df("_default");
    function_7d6f76df("no_game");
    function_16ad9e86(#"gamedata/tables/cp/cp_mapmissions.csv", util::get_map_name());
    level thread function_e377e813();
    level thread function_17cc9832();
}

// Namespace skipto/skipto
// Params 0, eflags: 0x6 linked
// Checksum 0xe25c242c, Offset: 0x398
// Size: 0x1c
function private postinit() {
    level thread handle();
}

// Namespace skipto/skipto
// Params 6, eflags: 0x0
// Checksum 0x8215c453, Offset: 0x3c0
// Size: 0x354
function add(skipto, var_e784b061, var_dde96e3b, var_48a6b9bd, var_a9e3715c, cleanup_func) {
    if (is_dev(skipto)) {
        errormsg("<unknown string>");
        return;
    }
    if (isdefined(level.var_70b370e5)) {
        if (isdefined(level.var_c55064fd[level.var_70b370e5])) {
            if (!isdefined(level.var_c55064fd[level.var_70b370e5].var_89f09f8d)) {
                level.var_c55064fd[level.var_70b370e5].var_89f09f8d = [];
            } else if (!isarray(level.var_c55064fd[level.var_70b370e5].var_89f09f8d)) {
                level.var_c55064fd[level.var_70b370e5].var_89f09f8d = array(level.var_c55064fd[level.var_70b370e5].var_89f09f8d);
            }
            level.var_c55064fd[level.var_70b370e5].var_89f09f8d[level.var_c55064fd[level.var_70b370e5].var_89f09f8d.size] = skipto;
        }
        var_672c77b1 = level.var_70b370e5;
    } else {
        if (isdefined(level.var_c55064fd[level.var_46d8992a])) {
            if (!isdefined(level.var_c55064fd[level.var_46d8992a].var_89f09f8d)) {
                level.var_c55064fd[level.var_46d8992a].var_89f09f8d = [];
            } else if (!isarray(level.var_c55064fd[level.var_46d8992a].var_89f09f8d)) {
                level.var_c55064fd[level.var_46d8992a].var_89f09f8d = array(level.var_c55064fd[level.var_46d8992a].var_89f09f8d);
            }
            level.var_c55064fd[level.var_46d8992a].var_89f09f8d[level.var_c55064fd[level.var_46d8992a].var_89f09f8d.size] = skipto;
        }
        var_672c77b1 = level.var_46d8992a;
    }
    level.var_70b370e5 = skipto;
    if (!isdefined(var_e784b061)) {
        assert(isdefined(var_e784b061), "<unknown string>");
    }
    struct = function_7d6f76df(skipto, var_e784b061, var_dde96e3b, var_48a6b9bd, var_a9e3715c, cleanup_func, var_672c77b1, undefined);
    struct.public = 1;
    level flag::set("level_has_skiptos");
}

// Namespace skipto/skipto
// Params 8, eflags: 0x2 linked
// Checksum 0x8bc8702a, Offset: 0x720
// Size: 0x354
function function_9c003a50(skipto, var_e784b061, var_dde96e3b, var_48a6b9bd, var_a9e3715c, cleanup_func, var_672c77b1, var_89f09f8d) {
    if (!isdefined(level.var_46d8992a)) {
        level.var_46d8992a = skipto;
    }
    if (is_dev(skipto)) {
        errormsg("<unknown string>");
        return;
    }
    if (!isdefined(var_672c77b1)) {
        if (isdefined(level.var_c55064fd[level.var_46d8992a])) {
            if (!isdefined(level.var_c55064fd[level.var_46d8992a].var_89f09f8d)) {
                level.var_c55064fd[level.var_46d8992a].var_89f09f8d = [];
            } else if (!isarray(level.var_c55064fd[level.var_46d8992a].var_89f09f8d)) {
                level.var_c55064fd[level.var_46d8992a].var_89f09f8d = array(level.var_c55064fd[level.var_46d8992a].var_89f09f8d);
            }
            level.var_c55064fd[level.var_46d8992a].var_89f09f8d[level.var_c55064fd[level.var_46d8992a].var_89f09f8d.size] = skipto;
        }
        var_672c77b1 = level.var_46d8992a;
    } else if (isdefined(level.var_c55064fd[var_672c77b1])) {
        if (!isdefined(level.var_c55064fd[var_672c77b1].var_89f09f8d)) {
            level.var_c55064fd[var_672c77b1].var_89f09f8d = [];
        } else if (!isarray(level.var_c55064fd[var_672c77b1].var_89f09f8d)) {
            level.var_c55064fd[var_672c77b1].var_89f09f8d = array(level.var_c55064fd[var_672c77b1].var_89f09f8d);
        }
        level.var_c55064fd[var_672c77b1].var_89f09f8d[level.var_c55064fd[var_672c77b1].var_89f09f8d.size] = skipto;
    }
    level.var_70b370e5 = skipto;
    if (!isdefined(var_e784b061)) {
        assert(isdefined(var_e784b061), "<unknown string>");
    }
    struct = function_7d6f76df(skipto, var_e784b061, var_dde96e3b, var_48a6b9bd, var_a9e3715c, cleanup_func, var_672c77b1, var_89f09f8d);
    struct.public = 1;
    level flag::set("level_has_skiptos");
    level flag::set("level_has_skipto_branches");
}

// Namespace skipto/skipto
// Params 8, eflags: 0x0
// Checksum 0x5484a92b, Offset: 0xa80
// Size: 0xdc
function add_dev(skipto, var_e784b061, var_dde96e3b, var_48a6b9bd, var_a9e3715c, cleanup_func, var_672c77b1, var_89f09f8d) {
    if (!isdefined(level.var_46d8992a)) {
        level.var_46d8992a = skipto;
    }
    if (is_dev(skipto)) {
        struct = function_7d6f76df(skipto, var_e784b061, var_dde96e3b, var_48a6b9bd, var_a9e3715c, cleanup_func, var_672c77b1, var_89f09f8d);
        struct.var_f36d5247 = 1;
        return;
    }
    errormsg("<unknown string>");
}

// Namespace skipto/skipto
// Params 8, eflags: 0x2 linked
// Checksum 0xe0b8292f, Offset: 0xb68
// Size: 0xc8
function function_7d6f76df(msg, var_e784b061, var_dde96e3b, var_48a6b9bd, var_a9e3715c, cleanup_func, var_672c77b1, var_89f09f8d) {
    assert(!isdefined(level._loadstarted), "<unknown string>");
    msg = tolower(msg);
    struct = function_5d3e3cf9(msg, var_e784b061, var_dde96e3b, var_48a6b9bd, var_a9e3715c, cleanup_func, var_672c77b1, var_89f09f8d);
    level.var_c55064fd[msg] = struct;
    return struct;
}

// Namespace skipto/skipto
// Params 8, eflags: 0x0
// Checksum 0xe406823f, Offset: 0xc38
// Size: 0x182
function change(msg, var_e784b061, var_dde96e3b, var_48a6b9bd, var_a9e3715c, cleanup_func, var_672c77b1, var_89f09f8d) {
    struct = level.var_c55064fd[msg];
    if (isdefined(var_e784b061)) {
        struct.var_2c183249 = var_e784b061;
    }
    if (isdefined(var_dde96e3b)) {
        struct.var_4c644f8d = var_dde96e3b;
    }
    if (isdefined(var_48a6b9bd)) {
        struct.var_48a6b9bd = var_48a6b9bd;
    }
    if (isdefined(var_a9e3715c)) {
        struct.var_7dd8ffdb = var_a9e3715c;
    }
    if (isdefined(cleanup_func)) {
        struct.cleanup_func = cleanup_func;
    }
    if (isdefined(var_672c77b1)) {
        if (!isdefined(struct.var_672c77b1)) {
            struct.var_672c77b1 = [];
        } else if (!isarray(struct.var_672c77b1)) {
            struct.var_672c77b1 = array(struct.var_672c77b1);
        }
        struct.var_672c77b1[struct.var_672c77b1.size] = var_672c77b1;
    }
    if (isdefined(var_89f09f8d)) {
        struct.var_89f09f8d = strtok(var_89f09f8d, ",");
        struct.next = struct.var_89f09f8d;
    }
}

// Namespace skipto/skipto
// Params 1, eflags: 0x0
// Checksum 0xc4aa48e0, Offset: 0xdc8
// Size: 0x1c
function function_b0cce1ee(func) {
    level.var_8252160a = func;
}

// Namespace skipto/skipto
// Params 8, eflags: 0x2 linked
// Checksum 0xb2af4ca5, Offset: 0xdf0
// Size: 0x1b2
function function_5d3e3cf9(msg, var_e784b061, var_dde96e3b, var_48a6b9bd, var_a9e3715c, cleanup_func, var_672c77b1, var_89f09f8d) {
    struct = spawnstruct();
    struct.name = msg;
    struct.var_2c183249 = var_e784b061;
    struct.var_4c644f8d = var_dde96e3b;
    struct.var_48a6b9bd = var_48a6b9bd;
    struct.var_7dd8ffdb = var_a9e3715c;
    struct.cleanup_func = cleanup_func;
    struct.next = [];
    struct.prev = [];
    struct.var_67ea79fe = "";
    struct.var_672c77b1 = [];
    if (isdefined(var_672c77b1)) {
        if (!isdefined(struct.var_672c77b1)) {
            struct.var_672c77b1 = [];
        } else if (!isarray(struct.var_672c77b1)) {
            struct.var_672c77b1 = array(struct.var_672c77b1);
        }
        struct.var_672c77b1[struct.var_672c77b1.size] = var_672c77b1;
    }
    struct.var_89f09f8d = [];
    if (isdefined(var_89f09f8d)) {
        struct.var_89f09f8d = strtok(var_89f09f8d, ",");
        struct.next = struct.var_89f09f8d;
    }
    struct.var_80fa98d9 = [];
    return struct;
}

// Namespace skipto/skipto
// Params 0, eflags: 0x2 linked
// Checksum 0xfe9fb5d6, Offset: 0xfb0
// Size: 0x6d4
function function_a59cd1c9() {
    foreach (struct in level.var_c55064fd) {
        if (is_true(struct.public)) {
            if (struct.var_672c77b1.size) {
                foreach (var_672c77b1 in struct.var_672c77b1) {
                    if (isdefined(level.var_c55064fd[var_672c77b1])) {
                        if (!isinarray(level.var_c55064fd[var_672c77b1].next, struct.name)) {
                            if (!isdefined(level.var_c55064fd[var_672c77b1].next)) {
                                level.var_c55064fd[var_672c77b1].next = [];
                            } else if (!isarray(level.var_c55064fd[var_672c77b1].next)) {
                                level.var_c55064fd[var_672c77b1].next = array(level.var_c55064fd[var_672c77b1].next);
                            }
                            level.var_c55064fd[var_672c77b1].next[level.var_c55064fd[var_672c77b1].next.size] = struct.name;
                        }
                        continue;
                    }
                    if (!isdefined(level.var_c55064fd[#"_default"].next)) {
                        level.var_c55064fd[#"_default"].next = [];
                    } else if (!isarray(level.var_c55064fd[#"_default"].next)) {
                        level.var_c55064fd[#"_default"].next = array(level.var_c55064fd[#"_default"].next);
                    }
                    level.var_c55064fd[#"_default"].next[level.var_c55064fd[#"_default"].next.size] = struct.name;
                }
            } else {
                if (!isdefined(level.var_c55064fd[#"_default"].next)) {
                    level.var_c55064fd[#"_default"].next = [];
                } else if (!isarray(level.var_c55064fd[#"_default"].next)) {
                    level.var_c55064fd[#"_default"].next = array(level.var_c55064fd[#"_default"].next);
                }
                level.var_c55064fd[#"_default"].next[level.var_c55064fd[#"_default"].next.size] = struct.name;
            }
            foreach (var_89f09f8d in struct.var_89f09f8d) {
                if (isdefined(level.var_c55064fd[var_89f09f8d])) {
                    if (!isdefined(level.var_c55064fd[var_89f09f8d].prev)) {
                        level.var_c55064fd[var_89f09f8d].prev = [];
                    } else if (!isarray(level.var_c55064fd[var_89f09f8d].prev)) {
                        level.var_c55064fd[var_89f09f8d].prev = array(level.var_c55064fd[var_89f09f8d].prev);
                    }
                    level.var_c55064fd[var_89f09f8d].prev[level.var_c55064fd[var_89f09f8d].prev.size] = struct.name;
                }
            }
        }
    }
    foreach (struct in level.var_c55064fd) {
        if (is_true(struct.public)) {
            if (struct.next.size < 1) {
                if (!isdefined(struct.next)) {
                    struct.next = [];
                } else if (!isarray(struct.next)) {
                    struct.next = array(struct.next);
                }
                struct.next[struct.next.size] = "_exit";
            }
        }
    }
}

// Namespace skipto/skipto
// Params 1, eflags: 0x2 linked
// Checksum 0x783ab360, Offset: 0x1690
// Size: 0x60
function is_dev(skipto) {
    substr = tolower(getsubstr(skipto, 0, 4));
    if (substr == "dev_") {
        return true;
    }
    return false;
}

// Namespace skipto/skipto
// Params 0, eflags: 0x0
// Checksum 0x13bd705c, Offset: 0x16f8
// Size: 0x22
function function_88b0c3ba() {
    return level flag::get("level_has_skiptos");
}

// Namespace skipto/skipto
// Params 0, eflags: 0x2 linked
// Checksum 0x49a6fe64, Offset: 0x1728
// Size: 0x62
function function_5a61e21a() {
    skiptos = tolower(getskiptos());
    result = strtok(skiptos, ",");
    return result;
}

// Namespace skipto/skipto
// Params 0, eflags: 0x2 linked
// Checksum 0x88192e51, Offset: 0x1798
// Size: 0x1c0
function handle() {
    function_955e50d();
    function_a59cd1c9();
    function_4b70d35f();
    skiptos = function_5a61e21a();
    foreach (var_d3440450 in skiptos) {
        if (isdefined(level.var_c55064fd[var_d3440450])) {
            var_48a6b9bd = level.var_c55064fd[var_d3440450].var_48a6b9bd;
            if (isdefined(var_48a6b9bd) && !isinarray(skiptos, var_48a6b9bd)) {
                if (!isdefined(skiptos)) {
                    skiptos = [];
                } else if (!isarray(skiptos)) {
                    skiptos = array(skiptos);
                }
                skiptos[skiptos.size] = var_48a6b9bd;
            }
        }
    }
    function_51726ac8(skiptos, 1);
    while (true) {
        level waittill(#"skiptos_changed");
        level thread function_4fcf7c1();
    }
}

// Namespace skipto/skipto
// Params 0, eflags: 0x6 linked
// Checksum 0x6a89d6bc, Offset: 0x1960
// Size: 0x3c
function private function_4fcf7c1() {
    waitframe(1);
    skiptos = function_5a61e21a();
    function_51726ac8(skiptos, 0);
}

// Namespace skipto/skipto
// Params 1, eflags: 0x0
// Checksum 0xb3dd339c, Offset: 0x19a8
// Size: 0x1c
function function_f52ec735(func) {
    level.var_8252160a = func;
}

// Namespace skipto/skipto
// Params 1, eflags: 0x0
// Checksum 0x4cd348d2, Offset: 0x19d0
// Size: 0x1c
function function_46d8992a(skipto) {
    level.var_46d8992a = skipto;
}

// Namespace skipto/skipto
// Params 3, eflags: 0x2 linked
// Checksum 0x655d0d25, Offset: 0x19f8
// Size: 0xf4
function function_abaeef51(str, var_d5779ab5, var_54e5e046) {
    sarray = strtok(str, var_d5779ab5);
    var_cc407339 = "";
    first = 1;
    foreach (s in sarray) {
        if (!first) {
            var_cc407339 += var_54e5e046;
        }
        first = 0;
        var_cc407339 += s;
    }
    return var_cc407339;
}

// Namespace skipto/skipto
// Params 3, eflags: 0x2 linked
// Checksum 0x293a0b4a, Offset: 0x1af8
// Size: 0x152
function function_16ad9e86(table, levelname, var_4469951e = "") {
    index = 0;
    for (row = tablelookuprow(table, index); isdefined(row); row = tablelookuprow(table, index)) {
        if (row[0] == levelname && row[1] == var_4469951e) {
            skipto = row[2];
            var_672c77b1 = row[3];
            var_89f09f8d = row[4];
            var_89f09f8d = function_abaeef51(var_89f09f8d, "+", ",");
            locstr = row[5];
            function_9c003a50(skipto, &function_9e68c55e, locstr, undefined, var_672c77b1, var_89f09f8d);
        }
        index++;
    }
}

// Namespace skipto/skipto
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x1c58
// Size: 0x4
function function_9e68c55e() {
    
}

// Namespace skipto/skipto
// Params 0, eflags: 0x2 linked
// Checksum 0x3ba49402, Offset: 0x1c68
// Size: 0x24
function function_955e50d() {
    level flag::wait_till("skipto_player_connected");
}

// Namespace skipto/skipto
// Params 0, eflags: 0x2 linked
// Checksum 0x25ac8289, Offset: 0x1c98
// Size: 0x74
function function_e377e813() {
    if (!level flag::exists("skipto_player_connected")) {
        level flag::init("skipto_player_connected");
    }
    callback::add_callback(#"on_localclient_connect", &on_player_connect);
}

// Namespace skipto/skipto
// Params 1, eflags: 0x2 linked
// Checksum 0xdd75d0c9, Offset: 0x1d18
// Size: 0x2c
function on_player_connect(*localclientnum) {
    level flag::set("skipto_player_connected");
}

// Namespace skipto/skipto
// Params 2, eflags: 0x2 linked
// Checksum 0x3604fd2f, Offset: 0x1d50
// Size: 0x2b0
function function_51726ac8(objectives, starting) {
    function_fc434ec9();
    if (starting) {
        foreach (objective in objectives) {
            if (isdefined(level.var_c55064fd[objective])) {
                function_60288de7(level.var_c55064fd[objective].prev, starting);
            }
        }
    } else {
        foreach (skipto in level.var_c55064fd) {
            if (is_true(skipto.var_9dd617f2) && !isinarray(objectives, skipto.name)) {
                function_60288de7(skipto.name, starting);
            }
        }
    }
    if (isdefined(level.var_8252160a)) {
        foreach (name in objectives) {
            thread [[ level.var_8252160a ]](name);
        }
    }
    function_d037bbec(objectives, starting);
    level.var_b28c2c3a = level.var_28c22d88[0];
    level.var_28c22d88 = objectives;
    level notify(#"objective_changed", {#objectives:level.var_28c22d88});
}

// Namespace skipto/skipto
// Params 1, eflags: 0x2 linked
// Checksum 0x537f7cf0, Offset: 0x2008
// Size: 0xcc
function function_4b70d35f(*objectives) {
    foreach (skipto in level.var_c55064fd) {
        if (!is_true(skipto.var_a9880cee)) {
            skipto.var_a9880cee = 1;
            if (isdefined(skipto.var_d177b2f)) {
                thread [[ skipto.var_d177b2f ]](skipto.name);
            }
        }
    }
}

// Namespace skipto/skipto
// Params 2, eflags: 0x2 linked
// Checksum 0x92c66ff9, Offset: 0x20e0
// Size: 0x1ec
function function_d037bbec(name, starting) {
    if (isarray(name)) {
        foreach (element in name) {
            function_d037bbec(element, starting);
        }
        return;
    }
    if (isdefined(level.var_c55064fd[name])) {
        if (!is_true(level.var_c55064fd[name].var_9dd617f2)) {
            if (!isinarray(level.var_28c22d88, name)) {
                if (!isdefined(level.var_28c22d88)) {
                    level.var_28c22d88 = [];
                } else if (!isarray(level.var_28c22d88)) {
                    level.var_28c22d88 = array(level.var_28c22d88);
                }
                level.var_28c22d88[level.var_28c22d88.size] = name;
            }
            level notify(name + "_init");
            level.var_c55064fd[name].var_9dd617f2 = 1;
            function_d8ddef0(name, starting);
            level thread function_b7e9926c(name, starting);
        }
    }
}

// Namespace skipto/skipto
// Params 2, eflags: 0x6 linked
// Checksum 0xff47bd45, Offset: 0x22d8
// Size: 0x94
function private function_b7e9926c(name, starting) {
    if (starting) {
        if (isdefined(level.var_c55064fd[name].var_4c644f8d)) {
            [[ level.var_c55064fd[name].var_4c644f8d ]](name);
        }
    }
    if (isdefined(level.var_c55064fd[name].var_2c183249)) {
        [[ level.var_c55064fd[name].var_2c183249 ]](name);
    }
}

// Namespace skipto/skipto
// Params 0, eflags: 0x2 linked
// Checksum 0xacc2cc5, Offset: 0x2378
// Size: 0x82
function function_fc434ec9() {
    foreach (skipto in level.var_c55064fd) {
        skipto.var_a6ddf9d6 = 0;
    }
}

// Namespace skipto/skipto
// Params 2, eflags: 0x2 linked
// Checksum 0x6b68e2e1, Offset: 0x2408
// Size: 0x29c
function function_60288de7(name, starting) {
    if (isarray(name)) {
        foreach (element in name) {
            function_60288de7(element, starting);
        }
        return;
    }
    if (isdefined(level.var_c55064fd[name])) {
        cleaned = 0;
        if (is_true(level.var_c55064fd[name].var_9dd617f2)) {
            cleaned = 1;
            level.var_c55064fd[name].var_9dd617f2 = 0;
            if (isinarray(level.var_28c22d88, name)) {
                arrayremovevalue(level.var_28c22d88, name);
            }
            if (isdefined(level.var_c55064fd[name].cleanup_func)) {
                thread [[ level.var_c55064fd[name].cleanup_func ]](name, starting);
            }
            function_9b847391(name, starting);
            level notify(name + "_terminate");
        }
        if (starting && !is_true(level.var_c55064fd[name].var_a6ddf9d6)) {
            level.var_c55064fd[name].var_a6ddf9d6 = 1;
            function_60288de7(level.var_c55064fd[name].prev, starting);
            if (!cleaned) {
                if (isdefined(level.var_c55064fd[name].cleanup_func)) {
                    thread [[ level.var_c55064fd[name].cleanup_func ]](name, starting);
                }
                function_9b847391(name, starting);
            }
        }
    }
}

// Namespace skipto/skipto
// Params 7, eflags: 0x2 linked
// Checksum 0xeb20caa6, Offset: 0x26b0
// Size: 0x7c
function set_last_map_dvar(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    missionname = util::get_map_name();
    setdvar(#"last_map", missionname);
}

// Namespace skipto/skipto
// Params 2, eflags: 0x6 linked
// Checksum 0xb69ba8c1, Offset: 0x2738
// Size: 0x14
function private function_d8ddef0(*objective, *starting) {
    
}

// Namespace skipto/skipto
// Params 2, eflags: 0x6 linked
// Checksum 0xb71a53e2, Offset: 0x2758
// Size: 0x14
function private function_9b847391(*objective, *starting) {
    
}

// Namespace skipto/skipto
// Params 7, eflags: 0x2 linked
// Checksum 0x5473df0a, Offset: 0x2778
// Size: 0x5c
function catch_up_transition(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    postfx::playpostfxbundle(#"hash_4c8b84239d3d1056");
}

// Namespace skipto/skipto
// Params 0, eflags: 0x2 linked
// Checksum 0xa7af597d, Offset: 0x27e0
// Size: 0x1c
function function_17cc9832() {
    level waittill(#"aar");
}

