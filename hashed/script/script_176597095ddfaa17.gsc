// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.gsc;
#using scripts\core_common\values_shared.gsc;
#using script_1cc417743d7c262d;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_d0ab5955;

// Namespace namespace_d0ab5955/namespace_d0ab5955
// Params 0, eflags: 0x5
// Checksum 0x76fb8613, Offset: 0x250
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_d07e35f920d16a8", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_d0ab5955/namespace_d0ab5955
// Params 0, eflags: 0x2 linked
// Checksum 0xaf34e168, Offset: 0x298
// Size: 0x1c2
function preinit() {
    if (!zm_utility::is_survival()) {
        return;
    }
    clientfield::register("scriptmover", "fogofwarflag", 1, 1, "int");
    clientfield::register("toplayer", "fogofwareffects", 1, 2, "int");
    clientfield::register("toplayer", "fogofwartimer", 1, 1, "int");
    clientfield::register("allplayers", "outsidetile", 1, 1, "int");
    clientfield::register("world", "tile_id", 1, 6, "int");
    if (!is_true(getgametypesetting(#"hash_59854c1f30538261"))) {
        return;
    }
    level.var_ac22a760 = struct::get_array(#"hash_3460aae6bb799a99", "content_key");
    for (index = 1; index <= level.var_ac22a760.size; index++) {
        level.var_ac22a760[index - 1].id = index;
    }
}

// Namespace namespace_d0ab5955/namespace_d0ab5955
// Params 0, eflags: 0x2 linked
// Checksum 0xf3413084, Offset: 0x468
// Size: 0x14c
function init() {
    if (!is_true(getgametypesetting(#"hash_59854c1f30538261"))) {
        return;
    }
    level.var_3814eac9 = getentarray("trigger_within_bounds", "classname");
    foreach (var_df0c0b31 in level.var_3814eac9) {
        var_df0c0b31.activated = 0;
    }
    level.var_f2211522 = getentarray("survival_fow", "script_noteworthy");
    callback::on_connect(&on_connect);
    callback::on_game_playing(&start);
}

// Namespace namespace_d0ab5955/namespace_d0ab5955
// Params 0, eflags: 0x6 linked
// Checksum 0xbc95b6b6, Offset: 0x5c0
// Size: 0x42
function private on_connect() {
    self val::set(#"hash_794019c675d0ae10", "disable_oob", 1);
    self.oob_start_time = -1;
}

// Namespace namespace_d0ab5955/namespace_d0ab5955
// Params 0, eflags: 0x2 linked
// Checksum 0x581a184f, Offset: 0x610
// Size: 0xe0
function start() {
    level thread function_dc15ad60();
    level thread function_e568ca74();
    var_ef325671 = getentarray("sr_boundary_clip", "targetname");
    foreach (var_b3a455bb in var_ef325671) {
        var_b3a455bb setforcenocull();
    }
}

// Namespace namespace_d0ab5955/namespace_d0ab5955
// Params 0, eflags: 0x2 linked
// Checksum 0x48b71f84, Offset: 0x6f8
// Size: 0x8c
function function_e568ca74() {
    level endon(#"hash_1c6770a6f6ea06b6");
    level flag::wait_till_clear(#"hash_4930756571725d11");
    var_123dc898 = getent("fow_border_all", "targetname");
    if (isdefined(var_123dc898)) {
        var_123dc898 clientfield::set("fogofwarflag", 1);
    }
}

// Namespace namespace_d0ab5955/namespace_d0ab5955
// Params 2, eflags: 0x0
// Checksum 0xba93d899, Offset: 0x790
// Size: 0x86
function function_1c5219e4(var_6874207, var_d001b56c) {
    var_df0c0b31 = getent(var_6874207, "targetname");
    var_9bdd487c = getent(var_d001b56c, "targetname");
    if (isdefined(var_df0c0b31) && isdefined(var_9bdd487c)) {
        var_df0c0b31.var_9bdd487c = var_9bdd487c;
    }
}

// Namespace namespace_d0ab5955/namespace_d0ab5955
// Params 2, eflags: 0x2 linked
// Checksum 0x32d7f3a5, Offset: 0x820
// Size: 0x2b4
function function_d4dec4e8(destination, str_targetname) {
    level.var_973f0101 = 1;
    if (isdefined(destination.contentgroups[#"hash_3460aae6bb799a99"])) {
        if (isdefined(str_targetname)) {
            foreach (var_87e97a7a in destination.contentgroups[#"hash_3460aae6bb799a99"]) {
                if (var_87e97a7a.targetname === str_targetname) {
                    var_6c486d1a = var_87e97a7a;
                    break;
                }
            }
        } else {
            var_6c486d1a = destination.contentgroups[#"hash_3460aae6bb799a99"][0];
        }
        if (isdefined(var_6c486d1a)) {
            var_6c486d1a.activated = 1;
            var_f6b2bc6f = getent(var_6c486d1a.targetname, "target");
            if (isdefined(var_f6b2bc6f)) {
                var_f6b2bc6f.activated = 1;
            }
            level clientfield::set("tile_id", var_6c486d1a.id);
            if (!isdefined(var_6c486d1a.var_5d62d655)) {
                var_6c486d1a.var_5d62d655 = util::spawn_model(var_6c486d1a.model, var_6c486d1a.origin, var_6c486d1a.angles);
            } else {
                var_6c486d1a.var_5d62d655 show();
            }
            if (isdefined(var_6c486d1a.script_noteworthy)) {
                if (!isdefined(var_6c486d1a.var_47f0063b)) {
                    var_6c486d1a.var_47f0063b = util::spawn_model(var_6c486d1a.script_noteworthy, var_6c486d1a.origin, var_6c486d1a.angles);
                } else {
                    var_6c486d1a.var_47f0063b show();
                }
                var_6c486d1a.var_47f0063b clientfield::set("fogofwarflag", 1);
            }
            var_6c486d1a.var_5d62d655 clientfield::set("fogofwarflag", 1);
        }
    }
}

// Namespace namespace_d0ab5955/namespace_d0ab5955
// Params 2, eflags: 0x2 linked
// Checksum 0xa97701aa, Offset: 0xae0
// Size: 0x1ac
function function_f1ad7968(destination, str_targetname) {
    if (isdefined(destination.contentgroups[#"hash_3460aae6bb799a99"])) {
        if (isdefined(str_targetname)) {
            foreach (var_87e97a7a in destination.contentgroups[#"hash_3460aae6bb799a99"]) {
                if (var_87e97a7a.targetname === str_targetname) {
                    var_6c486d1a = var_87e97a7a;
                    break;
                }
            }
        } else {
            var_6c486d1a = destination.contentgroups[#"hash_3460aae6bb799a99"][0];
        }
        if (isdefined(var_6c486d1a)) {
            var_6c486d1a.activated = 0;
            var_f6b2bc6f = getent(var_6c486d1a.targetname, "target");
            if (isdefined(var_f6b2bc6f)) {
                var_f6b2bc6f.activated = 0;
            }
            if (isdefined(var_6c486d1a.var_5d62d655)) {
                var_6c486d1a.var_5d62d655 hide();
            }
            if (isdefined(var_6c486d1a.var_47f0063b)) {
                var_6c486d1a.var_47f0063b hide();
            }
        }
    }
}

// Namespace namespace_d0ab5955/namespace_d0ab5955
// Params 2, eflags: 0x0
// Checksum 0xcf98fdd1, Offset: 0xc98
// Size: 0x194
function function_ac8a88de(var_6874207, *var_d0c31a32) {
    level.var_973f0101 = 1;
    var_df0c0b31 = getent(var_d0c31a32, "targetname");
    if (isdefined(var_df0c0b31)) {
        var_df0c0b31.activated = 1;
        foreach (var_ea0ed69c in level.var_ac22a760) {
            if (var_ea0ed69c.target == var_df0c0b31.targetname) {
                level clientfield::set("tile_id", var_ea0ed69c.id);
            }
        }
        if (isdefined(var_df0c0b31.var_9bdd487c)) {
            var_62567791 = getent(var_df0c0b31.var_9bdd487c.target, "targetname");
            if (isdefined(var_62567791)) {
                var_62567791 clientfield::set("fogofwarflag", 1);
            }
        }
        var_df0c0b31 thread function_fcf7c9c8();
    }
}

// Namespace namespace_d0ab5955/namespace_d0ab5955
// Params 0, eflags: 0x6 linked
// Checksum 0x10eabc7c, Offset: 0xe38
// Size: 0x6c
function private function_fcf7c9c8() {
    self endon(#"death");
    move_origin = self.origin + (0, 0, -20000);
    self moveto(move_origin, 3);
    wait(5);
    self delete();
}

// Namespace namespace_d0ab5955/namespace_d0ab5955
// Params 1, eflags: 0x2 linked
// Checksum 0x7311d65b, Offset: 0xeb0
// Size: 0xea
function function_3824d2dc(v_loc) {
    if (!isdefined(level.var_3814eac9)) {
        return true;
    }
    if (!isdefined(v_loc)) {
        v_loc = self.origin;
    }
    foreach (var_df0c0b31 in level.var_3814eac9) {
        if (!is_true(var_df0c0b31.activated)) {
            continue;
        }
        if (var_df0c0b31 istouching(v_loc)) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_d0ab5955/namespace_d0ab5955
// Params 0, eflags: 0x2 linked
// Checksum 0x673d0bf1, Offset: 0xfa8
// Size: 0x772
function function_dc15ad60() {
    level endoncallback(&cleanup_feedback, #"game_ended");
    level flag::wait_till_clear(#"hash_4930756571725d11");
    while (true) {
        if (is_true(level.var_973f0101)) {
            break;
        }
        waitframe(1);
    }
    var_39106ebf = [];
    var_f4d9a132 = gettime() + int(1 * 1000);
    var_549429b9 = int(3.33333 * 1000);
    var_3c43f4e0 = var_549429b9 * 2;
    var_10e74788 = 10;
    var_69a1706b = int(var_10e74788 / 3);
    var_2df437f5 = 0;
    for (i = 1; i <= var_69a1706b; i++) {
        var_2df437f5 += var_69a1706b * i;
    }
    while (true) {
        time = gettime();
        dodamage = time >= var_f4d9a132;
        var_6effa129 = arraycombine(getplayers(), getvehiclearray());
        foreach (entity in var_6effa129) {
            if (!isdefined(entity.var_6a2e2f41)) {
                entity.var_6a2e2f41 = gettime();
            }
            if (isplayer(entity) && (!isalive(entity) || entity scene::is_igc_active())) {
                entity clientfield::set("outsidetile", 0);
                entity hide_effects();
                continue;
            }
            if (!entity function_3824d2dc() && !is_true(entity.b_ignore_fow_damage) && isdefined(entity.maxhealth)) {
                player = undefined;
                vehicle = undefined;
                if (!isdefined(entity.var_9a1624b5)) {
                    entity.var_9a1624b5 = time;
                }
                elapsed_time = time - entity.var_9a1624b5;
                if (elapsed_time < var_549429b9) {
                    intensity = 1;
                } else if (elapsed_time < var_3c43f4e0) {
                    intensity = 2;
                } else {
                    intensity = 3;
                }
                var_727ff533 = entity.maxhealth / var_2df437f5;
                var_9d778583 = int(var_727ff533 * intensity);
                if (isplayer(entity)) {
                    entity clientfield::set("outsidetile", 1);
                    entity show_effects(intensity);
                    player = entity;
                }
                if (dodamage) {
                    if (isdefined(player)) {
                        if (is_true(player.var_e5f956c5)) {
                            var_9d778583 *= 2;
                        }
                        player dodamage(var_9d778583, player.origin, undefined, undefined, undefined, "MOD_TRIGGER_HURT", 8192);
                        player playsoundtoplayer(#"hash_11f49f9aedeeff5e", player);
                        player function_bc82f900(#"damage_light");
                        if (time >= player.var_6a2e2f41) {
                            player thread globallogic_audio::play_taacom_dialog("fogOfWarTrappedPlayer");
                            player.var_6a2e2f41 = time + int(240 * 1000);
                        }
                    } else if (isvehicle(entity)) {
                        vehicle = entity;
                        if (is_true(vehicle.var_e5f956c5)) {
                            var_9d778583 *= 2;
                        }
                        if (!is_false(vehicle.allowdeath) && var_9d778583 >= vehicle.health) {
                            occupants = vehicle getvehoccupants();
                            foreach (occupant in occupants) {
                                occupant unlink();
                            }
                        }
                        callback::callback(#"hash_473c82ed6a4bc96c", {#vehicle:vehicle});
                        vehicle dodamage(var_9d778583, vehicle.origin, undefined, undefined, undefined, "MOD_EXPLOSIVE", 8192);
                    }
                }
                continue;
            }
            if (isplayer(entity)) {
                entity clientfield::set("outsidetile", 0);
                entity hide_effects();
            }
            entity.var_9a1624b5 = undefined;
        }
        if (dodamage) {
            var_f4d9a132 = gettime() + int(1 * 1000);
        }
        waitframe(1);
    }
}

// Namespace namespace_d0ab5955/namespace_d0ab5955
// Params 1, eflags: 0x6 linked
// Checksum 0x185215b4, Offset: 0x1728
// Size: 0x98
function private cleanup_feedback(*notifyhash) {
    foreach (player in getplayers()) {
        player hide_effects();
    }
}

// Namespace namespace_d0ab5955/namespace_d0ab5955
// Params 1, eflags: 0x2 linked
// Checksum 0x56471c7d, Offset: 0x17c8
// Size: 0x9c
function show_effects(*intensity) {
    if (self clientfield::get_to_player("fogofwareffects") == 0 && !self isinmovemode("ufo", "noclip")) {
        self clientfield::set_to_player("fogofwartimer", 1);
    }
    self clientfield::set_to_player("fogofwareffects", 2);
}

// Namespace namespace_d0ab5955/namespace_d0ab5955
// Params 0, eflags: 0x2 linked
// Checksum 0xa6294d9, Offset: 0x1870
// Size: 0x6c
function hide_effects() {
    if (self clientfield::get_to_player("fogofwareffects") != 0) {
        self clientfield::set_to_player("fogofwartimer", 0);
    }
    self clientfield::set_to_player("fogofwareffects", 0);
}

