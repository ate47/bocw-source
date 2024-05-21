// Atian COD Tools GSC CW decompiler test
#using scripts\zm\ai\zm_ai_hulk.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using script_1940fc077a028a81;
#using script_3411bb48d41bd3b;
#using script_3357acf79ce92f4b;
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace namespace_45b55437;

// Namespace namespace_45b55437/namespace_45b55437
// Params 0, eflags: 0x5
// Checksum 0xe27ba3d, Offset: 0x138
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_7d755ebddd333af6", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_45b55437/namespace_45b55437
// Params 0, eflags: 0x2 linked
// Checksum 0xe3e20b3a, Offset: 0x180
// Size: 0xf4
function preinit() {
    spawner::add_archetype_spawn_function(#"hulk", &function_a8e554a7);
    clientfield::register("scriptmover", "hs_heal_station_cf", 1, 1, "int");
    level.var_36bc0c68 = &function_36bc0c68;
    level.var_36f62b58 = [];
    for (i = 0; i < 4; i++) {
        station = spawn("script_model", (0, 0, 0));
        station.var_4f67a9d8 = 0;
        level.var_36f62b58[level.var_36f62b58.size] = station;
    }
}

// Namespace namespace_45b55437/namespace_45b55437
// Params 0, eflags: 0x2 linked
// Checksum 0x8ad2ee19, Offset: 0x280
// Size: 0x9c
function function_a8e554a7() {
    function_db7f78a1();
    self flag::set(#"hash_7b1f9f26f086bf39");
    self.ai.var_870d0893 = 1;
    setup_awareness(self);
    self.var_95ee6823 = 0.3;
    self callback::function_d8abfc3d(#"on_ai_killed", &function_914f5e7);
}

// Namespace namespace_45b55437/namespace_45b55437
// Params 0, eflags: 0x6 linked
// Checksum 0x2f55b1a1, Offset: 0x328
// Size: 0x32
function private function_db7f78a1() {
    blackboard::createblackboardforentity(self);
    self.___archetypeonanimscriptedcallback = &function_4668e5c8;
}

// Namespace namespace_45b55437/namespace_45b55437
// Params 1, eflags: 0x6 linked
// Checksum 0x7106caf4, Offset: 0x368
// Size: 0x2c
function private function_4668e5c8(entity) {
    entity.__blackboard = undefined;
    entity function_db7f78a1();
}

// Namespace namespace_45b55437/namespace_45b55437
// Params 1, eflags: 0x6 linked
// Checksum 0xced77fc, Offset: 0x3a0
// Size: 0x8c
function private function_36bc0c68(var_c165d3f1) {
    if (isdefined(var_c165d3f1)) {
        awareness::function_c241ef9a(self, var_c165d3f1, 10);
    }
    self.var_958e7ee4 = 1;
    self.var_eb3258b = 1.5;
    self.wander_radius = 300;
    self callback::function_d8abfc3d(#"hash_4afe635f36531659", &function_e0569aac);
}

// Namespace namespace_45b55437/namespace_45b55437
// Params 1, eflags: 0x6 linked
// Checksum 0x889b2b26, Offset: 0x438
// Size: 0x54
function private function_e0569aac(*entity) {
    if (self.current_state.name === #"wander") {
        self namespace_85745671::function_9758722(#"run");
    }
}

// Namespace namespace_45b55437/namespace_45b55437
// Params 1, eflags: 0x6 linked
// Checksum 0xabab4921, Offset: 0x498
// Size: 0x244
function private setup_awareness(entity) {
    entity.fovcosine = 0.5;
    entity.maxsightdistsqrd = sqr(1000);
    entity.has_awareness = 1;
    entity.ignorelaststandplayers = 1;
    entity.var_1267fdea = 1;
    self callback::function_d8abfc3d(#"on_ai_damage", &awareness::function_5f511313);
    self callback::function_d8abfc3d(#"hash_4afe635f36531659", &function_2d6a2f29);
    awareness::register_state(entity, #"wander", &function_f15c97d9, &function_9e9747be, &awareness::function_b264a0bc, undefined, &awareness::function_555d960b);
    awareness::register_state(entity, #"investigate", &function_901d8509, &function_592c1713, &awareness::function_34162a25, undefined, &awareness::function_a360dd00);
    awareness::register_state(entity, #"chase", &function_56c1d8bd, &function_69a0630b, &awareness::function_b9f81e8b, &function_eabb6f2f);
    awareness::set_state(entity, #"wander");
    entity callback::function_d8abfc3d(#"hash_10ab46b52df7967a", &function_bf7037e9);
    entity thread awareness::function_fa6e010d();
}

// Namespace namespace_45b55437/namespace_45b55437
// Params 1, eflags: 0x6 linked
// Checksum 0x4fdcf481, Offset: 0x6e8
// Size: 0x360
function private function_2d6a2f29(*entity) {
    if (self.current_state.name === #"wander") {
        function_1eaaceab(self.var_4dfe3675);
        if (self.var_4dfe3675.size > 3) {
            self.var_4dfe3675 = arraysortclosest(self.var_4dfe3675, self.origin);
            for (i = self.var_4dfe3675.size; i > self.var_886fb230; i--) {
                if (!isdefined(self.var_4dfe3675[i])) {
                    continue;
                }
                self.var_4dfe3675[i] callback::callback(#"hash_10ab46b52df7967a");
                self.var_4dfe3675[i] = -1;
            }
            arrayremovevalue(self.var_4dfe3675, -1);
        }
        return;
    }
    if (self.current_state.name === #"chase") {
        if (isarray(self.var_4dfe3675)) {
            function_1eaaceab(self.var_4dfe3675);
            var_1b6d19cb = [];
            foreach (ent_num, struct in self.var_f7c25ec3) {
                ent = getentbynum(ent_num);
                if (namespace_85745671::is_player_valid(ent)) {
                    var_1b6d19cb[var_1b6d19cb.size] = ent;
                }
            }
            foreach (zombie in self.var_4dfe3675) {
                if (zombie.current_state.name === #"wander" && !isdefined(zombie.favoriteenemy)) {
                    var_c50b055c = undefined;
                    if (var_1b6d19cb.size) {
                        var_c50b055c = arraygetclosest(zombie.origin, var_1b6d19cb);
                    } else if (isdefined(self.favoriteenemy)) {
                        var_c50b055c = self.favoriteenemy;
                    }
                    if (isdefined(var_c50b055c)) {
                        awareness::function_c241ef9a(zombie, var_c50b055c, 10);
                    }
                }
            }
        }
    }
}

// Namespace namespace_45b55437/namespace_45b55437
// Params 1, eflags: 0x2 linked
// Checksum 0x8c6e95e9, Offset: 0xa50
// Size: 0x84
function function_bf7037e9(*params) {
    self endon(#"death");
    if (isdefined(self.attackable)) {
        namespace_85745671::function_2b925fa5(self);
    }
    self.var_98f1f37c = 1;
    function_5b676fe6(self);
    self kill(undefined, undefined, undefined, undefined, 0, 1);
}

// Namespace namespace_45b55437/namespace_45b55437
// Params 1, eflags: 0x2 linked
// Checksum 0x2ffee8ef, Offset: 0xae0
// Size: 0x16c
function function_f15c97d9(entity) {
    entity.var_f7c25ec3 = [];
    self.var_9f6112bb = 1;
    entity.awarenesslevelcurrent = "unaware";
    entity.var_eb5eeb0f = [];
    entity flag::clear(#"hash_796c46c58710430a");
    entity.favoriteenemy = undefined;
    entity.var_41611e5c = undefined;
    function_5b676fe6(entity);
    if (entity.health >= entity.maxhealth) {
        entity notify(#"hash_3f015eab8b2c125a");
    }
    if (entity zm_ai_hulk::function_e0487da2()) {
        entity thread function_e3ea1f6f(entity);
    } else if (ispointonnavmesh(entity.origin, entity) && !is_true(entity.var_7496eca2)) {
        entity thread awareness::function_3bac247(entity);
    }
    entity callback::function_d8abfc3d(#"awareness_event", &awareness::function_cf2fab43);
}

// Namespace namespace_45b55437/namespace_45b55437
// Params 1, eflags: 0x2 linked
// Checksum 0x4d3d2e7a, Offset: 0xc58
// Size: 0xd6
function function_e3ea1f6f(entity) {
    entity endon(#"death", #"state_changed");
    while (true) {
        flag::wait_till_clear(#"hash_624e5d5dfb7f742b");
        goal = function_c8417113(entity);
        if (flag::get(#"hash_624e5d5dfb7f742b")) {
            continue;
        }
        if (!isdefined(goal)) {
            goal = entity.origin;
        }
        entity namespace_e292b080::zombieupdategoal(goal);
        waitframe(1);
    }
}

// Namespace namespace_45b55437/namespace_45b55437
// Params 1, eflags: 0x2 linked
// Checksum 0xd7eb4d42, Offset: 0xd38
// Size: 0x1de
function function_9e9747be(entity) {
    if (isdefined(entity.enemy)) {
        var_e91a592a = entity awareness::function_c91092d2(entity.enemy, entity.var_1267fdea) || entity seerecently(entity.enemy, 1) && namespace_85745671::function_142c3c86(entity.enemy);
        var_7be806db = entity attackedrecently(entity.enemy, 1);
        var_8bbedf63 = entity.enemy attackedrecently(entity, 1);
        if (var_e91a592a || var_7be806db || var_8bbedf63) {
            entity.favoriteenemy = entity.enemy;
            entity.var_5aaa7f76 = entity.favoriteenemy.origin;
        }
    }
    if (isdefined(entity.favoriteenemy)) {
        awareness::set_state(entity, #"chase");
        return;
    }
    if (isdefined(entity.var_b4b8ad5f) && distance2dsquared(entity.var_b4b8ad5f.position, entity.origin) < sqr(2500)) {
        awareness::set_state(entity, #"investigate");
        return;
    }
}

// Namespace namespace_45b55437/namespace_45b55437
// Params 1, eflags: 0x2 linked
// Checksum 0x27e51ecc, Offset: 0xf20
// Size: 0xc
function function_901d8509(*entity) {
    
}

// Namespace namespace_45b55437/namespace_45b55437
// Params 1, eflags: 0x2 linked
// Checksum 0x15f992c8, Offset: 0xf38
// Size: 0xc4
function function_592c1713(entity) {
    player = awareness::function_d7fedde2(self);
    if (isdefined(player) && distance2dsquared(player.origin, self.origin) < sqr(2500)) {
        entity.favoriteenemy = player;
        awareness::set_state(entity, #"chase");
        return;
    }
    awareness::set_state(entity, #"wander");
}

// Namespace namespace_45b55437/namespace_45b55437
// Params 2, eflags: 0x2 linked
// Checksum 0xa1350165, Offset: 0x1008
// Size: 0xf8
function function_a7eadb40(entity, target) {
    n_players = getplayers().size;
    if (!isdefined(target) || n_players <= 1) {
        return;
    }
    if (!isdefined(entity.var_c6c4dded)) {
        entity.var_c6c4dded = [];
    }
    if (!isdefined(entity.var_c6c4dded)) {
        entity.var_c6c4dded = [];
    } else if (!isarray(entity.var_c6c4dded)) {
        entity.var_c6c4dded = array(entity.var_c6c4dded);
    }
    if (!isinarray(entity.var_c6c4dded, target)) {
        entity.var_c6c4dded[entity.var_c6c4dded.size] = target;
    }
}

// Namespace namespace_45b55437/namespace_45b55437
// Params 2, eflags: 0x2 linked
// Checksum 0x7f736fef, Offset: 0x1108
// Size: 0x44
function function_e88cf541(entity, target) {
    return isdefined(entity.var_c6c4dded) && isinarray(entity.var_c6c4dded, target);
}

// Namespace namespace_45b55437/namespace_45b55437
// Params 1, eflags: 0x2 linked
// Checksum 0x89d12245, Offset: 0x1158
// Size: 0xac
function function_56c1d8bd(entity) {
    entity.var_36f62b58 = [];
    entity.var_c6c4dded = [];
    entity thread function_98e8c136(entity);
    if (zm_ai_hulk::function_3104c18c(entity)) {
        zm_ai_hulk::function_96319b66(entity);
    }
    if (isdefined(entity.enemy)) {
        zm_ai_hulk::function_e5717670(entity.enemy);
    }
    awareness::function_978025e4(entity);
}

// Namespace namespace_45b55437/namespace_45b55437
// Params 1, eflags: 0x2 linked
// Checksum 0x7c2ae06d, Offset: 0x1210
// Size: 0x676
function function_eabb6f2f(entity) {
    if (!isdefined(entity.var_c6845438)) {
        entity.var_c6845438 = 0;
    }
    if (entity.ignoreall) {
        entity.favoriteenemy = undefined;
        entity.var_bd1d170c = 1;
        return;
    }
    var_27ae492c = float(gettime() - entity.var_c6845438) / 1000 > 10;
    var_3b649c5c = !zm_utility::is_player_valid(entity.favoriteenemy, 1) || isdefined(entity.favoriteenemy) && distance2dsquared(entity.favoriteenemy.origin, entity.origin) > sqr(2500);
    if (var_27ae492c || var_3b649c5c) {
        if (is_true(entity.var_26a916e5)) {
            var_61203702 = function_a1ef346b();
            var_61203702 = arraysortclosest(var_61203702, entity.origin, undefined, 0, 2500);
            valid_targets = [];
            foreach (target in var_61203702) {
                if (!zm_utility::is_player_valid(target)) {
                    continue;
                }
                valid_targets[valid_targets.size] = target;
                if (vectordot(target.origin - entity.origin, anglestoforward(entity.angles)) > 0) {
                    entity.favoriteenemy = target;
                    return;
                }
            }
            entity.favoriteenemy = valid_targets[0];
            if (!isdefined(entity.favoriteenemy)) {
                entity.var_bd1d170c = 1;
            }
            return;
        }
        closest = awareness::function_d7fedde2(entity);
        if (!isdefined(closest) || distance2dsquared(closest.origin, entity.origin) > sqr(2500)) {
            entity.favoriteenemy = undefined;
            entity.var_bd1d170c = 1;
            var_16969010 = 0;
            foreach (player in getplayers()) {
                if (player.ignoreme || player isnotarget()) {
                    var_16969010 = 1;
                }
            }
            entity.var_3c066529 = var_16969010;
            return;
        }
        var_400d4b0c = undefined;
        nodes = zm_ai_hulk::function_71979c65(entity, closest.origin);
        if (nodes.size <= 0 || function_e88cf541(entity, closest)) {
            var_61203702 = function_a1ef346b();
            if (isdefined(entity.var_c6c4dded) && entity.var_c6c4dded.size >= var_61203702.size) {
                entity.var_c6c4dded = [];
            }
            arraysortclosest(var_61203702, entity.origin);
            foreach (target in var_61203702) {
                if (zm_utility::is_player_valid(target) && !function_e88cf541(entity, target)) {
                    var_49defc50 = zm_ai_hulk::function_71979c65(entity, target.origin);
                    if (var_49defc50.size > 0) {
                        var_400d4b0c = target;
                        break;
                    }
                    function_a7eadb40(entity, target);
                }
            }
        } else {
            var_400d4b0c = closest;
        }
        entity flag::set_val(#"hash_796c46c58710430a", isdefined(var_400d4b0c));
        var_e9cc7ca4 = isdefined(var_400d4b0c) ? var_400d4b0c : closest;
        if (entity.favoriteenemy !== var_e9cc7ca4) {
            entity.var_c6845438 = gettime();
        }
        if (var_e9cc7ca4 === undefined) {
        }
        entity.favoriteenemy = var_e9cc7ca4;
        entity.var_41611e5c = isdefined(entity.favoriteenemy) ? entity.favoriteenemy : entity.var_41611e5c;
    }
}

// Namespace namespace_45b55437/namespace_45b55437
// Params 1, eflags: 0x2 linked
// Checksum 0x6c82948a, Offset: 0x1890
// Size: 0x154
function function_69a0630b(entity) {
    if (isdefined(entity.favoriteenemy) || is_true(entity.var_f0ee16db)) {
        goal = undefined;
        if (entity zm_ai_hulk::function_e0487da2() && !namespace_e292b080::function_10b38c5a(entity)) {
            goal = function_c8417113(entity);
        } else if (isdefined(entity.favoriteenemy)) {
            goal = awareness::function_d0939c67(entity, entity.favoriteenemy, 32);
        }
        if (isdefined(goal)) {
            entity namespace_e292b080::zombieupdategoal(goal);
        }
        return;
    }
    if (!is_true(entity.var_3c066529)) {
        entity callback::function_52ac9652(#"awareness_event", &awareness::function_cf2fab43);
        awareness::set_state(entity, #"wander");
    }
}

// Namespace namespace_45b55437/namespace_45b55437
// Params 1, eflags: 0x6 linked
// Checksum 0x60251dcc, Offset: 0x19f0
// Size: 0xec4
function private function_c8417113(entity) {
    if (!isdefined(entity.var_7f73c6e1)) {
        entity.var_7f73c6e1 = [];
    }
    var_d673b0d0 = zm_ai_hulk::function_5e80cd88(entity);
    potential_targets = zm_ai_hulk::function_f0bafed1(entity, var_d673b0d0, !var_d673b0d0, !var_d673b0d0);
    var_2375c133 = isarray(potential_targets) && potential_targets.size > 0;
    best_node = undefined;
    entity.var_14dfe7c6 = var_d673b0d0;
    if (var_2375c133 && var_d673b0d0) {
        var_f3e6a062 = vectornormalize(anglestoforward(entity.angles));
        var_259c498c = undefined;
        foreach (node in potential_targets) {
            dot = vectordot(vectornormalize(node.origin - entity.origin), var_f3e6a062);
            if (node === entity.var_6265733) {
                dot = -1;
            }
            if (!isdefined(var_259c498c) || dot > var_259c498c) {
                var_259c498c = dot;
                best_node = node;
            }
        }
        var_259c498c = undefined;
        var_c302bfc5 = undefined;
        if (best_node.delay <= 0) {
            foreach (node in best_node.var_9f62e935) {
                dot = vectordot(vectornormalize(node.origin - entity.origin), var_f3e6a062);
                if (!isdefined(var_259c498c) || dot > var_259c498c) {
                    var_259c498c = dot;
                    var_c302bfc5 = node;
                }
            }
        }
    } else if (!var_d673b0d0) {
        if (is_true(entity.var_f0ee16db) && isdefined(entity.var_6a4a7aea)) {
            var_bff30208 = distance2dsquared(entity.origin, entity.var_6a4a7aea.origin);
            if (var_bff30208 < sqr(getdvarfloat(#"hash_9d165ff03f04351", 200))) {
                entity.var_14dfe7c6 = 1;
            } else {
                goal = entity.var_6a4a7aea.origin;
            }
        }
        if (!is_true(entity.var_f0ee16db)) {
            target_nodes = zm_ai_hulk::function_71979c65(entity, entity.favoriteenemy.origin);
            var_dfa0d2db = 0;
            foreach (node in target_nodes) {
                if (isinarray(entity.var_7f73c6e1, node)) {
                    var_dfa0d2db = 1;
                }
                if (isinarray(potential_targets, node)) {
                    best_node = node;
                    var_c302bfc5 = undefined;
                    var_dfa0d2db = 1;
                    break;
                }
            }
        }
        if (!is_true(var_dfa0d2db) && !is_true(entity.var_f0ee16db) && var_2375c133) {
            var_cb5eaea3 = vectornormalize(entity.favoriteenemy.origin - entity.origin);
            var_259c498c = undefined;
            foreach (node in potential_targets) {
                dot = vectordot(vectornormalize(node.origin - entity.origin), var_cb5eaea3);
                if (!isdefined(var_259c498c) || dot > var_259c498c) {
                    var_259c498c = dot;
                    best_node = node;
                }
            }
            var_9629476a = 35;
            if (distance2dsquared(best_node.origin, entity.favoriteenemy.origin) > sqr(distance2d(entity.origin, entity.favoriteenemy.origin) + var_9629476a)) {
                best_node = undefined;
            }
            if (isdefined(best_node)) {
                var_259c498c = undefined;
                var_c302bfc5 = undefined;
                foreach (node in best_node.var_9f62e935) {
                    dot = vectordot(vectornormalize(node.origin - best_node.origin), var_cb5eaea3);
                    if (!isdefined(var_259c498c) || dot > var_259c498c) {
                        var_259c498c = dot;
                        var_c302bfc5 = node;
                    }
                }
                if (isdefined(var_c302bfc5) && distance2dsquared(var_c302bfc5.origin, entity.favoriteenemy.origin) > distance2dsquared(entity.origin, entity.favoriteenemy.origin)) {
                    var_c302bfc5 = undefined;
                }
            }
        }
        if (!is_true(var_dfa0d2db) && !is_true(entity.var_f0ee16db) && !isdefined(best_node)) {
            function_a7eadb40(entity, entity.favoriteenemy);
            entity.var_1c62b9e9 = undefined;
            var_f7a7b873 = undefined;
            if (isdefined(entity.var_7f73c6e1) && entity.var_7f73c6e1.size > 0) {
                var_160cb6cf = [];
                var_9da026c8 = entity getpathfindingradius() + getdvarint(#"hash_6cdd46b3330d7af7", 100);
                foreach (node in entity.var_7f73c6e1) {
                    var_1a4cb070 = max(node.radius - var_9da026c8, 0);
                    pos = vectornormalize(entity.favoriteenemy.origin - node.origin) * var_1a4cb070 + node.origin;
                    var_160cb6cf[var_160cb6cf.size] = pos;
                }
                var_f7a7b873 = arraygetclosest(entity.favoriteenemy.origin, var_160cb6cf);
            }
            if (isdefined(var_f7a7b873) && distance2dsquared(entity.origin, entity.favoriteenemy.origin) < sqr(distance2d(var_f7a7b873, entity.favoriteenemy.origin) + 50)) {
                var_f7a7b873 = undefined;
            }
            var_47efca42 = function_e7f9bcfd(entity, var_f7a7b873);
            goal = isdefined(var_47efca42) ? var_47efca42 : entity.origin;
        }
    }
    var_b047cc53 = undefined;
    var_c302bfc5 = zm_ai_hulk::function_9ce857d4(entity, var_c302bfc5, best_node);
    if (!zm_ai_hulk::function_4a60f34e(entity, best_node, var_c302bfc5)) {
        zm_ai_hulk::function_4306cd59(entity, best_node, entity.var_7f73c6e1);
    }
    zm_ai_hulk::function_3a92faf9(entity, best_node, var_c302bfc5, var_dfa0d2db, goal);
    var_7b5ed862 = undefined;
    if (is_true(var_dfa0d2db)) {
        var_7b5ed862 = awareness::function_d0939c67(entity, entity.favoriteenemy, entity getpathfindingradius());
    } else if (isdefined(best_node)) {
        var_7b5ed862 = zm_ai_hulk::function_5675af77(entity, best_node);
    }
    if (isdefined(var_c302bfc5)) {
        var_c5eb6510 = min(getdvarfloat(#"hash_72328e4462f91c62", 300), distance(var_c302bfc5.origin, best_node.origin));
        dist = distance(entity.origin, best_node.origin);
        var_e9347624 = max(var_c5eb6510 - dist, 0);
        var_7b5ed862 += vectornormalize(var_c302bfc5.origin - best_node.origin) * var_e9347624;
    }
    if (isdefined(var_7b5ed862)) {
        var_47efca42 = function_e7f9bcfd(entity, var_7b5ed862);
        if (isdefined(var_47efca42)) {
            goal = var_47efca42;
        } else if (isdefined(best_node)) {
            goal = best_node.origin;
        }
    }
    if (!zm_ai_hulk::function_5e80cd88(entity)) {
        goal_info = entity function_4794d6a3();
        if (is_true(goal_info.isatgoal)) {
            if (isdefined(goal) && distance2dsquared(goal, entity.origin) < sqr(getdvarfloat(#"hash_9d165ff03f04351", 200))) {
                goal = undefined;
            }
        } else if (isdefined(goal_info.goalpos) && isdefined(goal) && isdefined(entity.var_fe1e4b1b) && distance2dsquared(entity.origin, goal_info.goalpos) < sqr(getdvarfloat(#"hash_9d165ff03f04351", 200)) && distance2dsquared(entity.var_fe1e4b1b, goal_info.goalpos) < sqr(getdvarfloat(#"hash_9d165ff03f04351", 200))) {
            goal = undefined;
        }
    }
    return goal;
}

// Namespace namespace_45b55437/namespace_45b55437
// Params 2, eflags: 0x6 linked
// Checksum 0x7f4d6099, Offset: 0x28c0
// Size: 0x124
function private function_e7f9bcfd(entity, point) {
    if (!(isdefined(entity) && isdefined(point))) {
        return undefined;
    }
    goal = undefined;
    var_9ee64b0c = function_9cc082d2(point, 200);
    if (isdefined(var_9ee64b0c[#"point"])) {
        if (ispointonnavmesh(var_9ee64b0c[#"point"], entity)) {
            goal = var_9ee64b0c[#"point"];
        } else {
            var_47efca42 = getclosestpointonnavmesh(var_9ee64b0c[#"point"], 200, entity getpathfindingradius() * 1.2);
            if (isdefined(var_47efca42) && ispointonnavmesh(var_47efca42, entity)) {
                goal = var_47efca42;
            }
        }
    }
    return goal;
}

// Namespace namespace_45b55437/namespace_45b55437
// Params 1, eflags: 0x2 linked
// Checksum 0x453e5ca8, Offset: 0x29f0
// Size: 0x2d0
function function_98e8c136(entity) {
    self endon(#"death");
    if (!isdefined(entity.var_36f62b58)) {
        entity.var_36f62b58 = [];
    }
    if (!(isdefined(entity.var_8ede206) && isdefined(level.var_36f62b58))) {
        return;
    }
    var_bd037b03 = 0;
    foreach (station in level.var_36f62b58) {
        if (station.var_8ede206 === entity.var_8ede206) {
            if (isinarray(entity.var_36f62b58, station)) {
                return;
            }
            var_bd037b03 = 1;
            station.var_4f67a9d8 = 1;
            entity.var_36f62b58[entity.var_36f62b58.size] = station;
        }
    }
    if (var_bd037b03) {
        return;
    }
    var_3bd3af71 = zm_ai_hulk::function_9fe24e6(entity);
    foreach (node in var_3bd3af71) {
        foreach (station in level.var_36f62b58) {
            if (station.var_4f67a9d8 <= 0) {
                station.var_4f67a9d8++;
                station.var_8ede206 = node.var_ec6eb3b4;
                station.origin = node.origin;
                util::wait_network_frame();
                entity.var_36f62b58[entity.var_36f62b58.size] = station;
                station clientfield::set("hs_heal_station_cf", 1);
                break;
            }
        }
    }
}

// Namespace namespace_45b55437/namespace_45b55437
// Params 1, eflags: 0x2 linked
// Checksum 0x2a1830ff, Offset: 0x2cc8
// Size: 0xfa
function function_5b676fe6(entity) {
    if (!isdefined(entity.var_36f62b58)) {
        return;
    }
    foreach (station in entity.var_36f62b58) {
        if (!isdefined(station.var_4f67a9d8)) {
            station.var_4f67a9d8 = 1;
        }
        station.var_4f67a9d8--;
        if (station.var_4f67a9d8 <= 0) {
            station.var_8ede206 = undefined;
            station clientfield::set("hs_heal_station_cf", 0);
        }
    }
    entity.var_36f62b58 = [];
}

// Namespace namespace_45b55437/namespace_45b55437
// Params 1, eflags: 0x2 linked
// Checksum 0x346cf4fd, Offset: 0x2dd0
// Size: 0x24
function function_914f5e7(*params) {
    function_5b676fe6(self);
}

