// Atian COD Tools GSC CW decompiler test
#using script_19367cd29a4485db;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\scoreevents.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\perks.gsc;
#using script_2c5daa95f8fec03c;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace namespace_b61a349a;

// Namespace namespace_b61a349a/namespace_b61a349a
// Params 0, eflags: 0x5
// Checksum 0x9ec49c01, Offset: 0x108
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_775f993ac537d970", &preinit, &postinit, undefined, undefined);
}

// Namespace namespace_b61a349a/namespace_b61a349a
// Params 0, eflags: 0x6 linked
// Checksum 0xaefc58f0, Offset: 0x160
// Size: 0x3c
function private preinit() {
    /#
        level.var_6aa829ef = &function_6aa829ef;
    #/
    callback::on_connect(&on_player_connect);
}

// Namespace namespace_b61a349a/namespace_b61a349a
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x1a8
// Size: 0x4
function private postinit() {
    
}

// Namespace namespace_b61a349a/namespace_b61a349a
// Params 0, eflags: 0x2 linked
// Checksum 0x4b2be121, Offset: 0x1b8
// Size: 0x94
function on_player_connect() {
    self.var_d9fddbc5 = 0;
    self.var_b37d3db2 = 0;
    self callback::add_callback(#"weapon_fired", &on_weapon_fired);
    self callback::add_callback(#"weapon_change", &function_39ab0a6a);
    self thread function_f35fa4e7();
}

// Namespace namespace_b61a349a/namespace_b61a349a
// Params 0, eflags: 0x2 linked
// Checksum 0x6a83bede, Offset: 0x258
// Size: 0x74
function function_f35fa4e7() {
    self endon(#"disconnect");
    n_tier = self zm_stats::function_12b698fa(#"hash_265dfd25205ffba8");
    if (n_tier != 5) {
        return;
    }
    while (isdefined(self)) {
        self.var_16cd8b35 = 0;
        waitframe(1);
    }
}

// Namespace namespace_b61a349a/namespace_b61a349a
// Params 1, eflags: 0x2 linked
// Checksum 0x79d2aa09, Offset: 0x2d8
// Size: 0xf4
function function_39ab0a6a(eventstruct) {
    if (!isplayer(self)) {
        return;
    }
    if (isdefined(eventstruct.weapon)) {
        w_base = zm_weapons::get_base_weapon(eventstruct.weapon);
        weapon_class = "none";
        if (isdefined(w_base)) {
            weapon_class = level.zombie_weapons[w_base].weapon_classname;
        }
        if (!(weapon_class === "launcher" || weapon_class === "special")) {
            if (self perks::perk_hasperk(#"specialty_ammodrainsfromstockfirst")) {
                self perks::perk_unsetperk(#"specialty_ammodrainsfromstockfirst");
            }
        }
    }
}

// Namespace namespace_b61a349a/namespace_b61a349a
// Params 1, eflags: 0x2 linked
// Checksum 0xce798829, Offset: 0x3d8
// Size: 0x1c4
function on_weapon_fired(eventstruct) {
    if (!isplayer(self)) {
        return;
    }
    if (isdefined(eventstruct.weapon)) {
        w_base = zm_weapons::get_base_weapon(eventstruct.weapon);
        if (isdefined(w_base) && isdefined(level.zombie_weapons[w_base].weapon_classname)) {
            if (function_998f8321(w_base) >= 3) {
                if (level.zombie_weapons[w_base].weapon_classname == "launcher" || level.zombie_weapons[w_base].weapon_classname == "special") {
                    if (!self perks::perk_hasperk(#"specialty_ammodrainsfromstockfirst")) {
                        self.var_d9fddbc5++;
                        if (math::cointoss(25) || self.var_d9fddbc5 >= 4) {
                            self.var_b37d3db2 = 1;
                            self perks::perk_setperk(#"specialty_ammodrainsfromstockfirst");
                            self.var_d9fddbc5 = 0;
                        }
                        return;
                    }
                    var_409524fd = 75;
                    if (math::cointoss(var_409524fd)) {
                        self.var_d9fddbc5 = 0;
                        self perks::perk_unsetperk(#"specialty_ammodrainsfromstockfirst");
                    }
                }
            }
        }
    }
}

// Namespace namespace_b61a349a/namespace_b61a349a
// Params 1, eflags: 0x2 linked
// Checksum 0x941e9af0, Offset: 0x5a8
// Size: 0x31c
function function_998f8321(weapon) {
    /#
        var_df6f833b = getdvarint(#"hash_31933df32887a98b", 0);
        if (var_df6f833b > 0) {
            return var_df6f833b;
        }
    #/
    var_8c590502 = getgametypesetting(#"hash_3c2c78e639bfd3c6");
    if (isdefined(var_8c590502) && var_8c590502 > 0) {
        return var_8c590502;
    }
    w_base = zm_weapons::get_base_weapon(weapon);
    if (isdefined(level.zombie_weapons[w_base].weapon_classname)) {
        switch (level.zombie_weapons[w_base].weapon_classname) {
        case #"ar":
            return self zm_stats::function_12b698fa(#"hash_e4ec67369bdd326");
        case #"lmg":
            return self zm_stats::function_12b698fa(#"hash_5511ea176da6ac83");
        case #"pistol":
            return self zm_stats::function_12b698fa(#"hash_47a2d98887910102");
        case #"shotgun":
            return self zm_stats::function_12b698fa(#"hash_1f78483ef16f84d5");
        case #"smg":
            return self zm_stats::function_12b698fa(#"hash_2c88d3bcf790ec34");
        case #"sniper":
            return self zm_stats::function_12b698fa(#"hash_3d590f7af842ad92");
        case #"tr":
            return self zm_stats::function_12b698fa(#"hash_707a5c5c35f50dec");
        case #"melee":
            return self zm_stats::function_12b698fa(#"hash_265dfd25205ffba8");
        case #"launcher":
            return self zm_stats::function_12b698fa(#"hash_604f7493136f8a3");
        case #"special":
            return self zm_stats::function_12b698fa(#"hash_746a85760decf362");
        }
    }
    return 0;
}

// Namespace namespace_b61a349a/namespace_b61a349a
// Params 12, eflags: 0x2 linked
// Checksum 0xddc32704, Offset: 0x8d0
// Size: 0xba4
function function_b3496fde(*inflictor, attacker, damage, *flags, meansofdeath, weapon, *vpoint, *vdir, *shitloc, *psoffsettime, *boneindex, *surfacetype) {
    n_base_damage = psoffsettime;
    if (boneindex == "MOD_MELEE") {
        n_tier = shitloc zm_stats::function_12b698fa(#"hash_265dfd25205ffba8");
        /#
            var_df6f833b = getdvarint(#"hash_31933df32887a98b", 0);
            if (var_df6f833b > 0) {
                n_tier = var_df6f833b;
            }
        #/
        if (!isdefined(n_tier)) {
            return 0;
        }
        switch (n_tier) {
        case 2:
        case 3:
            n_damage = function_1fd0807c(0.1, n_base_damage);
            shitloc function_8a6ccd14(surfacetype, n_tier, n_damage);
            return n_damage;
        case 4:
            n_damage = function_1fd0807c(0.25, n_base_damage);
            shitloc function_8a6ccd14(surfacetype, n_tier, n_damage);
            return n_damage;
        case 5:
            if (isplayer(shitloc) && shitloc.var_16cd8b35 < 1) {
                var_9eaf0b7a = int(0.1 * shitloc.var_66cb03ad);
                shitloc.health += var_9eaf0b7a;
                if (shitloc.health > shitloc.var_66cb03ad) {
                    var_253772ec = var_9eaf0b7a - shitloc.health - shitloc.var_66cb03ad;
                    shitloc.health = shitloc.var_66cb03ad;
                } else {
                    var_253772ec = var_9eaf0b7a;
                }
                if (var_253772ec > 0) {
                    shitloc zm_stats::increment_challenge_stat(#"hash_7da86f9ce11e5b2f", var_253772ec);
                }
                shitloc.var_16cd8b35++;
            }
            n_damage = function_1fd0807c(0.25, n_base_damage);
            shitloc function_8a6ccd14(surfacetype, n_tier, n_damage);
            return n_damage;
        default:
            return 0;
        }
    }
    n_tier = shitloc function_998f8321(surfacetype);
    w_base = zm_weapons::get_base_weapon(surfacetype);
    if (isdefined(level.zombie_weapons[w_base]) && isdefined(n_tier)) {
        switch (level.zombie_weapons[w_base].weapon_classname) {
        case #"ar":
            switch (n_tier) {
            case 1:
            case 2:
            case 3:
                if (self function_cf4432e8(surfacetype, shitloc)) {
                    n_damage = function_1fd0807c(0.1, n_base_damage);
                    shitloc function_8a6ccd14(surfacetype, n_tier, n_damage);
                    return n_damage;
                }
                break;
            case 4:
            case 5:
                if (self function_cf4432e8(surfacetype, shitloc)) {
                    n_damage = function_1fd0807c(0.25, n_base_damage);
                    shitloc function_8a6ccd14(surfacetype, n_tier, n_damage);
                    return n_damage;
                }
                break;
            }
            break;
        case #"pistol":
            var_9b4953c = 0;
            switch (n_tier) {
            case 1:
            case 2:
            case 3:
                if (self function_1d2de48d(shitloc)) {
                    var_9b4953c = function_1fd0807c(0.1, n_base_damage);
                    shitloc function_8a6ccd14(surfacetype, n_tier, var_9b4953c);
                }
                return var_9b4953c;
            case 4:
            case 5:
                if (self function_1d2de48d(shitloc)) {
                    var_9b4953c = function_1fd0807c(0.25, n_base_damage);
                    shitloc function_8a6ccd14(surfacetype, n_tier, var_9b4953c);
                }
                return var_9b4953c;
            }
            break;
        case #"shotgun":
            var_9b4953c = 0;
            switch (n_tier) {
            case 1:
            case 2:
            case 3:
                if (self function_1d2de48d(shitloc)) {
                    var_9b4953c = function_1fd0807c(0.1, n_base_damage);
                    shitloc function_8a6ccd14(surfacetype, n_tier, var_9b4953c);
                }
                return var_9b4953c;
            case 4:
            case 5:
                if (self function_1d2de48d(shitloc)) {
                    var_9b4953c = function_1fd0807c(0.25, n_base_damage);
                    shitloc function_8a6ccd14(surfacetype, n_tier, var_9b4953c);
                }
                return var_9b4953c;
            }
            break;
        case #"smg":
            var_9b4953c = 0;
            switch (n_tier) {
            case 1:
            case 2:
            case 3:
                if (self function_1d2de48d(shitloc)) {
                    var_9b4953c = function_1fd0807c(0.1, n_base_damage);
                    shitloc function_8a6ccd14(surfacetype, n_tier, var_9b4953c);
                }
                return var_9b4953c;
            case 4:
            case 5:
                if (self function_1d2de48d(shitloc)) {
                    var_9b4953c = function_1fd0807c(0.25, n_base_damage);
                    shitloc function_8a6ccd14(surfacetype, n_tier, var_9b4953c);
                }
                return var_9b4953c;
            }
            break;
        case #"tr":
            switch (n_tier) {
            case 1:
            case 2:
            case 3:
                if (self function_cf4432e8(surfacetype, shitloc)) {
                    n_damage = function_1fd0807c(0.1, n_base_damage);
                    shitloc function_8a6ccd14(surfacetype, n_tier, n_damage);
                    return n_damage;
                }
                break;
            case 4:
            case 5:
                if (self function_cf4432e8(surfacetype, shitloc)) {
                    n_damage = function_1fd0807c(0.25, n_base_damage);
                    shitloc function_8a6ccd14(surfacetype, n_tier, n_damage);
                    return n_damage;
                }
                break;
            }
            break;
        case #"launcher":
        case #"special":
            switch (n_tier) {
            case 1:
            case 2:
            case 3:
                if (self.var_6f84b820 === #"special" || self.var_6f84b820 === #"elite") {
                    n_damage = function_1fd0807c(0.1, n_base_damage);
                    shitloc function_8a6ccd14(surfacetype, n_tier, n_damage);
                    return n_damage;
                }
                break;
            case 4:
            case 5:
                if (self.var_6f84b820 === #"special" || self.var_6f84b820 === #"elite") {
                    n_damage = function_1fd0807c(0.25, n_base_damage);
                    shitloc function_8a6ccd14(surfacetype, n_tier, n_damage);
                    return n_damage;
                }
                break;
            }
            break;
        }
    }
    return 0;
}

// Namespace namespace_b61a349a/namespace_b61a349a
// Params 2, eflags: 0x2 linked
// Checksum 0xac865eff, Offset: 0x1480
// Size: 0x1a
function function_1fd0807c(n_percent, n_base_damage) {
    return n_base_damage * n_percent;
}

// Namespace namespace_b61a349a/namespace_b61a349a
// Params 2, eflags: 0x2 linked
// Checksum 0x4454dbcb, Offset: 0x14a8
// Size: 0x96
function function_cf4432e8(weapon, attacker) {
    weaponclass = util::getweaponclass(weapon);
    weap_min_dmg_range = scoreevents::get_distance_for_weapon(weapon, weaponclass);
    disttovictim = distancesquared(self.origin, attacker.origin);
    if (disttovictim > weap_min_dmg_range) {
        return true;
    }
    return false;
}

// Namespace namespace_b61a349a/namespace_b61a349a
// Params 1, eflags: 0x2 linked
// Checksum 0x2a4c07c, Offset: 0x1548
// Size: 0x58
function function_1d2de48d(attacker) {
    var_2e4eec5f = 16384;
    disttovictim = distancesquared(self.origin, attacker.origin);
    if (disttovictim <= var_2e4eec5f) {
        return true;
    }
    return false;
}

// Namespace namespace_b61a349a/namespace_b61a349a
// Params 4, eflags: 0x2 linked
// Checksum 0x11fc8984, Offset: 0x15a8
// Size: 0x79c
function function_817f0439(damage, weapon, *vpoint, *shitloc) {
    n_base_damage = vpoint;
    n_tier = self function_998f8321(shitloc);
    if (!isdefined(n_tier)) {
        n_tier = 0;
    }
    w_base = zm_weapons::get_base_weapon(shitloc);
    if (isdefined(level.zombie_weapons[w_base].weapon_classname)) {
        switch (level.zombie_weapons[w_base].weapon_classname) {
        case #"ar":
            switch (n_tier) {
            case 2:
            case 3:
            case 4:
                n_damage = function_1fd0807c(0.1, n_base_damage);
                self function_8a6ccd14(shitloc, n_tier, n_damage);
                return n_damage;
            case 5:
                n_damage = function_1fd0807c(0.25, n_base_damage);
                self function_8a6ccd14(shitloc, n_tier, n_damage);
                return n_damage;
            }
            break;
        case #"smg":
            switch (n_tier) {
            case 2:
            case 3:
            case 4:
                n_damage = function_1fd0807c(0.1, n_base_damage);
                self function_8a6ccd14(shitloc, n_tier, n_damage);
                return n_damage;
            case 5:
                n_damage = function_1fd0807c(0.25, n_base_damage);
                self function_8a6ccd14(shitloc, n_tier, n_damage);
                return n_damage;
            }
            break;
        case #"lmg":
            switch (n_tier) {
            case 2:
            case 3:
            case 4:
                n_damage = function_1fd0807c(0.1, n_base_damage);
                self function_8a6ccd14(shitloc, n_tier, n_damage);
                return n_damage;
            case 5:
                n_damage = function_1fd0807c(0.25, n_base_damage);
                self function_8a6ccd14(shitloc, n_tier, n_damage);
                return n_damage;
            }
            break;
        case #"sniper":
            switch (n_tier) {
            case 2:
            case 3:
            case 4:
                n_damage = function_1fd0807c(0.1, n_base_damage);
                self function_8a6ccd14(shitloc, n_tier, n_damage);
                return n_damage;
            case 5:
                n_damage = function_1fd0807c(0.25, n_base_damage);
                self function_8a6ccd14(shitloc, n_tier, n_damage);
                return n_damage;
            }
            break;
        case #"shotgun":
            switch (n_tier) {
            case 2:
            case 3:
            case 4:
                n_damage = function_1fd0807c(0.1, n_base_damage);
                self function_8a6ccd14(shitloc, n_tier, n_damage);
                return n_damage;
            case 5:
                n_damage = function_1fd0807c(0.25, n_base_damage);
                self function_8a6ccd14(shitloc, n_tier, n_damage);
                return n_damage;
            }
            break;
        case #"tr":
            switch (n_tier) {
            case 2:
            case 3:
            case 4:
                n_damage = function_1fd0807c(0.1, n_base_damage);
                self function_8a6ccd14(shitloc, n_tier, n_damage);
                return n_damage;
            case 5:
                n_damage = function_1fd0807c(0.25, n_base_damage);
                self function_8a6ccd14(shitloc, n_tier, n_damage);
                return n_damage;
            }
            break;
        case #"pistol":
            switch (n_tier) {
            case 2:
            case 3:
            case 4:
                n_damage = function_1fd0807c(0.1, n_base_damage);
                self function_8a6ccd14(shitloc, n_tier, n_damage);
                return n_damage;
            case 5:
                n_damage = function_1fd0807c(0.25, n_base_damage);
                self function_8a6ccd14(shitloc, n_tier, n_damage);
                return n_damage;
            }
            break;
        }
    }
    return 0;
}

// Namespace namespace_b61a349a/namespace_b61a349a
// Params 4, eflags: 0x2 linked
// Checksum 0x28f7782a, Offset: 0x1d50
// Size: 0x12c
function function_8a6ccd14(weapon, n_tier, var_570564b8 = 0, var_497316dc = 0) {
    if (isplayer(self) && isdefined(weapon)) {
        if (!isdefined(n_tier)) {
            n_tier = function_998f8321(weapon);
        }
        if (!isdefined(n_tier)) {
            return;
        }
        var_5e90992c = {#weapon:weapon.name, #tier:n_tier, #bonus_damage:int(var_570564b8), #armor_damage:int(var_497316dc)};
        self function_678f57c8(#"hash_5384f0bdf7f1eb1c", var_5e90992c);
    }
}

/#

    // Namespace namespace_b61a349a/namespace_b61a349a
    // Params 0, eflags: 0x0
    // Checksum 0x39b280f5, Offset: 0x1e88
    // Size: 0x12c
    function function_6aa829ef() {
        level endon(#"game_ended");
        namespace_420b39d3::function_d8ef0f00(&function_6cb3521c);
        adddebugcommand("<unknown string>" + 0 + "<unknown string>");
        adddebugcommand("<unknown string>" + 1 + "<unknown string>");
        adddebugcommand("<unknown string>" + 2 + "<unknown string>");
        adddebugcommand("<unknown string>" + 3 + "<unknown string>");
        adddebugcommand("<unknown string>" + 4 + "<unknown string>");
        adddebugcommand("<unknown string>" + 5 + "<unknown string>");
    }

    // Namespace namespace_b61a349a/namespace_b61a349a
    // Params 1, eflags: 0x0
    // Checksum 0x5cab919c, Offset: 0x1fc0
    // Size: 0x118
    function function_6cb3521c(params) {
        tokens = strtok(params.value, "<unknown string>");
        if (!tokens.size || tokens[0] != "<unknown string>") {
            return;
        }
        foreach (player in getplayers()) {
            setdvar(#"hash_31933df32887a98b", int(tokens[1]));
        }
    }

#/
