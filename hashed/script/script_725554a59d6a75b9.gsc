// Atian COD Tools GSC CW decompiler test
#using script_396f7d71538c9677;
#using scripts\core_common\battlechatter.gsc;
#using scripts\weapons\weapon_utils.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace battlechatter;

// Namespace battlechatter/namespace_ad2a73d6
// Params 1, eflags: 0x2 linked
// Checksum 0x3933f6a3, Offset: 0x1a8
// Size: 0xd4
function function_30146e82(player) {
    if (player hasperk(#"specialty_quieter")) {
        return;
    }
    playerbundle = function_58c93260(player);
    if (!isdefined(playerbundle)) {
        return;
    }
    voiceprefix = playerbundle.voiceprefix;
    dialogkey = playerbundle.var_b12a1e12;
    if (!isdefined(voiceprefix) || !isdefined(dialogkey)) {
        return;
    }
    dialogalias = voiceprefix + dialogkey;
    self.var_6765d33e = 1;
    self thread function_a48c33ff(dialogalias, 18);
}

// Namespace battlechatter/namespace_ad2a73d6
// Params 2, eflags: 0x2 linked
// Checksum 0x85663264, Offset: 0x288
// Size: 0x38e
function pain_vox(meansofdeath, weapon) {
    if (self.var_f16a71ae === 1) {
        return;
    }
    if (meansofdeath == "MOD_DEATH_CIRCLE" || meansofdeath == "MOD_BLED_OUT") {
        return;
    }
    playerbundle = function_58c93260(self, meansofdeath);
    if (!isdefined(playerbundle)) {
        return;
    }
    voiceprefix = playerbundle.voiceprefix;
    if (!isdefined(voiceprefix)) {
        return;
    }
    if (!dialog_chance("smallPainChance")) {
        return;
    }
    if (meansofdeath == "MOD_DROWN") {
        var_1f2bdb96 = playerbundle.exertpaindrowning;
        self.voxdrowning = 1;
    } else if (meansofdeath == "MOD_DOT" || meansofdeath == "MOD_DOT_SELF") {
        if (!isdefined(self.var_dbffaa32)) {
            return;
        }
        if (isdefined(weapon)) {
            if (weapon.doesfiredamage) {
                var_1f2bdb96 = playerbundle.var_c3b67de0;
            }
        } else {
            var_1f2bdb96 = playerbundle.exertpaindamagetick;
        }
    } else if (meansofdeath == "MOD_FALLING") {
        if (self hasperk(#"specialty_quieter")) {
            return;
        }
        var_1f2bdb96 = playerbundle.exertpainfalling;
    } else if (meansofdeath == "MOD_BURNED") {
        var_1f2bdb96 = playerbundle.var_c3b67de0;
    } else if (meansofdeath == "MOD_ELECTROCUTED") {
        var_1f2bdb96 = playerbundle.var_68bb30c1;
    } else if (self isplayerunderwater()) {
        var_1f2bdb96 = playerbundle.exertpainunderwater;
    } else if (weapons::ismeleemod(meansofdeath)) {
        var_1f2bdb96 = playerbundle.var_b801796c;
    } else if (weapons::isexplosivedamage(meansofdeath)) {
        if (weapon.name === #"hash_5453c9b880261bcb") {
            var_1f2bdb96 = playerbundle.var_af97fe9b;
        } else if (weapon.name === #"eq_slow_grenade") {
            var_1f2bdb96 = playerbundle.var_ed50283e;
        }
    } else if (weapons::isbulletdamage(meansofdeath)) {
        var_1f2bdb96 = playerbundle.var_a9b4dabb;
    } else {
        var_1f2bdb96 = playerbundle.exertpain;
    }
    if (!isdefined(var_1f2bdb96)) {
        return;
    }
    exertbuffer = mpdialog_value("playerExertBuffer", 0);
    if (isdefined(self.var_1ba38d8b) && gettime() - self.var_1ba38d8b < int(exertbuffer * 1000)) {
        return;
    }
    dialogkey = voiceprefix + var_1f2bdb96;
    self thread function_a48c33ff(dialogkey, 30, exertbuffer);
    self.var_6765d33e = 1;
    self.var_1ba38d8b = gettime();
}

// Namespace battlechatter/namespace_ad2a73d6
// Params 0, eflags: 0x2 linked
// Checksum 0x88b9621, Offset: 0x620
// Size: 0x9c
function function_78c16252() {
    playerbundle = function_58c93260(self);
    if (!isdefined(playerbundle)) {
        return;
    }
    voiceprefix = playerbundle.voiceprefix;
    if (!isdefined(voiceprefix)) {
        return;
    }
    var_1f2bdb96 = playerbundle.exertfullyhealedbreath;
    if (isdefined(var_1f2bdb96)) {
        dialogkey = voiceprefix + var_1f2bdb96;
        self thread function_a48c33ff(dialogkey, 16);
    }
}

// Namespace battlechatter/namespace_ad2a73d6
// Params 4, eflags: 0x2 linked
// Checksum 0x45f62e7d, Offset: 0x6c8
// Size: 0x19c
function play_death_vox(body, *attacker, weapon, meansofdeath) {
    playerbundle = function_58c93260(self, meansofdeath);
    if (!isdefined(playerbundle)) {
        return;
    }
    voiceprefix = playerbundle.voiceprefix;
    if (!isdefined(voiceprefix)) {
        return;
    }
    deathalias = self get_death_vox(weapon, playerbundle, meansofdeath);
    if (self function_8b1a219a()) {
        if (isdefined(deathalias)) {
            var_27e6026e = function_5d15920e(deathalias, playerbundle);
            entitynumber = self getentitynumber();
            attacker function_661a6cc1(var_27e6026e, entitynumber);
        }
        return;
    }
    if (isdefined(deathalias)) {
        if (attacker hasdobj() && attacker haspart("J_Head")) {
            attacker playsoundontag(voiceprefix + deathalias, "J_Head");
            return;
        }
        attacker playsoundontag(voiceprefix + deathalias, "tag_origin");
    }
}

// Namespace battlechatter/namespace_ad2a73d6
// Params 3, eflags: 0x2 linked
// Checksum 0x84cd6719, Offset: 0x870
// Size: 0x3c0
function get_death_vox(weapon, playerbundle, meansofdeath) {
    if (self isplayerunderwater()) {
        var_1f2bdb96 = playerbundle.exertdeathdrowned;
        return var_1f2bdb96;
    }
    if (self weapons::isexplosivedamage(meansofdeath)) {
        var_1f2bdb96 = playerbundle.var_44d86dec;
    }
    if (isdefined(meansofdeath)) {
        switch (meansofdeath) {
        case #"mod_rifle_bullet":
        case #"mod_pistol_bullet":
            var_1f2bdb96 = playerbundle.exertdeath;
            break;
        case #"mod_burned":
            var_1f2bdb96 = playerbundle.exertdeathburned;
            break;
        case #"mod_melee_weapon_butt":
            var_1f2bdb96 = playerbundle.var_53f25688;
            break;
        case #"mod_head_shot":
            var_1f2bdb96 = playerbundle.var_207908de;
            break;
        case #"mod_trigger_hurt":
            if (self getvelocity()[2] < -100) {
                var_1f2bdb96 = playerbundle.var_1dfcabbd;
            } else {
                var_1f2bdb96 = playerbundle.exertdeath;
            }
            break;
        case #"mod_falling":
            var_1f2bdb96 = playerbundle.var_1dfcabbd;
            break;
        case #"mod_drown":
            var_1f2bdb96 = playerbundle.exertdeathdrowned;
            break;
        case #"mod_gas":
            var_1f2bdb96 = playerbundle.var_7a45f37b;
            break;
        case #"mod_dot":
            if (weapon == getweapon(#"gadget_radiation_field")) {
                if (is_true(self.suicide)) {
                    var_1f2bdb96 = playerbundle.var_48305ed9;
                } else {
                    var_1f2bdb96 = playerbundle.var_f8b4bcc1;
                }
            } else if (weapon == getweapon(#"tear_gas")) {
                var_1f2bdb96 = playerbundle.var_7a45f37b;
            }
            if (weapon.doesfiredamage) {
                var_1f2bdb96 = playerbundle.exertdeathburned;
            }
            break;
        case #"mod_crush":
            stance = self getstance();
            if (stance === "prone") {
                var_1f2bdb96 = playerbundle.var_61f04861;
            } else {
                var_1f2bdb96 = playerbundle.var_35f92256;
            }
            break;
        }
    }
    if (!isdefined(var_1f2bdb96) && isdefined(weapon) && meansofdeath !== "MOD_MELEE_WEAPON_BUTT") {
        switch (weapon.rootweapon.name) {
        case #"knife_loadout":
        case #"hatchet":
            var_1f2bdb96 = playerbundle.exertdeathstabbed;
            break;
        case #"melee_slaybell_t8":
            var_1f2bdb96 = playerbundle.var_53f25688;
            break;
        case #"shock_rifle":
            var_1f2bdb96 = playerbundle.exertdeathelectrocuted;
            break;
        }
    }
    if (!isdefined(var_1f2bdb96)) {
        return;
    }
    return var_1f2bdb96;
}

// Namespace battlechatter/namespace_ad2a73d6
// Params 0, eflags: 0x2 linked
// Checksum 0x27c2978c, Offset: 0xc38
// Size: 0xb4
function function_90cedf5b() {
    playerbundle = function_58c93260(self);
    if (!isdefined(playerbundle)) {
        return;
    }
    voiceprefix = playerbundle.voiceprefix;
    if (!isdefined(voiceprefix) || !isdefined(playerbundle.var_1ca33ad4)) {
        return;
    }
    dialogalias = voiceprefix + playerbundle.var_1ca33ad4;
    self thread function_a48c33ff(dialogalias, 22, mpdialog_value("playerExertBuffer", 0));
}

// Namespace battlechatter/namespace_ad2a73d6
// Params 1, eflags: 0x2 linked
// Checksum 0x4323e74, Offset: 0xcf8
// Size: 0x7c
function function_624f04c6(playerbundle) {
    if (!isdefined(playerbundle.var_c1674108)) {
        return;
    }
    dialogalias = playerbundle.voiceprefix + playerbundle.var_c1674108;
    self.var_6765d33e = 1;
    self thread function_a48c33ff(dialogalias, 22, mpdialog_value("playerExertBuffer", 0));
}

// Namespace battlechatter/namespace_ad2a73d6
// Params 2, eflags: 0x2 linked
// Checksum 0x2d282066, Offset: 0xd80
// Size: 0x154
function function_e9f06034(player, playbreath) {
    if (player hasperk(#"specialty_quieter")) {
        return;
    }
    playerbundle = function_58c93260(self);
    if (!isdefined(playerbundle)) {
        return;
    }
    voiceprefix = playerbundle.voiceprefix;
    if (!isdefined(voiceprefix)) {
        return;
    }
    if (playbreath && isdefined(playerbundle.exertemergegasp)) {
        dialogalias = voiceprefix + playerbundle.exertemergegasp;
        self thread function_a48c33ff(dialogalias, 22, mpdialog_value("playerExertBuffer", 0));
        return;
    }
    if (!playbreath && isdefined(playerbundle.exertemergebreath)) {
        dialogalias = voiceprefix + playerbundle.exertemergebreath;
        self thread function_a48c33ff(dialogalias, 22, mpdialog_value("playerExertBuffer", 0));
    }
}

