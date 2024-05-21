// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\player\player_damage.gsc;
#using scripts\mp_common\gametypes\globallogic_ui.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\status_effects\status_effect_util.gsc;

#namespace player;

// Namespace player/player_callbacks
// Params 8, eflags: 0x2 linked
// Checksum 0xc8ad0438, Offset: 0xc8
// Size: 0xc4
function callback_playermelee(eattacker, *idamage, weapon, vorigin, vdir, boneindex, shieldhit, frombehind) {
    hit = 1;
    if (level.teambased && !self util::isenemyteam(idamage.team)) {
        if (level.friendlyfire == 0) {
            hit = 0;
        }
    }
    self finishmeleehit(idamage, weapon, vorigin, vdir, boneindex, shieldhit, hit, frombehind);
}

// Namespace player/player_callbacks
// Params 5, eflags: 0x2 linked
// Checksum 0x3ff1e3b3, Offset: 0x198
// Size: 0x174
function function_74b6d714(attacker, effectname, var_894859a2, durationoverride, weapon) {
    var_20df3f41 = function_1115bceb(effectname);
    if (isdefined(durationoverride) && durationoverride > 0) {
        duration = durationoverride;
    } else {
        duration = undefined;
    }
    attackerishittingteammate = isplayer(attacker) && self util::isenemyplayer(attacker) == 0 && self != attacker;
    attackerishittingself = isplayer(attacker) && self == attacker;
    if (attackerishittingself && weapon.var_50d2316b) {
        return;
    }
    if (attackerishittingteammate && !function_1727a023(0, attacker)) {
        return;
    }
    if (is_true(self.var_9a9c6a96)) {
        return;
    }
    self status_effect::status_effect_apply(var_20df3f41, weapon, attacker, undefined, duration, var_894859a2);
}

// Namespace player/player_callbacks
// Params 1, eflags: 0x2 linked
// Checksum 0xa99b538b, Offset: 0x318
// Size: 0x84
function callback_playershielddamageblocked(damage) {
    previous_shield_damage = self.shielddamageblocked;
    self.shielddamageblocked += damage;
    if (self.shielddamageblocked % 200 < previous_shield_damage % 200) {
        score_event = "shield_blocked_damage";
        scoreevents::processscoreevent(score_event, self, undefined, self.currentweapon);
    }
}

// Namespace player/player_callbacks
// Params 0, eflags: 0x2 linked
// Checksum 0xe08c4367, Offset: 0x3a8
// Size: 0xd0
function callback_playermigrated() {
    println("<unknown string>" + self.name + "<unknown string>" + gettime());
    if (isdefined(self.connected) && self.connected) {
        self globallogic_ui::updateobjectivetext();
    }
    level.hostmigrationreturnedplayercount++;
    if (level.hostmigrationreturnedplayercount >= level.players.size * 2 / 3) {
        println("<unknown string>");
        level notify(#"hostmigration_enoughplayers");
    }
}

// Namespace player/player_callbacks
// Params 10, eflags: 0x2 linked
// Checksum 0x751414be, Offset: 0x480
// Size: 0x8c
function callback_playerlaststand(einflictor, eattacker, idamage, smeansofdeath, weapon, var_fd90b0bb, vdir, shitloc, psoffsettime, deathanimduration) {
    if (isdefined(level.var_97c6ee7c)) {
        [[ level.var_97c6ee7c ]](einflictor, eattacker, idamage, smeansofdeath, weapon, var_fd90b0bb, vdir, shitloc, psoffsettime, deathanimduration);
    }
}

