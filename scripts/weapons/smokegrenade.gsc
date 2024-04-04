// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\globallogic\globallogic_score.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\sound_shared.gsc;
#using scripts\core_common\contracts_shared.gsc;
#using script_396f7d71538c9677;
#using scripts\core_common\battlechatter.gsc;

#namespace smokegrenade;

// Namespace smokegrenade/smokegrenade
// Params 0, eflags: 0x2 linked
// Checksum 0xc626cf39, Offset: 0x1c0
// Size: 0x184
function init_shared() {
    level.willypetedamageradius = 300;
    level.willypetedamageheight = 128;
    level.smokegrenadeduration = 8;
    level.smokegrenadedissipation = 4;
    level.smokegrenadetotaltime = level.smokegrenadeduration + level.smokegrenadedissipation;
    level.fx_smokegrenade_single = "smoke_center";
    level.smoke_grenade_triggers = [];
    clientfield::register("allplayers", "inenemysmoke", 14000, 1, "int");
    clientfield::register("allplayers", "insmoke", 16000, 2, "int");
    clientfield::register("allplayers", "foggerpostfx", 9000, 1, "int");
    clientfield::register("scriptmover", "smoke_state", 16000, 1, "int");
    globallogic_score::register_kill_callback(getweapon(#"willy_pete"), &function_aff603b2);
}

// Namespace smokegrenade/smokegrenade
// Params 1, eflags: 0x2 linked
// Checksum 0xd4e876bc, Offset: 0x350
// Size: 0x66
function function_79d42bea(weapon) {
    if (!isdefined(weapon.customsettings)) {
        return 128;
    }
    var_b0b958b3 = getscriptbundle(weapon.customsettings);
    return isdefined(var_b0b958b3.var_40dfefd1) ? var_b0b958b3.var_40dfefd1 : 128;
}

// Namespace smokegrenade/smokegrenade
// Params 1, eflags: 0x2 linked
// Checksum 0xd4140889, Offset: 0x3c0
// Size: 0x72
function function_36d48dce(weapon) {
    if (!isdefined(weapon.customsettings)) {
        return 128;
    }
    var_b0b958b3 = getscriptbundle(weapon.customsettings);
    return isdefined(var_b0b958b3.var_9e166547) ? var_b0b958b3.var_9e166547 : function_79d42bea(weapon);
}

// Namespace smokegrenade/smokegrenade
// Params 1, eflags: 0x2 linked
// Checksum 0x37cee441, Offset: 0x440
// Size: 0x72
function function_f199623f(weapon) {
    if (!isdefined(weapon.customsettings)) {
        return level.smokegrenadeduration;
    }
    var_b0b958b3 = getscriptbundle(weapon.customsettings);
    return isdefined(var_b0b958b3.smokegrenadeduration) ? var_b0b958b3.smokegrenadeduration : level.smokegrenadeduration;
}

// Namespace smokegrenade/smokegrenade
// Params 1, eflags: 0x2 linked
// Checksum 0x30d52cb1, Offset: 0x4c0
// Size: 0x72
function function_184e15d2(weapon) {
    if (!isdefined(weapon.customsettings)) {
        return level.smokegrenadedissipation;
    }
    var_b0b958b3 = getscriptbundle(weapon.customsettings);
    return isdefined(var_b0b958b3.smokegrenadedissipation) ? var_b0b958b3.smokegrenadedissipation : level.smokegrenadedissipation;
}

// Namespace smokegrenade/smokegrenade
// Params 5, eflags: 0x2 linked
// Checksum 0x4a6c0bbb, Offset: 0x540
// Size: 0x16c
function watchsmokegrenadedetonation(owner, statweapon, smokeweapon, duration, totaltime) {
    self endon(#"trophy_destroyed");
    if (isplayer(owner)) {
        owner stats::function_e24eec31(statweapon, #"used", 1);
    }
    waitresult = self waittill(#"explode", #"death");
    if (waitresult._notify != "explode") {
        return;
    }
    onefoot = (0, 0, 12);
    startpos = waitresult.position + onefoot;
    smokedetonate(owner, statweapon, smokeweapon, waitresult.position, function_79d42bea(smokeweapon), totaltime, duration);
    damageeffectarea(owner, startpos, smokeweapon.explosionradius, level.willypetedamageheight);
}

// Namespace smokegrenade/smokegrenade
// Params 7, eflags: 0x2 linked
// Checksum 0x6c174fb7, Offset: 0x6b8
// Size: 0x3d0
function smokedetonate(owner, statweapon, smokeweapon, position, radius, effectlifetime, smokeblockduration) {
    dir_up = (0, 0, 1);
    if (!isdefined(effectlifetime)) {
        effectlifetime = 10;
    }
    ent = spawn("script_model", position);
    if (isdefined(owner)) {
        ent setteam(owner.team);
        if (isplayer(owner)) {
            ent setowner(owner);
        }
    }
    if (ent function_c7b93adf(smokeweapon)) {
        ent smokeblocksight(radius);
    }
    ent thread spawnsmokegrenadetrigger(smokeweapon, smokeblockduration, owner);
    now = gettime();
    if (sessionmodeiscampaigngame()) {
        if (isdefined(owner)) {
            owner.smokegrenadetime = now;
            owner.smokegrenadeposition = position;
        }
    } else if (level.var_5712bc1c === 1) {
        if (isdefined(owner)) {
            if (!isdefined(owner.var_e0e2e070)) {
                owner.var_e0e2e070 = [];
            }
            var_d6b53fbd = now - 14000;
            foreach (key, var_96138b54 in owner.var_e0e2e070) {
                if (!isstruct(var_96138b54)) {
                    continue;
                }
                if (var_96138b54.var_6f327e4a < var_d6b53fbd) {
                    owner.var_e0e2e070[key] = #"stale";
                }
            }
            arrayremovevalue(owner.var_e0e2e070, #"stale");
            var_86142949 = {#var_6f327e4a:now, #position:position};
            if (!isdefined(owner.var_e0e2e070)) {
                owner.var_e0e2e070 = [];
            } else if (!isarray(owner.var_e0e2e070)) {
                owner.var_e0e2e070 = array(owner.var_e0e2e070);
            }
            owner.var_e0e2e070[owner.var_e0e2e070.size] = var_86142949;
        }
    }
    thread playsmokesound(position, smokeblockduration, statweapon.projsmokestartsound, statweapon.projsmokeendsound, statweapon.projsmokeloopsound);
    if (sessionmodeiscampaigngame() && self.var_3791d005 !== 0) {
        badplace_cylinder("", effectlifetime * 0.666, position, radius, radius, "axis");
    }
    return ent;
}

// Namespace smokegrenade/smokegrenade
// Params 4, eflags: 0x2 linked
// Checksum 0xfc8157cd, Offset: 0xa90
// Size: 0x94
function damageeffectarea(owner, position, radius, height) {
    effectarea = spawn("trigger_radius", position, 0, radius, height);
    if (isdefined(level.dogsonflashdogs)) {
        owner thread [[ level.dogsonflashdogs ]](effectarea);
    }
    effectarea delete();
}

// Namespace smokegrenade/smokegrenade
// Params 1, eflags: 0x2 linked
// Checksum 0x28b6c147, Offset: 0xb30
// Size: 0x64
function smokeblocksight(radius) {
    fxblocksight(self, radius);
    /#
        if (getdvarint(#"scr_smokegrenade_debug", 0)) {
            self thread function_f02a8a0b(radius);
        }
    #/
}

// Namespace smokegrenade/smokegrenade
// Params 1, eflags: 0x0
// Checksum 0x13112820, Offset: 0xba0
// Size: 0x68
function function_f02a8a0b(radius) {
    self endon(#"death");
    /#
        while (true) {
            sphere(self.origin, radius, (1, 0, 0), 0.25, 0, 20, 15);
            wait(0.75);
        }
    #/
}

// Namespace smokegrenade/smokegrenade
// Params 1, eflags: 0x2 linked
// Checksum 0xdbb88a6c, Offset: 0xc10
// Size: 0x62
function function_c7b93adf(weapon) {
    if (!isdefined(weapon.customsettings)) {
        return 1;
    }
    var_b0b958b3 = getscriptbundle(weapon.customsettings);
    return is_true(var_b0b958b3.var_afa9a0c4);
}

// Namespace smokegrenade/smokegrenade
// Params 1, eflags: 0x2 linked
// Checksum 0xf419c216, Offset: 0xc80
// Size: 0x54
function waitanddelete(time) {
    self ghost();
    self endon(#"death");
    wait(time);
    self delete();
}

// Namespace smokegrenade/smokegrenade
// Params 3, eflags: 0x2 linked
// Checksum 0x812da11d, Offset: 0xce0
// Size: 0x1fc
function spawnsmokegrenadetrigger(smokeweapon, duration, owner) {
    team = self.team;
    radius = function_79d42bea(smokeweapon);
    trigger = spawn("trigger_radius", self.origin, 0, radius, radius);
    trigger.owner = owner;
    trigger.smokeweapon = smokeweapon;
    self.smoketrigger = trigger;
    if (isdefined(owner.team)) {
        trigger setteamfortrigger(owner.team);
        trigger.team = owner.team;
    }
    if (!isdefined(level.smoke_grenade_triggers)) {
        level.smoke_grenade_triggers = [];
    } else if (!isarray(level.smoke_grenade_triggers)) {
        level.smoke_grenade_triggers = array(level.smoke_grenade_triggers);
    }
    level.smoke_grenade_triggers[level.smoke_grenade_triggers.size] = trigger;
    if (function_579815a1(smokeweapon)) {
        thread function_8b6ddd71(self, smokeweapon);
    }
    self waittilltimeout(duration, #"death");
    arrayremovevalue(level.smoke_grenade_triggers, trigger);
    if (isdefined(self)) {
        self thread waitanddelete(1);
    }
    if (isdefined(trigger)) {
        trigger delete();
    }
}

// Namespace smokegrenade/smokegrenade
// Params 5, eflags: 0x6 linked
// Checksum 0x99d8e7db, Offset: 0xee8
// Size: 0x366
function private function_aff603b2(attacker, victim, *weapon, attackerweapon, *meansofdeath) {
    if (!isdefined(weapon) || !isdefined(attackerweapon)) {
        return false;
    }
    smoketrigger = attackerweapon function_367ce00e();
    if (isdefined(smoketrigger)) {
        if (weapon === smoketrigger.owner) {
            if (isdefined(meansofdeath) && meansofdeath !== level.weaponsigblade) {
                if (!isdefined(smoketrigger.var_25db02aa)) {
                    smoketrigger.kills = (isdefined(smoketrigger.kills) ? smoketrigger.kills : 0) + 1;
                    var_9194a036 = battlechatter::mpdialog_value("muteSmokeSuccessLineCount", 0);
                    if (smoketrigger.kills == (isdefined(var_9194a036) ? var_9194a036 : 3)) {
                        weapon battlechatter::play_gadget_success(getweapon(#"willy_pete"), undefined, attackerweapon, undefined);
                        smoketrigger.var_25db02aa = 1;
                    }
                }
            }
            weapon stats::function_e24eec31(meansofdeath, #"hash_dd38fe3b56f0644", 1);
            weapon contracts::increment_contract(#"hash_6477d3e8a879d241");
            weapon stats::function_dad108fa(#"hash_3c5a82d06549abcc", 1);
            weapon stats::function_dad108fa(#"hash_2b2887daddeb75a7", 1);
            weaponclass = util::getweaponclass(meansofdeath);
            if (isdefined(level.var_91dfce3b)) {
                if (weaponclass === #"weapon_smg") {
                    weapon [[ level.var_91dfce3b ]]();
                }
            }
            return true;
        } else if (isplayer(smoketrigger.owner) && isalive(smoketrigger.owner) && util::function_fbce7263(smoketrigger.owner.team, attackerweapon.team)) {
            if (level.teambased) {
                scoreevents::processscoreevent(#"smoke_assist", smoketrigger.owner, undefined, getweapon(#"willy_pete"));
                if (isdefined(level.var_b7bc3c75.var_e2298731)) {
                    smoketrigger.owner [[ level.var_b7bc3c75.var_e2298731 ]]();
                }
            }
        }
    }
    return false;
}

// Namespace smokegrenade/smokegrenade
// Params 1, eflags: 0x2 linked
// Checksum 0xb3c64dd3, Offset: 0x1258
// Size: 0xbe
function function_367ce00e(var_7acab93a) {
    foreach (trigger in level.smoke_grenade_triggers) {
        if (self istouching(trigger)) {
            if (isdefined(var_7acab93a)) {
                if (var_7acab93a != trigger) {
                    return trigger;
                }
                continue;
            }
            return trigger;
        }
    }
    return undefined;
}

// Namespace smokegrenade/smokegrenade
// Params 2, eflags: 0x2 linked
// Checksum 0x1a8ea45b, Offset: 0x1320
// Size: 0xe0
function function_4cc4db89(team, var_7acab93a) {
    foreach (trigger in level.smoke_grenade_triggers) {
        if (!trigger util::isenemyteam(team) && self istouching(trigger)) {
            if (isdefined(var_7acab93a)) {
                if (var_7acab93a != trigger) {
                    return trigger;
                }
                continue;
            }
            return trigger;
        }
    }
    return undefined;
}

// Namespace smokegrenade/smokegrenade
// Params 1, eflags: 0x2 linked
// Checksum 0xbf2f7e92, Offset: 0x1408
// Size: 0x15a
function function_65fc89ee(*weapon) {
    foreach (trigger in level.smoke_grenade_triggers) {
        if (self istouching(trigger)) {
            var_125b3ffe = sqr(function_36d48dce(trigger.smokeweapon));
            headorigin = isdefined(self gettagorigin("j_head")) ? self gettagorigin("j_head") : self.origin;
            distsq = distance2dsquared(trigger.origin, headorigin);
            if (distsq < var_125b3ffe) {
                return true;
            }
        }
    }
    return false;
}

// Namespace smokegrenade/smokegrenade
// Params 1, eflags: 0x2 linked
// Checksum 0x98239116, Offset: 0x1570
// Size: 0x130
function function_50ef4b12(weapon) {
    if (getweapon(#"eq_smoke") == weapon.rootweapon) {
        return true;
    }
    if (getweapon(#"willy_pete") == weapon.rootweapon) {
        return true;
    }
    if (getweapon(#"hash_615e6c73989c85b4") == weapon.rootweapon) {
        return true;
    }
    if (getweapon(#"hash_7a88daffaea7a9cf") == weapon.rootweapon) {
        return true;
    }
    if (getweapon(#"spectre_grenade") == weapon.rootweapon) {
        return true;
    }
    if (getweapon(#"hash_34fa23e332e34886") == weapon.rootweapon) {
        return true;
    }
    return false;
}

// Namespace smokegrenade/smokegrenade
// Params 1, eflags: 0x6 linked
// Checksum 0x6fac6d3c, Offset: 0x16a8
// Size: 0x78
function private function_579815a1(weapon) {
    if (!isdefined(weapon.customsettings)) {
        return false;
    }
    var_e6fbac16 = getscriptbundle(weapon.customsettings);
    if (var_e6fbac16.var_8ceb6ac8 === 1) {
        return true;
    }
    if (var_e6fbac16.var_6942aad6 === 1) {
        return true;
    }
    return false;
}

// Namespace smokegrenade/smokegrenade
// Params 2, eflags: 0x0
// Checksum 0xf86df0cf, Offset: 0x1728
// Size: 0x162
function function_87d0a127(grenadeent, *smokeweapon) {
    if (!isdefined(smokeweapon.smoketrigger)) {
        return;
    }
    grenadeteam = smokeweapon.team;
    owner = smokeweapon.smoketrigger.owner;
    while (true) {
        waitresult = smokeweapon waittilltimeout(0.15, #"death");
        if (isdefined(owner)) {
            if (isdefined(smokeweapon.smoketrigger) && owner istouching(smokeweapon.smoketrigger) && waitresult._notify == #"timeout") {
                owner clientfield::set("inenemysmoke", 1);
            } else {
                owner clientfield::set("inenemysmoke", 0);
            }
        }
        if (!isdefined(owner) || !isdefined(smokeweapon) || waitresult._notify != "timeout") {
            break;
        }
    }
}

// Namespace smokegrenade/smokegrenade
// Params 2, eflags: 0x2 linked
// Checksum 0xf1bdb6f2, Offset: 0x1898
// Size: 0x38c
function function_8b6ddd71(grenadeent, smokeweapon) {
    if (!isdefined(grenadeent.smoketrigger)) {
        return;
    }
    grenadeteam = grenadeent.team;
    while (true) {
        waitresult = grenadeent waittilltimeout(0.15, #"death");
        foreach (player in level.players) {
            if (!isdefined(player)) {
                continue;
            }
            curval = player clientfield::get("insmoke");
            if (waitresult._notify == #"timeout" && player function_65fc89ee(smokeweapon)) {
                if (game.state == #"playing") {
                    player clientfield::set("foggerpostfx", 1);
                }
            } else {
                player clientfield::set("foggerpostfx", 0);
            }
            if (isdefined(grenadeent.smoketrigger) && player istouching(grenadeent.smoketrigger) && waitresult._notify == #"timeout") {
                if (player util::isenemyteam(grenadeteam)) {
                    player clientfield::set("insmoke", curval | 1);
                } else {
                    player clientfield::set("insmoke", curval | 2);
                }
                continue;
            }
            if (player util::isenemyteam(grenadeteam)) {
                mask = 1;
            } else {
                mask = 2;
            }
            if (curval & mask) {
                trig = undefined;
                if (isdefined(grenadeent)) {
                    trig = player function_4cc4db89(grenadeteam, grenadeent.smoketrigger);
                }
                if (!isdefined(trig)) {
                    player clientfield::set("insmoke", curval & ~mask);
                }
            }
        }
        if (!isdefined(grenadeent) || waitresult._notify != "timeout" || !isdefined(grenadeent.smoketrigger) && grenadeent.item === getweapon(#"spectre_grenade")) {
            break;
        }
    }
}

// Namespace smokegrenade/grenade_fire
// Params 1, eflags: 0x20
// Checksum 0x7d1b8e0d, Offset: 0x1c30
// Size: 0x284
function event_handler[grenade_fire] function_debb0d4e(eventstruct) {
    weapon = eventstruct.weapon;
    if (!function_50ef4b12(weapon)) {
        return;
    }
    if (weapon.rootweapon == getweapon(#"eq_smoke")) {
        weapon_smoke = getweapon(#"eq_smoke");
    } else if (weapon.rootweapon == getweapon(#"hash_34fa23e332e34886")) {
        weapon_smoke = getweapon(#"hash_34fa23e332e34886");
    } else if (weapon.rootweapon == getweapon(#"spectre_grenade")) {
        weapon_smoke = getweapon(#"spectre_grenade");
    } else {
        weapon_smoke = getweapon(#"willy_pete");
    }
    duration = function_f199623f(weapon_smoke);
    totaltime = duration + function_184e15d2(weapon_smoke);
    grenade = eventstruct.projectile;
    if (grenade util::ishacked()) {
        return;
    }
    grenade thread watchsmokegrenadedetonation(self, weapon_smoke, weapon_smoke, duration, totaltime);
    waitresult = grenade waittill(#"stationary", #"death");
    if (waitresult._notify == "stationary") {
        playfx(#"hash_4ca8a1df731cf6a1", grenade.origin, (0, 0, 1), (1, 0, 0));
    }
}

// Namespace smokegrenade/smokegrenade
// Params 5, eflags: 0x2 linked
// Checksum 0x69445872, Offset: 0x1ec0
// Size: 0x13c
function playsmokesound(position, duration, startsound, stopsound, loopsound) {
    smokesound = spawn("script_origin", (0, 0, 1));
    if (isdefined(smokesound)) {
        smokesound endon(#"death");
        smokesound.origin = position;
        if (isdefined(startsound)) {
            smokesound playsound(startsound);
        }
        if (isdefined(loopsound)) {
            smokesound playloopsound(loopsound);
        }
        if (duration > 0.5) {
            wait(duration - 0.5);
        }
        if (isdefined(stopsound)) {
            thread sound::play_in_space(stopsound, position);
        }
        smokesound stoploopsound(0.5);
        wait(0.5);
        smokesound delete();
    }
}

