// Atian COD Tools GSC CW decompiler test
#using script_dc59353021baee1;
#using script_746267f0669c40ae;
#using script_1a9763988299e68d;
#using script_2a5bf5b4a00cee0d;
#using script_40f967ad5d18ea74;
#using script_47851dbeea22fe66;
#using script_164a456ce05c3483;
#using script_4d748e58ce25b60c;
#using script_5f20d3b434d24884;
#using script_1b0b07ff57d1dde3;
#using script_1ee011cd0961afd7;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_17dcb1172e441bf6;
#using script_74a56359b7d02ab6;
#using script_5549681e1669c11a;
#using script_1306aefca48fc8b6;
#using script_73ad7687b437e468;
#using script_48e04a393ec6d855;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace namespace_1dc364c0;

// Namespace namespace_1dc364c0/namespace_1dc364c0
// Params 0, eflags: 0x2 linked
// Checksum 0x528d29f5, Offset: 0x268
// Size: 0x8c
function init() {
    clientfield::register("scriptmover", "dungeon_set_roomID", 1, 8, "int");
    clientfield::register("scriptmover", "dungeon_set_explore_state", 1, 2, "int");
    namespace_c004634e::init();
    level.var_40450ea6 = &function_e71841a;
}

// Namespace namespace_1dc364c0/namespace_1dc364c0
// Params 0, eflags: 0x2 linked
// Checksum 0xfeee4921, Offset: 0x300
// Size: 0x3ca
function function_cb06f399() {
    if (isdefined(self.var_cd42b9c0)) {
        self.var_cd42b9c0 delete();
    }
    if (isdefined(self.var_d95571e6)) {
        foreach (item in self.var_d95571e6) {
            if (isdefined(item.fx)) {
                item.fx delete();
            }
            item delete();
        }
        self.var_d95571e6 = [];
    }
    if (isdefined(self.var_a5177d12)) {
        foreach (item in self.var_a5177d12) {
            if (isdefined(item.fx)) {
                item.fx delete();
            }
            item delete();
        }
        self.var_a5177d12 = [];
    }
    if (isdefined(self.loot)) {
        foreach (item in self.loot) {
            item.pickup = undefined;
        }
        self.loot = [];
    }
    if (isdefined(self.var_f807cf8f)) {
        foreach (npc in self.var_f807cf8f) {
            if (isdefined(npc)) {
                npc thread namespace_ec06fe4a::function_570729f0(0.1);
            }
        }
        self.loot = [];
    }
    if (isdefined(self.wallbuy)) {
        foreach (item in self.wallbuy) {
            if (isdefined(item.trigger)) {
                if (isdefined(item.trigger.var_ee2cd39c)) {
                    item.trigger.var_ee2cd39c delete();
                }
                item.trigger delete();
            }
        }
        self.wallbuy = [];
    }
}

