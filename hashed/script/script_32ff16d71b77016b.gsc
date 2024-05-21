// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\damagefeedback_shared.gsc;
#using scripts\cp_common\friendlyfire.gsc;
#using scripts\core_common\name_shared.gsc;
#using scripts\cp_common\util.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_4e75a347;

// Namespace namespace_4e75a347/event_7d801d3e
// Params 1, eflags: 0x20
// Checksum 0x3835c207, Offset: 0x2c8
// Size: 0x60
function event_handler[event_7d801d3e] function_2f02dc73(eventstruct) {
    function_3475cd5c();
    assert(isdefined(level.var_279714e8), "<unknown string>");
    self [[ level.var_279714e8 ]](eventstruct.entity);
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 0, eflags: 0x6 linked
// Checksum 0xa89d1548, Offset: 0x330
// Size: 0x3c
function private function_3475cd5c() {
    if (!isdefined(level.var_279714e8)) {
        if (!isdefined(level.var_279714e8)) {
            level.var_279714e8 = &function_86d89f13;
        }
    }
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 1, eflags: 0x2 linked
// Checksum 0x56e008a1, Offset: 0x378
// Size: 0x214
function function_86d89f13(spawner) {
    self.drone = spawnstruct();
    self.script_allowdeath = spawner.script_allowdeath;
    self.script_friendly_fire_disable = spawner.script_friendly_fire_disable;
    self.script_moveoverride = spawner.script_moveoverride;
    self.drone.skipdeathanim = spawner.skipdeathanim;
    self.drone.var_155ac8ec = spawner.dronerunoffset;
    self.drone.demeanor = isdefined(spawner.script_demeanor) ? spawner.script_demeanor : "COMBAT";
    self.drone.var_44b606c4 = isdefined(spawner.var_c64ce08) ? spawner.var_c64ce08 : 0;
    self.var_c2c86d65 = spawner.var_e1b853e3;
    self.script_moveplaybackrate = isdefined(spawner.script_moveplaybackrate) ? spawner.script_moveplaybackrate : 1;
    self.drone.aitype = spawner.aitype;
    self setcandamage(1);
    self.health = 1;
    self.maxhealth = 1;
    if (isdefined(self.script_moveplaybackrate)) {
        self.drone.moveplaybackrate = self.script_moveplaybackrate;
    } else {
        self.drone.moveplaybackrate = 1;
    }
    function_8adcfb4f(self.drone.aitype);
    self thread function_beea5074();
    if (!isdefined(self.drone.var_6f219852)) {
        self.drone.var_6f219852 = 100;
    }
    function_8069a99d();
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 0, eflags: 0x6 linked
// Checksum 0x2c22709a, Offset: 0x598
// Size: 0x64
function private function_8069a99d() {
    if (isdefined(self.target)) {
        if (isdefined(self.script_moveoverride)) {
            self thread function_35f3d336();
        } else {
            self thread function_54f05251();
        }
        return;
    }
    self thread drone_idle();
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 1, eflags: 0x6 linked
// Checksum 0x287497d3, Offset: 0x608
// Size: 0x1ca
function private function_8adcfb4f(aitype) {
    if (isdefined(aitype)) {
        primaryweapons = function_401e2eeb(aitype);
        if (primaryweapons.size > 0) {
            var_8df2011a = primaryweapons[randomintrange(0, primaryweapons.size)];
            var_8df2011a = function_eefa18e(var_8df2011a);
            randomweapon = getweapon(var_8df2011a);
            if (isdefined(randomweapon) && randomweapon.name != "none") {
                self.weapon = randomweapon;
            }
        }
    }
    if (!isdefined(self.weapon)) {
        if (self.team != "neutral") {
            self.weapon = getweapon(#"ar_accurate_t9");
        }
    }
    if (isdefined(self.weapon)) {
        self animation::attach_weapon(self.weapon);
        self.drone.weaponfx = "weapon/fx8_muz_ar_acc_3p";
        if (isdefined(self.weapon.firesound) && self.weapon.firesound != "") {
            self.drone.weaponsound = self.weapon.firesound;
            return;
        }
        self.drone.weaponsound = self.weapon.firesounddistant;
    }
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 1, eflags: 0x6 linked
// Checksum 0x5bafb65, Offset: 0x7e0
// Size: 0x98
function private function_eefa18e(str) {
    if (strendswith(str, "_cp") || strendswith(str, "_zm") || strendswith(str, "_mp")) {
        return getsubstr(str, 0, str.size - 3);
    }
    return str;
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 0, eflags: 0x6 linked
// Checksum 0xae371afb, Offset: 0x880
// Size: 0x34c
function private function_beea5074() {
    self endon(#"entitydeleted");
    results = self waittill(#"damage");
    eattacker = results.attacker;
    einflictor = results.inflictor;
    idamage = results.amount;
    smeansofdeath = results.mod;
    shitloc = results.part_name;
    weapon = results.weapon;
    if (!isdefined(self)) {
        return;
    }
    var_d3e9a2bd = isdefined(eattacker) && (self.team === eattacker.team || util::function_9b7092ef(self.team, eattacker.team));
    var_24c578bc = !isdefined(self.script_allowdeath) || self.script_allowdeath;
    if (var_d3e9a2bd || !var_24c578bc) {
        self.health = self.maxhealth;
        if (var_d3e9a2bd) {
            self thread function_beea5074();
            return;
        }
    }
    if (isdefined(eattacker) && eattacker != self) {
        if (!isdefined(einflictor) || !isai(einflictor) || isvehicle(einflictor) && einflictor getseatoccupant(0) === eattacker) {
            if (idamage > 0 && !var_d3e9a2bd && self.team != #"neutral" && shitloc !== "riotshield") {
                fatal = var_24c578bc && self.health <= 0;
                eattacker thread damagefeedback::update(smeansofdeath, einflictor, undefined, weapon, self, undefined, shitloc, fatal);
            }
        }
    }
    if (!var_24c578bc) {
        self thread function_beea5074();
        return;
    }
    if (!isdefined(self.script_friendly_fire_disable)) {
        self thread friendlyfire::function_1ad87afd(self, idamage, eattacker, smeansofdeath, undefined, einflictor);
    }
    s_params = {#eattacker:eattacker, #einflictor:einflictor, #idamage:idamage, #smeansofdeath:smeansofdeath, #shitloc:shitloc, #weapon:weapon};
    function_a484fe9(s_params);
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 1, eflags: 0x2 linked
// Checksum 0x197313f7, Offset: 0xbd8
// Size: 0x1d0
function function_a484fe9(s_params) {
    if (!isdefined(self) || is_true(self.drone.isdead)) {
        return;
    }
    playdeathanim = 1;
    if (isdefined(self.drone.skipdeathanim)) {
        playdeathanim = 0;
    } else if (isdefined(self.drone.deathanim)) {
        deathanim = self.drone.deathanim;
    } else {
        playdeathanim = 0;
    }
    if (self.health > 0) {
        self.health = 0;
    }
    self.drone.isdead = 1;
    self notify(#"death");
    if (playdeathanim && isdefined(self.drone.noragdoll)) {
        self play_anim(deathanim);
    } else if (!playdeathanim) {
        self function_19f971bb();
    } else {
        self play_anim(deathanim);
        self function_19f971bb();
    }
    if (isdefined(self)) {
        self notsolid();
        if (!isdefined(self.drone.nocorpsedelete)) {
            self thread function_e7956bb6();
        }
        if (isdefined(level.var_9c483e1)) {
            self [[ level.var_9c483e1 ]](s_params);
        }
    }
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 0, eflags: 0x6 linked
// Checksum 0xf651baa9, Offset: 0xdb0
// Size: 0x90
function private function_e7956bb6() {
    self endon(#"entitydeleted");
    wait(5);
    self.drone.var_9e843395 = 0;
    allplayers = function_58385b58();
    while (isdefined(self)) {
        wait(5);
        if (!function_bfc92d86(self)) {
            self delete();
        }
    }
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 1, eflags: 0x6 linked
// Checksum 0x729d12f8, Offset: 0xe48
// Size: 0xe2
function private function_bfc92d86(drone) {
    allplayers = function_58385b58();
    foreach (player in allplayers) {
        if (util::within_fov(player getplayercamerapos(), player getplayerangles(), drone.origin, 0.5)) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 0, eflags: 0x6 linked
// Checksum 0xc069f429, Offset: 0xf38
// Size: 0x33e
function private function_19f971bb() {
    self moveto(self.origin, 0.05);
    self rotateto(self.angles, 0.05);
    wait(0.1);
    var_361f5589 = getfakeaiarray();
    var_9789086c = 54;
    var_6076a7b7 = 10;
    var_d5f6126 = [];
    var_c2b552df = [];
    var_b6cd5ad8 = [];
    foreach (drone in var_361f5589) {
        if (drone != self && !isalive(drone)) {
            var_d5f6126[var_d5f6126.size] = drone;
            if (is_true(drone.drone.var_9e843395)) {
                var_b6cd5ad8[var_b6cd5ad8.size] = drone;
            }
            var_c2b552df[var_c2b552df.size] = drone;
        }
    }
    var_96d24dec = var_b6cd5ad8.size >= var_6076a7b7;
    if (var_96d24dec || var_c2b552df.size >= var_9789086c) {
        if (var_96d24dec) {
            var_d5f6126 = var_b6cd5ad8;
        } else {
            var_d5f6126 = var_c2b552df;
        }
        var_edd53fe8 = [];
        foreach (drone in var_d5f6126) {
            if (!function_bfc92d86(drone)) {
                var_edd53fe8[var_edd53fe8.size] = drone;
            }
        }
        if (var_edd53fe8.size > 0) {
            var_93b03e74 = var_edd53fe8;
        } else {
            var_93b03e74 = var_d5f6126;
        }
        var_f7055e = arraysort(var_93b03e74, level.players[0].origin, 0);
        var_570aa734 = var_f7055e[0];
        var_570aa734 delete();
    }
    if (isdefined(self)) {
        self startragdoll();
        self.drone.var_9e843395 = 1;
    }
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 1, eflags: 0x2 linked
// Checksum 0xe64ba7f5, Offset: 0x1280
// Size: 0x6a
function function_cab4b520(demeanor = "COMBAT") {
    self.drone.demeanor = demeanor;
    self.drone.var_fe46433f = [];
    if (isdefined(self.drone.var_544c8017)) {
        self.drone.var_e1c463c8 = 1;
    }
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 2, eflags: 0x6 linked
// Checksum 0xe0368c85, Offset: 0x12f8
// Size: 0xd6
function private function_44dd1cfb(var_ceb8c425, var_e325076f) {
    hasanim = 0;
    if (!isdefined(self.drone.var_fe46433f[var_ceb8c425][var_e325076f])) {
        self.drone.var_fe46433f[var_ceb8c425][var_e325076f] = self function_99406724("drone@drone", "_animation_alias", "_cover_type", var_ceb8c425, "_drone_state", var_e325076f, "_human_demeanor", self.drone.demeanor);
    }
    if (self.drone.var_fe46433f[var_ceb8c425][var_e325076f].size > 0) {
        hasanim = 1;
    }
    return hasanim;
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 2, eflags: 0x6 linked
// Checksum 0x6e3b022d, Offset: 0x13d8
// Size: 0x96
function private function_f2582c66(var_ceb8c425, var_e325076f) {
    if (self function_44dd1cfb(var_ceb8c425, var_e325076f)) {
        randomindex = randomintrange(0, self.drone.var_fe46433f[var_ceb8c425][var_e325076f].size);
        var_302d3447 = self.drone.var_fe46433f[var_ceb8c425][var_e325076f][randomindex];
        return var_302d3447;
    }
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 3, eflags: 0x6 linked
// Checksum 0xb8cc7184, Offset: 0x1478
// Size: 0x44
function private play_anim(droneanim, rate, mode) {
    self notify(#"stop_idle");
    play_single_anim(droneanim, rate, mode);
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 3, eflags: 0x6 linked
// Checksum 0xa4c4186c, Offset: 0x14c8
// Size: 0x34
function private function_98f16d76(droneanim, rate, mode) {
    play_single_anim(droneanim, rate, mode);
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 3, eflags: 0x6 linked
// Checksum 0xf9ce801a, Offset: 0x1508
// Size: 0xdc
function private play_single_anim(droneanim, rate = 1, mode = "server script") {
    var_4e1ed731 = self.origin;
    var_451a755d = self.angles;
    if (isdefined(self.node)) {
        var_4e1ed731 = self.node[#"origin"];
        self.origin = var_4e1ed731;
    }
    self thread animation::play(droneanim, var_4e1ed731, var_451a755d, rate, 0.2, 0.2, 0, 0, 0, 0, undefined, 0, mode);
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 1, eflags: 0x2 linked
// Checksum 0xdbba1959, Offset: 0x15f0
// Size: 0x192
function drone_idle(stance) {
    self notify(#"stop_idle");
    self endon(#"stop_idle", #"death", #"entitydeleted");
    if (!isdefined(stance)) {
        stance = "cover_exposed";
    }
    if (isdefined(self.idleanim) || self function_44dd1cfb(stance, "IDLE")) {
        while (isdefined(self)) {
            self stopanimscripted();
            if (isdefined(self.idleanim)) {
                idleanim = self.idleanim;
            } else {
                randomindex = randomintrange(0, self.drone.var_fe46433f[stance][#"idle"].size);
                idleanim = self.drone.var_fe46433f[stance][#"idle"][randomindex];
            }
            self thread function_98f16d76(idleanim);
            var_447218d2 = getanimlength(idleanim);
            wait(var_447218d2 - 0.2);
        }
    }
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 1, eflags: 0x6 linked
// Checksum 0x6c2f2b3a, Offset: 0x1790
// Size: 0x164
function private function_eaea34d2(lastnode) {
    self.drone.var_544c8017 = undefined;
    self.node = lastnode;
    self notify(#"hash_276eb2b6c51bf236");
    if (isdefined(lastnode) && isdefined(lastnode[#"script_noteworthy"]) && lastnode[#"script_noteworthy"] != "idle") {
        if (!self check_delete(lastnode[#"script_noteworthy"])) {
            self thread drone_fight(lastnode[#"script_noteworthy"]);
        }
        return;
    }
    if (isdefined(lastnode) && isdefined(lastnode[#"script_noteworthy"]) && lastnode[#"script_noteworthy"] != "idle") {
        stance = function_4e864a71("", lastnode[#"script_noteworthy"]);
    } else {
        stance = function_4e864a71();
    }
    self thread drone_idle(stance);
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 1, eflags: 0x2 linked
// Checksum 0xf17fe14c, Offset: 0x1900
// Size: 0x382
function drone_fight(stance) {
    self endon(#"death", #"entitydeleted", #"hash_1b1ebb63b6197fd7");
    self.drone.stance = stance;
    self thread drone_idle(stance);
    wait(0.3);
    while (isdefined(self)) {
        var_73e5bfb2 = 0;
        var_87aec447 = 100;
        if (math::cointoss()) {
            var_c10115e8 = 0;
            if (var_87aec447 > randomint(100)) {
                var_c10115e8 = 1;
                if (self function_44dd1cfb(stance, "IDLE_TO_ATTACK")) {
                    animation = self function_f2582c66(stance, "IDLE_TO_ATTACK");
                    self play_anim(animation);
                    waittime = getanimlength(animation) - 0.1;
                    wait(waittime);
                } else {
                    var_73e5bfb2 = 0.5;
                }
            }
            if (self function_44dd1cfb(stance, "ATTACK")) {
                if (var_c10115e8) {
                    animation = self function_f2582c66(stance, "ATTACK");
                    self thread play_anim(animation);
                    wait(0.1);
                }
                if (var_73e5bfb2 > 0) {
                    wait(var_73e5bfb2);
                    var_73e5bfb2 = 0;
                }
                self drone_fire_randomly();
            }
            wait(0.5);
            if (var_c10115e8) {
                if (self function_44dd1cfb(stance, "ATTACK_TO_IDLE")) {
                    animation = self function_f2582c66(stance, "ATTACK_TO_IDLE");
                    self play_anim(animation);
                    waittime = getanimlength(animation) - 0.1;
                    wait(waittime);
                } else {
                    wait(0.5);
                }
            }
            self thread drone_idle(stance);
            wait(0.3);
            if (self function_44dd1cfb(stance, "RELOAD") && math::cointoss()) {
                animation = self function_f2582c66(stance, "RELOAD");
                self play_anim(animation);
                waittime = getanimlength(animation) - 0.1;
                wait(waittime);
            }
            wait(1);
            continue;
        }
        wait(1);
    }
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 0, eflags: 0x6 linked
// Checksum 0x5be05043, Offset: 0x1c90
// Size: 0x22c
function private drone_fire_randomly() {
    self endon(#"death", #"entitydeleted");
    if (math::cointoss()) {
        self drone_shoot();
        wait(0.1);
        self drone_shoot();
        wait(0.1);
        self drone_shoot();
        if (math::cointoss()) {
            wait(0.1);
            self drone_shoot();
        }
        if (math::cointoss()) {
            wait(0.1);
            self drone_shoot();
            wait(0.1);
            self drone_shoot();
            wait(0.1);
        }
        if (math::cointoss()) {
            wait(randomfloatrange(1, 2));
        }
        return;
    }
    self drone_shoot();
    wait(randomfloatrange(0.25, 0.75));
    self drone_shoot();
    wait(randomfloatrange(0.15, 0.75));
    self drone_shoot();
    wait(randomfloatrange(0.15, 0.75));
    self drone_shoot();
    wait(randomfloatrange(0.15, 0.75));
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 0, eflags: 0x6 linked
// Checksum 0x77ff341d, Offset: 0x1ec8
// Size: 0x134
function private drone_shoot() {
    self notify(#"firing");
    self endon(#"death", #"entitydeleted", #"firing");
    drone_shoot_fx();
    if (is_true(self.drone.var_44b606c4)) {
        self thread function_d3d685b8();
    }
    fireanim = self function_f2582c66(self.drone.stance, "ATTACK");
    self thread animation::play(fireanim, self.origin, self.angles, 1, 1, 0.2);
    util::delay(0.25, undefined, &clearanim, fireanim, 0);
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 0, eflags: 0x6 linked
// Checksum 0x423f1990, Offset: 0x2008
// Size: 0x54
function private drone_shoot_fx() {
    playfxontag(self.drone.weaponfx, self, "tag_flash");
    self thread drone_play_weapon_sound(self.drone.weaponsound);
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 1, eflags: 0x6 linked
// Checksum 0x7db0cdf4, Offset: 0x2068
// Size: 0x44
function private drone_play_weapon_sound(weaponsound) {
    if (isdefined(weaponsound) && soundexists(weaponsound)) {
        self playsound(weaponsound);
    }
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 0, eflags: 0x6 linked
// Checksum 0x97e1be, Offset: 0x20b8
// Size: 0xc4
function private function_d3d685b8() {
    startpos = self gettagorigin("tag_flash");
    angles = self gettagangles("tag_flash");
    forward = anglestoforward(angles);
    endpos = startpos + vectorscale(forward, 1000);
    startpos += vectorscale(forward, 10);
    magicbullet(self.weapon, startpos, endpos, self);
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 0, eflags: 0x6 linked
// Checksum 0x725304ed, Offset: 0x2188
// Size: 0x4c
function private function_35f3d336() {
    self endon(#"death", #"entitydeleted");
    self waittill(#"move");
    self thread function_54f05251();
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 1, eflags: 0x6 linked
// Checksum 0x47a91193, Offset: 0x21e0
// Size: 0x106
function private get_anim_data(runanim) {
    run_speed = 170;
    anim_relative = 1;
    anim_time = getanimlength(runanim);
    var_6aae47b7 = getmovedelta(runanim, 0, 1);
    var_df2d0f7f = length(var_6aae47b7);
    if (anim_time > 0 && var_df2d0f7f > 0) {
        run_speed = var_df2d0f7f / anim_time;
        anim_relative = 0;
    }
    struct = spawnstruct();
    struct.anim_relative = anim_relative;
    struct.run_speed = run_speed;
    struct.anim_time = anim_time;
    return struct;
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 0, eflags: 0x2 linked
// Checksum 0x2ac21774, Offset: 0x22f0
// Size: 0xb4
function function_f89df05b() {
    runanim = self function_f2582c66("cover_exposed", "RUN");
    var_6fc8022e = get_anim_data(runanim);
    if (!is_true(self.var_c2c86d65)) {
        self.drone.run_speed = var_6fc8022e.run_speed;
    }
    self thread play_anim(runanim, self.drone.moveplaybackrate, "mover");
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 0, eflags: 0x6 linked
// Checksum 0xb11fda2e, Offset: 0x23b0
// Size: 0x584
function private function_54f05251() {
    self endon(#"death", #"entitydeleted");
    self.node = undefined;
    wait(0.05);
    path = self function_7bce6b25(self.target, self.origin);
    assert(isdefined(path));
    assert(isdefined(path[0]));
    function_f89df05b();
    path_index = 0;
    var_38c05d54 = 0;
    if (isdefined(path[path.size - 1][#"dist"]) && path[path.size - 1][#"dist"] > 0) {
        var_38c05d54 = 1;
    }
    var_23273fef = 0;
    self.drone.var_544c8017 = path[path_index][#"origin"];
    while (path_index < path.size) {
        assert(isdefined(path[path_index]));
        assert(isdefined(path[path_index][#"dist"]));
        destination = path[path_index][#"origin"];
        if (self.drone.var_6f219852 > 0) {
            var_792c52e4 = self.origin;
            for (var_946a08d6 = self.drone.var_6f219852; var_946a08d6 > 0 && path_index < path.size; var_946a08d6 = 0) {
                destination = path[path_index][#"origin"];
                distance = distance2d(destination, var_792c52e4);
                if (distance <= var_946a08d6) {
                    var_792c52e4 = destination;
                    var_946a08d6 -= distance;
                    path_index++;
                    if (path_index >= path.size) {
                        if (var_38c05d54) {
                            path_index = 0;
                        } else {
                            var_23273fef = 1;
                        }
                    }
                    continue;
                }
                direction = vectornormalize(destination - var_792c52e4);
                destination = var_792c52e4 + direction * var_946a08d6;
            }
            distance = distance2d(destination, self.origin);
        } else {
            distance = distance2d(destination, self.origin);
            path_index++;
            if (path_index >= path.size) {
                if (var_38c05d54) {
                    path_index = 0;
                } else {
                    var_23273fef = 1;
                }
            }
        }
        var_d7e06ec6 = distance / self.drone.run_speed * self.drone.moveplaybackrate;
        self.drone.var_544c8017 = destination;
        if (var_23273fef) {
            self thread function_35b3aa66((0, path[path.size - 1][#"angles"][1], 0), min(var_d7e06ec6, 0.25), var_d7e06ec6 - 0.35);
        } else {
            var_df8541a5 = vectortoangles(destination - self.origin);
            self rotateto((0, var_df8541a5[1], 0), min(0.5, var_d7e06ec6));
        }
        self moveto(destination, var_d7e06ec6);
        wait(var_d7e06ec6);
        if (isdefined(path[path_index][#"notify"])) {
            self notify(path[path_index][#"notify"]);
            level notify(path[path_index][#"notify"]);
        }
        if (is_true(self.drone.var_e1c463c8)) {
            self.drone.var_e1c463c8 = 0;
            self thread drone_idle();
            wait(0.2);
            function_f89df05b();
        }
    }
    self thread function_eaea34d2(path[path.size - 1]);
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 3, eflags: 0x6 linked
// Checksum 0x28b80f64, Offset: 0x2940
// Size: 0x6c
function private function_35b3aa66(angle, duration, delay) {
    self endon(#"death", #"entitydeleted");
    if (delay > 0) {
        wait(delay);
    }
    self rotateto(angle, duration);
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 2, eflags: 0x6 linked
// Checksum 0x57eb0e09, Offset: 0x29b8
// Size: 0x2c6
function private function_7bce6b25(var_3d70749c, var_a3375299) {
    assert(isdefined(var_3d70749c));
    assert(isdefined(var_a3375299));
    hasnextnode = 0;
    index = 0;
    nodes = [];
    var_62e82494 = [];
    currentnode = spawner::get_goal(var_3d70749c);
    if (isdefined(currentnode)) {
        hasnextnode = 1;
    }
    while (hasnextnode) {
        hasnextnode = 0;
        nodes[index][#"origin"] = function_a7879d43(currentnode);
        nodes[index][#"dist"] = 0;
        nodes[index][#"angles"] = currentnode.angles;
        if (isdefined(currentnode.script_notify)) {
            nodes[index][#"notify"] = currentnode.script_notify;
        }
        var_62e82494[currentnode.targetname] = index;
        if (isdefined(currentnode.target)) {
            if (isdefined(var_62e82494[currentnode.target])) {
                nextnodeindex = var_62e82494[currentnode.target];
                nextnode = nodes[nextnodeindex];
                nodes[index][#"dist"] = distance(currentnode.origin, nextnode[#"origin"]);
            } else {
                nextnode = spawner::get_goal(currentnode.target);
                if (isdefined(nextnode)) {
                    nodes[index][#"dist"] = distance(currentnode.origin, nextnode.origin);
                    currentnode = nextnode;
                    hasnextnode = 1;
                    index++;
                }
            }
            continue;
        }
        nodes[index][#"script_noteworthy"] = function_4e864a71(currentnode.type, currentnode.script_noteworthy);
    }
    return nodes;
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 2, eflags: 0x6 linked
// Checksum 0xd9a9ff5b, Offset: 0x2c88
// Size: 0xea
function private function_4e864a71(nodetype, noteworthy) {
    result = noteworthy;
    if (!isdefined(noteworthy)) {
        result = "cover_exposed";
        if (nodetype === "Cover Right") {
            result = "cover_right";
        } else if (nodetype === "Cover Left") {
            result = "cover_left";
        } else if (nodetype === "Cover Pillar") {
            result = "cover_pillar";
        } else if (nodetype === "Cover Crouch" || nodetype === "Cover Crouch Window") {
            result = "cover_crouch";
        } else if (nodetype === "Cover Prone") {
            result = "cover_exposed";
        }
    }
    return result;
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 1, eflags: 0x6 linked
// Checksum 0x1c6b989d, Offset: 0x2d80
// Size: 0x17e
function private function_a7879d43(node) {
    adjustedorigin = node.origin;
    if (isdefined(node.radius) && node.radius > 0) {
        if (!isdefined(self.drone.var_155ac8ec)) {
            self.drone.var_155ac8ec = -1 + randomfloat(2);
        }
        if (!isdefined(node.angles)) {
            node.angles = (0, 0, 0);
        }
        forwardvec = anglestoforward(node.angles);
        rightvec = anglestoright(node.angles);
        upvec = anglestoup(node.angles);
        relativeoffset = (0, self.drone.var_155ac8ec * node.radius, 0);
        adjustedorigin += forwardvec * relativeoffset[0];
        adjustedorigin += rightvec * relativeoffset[1];
        adjustedorigin += upvec * relativeoffset[2];
    }
    return adjustedorigin;
}

// Namespace namespace_4e75a347/namespace_4e75a347
// Params 1, eflags: 0x6 linked
// Checksum 0xa0761705, Offset: 0x2f08
// Size: 0x84
function private check_delete(script_noteworthy) {
    if (!isdefined(self)) {
        return true;
    }
    if (!isdefined(script_noteworthy)) {
        return true;
    }
    if (script_noteworthy == "delete_on_goal") {
        self delete();
        return true;
    } else if (script_noteworthy == "die_on_goal") {
        self function_a484fe9();
        return true;
    }
    return false;
}

