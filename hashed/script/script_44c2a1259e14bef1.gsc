// Atian COD Tools GSC CW decompiler test
#using script_3751b21462a54a7d;
#using script_24c32478acf44108;
#using script_72401f526ba71638;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_laststand.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_32e85820;

// Namespace namespace_32e85820/namespace_32e85820
// Params 0, eflags: 0x5
// Checksum 0x7ced9899, Offset: 0x228
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_36a2cb0be45d9374", &preinit, undefined, undefined, #"hash_13a43d760497b54d");
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 0, eflags: 0x6 linked
// Checksum 0x507d3909, Offset: 0x278
// Size: 0x304
function private preinit() {
    clientfield::register("toplayer", "fx_heal_aoe_player_clientfield", 1, 1, "counter");
    clientfield::register("scriptmover", "fx_heal_aoe_pillar_clientfield", 1, 1, "counter");
    clientfield::register("scriptmover", "fx_heal_aoe_bubble_clientfield", 1, 1, "int");
    namespace_1b527536::function_36e0540e(#"hash_7b5a77a85b0ffab7", 1, 50, #"field_upgrade_heal_aoe_item_sr");
    namespace_1b527536::function_36e0540e(#"hash_379869d5b6da974b", 1, 50, #"field_upgrade_heal_aoe_1_item_sr");
    namespace_1b527536::function_36e0540e(#"hash_37986ad5b6da98fe", 1, 50, #"field_upgrade_heal_aoe_2_item_sr");
    namespace_1b527536::function_36e0540e(#"hash_37986bd5b6da9ab1", 1, 50, #"field_upgrade_heal_aoe_3_item_sr");
    namespace_1b527536::function_36e0540e(#"hash_37986cd5b6da9c64", 1, 50, #"field_upgrade_heal_aoe_4_item_sr");
    namespace_1b527536::function_36e0540e(#"hash_37986dd5b6da9e17", 1, 50, #"field_upgrade_heal_aoe_5_item_sr");
    namespace_1b527536::function_dbd391bf(#"hash_7b5a77a85b0ffab7", &function_e190864a);
    namespace_1b527536::function_dbd391bf(#"hash_379869d5b6da974b", &function_1447ebb8);
    namespace_1b527536::function_dbd391bf(#"hash_37986ad5b6da98fe", &function_6ff0a318);
    namespace_1b527536::function_dbd391bf(#"hash_37986bd5b6da9ab1", &function_62280787);
    namespace_1b527536::function_dbd391bf(#"hash_37986cd5b6da9c64", &function_594c75d0);
    namespace_1b527536::function_dbd391bf(#"hash_37986dd5b6da9e17", &function_4a8d5852);
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 0, eflags: 0x2 linked
// Checksum 0x319b20f8, Offset: 0x588
// Size: 0x44
function heal_player() {
    self.health = self.var_66cb03ad;
    if (!self scene::is_igc_active()) {
        self clientfield::increment_to_player("fx_heal_aoe_player_clientfield", 1);
    }
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 0, eflags: 0x2 linked
// Checksum 0xc96b3992, Offset: 0x5d8
// Size: 0x208
function function_f823ab5e() {
    self.var_9cd2c51d.var_232f5c31 = gettime();
    foreach (player in getplayers()) {
        if (player laststand::player_is_in_laststand() || !isalive(player)) {
            continue;
        }
        if (isdefined(level.var_cbcc2ab7)) {
            if (![[ level.var_cbcc2ab7 ]](player)) {
                continue;
            }
        }
        if (player.var_66cb03ad - player.health > 100) {
            self zm_stats::increment_challenge_stat(#"hash_3b5e5bb023a2f505");
        }
        if (player.health < player.var_66cb03ad) {
            level scoreevents::doscoreeventcallback("scoreEventZM", {#attacker:self, #scoreevent:"healing_aura_heal_zm"});
            self stats::function_622feb0d(#"hash_7b5a77a85b0ffab7", #"hash_6104ccb8b9cd1659", 1);
            self stats::function_6fb0b113(#"hash_7b5a77a85b0ffab7", #"hash_6b473078d990e6b2");
        }
        player heal_player();
    }
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 1, eflags: 0x2 linked
// Checksum 0x7bc155b5, Offset: 0x7e8
// Size: 0x430
function function_e1dad5f7(var_c886f650 = 0) {
    self.var_9cd2c51d.var_232f5c31 = gettime();
    foreach (player in getplayers()) {
        if (isdefined(level.var_cbcc2ab7)) {
            if (![[ level.var_cbcc2ab7 ]](player)) {
                continue;
            }
        }
        if (player == self) {
            if (player.var_66cb03ad - player.health > 100) {
                self zm_stats::increment_challenge_stat(#"hash_3b5e5bb023a2f505");
            }
            if (player.health < player.var_66cb03ad) {
                level scoreevents::doscoreeventcallback("scoreEventZM", {#attacker:self, #scoreevent:"healing_aura_heal_zm"});
                self stats::function_622feb0d(#"hash_7b5a77a85b0ffab7", #"hash_6104ccb8b9cd1659", 1);
                self stats::function_6fb0b113(#"hash_7b5a77a85b0ffab7", #"hash_6b473078d990e6b2");
            }
            player.health = player.var_66cb03ad;
            if (!player scene::is_igc_active()) {
                player clientfield::increment_to_player("fx_heal_aoe_player_clientfield", 1);
            }
            continue;
        }
        if (player laststand::player_is_in_laststand()) {
            player thread function_5427514f(var_c886f650);
            player notify(#"hash_4d93608c4b0fd45a");
            player thread zm_laststand::auto_revive(self, undefined, undefined, undefined, 1);
            level scoreevents::doscoreeventcallback("scoreEventZM", {#attacker:self, #scoreevent:"healing_aura_revive_zm"});
            self stats::function_622feb0d(#"hash_7b5a77a85b0ffab7", #"hash_359bbe76d1d24148", 1);
            self zm_stats::increment_challenge_stat(#"hash_5f6b0b87e8f76ae1");
            continue;
        }
        if (player.var_66cb03ad - player.health > 100) {
            self zm_stats::increment_challenge_stat(#"hash_3b5e5bb023a2f505");
        }
        if (player.health < player.var_66cb03ad) {
            level scoreevents::doscoreeventcallback("scoreEventZM", {#attacker:self, #scoreevent:"healing_aura_heal_zm"});
            self stats::function_622feb0d(#"hash_7b5a77a85b0ffab7", #"hash_6104ccb8b9cd1659", 1);
            self stats::function_6fb0b113(#"hash_7b5a77a85b0ffab7", #"hash_6b473078d990e6b2");
        }
        player heal_player();
    }
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 1, eflags: 0x2 linked
// Checksum 0x138ae941, Offset: 0xc20
// Size: 0x8c
function function_5427514f(var_c886f650 = 0) {
    self endon(#"death");
    if (var_c886f650) {
        self.var_177876cb = self.var_ff5d288f;
    }
    self waittill(#"player_revived");
    self heal_player();
    if (var_c886f650) {
        self function_505c95d5();
    }
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 0, eflags: 0x2 linked
// Checksum 0x195a974e, Offset: 0xcb8
// Size: 0xa2
function function_505c95d5() {
    if (isdefined(self.var_177876cb)) {
        foreach (talent in self.var_177876cb) {
            self namespace_791d0451::function_3fecad82(talent, 0);
        }
    }
    self.var_177876cb = undefined;
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 0, eflags: 0x0
// Checksum 0x690a0b34, Offset: 0xd68
// Size: 0x130
function function_87d44a60() {
    nearbyzombies = getentitiesinradius(self.origin, 64, 15);
    foreach (zombie in nearbyzombies) {
        if (zombie.var_6f84b820 == #"normal") {
            zombie zombie_utility::setup_zombie_knockdown(self.origin);
            continue;
        }
        if (zombie.var_6f84b820 == #"special" || zombie.var_6f84b820 == #"elite") {
            zombie ai::stun(2);
        }
    }
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 1, eflags: 0x2 linked
// Checksum 0xd2cdffdf, Offset: 0xea0
// Size: 0x1ec
function function_451de831(var_c360c10f) {
    if (!isdefined(var_c360c10f)) {
        foreach (player in getplayers()) {
            nearbyzombies = getentitiesinradius(player.origin, 128, 15);
            foreach (zombie in nearbyzombies) {
                zombie.var_3f87fe17 = {#stun_time:gettime(), #player:self};
                if (zombie.var_6f84b820 == #"normal") {
                    zombie zombie_utility::setup_zombie_knockdown(self);
                    continue;
                }
                if (zombie.var_6f84b820 == #"special" || zombie.var_6f84b820 == #"elite") {
                    zombie ai::stun(2);
                }
            }
        }
    }
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 0, eflags: 0x2 linked
// Checksum 0x8d975414, Offset: 0x1098
// Size: 0x130
function function_27b2aab7() {
    foreach (player in getplayers()) {
        if (isalive(player)) {
            var_bf135e90 = spawn("script_model", player.origin);
            var_bf135e90 setmodel("tag_origin");
            var_bf135e90 linkto(player);
            var_bf135e90 clientfield::increment("fx_heal_aoe_pillar_clientfield");
            var_bf135e90 thread function_4c7c38cb();
        }
    }
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 0, eflags: 0x2 linked
// Checksum 0xede64ecc, Offset: 0x11d0
// Size: 0x4c
function function_4c7c38cb() {
    level endon(#"game_ended");
    self endon(#"death");
    wait(1);
    self delete();
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 1, eflags: 0x2 linked
// Checksum 0xd5fa6ccf, Offset: 0x1228
// Size: 0x4c
function function_e190864a(*params) {
    self namespace_1b527536::function_460882e2(1);
    function_27b2aab7();
    self function_f823ab5e();
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 1, eflags: 0x2 linked
// Checksum 0x30b27d2a, Offset: 0x1280
// Size: 0x118
function function_1447ebb8(*params) {
    self namespace_1b527536::function_460882e2(1);
    function_27b2aab7();
    self function_f823ab5e();
    foreach (player in getplayers()) {
        if (isdefined(level.var_cbcc2ab7)) {
            if (![[ level.var_cbcc2ab7 ]](player)) {
                continue;
            }
        }
        player thread function_b923a327(self);
        player thread function_381f09f3();
    }
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 1, eflags: 0x2 linked
// Checksum 0x44abfd40, Offset: 0x13a0
// Size: 0x12c
function function_6ff0a318(*params) {
    self namespace_1b527536::function_460882e2(1);
    function_27b2aab7();
    self function_f823ab5e();
    foreach (player in getplayers()) {
        if (isdefined(level.var_cbcc2ab7)) {
            if (![[ level.var_cbcc2ab7 ]](player)) {
                continue;
            }
        }
        player thread function_b923a327(self);
        player thread function_381f09f3();
    }
    self function_451de831();
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 1, eflags: 0x2 linked
// Checksum 0x23805f13, Offset: 0x14d8
// Size: 0x12c
function function_62280787(*params) {
    self namespace_1b527536::function_460882e2(1);
    function_27b2aab7();
    self thread function_e1dad5f7();
    foreach (player in getplayers()) {
        if (isdefined(level.var_cbcc2ab7)) {
            if (![[ level.var_cbcc2ab7 ]](player)) {
                continue;
            }
        }
        player thread function_b923a327(self);
        player thread function_381f09f3();
    }
    self function_451de831();
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 3, eflags: 0x2 linked
// Checksum 0x140ba422, Offset: 0x1610
// Size: 0x18c
function function_594c75d0(*params, var_c360c10f = undefined, var_a37a2188 = 0) {
    if (!var_a37a2188) {
        self namespace_1b527536::function_460882e2(1);
    }
    function_27b2aab7();
    self thread function_e1dad5f7(1);
    foreach (player in getplayers()) {
        if (isdefined(level.var_cbcc2ab7)) {
            if (![[ level.var_cbcc2ab7 ]](player)) {
                continue;
            }
        }
        if (isdefined(var_c360c10f)) {
            player thread function_b923a327(var_c360c10f);
        } else {
            player thread function_b923a327(self);
        }
        player thread function_381f09f3();
    }
    self function_451de831(var_c360c10f);
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 1, eflags: 0x2 linked
// Checksum 0xa80fc0e5, Offset: 0x17a8
// Size: 0x260
function function_4a8d5852(params) {
    self namespace_1b527536::function_460882e2(1);
    self endon(#"death");
    function_27b2aab7();
    self function_594c75d0(params);
    foreach (player in getplayers()) {
        if (isdefined(level.var_cbcc2ab7)) {
            if (![[ level.var_cbcc2ab7 ]](player)) {
                continue;
            }
        }
        var_bf135e90 = spawn("script_model", player.origin);
        var_6af41078 = spawn("script_model", (player.origin[0], player.origin[1], player.origin[2] + 10));
        var_6af41078.angles = (270, 0, 0);
        var_bf135e90 setmodel("tag_origin");
        var_6af41078 setmodel("tag_origin");
        var_bf135e90 clientfield::set("fx_heal_aoe_bubble_clientfield", 1);
        var_bf135e90.player = player;
        var_bf135e90.owner = self;
        var_bf135e90 thread function_6f2ddf8e();
        var_bf135e90 thread function_93b178ae();
        var_6af41078 thread function_93b178ae();
    }
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 1, eflags: 0x2 linked
// Checksum 0x377ab496, Offset: 0x1a10
// Size: 0xac
function function_b923a327(owner) {
    self endon(#"disconnect");
    if (!isalive(self) || self.sessionstate != "playing") {
        return;
    }
    if (self === owner) {
        self flag::increment("zm_field_upgrade_in_use");
    }
    wait(10);
    if (self === owner) {
        self flag::decrement("zm_field_upgrade_in_use");
    }
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 0, eflags: 0x2 linked
// Checksum 0x705edd45, Offset: 0x1ac8
// Size: 0x13a
function function_381f09f3() {
    self endon(#"death");
    self notify("10c9228d258d4bfa");
    self endon("10c9228d258d4bfa");
    if (!isalive(self) || self.sessionstate != "playing") {
        return;
    }
    count = 0;
    while (count <= 10) {
        if (!self laststand::player_is_in_laststand()) {
            currenthealth = self.health;
            regen_amount = 25;
            if (currenthealth + regen_amount > self.var_66cb03ad) {
                regen_amount = self.var_66cb03ad - currenthealth;
            }
            self.health += regen_amount;
            if (!self scene::is_igc_active()) {
                self clientfield::increment_to_player("fx_heal_aoe_player_clientfield", 1);
            }
        }
        count++;
        wait(1);
    }
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 2, eflags: 0x2 linked
// Checksum 0x279db0dd, Offset: 0x1c10
// Size: 0xf0
function function_92297dd0(var_c27b1726, var_c360c10f) {
    foreach (player in getplayers()) {
        if (distance2d(var_c27b1726, player.origin) <= 64) {
            if (player === var_c360c10f) {
                var_a37a2188 = 0;
            } else {
                var_a37a2188 = 1;
            }
            player function_594c75d0(undefined, var_c360c10f, var_a37a2188);
        }
    }
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 0, eflags: 0x2 linked
// Checksum 0xcb374627, Offset: 0x1d08
// Size: 0x4c
function function_93b178ae() {
    level endon(#"game_ended");
    self endon(#"death");
    wait(10);
    self delete();
}

// Namespace namespace_32e85820/namespace_32e85820
// Params 0, eflags: 0x2 linked
// Checksum 0x68a65f8e, Offset: 0x1d60
// Size: 0x56
function function_6f2ddf8e() {
    self endon(#"death");
    var_b9403c9 = self.origin;
    while (true) {
        function_92297dd0(var_b9403c9, self.owner);
        wait(1);
    }
}

