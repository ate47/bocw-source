// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\vehicle_ai_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\visionset_mgr_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace zombie_vortex;

// Namespace zombie_vortex/zombie_vortex
// Params 0, eflags: 0x5
// Checksum 0x116aff17, Offset: 0x230
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"vortex_shared", &preinit, &postinit, undefined, undefined);
}

// Namespace zombie_vortex/zombie_vortex
// Params 0, eflags: 0x6 linked
// Checksum 0x1434af33, Offset: 0x288
// Size: 0x1ac
function private preinit() {
    if (!isdefined(level.vsmgr_prio_visionset_zombie_vortex)) {
        level.vsmgr_prio_visionset_zombie_vortex = 23;
    }
    if (!isdefined(level.vsmgr_prio_overlay_zombie_vortex)) {
        level.vsmgr_prio_overlay_zombie_vortex = 23;
    }
    visionset_mgr::register_info("visionset", "zm_idgun_vortex" + "_visionset", 1, level.vsmgr_prio_visionset_zombie_vortex, 30, 1, &visionset_mgr::ramp_in_out_thread_per_player, 0);
    visionset_mgr::register_info("overlay", "zm_idgun_vortex" + "_blur", 1, level.vsmgr_prio_overlay_zombie_vortex, 1, 1, &visionset_mgr::ramp_in_out_thread_per_player, 1);
    clientfield::register("scriptmover", "vortex_start", 1, 2, "counter");
    clientfield::register("allplayers", "vision_blur", 1, 1, "int");
    level.vortex_manager = spawnstruct();
    level.vortex_manager.count = 0;
    level.vortex_manager.a_vorticies = [];
    level.vortex_manager.a_active_vorticies = [];
    level.vortex_id = 0;
    init_vortices();
}

// Namespace zombie_vortex/zombie_vortex
// Params 0, eflags: 0x6 linked
// Checksum 0x413d44d8, Offset: 0x440
// Size: 0x24
function private postinit() {
    level vehicle_ai::register_custom_add_state_callback(&idgun_add_vehicle_death_state);
}

// Namespace zombie_vortex/zombie_vortex
// Params 0, eflags: 0x2 linked
// Checksum 0xb0582517, Offset: 0x470
// Size: 0x10c
function init_vortices() {
    for (i = 0; i < 4; i++) {
        svortex = spawn("script_model", (0, 0, 0));
        svortex.targetname = "zombie_vortex_sVortex";
        if (!isdefined(level.vortex_manager.a_vorticies)) {
            level.vortex_manager.a_vorticies = [];
        } else if (!isarray(level.vortex_manager.a_vorticies)) {
            level.vortex_manager.a_vorticies = array(level.vortex_manager.a_vorticies);
        }
        level.vortex_manager.a_vorticies[level.vortex_manager.a_vorticies.size] = svortex;
    }
}

// Namespace zombie_vortex/zombie_vortex
// Params 0, eflags: 0x2 linked
// Checksum 0x27cf3f1, Offset: 0x588
// Size: 0xb4
function get_unused_vortex() {
    foreach (vortex in level.vortex_manager.a_vorticies) {
        if (!is_true(vortex.in_use)) {
            return vortex;
        }
    }
    return level.vortex_manager.a_vorticies[0];
}

// Namespace zombie_vortex/zombie_vortex
// Params 0, eflags: 0x0
// Checksum 0xa778023d, Offset: 0x648
// Size: 0xb2
function get_active_vortex_count() {
    count = 0;
    foreach (vortex in level.vortex_manager.a_vorticies) {
        if (is_true(vortex.in_use)) {
            count++;
        }
    }
    return count;
}

// Namespace zombie_vortex/zombie_vortex
// Params 4, eflags: 0x4
// Checksum 0x9e6a70c7, Offset: 0x708
// Size: 0x64
function private stop_vortex_fx_after_time(*vortex_fx_handle, *vortex_position, *vortex_explosion_fx, n_vortex_time) {
    n_starttime = gettime();
    for (n_curtime = gettime() - n_starttime; n_curtime < n_vortex_time; n_curtime = gettime() - n_starttime) {
        waitframe(1);
    }
}

