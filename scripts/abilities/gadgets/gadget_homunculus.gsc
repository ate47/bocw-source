// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace gadget_homunculus;

// Namespace gadget_homunculus/gadget_homunculus
// Params 0, eflags: 0x5
// Checksum 0x92cec633, Offset: 0xf8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"homunculus", &preinit, undefined, undefined, undefined);
}

// Namespace gadget_homunculus/gadget_homunculus
// Params 0, eflags: 0x4
// Checksum 0xd17258ac, Offset: 0x140
// Size: 0xc4
function private preinit() {
    level.var_2da60c10 = [];
    if (is_true(getgametypesetting(#"wzenablehomunculus"))) {
        level.var_cc310d06 = &function_7bfc867f;
        level thread function_c83057f0();
        callback::on_finalize_initialization(&function_1c601b99);
        level scene::add_scene_func(#"aib_t8_zm_zod_homunculus_jump_up_01", &jump);
    }
}

// Namespace gadget_homunculus/gadget_homunculus
// Params 0, eflags: 0x0
// Checksum 0x9f00369d, Offset: 0x210
// Size: 0x50
function function_1c601b99() {
    if (isdefined(level.var_a5dacbea)) {
        [[ level.var_a5dacbea ]](getweapon(#"homunculus"), &function_127fb8f3);
    }
}

// Namespace gadget_homunculus/gadget_homunculus
// Params 0, eflags: 0x4
// Checksum 0x4d90fd5a, Offset: 0x268
// Size: 0x186
function private function_c83057f0() {
    level endon(#"game_ended");
    while (true) {
        foreach (homunculus in level.var_2da60c10) {
            if (!isdefined(homunculus) || homunculus.spawning === 1) {
                continue;
            }
            if (gettime() >= homunculus.despawn_time) {
                homunculus function_7bfc867f();
                continue;
            }
            if (homunculus.attacking === 1) {
                continue;
            }
            if (function_9ce07f7c(homunculus)) {
                homunculus thread function_bb17ec5a();
                continue;
            }
            if (homunculus.dancing !== 1) {
                homunculus thread function_b053b486();
            }
            waitframe(1);
        }
        arrayremovevalue(level.var_2da60c10, undefined);
        waitframe(1);
    }
}

// Namespace gadget_homunculus/gadget_homunculus
// Params 1, eflags: 0x4
// Checksum 0x4ad97830, Offset: 0x3f8
// Size: 0xc2
function private function_9ce07f7c(homunculus) {
    var_b1de6a06 = getentitiesinradius(homunculus.origin, 250, 15);
    foreach (actor in var_b1de6a06) {
        if (function_62318121(homunculus, actor)) {
            return true;
        }
    }
    return false;
}

// Namespace gadget_homunculus/gadget_homunculus
// Params 1, eflags: 0x4
// Checksum 0x25d85da8, Offset: 0x4c8
// Size: 0x13a
function private function_90cc805b(homunculus) {
    var_b1de6a06 = getentitiesinradius(homunculus.origin, 250, 15);
    var_9db93b2e = [];
    foreach (var_6baf60af in var_b1de6a06) {
        if (function_62318121(homunculus, var_6baf60af)) {
            if (!isdefined(var_9db93b2e)) {
                var_9db93b2e = [];
            } else if (!isarray(var_9db93b2e)) {
                var_9db93b2e = array(var_9db93b2e);
            }
            var_9db93b2e[var_9db93b2e.size] = var_6baf60af;
        }
    }
    return arraysortclosest(var_9db93b2e, homunculus.origin, undefined, undefined, 250);
}

// Namespace gadget_homunculus/gadget_homunculus
// Params 2, eflags: 0x4
// Checksum 0xf56f74de, Offset: 0x610
// Size: 0x68
function private function_62318121(homunculus, ent) {
    if (!isdefined(ent)) {
        return false;
    }
    if (ent.archetype == "zombie" && util::function_fbce7263(ent.team, homunculus.team)) {
        return true;
    }
    return false;
}

// Namespace gadget_homunculus/grenade_fire
// Params 1, eflags: 0x24
// Checksum 0x1d8b0ff6, Offset: 0x680
// Size: 0x4cc
function private event_handler[grenade_fire] function_4776caf4(eventstruct) {
    if (eventstruct.weapon.name == #"homunculus") {
        grenade = eventstruct.projectile;
        grenade ghost();
        grenade.angles = self.angles;
        homunculus = util::spawn_model(grenade.model, grenade.origin, grenade.angles);
        homunculus.spawning = 1;
        homunculus.identifier_weapon = grenade.item;
        homunculus.player = grenade.thrower;
        grenade.homunculus = homunculus;
        grenade.homunculus linkto(grenade);
        grenade.homunculus.team = grenade.team;
        grenade.homunculus clientfield::set("enemyequip", 1);
        var_66ae7054 = 0;
        if (math::cointoss() && math::cointoss()) {
            homunculus playsound(#"hash_8d020e5460f4a95");
            var_66ae7054 = 1;
        } else {
            homunculus playsound(#"hash_689f11fd8983d1a6");
        }
        homunculus thread scene::play(#"aib_t8_zm_zod_homunculus_throw_loop_01", homunculus);
        grenade waittill(#"stationary", #"death");
        if (isdefined(grenade)) {
            homunculus unlink();
            grenade delete();
            if (isdefined(homunculus)) {
                homunculus.var_acdc8d71 = getclosestpointonnavmesh(homunculus.origin, 360, 15.1875);
                if (!isdefined(level.var_2da60c10)) {
                    level.var_2da60c10 = [];
                } else if (!isarray(level.var_2da60c10)) {
                    level.var_2da60c10 = array(level.var_2da60c10);
                }
                level.var_2da60c10[level.var_2da60c10.size] = homunculus;
                homunculus.despawn_time = gettime() + int(120 * 1000);
                playfx(#"zm_weapons/fx8_equip_homunc_spawn", homunculus.origin);
                homunculus playsound(#"hash_21206f1b7fb27f81");
                if (math::cointoss() && math::cointoss() && !var_66ae7054) {
                    homunculus playsound(#"hash_6b4fa8bf14690e0c");
                } else {
                    homunculus playsound(#"hash_1d6e8d28eabdb1fb");
                }
                mover = util::spawn_model("tag_origin", homunculus.origin, homunculus.angles);
                homunculus linkto(mover);
                homunculus.mover = mover;
                homunculus drop_to_ground(1);
                homunculus scene::stop();
                homunculus.mover scene::play(#"aib_t8_zm_zod_homunculus_deploy_01", homunculus);
                homunculus.spawning = undefined;
            }
            return;
        }
        if (isdefined(homunculus)) {
            homunculus delete();
        }
    }
}

// Namespace gadget_homunculus/gadget_homunculus
// Params 0, eflags: 0x4
// Checksum 0x85c4aca3, Offset: 0xb58
// Size: 0x326
function private function_bb17ec5a() {
    self endon(#"death");
    self.attacking = 1;
    self.mover scene::stop();
    self.dancing = undefined;
    /#
        iprintlnbold("<unknown string>");
    #/
    start_attack = 1;
    while (true) {
        var_c7f2fbb7 = function_90cc805b(self);
        if (!var_c7f2fbb7.size) {
            break;
        }
        foreach (enemy in var_c7f2fbb7) {
            if (isalive(enemy) && bullettracepassed(self.origin + (0, 0, 16), enemy getcentroid(), 0, self, enemy)) {
                self face_target(enemy);
                if (start_attack === 1) {
                    start_attack = undefined;
                    if (math::cointoss() && math::cointoss()) {
                        self playsound(#"hash_22c88cff01a4691b");
                    }
                    self.mover scene::stop();
                    self.mover scene::play(#"aib_t8_zm_zod_homunculus_jump_up_01", self);
                    self.mover thread scene::play(#"aib_t8_zm_zod_homunculus_attack_01", self);
                    if (!isalive(enemy)) {
                        continue;
                    }
                }
                n_dist = distancesquared(self.origin, enemy.origin);
                n_time = n_dist / 48400;
                n_time *= 0.5;
                self function_c8f642f6(enemy, n_time);
            }
            waitframe(1);
        }
        wait(0.1);
    }
    self drop_to_ground();
    self.attacking = undefined;
}

// Namespace gadget_homunculus/gadget_homunculus
// Params 0, eflags: 0x4
// Checksum 0x4b18b1dd, Offset: 0xe88
// Size: 0x54
function private function_b053b486() {
    self endon(#"death");
    self.dancing = 1;
    self.mover scene::play(#"aib_t8_zm_zod_homunculus_idle_01", self);
}

// Namespace gadget_homunculus/gadget_homunculus
// Params 1, eflags: 0x4
// Checksum 0x38400fd2, Offset: 0xee8
// Size: 0x18c
function private drop_to_ground(b_immediate = 0) {
    self endon(#"death");
    s_trace = groundtrace(self.origin + (0, 0, 16), self.origin + (0, 0, -1000), 0, self);
    var_a75fe4be = s_trace[#"position"];
    if (b_immediate) {
        self.mover moveto(var_a75fe4be, 0.01);
        self.mover waittill(#"movedone");
        return;
    }
    if (abs(self.origin[2] - var_a75fe4be[2]) > 1) {
        n_time = 0.25;
        self.mover scene::stop();
        self.mover moveto(var_a75fe4be, 0.25);
        self.mover scene::play(#"aib_t8_zm_zod_homunculus_jump_down_01", self);
    }
}

// Namespace gadget_homunculus/gadget_homunculus
// Params 1, eflags: 0x4
// Checksum 0x120636a2, Offset: 0x1080
// Size: 0xb4
function private jump(scene_ents) {
    scene_ents[#"homunculus"] endon(#"death");
    scene_ents[#"homunculus"] waittill(#"jumped");
    if (isdefined(scene_ents[#"homunculus"].mover)) {
        scene_ents[#"homunculus"].mover movez(40, 0.35);
    }
}

// Namespace gadget_homunculus/gadget_homunculus
// Params 1, eflags: 0x4
// Checksum 0x15862207, Offset: 0x1140
// Size: 0x9c
function private face_target(target) {
    v_dir = vectornormalize(target.origin - self.origin);
    v_dir = (v_dir[0], v_dir[1], 0);
    v_angles = vectortoangles(v_dir);
    self.mover rotateto(v_angles, 0.15);
}

// Namespace gadget_homunculus/gadget_homunculus
// Params 2, eflags: 0x4
// Checksum 0x7a68e661, Offset: 0x11e8
// Size: 0x1fc
function private function_c8f642f6(enemy, n_time) {
    self.mover movez(16, n_time);
    self.mover waittill(#"movedone");
    if (isalive(enemy)) {
        v_target = enemy gettagorigin("j_head");
        if (!isdefined(v_target)) {
            v_target = enemy getcentroid() + (0, 0, 16);
        }
        self.mover moveto(v_target, n_time);
        self.mover waittill(#"movedone");
        if (isalive(enemy)) {
            if (math::cointoss() && math::cointoss()) {
                self playsound(#"hash_ba5815eb0dc4d97");
            }
            enemy playsound(#"hash_3a99f739009a77fa");
            enemy dodamage(enemy.health + 666, enemy.origin, self.player, undefined, undefined, "MOD_UNKNOWN", 0, getweapon(#"homunculus"));
            gibserverutils::gibhead(enemy, 0);
        }
    }
}

// Namespace gadget_homunculus/gadget_homunculus
// Params 0, eflags: 0x0
// Checksum 0x814e21a5, Offset: 0x13f0
// Size: 0xbc
function function_7bfc867f() {
    self playsound(#"hash_6e471fde121d0263");
    self drop_to_ground();
    self.mover scene::stop();
    self.mover scene::play(#"aib_t8_zm_zod_homunculus_dth_01", self);
    playfx(#"zm_weapons/fx8_equip_homunc_death_exp", self.origin);
    self delete();
}

// Namespace gadget_homunculus/gadget_homunculus
// Params 1, eflags: 0x0
// Checksum 0x5b2b481b, Offset: 0x14b8
// Size: 0x144
function function_bd59a592(zombie) {
    var_2d9e38fc = sqr(360);
    var_128c12c9 = undefined;
    var_b26b6492 = undefined;
    foreach (homunculus in level.var_2da60c10) {
        if (!isdefined(homunculus)) {
            continue;
        }
        dist_sq = distancesquared(zombie.origin, homunculus.origin);
        if (isdefined(homunculus) && homunculus.attacking === 1 && dist_sq < var_2d9e38fc) {
            if (!isdefined(var_128c12c9) || dist_sq < var_128c12c9) {
                var_128c12c9 = dist_sq;
                var_b26b6492 = homunculus;
            }
        }
    }
    return var_b26b6492;
}

// Namespace gadget_homunculus/gadget_homunculus
// Params 2, eflags: 0x0
// Checksum 0xa6372e00, Offset: 0x1608
// Size: 0xf4
function function_127fb8f3(homunculus, *attackingplayer) {
    attackingplayer endon(#"death");
    randangle = randomfloat(360);
    if (isdefined(level._equipment_emp_destroy_fx)) {
        playfx(level._equipment_emp_destroy_fx, attackingplayer.origin + (0, 0, 5), (cos(randangle), sin(randangle), 0), anglestoup(attackingplayer.angles));
    }
    wait(1.1);
    attackingplayer function_7bfc867f();
}

