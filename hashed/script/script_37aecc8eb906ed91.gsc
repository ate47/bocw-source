// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\weaponobjects.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\core_common\weapons_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\globallogic\globallogic_score.gsc;
#using scripts\core_common\entityheadicons_shared.gsc;
#using scripts\core_common\damage.gsc;
#using scripts\core_common\contracts_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\challenges_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\battlechatter.gsc;

#namespace nightingale;

// Namespace nightingale/nightingale
// Params 0, eflags: 0x5
// Checksum 0x5221b645, Offset: 0x178
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"nightingale", &preinit, undefined, undefined, undefined);
}

// Namespace nightingale/nightingale
// Params 0, eflags: 0x6 linked
// Checksum 0x9a3e12b6, Offset: 0x1c0
// Size: 0x21c
function private preinit() {
    clientfield::register("scriptmover", "" + #"hash_7cc71113338444c4", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_7c2ee5bfa7cad803", 1, 1, "int");
    weapon_name = sessionmodeiszombiesgame() ? #"nightingale_zm" : #"nightingale";
    weapon = getweapon(weapon_name);
    level.var_432fa05c = {#var_402a4207:[], #var_558ae5bc:sqr(500)};
    callback::add_callback(#"hash_7c6da2f2c9ef947a", &function_30a3d1d2);
    globallogic_score::register_kill_callback(weapon, &function_dedc78a9);
    globallogic_score::function_c1e9b86b(weapon, &function_24e13681);
    weaponobjects::function_e6400478(weapon_name, &function_713a08b, 1);
    if (isdefined(level.var_a5dacbea)) {
        [[ level.var_a5dacbea ]](weapon, &function_6ab1797f);
    }
    if (isdefined(level.var_f9109dc6)) {
        [[ level.var_f9109dc6 ]](weapon, &function_7dfb4daa);
    }
}

// Namespace nightingale/nightingale
// Params 1, eflags: 0x6 linked
// Checksum 0x1f3a3501, Offset: 0x3e8
// Size: 0x6e
function private function_713a08b(watcher) {
    watcher.ignoredirection = 1;
    watcher.ondestroyed = &function_81619d12;
    watcher.ondamage = &function_acc36c55;
    watcher.ondetonatecallback = &function_c4afd8d1;
    watcher.var_ce3a3280 = 48;
}

// Namespace nightingale/nightingale
// Params 2, eflags: 0x6 linked
// Checksum 0x5ea23496, Offset: 0x460
// Size: 0x5c
function private function_81619d12(attacker, *data) {
    if (isdefined(self.owner) && isdefined(level.playequipmentdestroyedonplayer)) {
        self.owner [[ level.playequipmentdestroyedonplayer ]]();
    }
    self function_1bda2316(data);
}

// Namespace nightingale/nightingale
// Params 3, eflags: 0x6 linked
// Checksum 0x86fd9bbc, Offset: 0x4c8
// Size: 0x34
function private function_c4afd8d1(attacker, weapon, *target) {
    self function_1bda2316(weapon, target);
}

// Namespace nightingale/nightingale
// Params 2, eflags: 0x6 linked
// Checksum 0x14b76391, Offset: 0x508
// Size: 0xdc
function private function_1bda2316(attacker, weapon) {
    weaponobjects::function_b4793bda(self, self.weapon);
    if (isdefined(attacker) && self.owner util::isenemyplayer(attacker)) {
        scoreevents::processscoreevent(#"hash_7e4bea54bce26c89", attacker, self.owner, weapon);
        attacker challenges::destroyedequipment(weapon);
        self battlechatter::function_d2600afc(attacker, self.owner, self.weapon, weapon);
    }
    self delete();
}

// Namespace nightingale/nightingale
// Params 1, eflags: 0x6 linked
// Checksum 0x300f2dff, Offset: 0x5f0
// Size: 0x464
function private function_acc36c55(watcher) {
    self endon(#"death", #"hacked", #"detonating");
    if (sessionmodeiszombiesgame()) {
        return;
    }
    self waittill(#"deployed");
    if (!isdefined(self.var_20a0f018)) {
        return;
    }
    self.var_20a0f018 endon(#"death");
    self.var_20a0f018 setcandamage(1);
    self.var_20a0f018.maxhealth = 100000;
    self.var_20a0f018.health = self.var_20a0f018.maxhealth;
    while (true) {
        waitresult = self.var_20a0f018 waittill(#"damage");
        attacker = waitresult.attacker;
        weapon = waitresult.weapon;
        damage = waitresult.amount;
        type = waitresult.mod;
        idflags = waitresult.flags;
        if (!isplayer(attacker) && isdefined(attacker.owner)) {
            attacker = attacker.owner;
        }
        if (isdefined(weapon)) {
            self weaponobjects::weapon_object_do_damagefeedback(weapon, attacker, type, waitresult.inflictor);
        }
        if (!level.weaponobjectdebug && level.teambased && isplayer(attacker) && isdefined(self.owner)) {
            if (!level.hardcoremode && !util::function_fbce7263(self.owner.team, attacker.pers[#"team"]) && self.owner != attacker) {
                continue;
            }
        }
        if (!isvehicle(self) && !damage::friendlyfirecheck(self.owner, attacker)) {
            continue;
        }
        if (util::function_fbce7263(attacker.team, self.team)) {
            killstreaks::function_e729ccee(attacker, weapon);
        }
        break;
    }
    if (level.weaponobjectexplodethisframe) {
        wait(0.1 + randomfloat(0.4));
    } else {
        waitframe(1);
    }
    if (!isdefined(self)) {
        return;
    }
    level.weaponobjectexplodethisframe = 1;
    thread weaponobjects::resetweaponobjectexplodethisframe();
    self entityheadicons::setentityheadicon("none");
    if (isdefined(type) && (issubstr(type, "MOD_GRENADE_SPLASH") || issubstr(type, "MOD_GRENADE") || issubstr(type, "MOD_EXPLOSIVE"))) {
        self.waschained = 1;
    }
    if (isdefined(idflags) && idflags & 8) {
        self.wasdamagedfrombulletpenetration = 1;
    }
    self.wasdamaged = 1;
    watcher thread weaponobjects::waitanddetonate(self, 0, attacker, weapon);
}

// Namespace nightingale/nightingale
// Params 1, eflags: 0x6 linked
// Checksum 0xcf39f7e6, Offset: 0xa60
// Size: 0xc4
function private function_6ab1797f(decoygrenade) {
    if (is_true(decoygrenade.shuttingdown)) {
        return;
    }
    if (isdefined(decoygrenade.var_20a0f018)) {
        decoygrenade.var_20a0f018 clientfield::set("isJammed", 1);
        decoygrenade.var_20a0f018 clientfield::set("" + #"hash_7c2ee5bfa7cad803", 0);
        decoygrenade.var_20a0f018 stoploopsound(0.5);
    }
    decoygrenade scene::stop();
}

// Namespace nightingale/nightingale
// Params 1, eflags: 0x6 linked
// Checksum 0x6e898a16, Offset: 0xb30
// Size: 0xe4
function private function_7dfb4daa(decoygrenade) {
    if (is_true(decoygrenade.shuttingdown)) {
        return;
    }
    if (!isdefined(decoygrenade.var_20a0f018)) {
        return;
    }
    decoygrenade.var_20a0f018 clientfield::set("isJammed", 0);
    decoygrenade.var_20a0f018 clientfield::set("" + #"hash_7c2ee5bfa7cad803", 1);
    decoygrenade.var_20a0f018 playloopsound(#"hash_6e07f5906d35471");
    decoygrenade thread scene::play(#"scene_grenade_decoy_footsteps", decoygrenade.var_20a0f018);
}

// Namespace nightingale/grenade_fire
// Params 1, eflags: 0x24
// Checksum 0x4f42a272, Offset: 0xc20
// Size: 0x24c
function private event_handler[grenade_fire] function_4776caf4(eventstruct) {
    if (eventstruct.weapon.name == #"nightingale" || eventstruct.weapon.name == #"nightingale_zm") {
        grenade = eventstruct.projectile;
        grenade.var_cb19e5d4 = 1;
        grenade.var_515d6dda = 1;
        grenade.var_48d842c3 = 1;
        if (sessionmodeiszombiesgame()) {
            grenade.var_dfa42180 = &function_400826e;
        }
        grenade waittill(#"stationary", #"death");
        if (!isdefined(grenade)) {
            return;
        }
        if (isdefined(level.var_1b5a1f0d) && ![[ level.var_1b5a1f0d ]](grenade.origin)) {
            weaponobjects::function_f2a06099(grenade, eventstruct.weapon);
            grenade deletedelay();
            return;
        }
        grenade thread function_db24f032();
        if (sessionmodeiszombiesgame()) {
            grenade.var_acdc8d71 = grenade function_65ee50ba();
        }
        if (!isdefined(level.var_432fa05c.var_402a4207)) {
            level.var_432fa05c.var_402a4207 = [];
        } else if (!isarray(level.var_432fa05c.var_402a4207)) {
            level.var_432fa05c.var_402a4207 = array(level.var_432fa05c.var_402a4207);
        }
        level.var_432fa05c.var_402a4207[level.var_432fa05c.var_402a4207.size] = grenade;
    }
}

// Namespace nightingale/nightingale
// Params 0, eflags: 0x2 linked
// Checksum 0xd0325fa7, Offset: 0xe78
// Size: 0x2b4
function function_db24f032() {
    decoy = util::spawn_model(self.model, self.origin, self.angles);
    self.var_20a0f018 = decoy;
    decoy setteam(self.team);
    decoy.team = self.team;
    decoy clientfield::set("enemyequip", 1);
    decoy.aitype = #"hash_25454a5a4de341b8";
    decoy linkto(self);
    if (isdefined(self.originalowner) && isplayer(self.originalowner)) {
        decoy setowner(self.originalowner);
    }
    decoy clientfield::set("" + #"hash_7cc71113338444c4", 1);
    self ghost();
    self notsolid();
    if (is_true(self.isjammed)) {
        decoy clientfield::set("isJammed", 1);
    } else {
        self thread scene::play(#"scene_grenade_decoy_footsteps", decoy);
        decoy clientfield::set("" + #"hash_7c2ee5bfa7cad803", 1);
        decoy playloopsound(#"hash_6e07f5906d35471");
    }
    self notify(#"deployed");
    self waittill(#"death");
    self.shuttingdown = 1;
    if (isdefined(self)) {
        self scene::stop();
    }
    weaponobjects::function_f2a06099(self, self.weapon);
    if (isdefined(decoy)) {
        decoy deletedelay();
    }
}

// Namespace nightingale/nightingale
// Params 1, eflags: 0x0
// Checksum 0xa63f545b, Offset: 0x1138
// Size: 0x92
function function_29fbe24f(zombie) {
    arrayremovevalue(level.var_432fa05c.var_402a4207, undefined);
    var_402a4207 = level.var_432fa05c.var_402a4207;
    var_ed793fcb = undefined;
    if (var_402a4207.size > 0) {
        var_ed793fcb = arraygetclosest(zombie.origin, var_402a4207, 420);
    }
    return var_ed793fcb;
}

// Namespace nightingale/nightingale
// Params 1, eflags: 0x6 linked
// Checksum 0xb7642d6, Offset: 0x11d8
// Size: 0x76
function private function_400826e(*zombie) {
    if (isdefined(self.var_acdc8d71)) {
        return self.var_acdc8d71;
    }
    return groundtrace(self.origin + (0, 0, 8), self.origin + (0, 0, -100000), 0, self)[#"position"];
}

// Namespace nightingale/nightingale
// Params 0, eflags: 0x6 linked
// Checksum 0x68bc832c, Offset: 0x1258
// Size: 0x2aa
function private function_65ee50ba() {
    check_dist = 10;
    var_1a055edd = [];
    basepos = self.origin;
    var_2eefd050 = groundtrace(basepos + (0, 0, 8), basepos + (0, 0, -100000), 0, self)[#"position"];
    if (!isdefined(var_1a055edd)) {
        var_1a055edd = [];
    } else if (!isarray(var_1a055edd)) {
        var_1a055edd = array(var_1a055edd);
    }
    var_1a055edd[var_1a055edd.size] = var_2eefd050;
    for (xoffset = -1; xoffset <= 1; xoffset += 2) {
        for (yoffset = -1; yoffset <= 1; yoffset += 2) {
            checkpos = basepos + (xoffset * check_dist, yoffset * check_dist, 0);
            groundpos = groundtrace(checkpos + (0, 0, 8), checkpos + (0, 0, -100000), 0, self)[#"position"];
            if (!isdefined(var_1a055edd)) {
                var_1a055edd = [];
            } else if (!isarray(var_1a055edd)) {
                var_1a055edd = array(var_1a055edd);
            }
            var_1a055edd[var_1a055edd.size] = groundpos;
        }
    }
    farthest = arraygetfarthest(basepos, var_1a055edd);
    if (abs(farthest[2] - var_2eefd050[2]) <= check_dist) {
        farthest = var_2eefd050;
    }
    /#
        debugstar(farthest, 30, (1, 1, 1));
        recordline(self.origin, farthest, (0.1, 0.1, 0.1));
    #/
    return getclosestpointonnavmesh(farthest, 420, 15.1875);
}

// Namespace nightingale/nightingale
// Params 1, eflags: 0x2 linked
// Checksum 0xba273551, Offset: 0x1510
// Size: 0x1cc
function function_30a3d1d2(params) {
    arrayremovevalue(level.var_432fa05c.var_402a4207, undefined);
    foreach (var_e5d834ab in level.var_432fa05c.var_402a4207) {
        if (var_e5d834ab.team == self.team) {
            continue;
        }
        owner = var_e5d834ab.owner;
        if (isdefined(owner) && isdefined(params.players[owner getentitynumber()]) && level.var_432fa05c.var_558ae5bc >= distancesquared(var_e5d834ab.origin, self.origin)) {
            scoreevents::processscoreevent(#"hash_f114eaf6ee78991", owner);
            owner stats::function_622feb0d(var_e5d834ab.weapon.name, #"nightingale_assists", 1);
            if (isdefined(level.var_b7bc3c75.var_e2298731)) {
                owner [[ level.var_b7bc3c75.var_e2298731 ]]();
            }
        }
    }
}

// Namespace nightingale/nightingale
// Params 5, eflags: 0x2 linked
// Checksum 0x5c4ab218, Offset: 0x16e8
// Size: 0x14e
function function_dedc78a9(attacker, victim, *weapon, *attackerweapon, *meansofdeath) {
    arrayremovevalue(level.var_432fa05c.var_402a4207, undefined);
    foreach (var_e5d834ab in level.var_432fa05c.var_402a4207) {
        if (!isdefined(meansofdeath.team)) {
            continue;
        }
        if (var_e5d834ab.team === meansofdeath.team) {
            continue;
        }
        if (attackerweapon === var_e5d834ab.owner && level.var_432fa05c.var_558ae5bc >= distancesquared(var_e5d834ab.origin, meansofdeath.origin)) {
            return true;
        }
    }
    return false;
}

// Namespace nightingale/nightingale
// Params 1, eflags: 0x2 linked
// Checksum 0x30ffc28d, Offset: 0x1840
// Size: 0x30
function function_24e13681(params) {
    if (isdefined(level.var_7d790c58)) {
        [[ level.var_7d790c58 ]](params);
    }
}

