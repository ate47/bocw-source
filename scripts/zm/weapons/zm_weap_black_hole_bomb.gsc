// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_stats.gsc;
#using script_24c32478acf44108;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_player.gsc;
#using script_4dc6a9b234b838e1;
#using scripts\weapons\weaponobjects.gsc;
#using scripts\core_common\ai\zombie_vortex.gsc;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\vehicle_ai_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using script_6167e26342be354b;
#using scripts\core_common\item_inventory.gsc;
#using script_471b31bd963b388e;
#using scripts\core_common\item_world.gsc;
#using scripts\core_common\hud_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace namespace_71f583f0;

// Namespace namespace_71f583f0/namespace_71f583f0
// Params 0, eflags: 0x5
// Checksum 0x61866ae, Offset: 0x248
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_4f25b1a89459b1f8", &preinit, &postinit, undefined, "zm_weapons");
}

// Namespace namespace_71f583f0/namespace_71f583f0
// Params 0, eflags: 0x6 linked
// Checksum 0x34e0f970, Offset: 0x2a0
// Size: 0x174
function private preinit() {
    clientfield::register("actor", "" + #"hash_399ab6541d717dc7", 1, 1, "int");
    level.var_2e1abf5f = getweapon(#"hash_6a4dd5ed56f6e3f6");
    weaponobjects::function_e6400478(#"hash_6a4dd5ed56f6e3f6", &function_54881ba1, 1);
    zm_weapons::function_404c3ad5(level.var_2e1abf5f, &function_995359b9);
    zm_weapons::function_76403f51(level.var_2e1abf5f);
    callback::add_callback(#"on_ai_killed", &function_ca505fd3);
    namespace_9ff9f642::register_slowdown(#"hash_2c88ef7895dccf65", 0.7, 1);
    namespace_9ff9f642::register_slowdown(#"hash_54dc5d9bfaadb765", 0.6, 1);
}

// Namespace namespace_71f583f0/namespace_71f583f0
// Params 15, eflags: 0x2 linked
// Checksum 0x4bf5c185, Offset: 0x420
// Size: 0xd2
function function_995359b9(inflictor, attacker, *damage, *flags, *meansofdeath, *weapon, *vpoint, *vdir, *shitloc, *vdamageorigin, *psoffsettime, *boneindex, *modelindex, *surfacetype, *vsurfacenormal) {
    if (isentity(surfacetype) && isplayer(vsurfacenormal)) {
        self.var_22e8a925 = surfacetype.origin;
        self.var_87b962fc = gettime() + 1000;
    }
}

// Namespace namespace_71f583f0/namespace_71f583f0
// Params 1, eflags: 0x2 linked
// Checksum 0xf29a264e, Offset: 0x500
// Size: 0xbc
function function_ca505fd3(params) {
    if (params.weapon === level.var_2e1abf5f && isplayer(params.eattacker) && params.smeansofdeath === "MOD_GRENADE_SPLASH" && isdefined(self.var_87b962fc) && gettime() < self.var_87b962fc) {
        self namespace_cc411409::ragdoll_launch(isdefined(self.var_22e8a925) ? self.var_22e8a925 : params.einflictor.origin, 2);
    }
}

// Namespace namespace_71f583f0/namespace_71f583f0
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x5c8
// Size: 0x4
function postinit() {
    
}

// Namespace namespace_71f583f0/namespace_71f583f0
// Params 1, eflags: 0x2 linked
// Checksum 0x9954158, Offset: 0x5d8
// Size: 0x22
function function_54881ba1(watcher) {
    watcher.onspawn = &function_e38ab081;
}

// Namespace namespace_71f583f0/namespace_71f583f0
// Params 2, eflags: 0x2 linked
// Checksum 0x4c82d002, Offset: 0x608
// Size: 0x5c
function function_e38ab081(*watcher, player) {
    player endon(#"death");
    level endon(#"end_game");
    self thread function_93a73145(player);
}

// Namespace namespace_71f583f0/namespace_71f583f0
// Params 1, eflags: 0x2 linked
// Checksum 0x10c8d410, Offset: 0x670
// Size: 0x1a4
function function_93a73145(owner) {
    self endon(#"death");
    self waittill(#"stationary");
    self resetmissiledetonationtime();
    successful = 0;
    if (zm_utility::is_point_inside_enabled_zone(self.origin)) {
        self.var_acdc8d71 = getclosestpointonnavmesh(self.origin, 100, 15.1875);
        if (isdefined(self.var_acdc8d71)) {
            level thread function_f576c273(self);
            self thread zombie_vortex::start_timed_vortex(1, self.var_acdc8d71, 275, level.var_2e1abf5f.explosionradius, owner, level.var_2e1abf5f, &function_9c0c8ac3, &vortex_explosion);
            successful = 1;
        }
    }
    if (!successful && isplayer(owner) && !is_true(owner.var_9e3339e2)) {
        owner thread function_600a82c(owner);
        self deletedelay();
    }
}

// Namespace namespace_71f583f0/namespace_71f583f0
// Params 1, eflags: 0x6 linked
// Checksum 0xd090a0af, Offset: 0x820
// Size: 0x16c
function private function_600a82c(player) {
    player endon(#"death");
    self notify("1d0aad1ca52c5f89");
    self endon("1d0aad1ca52c5f89");
    waitframe(1);
    item = function_4ba8fde(#"black_hole_bomb_item_t9_sr");
    if (isdefined(item)) {
        item.amount = 1;
        var_fa3df96 = player item_inventory::function_e66dcff5(item);
        if (isdefined(var_fa3df96)) {
            if (!item_world_util::function_db35e94f(item.networkid)) {
                item.networkid = item_world_util::function_970b8d86(var_fa3df96);
            }
            for (var_ddeb881e = item_inventory::function_2e711614(var_fa3df96); var_ddeb881e.itementry === item.itementry; var_ddeb881e = item_inventory::function_2e711614(var_fa3df96)) {
                waitframe(1);
            }
            if (var_ddeb881e.networkid === 32767) {
                player item_world::function_de2018e3(item, player, var_fa3df96, 0);
            }
        }
    }
}

// Namespace namespace_71f583f0/namespace_71f583f0
// Params 1, eflags: 0x2 linked
// Checksum 0x47880bd4, Offset: 0x998
// Size: 0xf4
function function_f576c273(var_a495cbed) {
    if (!isdefined(var_a495cbed)) {
        return;
    }
    level endon(#"game_ended");
    var_a495cbed endon(#"death");
    while (!mayspawnfakeentity()) {
        waitframe(1);
    }
    teleport_trigger = spawn("trigger_radius", var_a495cbed.var_acdc8d71, 0, 64, 70);
    var_a495cbed thread function_c2f76b45(teleport_trigger);
    var_a495cbed waittill(#"explode");
    teleport_trigger notify(#"hash_5e52043e21f343d7");
    wait(0.1);
    teleport_trigger delete();
}

// Namespace namespace_71f583f0/namespace_71f583f0
// Params 2, eflags: 0x2 linked
// Checksum 0x1fa725c, Offset: 0xa98
// Size: 0x284
function function_7ceb96bf(player, *endon_condition) {
    endon_condition endon(#"death");
    if (!bullettracepassed(endon_condition geteye(), self.origin + (0, 0, 65), 0, endon_condition)) {
        return;
    }
    new_origin = undefined;
    if (isdefined(level.var_5816975b)) {
        new_origin = endon_condition [[ level.var_5816975b ]](endon_condition);
    }
    if (isdefined(level.var_8179368e)) {
        new_origin = endon_condition [[ level.var_8179368e ]](endon_condition, 1);
    }
    if (isdefined(level.var_dbf9c70d)) {
        new_origin = endon_condition [[ level.var_dbf9c70d ]](endon_condition);
    }
    if (!isdefined(new_origin)) {
        new_origin = endon_condition zm_player::check_for_valid_spawn_near_team(endon_condition, 1);
    }
    if (!isdefined(new_origin)) {
        if (isdefined(endon_condition.var_f4710251)) {
            targetplayer = getentbynum(endon_condition.var_f4710251);
            if (isdefined(targetplayer) && isplayer(targetplayer) && isalive(targetplayer)) {
                new_origin = endon_condition squad_spawn::function_e402b74e(endon_condition, targetplayer);
            }
        }
    }
    if (isdefined(new_origin)) {
        angles = isdefined(new_origin.angles) ? new_origin.angles : (0, 0, 0);
        origin = isdefined(new_origin.origin) ? new_origin.origin : origin;
    }
    if (!isvec(origin) || !isvec(angles)) {
        return;
    }
    endon_condition function_13fce2b({#origin:origin, #angles:angles});
}

// Namespace namespace_71f583f0/namespace_71f583f0
// Params 1, eflags: 0x2 linked
// Checksum 0x3cdf59b4, Offset: 0xd28
// Size: 0x158
function function_c2f76b45(var_69cf75ad) {
    var_69cf75ad endon(#"hash_5e52043e21f343d7");
    while (true) {
        waitresult = var_69cf75ad waittill(#"trigger");
        ent_player = waitresult.activator;
        if (is_true(level.var_b54157cf)) {
            continue;
        }
        if (isplayer(ent_player) && !ent_player isonground() && !is_true(ent_player.lander) && !ent_player function_b4813488() && !ent_player isonladder() && !ent_player isziplining()) {
            var_69cf75ad thread function_f6b48774(ent_player, &function_7ceb96bf, &function_a0b4dce9);
        }
        wait(0.1);
    }
}

// Namespace namespace_71f583f0/namespace_71f583f0
// Params 1, eflags: 0x2 linked
// Checksum 0x6e1f87cb, Offset: 0xe88
// Size: 0xc
function function_a0b4dce9(*ent_player) {
    
}

// Namespace namespace_71f583f0/namespace_71f583f0
// Params 3, eflags: 0x2 linked
// Checksum 0x194dbb23, Offset: 0xea0
// Size: 0x13c
function function_f6b48774(ent, on_enter_payload, on_exit_payload) {
    ent endon(#"death");
    self endon(#"hash_5e52043e21f343d7");
    if (ent function_fa82badd(self)) {
        return;
    }
    self function_8658dbc9(ent);
    endon_condition = "leave_trigger_" + self getentitynumber();
    if (isdefined(on_enter_payload)) {
        self thread [[ on_enter_payload ]](ent, endon_condition);
    }
    while (isdefined(ent) && ent istouching(self) && isdefined(self)) {
        waitframe(1);
    }
    ent notify(endon_condition);
    if (isdefined(ent) && isdefined(on_exit_payload)) {
        self thread [[ on_exit_payload ]](ent);
    }
    if (isdefined(ent)) {
        self function_570c993c(ent);
    }
}

// Namespace namespace_71f583f0/namespace_71f583f0
// Params 1, eflags: 0x2 linked
// Checksum 0x583fbbe8, Offset: 0xfe8
// Size: 0x70
function function_fa82badd(trig) {
    if (!isdefined(self._triggers)) {
        return false;
    }
    if (!isdefined(self._triggers[trig getentitynumber()])) {
        return false;
    }
    if (!self._triggers[trig getentitynumber()]) {
        return false;
    }
    return true;
}

// Namespace namespace_71f583f0/namespace_71f583f0
// Params 1, eflags: 0x2 linked
// Checksum 0x293e5ca2, Offset: 0x1060
// Size: 0x44
function function_8658dbc9(ent) {
    if (!isdefined(ent._triggers)) {
        ent._triggers = [];
    }
    ent._triggers[self getentitynumber()] = 1;
}

// Namespace namespace_71f583f0/namespace_71f583f0
// Params 1, eflags: 0x2 linked
// Checksum 0x7b5322f7, Offset: 0x10b0
// Size: 0x64
function function_570c993c(ent) {
    if (!isdefined(ent._triggers)) {
        return;
    }
    if (!isdefined(ent._triggers[self getentitynumber()])) {
        return;
    }
    ent._triggers[self getentitynumber()] = 0;
}

// Namespace namespace_71f583f0/namespace_71f583f0
// Params 1, eflags: 0x2 linked
// Checksum 0xdfa2baf, Offset: 0x1120
// Size: 0x32c
function function_13fce2b(var_9e4b7aff) {
    self endon(#"death");
    if (!isdefined(var_9e4b7aff)) {
        return;
    }
    prone_offset = (0, 0, 49);
    crouch_offset = (0, 0, 20);
    var_3334a329 = (0, 0, 0);
    destination = undefined;
    playsoundatposition(#"hash_89afcb430026d5c", self.origin + (0, 0, 50));
    if (self getstance() == "prone") {
        destination = var_9e4b7aff.origin + prone_offset;
    } else if (self getstance() == "crouch") {
        destination = var_9e4b7aff.origin + crouch_offset;
    } else {
        destination = var_9e4b7aff.origin + var_3334a329;
    }
    if (isdefined(level.var_6ca5d247)) {
        level [[ level.var_6ca5d247 ]](self);
    }
    function_16713f43(var_9e4b7aff.origin);
    self val::set(#"hash_58dc4106d3bee61b", "freezecontrols", 1);
    self val::set(#"hash_58dc4106d3bee61b", "disable_offhand_weapons", 1);
    self val::set(#"hash_58dc4106d3bee61b", "disable_weapons", 1);
    self playsound(#"hash_2bdcf53469acd60d");
    self dontinterpolate();
    self setorigin(destination);
    self setplayerangles(var_9e4b7aff.angles);
    self val::reset(#"hash_58dc4106d3bee61b", "freezecontrols");
    self val::reset(#"hash_58dc4106d3bee61b", "disable_offhand_weapons");
    self val::reset(#"hash_58dc4106d3bee61b", "disable_weapons");
    self zm_stats::increment_challenge_stat(#"hash_5a6d38dd5c5f950d");
    self thread function_e788f77();
}

// Namespace namespace_71f583f0/namespace_71f583f0
// Params 1, eflags: 0x2 linked
// Checksum 0x292e212, Offset: 0x1458
// Size: 0xd4
function function_16713f43(pos) {
    var_d3d9d70c = spawn("script_model", pos);
    var_d3d9d70c setmodel("tag_origin");
    playfxontag(#"hash_78a8b7d254316482", var_d3d9d70c, "tag_origin");
    var_d3d9d70c playsound(#"hash_2f24566e72d6e2ab");
    var_d3d9d70c playloopsound(#"hash_172aa3c3eb38f9a7");
    var_d3d9d70c thread function_f7e9dfd7();
}

// Namespace namespace_71f583f0/namespace_71f583f0
// Params 0, eflags: 0x2 linked
// Checksum 0x44669ffc, Offset: 0x1538
// Size: 0xa
function function_e788f77() {
    wait(1);
}

// Namespace namespace_71f583f0/namespace_71f583f0
// Params 0, eflags: 0x2 linked
// Checksum 0x261674d4, Offset: 0x1550
// Size: 0x44
function function_f7e9dfd7() {
    wait(2);
    playsoundatposition("wpn_bhbomb_exit_end", self.origin);
    self delete();
}

// Namespace namespace_71f583f0/namespace_71f583f0
// Params 7, eflags: 0x2 linked
// Checksum 0x41fef2d9, Offset: 0x15a0
// Size: 0x814
function function_9c0c8ac3(v_vortex_origin, n_vortex_radius, n_start_time, n_vortex_time, svortex, eattacker, weapon) {
    team = isdefined(level.zombie_team) ? level.zombie_team : #"axis";
    for (n_currtime = 0; n_currtime <= n_vortex_time; n_currtime = gettime() - n_start_time) {
        a_ai_zombies = function_72d3bca6(getaiteamarray(team), v_vortex_origin, undefined, undefined, n_vortex_radius);
        a_ai_zombies = arraycombine(a_ai_zombies, zombie_vortex::vortex_z_extension(a_ai_zombies, v_vortex_origin, n_vortex_radius), 0, 0);
        svortex.zombies = a_ai_zombies;
        time = gettime();
        foreach (ai_zombie in a_ai_zombies) {
            if (!isdefined(ai_zombie.var_6f84b820)) {
                continue;
            }
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
            ai_zombie clientfield::set("" + #"hash_399ab6541d717dc7", 1);
            ai_zombie.blockingpain = 1;
            ai_zombie thread function_fb7c4f41();
            switch (ai_zombie.var_6f84b820) {
            case #"normal":
                if (ai_zombie.archetype === #"zombie_dog") {
                    ai_zombie thread namespace_9ff9f642::slowdown(#"hash_54dc5d9bfaadb765");
                    if (!isdefined(ai_zombie.var_56912e22) || time >= ai_zombie.var_56912e22) {
                        var_34e3b3f7 = ai_zombie.maxhealth * 0.4;
                        ai_zombie dodamage(var_34e3b3f7, v_vortex_origin, eattacker, svortex, undefined, "MOD_DOT", 0, weapon);
                        ai_zombie.var_56912e22 = gettime() + 1000;
                    }
                    break;
                }
                ai_zombie.var_db490292 = "blackholebomb_pull_fast";
                ai_zombie.var_92b78660 = 1024;
                if (is_true(ai_zombie._black_hole_bomb_collapse_death) && !zm_utility::is_magic_bullet_shield_enabled(ai_zombie)) {
                    ai_zombie.skipautoragdoll = 1;
                    ai_zombie kill(ai_zombie.origin + (0, 0, 50), ai_zombie.interdimensional_gun_attacker, undefined, weapon, 0, 1);
                    level thread hud::function_c9800094(eattacker, ai_zombie.origin + (0, 0, 50), ai_zombie.maxhealth, 1);
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
                break;
            case #"special":
                ai_zombie thread namespace_9ff9f642::slowdown(#"hash_2c88ef7895dccf65");
                if (!isdefined(ai_zombie.var_56912e22) || time >= ai_zombie.var_56912e22) {
                    var_34e3b3f7 = ai_zombie.maxhealth * 0.05;
                    ai_zombie dodamage(var_34e3b3f7, v_vortex_origin, eattacker, svortex, undefined, "MOD_DOT", 0, weapon);
                    ai_zombie.var_56912e22 = gettime() + 1000;
                }
                if (!is_true(ai_zombie.interdimensional_gun_kill) && !ai_zombie.ignorevortices) {
                    ai_zombie.var_ecd5b1b9 = svortex;
                    ai_zombie.damageorigin = v_vortex_origin;
                    ai_zombie.interdimensional_gun_kill = 1;
                    ai_zombie.interdimensional_gun_attacker = eattacker;
                    ai_zombie.interdimensional_gun_inflictor = eattacker;
                    ai_zombie.interdimensional_gun_weapon = weapon;
                }
                break;
            case #"elite":
                if (is_true(ai_zombie.var_8576e0be)) {
                    ai_zombie namespace_9ff9f642::function_520f4da5(#"hash_2c88ef7895dccf65");
                } else {
                    ai_zombie thread namespace_9ff9f642::slowdown(#"hash_2c88ef7895dccf65");
                }
                if (!isdefined(ai_zombie.var_56912e22) || time >= ai_zombie.var_56912e22) {
                    var_34e3b3f7 = ai_zombie.maxhealth * 0.02;
                    ai_zombie dodamage(var_34e3b3f7, v_vortex_origin, eattacker, svortex, undefined, "MOD_DOT", 0, weapon);
                    ai_zombie.var_56912e22 = gettime() + 1000;
                }
                if (!is_true(ai_zombie.interdimensional_gun_kill) && !ai_zombie.ignorevortices) {
                    ai_zombie.var_ecd5b1b9 = svortex;
                    ai_zombie.damageorigin = v_vortex_origin;
                    ai_zombie.interdimensional_gun_kill = 1;
                    ai_zombie.interdimensional_gun_attacker = eattacker;
                    ai_zombie.interdimensional_gun_inflictor = eattacker;
                    ai_zombie.interdimensional_gun_weapon = weapon;
                }
                break;
            default:
                break;
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_71f583f0/namespace_71f583f0
// Params 0, eflags: 0x6 linked
// Checksum 0xb5229ee0, Offset: 0x1dc0
// Size: 0x76
function private function_fb7c4f41() {
    self notify(#"hash_1035c763ec8428ac");
    self endon(#"death", #"hash_1035c763ec8428ac");
    wait(0.25);
    self clientfield::set("" + #"hash_399ab6541d717dc7", 0);
    self.blockingpain = 0;
}

// Namespace namespace_71f583f0/namespace_71f583f0
// Params 3, eflags: 0x6 linked
// Checksum 0x88df7af6, Offset: 0x1e40
// Size: 0x7c
function private vortex_explosion(*v_vortex_explosion_origin, eattacker, *n_vortex_radius) {
    self.origin += (0, 0, 50);
    self detonate(n_vortex_radius);
    /#
        recordstar(self.origin, (1, 0, 1), "<unknown string>");
    #/
}

/#

    // Namespace namespace_71f583f0/namespace_71f583f0
    // Params 1, eflags: 0x0
    // Checksum 0xc9c6d395, Offset: 0x1ec8
    // Size: 0x4c
    function function_1a6605b0(string) {
        if (!getdvarint(#"hash_4fd011a8151f574c", 0)) {
            return;
        }
        println(string);
    }

#/
