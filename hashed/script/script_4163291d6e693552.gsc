// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_vo.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using script_437ce686d29bb81b;
#using scripts\zm_common\zm_fasttravel.gsc;
#using scripts\zm_common\zm_audio.gsc;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\damagefeedback_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_7589cf5c;

// Namespace namespace_7589cf5c/namespace_7589cf5c
// Params 0, eflags: 0x2 linked
// Checksum 0x72efe340, Offset: 0x1d0
// Size: 0x21e
function function_df911075() {
    switch (level.var_b48509f9) {
    case 1:
        var_5e36739b = undefined;
        break;
    case 2:
        var_5e36739b = [#"spawner_bo5_mimic", #"hash_4f87aa2a203d37d0"];
        break;
    case 3:
    case 4:
        var_5e36739b = [#"spawner_bo5_avogadro_sr", #"spawner_bo5_mimic", #"hash_4f87aa2a203d37d0"];
        break;
    case 5:
        var_5e36739b = [#"spawner_bo5_avogadro_sr", #"spawner_bo5_mimic", #"hash_4f87aa2a203d37d0", #"spawner_zm_steiner"];
        break;
    default:
        var_5e36739b = [#"spawner_bo5_avogadro_sr", #"spawner_bo5_mechz_sr", #"spawner_bo5_mimic", #"hash_4f87aa2a203d37d0", #"spawner_zm_steiner", #"spawner_bo5_abom"];
        break;
    }
    return var_5e36739b;
}

// Namespace namespace_7589cf5c/namespace_7589cf5c
// Params 1, eflags: 0x2 linked
// Checksum 0x688dc80c, Offset: 0x3f8
// Size: 0xa2
function function_82e262cf(var_7ecdee63) {
    if (var_7ecdee63 === #"spawner_bo5_avogadro_sr" || var_7ecdee63 === #"spawner_bo5_mechz_sr" || var_7ecdee63 === #"spawner_bo5_mimic" || var_7ecdee63 === #"hash_4f87aa2a203d37d0" || var_7ecdee63 === #"spawner_zm_steiner" || var_7ecdee63 === #"spawner_bo5_abom") {
        return true;
    }
    return false;
}

// Namespace namespace_7589cf5c/namespace_7589cf5c
// Params 0, eflags: 0x2 linked
// Checksum 0x8fce40cf, Offset: 0x4a8
// Size: 0xee
function function_b9e4c169() {
    switch (level.var_b48509f9) {
    case 1:
    case 2:
        if (math::cointoss()) {
            var_7ecdee63 = #"hash_7cba8a05511ceedf";
        } else {
            var_7ecdee63 = #"hash_124b582ce08d78c0";
        }
        break;
    case 3:
    case 4:
        var_7ecdee63 = #"hash_338eb4103e0ed797";
        break;
    default:
        var_7ecdee63 = #"hash_46c917a1b5ed91e7";
        break;
    }
    return var_7ecdee63;
}

// Namespace namespace_7589cf5c/namespace_7589cf5c
// Params 0, eflags: 0x2 linked
// Checksum 0xe90f7969, Offset: 0x5a0
// Size: 0x236
function function_1b53cdc7() {
    n_players = getplayers().size;
    switch (level.var_b48509f9) {
    case 1:
        var_61c57c53 = 0;
        break;
    case 2:
        var_61c57c53 = 2;
        break;
    case 3:
        var_61c57c53 = max(n_players - 1, 3);
        break;
    case 4:
        var_61c57c53 = max(n_players, 3);
        break;
    case 5:
        var_61c57c53 = max(n_players + 2, 4);
        break;
    case 6:
        var_61c57c53 = max(n_players + 3, 5);
        break;
    case 7:
        var_61c57c53 = max(n_players + 4, 6);
        break;
    case 8:
        var_61c57c53 = max(n_players + 5, 7);
        break;
    case 9:
        var_61c57c53 = max(n_players + 6, 8);
        break;
    default:
        var_61c57c53 = min(level.var_b48509f9, n_players + 7);
        break;
    }
    return var_61c57c53;
}

// Namespace namespace_7589cf5c/namespace_7589cf5c
// Params 0, eflags: 0x2 linked
// Checksum 0x7b6bf2df, Offset: 0x7e0
// Size: 0x1c6
function function_56fa33d9() {
    n_players = getplayers().size;
    switch (level.var_b48509f9) {
    case 1:
        var_b803db9c = 0;
        break;
    case 2:
        var_b803db9c = 1;
        break;
    case 3:
    case 4:
        var_b803db9c = min(n_players, 2);
        break;
    case 5:
    case 6:
        var_b803db9c = min(n_players + 1, 3);
        break;
    case 7:
    case 8:
        var_b803db9c = max(n_players + 1, 3);
        break;
    case 9:
        var_b803db9c = max(n_players + 2, 4);
        break;
    default:
        var_b803db9c = min(level.var_b48509f9 - 3, n_players + 4);
        break;
    }
    return var_b803db9c;
}

// Namespace namespace_7589cf5c/namespace_7589cf5c
// Params 0, eflags: 0x2 linked
// Checksum 0x89358f5f, Offset: 0x9b0
// Size: 0x24
function function_190c51a9() {
    n_cooldown = 120 / level.var_b48509f9;
    return n_cooldown;
}

// Namespace namespace_7589cf5c/namespace_7589cf5c
// Params 2, eflags: 0x2 linked
// Checksum 0xbedcbc25, Offset: 0x9e0
// Size: 0x84
function function_ac709d66(instance, str_alias) {
    instance endon(#"objective_ended");
    self endon(#"death");
    function_64719f04(instance);
    self thread zm_vo::function_d6f8bbd9(str_alias);
    function_64719f04(instance);
}

// Namespace namespace_7589cf5c/namespace_7589cf5c
// Params 1, eflags: 0x2 linked
// Checksum 0xd9d81b73, Offset: 0xa70
// Size: 0x124
function function_64719f04(instance) {
    instance endon(#"objective_ended");
    var_d951c76b = 0;
    while (true) {
        foreach (player in getplayers()) {
            if (isalive(player)) {
                if (zm_vo::is_player_speaking(player) || zm_vo::function_c10c4064(player)) {
                    var_d951c76b = 1;
                }
            }
        }
        if (!var_d951c76b) {
            break;
        }
        var_d951c76b = 0;
        wait(0.1);
    }
}

// Namespace namespace_7589cf5c/namespace_7589cf5c
// Params 2, eflags: 0x2 linked
// Checksum 0x1aa00c7f, Offset: 0xba0
// Size: 0x114
function vo_start(var_33e81c58, var_4469395e) {
    level endon(#"end_game");
    self endon(#"objective_ended");
    level flag::wait_till(#"hash_7e250b62cf326bf9");
    if (namespace_cf6efd05::function_85b812c9()) {
        level flag::wait_till(#"initial_fade_in_complete");
    }
    wait(0.5);
    level flag::clear(#"hash_7e250b62cf326bf9");
    level play_vo(var_33e81c58);
    wait(1);
    level play_vo(var_4469395e);
    level flag::set(#"hash_e685666dd450a6b");
}

// Namespace namespace_7589cf5c/namespace_7589cf5c
// Params 1, eflags: 0x2 linked
// Checksum 0xebb8fe95, Offset: 0xcc0
// Size: 0x4c
function play_vo(str_alias) {
    if (self === level) {
        level zm_vo::function_7622cb70(str_alias);
        return;
    }
    self zm_vo::function_d6f8bbd9(str_alias);
}

// Namespace namespace_7589cf5c/namespace_7589cf5c
// Params 1, eflags: 0x0
// Checksum 0xd010f549, Offset: 0xd18
// Size: 0x11c
function function_98da2ed1(str_alias) {
    self notify("1ce2aed8c9f03373");
    self endon("1ce2aed8c9f03373");
    level flag::wait_till("all_players_spawned");
    while (true) {
        foreach (player in getplayers()) {
            if (distancesquared(player.origin, self.origin) < sqr(1700)) {
                level thread zm_vo::function_7622cb70(str_alias);
                return;
            }
        }
        wait(1);
    }
}

// Namespace namespace_7589cf5c/namespace_7589cf5c
// Params 11, eflags: 0x0
// Checksum 0x5438ce4d, Offset: 0xe40
// Size: 0x744
function function_df51a2e8(*var_5314bd63, *nd_path_start, *var_384528, str_notify, var_6c365dbf, var_12230d08, var_5817f611, var_8f1ba730, var_6e7468ee = 0, var_c3cd6081 = 1, *var_1605b07a = 1) {
    level endon(#"end_game");
    self endoncallback(&zm_fasttravel::function_79766c56, #"bled_out", #"death");
    self.var_16735873 = 1;
    self.b_ignore_fow_damage = 1;
    self zm_fasttravel::function_7a607f29(var_5817f611);
    self.var_f4e33249 = 1;
    self val::set(#"fasttravel", "freezecontrols", 1);
    self val::set(#"fasttravel", "show_hud", 0);
    if (self isinvehicle()) {
        self unlink();
        util::wait_network_frame();
    }
    if (!var_6e7468ee) {
        while (level.var_d03afa3[var_8f1ba730] === 1) {
            util::wait_network_frame();
        }
        level thread zm_fasttravel::function_78e3c2ba(var_8f1ba730);
    }
    foreach (e_player in getplayers()) {
        e_player clientfield::set_player_uimodel("WorldSpaceIndicators.bleedOutModel" + self getentitynumber() + ".hide", 1);
    }
    if (!self laststand::player_is_in_laststand() && isalive(self)) {
        str_stance = self getstance();
        if (self isstanceallowed("stand")) {
            switch (str_stance) {
            case #"crouch":
                self setstance("stand");
                if (var_1605b07a) {
                    wait(0.2);
                }
                break;
            case #"prone":
                self setstance("stand");
                if (var_1605b07a) {
                    wait(1);
                }
                break;
            }
        }
    }
    self notify(#"hash_1c35eb15aa210d6", {#var_9fa6220c:var_5817f611});
    self zm_stats::increment_challenge_stat(#"fast_travels");
    if (!is_true(self.var_472e3448)) {
        self stopsounds();
    }
    if (!isdefined(var_5817f611) || isdefined(var_5817f611) && !is_true(var_5817f611.var_694cbc6f)) {
        self ghost();
    }
    self thread zm_fasttravel::function_946fc2d6();
    self clientfield::increment("fasttravel_start_fx", 1);
    level.var_f3901984 = 20;
    if (is_true(level.var_16fecec8)) {
        var_896486fb = struct::get(var_5817f611.script_string, "script_name");
        self thread zm_fasttravel::function_a78584c0(var_12230d08, var_896486fb);
    }
    self waittill(#"fasttravel_over");
    self.b_ignore_fow_damage = 0;
    if (isdefined(var_6c365dbf)) {
        level notify(var_6c365dbf);
    }
    level flag::wait_till("streamed");
    self val::reset(#"fasttravel", "freezecontrols");
    self clientfield::increment("fasttravel_end_fx", 1);
    self show();
    self.var_5817f611 = undefined;
    self notify(#"fasttravel_finished", {#var_9fa6220c:var_5817f611});
    foreach (e_player in getplayers()) {
        e_player clientfield::set_player_uimodel("WorldSpaceIndicators.bleedOutModel" + self getentitynumber() + ".hide", 0);
    }
    if (is_true(var_c3cd6081) && isdefined(level.var_34eb792d)) {
        thread [[ level.var_34eb792d ]](self, var_5817f611);
    }
    self util::delay(0.3, undefined, &zm_audio::create_and_play_dialog, #"fast_travel", #"end");
}

// Namespace namespace_7589cf5c/namespace_7589cf5c
// Params 0, eflags: 0x0
// Checksum 0x7a0bc789, Offset: 0x1590
// Size: 0xe8
function function_8eafd734() {
    self endon(#"death");
    while (true) {
        s_result = self waittill(#"damage");
        if (isplayer(s_result.attacker) && isalive(s_result.attacker)) {
            s_result.attacker damagefeedback::update(s_result.mod, s_result.inflictor, undefined, s_result.weapon, self);
            self playsoundtoplayer(#"hash_2ce81d103e923201", s_result.attacker);
        }
    }
}

// Namespace namespace_7589cf5c/namespace_7589cf5c
// Params 1, eflags: 0x0
// Checksum 0xfbf5d19d, Offset: 0x1680
// Size: 0xf2
function kill_zombies(v_org) {
    var_a940cf88 = getaiarray();
    for (i = 0; i < var_a940cf88.size; i++) {
        if (is_true(var_a940cf88[i].allowdeath) && isalive(var_a940cf88[i]) && distancesquared(v_org, var_a940cf88[i].origin) <= sqr(5000)) {
            var_a940cf88[i] kill(undefined, undefined, undefined, undefined, undefined, 1);
        }
        waitframe(1);
    }
}

// Namespace namespace_7589cf5c/namespace_7589cf5c
// Params 2, eflags: 0x2 linked
// Checksum 0xc1a4230c, Offset: 0x1780
// Size: 0x142
function function_3899cfea(v_org, n_radius) {
    if (isdefined(n_radius)) {
        a_zombies = function_a38db454(v_org, n_radius);
    } else {
        a_zombies = getaiarray();
    }
    for (i = 0; i < a_zombies.size; i++) {
        if (a_zombies[i].targetname === #"world_event_orda" || is_true(a_zombies[i].var_1dccf3c1)) {
            continue;
        }
        if (isalive(a_zombies[i])) {
            a_zombies[i].allowdeath = 1;
            a_zombies[i].var_98f1f37c = 1;
            gibserverutils::annihilate(a_zombies[i]);
            a_zombies[i] kill(undefined, undefined, undefined, undefined, undefined, 1);
            waitframe(1);
        }
    }
}

// Namespace namespace_7589cf5c/namespace_7589cf5c
// Params 0, eflags: 0x0
// Checksum 0x2a20e6d2, Offset: 0x18d0
// Size: 0xba
function function_8ab565fc() {
    switch (level.var_b48509f9) {
    case 1:
        return 50;
    case 2:
        return 60;
    case 3:
        return 70;
    case 4:
        return 85;
    case 5:
        return 105;
    default:
        return 115;
    }
}

// Namespace namespace_7589cf5c/namespace_7589cf5c
// Params 0, eflags: 0x0
// Checksum 0x7597405b, Offset: 0x1998
// Size: 0xba
function function_4bd02b61() {
    switch (level.var_b48509f9) {
    case 1:
        return 30;
    case 2:
        return 40;
    case 3:
        return 45;
    case 4:
        return 55;
    case 5:
        return 80;
    default:
        return 95;
    }
}

// Namespace namespace_7589cf5c/namespace_7589cf5c
// Params 0, eflags: 0x0
// Checksum 0x6362644, Offset: 0x1a60
// Size: 0x74
function function_69c0c9b6() {
    self endon(#"death");
    self.allowdeath = 1;
    if (self.archetype === #"zombie") {
        gibserverutils::annihilate(self);
    }
    self kill(undefined, undefined, undefined, undefined, undefined, 1);
}

// Namespace namespace_7589cf5c/namespace_7589cf5c
// Params 0, eflags: 0x2 linked
// Checksum 0x2bd137c, Offset: 0x1ae0
// Size: 0x2e
function function_f10301b0() {
    level waittill(#"hash_8202877a3aadac8");
    self notify(#"hash_8202877a3aadac8");
}

// Namespace namespace_7589cf5c/namespace_7589cf5c
// Params 1, eflags: 0x2 linked
// Checksum 0xcaa8b647, Offset: 0x1b18
// Size: 0x368
function function_1e45b156(s_instance) {
    var_c18c5f = isdefined(s_instance.contentgroups[#"hash_5819d8571ea7c838"]) ? s_instance.contentgroups[#"hash_5819d8571ea7c838"] : [];
    if (var_c18c5f.size > 0) {
        s_instance.var_44a675fe = level.var_b3e433ae;
        var_f3433c5b = [];
        var_2bcc2765 = [];
        foreach (var_cdce8e6f in var_c18c5f) {
            if (isdefined(var_cdce8e6f.script_int)) {
                if (!isdefined(var_f3433c5b)) {
                    var_f3433c5b = [];
                } else if (!isarray(var_f3433c5b)) {
                    var_f3433c5b = array(var_f3433c5b);
                }
                var_f3433c5b[var_f3433c5b.size] = var_cdce8e6f;
                continue;
            }
            if (!isdefined(var_2bcc2765)) {
                var_2bcc2765 = [];
            } else if (!isarray(var_2bcc2765)) {
                var_2bcc2765 = array(var_2bcc2765);
            }
            var_2bcc2765[var_2bcc2765.size] = var_cdce8e6f;
        }
        var_f3433c5b = array::sort_by_script_int(var_f3433c5b, 0);
        foreach (var_d80c3f29 in var_f3433c5b) {
            if (!isdefined(var_2bcc2765)) {
                var_2bcc2765 = [];
            } else if (!isarray(var_2bcc2765)) {
                var_2bcc2765 = array(var_2bcc2765);
            }
            var_2bcc2765[var_2bcc2765.size] = var_d80c3f29;
        }
        foreach (s_path in var_2bcc2765) {
            if (isdefined(s_path.targetname)) {
                var_4941074d = getent(s_path.targetname, "target");
                if (isdefined(var_4941074d.targetname)) {
                    if (!isdefined(level.var_b3e433ae)) {
                        level.var_b3e433ae = [];
                    }
                    array::push_front(level.var_b3e433ae, var_4941074d.targetname);
                }
            }
        }
    }
}

// Namespace namespace_7589cf5c/namespace_7589cf5c
// Params 1, eflags: 0x2 linked
// Checksum 0x26fd8e74, Offset: 0x1e88
// Size: 0x2a
function function_ed193293(s_instance) {
    level.var_b3e433ae = s_instance.var_44a675fe;
    s_instance.var_44a675fe = undefined;
}

