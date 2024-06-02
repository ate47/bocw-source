// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\weaponobjects.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\core_common\weapons_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\math_shared.gsc;
#using script_1cc417743d7c262d;
#using scripts\core_common\globallogic\globallogic_score.gsc;
#using script_1435f3c9fc699e04;
#using scripts\core_common\damagefeedback_shared.gsc;
#using scripts\core_common\damage.gsc;
#using scripts\core_common\contracts_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\challenges_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\battlechatter.gsc;

#namespace trophy_system;

// Namespace trophy_system/trophy_system
// Params 0, eflags: 0x2 linked
// Checksum 0x6359fb54, Offset: 0x1e8
// Size: 0x124
function init_shared() {
    level.trophydetonationfx = #"hash_7e2c1749cc5fcfb9";
    level.fx_trophy_radius_indicator = #"weapon/fx_trophy_radius_indicator";
    trophydeployanim = "p8_fxanim_mp_eqp_trophy_system_world_anim";
    trophyspinanim = "p8_fxanim_mp_eqp_trophy_system_world_open_anim";
    level.var_4f3822f4 = &trophysystemdetonate;
    level thread register();
    callback::on_player_killed(&on_player_killed);
    callback::on_spawned(&ammo_reset);
    weaponobjects::function_e6400478(#"trophy_system", &createtrophysystemwatcher, 1);
    callback::on_finalize_initialization(&function_1c601b99);
}

// Namespace trophy_system/trophy_system
// Params 0, eflags: 0x2 linked
// Checksum 0xc03e5c8e, Offset: 0x318
// Size: 0x50
function function_1c601b99() {
    if (isdefined(level.var_1b900c1d)) {
        [[ level.var_1b900c1d ]](getweapon(#"trophy_system"), &function_bff5c062);
    }
}

// Namespace trophy_system/trophy_system
// Params 2, eflags: 0x2 linked
// Checksum 0x51f4ee94, Offset: 0x370
// Size: 0x234
function function_bff5c062(trophysystem, attackingplayer) {
    trophysystem notify(#"hacked");
    var_f3ab6571 = trophysystem.owner weaponobjects::function_7cdcc8ba(trophysystem.var_2d045452) > 1;
    trophysystem.owner thread globallogic_audio::function_a2cde53d(trophysystem.weapon, var_f3ab6571);
    trophysystem.owner weaponobjects::hackerremoveweapon(trophysystem);
    trophysystem.team = attackingplayer.team;
    trophysystem setteam(attackingplayer.team);
    trophysystem.owner = attackingplayer;
    trophysystem setowner(attackingplayer);
    trophysystem thread trophyactive(attackingplayer);
    trophysystem weaponobjects::function_386fa470(attackingplayer);
    if (isdefined(trophysystem) && isdefined(level.var_f1edf93f)) {
        _station_up_to_detention_center_triggers = [[ level.var_f1edf93f ]]();
        if (isdefined(_station_up_to_detention_center_triggers) ? _station_up_to_detention_center_triggers : 0) {
            trophysystem notify(#"cancel_timeout");
            trophysystem thread weaponobjects::weapon_object_timeout(trophysystem.var_2d045452, _station_up_to_detention_center_triggers);
        }
    }
    trophysystem thread weaponobjects::function_6d8aa6a0(attackingplayer, trophysystem.var_2d045452);
    if (isdefined(trophysystem) && isdefined(level.var_fc1bbaef)) {
        [[ level.var_fc1bbaef ]](trophysystem);
    }
    if (isdefined(level.var_b7bc3c75.var_1d3ef959)) {
        attackingplayer [[ level.var_b7bc3c75.var_1d3ef959 ]]();
    }
}

// Namespace trophy_system/trophy_system
// Params 1, eflags: 0x2 linked
// Checksum 0x7b21f48b, Offset: 0x5b0
// Size: 0x1c
function function_720ddf7f(func) {
    level.var_ccfcde75 = func;
}

// Namespace trophy_system/trophy_system
// Params 0, eflags: 0x2 linked
// Checksum 0xf4c394bb, Offset: 0x5d8
// Size: 0x84
function register() {
    clientfield::register("missile", "" + #"hash_644cb829d0133e99", 1, 1, "int");
    clientfield::register("missile", "" + #"hash_78a094001c919359", 1, 7, "float");
}

// Namespace trophy_system/trophy_system
// Params 1, eflags: 0x2 linked
// Checksum 0x722bab3c, Offset: 0x668
// Size: 0x94
function on_player_killed(s_params) {
    attacker = s_params.eattacker;
    weapon = s_params.weapon;
    if (!isdefined(attacker) || !isdefined(weapon)) {
        return;
    }
    if (weapon.name == #"trophy_system") {
        scoreevents::processscoreevent(#"trophy_system_kill", attacker, self, weapon);
    }
}

// Namespace trophy_system/trophy_system
// Params 1, eflags: 0x2 linked
// Checksum 0x743ce7a2, Offset: 0x708
// Size: 0x132
function createtrophysystemwatcher(watcher) {
    watcher.ondetonatecallback = &trophysystemdetonate;
    watcher.activatesound = #"wpn_claymore_alert";
    watcher.hackertoolradius = level.equipmenthackertoolradius;
    watcher.hackertooltimems = level.equipmenthackertooltimems;
    watcher.ownergetsassist = 1;
    watcher.ignoredirection = 1;
    watcher.activationdelay = 0.1;
    watcher.enemydestroy = 1;
    watcher.var_10efd558 = "switched_field_upgrade";
    watcher.onspawn = &ontrophysystemspawn;
    watcher.ondamage = &watchtrophysystemdamage;
    watcher.ondestroyed = &ontrophysystemsmashed;
    watcher.var_994b472b = &function_5a4f1e1e;
    watcher.onstun = &weaponobjects::weaponstun;
    watcher.stuntime = 1;
    watcher.ontimeout = &ontrophysystemsmashed;
}

// Namespace trophy_system/trophy_system
// Params 0, eflags: 0x2 linked
// Checksum 0x96658e1e, Offset: 0x848
// Size: 0x5e
function trophysystemstopped() {
    self endon(#"death", #"trophysystemstopped");
    self util::waittillnotmoving();
    self.trophysystemstationary = 1;
    self notify(#"trophysystemstopped");
}

// Namespace trophy_system/trophy_system
// Params 2, eflags: 0x2 linked
// Checksum 0xb5a61838, Offset: 0x8b0
// Size: 0x25c
function ontrophysystemspawn(watcher, player) {
    player endon(#"disconnect");
    level endon(#"game_ended");
    self endon(#"death");
    self useanimtree("generic");
    self weaponobjects::onspawnuseweaponobject(watcher, player);
    self.trophysystemstationary = 0;
    self.weapon = getweapon(#"trophy_system");
    self.var_2d045452 = watcher;
    self.delete_on_death = 1;
    self.var_48d842c3 = 1;
    self.var_515d6dda = 1;
    self setweapon(self.weapon);
    self.ammo = player ammo_get(self.weapon);
    self.var_bf03cf85 = 0;
    self function_619a5c20();
    player stats::function_e24eec31(self.weapon, #"used", 1);
    player notify(#"hash_50994ef63f120738");
    self thread deployanim();
    self trophysystemstopped();
    if (self depthinwater() > 10) {
        function_3044fc5();
    }
    self thread trophyactive(player);
    self util::make_sentient();
    if (isdefined(player)) {
        player battlechatter::function_fc82b10(getweapon(#"trophy_system"), self.origin, self);
    }
}

// Namespace trophy_system/trophy_system
// Params 1, eflags: 0x2 linked
// Checksum 0xf46d9b54, Offset: 0xb18
// Size: 0x24
function function_5a4f1e1e(*player) {
    self thread trophysystemdetonate();
}

// Namespace trophy_system/trophy_system
// Params 2, eflags: 0x2 linked
// Checksum 0xecb8e36d, Offset: 0xb48
// Size: 0x1bc
function ontrophysystemsmashed(attacker, *callback_data) {
    weaponobjects::function_b4793bda(self, self.weapon);
    self playsound(#"exp_trophy_system");
    var_3c4d4b60 = isdefined(self.owner);
    if (var_3c4d4b60 && isdefined(level.playequipmentdestroyedonplayer)) {
        self.owner [[ level.playequipmentdestroyedonplayer ]]();
    }
    if (isdefined(callback_data) && (!var_3c4d4b60 || self.owner util::isenemyplayer(callback_data))) {
        callback_data challenges::destroyedequipment();
        callback_data challenges::function_24db0c33(undefined, self.weapon);
        scoreevents::processscoreevent(#"destroyed_trophy_system", callback_data, self.owner);
        var_f3ab6571 = self.owner weaponobjects::function_8481fc06(self.weapon) > 1;
        self.owner thread globallogic_audio::function_6daffa93(self.weapon, var_f3ab6571);
    }
    self battlechatter::function_d2600afc(callback_data, self.owner, self.weapon);
    self delete();
}

// Namespace trophy_system/trophy_system
// Params 1, eflags: 0x2 linked
// Checksum 0x17339f40, Offset: 0xd10
// Size: 0x5e2
function trophyactive(owner) {
    owner endon(#"disconnect");
    self endon(#"death", #"hacked");
    traceposition = self.origin + (0, 0, 29);
    while (true) {
        if (!isdefined(self)) {
            return;
        }
        if (level.missileentities.size < 1 || isdefined(self.disabled) || is_true(self.isjammed)) {
            waitframe(1);
            continue;
        }
        waitframe(1);
        missileents = owner getentitiesinrange(level.missileentities, 512, self.origin);
        for (index = 0; index < missileents.size; index++) {
            if (!isdefined(self)) {
                return;
            }
            grenade = missileents[index];
            if (!isdefined(grenade)) {
                continue;
            }
            if (grenade == self) {
                continue;
            }
            if (is_true(grenade.var_8211c733)) {
                continue;
            }
            if (!grenade.weapon.destroyablebytrophysystem) {
                continue;
            }
            if (grenade.destroyablebytrophysystem === 0) {
                continue;
            }
            if (grenade.weapon == self.weapon) {
                if (is_false(self.trophysystemstationary) && is_true(grenade.trophysystemstationary)) {
                    continue;
                }
            }
            if (!isdefined(grenade.owner)) {
                grenade.owner = getmissileowner(grenade);
            }
            if (!isdefined(grenade.owner)) {
                continue;
            }
            if (level.teambased) {
                if (!grenade.owner util::isenemyteam(owner.team)) {
                    continue;
                }
            } else if (grenade.owner == owner) {
                continue;
            }
            var_a3e00632 = bullettracepassed(grenade.origin, traceposition, 0, self, grenade, 0, 1);
            if (!var_a3e00632) {
                waitframe(1);
                continue;
            }
            fwd = vectornormalize(grenade.origin - self.origin);
            if (fwd == (0, 0, 0)) {
                fwd = (1, 0, 0);
            }
            angles = vectortoangles(fwd);
            up = anglestoup(angles);
            distance = distance(grenade.origin, traceposition);
            if (distance > 425) {
                fx = #"hash_477d0da44d77c340";
            } else if (distance > 325) {
                fx = #"hash_509348a452bc270b";
            } else if (distance > 225) {
                fx = #"hash_7be30fa46b44c382";
            } else if (distance > 125) {
                fx = #"hash_4f94aa47089274d";
            } else {
                fx = #"hash_6a2339a461182aac";
            }
            playfx(fx, traceposition, fwd, up);
            self playsound(#"hash_59af500c63ca80ac");
            if (getdvarint(#"player_sustainammo", 0) == 0) {
                if (!isdefined(self.ammo)) {
                    self.ammo = 0;
                }
                self.ammo--;
            }
            if (isdefined(level.var_ccfcde75)) {
                owner thread [[ level.var_ccfcde75 ]](self, grenade);
            }
            owner projectileexplode(grenade, self, fwd, up);
            self.var_bf03cf85++;
            break;
        }
        if (self.ammo <= 0) {
            if (self.var_bf03cf85 > 1) {
                scoreevents::processscoreevent(#"hash_37f14ae291c32c04", owner, undefined, self.weapon);
                if (self.var_bf03cf85 >= 4) {
                    owner contracts::increment_contract(#"hash_6c0438d5a54313d", 1);
                }
                owner stats::function_622feb0d(self.weapon.name, #"hash_1eed93e0c1faa7cf", 1);
            }
            wait(1.5);
            self thread function_3044fc5();
            return;
        }
    }
}

// Namespace trophy_system/trophy_system
// Params 4, eflags: 0x2 linked
// Checksum 0xd3d00bd7, Offset: 0x1300
// Size: 0x2e4
function projectileexplode(projectile, trophy, fxfwd, fxup) {
    if (isdefined(self)) {
        scoreevents::processscoreevent(#"trophy_defense", self, projectile.owner, trophy.weapon);
        self function_3170d645(projectile, trophy);
        self challenges::trophy_defense(projectile.origin, 512, trophy);
        if (isdefined(level.var_d3a438fb)) {
            if ([[ level.var_d3a438fb ]](trophy)) {
                self stats::function_dad108fa(#"hash_707d06184cf09b50", 1);
            }
        }
        if (self util::is_item_purchased(#"trophy_system")) {
            self stats::function_dad108fa(#"destroy_explosive_with_trophy", 1);
        }
        self stats::function_dad108fa(#"hash_37e5b09fc86a64e7", 1);
        self stats::function_dad108fa(#"hash_2757aee498da350f", 1);
        self stats::function_622feb0d(#"trophy_system", #"hash_45668719408ee692", 1);
        self stats::function_6fb0b113(#"trophy_system", #"hash_cac64f745e7f76d");
        if (isvehicle(trophy getgroundent())) {
            self stats::function_dad108fa(#"hash_492f50ceea7d2d5c", 1);
        }
    }
    projposition = projectile.origin;
    playfx(level.trophydetonationfx, projposition, fxfwd, fxup);
    projectile playsound(#"hash_741683e10b98efd8");
    projectile notify(#"trophy_destroyed");
    if (isdefined(trophy)) {
        trophy radiusdamage(projposition, 128, 10, 5, self);
    }
    projectile delete();
}

// Namespace trophy_system/trophy_system
// Params 2, eflags: 0x2 linked
// Checksum 0xbafce304, Offset: 0x15f0
// Size: 0x4c
function _the_root_zurich_spawners(gameobject, trophy) {
    return distancesquared(gameobject.origin, trophy.origin) <= math::pow(512, 2);
}

// Namespace trophy_system/trophy_system
// Params 2, eflags: 0x2 linked
// Checksum 0xfeb41032, Offset: 0x1648
// Size: 0x664
function function_3170d645(projectile, trophy) {
    player = self;
    entities = getentitiesinradius(trophy.origin, 512);
    var_48b7bfeb = 0;
    for (i = 0; i < entities.size; i++) {
        if (!isdefined(self)) {
            return;
        }
        ent = entities[i];
        if (isdefined(ent.owner) && !ent util::isenemyteam(player.team) && (ent.classname === "noclass" || ent.classname === "script_model" || ent.classname === "script_vehicle" || ent.archetype === #"mp_dog" || ent.archetype === #"human" || isdefined(ent.aitype)) && (ent.item !== level.weaponnone || ent.weapon !== level.weaponnone || ent.meleeweapon !== level.weaponnone || ent.turretweapon !== level.weaponnone) && is_true(ent.takedamage)) {
            if ((isdefined(ent.health) ? ent.health : 0) > 0) {
                var_48b7bfeb = 1;
                break;
            }
        }
    }
    if (var_48b7bfeb) {
        scoreevents::processscoreevent(#"hash_1ed8a05490cfe606", player, projectile.owner, trophy.weapon);
    }
    if (isdefined(level.flags)) {
        var_2e36557f = 0;
        foreach (flag in level.flags) {
            useobj = flag.useobj;
            if (!isdefined(useobj) || !_the_root_zurich_spawners(useobj, trophy)) {
                continue;
            }
            var_2e36557f |= useobj.userate && (useobj gameobjects::function_4b64b7fd(player.team) || useobj.interactteam === #"hash_33c49a99551acae7");
            if (var_2e36557f) {
                break;
            }
        }
        if (var_2e36557f) {
            scoreevents::processscoreevent(#"hash_2f3000a4b38e9235", player, projectile.owner, trophy.weapon);
        }
    }
    if (isdefined(level.zones)) {
        var_2e36557f = 0;
        foreach (zone in level.zones) {
            useobj = zone.gameobject;
            if (!isdefined(useobj) || !_the_root_zurich_spawners(useobj, trophy)) {
                continue;
            }
            var_2e36557f |= useobj.userate && (useobj gameobjects::function_4b64b7fd(player.team) || useobj.interactteam === #"hash_33c49a99551acae7");
            if (var_2e36557f) {
                break;
            }
        }
        if (var_2e36557f) {
            scoreevents::processscoreevent(#"hash_2f3000a4b38e9235", player, projectile.owner, trophy.weapon);
        }
    }
    if (isdefined(level.bombzones)) {
        var_2e36557f = 0;
        foreach (useobj in level.bombzones) {
            if (!isdefined(useobj) || !_the_root_zurich_spawners(useobj, trophy)) {
                continue;
            }
            var_2e36557f |= useobj.userate && (useobj gameobjects::function_4b64b7fd(player.team) || useobj.interactteam === #"hash_33c49a99551acae7");
            if (var_2e36557f) {
                break;
            }
        }
        if (var_2e36557f) {
            scoreevents::processscoreevent(#"hash_2f3000a4b38e9235", player, projectile.owner, trophy.weapon);
        }
    }
}

// Namespace trophy_system/trophy_system
// Params 2, eflags: 0x0
// Checksum 0xcff47aa7, Offset: 0x1cb8
// Size: 0x14c
function trophydestroytacinsert(tacinsert, trophy) {
    self endon(#"death");
    tacpos = tacinsert.origin;
    playfx(level.trophydetonationfx, tacinsert.origin);
    if (isdefined(level.var_ef4e178e)) {
        tacinsert thread [[ level.var_ef4e178e ]](self, trophy);
    }
    trophy radiusdamage(tacpos, 128, 105, 10, self);
    scoreevents::processscoreevent(#"trophy_defense", self, undefined, trophy.weapon);
    if (self util::is_item_purchased(#"trophy_system")) {
        self stats::function_dad108fa(#"destroy_explosive_with_trophy", 1);
    }
    self function_be7a08a8(trophy.weapon, 1);
}

// Namespace trophy_system/trophy_system
// Params 3, eflags: 0x2 linked
// Checksum 0x32e2ac3b, Offset: 0x1e10
// Size: 0x18c
function trophysystemdetonate(attacker, weapon, *target) {
    weaponobjects::function_b4793bda(self, self.weapon);
    if (isdefined(weapon) && self.owner util::isenemyplayer(weapon)) {
        weapon challenges::destroyedequipment(target);
        scoreevents::processscoreevent(#"destroyed_trophy_system", weapon, self.owner, target);
        self battlechatter::function_d2600afc(weapon, self.owner, self.weapon, target);
        self.owner globallogic_score::function_5829abe3(weapon, target, self.weapon);
        var_f3ab6571 = self.owner weaponobjects::function_8481fc06(self.weapon) > 1;
        self.owner thread globallogic_audio::function_6daffa93(self.weapon, var_f3ab6571);
    }
    playsoundatposition(#"exp_trophy_system", self.origin);
    self delete();
}

// Namespace trophy_system/trophy_system
// Params 0, eflags: 0x2 linked
// Checksum 0x5440cf7f, Offset: 0x1fa8
// Size: 0x64
function function_3044fc5() {
    weaponobjects::function_f2a06099(self, self.weapon);
    playsoundatposition(#"exp_trophy_system", self.origin);
    self deletedelay();
}

// Namespace trophy_system/trophy_system
// Params 1, eflags: 0x2 linked
// Checksum 0xf4d40b3a, Offset: 0x2018
// Size: 0x382
function watchtrophysystemdamage(watcher) {
    self endon(#"death");
    self setcandamage(1);
    damagemax = 20;
    if (!self util::ishacked()) {
        self.damagetaken = 0;
    }
    self.maxhealth = 10000;
    self.health = self.maxhealth;
    self setmaxhealth(self.maxhealth);
    attacker = undefined;
    while (true) {
        waitresult = self waittill(#"damage");
        damage = waitresult.amount;
        type = waitresult.mod;
        weapon = waitresult.weapon;
        attacker = self [[ level.figure_out_attacker ]](waitresult.attacker);
        damage = weapons::function_74bbb3fa(damage, weapon, self.weapon);
        if (!isplayer(attacker)) {
            continue;
        }
        if (level.teambased) {
            if (!sessionmodeiswarzonegame() && !level.hardcoremode && isdefined(self.owner) && !attacker util::isenemyteam(self.owner.team) && self.owner != attacker) {
                continue;
            }
        }
        if (watcher.stuntime > 0 && weapon.dostun) {
            self thread weaponobjects::stunstart(watcher, watcher.stuntime);
        }
        if (damage::friendlyfirecheck(self.owner, attacker)) {
            if (damagefeedback::dodamagefeedback(weapon, attacker)) {
                attacker damagefeedback::update(waitresult.mod, waitresult.inflictor, undefined, waitresult.weapon, self);
            }
        }
        if (type == "MOD_MELEE" || weapon.isemp || weapon.destroysequipment) {
            self.damagetaken = damagemax;
        } else {
            self.damagetaken += damage;
        }
        if (self.damagetaken >= damagemax) {
            if (util::function_fbce7263(attacker.team, self.team)) {
                killstreaks::function_e729ccee(attacker, weapon);
            }
            watcher thread weaponobjects::waitanddetonate(self, 0.05, attacker, weapon);
            return;
        }
    }
}

// Namespace trophy_system/trophy_system
// Params 0, eflags: 0x2 linked
// Checksum 0x13c1dc3f, Offset: 0x23a8
// Size: 0x16
function ammo_reset() {
    self._trophy_system_ammo1 = undefined;
    self._trophy_system_ammo2 = undefined;
}

// Namespace trophy_system/trophy_system
// Params 1, eflags: 0x2 linked
// Checksum 0x78dd8e18, Offset: 0x23c8
// Size: 0x86
function ammo_get(weapon) {
    totalammo = weapon.ammocountequipment;
    if (isdefined(self._trophy_system_ammo1) && !self util::ishacked()) {
        totalammo = self._trophy_system_ammo1;
        self._trophy_system_ammo1 = undefined;
        if (isdefined(self._trophy_system_ammo2)) {
            self._trophy_system_ammo1 = self._trophy_system_ammo2;
            self._trophy_system_ammo2 = undefined;
        }
    }
    return totalammo;
}

// Namespace trophy_system/trophy_system
// Params 1, eflags: 0x0
// Checksum 0x11c8abc9, Offset: 0x2458
// Size: 0x4a
function ammo_weapon_pickup(ammo) {
    if (isdefined(ammo)) {
        if (isdefined(self._trophy_system_ammo1)) {
            self._trophy_system_ammo2 = self._trophy_system_ammo1;
            self._trophy_system_ammo1 = ammo;
            return;
        }
        self._trophy_system_ammo1 = ammo;
    }
}

// Namespace trophy_system/trophy_system
// Params 0, eflags: 0x2 linked
// Checksum 0x46e9c933, Offset: 0x24b0
// Size: 0x18c
function deployanim() {
    self endon(#"death");
    self setanim(#"hash_70b2041b1f6ad89", 1, 0, 0);
    self clientfield::set("" + #"hash_644cb829d0133e99", 1);
    self waittill(#"trophysystemstopped");
    wait(0.1);
    self setanim(#"hash_70b2041b1f6ad89");
    self clientfield::set("" + #"hash_644cb829d0133e99", 0);
    self playsound(#"wpn_trophy_deploy_start");
    self playloopsound(#"hash_656f8209ae1d1424", 0.25);
    wait(getanimlength(#"hash_70b2041b1f6ad89"));
    self clearanim(#"hash_70b2041b1f6ad89", 0);
    self setanim(#"hash_3c4ee18df7d43dc7", 1, 0, 2);
}

