// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\scoreevents.gsc;
#using scripts\zm_common\zm_contracts.gsc;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace scoreevents;

// Namespace scoreevents/namespace_feb8f309
// Params 0, eflags: 0x5
// Checksum 0xf86d00c3, Offset: 0x268
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_2f9a92f69b207b7c", &preinit, undefined, undefined, undefined);
}

// Namespace scoreevents/namespace_feb8f309
// Params 0, eflags: 0x6 linked
// Checksum 0x48a99f69, Offset: 0x2b0
// Size: 0xcc
function private preinit() {
    registerscoreeventcallback("scoreEventSR", &scoreeventsr);
    level.var_ade393f4 = &function_ade393f4;
    level.var_f8b76690 = &function_f8b76690;
    level.var_88e6f8b7 = &function_88e6f8b7;
    level.var_24a17c08 = &function_24a17c08;
    callback::on_player_damage(&on_player_damage);
    callback::on_item_pickup(&on_item_pickup);
}

// Namespace scoreevents/namespace_feb8f309
// Params 1, eflags: 0x2 linked
// Checksum 0xb11e0e8e, Offset: 0x388
// Size: 0x4e8
function scoreeventsr(params) {
    if (is_true(params.allplayers)) {
        players = getplayers();
        foreach (player in players) {
            level doscoreeventcallback("scoreEventZM", {#attacker:player, #scoreevent:params.scoreevent, #enemy:params.enemy});
            if (params.scoreevent === "defend_pristine_zm" || params.scoreevent === "escort_pristine_zm") {
                player zm_stats::increment_challenge_stat(#"hash_66d504a1593b165");
                continue;
            }
            if (params.scoreevent === "hvt_quick_kill_zm") {
                player zm_stats::increment_challenge_stat(#"hash_44961f90979e3ba9");
            }
        }
    }
    if (is_true(params.nearbyplayers) && isdefined(params.location)) {
        if (!isdefined(params.var_b0a57f8c)) {
            params.var_b0a57f8c = 512;
        }
        players = getplayers(undefined, params.location, params.var_b0a57f8c);
        foreach (player in players) {
            if (params.scoreevent === "event_complete") {
                player contracts::increment_zm_contract(#"hash_3bf466d0a98eebc2");
                player function_b122e75f();
                continue;
            }
            level doscoreeventcallback("scoreEventZM", {#attacker:player, #scoreevent:params.scoreevent, #enemy:params.enemy});
            if (params.scoreevent === "secure_pristine_zm") {
                player zm_stats::increment_challenge_stat(#"hash_66d504a1593b165");
            }
        }
        return;
    }
    if (isdefined(params.attacker)) {
        level doscoreeventcallback("scoreEventZM", {#attacker:params.attacker, #scoreevent:params.scoreevent, #enemy:params.enemy});
        if (params.scoreevent === "demented_echo_kill_before_shriek_zm") {
            params.attacker zm_stats::increment_challenge_stat(#"hash_22485a4cae21822b");
        }
        return;
    }
    if (isarray(params.a_players)) {
        foreach (player in params.a_players) {
            if (params.scoreevent === "event_complete" && isalive(player)) {
                player function_b122e75f();
            }
        }
    }
}

// Namespace scoreevents/namespace_feb8f309
// Params 0, eflags: 0x2 linked
// Checksum 0x40da54df, Offset: 0x878
// Size: 0x74
function function_b122e75f() {
    var_237b2ba0 = "";
    if (isdefined(level.var_b48509f9)) {
        var_237b2ba0 = "event_complete_capsule_" + level.var_b48509f9;
        level doscoreeventcallback("scoreEventZM", {#attacker:self, #scoreevent:var_237b2ba0});
    }
}

// Namespace scoreevents/namespace_feb8f309
// Params 3, eflags: 0x2 linked
// Checksum 0xf3c7010a, Offset: 0x8f8
// Size: 0x3d4
function function_f8b76690(var_a0345f37, player, *weapon) {
    weaponslotid = weapon item_inventory::function_d768ea30();
    weapon_item = weapon.inventory.items[weaponslotid];
    if (weapon_item.var_387e74f4 === 1) {
        weapon zm_stats::increment_challenge_stat(#"hash_79f623602d23af5a");
    }
    if (weapon isinvehicle()) {
        weapon zm_stats::increment_challenge_stat(#"hash_2467f4d08b89456");
    }
    if (!isdefined(weapon.var_14c9514c)) {
        weapon.var_14c9514c = {};
    }
    if (!isdefined(weapon.var_14c9514c) || weapon.var_14c9514c.destination.targetname !== level.contentmanager.currentdestination.targetname) {
        weapon.var_14c9514c = {#destination:level.contentmanager.currentdestination, #var_3f8123b0:[]};
        if (!isdefined(weapon.var_14c9514c.var_3f8123b0)) {
            weapon.var_14c9514c.var_3f8123b0 = [];
        } else if (!isarray(weapon.var_14c9514c.var_3f8123b0)) {
            weapon.var_14c9514c.var_3f8123b0 = array(weapon.var_14c9514c.var_3f8123b0);
        }
        if (!isinarray(weapon.var_14c9514c.var_3f8123b0, player.archetype)) {
            weapon.var_14c9514c.var_3f8123b0[weapon.var_14c9514c.var_3f8123b0.size] = player.archetype;
        }
        return;
    }
    if ((player.var_6f84b820 === #"elite" || player.var_6f84b820 === #"special") && weapon.var_14c9514c.var_3f8123b0.size < 5) {
        if (!isdefined(weapon.var_14c9514c.var_3f8123b0)) {
            weapon.var_14c9514c.var_3f8123b0 = [];
        } else if (!isarray(weapon.var_14c9514c.var_3f8123b0)) {
            weapon.var_14c9514c.var_3f8123b0 = array(weapon.var_14c9514c.var_3f8123b0);
        }
        if (!isinarray(weapon.var_14c9514c.var_3f8123b0, player.archetype)) {
            weapon.var_14c9514c.var_3f8123b0[weapon.var_14c9514c.var_3f8123b0.size] = player.archetype;
        }
        if (weapon.var_14c9514c.var_3f8123b0.size === 5) {
            weapon zm_stats::increment_challenge_stat(#"hash_1eaffdbd7f765b07");
        }
    }
}

// Namespace scoreevents/namespace_feb8f309
// Params 3, eflags: 0x2 linked
// Checksum 0xae4fd7c7, Offset: 0xcd8
// Size: 0x28c
function function_ade393f4(var_a0345f37, player, weapon) {
    if (!zm_utility::is_player_valid(player, 0, 0)) {
        return;
    } else if (!isdefined(player.objective_data)) {
        player.objective_data = [];
    }
    if (killstreaks::is_killstreak_weapon(weapon) && isdefined(level.contentmanager.activeobjective)) {
        if (!isdefined(player.objective_data[weapon.statname]) || player.objective_data[weapon.statname].objective !== level.contentmanager.activeobjective) {
            player.objective_data[weapon.statname] = {#objective:level.contentmanager.activeobjective, #kill_count:0, #var_22835c3f:0};
        }
        player.objective_data[weapon.statname].kill_count++;
        if (player.objective_data[weapon.statname].kill_count === 10 && player.objective_data[weapon.statname].var_22835c3f === 0) {
            player.objective_data[weapon.statname].var_22835c3f = 1;
            player zm_stats::increment_challenge_stat(#"hash_36c9caf1c41a8356");
        }
    }
    if (level.contentmanager.activeobjective.content_script_name === "holdout") {
        if (var_a0345f37.var_1d8cde9 === 1) {
            player zm_stats::increment_challenge_stat(#"hash_57e42cdb892d3717");
            level doscoreeventcallback("scoreEventZM", {#attacker:player, #scoreevent:"holdout_barricade_finisher_zm", #enemy:var_a0345f37});
        }
    }
}

// Namespace scoreevents/namespace_feb8f309
// Params 1, eflags: 0x2 linked
// Checksum 0xa7faf58, Offset: 0xf70
// Size: 0x3b4
function function_88e6f8b7(params) {
    if (level.contentmanager.activeobjective.content_script_name === "retrieval" && isdefined(params.enemy)) {
        params.enemy function_513fa6e4(params.enemy.attacker);
    }
    if (isdefined(params.enemy.attackable) && params.enemy.attackable.targetname === "defend_object") {
        if (isdefined(params.eattacker) && zm_utility::is_player_valid(params.eattacker, 0, 0)) {
            if (isdefined(params.eattacker.objective_data[params.eattacker getentitynumber()])) {
                if (params.eattacker.objective_data[params.eattacker getentitynumber()].time > gettime() - 2000 && params.eattacker.objective_data[params.eattacker getentitynumber()].on_cooldown === 0) {
                    params.eattacker.objective_data[params.eattacker getentitynumber()].var_4480a428++;
                    params.eattacker.objective_data[params.eattacker getentitynumber()].time = gettime() + 2000;
                    if (params.eattacker.objective_data[params.eattacker getentitynumber()].var_4480a428 === 5) {
                        level doscoreeventcallback("scoreEventZM", {#attacker:params.eattacker, #scoreevent:"defend_cleanup_zm"});
                    }
                } else if (params.eattacker.objective_data[params.eattacker getentitynumber()].time < gettime()) {
                    params.eattacker.objective_data[params.eattacker getentitynumber()] = {#player:params.eattacker, #time:gettime(), #var_4480a428:1, #on_cooldown:0};
                }
                return;
            }
            params.eattacker.objective_data[params.eattacker getentitynumber()] = {#player:params.eattacker, #time:gettime(), #var_4480a428:1, #on_cooldown:0};
        }
    }
}

// Namespace scoreevents/namespace_feb8f309
// Params 1, eflags: 0x2 linked
// Checksum 0x882a923c, Offset: 0x1330
// Size: 0x5c
function on_player_damage(params) {
    if (isai(params.eattacker) && is_true(self.var_28107825)) {
        function_46e3cf42(params.eattacker, self);
    }
}

// Namespace scoreevents/namespace_feb8f309
// Params 2, eflags: 0x2 linked
// Checksum 0x5db1c290, Offset: 0x1398
// Size: 0x7e
function function_46e3cf42(zombie, player) {
    if (zm_utility::is_player_valid(player, 0, 0) && is_true(player.var_28107825)) {
        zombie.var_9624a42c = {#player:player, #time:gettime()};
    }
}

// Namespace scoreevents/namespace_feb8f309
// Params 1, eflags: 0x2 linked
// Checksum 0xcafb0f60, Offset: 0x1420
// Size: 0xbc
function function_513fa6e4(player) {
    if (isdefined(self.var_9624a42c)) {
        if (zm_utility::is_player_valid(self.var_9624a42c.player, 0, 0) && player !== self.var_9624a42c.player && self.var_9624a42c.time > gettime() - 10000) {
            level doscoreeventcallback("scoreEventZM", {#attacker:player, #scoreevent:"retrieve_battery_guardian_zm"});
        }
    }
}

// Namespace scoreevents/namespace_feb8f309
// Params 0, eflags: 0x2 linked
// Checksum 0x7a6f24b7, Offset: 0x14e8
// Size: 0xd4
function function_31553fb3() {
    self.var_11b51fc0 = gettime();
    if (!isdefined(self.var_ce436417)) {
        self.var_ce436417 = gettime();
        level doscoreeventcallback("scoreEventZM", {#attacker:self, #scoreevent:"escort_payload_progress_zm"});
        return;
    }
    if (self.var_11b51fc0 - 5000 > self.var_ce436417) {
        self.var_ce436417 = gettime();
        level doscoreeventcallback("scoreEventZM", {#attacker:self, #scoreevent:"escort_payload_progress_zm"});
    }
}

// Namespace scoreevents/namespace_feb8f309
// Params 1, eflags: 0x2 linked
// Checksum 0x2a410d60, Offset: 0x15c8
// Size: 0x214
function on_item_pickup(params) {
    item = params.item;
    if (isplayer(self)) {
        if (isdefined(item.itementry.name)) {
            if ((item.itementry.name === #"scrap_rare_item_sr" || item.itementry.name === #"scrap_item_sr") && is_true(item.var_569199b9)) {
                self zm_stats::increment_challenge_stat(#"hash_5d77c9a44bc6f7eb");
            } else if (item.itementry.name === #"resource_item_harvesting_sr" && is_true(self.var_f163034c)) {
                if (!isdefined(self.var_664db4ed)) {
                    self.var_664db4ed = 0;
                }
                self.var_664db4ed++;
            } else if (item.itementry.name === #"resource_item_sr" && item.itementry.var_31dcb18d === #"hash_3b44370452dc91f8") {
                self zm_stats::increment_challenge_stat(#"hash_3c8437e4e9f1e638");
            }
        }
        if (is_true(item.var_387e74f4) && item.itementry.itemtype === #"weapon") {
            self thread function_c62f5aff(item);
        }
    }
}

// Namespace scoreevents/namespace_feb8f309
// Params 1, eflags: 0x2 linked
// Checksum 0x59ab026a, Offset: 0x17e8
// Size: 0x13e
function function_c62f5aff(item) {
    self endon(#"death");
    var_a6d31447 = undefined;
    endtime = gettime() + 5000;
    time = gettime();
    while (!isdefined(var_a6d31447) && time < endtime) {
        time = gettime();
        foreach (inventory_item in self.inventory.items) {
            if (inventory_item.id === item.id && inventory_item.networkid === item.networkid) {
                var_a6d31447 = inventory_item;
                break;
            }
        }
        waitframe(1);
    }
    if (isdefined(var_a6d31447)) {
        var_a6d31447.var_387e74f4 = 1;
    }
}

// Namespace scoreevents/namespace_feb8f309
// Params 0, eflags: 0x2 linked
// Checksum 0x891daa74, Offset: 0x1930
// Size: 0xcc
function function_24a17c08() {
    level endon(#"end_game");
    self endon(#"death");
    self.var_f163034c = 1;
    self.var_664db4ed = 0;
    while (true) {
        if (self.var_664db4ed >= 3) {
            level doscoreeventcallback("scoreEventZM", {#attacker:self, #scoreevent:"jump_pads_collect_3_or_more_containers_zm"});
            return;
        }
        if (!self zm_utility::is_jumping()) {
            return;
        }
        wait(0.25);
    }
}

