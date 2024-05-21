// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\cp_common\util.gsc;

#namespace friendlyfire;

// Namespace friendlyfire/friendlyfire
// Params 0, eflags: 0x5
// Checksum 0x1f8b02d5, Offset: 0x1a8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"friendlyfire", &preinit, undefined, undefined, undefined);
}

// Namespace friendlyfire/friendlyfire
// Params 0, eflags: 0x6 linked
// Checksum 0xd6da836, Offset: 0x1f0
// Size: 0x124
function private preinit() {
    level.var_911cdf6e[#"hash_59886fac445f4c71"] = -5;
    level.var_911cdf6e[#"hash_2cc746fbd4f2a46f"] = 1000;
    level.var_911cdf6e[#"hash_15f7f611338f7f22"] = 250;
    level.var_911cdf6e[#"friend_kill_points"] = -5;
    level.var_911cdf6e[#"hash_308b6e99638b7c04"] = -5;
    level.var_911cdf6e[#"hash_69a22a048631e673"] = 0.75;
    level.var_edbfa7b = 0.5;
    if (sessionmodeiscampaigngame() && level.gametype !== "coop") {
        level.friendlyfiredisabled = 0;
    }
    if (!isdefined(level.friendlyfiredisabled)) {
        level.friendlyfiredisabled = 0;
    }
    callback::on_connect(&init_player);
}

// Namespace friendlyfire/friendlyfire
// Params 0, eflags: 0x2 linked
// Checksum 0x8b204d33, Offset: 0x320
// Size: 0x5c
function init_player() {
    assert(isdefined(self), "<unknown string>");
    self.participation = 0;
    /#
        self thread debug_friendlyfire();
    #/
    self thread participation_point_flattenovertime();
}

// Namespace friendlyfire/friendlyfire
// Params 1, eflags: 0x2 linked
// Checksum 0x345d9b9b, Offset: 0x388
// Size: 0xa4
function function_b943ac72(msg) {
    /#
        if (getdvarstring(#"debug_friendlyfire") == "<unknown string>") {
            iprintlnbold(msg);
        }
        if (getdvarstring(#"hash_2d7cfd6663c775a7") == "<unknown string>") {
            println("<unknown string>" + msg);
        }
    #/
}

/#

    // Namespace friendlyfire/friendlyfire
    // Params 0, eflags: 0x4
    // Checksum 0x23f0c0de, Offset: 0x438
    // Size: 0xebc
    function private function_25d6cf14() {
        if (!isdefined(self.var_d5b6872a)) {
            self.var_d5b6872a = spawnstruct();
            self.var_d5b6872a.var_987926ba = level.var_911cdf6e[#"hash_2cc746fbd4f2a46f"] - level.var_911cdf6e[#"hash_59886fac445f4c71"];
            self.var_d5b6872a.var_db612029 = 520;
            self.var_d5b6872a.var_40b5d571 = 620;
            self.var_d5b6872a.ypos = 130;
            self.var_d5b6872a.var_fc4521dc = self.var_d5b6872a.var_40b5d571 - self.var_d5b6872a.var_db612029;
        }
        if (!isdefined(self.var_d5b6872a.friendly_fire)) {
            self.var_d5b6872a.friendly_fire = newdebughudelem();
            self.var_d5b6872a.friendly_fire.fontscale = 3;
            self.var_d5b6872a.friendly_fire.alignx = "<unknown string>";
            self.var_d5b6872a.friendly_fire.aligny = "<unknown string>";
            self.var_d5b6872a.friendly_fire.x = self.var_d5b6872a.var_40b5d571 - self.var_d5b6872a.var_fc4521dc * level.var_911cdf6e[#"hash_2cc746fbd4f2a46f"] / self.var_d5b6872a.var_987926ba - log(self.participation) * self.var_d5b6872a.friendly_fire.fontscale;
            self.var_d5b6872a.friendly_fire.y = 100;
            self.var_d5b6872a.friendly_fire.alpha = 1;
        }
        if (!isdefined(self.var_d5b6872a.var_9a2c2205)) {
            self.var_d5b6872a.var_9a2c2205 = newdebughudelem();
            self.var_d5b6872a.var_9a2c2205.fontscale = 1.5;
            self.var_d5b6872a.var_9a2c2205.alignx = "<unknown string>";
            self.var_d5b6872a.var_9a2c2205.aligny = "<unknown string>";
            self.var_d5b6872a.var_9a2c2205.x = self.var_d5b6872a.var_db612029 - (ceil(max(log(abs(level.var_911cdf6e[#"hash_59886fac445f4c71"])) / log(10), 0)) - 2 + (self.participation < 0)) * self.var_d5b6872a.friendly_fire.fontscale;
            self.var_d5b6872a.var_9a2c2205.y = self.var_d5b6872a.ypos;
            self.var_d5b6872a.var_9a2c2205.alpha = 1;
            self.var_d5b6872a.var_9a2c2205 setvalue(level.var_911cdf6e[#"hash_59886fac445f4c71"]);
        }
        if (!isdefined(self.var_d5b6872a.var_67b2f7ad)) {
            self.var_d5b6872a.var_67b2f7ad = newdebughudelem();
            self.var_d5b6872a.var_67b2f7ad.fontscale = 1.5;
            self.var_d5b6872a.var_67b2f7ad.alignx = "<unknown string>";
            self.var_d5b6872a.var_67b2f7ad.aligny = "<unknown string>";
            self.var_d5b6872a.var_67b2f7ad.x = self.var_d5b6872a.var_40b5d571 + 2 * (ceil(max(log(abs(level.var_911cdf6e[#"hash_2cc746fbd4f2a46f"])) / log(10), 0)) + 2.5 + (self.participation < 0)) * self.var_d5b6872a.friendly_fire.fontscale;
            self.var_d5b6872a.var_67b2f7ad.y = self.var_d5b6872a.ypos;
            self.var_d5b6872a.var_67b2f7ad.alpha = 1;
            self.var_d5b6872a.var_67b2f7ad setvalue(level.var_911cdf6e[#"hash_2cc746fbd4f2a46f"]);
        }
        if (!isdefined(self.var_d5b6872a.var_ce0ada2c)) {
            self.var_d5b6872a.var_ce0ada2c = newdebughudelem(self);
            self.var_d5b6872a.var_ce0ada2c.alignx = "<unknown string>";
            self.var_d5b6872a.var_ce0ada2c.aligny = "<unknown string>";
            self.var_d5b6872a.var_ce0ada2c.x = self.var_d5b6872a.var_40b5d571;
            self.var_d5b6872a.var_ce0ada2c.y = self.var_d5b6872a.ypos;
            self.var_d5b6872a.var_ce0ada2c.sort = 1;
            self.var_d5b6872a.var_ce0ada2c.alpha = 1;
            self.var_d5b6872a.var_ce0ada2c.foreground = 1;
            self.var_d5b6872a.var_ce0ada2c.color = (0.4, 0.4, 0.4);
            self.var_d5b6872a.var_ce0ada2c setshader(#"white", self.var_d5b6872a.var_fc4521dc, 9);
        }
        if (!isdefined(self.var_d5b6872a.debug_health_bar)) {
            self.var_d5b6872a.debug_health_bar = newdebughudelem(self);
            self.var_d5b6872a.debug_health_bar.alignx = "<unknown string>";
            self.var_d5b6872a.debug_health_bar.aligny = "<unknown string>";
            self.var_d5b6872a.debug_health_bar.x = 620;
            self.var_d5b6872a.debug_health_bar.y = self.var_d5b6872a.ypos;
            self.var_d5b6872a.debug_health_bar.sort = 4;
            self.var_d5b6872a.debug_health_bar.alpha = 1;
            self.var_d5b6872a.debug_health_bar.foreground = 1;
            self.var_d5b6872a.debug_health_bar.color = (0, 0, 0.9);
            self.var_d5b6872a.debug_health_bar setshader(#"white", 4, 15);
        }
        if (!isdefined(self.var_d5b6872a.var_704a4d3b)) {
            self.var_d5b6872a.var_704a4d3b = newdebughudelem(self);
            self.var_d5b6872a.var_704a4d3b.alignx = "<unknown string>";
            self.var_d5b6872a.var_704a4d3b.aligny = "<unknown string>";
            self.var_d5b6872a.var_704a4d3b.x = self.var_d5b6872a.var_db612029;
            self.var_d5b6872a.var_704a4d3b.y = self.var_d5b6872a.ypos;
            self.var_d5b6872a.var_704a4d3b.sort = 2;
            self.var_d5b6872a.var_704a4d3b.alpha = 1;
            self.var_d5b6872a.var_704a4d3b.foreground = 1;
            self.var_d5b6872a.var_704a4d3b setshader(#"black", 4, 21);
        }
        if (!isdefined(self.var_d5b6872a.var_203309fa)) {
            self.var_d5b6872a.var_203309fa = newdebughudelem(self);
            self.var_d5b6872a.var_203309fa.alignx = "<unknown string>";
            self.var_d5b6872a.var_203309fa.aligny = "<unknown string>";
            self.var_d5b6872a.var_203309fa.x = self.var_d5b6872a.var_40b5d571;
            self.var_d5b6872a.var_203309fa.y = self.var_d5b6872a.ypos;
            self.var_d5b6872a.var_203309fa.sort = 2;
            self.var_d5b6872a.var_203309fa.alpha = 1;
            self.var_d5b6872a.var_203309fa.foreground = 1;
            self.var_d5b6872a.var_203309fa setshader(#"black", 4, 21);
        }
        if (!isdefined(self.var_d5b6872a.var_c16c1379)) {
            self.var_d5b6872a.var_c16c1379 = newdebughudelem(self);
            self.var_d5b6872a.var_c16c1379.alignx = "<unknown string>";
            self.var_d5b6872a.var_c16c1379.aligny = "<unknown string>";
            self.var_d5b6872a.var_c16c1379.x = self.var_d5b6872a.var_db612029 + level.var_911cdf6e[#"hash_59886fac445f4c71"] * -1 / self.var_d5b6872a.var_987926ba * self.var_d5b6872a.var_fc4521dc;
            self.var_d5b6872a.var_c16c1379.y = self.var_d5b6872a.ypos + 9;
            self.var_d5b6872a.var_c16c1379.sort = 2;
            self.var_d5b6872a.var_c16c1379.alpha = 1;
            self.var_d5b6872a.var_c16c1379.foreground = 1;
            self.var_d5b6872a.var_c16c1379 setshader(#"black", 4, 4);
        }
        if (!isdefined(self.var_d5b6872a.var_24736d8c)) {
            self.var_d5b6872a.var_24736d8c = newdebughudelem(self);
            self.var_d5b6872a.var_24736d8c.alignx = "<unknown string>";
            self.var_d5b6872a.var_24736d8c.aligny = "<unknown string>";
            self.var_d5b6872a.var_24736d8c.x = self.var_d5b6872a.var_db612029 + level.var_911cdf6e[#"hash_59886fac445f4c71"] * -1 / self.var_d5b6872a.var_987926ba * self.var_d5b6872a.var_fc4521dc;
            self.var_d5b6872a.var_24736d8c.y = self.var_d5b6872a.ypos - 9;
            self.var_d5b6872a.var_24736d8c.sort = 2;
            self.var_d5b6872a.var_24736d8c.alpha = 1;
            self.var_d5b6872a.var_24736d8c.foreground = 1;
            self.var_d5b6872a.var_24736d8c setshader(#"black", 4, 4);
        }
    }

    // Namespace friendlyfire/friendlyfire
    // Params 0, eflags: 0x0
    // Checksum 0x9aca0ae6, Offset: 0x1300
    // Size: 0x498
    function debug_friendlyfire() {
        self endon(#"disconnect", #"hash_1ff2bf35392915");
        if (getdvarstring(#"debug_friendlyfire") == "<unknown string>") {
            setdvar(#"debug_friendlyfire", "<unknown string>");
        }
        if (getdvarstring(#"hash_2d7cfd6663c775a7") == "<unknown string>") {
            setdvar(#"hash_2d7cfd6663c775a7", "<unknown string>");
        }
        for (;;) {
            function_25d6cf14();
            if (getdvarstring(#"debug_friendlyfire") == "<unknown string>") {
                self.var_d5b6872a.friendly_fire.alpha = 1;
                self.var_d5b6872a.var_9a2c2205.alpha = 1;
                self.var_d5b6872a.var_67b2f7ad.alpha = 1;
                self.var_d5b6872a.var_ce0ada2c.alpha = 1;
                self.var_d5b6872a.debug_health_bar.alpha = 1;
                self.var_d5b6872a.var_704a4d3b.alpha = 1;
                self.var_d5b6872a.var_203309fa.alpha = 1;
                self.var_d5b6872a.var_c16c1379.alpha = 1;
                self.var_d5b6872a.var_24736d8c.alpha = 1;
            } else {
                self.var_d5b6872a.friendly_fire.alpha = 0;
                self.var_d5b6872a.var_9a2c2205.alpha = 0;
                self.var_d5b6872a.var_67b2f7ad.alpha = 0;
                self.var_d5b6872a.var_ce0ada2c.alpha = 0;
                self.var_d5b6872a.debug_health_bar.alpha = 0;
                self.var_d5b6872a.var_704a4d3b.alpha = 0;
                self.var_d5b6872a.var_203309fa.alpha = 0;
                self.var_d5b6872a.var_c16c1379.alpha = 0;
                self.var_d5b6872a.var_24736d8c.alpha = 0;
            }
            xpos = (level.var_911cdf6e[#"hash_2cc746fbd4f2a46f"] - self.participation) / self.var_d5b6872a.var_987926ba * self.var_d5b6872a.var_fc4521dc;
            self.var_d5b6872a.debug_health_bar.x = self.var_d5b6872a.var_40b5d571 - xpos;
            self.var_d5b6872a.friendly_fire setvalue(self.participation);
            self.var_d5b6872a.friendly_fire.x = self.var_d5b6872a.var_40b5d571 - self.var_d5b6872a.var_fc4521dc * level.var_911cdf6e[#"hash_2cc746fbd4f2a46f"] / self.var_d5b6872a.var_987926ba + (ceil(max(log(abs(self.participation)) / log(10), 0)) + 1 + (self.participation < 0)) * self.var_d5b6872a.friendly_fire.fontscale * 2;
            wait(0.25);
        }
    }

#/

// Namespace friendlyfire/friendlyfire
// Params 1, eflags: 0x2 linked
// Checksum 0x651d081c, Offset: 0x17a0
// Size: 0x36
function function_9d79ae6f(entity) {
    if (entity.archetype === "warlord_soldier") {
        return (entity.shieldhealth <= 0);
    }
    return false;
}

// Namespace friendlyfire/friendlyfire
// Params 6, eflags: 0x2 linked
// Checksum 0x89c4eefc, Offset: 0x17e0
// Size: 0x6ac
function function_1ad87afd(entity, damage, attacker, method, weapon, einflictor) {
    if (!isdefined(entity)) {
        return;
    }
    if (!isdefined(entity.team)) {
        entity.team = #"allies";
    }
    if (!isdefined(entity)) {
        return;
    }
    var_bee3a418 = function_9d79ae6f(entity);
    if (entity.health <= 0) {
        if (!var_bee3a418) {
            return;
        }
    }
    if (level.friendlyfiredisabled) {
        return;
    }
    if (is_true(entity.nofriendlyfire)) {
        return;
    }
    if (!isdefined(attacker)) {
        return;
    }
    if (attacker.body_shield_grenade === einflictor) {
        return;
    }
    if (weapon.name === #"hash_5453c9b880261bcb" || weapon.name === #"hash_675e85b293a65c14") {
        return;
    }
    if (isdefined(einflictor) && einflictor.classname === "grenade" && is_true(einflictor.var_ec078486)) {
        return;
    }
    var_f6cca883 = 0;
    if (isplayer(attacker)) {
        var_f6cca883 = 1;
    } else if (isdefined(attacker.classname) && attacker.classname == "script_vehicle") {
        owner = attacker getvehicleowner();
        if (isdefined(owner)) {
            if (isplayer(owner)) {
                if (!isdefined(owner.var_a4dee4fd)) {
                    var_f6cca883 = 1;
                    attacker = owner;
                }
            }
        }
    }
    if (!var_f6cca883) {
        return;
    }
    var_d3e9a2bd = entity.team == attacker.team;
    if (attacker.team == #"allies") {
        if (entity.team == #"neutral" && !is_true(level.var_cd2635a5)) {
            var_d3e9a2bd = 1;
        }
    }
    var_d3e9a2bd |= util::function_9b7092ef(entity.team, attacker.team);
    if (entity.team != #"neutral" || entity.team == #"neutral" && !is_true(level.var_cd2635a5)) {
        attacker.var_97a2e324 = entity.team;
    }
    killed = damage >= entity.health || var_bee3a418;
    if (!entity.allowdeath && !check_grenade(entity, method)) {
        killed = 0;
    }
    if (!var_d3e9a2bd) {
        if (killed) {
            attacker.participation += level.var_911cdf6e[#"hash_15f7f611338f7f22"];
            attacker participation_point_cap();
            function_b943ac72("Enemy killed: +" + level.var_911cdf6e[#"hash_15f7f611338f7f22"]);
        }
        return;
    }
    if (isdefined(entity.var_2609b537)) {
        return;
    }
    if ((isdefined(attacker.participation) ? attacker.participation : 0) > 0) {
        attacker.participation = 0;
    }
    if (killed) {
        if (entity.archetype === #"civilian" || entity.team == #"neutral") {
            level notify(#"hash_3f3c07e5660a9695");
            attacker.participation += level.var_911cdf6e[#"hash_308b6e99638b7c04"];
            function_b943ac72("Civilian killed: -" + 0 - level.var_911cdf6e[#"hash_308b6e99638b7c04"]);
        } else if (isdefined(entity) && isdefined(entity.var_f9a443f6)) {
            attacker.participation += entity.var_f9a443f6;
            function_b943ac72("Friendly killed with custom penalty: -" + 0 - entity.var_f9a443f6);
        } else {
            attacker.participation += level.var_911cdf6e[#"friend_kill_points"];
            function_b943ac72("Friendly killed: -" + 0 - level.var_911cdf6e[#"friend_kill_points"]);
        }
    } else {
        attacker.participation -= 1;
        function_b943ac72("Friendly hurt: -" + damage);
    }
    attacker participation_point_cap();
    if (check_grenade(entity, method) && savecommit_aftergrenade()) {
        return;
    }
    attacker friendly_fire_checkpoints();
}

// Namespace friendlyfire/friendlyfire
// Params 1, eflags: 0x0
// Checksum 0xe365e47c, Offset: 0x1e98
// Size: 0x6c0
function friendly_fire_think(entity) {
    level endon(#"hash_fef7dac2cb38596");
    entity endon(#"hash_9cd363fce58b93d");
    if (!isdefined(entity)) {
        return;
    }
    if (!isdefined(entity.team)) {
        entity.team = #"allies";
    }
    for (;;) {
        if (!isdefined(entity)) {
            return;
        }
        waitresult = entity waittill(#"damage");
        attacker = waitresult.attacker;
        damage = waitresult.amount;
        method = waitresult.mod;
        if (level.friendlyfiredisabled) {
            continue;
        }
        if (!isdefined(entity)) {
            return;
        }
        if (is_true(entity.nofriendlyfire)) {
            continue;
        }
        if (!isdefined(attacker)) {
            continue;
        }
        var_f6cca883 = 0;
        if (isplayer(attacker)) {
            var_f6cca883 = 1;
        } else if (isdefined(attacker.classname) && attacker.classname == "script_vehicle") {
            owner = attacker getvehicleowner();
            if (isdefined(owner)) {
                if (isplayer(owner)) {
                    if (!isdefined(owner.var_a4dee4fd)) {
                        var_f6cca883 = 1;
                        attacker = owner;
                    }
                }
            }
        }
        if (!var_f6cca883) {
            continue;
        }
        var_d3e9a2bd = entity.team == attacker.team;
        if (attacker.team == #"allies") {
            if (entity.team == #"neutral" && !is_true(level.var_cd2635a5)) {
                var_d3e9a2bd = 1;
            }
        }
        var_d3e9a2bd |= util::function_9b7092ef(entity.team, attacker.team);
        if (entity.team != #"neutral" || entity.team == #"neutral" && !is_true(level.var_cd2635a5)) {
            attacker.var_97a2e324 = entity.team;
        }
        killed = damage >= entity.health;
        if (!entity.allowdeath && !check_grenade(entity, method)) {
            killed = 0;
        }
        if (!var_d3e9a2bd) {
            if (killed) {
                attacker.participation += level.var_911cdf6e[#"hash_15f7f611338f7f22"];
                attacker participation_point_cap();
                function_b943ac72("Enemy killed: +" + level.var_911cdf6e[#"hash_15f7f611338f7f22"]);
            }
            return;
        }
        if (isdefined(entity.var_2609b537)) {
            continue;
        }
        if ((isdefined(attacker.participation) ? attacker.participation : 0) > 0) {
            attacker.participation = 0;
        }
        if (killed) {
            if (entity.archetype === #"civilian" || entity.team == #"neutral") {
                level notify(#"hash_3f3c07e5660a9695");
                if (attacker.participation <= 0) {
                    attacker.participation += level.var_911cdf6e[#"hash_59886fac445f4c71"];
                    function_b943ac72("Civilian killed with negative score, autofail!");
                } else {
                    attacker.participation += level.var_911cdf6e[#"hash_308b6e99638b7c04"];
                    function_b943ac72("Civilian killed: -" + 0 - level.var_911cdf6e[#"hash_308b6e99638b7c04"]);
                }
            } else if (isdefined(entity) && isdefined(entity.var_f9a443f6)) {
                attacker.participation += entity.var_f9a443f6;
                function_b943ac72("Friendly killed with custom penalty: -" + 0 - entity.var_f9a443f6);
            } else {
                attacker.participation += level.var_911cdf6e[#"friend_kill_points"];
                function_b943ac72("Friendly killed: -" + 0 - level.var_911cdf6e[#"friend_kill_points"]);
            }
        } else {
            attacker.participation -= 1;
            function_b943ac72("Friendly hurt: -" + damage);
        }
        attacker participation_point_cap();
        if (check_grenade(entity, method) && savecommit_aftergrenade()) {
            if (killed) {
                return;
            }
            continue;
        }
        attacker friendly_fire_checkpoints();
    }
}

// Namespace friendlyfire/friendlyfire
// Params 0, eflags: 0x2 linked
// Checksum 0xc9a42d27, Offset: 0x2560
// Size: 0x3c
function friendly_fire_checkpoints() {
    if (self.participation <= level.var_911cdf6e[#"hash_59886fac445f4c71"]) {
        self thread missionfail();
    }
}

// Namespace friendlyfire/friendlyfire
// Params 2, eflags: 0x2 linked
// Checksum 0xb266a3be, Offset: 0x25a8
// Size: 0x8e
function check_grenade(entity, method) {
    if (!isdefined(entity)) {
        return 0;
    }
    var_eb88824c = 0;
    if (isdefined(entity.damageweapon) && entity.damageweapon.name == "none") {
        var_eb88824c = 1;
    }
    if (isdefined(method) && method == "MOD_GRENADE_SPLASH") {
        var_eb88824c = 1;
    }
    return var_eb88824c;
}

// Namespace friendlyfire/friendlyfire
// Params 0, eflags: 0x2 linked
// Checksum 0x896c31c2, Offset: 0x2640
// Size: 0x44
function savecommit_aftergrenade() {
    currenttime = gettime();
    if (currenttime < 4500) {
        println("<unknown string>");
        return true;
    }
    return false;
}

// Namespace friendlyfire/friendlyfire
// Params 0, eflags: 0x2 linked
// Checksum 0x3d3e7964, Offset: 0x2690
// Size: 0xae
function participation_point_cap() {
    if (!isdefined(self.participation)) {
        assertmsg("<unknown string>");
        return;
    }
    if (self.participation > level.var_911cdf6e[#"hash_2cc746fbd4f2a46f"]) {
        self.participation = level.var_911cdf6e[#"hash_2cc746fbd4f2a46f"];
    }
    if (self.participation < level.var_911cdf6e[#"hash_59886fac445f4c71"]) {
        self.participation = level.var_911cdf6e[#"hash_59886fac445f4c71"];
    }
}

// Namespace friendlyfire/friendlyfire
// Params 0, eflags: 0x2 linked
// Checksum 0x97e34ad9, Offset: 0x2748
// Size: 0x62
function participation_point_flattenovertime() {
    level endon(#"hash_7d1398df3ecfd3bf");
    self endon(#"disconnect");
    for (;;) {
        if (self.participation > 0) {
            self.participation--;
        }
        wait(level.var_911cdf6e[#"hash_69a22a048631e673"]);
    }
}

// Namespace friendlyfire/friendlyfire
// Params 0, eflags: 0x2 linked
// Checksum 0x1c8f202b, Offset: 0x27b8
// Size: 0x10
function turnbackon() {
    level.friendlyfiredisabled = 0;
}

// Namespace friendlyfire/friendlyfire
// Params 0, eflags: 0x2 linked
// Checksum 0xebf830c9, Offset: 0x27d0
// Size: 0x14
function turnoff() {
    level.friendlyfiredisabled = 1;
}

// Namespace friendlyfire/friendlyfire
// Params 0, eflags: 0x2 linked
// Checksum 0xf283b25f, Offset: 0x27f0
// Size: 0xcc
function missionfail() {
    self endon(#"death");
    level endon(#"hash_2a5bc3aedd245590");
    self.participation = 0;
    self.lives = 0;
    if (self.var_97a2e324 === #"neutral") {
        util::function_2a8f4806(#"hash_293687c2ffb1b911", #"hash_7d45646726cd7f74");
        return;
    }
    util::function_2a8f4806(#"hash_23aab5a843404b78", #"hash_7d45646726cd7f74");
}

// Namespace friendlyfire/friendlyfire
// Params 0, eflags: 0x0
// Checksum 0x934f0523, Offset: 0x28c8
// Size: 0x4a
function function_708f45ad() {
    self endon(#"death");
    level endon(#"hash_2a5bc3aedd245590");
    self.participation = 0;
    wait(0.05);
    self.participation = 0;
}

// Namespace friendlyfire/friendlyfire
// Params 1, eflags: 0x0
// Checksum 0xf2ea6818, Offset: 0x2920
// Size: 0x6c
function notifydamage(entity) {
    level endon(#"hash_fef7dac2cb38596");
    entity endon(#"death");
    for (;;) {
        entity notify(#"hash_7a17f022e00869c2", entity waittill(#"damage"));
    }
}

// Namespace friendlyfire/friendlyfire
// Params 1, eflags: 0x0
// Checksum 0xf671e6d5, Offset: 0x2998
// Size: 0x68
function notifydamagenotdone(entity) {
    level endon(#"hash_fef7dac2cb38596");
    waitresult = entity waittill(#"damage_notdone");
    waitresult.amount = -1;
    entity notify(#"hash_7a17f022e00869c2", waitresult);
}

// Namespace friendlyfire/friendlyfire
// Params 1, eflags: 0x0
// Checksum 0x4c8dd734, Offset: 0x2a08
// Size: 0x68
function notifydeath(entity) {
    level endon(#"hash_fef7dac2cb38596");
    waitresult = entity waittill(#"death");
    waitresult.amount = -1;
    entity notify(#"hash_7a17f022e00869c2", waitresult);
}

