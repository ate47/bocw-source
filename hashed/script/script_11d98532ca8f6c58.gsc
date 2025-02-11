#using script_758226507b1afa11;
#using scripts\core_common\array_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\struct;
#using scripts\core_common\util_shared;
#using scripts\core_common\vehicle_shared;

#namespace namespace_b4dbc583;

// Namespace namespace_b4dbc583/namespace_b4dbc583
// Params 0, eflags: 0x0
// Checksum 0x7c1118d0, Offset: 0x3d0
// Size: 0x24
function init_flags() {
    level flag::init("train_car_force_end");
}

// Namespace namespace_b4dbc583/namespace_b4dbc583
// Params 0, eflags: 0x0
// Checksum 0x397111c7, Offset: 0x400
// Size: 0x1ec
function function_d02dc0ba() {
    a_ents[#"vehicle 1"] = function_433aff96("ghost_station_car_engine");
    a_ents[#"vehicle 2"] = function_433aff96("ghost_station_car_02");
    a_ents[#"vehicle 3"] = function_433aff96("ghost_station_car_03");
    a_ents[#"hash_5c059a141887868b"] = function_433aff96("ghost_station_car_04");
    a_ents[#"hash_5c059914188784d8"] = function_433aff96("ghost_station_car_05");
    a_ents[#"hash_5c059c14188789f1"] = function_433aff96("ghost_station_car_06");
    a_ents[#"hash_5c059b141887883e"] = function_433aff96("ghost_station_car_07");
    a_ents[#"hash_5c05961418877fbf"] = function_433aff96("ghost_station_car_08");
    a_ents[#"hash_5c05951418877e0c"] = function_433aff96("ghost_station_car_09");
    a_ents[#"hash_65157d25ae522c7c"] = function_433aff96("ghost_station_car_caboose");
    return a_ents;
}

// Namespace namespace_b4dbc583/namespace_b4dbc583
// Params 0, eflags: 0x0
// Checksum 0x4e5bcc0d, Offset: 0x5f8
// Size: 0x18c
function function_9e2e1f19() {
    a_ents[#"vehicle 1"] = function_433aff96("ghost_station_2_car_engine");
    a_ents[#"vehicle 2"] = function_433aff96("ghost_station_2_car_02");
    a_ents[#"vehicle 3"] = function_433aff96("ghost_station_2_car_03");
    a_ents[#"hash_5c059a141887868b"] = function_433aff96("ghost_station_2_car_04");
    a_ents[#"hash_5c059914188784d8"] = function_433aff96("ghost_station_2_car_05");
    a_ents[#"hash_5c059c14188789f1"] = function_433aff96("ghost_station_2_car_06");
    a_ents[#"hash_5c059b141887883e"] = function_433aff96("ghost_station_2_car_07");
    a_ents[#"hash_5c05961418877fbf"] = function_433aff96("ghost_station_2_car_caboose");
    return a_ents;
}

// Namespace namespace_b4dbc583/namespace_b4dbc583
// Params 1, eflags: 0x0
// Checksum 0xbb4b647e, Offset: 0x790
// Size: 0x3d4
function function_61fc8e84(var_e24a3c09 = 0) {
    min = 1;
    max = 4;
    self[#"vehicle 1"] function_4df0bafb(self[#"vehicle 1"].animnode, randomintrange(min, max));
    self[#"vehicle 2"] function_4df0bafb(self[#"vehicle 2"].animnode, randomintrange(min, max));
    self[#"vehicle 3"] function_4df0bafb(self[#"vehicle 3"].animnode, randomintrange(min, max));
    self[#"hash_5c059a141887868b"] function_4df0bafb(self[#"hash_5c059a141887868b"].animnode, randomintrange(min, max));
    self[#"hash_5c059914188784d8"] function_4df0bafb(self[#"hash_5c059914188784d8"].animnode, randomintrange(min, max));
    self[#"hash_5c059c14188789f1"] function_4df0bafb(self[#"hash_5c059c14188789f1"].animnode, randomintrange(min, max));
    self[#"hash_5c059b141887883e"] function_4df0bafb(self[#"hash_5c059b141887883e"].animnode, randomintrange(min, max));
    if (is_true(var_e24a3c09)) {
        self[#"hash_5c05961418877fbf"] function_4df0bafb(self[#"hash_5c05961418877fbf"].animnode, randomintrange(min, max));
        self[#"hash_5c05951418877e0c"] function_4df0bafb(self[#"hash_5c05951418877e0c"].animnode, randomintrange(min, max));
        self[#"hash_65157d25ae522c7c"] function_4df0bafb(self[#"hash_65157d25ae522c7c"].animnode, randomintrange(min, max));
        return;
    }
    self[#"hash_5c05961418877fbf"] function_4df0bafb(self[#"hash_5c05961418877fbf"].animnode, randomintrange(min, max));
}

// Namespace namespace_b4dbc583/namespace_b4dbc583
// Params 1, eflags: 0x0
// Checksum 0x149d5566, Offset: 0xb70
// Size: 0x158
function function_433aff96(targetname) {
    train = vehicle::simple_spawn_single(targetname);
    train.var_8bc03d56 = getent(train.linkto, "linkname");
    train.var_8bc03d56 enablelinkto();
    train.var_8bc03d56 linkto(train);
    train.animnode = spawn("script_model", train.origin + (0, 0, 70));
    train.animnode setmodel("tag_origin");
    train.animnode.angles = train.angles;
    train.animnode linkto(train);
    train thread function_4df0bafb(train.animnode, randomintrange(2, 6));
    return train;
}

// Namespace namespace_b4dbc583/namespace_b4dbc583
// Params 1, eflags: 0x0
// Checksum 0x8047715a, Offset: 0xcd0
// Size: 0x34
function function_a6404b66(var_6bb2ecd7) {
    self linkto(var_6bb2ecd7, "tag_origin", (0, 0, 0), (0, 0, 0));
}

// Namespace namespace_b4dbc583/namespace_b4dbc583
// Params 2, eflags: 0x0
// Checksum 0x35257231, Offset: 0xd10
// Size: 0x198
function function_4df0bafb(var_6bb2ecd7, num) {
    if (!isdefined(var_6bb2ecd7)) {
        return;
    }
    var_c7281407 = function_436805cd();
    var_c7281407 = array::randomize(var_c7281407);
    self.var_34cf0f0b = [];
    for (i = 1; i < num + 1; i++) {
        var_eed40cce = var_c7281407[i - 1];
        if (level.var_91ee8248.size < level.var_5679f947) {
            if (issubstr(var_eed40cce, "lady")) {
                actor = spawner::simple_spawn_single("vista_train_civ_f", &function_a6404b66, var_6bb2ecd7);
            } else {
                actor = spawner::simple_spawn_single("vista_train_civ_m", &function_a6404b66, var_6bb2ecd7);
            }
            waitframe(1);
            var_6bb2ecd7 thread scene::play(var_eed40cce, actor);
            if (isdefined(actor)) {
                self.var_34cf0f0b[self.var_34cf0f0b.size] = actor;
                level.var_91ee8248[level.var_91ee8248.size] = actor;
            }
        }
    }
}

// Namespace namespace_b4dbc583/namespace_b4dbc583
// Params 0, eflags: 0x0
// Checksum 0xb3ece56b, Offset: 0xeb0
// Size: 0xbe
function function_436805cd() {
    var_af2c6a8f = [];
    for (i = 1; i < 4; i++) {
        animation = "scene_z_stk_train_vista_lady0" + i + "_loop";
        var_af2c6a8f[var_af2c6a8f.size] = animation;
    }
    for (i = 1; i < 10; i++) {
        animation = "scene_z_stk_train_vista_guy0" + i + "_loop";
        var_af2c6a8f[var_af2c6a8f.size] = animation;
    }
    animation = "scene_z_stk_train_vista_guy10_loop";
    var_af2c6a8f[var_af2c6a8f.size] = animation;
    return var_af2c6a8f;
}

// Namespace namespace_b4dbc583/namespace_b4dbc583
// Params 1, eflags: 0x0
// Checksum 0x2cca1c2d, Offset: 0xf78
// Size: 0x134
function function_44e94ea4(a_ents) {
    foreach (train in a_ents) {
        if (isdefined(train.var_34cf0f0b)) {
            foreach (guy in train.var_34cf0f0b) {
                if (isdefined(guy)) {
                    guy delete();
                }
            }
        }
    }
    waitframe(1);
    function_1eaaceab(level.var_91ee8248);
}

// Namespace namespace_b4dbc583/namespace_b4dbc583
// Params 6, eflags: 0x0
// Checksum 0x6302c0fb, Offset: 0x10b8
// Size: 0x404
function function_26c67eeb(var_8387d95e, var_403c008b, var_12e2a31c, speed, *passengers, force_end) {
    var_49360986 = util::spawn_model(var_403c008b.model, var_12e2a31c.origin);
    var_49360986.bottom = util::spawn_model("stk_train_exterior_bottom_01", var_12e2a31c.origin);
    var_49360986.bottom linkto(var_49360986);
    var_49360986.targetname = var_403c008b.targetname;
    var_49360986.angles = var_12e2a31c.angles;
    var_37d06fc9 = util::spawn_model("tag_origin", var_49360986.origin, var_49360986.angles);
    var_49360986 linkto(var_37d06fc9);
    if (isdefined(var_403c008b.linkto)) {
        linkedents = getentarray(var_403c008b.linkto, "linkname");
        foreach (ent in linkedents) {
            if (isdefined(ent.script_noteworthy)) {
                switch (ent.script_noteworthy) {
                case #"hash_6e57d2c4d5b3732b":
                    if (ent.script_parameters === "do_damage") {
                        if (!isdefined(ent.original_origin)) {
                            ent.original_origin = ent.origin;
                        }
                        if (!isdefined(ent.original_angles)) {
                            ent.original_angles = ent.angles;
                        }
                        var_403c008b.var_c116fb71 = ent;
                        var_49360986.var_c116fb71 = ent;
                        ent enablelinkto();
                        ent linkto(var_49360986);
                        ent thread function_33cbff44();
                    } else {
                        ent delete();
                    }
                    break;
                case #"clip":
                    if (ent.script_parameters === "do_damage") {
                        if (!isdefined(ent.original_origin)) {
                            ent.original_origin = ent.origin;
                        }
                        if (!isdefined(ent.original_angles)) {
                            ent.original_angles = ent.angles;
                        }
                        var_403c008b.clip = ent;
                        var_49360986.clip = ent;
                        ent linkto(var_49360986);
                    } else {
                        ent delete();
                    }
                    break;
                default:
                    break;
                }
            }
        }
    }
    if (is_true(force_end)) {
        var_37d06fc9 thread train_car_force_end(var_49360986);
    }
    var_37d06fc9 thread function_d0b79cca(var_49360986, var_12e2a31c, speed, passengers);
    if (!isdefined(level.var_e0c474ad)) {
        level.var_e0c474ad = 0;
    }
    level.var_e0c474ad++;
}

// Namespace namespace_b4dbc583/namespace_b4dbc583
// Params 0, eflags: 0x0
// Checksum 0xbc5115a0, Offset: 0x14c8
// Size: 0xba
function function_33cbff44() {
    self notify("5f9af72a5e67c7b8");
    self endon("5f9af72a5e67c7b8");
    self endon(#"death");
    while (true) {
        s_result = self waittill(#"trigger");
        e_activator = s_result.activator;
        if (isalive(e_activator)) {
            if (isai(e_activator)) {
                continue;
            }
            if (isplayer(e_activator)) {
            }
        }
    }
}

// Namespace namespace_b4dbc583/namespace_b4dbc583
// Params 1, eflags: 0x0
// Checksum 0x376dcc76, Offset: 0x1590
// Size: 0x54
function train_car_force_end(var_49360986) {
    self endon(#"death");
    level flag::wait_till("train_car_force_end");
    self thread function_5d649161(var_49360986);
}

// Namespace namespace_b4dbc583/namespace_b4dbc583
// Params 1, eflags: 0x0
// Checksum 0x58dff84, Offset: 0x15f0
// Size: 0x1d0
function function_5d649161(var_49360986) {
    if (isdefined(var_49360986.clip)) {
        var_49360986.clip unlink();
        var_49360986.clip dontinterpolate();
        var_49360986.clip.origin = var_49360986.clip.original_origin;
        var_49360986.clip.angles = var_49360986.clip.original_angles;
    }
    if (isdefined(var_49360986.var_c116fb71)) {
        var_49360986.var_c116fb71 unlink();
        var_49360986.var_c116fb71 dontinterpolate();
        var_49360986.var_c116fb71.origin = var_49360986.var_c116fb71.original_origin;
        var_49360986.var_c116fb71.angles = var_49360986.var_c116fb71.original_angles;
    }
    if (isdefined(var_49360986.var_34cf0f0b)) {
        array::delete_all(var_49360986.var_34cf0f0b);
    }
    if (isdefined(var_49360986.animnode)) {
        var_49360986.animnode delete();
    }
    if (isdefined(var_49360986.bottom)) {
        var_49360986.bottom delete();
    }
    if (isdefined(var_49360986)) {
        var_49360986 delete();
    }
    if (isdefined(self)) {
        self delete();
    }
    level.var_e0c474ad--;
}

// Namespace namespace_b4dbc583/namespace_b4dbc583
// Params 4, eflags: 0x0
// Checksum 0xc59a8458, Offset: 0x17c8
// Size: 0x264
function function_d0b79cca(var_49360986, var_403c008b, *var_12e2a31c, speed = 600) {
    level endon(#"train_car_force_end");
    self endon(#"death");
    wait 0.05;
    point = struct::get(var_12e2a31c.target);
    time = distance(var_12e2a31c.origin, point.origin) / speed;
    while (true) {
        prev_point = point;
        self moveto(point.origin, time);
        self rotateto(point.angles, time);
        if (var_403c008b.targetname !== "train_car_03" && isdefined(point.script_noteworthy)) {
            if (issubstr(point.script_noteworthy, "vfx")) {
            } else {
                switch (point.script_noteworthy) {
                case #"hash_4f6e67d0d79e009d":
                    level.var_2c3f2c7d += 1;
                    break;
                case #"hash_6b37faebe309d06a":
                    level.var_2c3f2c7d -= 1;
                    break;
                }
            }
        }
        wait time;
        point = struct::get(prev_point.target);
        time = distance(prev_point.origin, point.origin) / speed;
        if (!isdefined(point.target)) {
            break;
        }
    }
    self thread function_5d649161(var_403c008b);
}

