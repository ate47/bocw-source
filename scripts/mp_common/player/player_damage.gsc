// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\vehicle.gsc;
#using scripts\mp_common\bb.gsc;
#using scripts\mp_common\challenges.gsc;
#using scripts\core_common\armor.gsc;
#using scripts\mp_common\player\player_utils.gsc;
#using scripts\mp_common\player\player_loadout.gsc;
#using scripts\mp_common\gametypes\globallogic_utils.gsc;
#using scripts\mp_common\gametypes\globallogic_score.gsc;
#using scripts\mp_common\gametypes\globallogic.gsc;
#using script_725554a59d6a75b9;
#using scripts\core_common\battlechatter.gsc;
#using scripts\core_common\weapons_shared.gsc;
#using scripts\core_common\rank_shared.gsc;
#using scripts\weapons\weapons.gsc;
#using scripts\weapons\weapon_utils.gsc;
#using script_6167e26342be354b;
#using script_44b0b8420eabacad;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\status_effects\status_effect_util.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\player\player_role.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\core_common\globallogic\globallogic_player.gsc;
#using scripts\core_common\gamestate_util.gsc;
#using scripts\core_common\damagefeedback_shared.gsc;
#using scripts\core_common\contracts_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\burnplayer.gsc;
#using script_396f7d71538c9677;
#using scripts\abilities\ability_util.gsc;
#using scripts\abilities\ability_power.gsc;
#using scripts\abilities\ability_player.gsc;

#namespace player;

