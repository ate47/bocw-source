// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\bb_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace bb;

// Namespace bb/bb
// Params 0, eflags: 0x5
// Checksum 0x11d14bb2, Offset: 0x1e0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"bb", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace bb/bb
// Params 0, eflags: 0x6 linked
// Checksum 0x6fb7dfa1, Offset: 0x228
// Size: 0x94
function private function_70a657d8() {
    init_shared();
    callback::on_spawned(&function_3872d0f0);
    callback::on_spawned(&function_70635e9d);
    callback::on_spawned(&function_88a4e45c);
    callback::on_spawned(&function_85a6ae83);
}

// Namespace bb/bb
// Params 0, eflags: 0x6 linked
// Checksum 0x29beb302, Offset: 0x2c8
// Size: 0xb8
function private function_3872d0f0() {
    self endon(#"death", #"disconnect");
    level endon(#"game_ended");
    self notify("676c2f77e9785ef0");
    self endon("676c2f77e9785ef0");
    self notifyonplayercommand("objective_ping", "+scores");
    while (1) {
        self waittill(#"hash_2aaa674f834b3b89");
        function_cd497743("show_objectives", self);
    }
}

// Namespace bb/bb
// Params 0, eflags: 0x6 linked
// Checksum 0x21c0155c, Offset: 0x388
// Size: 0x1a0
function private function_70635e9d() {
    self endon(#"death", #"disconnect");
    level endon(#"game_ended");
    self notify("757ff94f2b51b3cb");
    self endon("757ff94f2b51b3cb");
    waitframe(1);
    while (isdefined(level.var_a8072505)) {
        event = undefined;
        event = self waittill(#"hash_543e034b500f035d");
        enemies = getaiteamarray("axis");
        var_f5c94561 = -1;
        foreach (var_9e578de5 in enemies) {
            if (var_9e578de5 === event.receiver) {
                continue;
            }
            var_e081fa2b = [[ level.var_a8072505 ]](var_9e578de5.var_c872a2f);
            if (var_f5c94561 < var_e081fa2b) {
                var_f5c94561 = var_e081fa2b;
            }
        }
        if (event.var_c0659057 > var_f5c94561) {
            function_8fca6a2e(event, self);
        }
    }
}

// Namespace bb/bb
// Params 0, eflags: 0x6 linked
// Checksum 0xf40b83fb, Offset: 0x530
// Size: 0x1e8
function private function_88a4e45c() {
    self endon(#"death", #"disconnect");
    level endon(#"game_ended");
    self notify("51e343fcfe3f702b");
    self endon("51e343fcfe3f702b");
    while (1) {
        waitresult = undefined;
        waitresult = self waittill(#"weapon_switch_started");
        var_9463444 = self getcurrentweapon();
        if (waitresult.weapon !== var_9463444) {
            if (var_9463444.name !== "none") {
                function_141c945e("stop", var_9463444, self);
                if (var_9463444.type !== "melee" && self getammocount(var_9463444) == 0) {
                    function_141c945e("noammo", var_9463444, self);
                    function_cd497743("out_of_ammo", self);
                }
            }
            if (waitresult.weapon.name !== "none") {
                function_141c945e("start", waitresult.weapon, self);
                if (waitresult.weapon.name === #"gadget_health_regen") {
                    function_cd497743("heal", self);
                }
            }
        }
    }
}

// Namespace bb/bb
// Params 0, eflags: 0x6 linked
// Checksum 0xdc69cb04, Offset: 0x720
// Size: 0xc8
function private function_85a6ae83() {
    self endon(#"death", #"disconnect");
    level endon(#"game_ended");
    self notify("6d685e8e8bf91248");
    self endon("6d685e8e8bf91248");
    while (1) {
        if (getdvarint(#"hash_7b899094cda20ec3", 1)) {
            recordbreadcrumbdataforplayer(self);
        }
        wait(getdvarfloat(#"hash_48fe774d185ff64a", 2));
    }
}

// Namespace bb/bb
// Params 1, eflags: 0x6 linked
// Checksum 0xc7c225ac, Offset: 0x7f0
// Size: 0xb6
function private function_56f03b13(player) {
    var_4f1ec5c = "";
    if (isdefined(player.var_efc688f7)) {
        for (index = 0; index < player.var_efc688f7.size; index++) {
            if (isdefined(player.var_efc688f7[index]) && player.var_efc688f7[index]) {
                if (isdefined(var_4f1ec5c) && var_4f1ec5c != "") {
                    var_4f1ec5c = var_4f1ec5c + ";";
                }
                var_4f1ec5c = var_4f1ec5c + index;
            }
        }
    }
    return var_4f1ec5c;
}

// Namespace bb/bb
// Params 0, eflags: 0x6 linked
// Checksum 0xcb13d47a, Offset: 0x8b0
// Size: 0x56
function private function_bb412e85() {
    var_2084f739 = {};
    var_2084f739.gametime.var_2084f739 = gettime();
    var_2084f739.level_name.var_2084f739 = level.script;
    if (!isdefined(var_2084f739.level_name)) {
        var_2084f739.level_name.var_2084f739 = util::get_map_name();
    }
    return var_2084f739;
}

// Namespace bb/bb
// Params 1, eflags: 0x2 linked
// Checksum 0x24a4c62a, Offset: 0x910
// Size: 0x90c
function function_74cad77c(player) {
    if (!isplayer(player)) {
        return;
    }
    var_604bf865 = 1;
    if (isdefined(player.deaths) && player.deaths > 0) {
        var_604bf865 = player.deaths;
    }
    kdratio = player.kills / var_604bf865;
    var_7b2260d7 = 0;
    if (isdefined(player.var_c2287847)) {
        var_7b2260d7 = gettime() - player.var_c2287847;
    }
    var_4a8d1677 = 0;
    shotshit = 0;
    if (isdefined(player._bbdata)) {
        var_4a8d1677 = isdefined(player._bbdata[#"shots"]) ? player._bbdata[#"shots"] : 0;
        shotshit = isdefined(player._bbdata[#"hits"]) ? player._bbdata[#"hits"] : 0;
    }
    accuracy = 0;
    if (var_4a8d1677 > 0) {
        accuracy = shotshit / var_4a8d1677;
    }
    var_4f1ec5c = function_56f03b13(player);
    corners = getentarray("minimap_corner", "targetname");
    var_94ab7d87 = 0;
    var_82a3d984 = 0;
    if (isdefined(corners) && corners.size >= 2) {
        var_94ab7d87 = corners[1].origin[0] - corners[0].origin[0];
        var_82a3d984 = corners[1].origin[1] - corners[0].origin[1];
    }
    rankxp = 0;
    rank = 0;
    if (isdefined(player.pers)) {
        if (isdefined(player.pers[#"rank"])) {
            rank = player.pers[#"rank"];
        }
        if (isdefined(player.pers[#"rankxp"])) {
            rankxp = player.pers[#"rankxp"];
        }
    }
    var_18e1bf78 = 0;
    var_34a1cd0e = 0;
    var_8ee7643d = 0;
    var_3ce237d6 = 0;
    var_1940d7af = 0;
    var_da1d706e = 0;
    var_64170450 = 0;
    var_766d092d = 0;
    var_d703cc3c = 0;
    if (isdefined(player.movementtracking)) {
        if (isdefined(player.movementtracking.doublejump)) {
            var_18e1bf78 = player.movementtracking.doublejump.distance;
            var_34a1cd0e = player.movementtracking.doublejump.count;
            var_8ee7643d = player.movementtracking.doublejump.time;
        }
        if (isdefined(player.movementtracking.wallrunning)) {
            var_3ce237d6 = player.movementtracking.wallrunning.distance;
            var_1940d7af = player.movementtracking.wallrunning.count;
            var_da1d706e = player.movementtracking.wallrunning.time;
        }
        if (isdefined(player.movementtracking.sprinting)) {
            var_64170450 = player.movementtracking.sprinting.distance;
            var_766d092d = player.movementtracking.sprinting.count;
            var_d703cc3c = player.movementtracking.sprinting.time;
        }
    }
    playerid = getplayerspawnid(player);
    var_9487fde9 = isdefined(player.pers[#"best_kill_streak"]) ? player.pers[#"best_kill_streak"] : 0;
    var_4b6c9aa0 = isdefined(player.var_4b6c9aa0) ? player.var_4b6c9aa0 : 0;
    headshots = isdefined(player.headshots) ? player.headshots : 0;
    var_f71b6142 = isdefined(player.primaryloadoutweapon) ? player.primaryloadoutweapon.name : "undefined";
    currentweapon = isdefined(player.currentweapon) ? player.currentweapon.name : "undefined";
    grenadesused = isdefined(player.grenadesused) ? player.grenadesused : 0;
    playername = isdefined(player.name) ? player.name : "undefined";
    kills = isdefined(player.kills) ? player.kills : 0;
    deaths = isdefined(player.deaths) ? player.deaths : 0;
    incaps = isdefined(player.pers[#"incaps"]) ? player.pers[#"incaps"] : 0;
    assists = isdefined(player.assists) ? player.assists : 0;
    score = isdefined(player.score) ? player.score : 0;
    var_2084f739 = function_bb412e85();
    var_2084f739.spawnid = playerid;
    var_2084f739.username = playername;
    var_2084f739.kills = kills;
    var_2084f739.deaths = deaths;
    var_2084f739.incaps = incaps;
    var_2084f739.var_3d421664 = kdratio;
    var_2084f739.shotshit = shotshit;
    var_2084f739.var_4a8d1677 = var_4a8d1677;
    var_2084f739.accuracy = accuracy;
    var_2084f739.assists = assists;
    var_2084f739.score = score;
    var_2084f739.var_7b2260d7 = var_7b2260d7;
    var_2084f739.var_4b6c9aa0 = var_4b6c9aa0;
    var_2084f739.headshots = headshots;
    var_2084f739.primaryloadoutweapon.var_2084f739 = hash(var_f71b6142);
    var_2084f739.currentweapon = currentweapon;
    var_2084f739.grenadesused = grenadesused;
    var_2084f739.var_9487fde9 = var_9487fde9;
    var_2084f739.var_416a3780 = var_18e1bf78;
    var_2084f739.var_5f11b3b0 = var_34a1cd0e;
    var_2084f739.var_4ee734c0 = var_8ee7643d;
    var_2084f739.var_eeb75a04 = var_3ce237d6;
    var_2084f739.var_c595ee7d = var_1940d7af;
    var_2084f739.var_9c479e22 = var_da1d706e;
    var_2084f739.var_f38de5a4 = var_64170450;
    var_2084f739.var_5983424f = var_766d092d;
    var_2084f739.var_17d87aa = var_d703cc3c;
    var_2084f739.var_ee83c52b = var_94ab7d87;
    var_2084f739.var_c1e9a7 = var_82a3d984;
    var_2084f739.rank = rank;
    var_2084f739.rankxp = rankxp;
    var_2084f739.collectibles = var_4f1ec5c;
    function_92d1707f(#"hash_616fb54063760a91", var_2084f739);
}

// Namespace bb/bb
// Params 3, eflags: 0x2 linked
// Checksum 0xebcaa66e, Offset: 0x1228
// Size: 0x1f4
function function_47cb52f6(objectivename, player, status) {
    if (!isplayer(player)) {
        return;
    }
    playerid = -1;
    if (isplayer(player)) {
        playerid = getplayerspawnid(player);
    } else {
        return;
    }
    var_2084f739 = function_bb412e85();
    var_2084f739.spawnid = playerid;
    var_2084f739.username.var_2084f739 = player.name;
    var_2084f739.var_ad68ffd3 = objectivename;
    var_2084f739.eventtype = status;
    var_2084f739.originx.var_2084f739 = player.origin[0];
    var_2084f739.originy.var_2084f739 = player.origin[1];
    var_2084f739.originz.var_2084f739 = player.origin[2];
    var_2084f739.kills.var_2084f739 = player.kills;
    var_2084f739.revives.var_2084f739 = player.revives;
    var_2084f739.deathcount.var_2084f739 = player.deathcount;
    var_2084f739.deaths.var_2084f739 = player.deaths;
    var_2084f739.headshots.var_2084f739 = player.headshots;
    var_2084f739.hits.var_2084f739 = player.hits;
    var_2084f739.score.var_2084f739 = player.score;
    var_2084f739.shotshit.var_2084f739 = player.shotshit;
    var_2084f739.shotsmissed.var_2084f739 = player.shotsmissed;
    var_2084f739.suicides.var_2084f739 = player.suicides;
    var_2084f739.downs.var_2084f739 = player.downs;
    var_2084f739.difficulty.var_2084f739 = level.var_b9451145;
    function_92d1707f(#"hash_1c8379f2cae4ae9a", var_2084f739);
}

// Namespace bb/bb
// Params 8, eflags: 0x2 linked
// Checksum 0x9676c80c, Offset: 0x1428
// Size: 0x63c
function logdamage(attacker, victim, weapon, damage, damagetype, hitlocation, victimkilled, victimdowned) {
    if (!isplayer(victim) || !is_true(victimkilled)) {
        return;
    }
    var_9636880b = -1;
    victimname = "";
    var_e3a133fe = "";
    victimorigin = (0, 0, 0);
    var_b318ef7a = 0;
    var_dec66cf0 = 0;
    var_4d5bb08b = 0;
    var_f8a2358b = 0;
    var_f3e621df = "";
    var_c325612c = 0;
    var_a9d101f1 = 0;
    attackerid = -1;
    attackername = "";
    var_2498da65 = "";
    attackerorigin = (0, 0, 0);
    var_599f95b5 = 0;
    var_b88cee53 = 0;
    var_7aafb2d3 = 0;
    var_e80b2895 = 0;
    var_3b40bee = "";
    var_2f2881c5 = 0;
    var_f0277724 = "";
    var_8bdcd848 = "";
    var_e6a5332b = "";
    var_53b48f29 = "";
    var_e2e23f7e = "";
    var_60fae37b = "";
    if (isdefined(attacker)) {
        if (isplayer(attacker)) {
            attackerid = getplayerspawnid(attacker);
            var_2498da65 = "_player";
            attackername = attacker.name;
        } else if (isai(attacker)) {
            var_2498da65 = "_ai";
            var_60fae37b = attacker.combatmode;
            attackerid = attacker.actor_id;
        } else {
            var_2498da65 = "_other";
        }
        attackerorigin = attacker.origin;
        var_599f95b5 = attacker.ignoreme;
        var_7aafb2d3 = attacker.fovcosine;
        var_e80b2895 = attacker.maxsightdistsqrd;
        if (isdefined(attacker.animname)) {
            var_3b40bee = attacker.animname;
        }
        if (isdefined(attacker.laststand)) {
            var_2f2881c5 = attacker.laststand;
        }
    }
    if (isdefined(victim)) {
        if (isplayer(victim)) {
            var_9636880b = getplayerspawnid(victim);
            var_e3a133fe = "_player";
            victimname = victim.name;
            var_a9d101f1 = victim.downs;
        } else if (isai(victim)) {
            var_e3a133fe = "_ai";
            var_e6a5332b = victim.combatmode;
            var_9636880b = victim.actor_id;
        } else {
            var_e3a133fe = "_other";
        }
        victimorigin = victim.origin;
        var_b318ef7a = victim.ignoreme;
        var_4d5bb08b = victim.fovcosine;
        var_f8a2358b = victim.maxsightdistsqrd;
        if (isdefined(victim.animname)) {
            var_f3e621df = victim.animname;
        }
        if (isdefined(victim.laststand)) {
            var_c325612c = victim.laststand;
        }
    }
    var_2084f739 = function_bb412e85();
    var_2084f739.attackerid = attackerid;
    var_2084f739.var_2498da65 = var_2498da65;
    var_2084f739.attackername = attackername;
    var_2084f739.attackerweapon.var_2084f739 = weapon.name;
    var_2084f739.attackerx.var_2084f739 = attackerorigin[0];
    var_2084f739.attackery.var_2084f739 = attackerorigin[1];
    var_2084f739.attackerz.var_2084f739 = attackerorigin[2];
    var_2084f739.var_6116a39c = var_60fae37b;
    var_2084f739.var_599f95b5 = var_599f95b5;
    var_2084f739.var_b88cee53 = var_b88cee53;
    var_2084f739.var_7aafb2d3 = var_7aafb2d3;
    var_2084f739.var_e80b2895 = var_e80b2895;
    var_2084f739.var_3b40bee = var_3b40bee;
    var_2084f739.var_2f2881c5 = var_2f2881c5;
    var_2084f739.var_9636880b = var_9636880b;
    var_2084f739.var_e3a133fe = var_e3a133fe;
    var_2084f739.victimname = victimname;
    var_2084f739.originx.var_2084f739 = victimorigin[0];
    var_2084f739.originy.var_2084f739 = victimorigin[1];
    var_2084f739.originz.var_2084f739 = victimorigin[2];
    var_2084f739.var_e6a5332b = var_e6a5332b;
    var_2084f739.var_b318ef7a = var_b318ef7a;
    var_2084f739.var_dec66cf0 = var_dec66cf0;
    var_2084f739.var_4d5bb08b = var_4d5bb08b;
    var_2084f739.var_f8a2358b = var_f8a2358b;
    var_2084f739.var_f3e621df = var_f3e621df;
    var_2084f739.var_c325612c = var_c325612c;
    var_2084f739.damage = damage;
    var_2084f739.damagetype = damagetype;
    var_2084f739.damagelocation = hitlocation;
    var_2084f739.death = victimkilled;
    var_2084f739.victimdowned = victimdowned;
    var_2084f739.downs = var_a9d101f1;
    function_92d1707f(#"hash_1daf9dd7ac61d60e", var_2084f739);
}

// Namespace bb/bb
// Params 2, eflags: 0x2 linked
// Checksum 0x106af84d, Offset: 0x1a70
// Size: 0x14
function logaispawn(*aient, *spawner) {
    
}

// Namespace bb/bb
// Params 2, eflags: 0x2 linked
// Checksum 0x77ff7ee7, Offset: 0x1a90
// Size: 0x20c
function function_cd497743(var_c5a50b46, player = getplayers()[0]) {
    if (!isplayer(player) && !isai(player)) {
        return;
    }
    playerid = -1;
    var_d28ba0cd = "";
    var_61d8ae42 = (0, 0, 0);
    playername = "";
    var_6ff6df98 = player.angles[1];
    if (isai(player)) {
        playerid = player.actor_id;
        var_d28ba0cd = "_ai";
        var_61d8ae42 = player.origin;
    } else if (isplayer(player)) {
        playerid = getplayerspawnid(player);
        var_d28ba0cd = "_player";
        var_61d8ae42 = player.origin;
        playername = player.name;
    }
    var_2084f739 = function_bb412e85();
    var_2084f739.var_c5a50b46 = var_c5a50b46;
    var_2084f739.spawnid = playerid;
    var_2084f739.username = playername;
    var_2084f739.var_4f5cdb6a = var_d28ba0cd;
    var_2084f739.originx.var_2084f739 = var_61d8ae42[0];
    var_2084f739.originy.var_2084f739 = var_61d8ae42[1];
    var_2084f739.originz.var_2084f739 = var_61d8ae42[2];
    var_2084f739.angleyaw = var_6ff6df98;
    function_92d1707f(#"hash_a2e7d42c6175a49", var_2084f739);
}

// Namespace bb/bb
// Params 3, eflags: 0x2 linked
// Checksum 0xce6632b7, Offset: 0x1ca8
// Size: 0xdc
function function_7977c093(scriptbundle, var_aa973631, player) {
    if (!isplayer(player)) {
        return;
    }
    var_2084f739 = function_bb412e85();
    var_2084f739.var_62950536 = var_aa973631;
    var_2084f739.scriptbundle = scriptbundle;
    var_2084f739.originx.var_2084f739 = player.origin[0];
    var_2084f739.originy.var_2084f739 = player.origin[1];
    var_2084f739.originz.var_2084f739 = player.origin[2];
    function_92d1707f(#"hash_682f461dfce7bcc", var_2084f739);
}

// Namespace bb/bb
// Params 3, eflags: 0x2 linked
// Checksum 0x6c2f8112, Offset: 0x1d90
// Size: 0x114
function function_a0d15803(var_4d98c3ce, var_393b6e18, player) {
    if (!isplayer(player)) {
        return;
    }
    var_2084f739 = function_bb412e85();
    var_2084f739.prompt = var_4d98c3ce;
    var_2084f739.originx.var_2084f739 = player.origin[0];
    var_2084f739.originy.var_2084f739 = player.origin[1];
    var_2084f739.originz.var_2084f739 = player.origin[2];
    if (!isdefined(var_393b6e18)) {
        var_393b6e18 = player.origin;
    }
    var_2084f739.var_8fdde989.var_2084f739 = var_393b6e18[0];
    var_2084f739.var_822b4e24.var_2084f739 = var_393b6e18[1];
    var_2084f739.var_9018e9fb.var_2084f739 = var_393b6e18[2];
    function_92d1707f(#"hash_7dc6fbfa7d872255", var_2084f739);
}

// Namespace bb/bb
// Params 2, eflags: 0x2 linked
// Checksum 0x69417e75, Offset: 0x1eb0
// Size: 0x19c
function function_8fca6a2e(event, player) {
    if (!isplayer(player)) {
        return;
    }
    var_2084f739 = function_bb412e85();
    var_2084f739.event.var_2084f739 = isdefined(event.type) ? event.type : isdefined(event.var_dd29a83a) ? event.var_dd29a83a : "<unknown>";
    var_2084f739.originx.var_2084f739 = player.origin[0];
    var_2084f739.originy.var_2084f739 = player.origin[1];
    var_2084f739.originz.var_2084f739 = player.origin[2];
    var_ccfd8635 = isdefined(event.receiver.origin) ? event.receiver.origin : player.origin;
    var_2084f739.var_808bfef8.var_2084f739 = var_ccfd8635[0];
    var_2084f739.var_727ec7.var_2084f739 = var_ccfd8635[1];
    var_2084f739.var_1239a255.var_2084f739 = var_ccfd8635[2];
    var_2084f739.alertlevel.var_2084f739 = isdefined(event.var_c0659057) ? event.var_c0659057 : -1;
    function_92d1707f(#"hash_7cf37e2bb4f129ae", var_2084f739);
}

// Namespace bb/bb
// Params 3, eflags: 0x2 linked
// Checksum 0x941b78b6, Offset: 0x2058
// Size: 0xdc
function function_141c945e(action, weapon, player) {
    if (!isplayer(player)) {
        return;
    }
    var_2084f739 = function_bb412e85();
    var_2084f739.var_6c46f7fc.var_2084f739 = weapon.name;
    var_2084f739.action = action;
    var_2084f739.originx.var_2084f739 = player.origin[0];
    var_2084f739.originy.var_2084f739 = player.origin[1];
    var_2084f739.originz.var_2084f739 = player.origin[2];
    function_92d1707f(#"hash_62009457b268d346", var_2084f739);
}

// Namespace bb/bb
// Params 3, eflags: 0x0
// Checksum 0x859a7b0c, Offset: 0x2140
// Size: 0x1dc
function function_248394b9(event, num, player = getplayers()[0]) {
    if (!isfloat(num) && !isint(num)) {
        return;
    }
    if (!isplayer(player)) {
        return;
    }
    var_2084f739 = function_bb412e85();
    var_2084f739.event = event;
    if (isint(num)) {
        var_2084f739.var_f2ebb6e1 = num;
        var_2084f739.var_dac812c9.var_2084f739 = float(num);
    } else if (isfloat(num)) {
        var_2084f739.var_dac812c9 = num;
        var_2084f739.var_f2ebb6e1.var_2084f739 = int(num);
    }
    var_2084f739.playerid.var_2084f739 = getplayerspawnid(player);
    var_2084f739.playername.var_2084f739 = player.name;
    var_2084f739.var_df592595.var_2084f739 = player.angles[1];
    var_2084f739.originx.var_2084f739 = player.origin[0];
    var_2084f739.originy.var_2084f739 = player.origin[1];
    var_2084f739.originz.var_2084f739 = player.origin[2];
    function_92d1707f(#"hash_16eb11423f4573a7", var_2084f739);
}