// Namespace namespace_1dc364c0/namespace_1dc364c0
// Params 0, eflags: 0x2 linked
// Checksum 0x158a2588, Offset: 0x6d8
// Size: 0xf30
function function_e71841a() {
    level.var_8cff5775.var_4cdaff39[self.var_a1152600.var_94ac342f]++;
    self.var_d8d445c4 = &function_cb06f399;
    self.var_d95571e6 = [];
    self.var_a5177d12 = [];
    self.loot = [];
    self.var_f807cf8f = [];
    self.wallbuy = [];
    args = strtok(self.targetname, "rg_room_");
    self clientfield::set("dungeon_set_roomID", int(args[0]) + 1);
    var_f445d580 = self namespace_f27a9d0d::function_5165998("type", "room_center");
    if (isdefined(var_f445d580.script_parameters)) {
        if (issubstr(var_f445d580.script_parameters, "tweakcam")) {
            self.var_4d30576a = 1;
            args = strtok(var_f445d580.script_parameters, ";");
            if (args.size > 1) {
                self.var_95773ba5 = int(float(args[1]) * (32 - 1));
            } else {
                self.var_95773ba5 = 32 - 1;
            }
        }
    }
    var_eebf1bb0 = self namespace_f27a9d0d::function_cee62dac("type", "room_connector");
    foreach (tag in var_eebf1bb0) {
        level.var_8cff5775.var_d1501142[level.var_8cff5775.var_d1501142.size] = tag.origin;
    }
    var_c9bdb63f = self namespace_f27a9d0d::function_cee62dac("type", "spawner");
    foreach (var_f6198c5b in var_c9bdb63f) {
        if (var_f6198c5b.script_noteworthy === "generator") {
            a_toks = strtok(var_f6198c5b.script_string, ",");
            var_44eec847 = a_toks[0];
            if (a_toks.size >= 2) {
                radius = int(a_toks[1]);
            } else {
                radius = 800;
            }
            if (a_toks.size >= 3) {
                height = int(a_toks[2]);
            }
            if (a_toks.size >= 4) {
                var_8a14a619 = int(a_toks[3]);
            }
            generator = namespace_c85a46fe::function_4c16ce2c(var_44eec847, var_f6198c5b.origin, var_f6198c5b.angles, radius, height, var_8a14a619, 2);
            if (isdefined(generator)) {
                [[ generator ]]->function_75df0623(self);
            }
        } else if (var_f6198c5b.script_noteworthy === "npc") {
            if (!isdefined(var_f6198c5b.script_string)) {
                continue;
            }
            var_49a15185 = namespace_ff8b8430::function_d7c5adee(var_f6198c5b.script_string);
            if (isdefined(var_49a15185)) {
                goalradius = 40;
                if (isdefined(var_f6198c5b.script_int)) {
                    goalradius = int(var_f6198c5b.script_int);
                }
                ai = namespace_ff8b8430::function_db55a448(var_49a15185, var_f6198c5b.origin);
                if (isdefined(ai)) {
                    ai.var_f906062a.ai = 1;
                    ai.var_76cb41b3.ai = 1;
                    ai.goalradius = goalradius;
                    self.var_f807cf8f[self.var_f807cf8f.size] = ai;
                    ai.room.ai = self;
                    ai.engagementdistance.ai = 1200;
                    ai.var_a84a3d40.ai = function_a3f6cdac(ai.engagementdistance);
                }
            }
        }
    }
    var_c9bdb63f = self namespace_f27a9d0d::function_cee62dac("type", "lootspawn");
    foreach (var_f6198c5b in var_c9bdb63f) {
        level.var_8cff5775.var_51400a66[level.var_8cff5775.var_51400a66.size] = var_f6198c5b;
    }
    var_c9bdb63f = self namespace_f27a9d0d::function_cee62dac("type", "trap");
    foreach (var_f6198c5b in var_c9bdb63f) {
        level.var_8cff5775.var_f5a14209[level.var_8cff5775.var_f5a14209.size] = var_f6198c5b;
    }
    var_c9bdb63f = self namespace_f27a9d0d::function_cee62dac("type", "floordecor");
    foreach (var_f6198c5b in var_c9bdb63f) {
        if (var_f6198c5b.script_noteworthy === "dungeon_door") {
            add = 1;
            foreach (door in level.var_8cff5775.var_a8a563fc) {
                distsq = distancesquared(var_f6198c5b.origin, door.origin);
                if (distsq < function_a3f6cdac(512)) {
                    add = 0;
                    break;
                }
            }
            if (add) {
                level.var_8cff5775.var_a8a563fc[level.var_8cff5775.var_a8a563fc.size] = var_f6198c5b;
            }
        } else if (var_f6198c5b.script_noteworthy === "teleporter") {
            level.var_8cff5775.var_c2648383[level.var_8cff5775.var_c2648383.size] = var_f6198c5b;
        } else {
            self.var_a5177d12[self.var_a5177d12.size] = namespace_c004634e::function_6a09928b(var_f6198c5b, #"floor");
        }
    }
    var_c9bdb63f = self namespace_f27a9d0d::function_cee62dac("type", "walldecor");
    foreach (var_f6198c5b in var_c9bdb63f) {
        self.var_d95571e6[self.var_d95571e6.size] = namespace_c004634e::function_6a09928b(var_f6198c5b, #"hash_5e76c2f62c1e1615");
    }
    var_c9bdb63f = self namespace_f27a9d0d::function_cee62dac("type", "wallbuy");
    foreach (var_f6198c5b in var_c9bdb63f) {
        if (!isdefined(var_f6198c5b.script_parameters)) {
            continue;
        }
        var_5e62902b = spawnstruct();
        args = strtok(var_f6198c5b.script_parameters, ";");
        var_5e62902b.origin.var_5e62902b = var_f6198c5b.origin;
        var_5e62902b.type.var_5e62902b = args[0];
        if (var_5e62902b.type == #"hash_367003e34deb561") {
            /#
                assert(args.size >= 4, "<unknown string>");
            #/
            width = int(args[1]);
            length = int(args[2]);
            height = int(args[3]);
            var_5e62902b.trigger.var_5e62902b = namespace_ec06fe4a::function_b5731057("trigger_box", var_5e62902b.origin, 2, length, height, width);
            /#
                assert(isdefined(var_f6198c5b.script_noteworthy), "<unknown string>");
            #/
            var_5e62902b.room.var_5e62902b = namespace_5a917022::function_c8892b0f(var_f6198c5b.script_noteworthy);
            /#
                assert(isdefined(var_5e62902b.room), "<unknown string>");
            #/
            if (isdefined(args[4])) {
                var_5e62902b.trigger.var_ee2cd39c = namespace_ec06fe4a::function_e22ae9b3(var_5e62902b.origin, args[4], var_f6198c5b.angles, "room_warp" + var_5e62902b.origin);
                if (isdefined(var_5e62902b.trigger.var_ee2cd39c)) {
                    var_5e62902b.trigger.var_ee2cd39c notsolid();
                    var_5e62902b.trigger.var_ee2cd39c hide();
                    if (isdefined(args[5])) {
                        scale = float(args[5]);
                        var_5e62902b.trigger.var_ee2cd39c setscale(scale);
                    }
                }
            }
            var_5e62902b.trigger.var_472c86f9 = 0;
            var_5e62902b.trigger.var_4200bfbf = [];
            foreach (var_6d929c4c in var_c9bdb63f) {
                if (isdefined(var_6d929c4c.script_parameters)) {
                    continue;
                }
                if (var_6d929c4c.targetname === var_f6198c5b.target) {
                    if (!isdefined(var_5e62902b.trigger.var_4200bfbf)) {
                        var_5e62902b.trigger.var_4200bfbf = [];
                    } else if (!isarray(var_5e62902b.trigger.var_4200bfbf)) {
                        var_5e62902b.trigger.var_4200bfbf = array(var_5e62902b.trigger.var_4200bfbf);
                    }
                    var_5e62902b.trigger.var_4200bfbf[var_5e62902b.trigger.var_4200bfbf.size] = var_6d929c4c;
                }
            }
            var_5e62902b.trigger thread namespace_5a917022::function_23ea6695(var_5e62902b.trigger, var_5e62902b.room);
        }
        self.wallbuy[self.wallbuy.size] = var_5e62902b;
    }
}
