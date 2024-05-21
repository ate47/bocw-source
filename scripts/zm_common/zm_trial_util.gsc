// Atian COD Tools GSC CW decompiler test
#using script_1de6f3c239229d19;
#using script_2595527427ea71eb;
#using scripts\zm_common\trials\zm_trial_disable_perks.gsc;
#using scripts\zm_common\zm_perks.gsc;
#using scripts\zm_common\zm_trial.gsc;
#using scripts\zm_common\zm_loadout.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace zm_trial_util;

// Namespace zm_trial_util/zm_trial_util
// Params 0, eflags: 0x5
// Checksum 0x312252c8, Offset: 0x4b0
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"zm_trial_util", &preinit, &finalize_clientfields, undefined, undefined);
}

// Namespace zm_trial_util/zm_trial_util
// Params 0, eflags: 0x6 linked
// Checksum 0x17e729e4, Offset: 0x508
// Size: 0x34
function private preinit() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    level.var_f995ece6 = zm_trial_timer::register();
}

// Namespace zm_trial_util/zm_trial_util
// Params 0, eflags: 0x2 linked
// Checksum 0x7784f30a, Offset: 0x548
// Size: 0x44
function function_97444b02() {
    self clientfield::increment_to_player("zm_trials_weapon_locked");
    self playsoundtoplayer(#"hash_5590bcb35a1c2562", self);
}

// Namespace zm_trial_util/zm_trial_util
// Params 0, eflags: 0x2 linked
// Checksum 0x5d064a5a, Offset: 0x598
// Size: 0x13c
function function_9bf8e274() {
    self.var_b6840ea0 = 1;
    self disableweaponswitchhero();
    self function_21ea8f2b(1);
    foreach (var_5a1e3e5b in level.hero_weapon) {
        foreach (w_hero in var_5a1e3e5b) {
            self lockweapon(w_hero, 1, 1);
        }
    }
}

// Namespace zm_trial_util/zm_trial_util
// Params 0, eflags: 0x2 linked
// Checksum 0x3e51e4e9, Offset: 0x6e0
// Size: 0x134
function function_73ff0096() {
    self.var_b6840ea0 = undefined;
    self enableweaponswitchhero();
    self function_21ea8f2b(0);
    foreach (var_5a1e3e5b in level.hero_weapon) {
        foreach (w_hero in var_5a1e3e5b) {
            self unlockweapon(w_hero);
        }
    }
}

// Namespace zm_trial_util/zm_trial_util
// Params 0, eflags: 0x2 linked
// Checksum 0xa29e3bd4, Offset: 0x820
// Size: 0xac
function function_2ee2d021() {
    if (!level flag::get(#"trial_failed") && clientfield::get_world_uimodel("ZMHudGlobal.trials.gameState") != 2) {
        clientfield::set_world_uimodel("ZMHudGlobal.trials.failurePlayer", 0);
        clientfield::set_world_uimodel("ZMHudGlobal.trials.failureReason", #"hash_cd63faed592da03");
        set_game_state(3);
    }
}

// Namespace zm_trial_util/zm_trial_util
// Params 0, eflags: 0x2 linked
// Checksum 0x6c66734c, Offset: 0x8d8
// Size: 0x2c
function function_f79b96ac() {
    wait(1);
    clientfield::set_world_uimodel("ZMHudGlobal.trials.showScoreboard", 1);
}

// Namespace zm_trial_util/zm_trial_util
// Params 0, eflags: 0x6 linked
// Checksum 0x247bf7ee, Offset: 0x910
// Size: 0x574
function private finalize_clientfields() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    clientfield::register("world", "ZMHudGlobal.trials.trialIndex", 1, getminbitcountfornum(15), "int");
    clientfield::register("toplayer", "" + #"hash_6536ca4fb2858a9f", 16000, 1, "int");
    clientfield::function_5b7d846d("ZMHudGlobal.trials.roundNumber", 1, getminbitcountfornum(30), "int");
    clientfield::function_5b7d846d("ZMHudGlobal.trials.roundSuccess", 1, getminbitcountfornum(1), "int");
    clientfield::function_5b7d846d("ZMHudGlobal.trials.strikes", 1, getminbitcountfornum(3), "int");
    clientfield::function_5b7d846d("ZMHudGlobal.trials.disablePerks", 1, getminbitcountfornum(1), "int");
    clientfield::function_5b7d846d("ZMHudGlobal.trials.disableGun", 1, getminbitcountfornum(1), "int");
    clientfield::function_5b7d846d("ZMHudGlobal.trials.disableEquip", 1, getminbitcountfornum(1), "int");
    clientfield::function_5b7d846d("ZMHudGlobal.trials.disableSpecial", 1, getminbitcountfornum(1), "int");
    clientfield::function_5b7d846d("ZMHudGlobal.trials.disableAbilities", 1, getminbitcountfornum(1), "int");
    clientfield::register("toplayer", "zm_trials_timer", 1, getminbitcountfornum(540), "int");
    clientfield::register("toplayer", "zm_trials_weapon_locked", 1, 1, "counter");
    clientfield::function_5b7d846d("ZMHudGlobal.trials.playerCounterMax", 1, getminbitcountfornum(1000), "int");
    clientfield::function_5b7d846d("ZMHudGlobal.trials.gameState", 1, 2, "int");
    clientfield::function_5b7d846d("ZMHudGlobal.trials.failurePlayer", 1, 4, "int");
    clientfield::function_d89771ec("string", "ZMHudGlobal.trials.failureReason", 1);
    clientfield::function_5b7d846d("ZMHudGlobal.trials.gameStartTime", 1, 31, "int");
    clientfield::function_5b7d846d("ZMHudGlobal.trials.showScoreboard", 1, getminbitcountfornum(1), "int");
    clientfield::function_5b7d846d("ZMHudGlobal.trials.globalCheckState", 1, getminbitcountfornum(2), "int");
    clientfield::function_5b7d846d("ZMHudGlobal.trials.globalCounterValue", 1, getminbitcountfornum(1000), "int");
    clientfield::function_5b7d846d("ZMHudGlobal.trials.globalCounterMax", 1, getminbitcountfornum(1000), "int");
    clientfield::function_5b7d846d("ZMHudGlobal.trials.hudDeactivated", 1, 1, "int");
    for (i = 0; i < 5; i++) {
        clientfield::function_5b7d846d("PlayerList.client" + i + "." + "trialsCheckState", 1, 2, "int");
        clientfield::function_5b7d846d("PlayerList.client" + i + "." + "trialsCounterValue", 1, getminbitcountfornum(1000), "int");
    }
    level thread function_8f7e46db();
}

// Namespace zm_trial_util/zm_trial_util
// Params 0, eflags: 0x6 linked
// Checksum 0xea3afcf, Offset: 0xe90
// Size: 0xcc
function private function_8f7e46db() {
    level flag::wait_till("start_zombie_round_logic");
    assert(isdefined(level.var_6d87ac05) && isdefined(level.var_6d87ac05.index));
    if (isdefined(level.var_6d87ac05) && isdefined(level.var_6d87ac05.index)) {
        level clientfield::set("ZMHudGlobal.trials.trialIndex", level.var_6d87ac05.index);
    }
    clientfield::set_world_uimodel("ZMHudGlobal.trials.failurePlayer", 0);
}

// Namespace zm_trial_util/zm_trial_util
// Params 0, eflags: 0x2 linked
// Checksum 0xe9dbed5f, Offset: 0xf68
// Size: 0x44
function function_eaa44cea() {
    assert(isdefined(level.var_21e22beb));
    clientfield::set_world_uimodel("ZMHudGlobal.trials.gameStartTime", level.var_21e22beb);
}

// Namespace zm_trial_util/zm_trial_util
// Params 1, eflags: 0x2 linked
// Checksum 0x59a87c5a, Offset: 0xfb8
// Size: 0xc
function function_e47f4e66(*islocked) {
    
}

// Namespace zm_trial_util/zm_trial_util
// Params 1, eflags: 0x2 linked
// Checksum 0x3fdef5cf, Offset: 0xfd0
// Size: 0xc
function function_88805385(*b_locked) {
    
}

// Namespace zm_trial_util/zm_trial_util
// Params 1, eflags: 0x2 linked
// Checksum 0xa7f97ba1, Offset: 0xfe8
// Size: 0xc
function function_21ea8f2b(*b_locked) {
    
}

// Namespace zm_trial_util/zm_trial_util
// Params 1, eflags: 0x2 linked
// Checksum 0x83077d95, Offset: 0x1000
// Size: 0x4c
function start_timer(seconds) {
    assert(seconds <= 540);
    self clientfield::set_to_player("zm_trials_timer", seconds);
}

// Namespace zm_trial_util/zm_trial_util
// Params 0, eflags: 0x2 linked
// Checksum 0xcad7b087, Offset: 0x1058
// Size: 0x24
function stop_timer() {
    self clientfield::set_to_player("zm_trials_timer", 0);
}

// Namespace zm_trial_util/zm_trial_util
// Params 3, eflags: 0x2 linked
// Checksum 0xf820be90, Offset: 0x1088
// Size: 0xdc
function function_128378c9(n_timer, var_97fd1b64 = 1, var_779bd906 = #"") {
    if (!level.var_f995ece6 zm_trial_timer::is_open(self)) {
        level.var_f995ece6 zm_trial_timer::open(self);
        level.var_f995ece6 zm_trial_timer::set_under_round_rules(self, var_97fd1b64);
        level.var_f995ece6 zm_trial_timer::set_timer_text(self, var_779bd906);
        self start_timer(n_timer);
    }
}

// Namespace zm_trial_util/zm_trial_util
// Params 0, eflags: 0x2 linked
// Checksum 0x3a9104a9, Offset: 0x1170
// Size: 0x5c
function function_885fb2c8() {
    if (level.var_f995ece6 zm_trial_timer::is_open(self)) {
        level.var_f995ece6 zm_trial_timer::close(self);
        self stop_timer();
    }
}

// Namespace zm_trial_util/zm_trial_util
// Params 1, eflags: 0x2 linked
// Checksum 0x2242d59f, Offset: 0x11d8
// Size: 0x5c
function function_2976fa44(var_71fbbf01) {
    assert(var_71fbbf01 >= 0 && var_71fbbf01 <= 1000);
    level clientfield::set_world_uimodel("ZMHudGlobal.trials.globalCounterMax", var_71fbbf01);
}

// Namespace zm_trial_util/zm_trial_util
// Params 2, eflags: 0x2 linked
// Checksum 0x4b47beea, Offset: 0x1240
// Size: 0x13c
function function_dace284(var_96936cca, b_mute = 0) {
    assert(var_96936cca >= 0 && var_96936cca <= 1000);
    if (var_96936cca >= 1 && !b_mute) {
        foreach (e_player in level.players) {
            e_player playsoundtoplayer(#"hash_2ef2e5af521e9817", e_player);
        }
    }
    level clientfield::set_world_uimodel("ZMHudGlobal.trials.globalCheckState", 1);
    level clientfield::set_world_uimodel("ZMHudGlobal.trials.globalCounterValue", var_96936cca);
}

// Namespace zm_trial_util/zm_trial_util
// Params 1, eflags: 0x0
// Checksum 0x4eecacf1, Offset: 0x1388
// Size: 0x14c
function function_7d32b7d0(var_acc46b81) {
    assert(var_acc46b81 == 0 || var_acc46b81 == 1);
    level clientfield::set_world_uimodel("ZMHudGlobal.trials.globalCounterValue", 0);
    if (var_acc46b81 == 0) {
        level clientfield::set_world_uimodel("ZMHudGlobal.trials.globalCheckState", 2);
        return;
    }
    foreach (e_player in level.players) {
        e_player playsoundtoplayer(#"hash_2ef2e5af521e9817", e_player);
    }
    level clientfield::set_world_uimodel("ZMHudGlobal.trials.globalCheckState", 3);
}

// Namespace zm_trial_util/zm_trial_util
// Params 0, eflags: 0x2 linked
// Checksum 0x42cf758c, Offset: 0x14e0
// Size: 0x1c
function function_f3dbeda7() {
    clientfield::set_world_uimodel("ZMHudGlobal.trials.globalCheckState", 0);
}

// Namespace zm_trial_util/zm_trial_util
// Params 1, eflags: 0x0
// Checksum 0xfc398307, Offset: 0x1508
// Size: 0x5c
function function_c2cd0cba(var_71fbbf01) {
    assert(var_71fbbf01 >= 0 && var_71fbbf01 <= 1000);
    level clientfield::set_world_uimodel("ZMHudGlobal.trials.playerCounterMax", var_71fbbf01);
}

// Namespace zm_trial_util/zm_trial_util
// Params 2, eflags: 0x0
// Checksum 0xd46f60c9, Offset: 0x1570
// Size: 0x134
function function_2190356a(var_96936cca, b_mute = 0) {
    assert(isplayer(self), "<unknown string>");
    assert(var_96936cca >= 0 && var_96936cca <= 1000);
    if (var_96936cca >= 1 && !b_mute) {
        self playsoundtoplayer(#"hash_1377aa36d8ba27e1", self);
    }
    clientfield::set_world_uimodel("PlayerList.client" + self.entity_num + "." + "trialsCheckState", 1);
    clientfield::set_world_uimodel("PlayerList.client" + self.entity_num + "." + "trialsCounterValue", var_96936cca);
}

// Namespace zm_trial_util/zm_trial_util
// Params 1, eflags: 0x0
// Checksum 0x9fb7b393, Offset: 0x16b0
// Size: 0x144
function function_63060af4(var_acc46b81) {
    assert(isplayer(self));
    assert(var_acc46b81 == 0 || var_acc46b81 == 1);
    clientfield::set_world_uimodel("PlayerList.client" + self.entity_num + "." + "trialsCounterValue", 0);
    if (var_acc46b81 == 0) {
        clientfield::set_world_uimodel("PlayerList.client" + self.entity_num + "." + "trialsCheckState", 2);
        return;
    }
    self playsoundtoplayer(#"hash_1377aa36d8ba27e1", self);
    clientfield::set_world_uimodel("PlayerList.client" + self.entity_num + "." + "trialsCheckState", 3);
}

// Namespace zm_trial_util/zm_trial_util
// Params 0, eflags: 0x0
// Checksum 0x306c0266, Offset: 0x1800
// Size: 0x64
function function_f3aacffb() {
    assert(isplayer(self));
    clientfield::set_world_uimodel("PlayerList.client" + self.entity_num + "." + "trialsCheckState", 0);
}

// Namespace zm_trial_util/zm_trial_util
// Params 1, eflags: 0x2 linked
// Checksum 0x45325216, Offset: 0x1870
// Size: 0x24
function set_game_state(game_state) {
    clientfield::set_world_uimodel("ZMHudGlobal.trials.gameState", game_state);
}

// Namespace zm_trial_util/zm_trial_util
// Params 2, eflags: 0x2 linked
// Checksum 0x188b319, Offset: 0x18a0
// Size: 0xbc
function function_58292c4a(reason, var_eeb30248 = undefined) {
    assert(clientfield::get_world_uimodel("<unknown string>") == 1);
    var_ccabdce8 = 0;
    if (isdefined(var_eeb30248)) {
        var_ccabdce8 = function_1e223bce(var_eeb30248);
    }
    clientfield::set_world_uimodel("ZMHudGlobal.trials.failurePlayer", var_ccabdce8);
    clientfield::set_world_uimodel("ZMHudGlobal.trials.failureReason", reason);
}

// Namespace zm_trial_util/zm_trial_util
// Params 1, eflags: 0x2 linked
// Checksum 0xe44ec702, Offset: 0x1968
// Size: 0x36e
function function_3f8a4145(var_26f4f16d) {
    assert(isdefined(self.var_c27f1e90));
    assert(self.var_c27f1e90.size >= 4);
    var_806e2de0 = {};
    var_806e2de0.var_149ec45c = [];
    var_806e2de0.var_8f0c164f = [];
    for (slot = 0; slot < 4; slot++) {
        vapor = self.var_c27f1e90[slot];
        var_bf4e9328 = isinarray(self.var_466b927f, vapor);
        var_d84249cb = var_26f4f16d && zm_perks::function_e56d8ef4(vapor);
        if (var_bf4e9328 && !var_d84249cb) {
            if (self.var_c4193958[slot] !== "") {
                var_806e2de0.var_c4193958[slot] = vapor;
            }
            self notify(vapor + "_stop", {#var_613b7621:!var_d84249cb, #var_fe7072f6:1});
            assert(isdefined(level.var_5355c665));
            if (isdefined(level.var_5355c665[vapor])) {
                var_e6aaa1c2 = level.var_5355c665[vapor];
                self notify(var_e6aaa1c2 + "_stop", {#var_613b7621:!var_d84249cb});
            }
            if (vapor == #"specialty_additionalprimaryweapon") {
                var_806e2de0.additional_primary_weapon = self.var_2a62e678;
            }
            var_806e2de0.var_149ec45c[slot] = 1;
            var_806e2de0.var_8f0c164f[slot] = vapor;
            continue;
        }
        var_806e2de0.var_149ec45c[slot] = 0;
    }
    if (self.var_67ba1237.size) {
        var_806e2de0.var_724d826b = arraycopy(self.var_67ba1237);
        var_806e2de0.var_8dee79a9 = self.var_1eba264f;
        var_806e2de0.var_d3f0257d = self.var_b773066d;
        foreach (var_6cbabb29 in self.var_67ba1237) {
            self notify(var_6cbabb29 + "_stop", {#var_613b7621:1, #var_fe7072f6:1});
        }
        if (isdefined(self.var_64f51f65)) {
            var_806e2de0.additional_primary_weapon = self.var_64f51f65;
            var_806e2de0.var_1596d94c = self.var_64f51f65;
        }
    }
    return var_806e2de0;
}

// Namespace zm_trial_util/zm_trial_util
// Params 1, eflags: 0x2 linked
// Checksum 0x96de8c4c, Offset: 0x1ce0
// Size: 0x2a2
function function_d37a769(var_806e2de0) {
    assert(isdefined(self.var_c27f1e90));
    assert(self.var_c27f1e90.size >= 4);
    assert(var_806e2de0.var_149ec45c.size == 4);
    level.var_bd1e770b = 1;
    for (slot = 0; slot < 4; slot++) {
        if (isdefined(var_806e2de0.var_8f0c164f[slot])) {
            self.var_c27f1e90[slot] = var_806e2de0.var_8f0c164f[slot];
        }
        vapor = self.var_c27f1e90[slot];
        if (var_806e2de0.var_149ec45c[slot] || self zm_perks::function_e56d8ef4(vapor) && !zm_trial_disable_perks::is_active(1)) {
            if (isdefined(var_806e2de0.var_c4193958) && isdefined(var_806e2de0.var_c4193958[slot])) {
                vapor = var_806e2de0.var_c4193958[slot];
                self.var_c4193958[slot] = vapor;
                self.var_c27f1e90[slot] = vapor;
            }
            self zm_perks::function_81bc6765(slot, level._custom_perks[vapor].alias);
            self zm_perks::function_9bdf581f(vapor, slot);
        }
    }
    if (isarray(var_806e2de0.var_724d826b)) {
        self.var_1eba264f = var_806e2de0.var_8dee79a9;
        self.var_b773066d = var_806e2de0.var_d3f0257d;
        foreach (var_16c042b8 in var_806e2de0.var_724d826b) {
            self zm_perks::function_a7ae070c(var_16c042b8);
        }
    }
    level.var_bd1e770b = undefined;
}

// Namespace zm_trial_util/zm_trial_util
// Params 1, eflags: 0x2 linked
// Checksum 0x80ef34b6, Offset: 0x1f90
// Size: 0x176
function function_7f999aa0(var_806e2de0) {
    slot = self zm_perks::function_c1efcc57(#"specialty_additionalprimaryweapon");
    var_4493e3e1 = isarray(var_806e2de0.var_724d826b) && isinarray(var_806e2de0.var_724d826b, #"specialty_additionalprimaryweapon");
    if ((var_4493e3e1 || slot != -1) && (var_4493e3e1 || var_806e2de0.var_149ec45c[slot] || zm_perks::function_e56d8ef4(#"specialty_additionalprimaryweapon")) && isdefined(var_806e2de0.additional_primary_weapon)) {
        if (var_4493e3e1 || isinarray(self.var_466b927f, #"specialty_additionalprimaryweapon")) {
            if (self hasweapon(var_806e2de0.additional_primary_weapon)) {
                self notify(#"hash_29c66728ccd27f03", {#weapon:var_806e2de0.additional_primary_weapon});
            }
        }
    }
}

// Namespace zm_trial_util/zm_trial_util
// Params 0, eflags: 0x2 linked
// Checksum 0xf1e6f52d, Offset: 0x2110
// Size: 0xa8
function function_8036c103() {
    a_structs = struct::get_array("perk_vapor_altar");
    foreach (s_struct in a_structs) {
        s_struct zm_perks::function_efd2c9e6();
    }
}

// Namespace zm_trial_util/zm_trial_util
// Params 0, eflags: 0x2 linked
// Checksum 0x66c2d8d6, Offset: 0x21c0
// Size: 0xa8
function function_302c6014() {
    a_structs = struct::get_array("perk_vapor_altar");
    foreach (s_struct in a_structs) {
        s_struct zm_perks::function_1e721859();
    }
}

// Namespace zm_trial_util/zm_trial_util
// Params 0, eflags: 0x2 linked
// Checksum 0x7f71db3b, Offset: 0x2270
// Size: 0x94
function function_eea26e56() {
    if (!is_true(level.var_a8d3f80b) && isdefined(level.pap_machine) && level flag::get("pap_machine_active")) {
        level.var_a8d3f80b = 1;
        if (isdefined(level.var_2d96b859)) {
            self [[ level.var_2d96b859 ]](0);
        }
        return;
    }
    level.var_a8d3f80b = 0;
}

// Namespace zm_trial_util/zm_trial_util
// Params 0, eflags: 0x2 linked
// Checksum 0x5cd65151, Offset: 0x2310
// Size: 0x5e
function function_ef1fce77() {
    if (isdefined(level.pap_machine) && is_true(level.var_a8d3f80b)) {
        if (isdefined(level.var_2d96b859)) {
            [[ level.var_2d96b859 ]](1);
        }
        level.var_a8d3f80b = undefined;
    }
}

// Namespace zm_trial_util/zm_trial_util
// Params 0, eflags: 0x2 linked
// Checksum 0x93bcf951, Offset: 0x2378
// Size: 0x24
function function_8cdbf9f0() {
    luinotifyevent(#"hash_6b83e3eca730e165", 0);
}

// Namespace zm_trial_util/zm_trial_util
// Params 1, eflags: 0x2 linked
// Checksum 0x8d5fafa8, Offset: 0x23a8
// Size: 0x24
function function_96e10d88(successful) {
    clientfield::set_world_uimodel("ZMHudGlobal.trials.roundSuccess", successful);
}

// Namespace zm_trial_util/zm_trial_util
// Params 1, eflags: 0x2 linked
// Checksum 0x19800cab, Offset: 0x23d8
// Size: 0xaa
function function_1e223bce(players) {
    bitarray = 0;
    foreach (player in players) {
        bitarray |= 1 << player getentitynumber();
    }
    return bitarray;
}

// Namespace zm_trial_util/zm_trial_util
// Params 1, eflags: 0x0
// Checksum 0x9011e451, Offset: 0x2490
// Size: 0x3e
function function_85d088ed(player) {
    bitarray = 0;
    bitarray |= 1 << player getentitynumber();
    return bitarray;
}

// Namespace zm_trial_util/zm_trial_util
// Params 1, eflags: 0x2 linked
// Checksum 0xec9a3995, Offset: 0x24d8
// Size: 0xac
function function_7dbb1712(forceupdate) {
    weapon = self getcurrentweapon();
    if (self function_635f9c02(weapon)) {
        self function_e47f4e66(1);
        return;
    }
    if (is_true(forceupdate) || !is_true(self.var_16735873)) {
        self function_e47f4e66(0);
    }
}

// Namespace zm_trial_util/zm_trial_util
// Params 1, eflags: 0x2 linked
// Checksum 0xac670245, Offset: 0x2590
// Size: 0x24
function function_79518194(*eventstruct) {
    function_7dbb1712(0);
}

// Namespace zm_trial_util/zm_trial_util
// Params 2, eflags: 0x2 linked
// Checksum 0x2fbe456d, Offset: 0x25c0
// Size: 0x3e0
function function_dc9ab223(b_locked = 1, var_1d9fd2ff = 0) {
    if (b_locked) {
        foreach (weapon in zm_loadout::function_5a5a742a("lethal_grenade")) {
            self lockweapon(weapon, 1, 1);
            self function_88805385(1);
        }
        if (var_1d9fd2ff) {
            foreach (weapon in zm_loadout::function_5a5a742a("tactical_grenade")) {
                if (is_true(weapon.ismeleeweapon)) {
                    self lockweapon(weapon, 1, 1);
                }
                if (weapon.dualwieldweapon != level.weaponnone && is_true(weapon.dualwieldweapon.ismeleeweapon)) {
                    self lockweapon(weapon.dualwieldweapon, 1, 1);
                }
            }
        }
        self thread function_d0348c2c();
        return;
    }
    foreach (weapon in zm_loadout::function_5a5a742a("lethal_grenade")) {
        self unlockweapon(weapon);
        self function_88805385(0);
    }
    if (var_1d9fd2ff) {
        foreach (weapon in zm_loadout::function_5a5a742a("tactical_grenade")) {
            if (is_true(weapon.ismeleeweapon)) {
                self unlockweapon(weapon);
            }
            if (weapon.dualwieldweapon != level.weaponnone && is_true(weapon.dualwieldweapon.ismeleeweapon)) {
                self unlockweapon(weapon.dualwieldweapon);
            }
        }
    }
}

// Namespace zm_trial_util/zm_trial_util
// Params 1, eflags: 0x2 linked
// Checksum 0x83d9b3c1, Offset: 0x29a8
// Size: 0x168
function function_8677ce00(b_locked = 1) {
    a_weapons = self getweaponslist(1);
    if (b_locked) {
        foreach (weapon in a_weapons) {
            if (!self function_635f9c02(weapon)) {
                self lockweapon(weapon, 0, 1);
            }
        }
        return;
    }
    foreach (weapon in a_weapons) {
        self unlockweapon(weapon);
    }
}

// Namespace zm_trial_util/zm_trial_util
// Params 1, eflags: 0x2 linked
// Checksum 0x1c37370c, Offset: 0x2b18
// Size: 0x354
function function_d0348c2c(var_69cbd99d = 0) {
    self endon(#"disconnect");
    if (var_69cbd99d) {
        while ((self isthrowinggrenade() || self isusingoffhand() || self function_55acff10()) && !self fragbuttonpressed()) {
            waitframe(1);
        }
    }
    if (self isusingoffhand()) {
        if ((!isdefined(level.w_homunculus) || !self zm_loadout::function_393977df("lethal_grenade", level.w_homunculus)) && (!isdefined(level.w_homunculus_upgraded) || !self zm_loadout::function_393977df("lethal_grenade", level.w_homunculus_upgraded))) {
            self forceoffhandend();
        }
    }
    if (isarray(self.mini_turrets)) {
        arrayremovevalue(self.mini_turrets, undefined);
        foreach (mini_turret in self.mini_turrets) {
            mini_turret dodamage(mini_turret.health + 100, mini_turret.origin);
        }
    }
    if (isarray(self.activeproximitygrenades)) {
        arrayremovevalue(self.activeproximitygrenades, undefined);
        foreach (e_claymore in self.activeproximitygrenades) {
            e_claymore dodamage(e_claymore.var_966835e3, e_claymore.origin);
        }
    }
    var_b9721d87 = self offhandweaponsenabled();
    self disableoffhandweapons();
    wait(0.25);
    if (var_b9721d87) {
        self enableoffhandweapons();
    }
}

// Namespace zm_trial_util/zm_trial_util
// Params 2, eflags: 0x2 linked
// Checksum 0x471c9d1a, Offset: 0x2e78
// Size: 0x122
function function_b142d49f(weapon, var_ef2d79a9 = 1) {
    self endon(#"disconnect");
    w_current = self getcurrentweapon();
    if (var_ef2d79a9) {
        while (weapon === w_current && self isfiring() && !self ismeleeing() && is_true(weapon.isburstfire)) {
            waitframe(1);
        }
        return;
    }
    while (self isfiring() && !self ismeleeing() && is_true(weapon.isburstfire)) {
        waitframe(1);
    }
}

// Namespace zm_trial_util/zm_trial_util
// Params 5, eflags: 0x2 linked
// Checksum 0x13ed3e4f, Offset: 0x2fa8
// Size: 0x21c
function function_bf710271(var_ef2d79a9 = 1, var_88ebd569 = 1, var_fdb73f9e = 1, var_af33418e = 1, var_3bd29f5e = 1) {
    self endon(#"disconnect");
    foreach (weapon in self getweaponslist(1)) {
        if (zm_loadout::function_2ff6913(weapon)) {
            continue;
        }
        self function_b142d49f(weapon, var_ef2d79a9);
        self lockweapon(weapon, var_af33418e, var_3bd29f5e);
        if (weapon.dualwieldweapon != level.weaponnone) {
            self lockweapon(weapon.dualwieldweapon, var_af33418e, var_3bd29f5e);
        }
    }
    if (var_88ebd569) {
        self thread function_d0348c2c(1);
    }
    self function_88805385(1);
    if (var_fdb73f9e) {
        self function_9bf8e274();
        self notify(#"hash_62fb3ab92a1f20cd");
    }
    self function_7dbb1712(1);
}

// Namespace zm_trial_util/zm_trial_util
// Params 1, eflags: 0x2 linked
// Checksum 0x3f2d866b, Offset: 0x31d0
// Size: 0x13c
function function_dc0859e(var_b5434dd5 = 1) {
    foreach (weapon in self getweaponslist(1)) {
        self unlockweapon(weapon);
        if (weapon.dualwieldweapon != level.weaponnone) {
            self unlockweapon(weapon.dualwieldweapon);
        }
    }
    self function_7dbb1712(1);
    self function_88805385(0);
    if (var_b5434dd5) {
        self function_73ff0096();
    }
}

/#

    // Namespace zm_trial_util/zm_trial_util
    // Params 0, eflags: 0x0
    // Checksum 0xad74590a, Offset: 0x3318
    // Size: 0x1a8
    function open_all_doors() {
        a_zombie_doors = getentarray("<unknown string>", "<unknown string>");
        for (i = 0; i < a_zombie_doors.size; i++) {
            if (!is_true(a_zombie_doors[i].has_been_opened)) {
                a_zombie_doors[i] notify(#"trigger", {#is_forced:1});
            }
            waitframe(1);
        }
        var_38a6b7d0 = getentarray("<unknown string>", "<unknown string>");
        for (i = 0; i < var_38a6b7d0.size; i++) {
            var_38a6b7d0[i] notify(#"trigger", {#is_forced:1});
            waitframe(1);
        }
        a_zombie_debris = getentarray("<unknown string>", "<unknown string>");
        for (i = 0; i < a_zombie_debris.size; i++) {
            if (isdefined(a_zombie_debris[i])) {
                a_zombie_debris[i] notify(#"trigger", {#is_forced:1});
            }
            waitframe(1);
        }
    }

    // Namespace zm_trial_util/zm_trial_util
    // Params 0, eflags: 0x0
    // Checksum 0xe010c100, Offset: 0x34c8
    // Size: 0x160
    function function_9c71b46f() {
        foreach (player in getplayers()) {
            for (i = 0; i < player.var_c27f1e90.size; i++) {
                perk = player.var_c27f1e90[i];
                if (isdefined(player.perk_purchased) && player.perk_purchased == perk) {
                    continue;
                }
                if (!player hasperk(perk) && !player zm_perks::has_perk_paused(perk)) {
                    n_index = player zm_perks::function_c1efcc57(perk);
                    player zm_perks::function_9bdf581f(perk, n_index);
                }
            }
        }
    }

    // Namespace zm_trial_util/zm_trial_util
    // Params 0, eflags: 0x0
    // Checksum 0xd0b5a51c, Offset: 0x3630
    // Size: 0x94
    function function_9c1092f6() {
        iprintlnbold("<unknown string>");
        if (getgametypesetting(#"zmshowtimer", 0) == 1) {
            setgametypesetting(#"zmshowtimer", 0);
            return;
        }
        setgametypesetting(#"zmshowtimer", 1);
    }

#/