// Namespace zombie_vortex/zombie_vortex
// Params 8, eflags: 0x2 linked
// Checksum 0xd273bdbb, Offset: 0x778
// Size: 0x7a4
function start_timed_vortex(effect_version, v_vortex_origin, n_vortex_radius, n_vortex_explosion_radius, eattacker = undefined, weapon = undefined, var_fbc8, var_f16a8ebd) {
    self endon(#"death", #"disconnect");
    n_starttime = gettime();
    n_currtime = gettime() - n_starttime;
    a_e_players = getplayers();
    if (!isdefined(n_vortex_explosion_radius)) {
        n_vortex_explosion_radius = n_vortex_radius * 1.5;
    }
    svortex = get_unused_vortex();
    svortex.in_use = 1;
    svortex.attacker = eattacker;
    svortex.weapon = weapon;
    svortex.angles = (0, 0, 0);
    svortex.origin = v_vortex_origin;
    svortex dontinterpolate();
    svortex clientfield::increment("vortex_start", effect_version);
    s_active_vortex = struct::spawn(v_vortex_origin);
    s_active_vortex.weapon = weapon;
    s_active_vortex.attacker = eattacker;
    if (!isdefined(level.vortex_manager.a_active_vorticies)) {
        level.vortex_manager.a_active_vorticies = [];
    } else if (!isarray(level.vortex_manager.a_active_vorticies)) {
        level.vortex_manager.a_active_vorticies = array(level.vortex_manager.a_active_vorticies);
    }
    level.vortex_manager.a_active_vorticies[level.vortex_manager.a_active_vorticies.size] = s_active_vortex;
    if (effect_version == 2) {
        n_vortex_time_sv = 9;
        n_vortex_time_cl = 10;
    } else {
        n_vortex_time_sv = 10;
        n_vortex_time_cl = 10;
    }
    n_vortex_time = int(n_vortex_time_sv * 1000);
    team = #"axis";
    if (isdefined(level.zombie_team)) {
        team = level.zombie_team;
    }
    if (isdefined(var_fbc8)) {
        [[ var_fbc8 ]](v_vortex_origin, n_vortex_radius, n_starttime, n_vortex_time, svortex, eattacker, weapon);
    } else {
        while (n_currtime <= n_vortex_time) {
            a_ai_zombies = array::get_all_closest(v_vortex_origin, getaiteamarray(team), undefined, undefined, n_vortex_radius);
            a_ai_zombies = arraycombine(a_ai_zombies, vortex_z_extension(a_ai_zombies, v_vortex_origin, n_vortex_radius), 0, 0);
            svortex.zombies = a_ai_zombies;
            if (is_true(level.idgun_draw_debug)) {
                /#
                    circle(v_vortex_origin, n_vortex_radius, (0, 0, 1), 0, 1, 1);
                #/
            }
            foreach (ai_zombie in a_ai_zombies) {
                if (isvehicle(ai_zombie)) {
                    if (isalive(ai_zombie) && isdefined(ai_zombie vehicle_ai::get_state_callbacks("idgun_death")) && ai_zombie vehicle_ai::get_current_state() != "idgun_death" && !ai_zombie.ignorevortices) {
                        params = spawnstruct();
                        params.vpoint = v_vortex_origin;
                        params.attacker = eattacker;
                        params.weapon = weapon;
                        ai_zombie vehicle_ai::set_state("idgun_death", params);
                    }
                    continue;
                }
                if (is_true(ai_zombie._black_hole_bomb_collapse_death)) {
                    ai_zombie.skipautoragdoll = 1;
                    ai_zombie dodamage(ai_zombie.health + 666, ai_zombie.origin + (0, 0, 50), ai_zombie.interdimensional_gun_attacker, undefined, undefined, "MOD_CRUSH");
                    if (is_true(ai_zombie.allowdeath)) {
                        gibserverutils::annihilate(ai_zombie);
                    }
                }
                if (!is_true(ai_zombie.interdimensional_gun_kill) && !ai_zombie.ignorevortices) {
                    ai_zombie.var_ecd5b1b9 = svortex;
                    ai_zombie.damageorigin = v_vortex_origin;
                    ai_zombie.interdimensional_gun_kill = 1;
                    ai_zombie.interdimensional_gun_attacker = eattacker;
                    ai_zombie.interdimensional_gun_inflictor = eattacker;
                    ai_zombie.interdimensional_gun_weapon = weapon;
                }
            }
            waitframe(1);
            n_currtime = gettime() - n_starttime;
        }
    }
    n_time_to_wait_for_explosion = n_vortex_time_cl - n_vortex_time_sv + 0.35;
    var_784b8be6 = getaiteamarray(team);
    foreach (ai_zombie in var_784b8be6) {
        if (is_true(ai_zombie.interdimensional_gun_kill) && ai_zombie.var_ecd5b1b9 === svortex) {
            ai_zombie.interdimensional_gun_kill = undefined;
        }
    }
    wait(n_time_to_wait_for_explosion);
    svortex.in_use = 0;
    arrayremovevalue(level.vortex_manager.a_active_vorticies, s_active_vortex);
    if (isdefined(var_f16a8ebd)) {
        [[ var_f16a8ebd ]](v_vortex_origin, eattacker, n_vortex_explosion_radius);
        return;
    }
    vortex_explosion(v_vortex_origin, eattacker, n_vortex_explosion_radius);
}

// Namespace zombie_vortex/zombie_vortex
// Params 3, eflags: 0x2 linked
// Checksum 0x2ded2ed0, Offset: 0xf28
// Size: 0x13c
function vortex_z_extension(a_ai_zombies, v_vortex_origin, n_vortex_radius) {
    a_ai_zombies_extended = array::get_all_closest(v_vortex_origin, getaiteamarray(#"axis"), undefined, undefined, n_vortex_radius + 72);
    a_ai_zombies_extended_filtered = array::exclude(a_ai_zombies_extended, a_ai_zombies);
    i = 0;
    while (i < a_ai_zombies_extended_filtered.size) {
        if (a_ai_zombies_extended_filtered[i].origin[2] < v_vortex_origin[2] && bullettracepassed(a_ai_zombies_extended_filtered[i].origin + (0, 0, 5), v_vortex_origin + (0, 0, 20), 0, self, undefined, 0, 0)) {
            i++;
            continue;
        }
        arrayremovevalue(a_ai_zombies_extended_filtered, a_ai_zombies_extended_filtered[i]);
    }
    return a_ai_zombies_extended_filtered;
}

// Namespace zombie_vortex/zombie_vortex
// Params 3, eflags: 0x6 linked
// Checksum 0xac7b0c68, Offset: 0x1070
// Size: 0x2e0
function private vortex_explosion(v_vortex_explosion_origin, eattacker, n_vortex_radius) {
    team = #"axis";
    if (isdefined(level.zombie_team)) {
        team = level.zombie_team;
    }
    a_ai_zombies = array::get_all_closest(v_vortex_explosion_origin, getaiteamarray(team), undefined, undefined, n_vortex_radius);
    if (is_true(level.idgun_draw_debug)) {
        /#
            circle(v_vortex_explosion_origin, n_vortex_radius, (1, 0, 0), 0, 1, 1000);
        #/
    }
    foreach (ai_zombie in a_ai_zombies) {
        if (!ai_zombie.ignorevortices) {
            ai_zombie.interdimensional_gun_kill = undefined;
            ai_zombie.interdimensional_gun_kill_vortex_explosion = 1;
            ai_zombie.veh_idgun_allow_damage = 1;
            if (isdefined(eattacker)) {
                ai_zombie dodamage(ai_zombie.health + 10000, ai_zombie.origin, eattacker, undefined, undefined, "MOD_EXPLOSIVE");
            } else {
                ai_zombie dodamage(ai_zombie.health + 10000, ai_zombie.origin, undefined, undefined, undefined, "MOD_EXPLOSIVE");
            }
            n_radius_sqr = n_vortex_radius * n_vortex_radius;
            n_distance_sqr = distancesquared(ai_zombie.origin, v_vortex_explosion_origin);
            n_dist_mult = n_distance_sqr / n_radius_sqr;
            v_fling = vectornormalize(ai_zombie.origin - v_vortex_explosion_origin);
            v_fling = (v_fling[0], v_fling[1], abs(v_fling[2]));
            v_fling = vectorscale(v_fling, 100 + 100 * n_dist_mult);
            ai_zombie startragdoll();
            ai_zombie launchragdoll(v_fling);
        }
    }
}

// Namespace zombie_vortex/zombie_vortex
// Params 1, eflags: 0x0
// Checksum 0x4f8a855b, Offset: 0x1358
// Size: 0xbe
function player_vortex_visionset(name) {
    self endon(#"death");
    thread visionset_mgr::activate("visionset", name + "_visionset", self, 0.25, 2, 0.25);
    thread visionset_mgr::activate("overlay", name + "_blur", self, 0.25, 2, 0.25);
    self.idgun_vision_on = 1;
    wait(2.5);
    self.idgun_vision_on = 0;
}

// Namespace zombie_vortex/zombie_vortex
// Params 0, eflags: 0x2 linked
// Checksum 0x724d100, Offset: 0x1420
// Size: 0x9c
function idgun_add_vehicle_death_state() {
    if (isairborne(self)) {
        self vehicle_ai::add_state("idgun_death", &state_idgun_flying_crush_enter, &state_idgun_flying_crush_update, undefined);
        return;
    }
    self vehicle_ai::add_state("idgun_death", &state_idgun_crush_enter, &state_idgun_crush_update, undefined);
}

// Namespace zombie_vortex/zombie_vortex
// Params 1, eflags: 0x2 linked
// Checksum 0x1afd3f43, Offset: 0x14c8
// Size: 0x54
function state_idgun_crush_enter(*params) {
    self vehicle_ai::clearalllookingandtargeting();
    self vehicle_ai::clearallmovement();
    self cancelaimove();
}

// Namespace zombie_vortex/zombie_vortex
// Params 1, eflags: 0x2 linked
// Checksum 0x2770ae31, Offset: 0x1528
// Size: 0x4c
function flyentdelete(enttowatch) {
    self endon(#"death");
    enttowatch waittill(#"death");
    self delete();
}

// Namespace zombie_vortex/zombie_vortex
// Params 1, eflags: 0x2 linked
// Checksum 0x397100ae, Offset: 0x1580
// Size: 0x270
function state_idgun_crush_update(params) {
    self endon(#"death");
    black_hole_center = params.vpoint;
    attacker = params.attacker;
    weapon = params.weapon;
    if (self.archetype == #"raps") {
        crush_anim = "ai_zombie_zod_raps_dth_f_id_gun_crush";
    }
    veh_to_black_hole_vec = vectornormalize(black_hole_center - self.origin);
    fly_ent = spawn("script_origin", self.origin);
    fly_ent.targetname = "zombie_vortex_fly_ent";
    fly_ent thread flyentdelete(self);
    self linkto(fly_ent);
    while (true) {
        veh_to_black_hole_dist_sqr = distancesquared(self.origin, black_hole_center);
        if (veh_to_black_hole_dist_sqr < 144) {
            self.veh_idgun_allow_damage = 1;
            self dodamage(self.health + 666, self.origin, attacker, undefined, "none", "MOD_UNKNOWN", 0, weapon);
            return;
        } else if (!is_true(self.crush_anim_started) && veh_to_black_hole_dist_sqr < 1600) {
            if (isdefined(crush_anim)) {
                self animscripted("anim_notify", self.origin, self.angles, crush_anim, "normal", undefined, undefined, 0.2);
            }
            self.crush_anim_started = 1;
        }
        fly_ent.origin += veh_to_black_hole_vec * 8;
        wait(0.1);
    }
}

// Namespace zombie_vortex/zombie_vortex
// Params 1, eflags: 0x2 linked
// Checksum 0x8a4e6f9a, Offset: 0x17f8
// Size: 0x5e
function state_idgun_flying_crush_enter(*params) {
    self vehicle_ai::clearallmovement();
    self cancelaimove();
    self setneargoalnotifydist(4);
    self.vehaircraftcollisionenabled = 0;
}

// Namespace zombie_vortex/zombie_vortex
// Params 1, eflags: 0x2 linked
// Checksum 0x81592d13, Offset: 0x1860
// Size: 0x15c
function state_idgun_flying_crush_update(params) {
    self endon(#"death");
    black_hole_center = params.vpoint;
    attacker = params.attacker;
    weapon = params.weapon;
    self setspeed(2);
    self asmrequestsubstate(#"hash_605a76518deb2c5f");
    self thread switch_to_crush_asm(black_hole_center);
    self function_a57c34b7(black_hole_center, 0, 0);
    self waittill(#"near_goal");
    self vehicle_ai::get_state_callbacks("death").update_func = &state_idgun_flying_death_update;
    self.veh_idgun_allow_damage = 1;
    self dodamage(self.health + 666, self.origin, attacker, undefined, "none", "MOD_UNKNOWN", 0, weapon);
}

// Namespace zombie_vortex/zombie_vortex
// Params 1, eflags: 0x2 linked
// Checksum 0x3b1db4e8, Offset: 0x19c8
// Size: 0x84
function switch_to_crush_asm(black_hole_center) {
    self endon(#"death");
    while (true) {
        if (distancesquared(self.origin, black_hole_center) < 900) {
            self asmrequestsubstate(#"hash_1d57c7f1617da95b");
            return;
        }
        wait(0.1);
    }
}

// Namespace zombie_vortex/zombie_vortex
// Params 1, eflags: 0x2 linked
// Checksum 0xdcd7ccaa, Offset: 0x1a58
// Size: 0x94
function state_idgun_flying_death_update(*params) {
    self endon(#"death");
    if (isdefined(self.parasiteenemy) && isdefined(self.parasiteenemy.hunted_by)) {
        self.parasiteenemy.hunted_by--;
    }
    self playsound(#"zmb_parasite_explo");
    wait(0.2);
    self delete();
}

