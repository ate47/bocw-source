// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\mp_common\player\player_utils.gsc;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\hostmigration_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\sound_shared.gsc;
#using scripts\core_common\math_shared.gsc;

#namespace cranked;

// Namespace cranked/cranked
// Params 0, eflags: 0x2 linked
// Checksum 0x84e3d14d, Offset: 0x2f0
// Size: 0x2fc
function init() {
    callback::on_spawned(&onplayerspawned);
    player::function_cf3aa03d(&onplayerkilled);
    player::function_3c5cc656(&function_48a0864e);
    level.var_6e43020f = getgametypesetting(#"hash_128c92c1d485fef4");
    level.var_eaef5623 = getgametypesetting(#"hash_392901688b38e09");
    level.var_6e7d4cbc = getgametypesetting(#"hash_2243930edb0eb3c4");
    level.var_247906a9 = getgametypesetting(#"hash_586f77a1ef2d69c1");
    level.var_a8fa842f = getgametypesetting(#"hash_651f25fd21c3c150");
    level.var_baf51b1a = getgametypesetting(#"hash_1d8bebc7ca8fba63");
    level.var_9dc10d2f = getgametypesetting(#"hash_f36e77213cb26ae");
    level.var_9dba0d13 = getgametypesetting(#"hash_43d12ffbdffe0fc7");
    level.var_1b3b9a89 = getgametypesetting(#"hash_28c2ddff48841c48");
    clientfield::register_clientuimodel("hudItems.nakatomiDetonatorMeter", 1, 5, "int", 0);
    clientfield::register_clientuimodel("hud_items_cranked.crankedMax", 6000, 5, "int", 0);
    clientfield::register_clientuimodel("hud_items_cranked.crankedPct", 6000, 16, "float", 0);
    clientfield::register_clientuimodel("hud_items_cranked.crankedTimerReset", 6000, 1, "counter", 0);
    clientfield::register_clientuimodel("hud_items_cranked.crankedTimerResetCap", 6000, 1, "counter", 0);
    clientfield::register_clientuimodel("hud_items_cranked.crankedTier", 6000, 3, "int", 0);
    level.var_ce802423 = 1;
    if (!isdefined(level.var_224e376a)) {
        level.var_224e376a = 0.1;
    }
    level.var_3da05e50 = 1;
}

// Namespace cranked/cranked
// Params 0, eflags: 0x2 linked
// Checksum 0x74c51f9e, Offset: 0x5f8
// Size: 0x64
function onplayerspawned() {
    self function_2b750594();
    self clientfield::set_player_uimodel("hud_items_cranked.crankedTier", 0);
    self clientfield::set_player_uimodel("hud_items_cranked.crankedPct", 0);
}

// Namespace cranked/cranked
// Params 0, eflags: 0x2 linked
// Checksum 0x84fac2fb, Offset: 0x668
// Size: 0x86
function function_2b750594() {
    if (!isplayer(self)) {
        return;
    }
    self.var_78f1a155 = 0;
    self.var_313fc9f2 = 0;
    self.var_a53bf240 = 0;
    self.var_2a9b3d6d = 0;
    self.var_358eb81d = 0;
    self stoptickingsound();
    self.var_be0cf222 = 0;
    self notify(#"hash_b3f3215ffbef5f6");
}

// Namespace cranked/cranked
// Params 9, eflags: 0x2 linked
// Checksum 0x551013bb, Offset: 0x6f8
// Size: 0xac
function onplayerkilled(*einflictor, *attacker, *idamage, *smeansofdeath, *weapon, *vdir, *shitloc, *psoffsettime, *deathanimduration) {
    victim = self;
    if (isplayer(victim)) {
        if (victim.var_78f1a155 === 1) {
            victim function_2a230737();
        }
        victim thread function_2b750594();
    }
}

// Namespace cranked/cranked
// Params 4, eflags: 0x2 linked
// Checksum 0x921eed1c, Offset: 0x7b0
// Size: 0x25c
function function_48a0864e(einflictor, victim, *idamage, weapon) {
    attacker = self;
    if (isplayer(attacker) && isalive(attacker) && attacker !== idamage && attacker.team !== idamage.team) {
        iskillstreakweapon = killstreaks::is_killstreak_weapon(weapon);
        if (iskillstreakweapon && !weapon.iscarriedkillstreak) {
            return;
        }
        if (attacker !== victim) {
            var_3184d29e = victim.birthtime;
            var_80bd0586 = isdefined(attacker.spawntime) ? attacker.spawntime : 0;
            if (isdefined(var_3184d29e) && var_3184d29e < var_80bd0586) {
                return;
            }
        }
        var_1cfdf798 = attacker === idamage.lastattacker && idamage.lastdamagewasfromenemy === 1;
        if (!var_1cfdf798) {
            var_e7514ecf = idamage.attackerdamage[attacker.clientid].lastdamagetime;
            var_80bd0586 = isdefined(attacker.spawntime) ? attacker.spawntime : 0;
            if (isdefined(var_e7514ecf) && var_e7514ecf < var_80bd0586) {
                return;
            }
        }
        if (!iskillstreakweapon) {
            attacker.var_a53bf240++;
            if (attacker.var_a53bf240 >= level.var_9dc10d2f && attacker.var_2a9b3d6d !== 1) {
                attacker.var_2a9b3d6d = 1;
                attacker playlocalsound("mpl_d_hard_full_meter");
            }
        }
        attacker clientfield::increment_uimodel("hud_items_cranked.crankedTimerReset");
        attacker function_7f7ea50(level.var_eaef5623);
    }
}

// Namespace cranked/cranked
// Params 0, eflags: 0x2 linked
// Checksum 0x128dcf28, Offset: 0xa18
// Size: 0x2bc
function function_2a230737() {
    if (!isplayer(self) || self.var_78f1a155 !== 1) {
        return;
    }
    level endon(#"game_ended");
    var_7c0661e4 = gettime() - (isdefined(self.var_358eb81d) ? self.var_358eb81d : 0);
    if (var_7c0661e4 < 1000) {
        return;
    }
    self.var_358eb81d = gettime();
    damage = level.var_a8fa842f;
    radius = level.var_baf51b1a;
    fx = #"hash_5206e3009c8fa11d";
    sound = "mpl_d_hard_explo_sml";
    if (self.var_2a9b3d6d === 1) {
        damage = level.var_9dba0d13;
        radius = level.var_1b3b9a89;
        fx = #"hash_148b2600797f1690";
        sound = "mpl_d_hard_explo_lrg";
    }
    explosionorigin = isdefined(self gettagorigin("j_spineupper")) ? self gettagorigin("j_spineupper") : self.origin;
    var_7825522a = randomfloat(360);
    explosioneffect = spawnfx(fx, explosionorigin, (0, 0, 1), (cos(var_7825522a), sin(var_7825522a), 0));
    triggerfx(explosioneffect);
    thread sound::play_in_space(sound, explosionorigin);
    self thread function_98abc2e2();
    if (isdefined(self.var_313fc9f2) && self.var_313fc9f2 <= 0) {
        var_c0652821 = "MOD_DIEHARD";
    } else {
        var_c0652821 = "MOD_EXPLOSIVE";
    }
    self dodamage(self.health + 1000, explosionorigin, self, undefined, undefined, var_c0652821);
    radiusdamage(explosionorigin, radius, damage, damage, self, "MOD_EXPLOSIVE");
}

// Namespace cranked/cranked
// Params 0, eflags: 0x2 linked
// Checksum 0x4cca4f7e, Offset: 0xce0
// Size: 0xd4
function function_98abc2e2() {
    level endon(#"game_ended");
    waittillframeend();
    if (!isdefined(self.body) || isalive(self)) {
        return;
    }
    var_4c4a5215 = spawnstruct();
    var_4c4a5215.player = self;
    var_4c4a5215.var_c3317960 = 0;
    gibserverutils::function_b14ffba8(var_4c4a5215);
    gibserverutils::playergiblegsvel(var_4c4a5215);
    gibserverutils::playergibleftarmvel(var_4c4a5215);
    gibserverutils::playergibrightarmvel(var_4c4a5215);
}

// Namespace cranked/cranked
// Params 0, eflags: 0x0
// Checksum 0xaf07704b, Offset: 0xdc0
// Size: 0x64
function function_cf725f10() {
    player = self;
    if (!isplayer(player)) {
        return;
    }
    player clientfield::increment_uimodel("hud_items_cranked.crankedTimerReset");
    player function_7f7ea50(level.var_6e7d4cbc);
}

// Namespace cranked/cranked
// Params 2, eflags: 0x0
// Checksum 0x9050c808, Offset: 0xe30
// Size: 0x9c
function function_d6e487ba(objective, contested) {
    player = self;
    if (isplayer(player) && contested !== 1) {
        player clientfield::increment_uimodel("hud_items_cranked.crankedTimerResetCap");
        player function_7f7ea50(level.var_6e7d4cbc);
    }
    function_cd2a2af2(objective, contested);
}

// Namespace cranked/cranked
// Params 2, eflags: 0x0
// Checksum 0x44394cf8, Offset: 0xed8
// Size: 0x74
function function_330029b4(objective, contested) {
    player = self;
    if (isplayer(player) && level.var_247906a9 === 1) {
        player function_d95a7254();
    }
    function_cd2a2af2(objective, contested);
}

// Namespace cranked/cranked
// Params 2, eflags: 0x2 linked
// Checksum 0xc7b68094, Offset: 0xf58
// Size: 0x204
function function_cd2a2af2(objective, contested = 0) {
    var_464f0169 = isdefined(objective.var_edbf7cb7) ? objective.var_edbf7cb7 : 0;
    objective.var_edbf7cb7 = contested;
    if (isdefined(objective.users)) {
        foreach (user in objective.users) {
            foreach (struct in user.touching.players) {
                player = struct.player;
                if (level.var_247906a9 === 1) {
                    if (contested === 1) {
                        player function_d95a7254();
                    } else {
                        player function_50fdfcf7();
                    }
                }
                if (var_464f0169 && !contested) {
                    player clientfield::increment_uimodel("hud_items_cranked.crankedTimerResetCap");
                    player function_7f7ea50(level.var_6e7d4cbc);
                }
            }
        }
    }
}

// Namespace cranked/cranked
// Params 1, eflags: 0x2 linked
// Checksum 0x6e7fb69e, Offset: 0x1168
// Size: 0x8c
function function_7f7ea50(timetoadd = 0) {
    if (!isplayer(self)) {
        return;
    }
    if (!isdefined(self.var_313fc9f2)) {
        self.var_313fc9f2 = 0;
    }
    self.var_313fc9f2 = math::clamp(self.var_313fc9f2 + timetoadd, 0, level.var_6e43020f);
    self function_fe200fab();
}

// Namespace cranked/cranked
// Params 0, eflags: 0x2 linked
// Checksum 0x95030bc6, Offset: 0x1200
// Size: 0x124
function function_fe200fab() {
    if (!isplayer(self)) {
        return;
    }
    if (!isdefined(self.var_a53bf240) || self.var_a53bf240 < 1) {
        self.var_a53bf240 = 1;
    }
    self clientfield::set_player_uimodel("hudItems.nakatomiDetonatorMeter", self.var_a53bf240);
    self function_1c4fb667();
    if (self.var_d16fbc3e !== 1 || self.var_313fc9f2 >= level.var_6e43020f) {
        self thread function_b50524c8();
    }
    if (self.var_78f1a155 !== 1) {
        self thread function_690ccad8();
        self.var_78f1a155 = 1;
        self.var_be0cf222 = 1;
        self playlocalsound("mpl_d_hard_activation");
    }
}

// Namespace cranked/cranked
// Params 0, eflags: 0x2 linked
// Checksum 0xd42590ef, Offset: 0x1330
// Size: 0x188
function function_1c4fb667() {
    if (!isalive(self)) {
        return;
    }
    tier = self.var_a53bf240 <= 5 ? self.var_a53bf240 : 5;
    self clientfield::set_player_uimodel("hud_items_cranked.crankedTier", tier);
    var_43df0177 = #"hash_50731bef82e61c83" + (isdefined(self.var_a53bf240) ? self.var_a53bf240 : 1) + "_mp";
    if (!self function_6c32d092(var_43df0177)) {
        self function_b5feff95(var_43df0177);
        perks = self getloadoutperks(self.class_num);
        foreach (perk in perks) {
            self setperk(perk);
        }
    }
}

// Namespace cranked/cranked
// Params 0, eflags: 0x2 linked
// Checksum 0x71a5138f, Offset: 0x14c0
// Size: 0xc4
function function_498e0b1d() {
    if (!isplayer(self)) {
        return;
    }
    self clientfield::set_player_uimodel("hud_items_cranked.crankedMax", 30);
    if (isdefined(self.var_313fc9f2) && self.var_313fc9f2 > 0) {
        self clientfield::set_player_uimodel("hud_items_cranked.crankedPct", min(1, self.var_313fc9f2 / 30));
        return;
    }
    self clientfield::set_player_uimodel("hud_items_cranked.crankedPct", 0);
}

// Namespace cranked/cranked
// Params 0, eflags: 0x2 linked
// Checksum 0x5835cd4d, Offset: 0x1590
// Size: 0x19c
function function_690ccad8() {
    self notify("5fadd76874f9725c");
    self endon("5fadd76874f9725c");
    level endon(#"game_ended");
    self endon(#"death", #"hash_b3f3215ffbef5f6");
    self function_498e0b1d();
    var_a073e972 = 0.05;
    while (isalive(self) && self.var_313fc9f2 > 0) {
        wait(var_a073e972);
        hostmigration::waittillhostmigrationdone();
        if (isalive(self)) {
            self function_498e0b1d();
            if (self.var_86596c20 === 1) {
                self waittill(#"hash_5b9b8c65f4533a35");
            }
            if (isdefined(self.usingremote)) {
                continue;
            }
            self.var_313fc9f2 -= var_a073e972;
        }
    }
    if (!isalive(self)) {
        return;
    }
    self clientfield::set_player_uimodel("hud_items_cranked.crankedPct", 0);
    self thread function_2a230737();
}

// Namespace cranked/cranked
// Params 0, eflags: 0x2 linked
// Checksum 0xaa3943a2, Offset: 0x1738
// Size: 0x26
function function_50fdfcf7() {
    self.var_86596c20 = 1;
    self notify(#"hash_15a66b825f924e82");
}

// Namespace cranked/cranked
// Params 0, eflags: 0x2 linked
// Checksum 0x828e1027, Offset: 0x1768
// Size: 0x1e
function function_d95a7254() {
    self.var_86596c20 = 0;
    self notify(#"hash_5b9b8c65f4533a35");
}

// Namespace cranked/cranked
// Params 0, eflags: 0x6 linked
// Checksum 0x240998b4, Offset: 0x1790
// Size: 0x340
function private function_b50524c8() {
    if (!isdefined(self)) {
        return;
    }
    self notify("5fffdd27eb443c54");
    self endon("5fffdd27eb443c54");
    self endon(#"death", #"hash_b3f3215ffbef5f6", #"hash_30f67e5b667473be");
    level endon(#"game_ended");
    var_b2022825 = 0;
    var_e1b74407 = 0;
    var_5476874d = 0;
    while (isdefined(self)) {
        if (self.var_2a9b3d6d === 1) {
            self function_67f17457("mpl_d_hard_p_timer_a_npc", self.team);
        }
        self.var_d16fbc3e = 1;
        var_b444201d = isdefined(self.var_313fc9f2) && self.var_313fc9f2 <= 10.1;
        var_b2022825 = isdefined(self.var_313fc9f2) && self.var_313fc9f2 <= 5.1;
        if (var_b444201d) {
            var_df4e70cd = "mpl_d_hard_p_timer_b_plr";
        } else {
            var_df4e70cd = "mpl_d_hard_p_timer_a_plr";
        }
        if (var_b2022825 && !var_5476874d) {
            n_count = int(self.var_313fc9f2);
            if (self.var_313fc9f2 - n_count >= 0.9) {
                n_count++;
            }
            var_df4e70cd = "mpl_d_hard_p_timer_5seconds_" + n_count;
            var_5476874d = 1;
        } else {
            var_5476874d = 0;
        }
        self playlocalsound(var_df4e70cd);
        if (var_b2022825) {
            waittime = 0.5;
            var_e1b74407 = 1;
        } else if (isdefined(self.var_313fc9f2) && var_e1b74407) {
            waittime = self.var_313fc9f2 - int(self.var_313fc9f2);
            if (waittime <= 0) {
                waittime = 1;
            }
            var_e1b74407 = 0;
        } else {
            waittime = 1;
        }
        wait(waittime);
        if (self.var_86596c20 === 1 || isdefined(self.usingremote)) {
            while (self.var_86596c20 === 1 || isdefined(self.usingremote)) {
                if (self.var_86596c20 === 1) {
                    self waittill(#"hash_5b9b8c65f4533a35");
                    continue;
                }
                wait(0.1);
            }
            waittime = self.var_313fc9f2 - int(self.var_313fc9f2);
            if (waittime > 0) {
                wait(waittime);
            }
        }
        hostmigration::waittillhostmigrationdone();
    }
}

// Namespace cranked/cranked
// Params 0, eflags: 0x6 linked
// Checksum 0x55f10b75, Offset: 0x1ad8
// Size: 0x2e
function private stoptickingsound() {
    if (!isdefined(self)) {
        return;
    }
    self.var_d16fbc3e = 0;
    self notify(#"hash_30f67e5b667473be");
}