// Namespace player/player_damage
// Params 14, eflags: 0x2 linked
// Checksum 0x8dfa0f6c, Offset: 0x5f0
// Size: 0x1244
function callback_playerdamage(einflictor, eattacker, idamage, idflags, smeansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, vdamageorigin, psoffsettime, boneindex, vsurfacenormal) {
    profilelog_begintiming(6, "ship");
    if (function_b5dadafc(einflictor, eattacker, idamage, idflags, smeansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, vdamageorigin, psoffsettime, boneindex, vsurfacenormal)) {
        return;
    }
    if (self getinvulnerability()) {
        return;
    }
    do_post_game_damage(einflictor, eattacker, idamage, idflags, smeansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, vdamageorigin, psoffsettime, boneindex, vsurfacenormal);
    self.idflags = idflags;
    self.idflagstime = gettime();
    if (!isplayer(eattacker) && isdefined(eattacker) && eattacker.owner === self) {
        treat_self_damage_as_friendly_fire = eattacker.treat_owner_damage_as_friendly_fire;
    }
    ignore_round_start_friendly_fire = isdefined(einflictor) && smeansofdeath == "MOD_CRUSH" || smeansofdeath == "MOD_HIT_BY_OBJECT";
    eattacker = figure_out_attacker(eattacker);
    if (isplayer(eattacker) && is_true(eattacker.laststand) && einflictor === eattacker) {
        return;
    }
    smeansofdeath = modify_player_damage_meansofdeath(einflictor, eattacker, smeansofdeath, weapon, shitloc);
    if (!self should_do_player_damage(eattacker, einflictor, weapon, smeansofdeath, idflags)) {
        return;
    }
    update_attacker(einflictor, eattacker, smeansofdeath);
    weapon = function_f4f77cfb(weapon, einflictor, eattacker, smeansofdeath);
    profileNamedStart(#"");
    if (!isdefined(vdir)) {
        idflags |= 4;
    }
    attackerishittingteammate = isplayer(eattacker) && self util::isenemyplayer(eattacker) == 0;
    attackerishittingself = isplayer(eattacker) && self == eattacker;
    var_728dba57 = level.teambased || level.var_a35b128f === 1;
    friendlyfire = attackerishittingself && treat_self_damage_as_friendly_fire === 1 || var_728dba57 && !attackerishittingself && attackerishittingteammate;
    profileNamedStop();
    idamage = modify_player_damage(einflictor, eattacker, idamage, idflags, smeansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, psoffsettime, boneindex);
    if (friendlyfire) {
        idamage = modify_player_damage_friendlyfire(idamage, eattacker);
    }
    if (shitloc == "riotshield") {
        riotshield_hit(einflictor, eattacker, idamage, smeansofdeath, weapon, attackerishittingteammate, vdir);
        if (isdefined(eattacker) && !attackerishittingself && (isalive(eattacker) || eattacker util::isusingremote())) {
            if (damagefeedback::dodamagefeedback(weapon, einflictor, idamage, smeansofdeath)) {
                if (idamage > 0) {
                    var_4d72910 = 0;
                    armorbroke = is_true(self.var_426947c4);
                    if (self.health > 0) {
                        var_4d72910 = 1;
                    } else if (self.health == 0 && self armor::get_armor() > 0) {
                        var_4d72910 = 1;
                        armorbroke = 1;
                    }
                    if (var_4d72910) {
                        perkfeedback = function_e512b988(self, weapon, smeansofdeath, einflictor, idflags & 2048, armorbroke);
                    }
                }
                eattacker thread damagefeedback::update(smeansofdeath, einflictor, perkfeedback, weapon, self, psoffsettime, shitloc, 0, idflags);
            }
        }
    }
    idamage = self does_player_completely_avoid_damage(idflags, shitloc, weapon, friendlyfire, attackerishittingself, smeansofdeath, vpoint, idamage, einflictor, eattacker);
    if (!isdefined(idamage) || idamage == 0) {
        if (weapons::isbulletdamage(smeansofdeath) && randomfloatrange(0, 1) > 0.5) {
            if ((isdefined(self.var_b6247681) ? self.var_b6247681 : 0) < gettime()) {
                self battlechatter::play_dialog("takingFriendlyFire", 1);
                self.var_b6247681 = gettime() + int(battlechatter::mpdialog_value("FriendlyFireWarningCooldown", 7) * 1000);
            }
        }
        return;
    }
    if (isplayer(eattacker) && !weapons::ismeleemod(smeansofdeath)) {
        var_8f516911 = function_b576d3d(weapon, shitloc);
        idamage *= var_8f516911;
        eattacker util::function_f7fe3c5(shitloc);
    }
    var_f16d7bc8 = isdefined(self.armor) ? self.armor : 0;
    armor_damage = apply_damage_to_armor(einflictor, eattacker, idamage, idflags, smeansofdeath, weapon, shitloc, friendlyfire, ignore_round_start_friendly_fire);
    idamage = armor_damage.idamage;
    idflags = armor_damage.idflags;
    idamage = function_74a5d514(eattacker, idamage, smeansofdeath, weapon, shitloc);
    idamage = make_sure_damage_is_not_zero(idamage, idflags & 2048);
    params = {#einflictor:einflictor, #eattacker:eattacker, #idamage:idamage, #smeansofdeath:smeansofdeath, #weapon:weapon, #var_fd90b0bb:var_fd90b0bb, #vdir:vdir, #shitloc:shitloc, #idflags:idflags, #vpoint:vpoint, #vdamageorigin:vdamageorigin, #boneindex:boneindex, #vsurfacenormal:vsurfacenormal};
    self callback::callback(#"on_player_damage", params);
    if (is_true(params.overridedamage)) {
        idamage = params.idamage;
    }
    if (self laststand::player_is_in_laststand()) {
        self notify(#"laststand_damage", params);
        self.health++;
        idamage = 1;
    }
    if (shitloc == "riotshield") {
        shitloc = "none";
    }
    if (!function_104e1126(einflictor, eattacker, idamage, idflags, smeansofdeath, weapon, vpoint, vdir, shitloc, psoffsettime, boneindex)) {
        return;
    }
    prevhealthratio = self.health / self.maxhealth;
    fatal = 0;
    if (friendlyfire) {
        pixmarker("BEGIN: PlayerDamage player");
        if (function_1727a023(ignore_round_start_friendly_fire, eattacker)) {
            self.lastdamagewasfromenemy = 0;
            fatal = self function_961fe569(einflictor, eattacker, idamage, idflags, smeansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, vdamageorigin, psoffsettime, boneindex, vsurfacenormal);
        }
        var_86f19cfe = 0;
        if (level.friendlyfire == 4 && is_true(eattacker.var_e03ca8a5)) {
            var_86f19cfe = 1;
            eattacker.var_e03ca8a5 = undefined;
        }
        if (!var_86f19cfe && function_44b6bb92(eattacker, ignore_round_start_friendly_fire)) {
            eattacker.lastdamagewasfromenemy = 0;
            eattacker.friendlydamage = 1;
            fatal = eattacker function_961fe569(einflictor, eattacker, idamage, idflags, smeansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, vdamageorigin, psoffsettime, boneindex, vsurfacenormal);
            eattacker.friendlydamage = undefined;
        }
        if (attackerishittingteammate) {
            if (fatal === 1 && randomfloatrange(0, 1) < 0.25) {
                eattacker battlechatter::play_dialog("KilledFriendly", 1);
                var_57fce7c = function_8c4b101f(eattacker.team, eattacker.origin, 200);
                foreach (teammate in var_57fce7c) {
                    if (teammate != eattacker && teammate != self) {
                        teammate battlechatter::play_dialog("KilledFriendlyReaction", 1);
                        break;
                    }
                }
            }
        }
        pixmarker("END: PlayerDamage player");
    } else {
        self.lastattackweapon = weapon;
        var_5370b15e = idamage < self.health ? idamage : self.health;
        globallogic_player::giveattackerandinflictorownerassist(eattacker, einflictor, var_5370b15e, smeansofdeath, weapon, shitloc);
        globallogic_player::function_efd02c1d(einflictor);
        if (isdefined(eattacker)) {
            level.lastlegitimateattacker = eattacker;
        }
        if ((smeansofdeath == "MOD_GRENADE" || smeansofdeath == "MOD_GRENADE_SPLASH") && isdefined(einflictor) && isdefined(einflictor.iscooked)) {
            self.wascooked = gettime();
        } else {
            self.wascooked = undefined;
        }
        self.lastdamagewasfromenemy = isdefined(eattacker) && eattacker != self;
        if (self.lastdamagewasfromenemy && isdefined(self.clientid)) {
            if (isplayer(eattacker)) {
                if (!isdefined(eattacker.damagedplayers)) {
                    eattacker.damagedplayers = [];
                }
                if (!isdefined(eattacker.damagedplayers[self.clientid])) {
                    eattacker.damagedplayers[self.clientid] = spawnstruct();
                }
                eattacker.damagedplayers[self.clientid].time = gettime();
                eattacker.damagedplayers[self.clientid].entity = self;
            }
        }
        if (isplayer(eattacker) && isdefined(weapon.gadget_type) && weapon.gadget_type == 11) {
            if (isdefined(eattacker.heavyweaponhits)) {
                eattacker.heavyweaponhits++;
            }
        }
        fatal = self function_961fe569(einflictor, eattacker, idamage, idflags, smeansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, vdamageorigin, psoffsettime, boneindex, vsurfacenormal);
    }
    self.var_e2e8198f = gettime();
    if (isdefined(eattacker)) {
        eattacker.var_e03e3ae5 = gettime();
        if (!isdefined(eattacker.var_4a755632)) {
            eattacker.var_4a755632 = [];
        }
        if (!isdefined(eattacker.var_4a755632[self.clientid])) {
            eattacker.var_4a755632[self.clientid] = spawnstruct();
        }
        eattacker.var_4a755632[self.clientid].entity = self;
        eattacker.var_4a755632[self.clientid].lastdamagedtime = gettime();
        squad_spawn::onplayerdamaged(self, eattacker);
    }
    if (isdefined(eattacker) && !attackerishittingself && (isalive(eattacker) || eattacker util::isusingremote())) {
        if (damagefeedback::dodamagefeedback(weapon, einflictor, idamage, smeansofdeath)) {
            if (idamage > 0) {
                var_4d72910 = 0;
                armorbroke = is_true(self.var_426947c4);
                if (self.health > 0) {
                    var_4d72910 = 1;
                } else if (self.health == 0 && self armor::get_armor() > 0) {
                    var_4d72910 = 1;
                    armorbroke = 1;
                }
                if (var_4d72910) {
                    perkfeedback = function_e512b988(self, weapon, smeansofdeath, einflictor, idflags & 2048, armorbroke);
                }
            }
            eattacker thread damagefeedback::update(smeansofdeath, einflictor, perkfeedback, weapon, self, psoffsettime, shitloc, fatal, idflags);
        }
    }
    if (isalive(self)) {
        if (!isdefined(eattacker) || !friendlyfire || is_true(level.hardcoremode)) {
            if (!isdefined(var_f16d7bc8) || var_f16d7bc8 == 0 || weapons::isheadshot(weapon, shitloc, smeansofdeath) && !self armor::has_helmet()) {
                self battlechatter::pain_vox(smeansofdeath, weapon);
            }
        }
        if (!friendlyfire) {
            killstreaks::function_e729ccee(eattacker, weapon);
        }
    }
    self.hasdonecombat = 1;
    if (weapon.isemp && smeansofdeath == "MOD_GRENADE_SPLASH" && !isdefined(weapon.var_13600e25)) {
        if (!self hasperk(#"specialty_immuneemp")) {
            self notify(#"emp_grenaded", {#attacker:eattacker, #position:vpoint});
        }
    }
    if (isdefined(eattacker) && eattacker != self && !friendlyfire) {
        spawning::function_7a87efaa();
    }
    player_damage_log(einflictor, eattacker, idamage, idflags, smeansofdeath, weapon, vpoint, vdir, shitloc, psoffsettime, boneindex);
    profilelog_endtiming(6, "gs=" + game.state);
}

// Namespace player/player_damage
// Params 4, eflags: 0x0
// Checksum 0xbfc2d5fa, Offset: 0x1840
// Size: 0x1d2
function function_f5cfe2b4(*einflictor, eattacker, idamage, *idflags) {
    if (!sessionmodeiswarzonegame()) {
        return;
    }
    var_4e3e876f = isdefined(getgametypesetting(#"hash_67b94d37f2e44ee2")) ? getgametypesetting(#"hash_67b94d37f2e44ee2") : 0;
    if (var_4e3e876f <= 0) {
        return;
    }
    if (isdefined(idamage) && isplayer(idamage) && isalive(idamage)) {
        if (isplayer(self) && self util::isenemyteam(idamage.team)) {
            return;
        }
        if (idamage.health !== idamage.maxhealth) {
            idamage playsoundtoplayer(#"chr_vampire", idamage);
        }
        var_2be81a5b = idflags * var_4e3e876f / 100;
        newhealth = idamage.health + var_2be81a5b;
        idamage.health = int(math::clamp(newhealth, 0, max(idamage.health, idamage.maxhealth)));
    }
}

// Namespace player/player_damage
// Params 5, eflags: 0x2 linked
// Checksum 0x42a9bcfa, Offset: 0x1a20
// Size: 0x1a0
function function_74a5d514(eattacker, idamage, smeansofdeath, weapon, *shitloc) {
    meleedamage = weapon === "MOD_MELEE" || weapon === "MOD_MELEE_WEAPON_BUTT" || weapon === "MOD_MELEE_ASSASSINATE";
    if (isdefined(idamage) && isplayer(idamage) && meleedamage && idamage hasperk(#"specialty_brawler")) {
        smeansofdeath = int(smeansofdeath * 4);
        new_health = idamage.health + 50;
        idamage.health = int(math::clamp(new_health, 0, max(idamage.health, idamage.maxhealth)));
        params = getstatuseffect(#"deaf_tinnitus");
        self status_effect::status_effect_apply(params, shitloc, idamage);
    }
    return smeansofdeath;
}

// Namespace player/player_damage
// Params 3, eflags: 0x4
// Checksum 0x8bb57c01, Offset: 0x1bc8
// Size: 0xae
function private function_31f333c6(einflictor, eattacker, weapon) {
    if (isplayer(einflictor)) {
        return true;
    }
    if (!isplayer(eattacker)) {
        return false;
    }
    if (isvehicle(einflictor)) {
        return false;
    }
    if (weapon.isprimary) {
        return true;
    }
    if (weapon.isheroweapon) {
        return true;
    }
    if (weapon.islauncher) {
        return true;
    }
    return false;
}

// Namespace player/player_damage
// Params 1, eflags: 0x6 linked
// Checksum 0xbfa4ed1b, Offset: 0x1c80
// Size: 0x82
function private function_a31ab50c(var_7c61c7a1) {
    var_ce3cee3a = self.var_a8b1ce45 === gettime() ? self.var_20038876 : 0;
    var_752c0834 = int(max(var_7c61c7a1, var_ce3cee3a));
    self.var_20038876 = var_752c0834;
    self.var_a8b1ce45 = gettime();
    return var_752c0834;
}

// Namespace player/player_damage
// Params 14, eflags: 0x6 linked
// Checksum 0x6d5836d1, Offset: 0x1d10
// Size: 0x132a
function private function_961fe569(einflictor, eattacker, idamage, idflags, smeansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, vdamageorigin, psoffsettime, boneindex, vsurfacenormal) {
    profileNamedStart(#"");
    if (!level.console && idflags & 8 && isplayer(eattacker)) {
        println("damage_death_circle" + self getentitynumber() + "<unknown string>" + self.health + "<unknown string>" + eattacker.clientid + "<unknown string>" + isplayer(einflictor) + "<unknown string>" + idamage + "<unknown string>" + shitloc);
        eattacker stats::function_dad108fa(#"penetration_shots", 1);
    }
    if (getdvarstring(#"scr_csmode") != "") {
        self shellshock(#"damage_mp", 0.2);
    }
    self function_a774b4ed(eattacker, einflictor, weapon, smeansofdeath, idamage);
    self ability_power::power_loss_event_took_damage(eattacker, einflictor, weapon, smeansofdeath, idamage);
    if (isplayer(eattacker)) {
        self.lastshotby = eattacker.clientid;
    }
    if (smeansofdeath == "MOD_BURNED") {
        self burnplayer::takingburndamage(eattacker, weapon, smeansofdeath);
    } else if (smeansofdeath == "MOD_DEATH_CIRCLE") {
        vdir = undefined;
    } else if (smeansofdeath == "MOD_BLED_OUT") {
        vdir = undefined;
    }
    self.gadget_was_active_last_damage = self gadgetisactive(0);
    isexplosivedamage = weapons::isexplosivedamage(smeansofdeath);
    var_f727da4 = 0;
    if (isdefined(einflictor) && isdefined(einflictor.stucktoplayer) && einflictor.stucktoplayer == self) {
        var_f727da4 = 1;
    }
    if (isexplosivedamage && idamage > 0 && (weapon.explosioninnerdamage > 1 || isdefined(einflictor) && einflictor.var_9d992ed1 === 1)) {
        var_771902ea = status_effect::function_3c54ae98(3);
        if (level.hardcoremode && !weapon.ignoresflakjacket && self hasperk(#"specialty_flakjacket")) {
            var_3d2e18f4 = weapon.projexplosiontype == "rocket" ? 0.85 : 0.91;
            var_771902ea = max(var_771902ea, var_3d2e18f4);
        }
        var_81ccea1a = 1;
        if (var_81ccea1a && !var_f727da4 && weapon != getweapon(#"hero_pineapplegun")) {
            idamage = int(idamage * (1 - var_771902ea));
        }
        var_677cfdb0 = getstatuseffect("explosive_damage");
        status_effect::status_effect_apply(var_677cfdb0, weapon, eattacker);
    }
    if (isdefined(eattacker) && self != eattacker) {
        damagedone = idamage;
        if (self.health < damagedone) {
            damagedone = self.health;
        }
        if (isplayer(eattacker) && self util::isenemyteam(eattacker.team)) {
            if (!isdefined(eattacker.damagedone)) {
                eattacker.damagedone = 0;
            }
            eattacker.damagedone += damagedone;
            eattacker.pers[#"damagedone"] = eattacker.damagedone;
            eattacker weapons::function_b1d41bd5(weapon, damagedone);
            eattacker contracts::player_contract_event(#"damagedone", damagedone);
            eattacker stats::function_bb7eedf0(#"total_damage", int(damagedone));
            eattacker stats::function_b7f80d87(#"total_damage", int(damagedone));
            if (level.hardcoremode === 1) {
                eattacker stats::function_dad108fa(#"hash_7175d03d46c6d815", int(damagedone));
            }
            eattacker stats::function_dad108fa(#"hash_7ea1f7d46d889aff", int(damagedone));
            eattacker stats::function_dad108fa(#"hash_1239a476be0ab35d", int(damagedone));
            eattacker function_ef823e71(1, eattacker.pers[#"damagedone"]);
            weaponclass = util::getweaponclass(weapon);
            if (weaponclass === #"weapon_assault" && !isdefined(eattacker.pers[#"hash_70c611f9f8df7631"])) {
                if (!isdefined(eattacker.pers[#"hash_2e379ea1a9162a8f"])) {
                    eattacker.pers[#"hash_2e379ea1a9162a8f"] = 0;
                }
                eattacker.pers[#"hash_2e379ea1a9162a8f"] = eattacker.pers[#"hash_2e379ea1a9162a8f"] + damagedone;
                if (eattacker.pers[#"hash_2e379ea1a9162a8f"] >= 1000) {
                    eattacker stats::function_d0de7686(#"hash_59e07dd9354c6be6", 1, #"hash_a2304f8a8f31a95");
                    eattacker.pers[#"hash_70c611f9f8df7631"] = 1;
                }
            }
            if (!sessionmodeiswarzonegame()) {
                if (gamemodeisarena()) {
                    total_damage = (isdefined(eattacker stats::get_stat(#"playerstatsbygametype", level.var_12323003, #"total_damage", #"arenavalue")) ? eattacker stats::get_stat(#"playerstatsbygametype", level.var_12323003, #"total_damage", #"arenavalue") : 0) + (isdefined(damagedone) ? damagedone : 0);
                    eattacker stats::set_stat(#"playerstatsbygametype", level.var_12323003, #"total_damage", #"arenavalue", total_damage);
                } else {
                    total_damage = (isdefined(eattacker stats::get_stat(#"playerstatsbygametype", level.var_12323003, #"total_damage", #"statvalue")) ? eattacker stats::get_stat(#"playerstatsbygametype", level.var_12323003, #"total_damage", #"statvalue") : 0) + (isdefined(damagedone) ? damagedone : 0);
                    eattacker stats::set_stat(#"playerstatsbygametype", level.var_12323003, #"total_damage", #"statvalue", total_damage);
                }
            }
            if (smeansofdeath === "MOD_HEAD_SHOT" && !killstreaks::is_killstreak_weapon(weapon)) {
                eattacker stats::function_dad108fa(#"headshot_damage", int(damagedone));
            }
            if (weapon.issniperweapon && isdefined(eattacker.var_88f25284)) {
                if (!isdefined(eattacker.var_4ea3d30c)) {
                    eattacker.var_4ea3d30c = 1;
                } else {
                    eattacker.var_4ea3d30c++;
                    if (eattacker.var_4ea3d30c >= 3) {
                        eattacker stats::function_dad108fa(#"hash_ff6f0ad45e36936", 1);
                        eattacker stats::function_dad108fa(#"hash_a367df14eae87f0", 1);
                        eattacker.var_4ea3d30c = 0;
                    }
                }
                eattacker.var_88f25284 = undefined;
            }
        }
    }
    is_melee = weapons::ismeleemod(smeansofdeath);
    var_8c8cca9b = function_f74d2943(weapon, 6);
    var_e31583b3 = isdefined(var_8c8cca9b) && !is_melee;
    dot_params = function_f74d2943(weapon, 7);
    if (isdefined(level.var_cc63b5fe[weapon])) {
        dot_params = level.var_cc63b5fe[weapon];
    }
    var_7e7a6e97 = isdefined(dot_params) && !is_melee;
    if ((isdefined(self.var_213b4a61) && (smeansofdeath == "MOD_BURNED" || smeansofdeath == "MOD_DOT") || var_e31583b3) && self !== eattacker) {
        var_9277fb8e = idamage;
        if (self.var_e00c085f === gettime()) {
            var_9277fb8e += self.var_9277fb8e;
        }
        var_e6544856 = max(self.maxhealth, self.health);
        var_7c61c7a1 = var_e6544856 - self.health + var_9277fb8e;
        var_56712f4 = self function_401b9b57();
        var_62b80170 = var_e6544856 - var_56712f4;
        if (var_7c61c7a1 > var_62b80170) {
            var_7c61c7a1 = var_62b80170;
        }
        self.var_e00c085f = gettime();
        self.var_9277fb8e = var_9277fb8e;
        if (isdefined(self.var_4dcf932b)) {
            params = getstatuseffect("wound_radiation");
        } else if (isdefined(self.var_e8bb749a)) {
            params = getstatuseffect("shock_rifle_shock");
        } else if (var_7e7a6e97) {
            params = dot_params;
        } else if (var_e31583b3) {
            params = var_8c8cca9b;
        } else {
            params = getstatuseffect("wound");
        }
        if (!is_true(params.var_d8e9a175) && (!isdefined(self.var_4dcf932b) || self.var_4dcf932b != self)) {
            params.var_4df0ea83 = smeansofdeath != "MOD_DOT";
            if (params.setype == 6) {
                params.var_752c0834 = function_a31ab50c(var_7c61c7a1);
                params.var_4df0ea83 = 1;
                self.var_abe2db87 = 1;
            }
            self status_effect::status_effect_apply(params, weapon, eattacker, 0);
            var_284f3c1a = params.setype == 6;
            if (var_7e7a6e97 && !var_284f3c1a) {
                wound_params = var_e31583b3 ? var_8c8cca9b : getstatuseffect("wound");
                wound_params.var_752c0834 = function_a31ab50c(var_7c61c7a1);
                self.var_abe2db87 = 1;
                self status_effect::status_effect_apply(wound_params, weapon, eattacker, 0);
            }
        }
        if (is_true(params.var_73c88af2)) {
            vdir = undefined;
        }
    }
    if (idamage > 1 && isdefined(eattacker) && isdefined(self.var_ea1458aa)) {
        if (weapons::isbulletdamage(smeansofdeath)) {
            angles = self getplayerangles();
            forward = anglestoforward((0, angles[1], 0));
            dirtoattacker = vectornormalize(eattacker.origin - self.origin);
            if (vectordot(forward, dirtoattacker) < 0.7) {
                if (!isdefined(self.var_ea1458aa.var_64ffda50)) {
                    self.var_ea1458aa.var_64ffda50 = [];
                }
                attackerentnum = eattacker getentitynumber();
                self.var_ea1458aa.var_64ffda50[attackerentnum] = gettime();
            }
        } else if (weapons::isexplosivedamage(smeansofdeath)) {
            if (isdefined(einflictor) && isdefined(einflictor.weapon) && einflictor.weapon.statname == #"recon_car") {
                if (!isdefined(self.var_ea1458aa.var_8f7ff7ed)) {
                    self.var_ea1458aa.var_8f7ff7ed = [];
                }
                attackerentnum = eattacker getentitynumber();
                self.var_ea1458aa.var_8f7ff7ed[attackerentnum] = gettime();
            }
        }
    }
    if (level.competitivesettingsenabled && weapon.statname == #"launcher_standard_t8" && smeansofdeath == "MOD_PROJECTILE_SPLASH") {
        idamage = int(idamage * 0.25);
    }
    if (isplayer(eattacker) && eattacker != self) {
        if (!isdefined(eattacker.var_6fd69072)) {
            eattacker.var_6fd69072 = function_f8d53445();
        }
    }
    if (!isdefined(self.var_8cb03411)) {
        self.var_8cb03411 = function_f8d53445();
    }
    fatal = self finishplayerdamage(einflictor, eattacker, idamage, idflags, smeansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, vdamageorigin, psoffsettime, boneindex, vsurfacenormal);
    if (self.var_abe2db87 === 1) {
        self function_b2b139e6();
        self.var_abe2db87 = undefined;
    }
    if (is_true(self.laststand)) {
        fatal = isdefined(self.var_969fabf4) && self.var_969fabf4 <= 0;
    }
    profileNamedStop();
    return is_true(fatal);
}

// Namespace player/player_damage
// Params 11, eflags: 0x6 linked
// Checksum 0x254ce3fa, Offset: 0x3048
// Size: 0x3b6
function private player_damage_log(einflictor, eattacker, idamage, *idflags, smeansofdeath, weapon, *vpoint, *vdir, shitloc, *psoffsettime, *boneindex) {
    profileNamedStart(#"");
    /#
        if (getdvarint(#"g_debugdamage", 0)) {
            println("<unknown string>" + self getentitynumber() + "<unknown string>" + self.health + "<unknown string>" + vpoint.clientid + "<unknown string>" + isplayer(weapon) + "<unknown string>" + vdir + "<unknown string>" + boneindex);
        }
    #/
    if (self.sessionstate != "dead") {
        lpselfnum = self getentitynumber();
        lpselfname = self.name;
        lpselfteam = self.team;
        lpselfguid = self getguid();
        lpattackerteam = "";
        lpattackerorigin = (0, 0, 0);
        victimspecialist = function_b14806c6(self player_role::get(), currentsessionmode());
        if (isplayer(vpoint)) {
            lpattacknum = vpoint getentitynumber();
            var_c8fa9c41 = vpoint getxuid();
            lpattackguid = vpoint getguid();
            lpattackname = vpoint.name;
            lpattackerteam = vpoint.team;
            lpattackerorigin = vpoint.origin;
            attackerspecialist = function_b14806c6(vpoint player_role::get(), currentsessionmode());
            if (isdefined(self.currentweapon)) {
                name = self.currentweapon.name;
            }
            bb::function_c3b9e07f(vpoint, lpattackerorigin, attackerspecialist, psoffsettime.name, self, self.origin, victimspecialist, name, vdir, shitloc, boneindex, 0, undefined);
        } else {
            lpattacknum = -1;
            var_c8fa9c41 = 0;
            lpattackguid = "";
            lpattackname = "";
            lpattackerteam = "world";
            bb::function_c3b9e07f(undefined, undefined, undefined, psoffsettime.name, self, self.origin, undefined, undefined, vdir, shitloc, boneindex, 0, undefined);
        }
    }
    profileNamedStop();
}

// Namespace player/player_damage
// Params 1, eflags: 0x6 linked
// Checksum 0x2d956dd1, Offset: 0x3408
// Size: 0x36
function private should_allow_postgame_damage(smeansofdeath) {
    if (smeansofdeath == "MOD_TRIGGER_HURT" || smeansofdeath == "MOD_CRUSH") {
        return true;
    }
    return false;
}

// Namespace player/player_damage
// Params 14, eflags: 0x6 linked
// Checksum 0xe557ed00, Offset: 0x3448
// Size: 0xd4
function private do_post_game_damage(einflictor, eattacker, idamage, idflags, smeansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, vdamageorigin, psoffsettime, boneindex, vsurfacenormal) {
    if (!gamestate::is_game_over()) {
        return;
    }
    if (!should_allow_postgame_damage(smeansofdeath)) {
        return;
    }
    self finishplayerdamage(einflictor, eattacker, idamage, idflags, "MOD_POST_GAME", weapon, var_fd90b0bb, vpoint, vdir, shitloc, vdamageorigin, psoffsettime, boneindex, vsurfacenormal);
}

// Namespace player/player_damage
// Params 14, eflags: 0x6 linked
// Checksum 0xedb7ab7a, Offset: 0x3528
// Size: 0x210
function private function_b5dadafc(einflictor, eattacker, idamage, idflags, smeansofdeath, weapon, *var_fd90b0bb, vpoint, *vdir, shitloc, *vdamageorigin, psoffsettime, *boneindex, *vsurfacenormal) {
    if (!gamestate::is_state(#"pregame")) {
        return false;
    }
    if (self isskydiving() && shitloc == "MOD_FALLING" && vpoint > self.health) {
        self function_8cf53a19();
    }
    friendlyfire = isplayer(var_fd90b0bb) && self util::isenemyplayer(var_fd90b0bb) == 0;
    if (friendlyfire) {
        vpoint = self does_player_completely_avoid_damage(vdir, boneindex, vdamageorigin, friendlyfire, 0, shitloc, psoffsettime, vpoint, weapon, var_fd90b0bb);
        if (vpoint <= 0) {
            return false;
        }
    }
    if (damagefeedback::dodamagefeedback(vdamageorigin, weapon, vpoint, shitloc)) {
        if (vpoint > 0) {
            perkfeedback = function_e512b988(self, vdamageorigin, shitloc, weapon, vdir & 2048);
        }
        var_fd90b0bb = figure_out_attacker(var_fd90b0bb);
        if (isdefined(var_fd90b0bb)) {
            var_fd90b0bb thread damagefeedback::update(shitloc, weapon, perkfeedback, vdamageorigin, self, vsurfacenormal, boneindex, 0, vdir);
        }
    }
    return true;
}

// Namespace player/player_damage
// Params 6, eflags: 0x6 linked
// Checksum 0x2d4b155f, Offset: 0x3740
// Size: 0x2ca
function private function_e512b988(player, weapon, smeansofdeath, einflictor, armor_damaged, var_295ac8e4) {
    perkfeedback = undefined;
    var_14e61d05 = player util::function_14e61d05();
    hasflakjacket = player hasperk(#"specialty_flakjacket");
    isexplosivedamage = weapons::isexplosivedamage(smeansofdeath);
    isflashorstundamage = weapons::isflashorstundamage(weapon, smeansofdeath);
    var_d015da29 = weapons::isfiredamage(weapon, smeansofdeath);
    var_1c365dd = player status_effect::function_3c54ae98(7) > 0;
    if (isflashorstundamage && var_14e61d05) {
        perkfeedback = "tacticalMask";
    } else if (var_1c365dd && weapon != level.weaponnone && weapon == getweapon(#"shock_rifle")) {
        perkfeedback = "resistance";
    } else if (player hasperk(#"specialty_fireproof") && weapons::isfiredamage(weapon, smeansofdeath)) {
        perkfeedback = "flakjacket";
    } else if ((isexplosivedamage || var_d015da29) && hasflakjacket && !weapon.ignoresflakjacket && !function_e3242ae4(weapon, einflictor)) {
        perkfeedback = "flakjacket";
        player thread challenges::flakjacketprotectedmp();
    } else if (armor_damaged) {
        if (isdefined(getgametypesetting(#"hash_11e1a0adebdab01a")) ? getgametypesetting(#"hash_11e1a0adebdab01a") : 0) {
            if (var_295ac8e4) {
                perkfeedback = "armorBroke";
            } else {
                perkfeedback = "armor";
            }
        }
    }
    return perkfeedback;
}

// Namespace player/player_damage
// Params 2, eflags: 0x6 linked
// Checksum 0xc9518df5, Offset: 0x3a18
// Size: 0x52
function private function_e3242ae4(weapon, einflictor) {
    if (weapon.isaikillstreakdamage) {
        if (weapon.name != "ai_tank_drone_rocket" || isdefined(einflictor.firedbyai)) {
            return true;
        }
    }
    return false;
}

// Namespace player/player_damage
// Params 10, eflags: 0x6 linked
// Checksum 0x8213d0b8, Offset: 0x3a78
// Size: 0x55e
function private does_player_completely_avoid_damage(idflags, shitloc, weapon, friendlyfire, attackerishittingself, smeansofdeath, vpoint, idamage, einflictor, eattacker) {
    if (idflags & 8192) {
        return idamage;
    }
    if (friendlyfire && level.friendlyfire == 0) {
        return 0;
    }
    if (friendlyfire && (weapon === getweapon(#"straferun_gun") || weapon == getweapon(#"straferun_rockets"))) {
        return 0;
    }
    if ((attackerishittingself || friendlyfire) && weapon != level.weaponnone && weapon === getweapon(#"supplydrop") && smeansofdeath == "MOD_EXPLOSIVE") {
        return 0;
    }
    if (shitloc == "riotshield") {
        if (!(idflags & 160)) {
            return 0;
        }
    }
    if (self.currentweapon !== level.weaponnone && self.currentweapon === getweapon(#"sig_buckler_turret") && weapon != getweapon(#"remote_missile_missile") && (smeansofdeath == "MOD_GRENADE" || smeansofdeath == "MOD_GRENADE_SPLASH" || smeansofdeath == "MOD_PROJECTILE_SPLASH" || smeansofdeath == "MOD_PROJECTILE" || smeansofdeath == "MOD_EXPLOSIVE" || weapon.type == "gas" && (smeansofdeath == "MOD_GAS" || smeansofdeath == "MOD_BURNED"))) {
        angles = self getplayerangles();
        forward = anglestoforward((0, angles[1], 0));
        var_587ddb7b = weapon.statname == #"hero_flamethrower" && weapon.type == "gas" && (smeansofdeath == "MOD_GAS" || smeansofdeath == "MOD_BURNED");
        if (var_587ddb7b && isdefined(eattacker) && false) {
            vpoint = eattacker.origin;
        }
        dirtoplayer = self.origin - vpoint;
        dir = vectornormalize((dirtoplayer[0], dirtoplayer[1], 0));
        dot = vectordot(forward, dir);
        dot_threshold = -0.7;
        if (var_587ddb7b) {
            dot_threshold = getdvarfloat(#"hash_5225b2e88154efd5", -0.25);
        }
        if (dot < dot_threshold) {
            var_a0c3f41d = isdefined(self.currentweapon.var_e2b40cd5) ? self.currentweapon.var_e2b40cd5 : 0;
            if (var_a0c3f41d > 0) {
                blockeddamage = idamage;
                blockeddamage *= 1 - var_a0c3f41d;
                function_56dc620b(einflictor, eattacker, int(blockeddamage), weapon, getscriptbundle(self.currentweapon.customsettings));
                idamage *= var_a0c3f41d;
                return int(idamage);
            }
            function_56dc620b(einflictor, eattacker, idamage, weapon, getscriptbundle(self.currentweapon.customsettings));
            return 0;
        }
    }
    if (weapon.isemp && smeansofdeath == "MOD_GRENADE_SPLASH") {
        if (self hasperk(#"specialty_immuneemp")) {
            return 0;
        }
    }
    return idamage;
}

// Namespace player/player_damage
// Params 5, eflags: 0x2 linked
// Checksum 0x6cdb6260, Offset: 0x3fe0
// Size: 0x294
function function_56dc620b(einflictor, eattacker, idamage, weapon, customsettings) {
    previous_shield_damage = self.shielddamageblocked;
    self.shielddamageblocked += idamage;
    if (self.shielddamageblocked % 200 < previous_shield_damage % 200) {
        if (isdefined(einflictor) && !isplayer(einflictor)) {
            if (!isdefined(einflictor.var_a6cf412b)) {
                einflictor.var_a6cf412b = [];
            }
            if (!isdefined(einflictor.var_a6cf412b[self.clientid]) || einflictor.var_a6cf412b[self.clientid].var_70465a20 != (isdefined(self.var_70465a20) ? self.var_70465a20 : 0)) {
                info = spawnstruct();
                info.var_5d378d77 = 1;
                info.var_70465a20 = isdefined(self.var_70465a20) ? self.var_70465a20 : 0;
                einflictor.var_a6cf412b[self.clientid] = info;
            } else {
                einflictor.var_a6cf412b[self.clientid].var_5d378d77++;
            }
        }
        var_2c23422d = isdefined(customsettings.var_2c23422d) ? customsettings.var_2c23422d : 0;
        if (isplayer(einflictor) || einflictor.var_a6cf412b[self.clientid].var_5d378d77 <= var_2c23422d) {
            score = rank::getscoreinfovalue("shield_blocked_damage");
            if (score > 0) {
                self stats::function_e24eec31(level.weaponriotshield, #"score_from_blocked_damage", score);
            }
            scoreevents::processscoreevent(#"shield_blocked_damage", self, undefined, self.currentweapon);
        }
        self battlechatter::function_bd715920(self.currentweapon, eattacker, self.origin, weapon);
    }
}

// Namespace player/player_damage
// Params 7, eflags: 0x6 linked
// Checksum 0xe6e29e86, Offset: 0x4280
// Size: 0x1a4
function private riotshield_hit(einflictor, eattacker, idamage, smeansofdeath, weapon, attackerishittingteammate, vdir) {
    if ((smeansofdeath == "MOD_PISTOL_BULLET" || smeansofdeath == "MOD_RIFLE_BULLET" || smeansofdeath == "MOD_IMPACT") && !attackerishittingteammate) {
        currentweapon = self getcurrentweapon();
        if (currentweapon.isriotshield) {
            if (isplayer(eattacker)) {
                eattacker.lastattackedshieldplayer = self;
                eattacker.lastattackedshieldtime = gettime();
            }
            function_56dc620b(einflictor, eattacker, idamage, weapon, getscriptbundle(currentweapon.customsettings));
            forward = anglestoforward(self getplayerangles());
            dot = vectordot(forward, vdir);
            if (dot < -0.8) {
                self status_effect::status_effect_apply(getstatuseffect("riotshield_hit_slow"), self.currentweapon, self, 0);
            }
        }
    }
}

// Namespace player/player_damage
// Params 3, eflags: 0x6 linked
// Checksum 0x5a4948d8, Offset: 0x4430
// Size: 0xf6
function private function_ef7fa582(eattacker, etarget, weapon) {
    if (isdefined(eattacker.owner) && isdefined(eattacker.owner.owner) && eattacker.owner.owner == etarget && is_true(eattacker.owner.donotdamageowner)) {
        return 1;
    }
    if (level.hardcoremode) {
        return 0;
    }
    if (!isdefined(eattacker) || !isdefined(etarget)) {
        return 0;
    }
    if (!isdefined(weapon)) {
        return 0;
    }
    if (isdefined(eattacker.script_owner) && eattacker.script_owner == etarget) {
        return weapon.donotdamageowner;
    }
    return 0;
}

// Namespace player/player_damage
// Params 5, eflags: 0x6 linked
// Checksum 0x49086c72, Offset: 0x4530
// Size: 0x40e
function private should_do_player_damage(eattacker, einflictor, weapon, smeansofdeath, idflags) {
    if (gamestate::is_game_over()) {
        return 0;
    }
    if (self.sessionteam == #"spectator") {
        return 0;
    }
    if (isdefined(self.candocombat) && !self.candocombat) {
        return 0;
    }
    if (isdefined(eattacker) && isplayer(eattacker) && isdefined(eattacker.candocombat) && !eattacker.candocombat) {
        return 0;
    }
    if (isdefined(level.hostmigrationtimer)) {
        return 0;
    }
    if (level.onlyheadshots) {
        if (smeansofdeath == "MOD_PISTOL_BULLET" || smeansofdeath == "MOD_RIFLE_BULLET") {
            return 0;
        }
    }
    if (level.onlyexecution) {
        if (level.onlyheadshots && smeansofdeath != "MOD_HEAD_SHOT" && smeansofdeath != "MOD_EXECUTION") {
            return 0;
        }
        if (!level.onlyheadshots && smeansofdeath != "MOD_EXECUTION") {
            return 0;
        }
    }
    if (isdefined(einflictor) && isdefined(einflictor.team) && !self util::isenemyteam(einflictor.team)) {
        if (isvehicle(einflictor) && is_true(einflictor.var_54b19f55)) {
            return 0;
        }
        if (isai(einflictor) && isdefined(einflictor.ai) && is_true(einflictor.ai.var_54b19f55)) {
            return 0;
        }
    }
    if (isdefined(eattacker) && isdefined(eattacker.team) && !self util::isenemyteam(eattacker.team)) {
        if (isvehicle(eattacker) && is_true(eattacker.var_54b19f55)) {
            return 0;
        }
        if (isai(eattacker) && is_true(eattacker.ai.var_54b19f55)) {
            return 0;
        }
    }
    if (self vehicle::player_is_occupant_invulnerable(eattacker, smeansofdeath)) {
        return 0;
    }
    if (weapon.issupplydropweapon && !weapon.isgrenadeweapon && smeansofdeath != "MOD_TRIGGER_HURT") {
        return 0;
    }
    if (self.scene_takedamage === 0) {
        return 0;
    }
    if (function_ef7fa582(einflictor, self, weapon)) {
        return 0;
    }
    if (idflags & 8 && self is_spawn_protected()) {
        return 0;
    }
    if (smeansofdeath == "MOD_CRUSH" && isdefined(einflictor) && einflictor.deal_no_crush_damage === 1) {
        return;
    }
    if (self.var_295c2193 === 1 && smeansofdeath != "MOD_TRIGGER_HURT") {
        return 0;
    }
    return 1;
}

// Namespace player/player_damage
// Params 9, eflags: 0x6 linked
// Checksum 0xebf97429, Offset: 0x4948
// Size: 0x3ac
function private apply_damage_to_armor(einflictor, eattacker, idamage, idflags, smeansofdeath, weapon, shitloc, friendlyfire, ignore_round_start_friendly_fire) {
    victim = self;
    if (friendlyfire && !function_1727a023(ignore_round_start_friendly_fire, eattacker)) {
        return {#idflags:idflags, #idamage:idamage};
    }
    if (isdefined(einflictor) && isdefined(einflictor.stucktoplayer) && einflictor.stucktoplayer == victim) {
        return {#idflags:idflags, #idamage:victim.health};
    }
    armor = self armor::get_armor();
    gear_armor = self.armor;
    self.var_426947c4 = undefined;
    var_5612d816 = idamage;
    idamage = victim armor::apply_damage(weapon, idamage, smeansofdeath, eattacker, shitloc);
    idamage = victim armor::function_a77114f2(einflictor, eattacker, idamage, smeansofdeath, weapon, shitloc);
    armor_damaged = armor != self armor::get_armor();
    time = gettime();
    if (isdefined(victim.var_c79fb13d) || level.var_9ff21849 === 1) {
        var_662a8484 = int(var_5612d816 - idamage);
        if (var_662a8484 > 0) {
            victim stats::function_dad108fa(#"hash_58ce82019e4dfd1c", var_662a8484);
        }
    }
    if (armor_damaged) {
        idflags |= 2048;
        if (gear_armor > 0 && self.armor <= 0) {
            self.var_426947c4 = 1;
        }
        if (!isdefined(self.var_eed94074)) {
            self.var_eed94074 = {};
        }
        if (!isdefined(self.var_eed94074.lastdamagetime) || self.var_eed94074.lastdamagetime + 4000 < time) {
            self.var_eed94074.var_615e1be9 = 0;
        }
        self.var_eed94074.lastdamagetime = time;
    }
    if (isdefined(self.var_eed94074)) {
        if (!armor_damaged && self.var_eed94074.lastdamagetime + 4000 < time) {
            self.var_eed94074 = undefined;
        } else {
            self.var_eed94074.var_615e1be9 += var_5612d816;
        }
    }
    if (is_true(self.power_armor_took_damage)) {
        idflags |= 1024;
    }
    return {#idflags:idflags, #idamage:idamage};
}

// Namespace player/player_damage
// Params 2, eflags: 0x6 linked
// Checksum 0x8f05460d, Offset: 0x4d00
// Size: 0xb2
function private make_sure_damage_is_not_zero(idamage, armor_damaged) {
    if (idamage < 1) {
        if ((armor_damaged || self ability_util::gadget_power_armor_on() || self armor::has_armor()) && isdefined(self.maxhealth) && self.health < self.maxhealth) {
            self.health += 1;
        }
        idamage = 1;
    }
    return int(idamage);
}

// Namespace player/player_damage
// Params 2, eflags: 0x6 linked
// Checksum 0x40a54f8, Offset: 0x4dc0
// Size: 0x72
function private modify_player_damage_friendlyfire(idamage, eattacker) {
    friendlyfire = [[ level.figure_out_friendly_fire ]](self, eattacker);
    if (friendlyfire == 2 || friendlyfire == 3) {
        idamage = int(idamage * 0.5);
    }
    return idamage;
}

// Namespace player/player_damage
// Params 0, eflags: 0x2 linked
// Checksum 0xd137a782, Offset: 0x4e40
// Size: 0x90
function function_7681dccc() {
    if (self isinvehicle()) {
        vehicle = self getvehicleoccupied();
        if (isdefined(vehicle) && isdefined(vehicle.overrideplayerdamage)) {
            return vehicle.overrideplayerdamage;
        }
    }
    if (isdefined(self.overrideplayerdamage)) {
        return self.overrideplayerdamage;
    }
    if (isdefined(level.overrideplayerdamage)) {
        return level.overrideplayerdamage;
    }
}

// Namespace player/player_damage
// Params 12, eflags: 0x6 linked
// Checksum 0x62cd3c38, Offset: 0x4ed8
// Size: 0x3ea
function private modify_player_damage(einflictor, eattacker, idamage, idflags, smeansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, psoffsettime, boneindex) {
    overrideplayerdamage = function_7681dccc();
    if (isdefined(overrideplayerdamage)) {
        idamage = self [[ overrideplayerdamage ]](einflictor, eattacker, idamage, idflags, smeansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, psoffsettime, boneindex);
    }
    assert(isdefined(idamage), "<unknown string>");
    if (isdefined(eattacker)) {
        idamage = loadout::cac_modified_damage(self, eattacker, idamage, smeansofdeath, weapon, einflictor, shitloc);
        if (isdefined(eattacker.pickup_damage_scale) && eattacker.pickup_damage_scale_time > gettime()) {
            idamage *= eattacker.pickup_damage_scale;
        }
    }
    idamage = custom_gamemodes_modified_damage(self, eattacker, idamage, smeansofdeath, weapon, einflictor, shitloc);
    if (level.onplayerdamage != &globallogic::blank) {
        modifieddamage = [[ level.onplayerdamage ]](einflictor, eattacker, idamage, idflags, smeansofdeath, weapon, vpoint, vdir, shitloc, psoffsettime);
        if (isdefined(modifieddamage)) {
            if (modifieddamage <= 0) {
                return;
            }
            idamage = modifieddamage;
        }
    }
    if (level.onlyheadshots) {
        if (smeansofdeath == "MOD_HEAD_SHOT") {
            idamage = 150;
        }
    }
    if (weapon.damagealwayskillsplayer) {
        idamage = self.maxhealth + 1;
    }
    if (shitloc == "riotshield") {
        if (idflags & 32) {
            if (!(idflags & 64)) {
                idamage *= 0;
            }
        } else if (idflags & 128) {
            if (isdefined(einflictor) && isdefined(einflictor.stucktoplayer) && einflictor.stucktoplayer == self) {
                idamage = self.maxhealth + 1;
            }
        }
    }
    if (self.currentweapon === getweapon(#"sig_buckler_dw") && (smeansofdeath == "MOD_GRENADE" || smeansofdeath == "MOD_GRENADE_SPLASH" || smeansofdeath == "MOD_PROJECTILE_SPLASH" || smeansofdeath == "MOD_PROJECTILE")) {
        angles = self getplayerangles();
        forward = anglestoforward((0, angles[1], 0));
        dirtoplayer = self.origin - vpoint;
        dir = vectornormalize((dirtoplayer[0], dirtoplayer[1], 0));
        dot = vectordot(forward, dir);
        if (dot < -0.7) {
            idamage *= weapon.var_6844746b;
        }
    }
    return int(idamage);
}

// Namespace player/player_damage
// Params 5, eflags: 0x6 linked
// Checksum 0x9d51c9c, Offset: 0x52d0
// Size: 0xa6
function private modify_player_damage_meansofdeath(einflictor, eattacker, smeansofdeath, weapon, shitloc) {
    if (weapons::isheadshot(weapon, shitloc, smeansofdeath) && isplayer(eattacker)) {
        smeansofdeath = "MOD_HEAD_SHOT";
    }
    if (isdefined(einflictor) && isdefined(einflictor.script_noteworthy)) {
        if (einflictor.script_noteworthy == "ragdoll_now") {
            smeansofdeath = "MOD_FALLING";
        }
    }
    return smeansofdeath;
}

// Namespace player/player_damage
// Params 3, eflags: 0x6 linked
// Checksum 0xc66e420b, Offset: 0x5380
// Size: 0x2be
function private update_attacker(einflictor, eattacker, smeansofdeath) {
    if (!isplayer(eattacker)) {
        return;
    }
    if (!isdefined(eattacker.pers)) {
        return;
    }
    if (eattacker === einflictor) {
        if (smeansofdeath == "MOD_HEAD_SHOT" || smeansofdeath == "MOD_PISTOL_BULLET" || smeansofdeath == "MOD_RIFLE_BULLET") {
            if (!isdefined(eattacker.hits)) {
                eattacker.hits = 0;
            }
            if (!isdefined(eattacker.headshothits)) {
                eattacker.headshothits = 0;
            }
            if (!isdefined(eattacker.pers[#"shotshit"])) {
                eattacker.pers[#"shotshit"] = 0;
            }
            eattacker.pers[#"shotshit"]++;
            eattacker.hits++;
            if (smeansofdeath == "MOD_HEAD_SHOT") {
                eattacker.headshothits++;
                if (!isdefined(eattacker.pers[#"headshothits"])) {
                    eattacker.pers[#"headshothits"] = 0;
                }
                eattacker.pers[#"headshothits"]++;
            }
            if (!isdefined(eattacker.pers[#"shotsfired"])) {
                eattacker.pers[#"shotsfired"] = 0;
            }
            shotsmissed = eattacker.pers[#"shotsfired"] - eattacker.pers[#"shotshit"];
            if (shotsmissed < 0) {
                shotsmissed = 0;
            }
            eattacker.pers[#"shotsmissed"] = shotsmissed;
            eattacker function_ef823e71(0, eattacker.pers[#"shotsfired"], eattacker.pers[#"shotshit"]);
        }
    }
    if (!isdefined(eattacker.pers[#"participation"])) {
        eattacker.pers[#"participation"] = 0;
    }
    eattacker.pers[#"participation"]++;
}

// Namespace player/player_damage
// Params 3, eflags: 0x6 linked
// Checksum 0xe6631bca, Offset: 0x5648
// Size: 0x13e
function private function_811dd365(einflictor, weapon, smeansofdeath) {
    if (!self is_spawn_protected()) {
        return false;
    }
    if (weapon.explosionradius == 0) {
        return false;
    }
    distsqr = isdefined(einflictor) && isdefined(self.lastspawnpoint) ? distancesquared(einflictor.origin, self.lastspawnpoint.origin) : 0;
    if (distsqr < sqr(250)) {
        if (smeansofdeath == "MOD_GRENADE" || smeansofdeath == "MOD_GRENADE_SPLASH") {
            return true;
        }
        if (smeansofdeath == "MOD_PROJECTILE" || smeansofdeath == "MOD_PROJECTILE_SPLASH") {
            return true;
        }
        if (smeansofdeath == "MOD_EXPLOSIVE") {
            return true;
        }
    }
    if (killstreaks::is_killstreak_weapon(weapon)) {
        return true;
    }
    return false;
}

// Namespace player/player_damage
// Params 11, eflags: 0x6 linked
// Checksum 0xc72b308b, Offset: 0x5790
// Size: 0x5f8
function private function_104e1126(einflictor, eattacker, *idamage, *idflags, smeansofdeath, weapon, *vpoint, *vdir, *shitloc, *psoffsettime, *boneindex) {
    is_explosive_damage = weapons::isexplosivedamage(psoffsettime);
    if (is_explosive_damage) {
        if (self function_811dd365(vdir, boneindex, psoffsettime)) {
            if (boneindex.dostun) {
                self.laststunnedby = shitloc;
                self.laststunnedtime = self.idflagstime;
                self.var_7da08929 = boneindex;
            }
            return false;
        }
        if (self function_eacd01b7(shitloc, boneindex)) {
            return false;
        }
    }
    if (isdefined(vdir) && (psoffsettime == "MOD_GAS" || is_explosive_damage)) {
        self.explosiveinfo = [];
        self.explosiveinfo[#"damagetime"] = gettime();
        self.explosiveinfo[#"damageid"] = vdir getentitynumber();
        self.explosiveinfo[#"originalownerkill"] = 0;
        self.explosiveinfo[#"bulletpenetrationkill"] = 0;
        self.explosiveinfo[#"chainkill"] = 0;
        self.explosiveinfo[#"damageexplosivekill"] = 0;
        self.explosiveinfo[#"chainkill"] = 0;
        self.explosiveinfo[#"cookedkill"] = 0;
        self.explosiveinfo[#"weapon"] = boneindex;
        self.explosiveinfo[#"originalowner"] = vdir.originalowner;
        isfrag = boneindex.rootweapon.name == "frag_grenade";
        if (isdefined(shitloc) && shitloc != self) {
            if (isdefined(shitloc) && isdefined(vdir.owner) && (boneindex.name == #"satchel_charge" || boneindex.name == #"claymore" || boneindex.name == #"bouncingbetty")) {
                self.explosiveinfo[#"originalownerkill"] = vdir.owner == self;
                self.explosiveinfo[#"damageexplosivekill"] = isdefined(vdir.wasdamaged);
                self.explosiveinfo[#"chainkill"] = isdefined(vdir.waschained);
                self.explosiveinfo[#"wasjustplanted"] = isdefined(vdir.wasjustplanted);
                self.explosiveinfo[#"bulletpenetrationkill"] = isdefined(vdir.wasdamagedfrombulletpenetration);
                self.explosiveinfo[#"cookedkill"] = 0;
            }
            if (isdefined(vdir) && isdefined(vdir.stucktoplayer) && boneindex.projexplosiontype == "grenade") {
                self.explosiveinfo[#"stucktoplayer"] = vdir.stucktoplayer;
            }
            if (boneindex.dostun) {
                self.laststunnedby = shitloc;
                self.laststunnedtime = self.idflagstime;
                self.var_7da08929 = boneindex;
            }
            if (isdefined(shitloc.lastgrenadesuicidetime) && shitloc.lastgrenadesuicidetime >= gettime() - 50 && isfrag) {
                self.explosiveinfo[#"suicidegrenadekill"] = 1;
            } else {
                self.explosiveinfo[#"suicidegrenadekill"] = 0;
            }
        }
        if (isfrag) {
            self.explosiveinfo[#"cookedkill"] = isdefined(vdir.iscooked);
            self.explosiveinfo[#"throwbackkill"] = isdefined(vdir.throwback);
        }
        if (isdefined(shitloc) && isplayer(shitloc) && shitloc != self) {
            self globallogic_score::setinflictorstat(vdir, shitloc, boneindex);
        }
    }
    if (psoffsettime == "MOD_IMPACT" && isdefined(shitloc) && isplayer(shitloc) && shitloc != self) {
        if (!boneindex.isballisticknife) {
            self globallogic_score::setinflictorstat(vdir, shitloc, boneindex);
        }
        if (boneindex.rootweapon.name == "hatchet" && isdefined(vdir)) {
            self.explosiveinfo[#"projectile_bounced"] = isdefined(vdir.bounced);
        }
    }
    return true;
}

// Namespace player/player_damage
// Params 0, eflags: 0x6 linked
// Checksum 0xd313615f, Offset: 0x5d90
// Size: 0x84
function private function_acca46ef() {
    if (!isdefined(level.discardtime) || !isdefined(level.starttime)) {
        return false;
    }
    if (level.friendlyfiredelay && level.friendlyfiredelaytime >= float(gettime() - level.starttime - level.discardtime) / 1000) {
        return true;
    }
    return false;
}

// Namespace player/player_damage
// Params 2, eflags: 0x6 linked
// Checksum 0x1f7a51c, Offset: 0x5e20
// Size: 0xb4
function private function_44b6bb92(eattacker, ignore_round_start_friendly_fire) {
    if (!isalive(eattacker)) {
        return false;
    }
    friendlyfire = [[ level.figure_out_friendly_fire ]](self, eattacker);
    if (friendlyfire == 1) {
        if (function_acca46ef() && ignore_round_start_friendly_fire == 0) {
            return true;
        }
    }
    if (friendlyfire == 2) {
        return true;
    }
    if (friendlyfire == 3) {
        return true;
    }
    return false;
}

// Namespace player/player_damage
// Params 2, eflags: 0x2 linked
// Checksum 0x24de646b, Offset: 0x5ee0
// Size: 0x84
function function_1727a023(ignore_round_start_friendly_fire, attacker) {
    friendlyfire = [[ level.figure_out_friendly_fire ]](self, attacker);
    if (friendlyfire == 1) {
        if (function_acca46ef() && ignore_round_start_friendly_fire == 0) {
            return false;
        }
        return true;
    }
    if (friendlyfire == 3) {
        return true;
    }
    return false;
}

// Namespace player/player_damage
// Params 2, eflags: 0x6 linked
// Checksum 0xaaf04df8, Offset: 0x5f70
// Size: 0x4a
function private function_eacd01b7(eattacker, weapon) {
    if (level.hardcoremode) {
        return 0;
    }
    if (!isdefined(eattacker)) {
        return 0;
    }
    if (self != eattacker) {
        return 0;
    }
    return weapon.donotdamageowner;
}

// Namespace player/player_damage
// Params 4, eflags: 0x6 linked
// Checksum 0x2fd1d05c, Offset: 0x5fc8
// Size: 0x1ae
function private function_f4f77cfb(weapon, einflictor, eattacker, smeansofdeath) {
    if (weapon == level.weaponnone && isdefined(einflictor)) {
        if (isdefined(einflictor.targetname) && einflictor.targetname == "explodable_barrel") {
            weapon = getweapon(#"explodable_barrel");
        } else if (isdefined(einflictor.destructible_type) && issubstr(einflictor.destructible_type, "vehicle_")) {
            weapon = getweapon(#"destructible_car");
        } else if (isdefined(einflictor.scriptvehicletype)) {
            veh_weapon = getweapon(einflictor.scriptvehicletype);
            if (isdefined(veh_weapon)) {
                weapon = veh_weapon;
            }
        }
    }
    if (smeansofdeath === "MOD_EXECUTION") {
        weapon = eattacker function_803e2c82(weapon);
    }
    if (isdefined(einflictor) && isdefined(einflictor.script_noteworthy)) {
        if (isdefined(level.overrideweaponfunc)) {
            weapon = [[ level.overrideweaponfunc ]](weapon, einflictor.script_noteworthy);
        }
    }
    return weapon;
}

// Namespace player/player_damage
// Params 7, eflags: 0x6 linked
// Checksum 0x7406ba33, Offset: 0x6180
// Size: 0xda
function private custom_gamemodes_modified_damage(*victim, eattacker, idamage, smeansofdeath, *weapon, *einflictor, *shitloc) {
    if (level.onlinegame && !sessionmodeisprivate()) {
        return einflictor;
    }
    if (isdefined(weapon) && isdefined(weapon.damagemodifier)) {
        einflictor *= weapon.damagemodifier;
    }
    if (shitloc == "MOD_PISTOL_BULLET" || shitloc == "MOD_RIFLE_BULLET") {
        einflictor = int(einflictor * level.bulletdamagescalar);
    }
    return einflictor;
}

// Namespace player/player_damage
// Params 5, eflags: 0x6 linked
// Checksum 0x5722c548, Offset: 0x6268
// Size: 0x1fe
function private function_a774b4ed(eattacker, einflictor, weapon, smeansofdeath, idamage) {
    self thread weapons::on_damage(eattacker, einflictor, weapon, smeansofdeath, idamage);
    if (!self util::isusingremote()) {
        if (sessionmodeiswarzonegame() && smeansofdeath == "MOD_DEATH_CIRCLE") {
            if (!isdefined(self.var_2f5355a6) || gettime() > self.var_2f5355a6) {
                self function_bc82f900("damage_death_circle");
                self.var_2f5355a6 = gettime();
            }
            return;
        }
        if (sessionmodeiswarzonegame() && smeansofdeath == "MOD_BLED_OUT") {
            if (!isdefined(self.var_2c725854) || gettime() > self.var_2c725854) {
                self function_bc82f900("damage_bleed");
                self.var_2c725854 = gettime();
            }
            return;
        }
        if (smeansofdeath != "MOD_DOT" && smeansofdeath != "MOD_DOT_SELF") {
            if (!isdefined(self.var_6d9f302e) || gettime() > self.var_6d9f302e) {
                self function_bc82f900("damage_heavy");
                self.var_6d9f302e = gettime();
            }
            return;
        }
        if (!isdefined(self.var_b82529f5) || gettime() > self.var_b82529f5) {
            self function_bc82f900("damage_light");
            self.var_b82529f5 = gettime();
        }
    }
}

// Namespace player/player_damage
// Params 1, eflags: 0x2 linked
// Checksum 0xd294ce49, Offset: 0x6470
// Size: 0xa6
function function_40c6c42d(attacker) {
    damage = 0;
    if (isdefined(attacker.clientid) && isdefined(self.attackerdamage) && isdefined(self.attackerdamage[attacker.clientid]) && self.attackerdamage[attacker.clientid].damage) {
        damage = self.attackerdamage[attacker.clientid].damage;
        if (damage > 200) {
            damage = 200;
        }
    }
    return damage;
}

// Namespace player/player_damage
// Params 0, eflags: 0x0
// Checksum 0xb4ccd40b, Offset: 0x6520
// Size: 0x17c
function function_201c298c() {
    var_28214e57 = undefined;
    lastdamagetime = undefined;
    if (isarray(self.attackerdamage)) {
        foreach (clientid, damage in self.attackerdamage) {
            if (!isdefined(var_28214e57) || damage.lastdamagetime > lastdamagetime) {
                var_28214e57 = clientid;
                lastdamagetime = damage.lastdamagetime;
            }
        }
    }
    if (isdefined(var_28214e57)) {
        foreach (player in getplayers()) {
            if (player.clientid === var_28214e57) {
                return player;
            }
        }
    }
    return undefined;
}

