// Atian COD Tools GSC CW decompiler test
#using script_1cc417743d7c262d;
#using scripts\core_common\clientfield_shared.gsc;
#using script_1267bfe8aee25f0d;
#using script_647623c4304d91a5;
#using scripts\mp_common\gametypes\spy.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\dogtags.gsc;
#using script_7f6cd71c43c45c57;
#using scripts\core_common\array_shared.gsc;

#namespace spy;

// Namespace spy/namespace_d662ffdc
// Params 5, eflags: 0x0
// Checksum 0x60186e55, Offset: 0x1d0
// Size: 0x308
function function_8caeee8f(deathtime, victim, sweapon, var_7ad38e4e, meansofdeath) {
    if (!isdefined(victim)) {
        return;
    }
    if (victim.var_d7e8ad6f == 0) {
        return;
    }
    attacker = victim.lastkilledby;
    if (!isdefined(attacker)) {
        attacker = victim;
    }
    dogtag = dogtags::spawn_dog_tag(victim, attacker, &onusedogtag, 0, undefined, 1, 1, var_7ad38e4e);
    dogtag.var_1f0e2977 = 0;
    dogtag.deathtime = deathtime;
    dogtag.clientnum = victim getentitynumber();
    dogtag.var_d7e8ad6f = victim function_da8679c7();
    dogtag.trigger function_9b047eda(1);
    if (!isdefined(meansofdeath) || meansofdeath == "MOD_UNKNOWN") {
        meansofdeath = "MOD_FALLING";
    }
    dogtag.meansofdeath = function_4a856ead(meansofdeath);
    dogtag.var_588e0374 = victim.var_588e0374;
    function_74eed3d3(dogtag);
    if (!isdefined(sweapon)) {
        sweapon = getweapon(#"none");
    }
    dogtag.var_5b3a4d0a = getbaseweaponitemindex(weapons::getbaseweapon(sweapon));
    if (isdefined(dogtag.trigger)) {
        dogtag.trigger function_682f34cf(-999);
        if (!is_true(getdvarint(#"hash_7616b5961f10df6d"))) {
            dogtag.trigger setinvisibletoall();
            foreach (player in function_a1ef346b()) {
                if (isdefined(player) && player function_da8679c7() == 3) {
                    dogtag.trigger setvisibletoplayer(player);
                }
            }
        }
    }
}

// Namespace spy/namespace_d662ffdc
// Params 0, eflags: 0x0
// Checksum 0x6ad41ff, Offset: 0x4e0
// Size: 0xbc
function function_1542fb2a() {
    player = self;
    entitynumber = player getentitynumber();
    corpse = level.var_a28b6edf[entitynumber];
    if (!isdefined(corpse)) {
        return;
    }
    corpse.origin = player.origin;
    if (!isalive(player)) {
        return;
    }
    player function_80b780f5(corpse);
    player thread function_8caeee8f(gettime(), player, undefined, 1, undefined);
}

// Namespace spy/namespace_d662ffdc
// Params 1, eflags: 0x0
// Checksum 0x3ff7af67, Offset: 0x5a8
// Size: 0x12c
function onusedogtag(player) {
    if (isdefined(level.var_737c0ab8) && level.var_737c0ab8 == 0) {
        return;
    }
    dogtag = self;
    if (isdefined(player.var_d7e8ad6f) && player.var_d7e8ad6f == 3) {
        player notify(#"hash_689a76e752960df3");
        util::wait_network_frame(1);
        player clientfield::set("footsteps_victim_entity_num", dogtag.clientnum + 1);
        if (dogtag.var_1f0e2977 == 0) {
            player namespace_4d9a1379::function_53a81144(level.var_7e569431.var_6f25263a);
            scoreevents::processscoreevent(#"hash_71166628df9e773e", player);
            dogtag.var_1f0e2977 = 1;
        }
        player thread function_a8aae6e();
    }
}

// Namespace spy/namespace_d662ffdc
// Params 2, eflags: 0x0
// Checksum 0xaea111f, Offset: 0x6e0
// Size: 0x64
function function_74eed3d3(dogtag, *var_eb0c09b) {
    level thread function_a9490fb5();
    level clientfield::set_world_uimodel("hudItems.spyMatchData." + var_eb0c09b.var_588e0374 + ".identityIsKnown", 1);
}

// Namespace spy/namespace_d662ffdc
// Params 3, eflags: 0x0
// Checksum 0x2c8ac384, Offset: 0x750
// Size: 0x2d8
function function_59d9033e(var_eb0c09b, var_7eb157a7, var_d47b6a0b) {
    level endon(#"game_ended");
    var_78904b18 = 26;
    var_9b867835 = 2;
    if (isplayer(var_eb0c09b)) {
        var_78904b18 = var_eb0c09b getentitynumber();
        var_9b867835 = var_eb0c09b function_da8679c7();
    }
    level clientfield::set("corpse_observer_client_num", 31);
    players = getplayers();
    foreach (player in players) {
        if (isdefined(player)) {
            player clientfield::set("corpse_client_num", 31);
        }
    }
    level clientfield::set("body_identity", 0);
    level clientfield::set("corpse_observer_role", 0);
    util::wait_network_frame();
    level clientfield::set("corpse_observer_client_num", var_78904b18);
    level clientfield::set("body_identity", var_d47b6a0b);
    level clientfield::set("corpse_observer_role", var_9b867835);
    util::wait_network_frame();
    players = getplayers();
    foreach (player in players) {
        if (isdefined(player) && !isbot(player)) {
            player clientfield::set("corpse_client_num", var_7eb157a7);
        }
    }
}

// Namespace spy/namespace_d662ffdc
// Params 0, eflags: 0x0
// Checksum 0x8339ed52, Offset: 0xa30
// Size: 0x64
function function_a8aae6e() {
    level endon(#"game_ended");
    self waittilltimeout(30, #"hash_689a76e752960df3", #"death");
    self thread clientfield::set("footsteps_victim_entity_num", 26);
}

// Namespace spy/namespace_d662ffdc
// Params 1, eflags: 0x4
// Checksum 0xdf3c07ae, Offset: 0xaa0
// Size: 0xec
function private function_b58b4635(dogtag) {
    if (!isdefined(dogtag.var_5ff323b9)) {
        dogtag.var_5ff323b9 = [];
    }
    if (isdefined(self.var_588e0374) && !isinarray(dogtag.var_5ff323b9, self.var_588e0374)) {
        if (!isdefined(dogtag.var_5ff323b9)) {
            dogtag.var_5ff323b9 = [];
        } else if (!isarray(dogtag.var_5ff323b9)) {
            dogtag.var_5ff323b9 = array(dogtag.var_5ff323b9);
        }
        dogtag.var_5ff323b9[dogtag.var_5ff323b9.size] = self.var_588e0374;
        if (self.var_d7e8ad6f == 3) {
        }
    }
}

// Namespace spy/namespace_d662ffdc
// Params 0, eflags: 0x0
// Checksum 0x1a7326be, Offset: 0xb98
// Size: 0x8e
function function_83ea8b7f() {
    level endon(#"game_ended");
    self endon(#"disconnect", #"death");
    self notify("63829832e2687ec2");
    self endon("63829832e2687ec2");
    self.var_4ea906ac = [];
    while (true) {
        function_23ed3ead(self.origin);
        waitframe(1);
    }
}

// Namespace spy/namespace_d662ffdc
// Params 1, eflags: 0x0
// Checksum 0xaa9ee828, Offset: 0xc30
// Size: 0x244
function function_23ed3ead(origin) {
    player = self;
    var_9b882d22 = player function_ee839fac(1);
    dogtag = undefined;
    if (isdefined(var_9b882d22)) {
        foreach (var_938e3d9f in level.dogtags) {
            if (isdefined(var_938e3d9f.trigger) && var_938e3d9f.trigger == var_9b882d22) {
                maxdist = util::function_16fb0a3b();
                if (distancesquared(origin, var_9b882d22.origin) < sqr(maxdist)) {
                    dogtag = var_938e3d9f;
                    break;
                }
            }
        }
    }
    if (isdefined(dogtag)) {
        var_73ab2455 = int((gettime() - dogtag.deathtime) / 1000);
        player function_a69e656f(dogtag, var_73ab2455);
        foreach (spectator in self.var_4ea906ac) {
            if (isdefined(spectator)) {
                spectator function_a69e656f(dogtag, var_73ab2455);
            }
        }
        return;
    }
    player clientfield::set_to_player("corpse_entity_num", 26);
}

// Namespace spy/namespace_d662ffdc
// Params 2, eflags: 0x0
// Checksum 0x19366161, Offset: 0xe80
// Size: 0x124
function function_a69e656f(dogtag, var_73ab2455) {
    level.var_44018194 hud_spy::function_82bcc7df(self, dogtag.var_d7e8ad6f);
    level.var_44018194 hud_spy::function_8b74df97(self, dogtag.clientnum + 1);
    level.var_44018194 hud_spy::function_cf7a3ce6(self, dogtag.var_588e0374);
    level.var_44018194 hud_spy::function_b58e0471(self, var_73ab2455);
    level.var_44018194 hud_spy::function_ec7b95(self, dogtag.meansofdeath);
    level.var_44018194 hud_spy::function_a2471efa(self, dogtag.var_5b3a4d0a);
    self clientfield::set_to_player("corpse_entity_num", dogtag.clientnum);
}

