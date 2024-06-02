// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\trigger_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\simple_hostmigration.gsc;
#using scripts\core_common\hud_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace callback;

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xbb2c3c42, Offset: 0x128
// Size: 0x5c
function callback(event, params) {
    mpl_heatwave_fx(level, event, params);
    if (self != level) {
        mpl_heatwave_fx(self, event, params);
    }
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x84711f73, Offset: 0x190
// Size: 0xb8
function function_bea20a96(event, params) {
    ais = getaiarray();
    foreach (ai in ais) {
        ai mpl_heatwave_fx(ai, event, params);
    }
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xfdebbb73, Offset: 0x250
// Size: 0xd8
function function_daed27e8(event, params) {
    players = getplayers();
    foreach (player in players) {
        player mpl_heatwave_fx(level, event, params);
        player mpl_heatwave_fx(player, event, params);
    }
}

// Namespace callback/callbacks_shared
// Params 3, eflags: 0x6 linked
// Checksum 0x71b33772, Offset: 0x330
// Size: 0x1dc
function private mpl_heatwave_fx(ent, event, params) {
    callbacks = ent._callbacks[event];
    if (isdefined(callbacks)) {
        for (i = 0; i < callbacks.size; i++) {
            callback_fields = callbacks[i];
            if (!isarray(callback_fields)) {
                continue;
            }
            callback = callback_fields[0];
            assert(isfunctionptr(callback), "<unknown string>" + "<unknown string>");
            if (!isfunctionptr(callback)) {
                return;
            }
            obj = callback_fields[1];
            var_47e0b77b = callback_fields[2];
            if (!isdefined(var_47e0b77b)) {
                var_47e0b77b = [];
            }
            if (isdefined(obj)) {
                if (isdefined(params)) {
                    util::function_cf55c866(obj, callback, self, params, var_47e0b77b);
                } else {
                    util::function_50f54b6f(obj, callback, self, var_47e0b77b);
                }
                continue;
            }
            if (isdefined(params)) {
                util::function_50f54b6f(self, callback, params, var_47e0b77b);
                continue;
            }
            util::single_thread_argarray(self, callback, var_47e0b77b);
        }
        arrayremovevalue(callbacks, 0, 0);
    }
}

// Namespace callback/callbacks_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x50a45169, Offset: 0x518
// Size: 0x44
function add_callback(event, func, obj, a_params) {
    function_2b653c00(level, event, func, obj, a_params);
}

// Namespace callback/callbacks_shared
// Params 4, eflags: 0x2 linked
// Checksum 0xbf6e62cf, Offset: 0x568
// Size: 0x44
function function_d8abfc3d(event, func, obj, a_params) {
    function_2b653c00(self, event, func, obj, a_params);
}

// Namespace callback/callbacks_shared
// Params 5, eflags: 0x6 linked
// Checksum 0x1c4af64e, Offset: 0x5b8
// Size: 0x204
function private function_2b653c00(ent, event, func, obj, a_params) {
    if (!isdefined(ent)) {
        return;
    }
    assert(isfunctionptr(func), "<unknown string>" + "<unknown string>");
    if (!isfunctionptr(func)) {
        return;
    }
    assert(isdefined(event), "<unknown string>");
    if (!(isdefined(ent._callbacks) && isdefined(ent._callbacks[event]))) {
        ent._callbacks[event] = [];
    }
    foreach (callback in ent._callbacks[event]) {
        if (isarray(callback) && callback[0] == func) {
            if (!isdefined(obj) || callback[1] == obj) {
                return;
            }
        }
    }
    array::add(ent._callbacks[event], array(func, obj, a_params), 0);
    if (isdefined(obj)) {
        obj thread remove_callback_on_death(event, func);
    }
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x6 linked
// Checksum 0x70b4cd73, Offset: 0x7c8
// Size: 0x3c
function private function_862146b3(event, func) {
    return string(event) + string(func);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xf5c32f19, Offset: 0x810
// Size: 0x84
function remove_callback_on_death(event, func) {
    self notify(function_862146b3(event, func));
    self endon(function_862146b3(event, func));
    self waittill(#"death", #"remove_callbacks");
    remove_callback(event, func, self);
}

// Namespace callback/callbacks_shared
// Params 3, eflags: 0x2 linked
// Checksum 0xec210888, Offset: 0x8a0
// Size: 0x3c
function remove_callback(event, func, obj) {
    function_3f5f097e(level, event, func, obj);
}

// Namespace callback/callbacks_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x38938b0b, Offset: 0x8e8
// Size: 0x44
function function_52ac9652(event, func, obj, instant) {
    function_3f5f097e(self, event, func, obj, instant);
}

// Namespace callback/callbacks_shared
// Params 5, eflags: 0x6 linked
// Checksum 0x3fd65005, Offset: 0x938
// Size: 0x1c2
function private function_3f5f097e(ent, event, func, obj, instant) {
    if (!isdefined(ent._callbacks)) {
        return;
    }
    assert(isdefined(event), "<unknown string>");
    if (func === "all") {
        ent._callbacks[event] = [];
        return;
    }
    if (!isdefined(ent._callbacks[event])) {
        return;
    }
    if (is_true(instant)) {
        arrayremovevalue(ent._callbacks[event], 0, 0);
        return;
    }
    foreach (index, func_group in ent._callbacks[event]) {
        if (isarray(func_group) && func_group[0] == func) {
            if (func_group[1] === obj) {
                if (isdefined(obj)) {
                    obj notify(function_862146b3(event, func));
                }
                ent._callbacks[event][index] = 0;
                break;
            }
        }
    }
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x1293acb5, Offset: 0xb08
// Size: 0x3c
function on_finalize_initialization(func, obj) {
    add_callback(#"on_finalize_initialization", func, obj);
}

// Namespace callback/callbacks_shared
// Params 3, eflags: 0x42 linked
// Checksum 0xa373f00d, Offset: 0xb50
// Size: 0x44
function on_connect(func, obj, ...) {
    add_callback(#"on_player_connect", func, obj, vararg);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x715c77a1, Offset: 0xba0
// Size: 0x3c
function remove_on_connect(func, obj) {
    remove_callback(#"on_player_connect", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x8bec9db5, Offset: 0xbe8
// Size: 0x3c
function on_connecting(func, obj) {
    add_callback(#"on_player_connecting", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x6b90d8c4, Offset: 0xc30
// Size: 0x3c
function remove_on_connecting(func, obj) {
    remove_callback(#"on_player_connecting", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xbaa8e174, Offset: 0xc78
// Size: 0x3c
function on_disconnect(func, obj) {
    add_callback(#"on_player_disconnect", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0xdce42b9d, Offset: 0xcc0
// Size: 0x3c
function remove_on_disconnect(func, obj) {
    remove_callback(#"on_player_disconnect", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xaf5ce166, Offset: 0xd08
// Size: 0x3c
function on_spawned(func, obj) {
    add_callback(#"on_player_spawned", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x2767016a, Offset: 0xd50
// Size: 0x3c
function remove_on_spawned(func, obj) {
    remove_callback(#"on_player_spawned", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x8d5b31d, Offset: 0xd98
// Size: 0x3c
function function_acaac19b(func, obj) {
    add_callback(#"hash_3e52a013a2eb0f16", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x65c5a698, Offset: 0xde0
// Size: 0x3c
function function_2d538029(func, obj) {
    remove_callback(#"hash_3e52a013a2eb0f16", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x8e07ed90, Offset: 0xe28
// Size: 0x3c
function remove_on_revived(func, obj) {
    remove_callback(#"on_player_revived", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x88c980d9, Offset: 0xe70
// Size: 0x3c
function on_deleted(func, obj) {
    add_callback(#"on_entity_deleted", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x9d9b741e, Offset: 0xeb8
// Size: 0x3c
function remove_on_deleted(func, obj) {
    remove_callback(#"on_entity_deleted", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x3160afe6, Offset: 0xf00
// Size: 0x3c
function on_loadout(func, obj) {
    add_callback(#"on_loadout", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x72c982f1, Offset: 0xf48
// Size: 0x3c
function remove_on_loadout(func, obj) {
    remove_callback(#"on_loadout", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0xe802da91, Offset: 0xf90
// Size: 0x3c
function function_adff8850(func, obj) {
    add_callback(#"hash_51775e2174499c80", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x38f8f806, Offset: 0xfd8
// Size: 0x3c
function function_4bd0e6a4(func, obj) {
    remove_callback(#"hash_51775e2174499c80", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xee5778be, Offset: 0x1020
// Size: 0x3c
function on_player_damage(func, obj) {
    add_callback(#"on_player_damage", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x99de0736, Offset: 0x1068
// Size: 0x3c
function remove_on_player_damage(func, obj) {
    remove_callback(#"on_player_damage", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x37ee9a85, Offset: 0x10b0
// Size: 0x3c
function on_start_gametype(func, obj) {
    add_callback(#"on_start_gametype", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x212f1dce, Offset: 0x10f8
// Size: 0x3c
function on_end_game(func, obj) {
    add_callback(#"on_end_game", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x634e7fd, Offset: 0x1140
// Size: 0x3c
function function_5fb139ea(func, obj) {
    add_callback(#"hash_db04388888e3e16", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x66e15e3e, Offset: 0x1188
// Size: 0x3c
function function_14dae612(func, obj) {
    add_callback(#"hash_1b5be9017cd4b5fa", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x7d197eb9, Offset: 0x11d0
// Size: 0x3c
function on_game_playing(func, obj) {
    add_callback(#"on_game_playing", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x84dd177, Offset: 0x1218
// Size: 0x3c
function function_359493ba(func, obj) {
    add_callback(#"hash_7177603f5415549b", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x59e45e61, Offset: 0x1260
// Size: 0x3c
function on_joined_team(func, obj) {
    add_callback(#"joined_team", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x48082d06, Offset: 0x12a8
// Size: 0x3c
function on_joined_spectate(func, obj) {
    add_callback(#"on_joined_spectator", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xda8c45cd, Offset: 0x12f0
// Size: 0x3c
function on_player_killed(func, obj) {
    add_callback(#"on_player_killed", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x3360fb50, Offset: 0x1338
// Size: 0x3c
function function_c046382d(func, obj) {
    add_callback(#"hash_2fea1d218f4c6a1f", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xfc1f6192, Offset: 0x1380
// Size: 0x3c
function on_player_corpse(func, obj) {
    add_callback(#"on_player_corpse", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0xbd172380, Offset: 0x13c8
// Size: 0x3c
function remove_on_player_killed(func, obj) {
    remove_callback(#"on_player_killed", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x6ca7b73e, Offset: 0x1410
// Size: 0x3c
function function_489cbdb4(func, obj) {
    remove_callback(#"hash_2fea1d218f4c6a1f", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x16ab21b0, Offset: 0x1458
// Size: 0x3c
function function_80270643(func, obj) {
    add_callback(#"on_team_eliminated", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x5bae8b1c, Offset: 0x14a0
// Size: 0x3c
function function_c53a8ab8(func, obj) {
    remove_callback(#"on_team_eliminated", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x28944f27, Offset: 0x14e8
// Size: 0x3c
function on_ai_killed(func, obj) {
    add_callback(#"on_ai_killed", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x27ddaf, Offset: 0x1530
// Size: 0x3c
function remove_on_ai_killed(func, obj) {
    remove_callback(#"on_ai_killed", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xaeff2464, Offset: 0x1578
// Size: 0x3c
function on_actor_killed(func, obj) {
    add_callback(#"on_actor_killed", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x52682aa1, Offset: 0x15c0
// Size: 0x3c
function remove_on_actor_killed(func, obj) {
    remove_callback(#"on_actor_killed", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0xf89c1362, Offset: 0x1608
// Size: 0x3c
function function_30c3f95d(func, obj) {
    function_d8abfc3d(#"hash_3d6ccbbe0e628b2d", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x6868a361, Offset: 0x1650
// Size: 0x3c
function function_95ba5345(func, obj) {
    function_52ac9652(#"hash_3d6ccbbe0e628b2d", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xc770f1ba, Offset: 0x1698
// Size: 0x3c
function on_vehicle_spawned(func, obj) {
    add_callback(#"on_vehicle_spawned", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x5fe091b1, Offset: 0x16e0
// Size: 0x3c
function remove_on_vehicle_spawned(func, obj) {
    remove_callback(#"on_vehicle_spawned", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x6197457, Offset: 0x1728
// Size: 0x3c
function on_vehicle_killed(func, obj) {
    add_callback(#"on_vehicle_killed", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x16c35658, Offset: 0x1770
// Size: 0x3c
function on_vehicle_collision(func, obj) {
    function_d8abfc3d(#"veh_collision", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x15024e09, Offset: 0x17b8
// Size: 0x3c
function remove_on_vehicle_killed(func, obj) {
    remove_callback(#"on_vehicle_killed", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x49947816, Offset: 0x1800
// Size: 0x3c
function on_ai_damage(func, obj) {
    add_callback(#"on_ai_damage", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0xaee6bcac, Offset: 0x1848
// Size: 0x3c
function remove_on_ai_damage(func, obj) {
    remove_callback(#"on_ai_damage", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x60321c77, Offset: 0x1890
// Size: 0x3c
function on_ai_spawned(func, obj) {
    add_callback(#"on_ai_spawned", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x12917f27, Offset: 0x18d8
// Size: 0x3c
function remove_on_ai_spawned(func, obj) {
    remove_callback(#"on_ai_spawned", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x9030eb5e, Offset: 0x1920
// Size: 0x3c
function function_f642faf2(func, obj) {
    add_callback(#"hash_7d2e38b28c894e5a", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x39a298e8, Offset: 0x1968
// Size: 0x3c
function function_c1017156(func, obj) {
    remove_callback(#"hash_7d2e38b28c894e5a", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x5934155d, Offset: 0x19b0
// Size: 0x3c
function on_actor_damage(func, obj) {
    add_callback(#"on_actor_damage", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0xb584340e, Offset: 0x19f8
// Size: 0x3c
function remove_on_actor_damage(func, obj) {
    remove_callback(#"on_actor_damage", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0xf25aa981, Offset: 0x1a40
// Size: 0x3c
function function_9d78f548(func, obj) {
    add_callback(#"hash_2e68909d4e4ed889", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x337d60c4, Offset: 0x1a88
// Size: 0x3c
function function_f125b93a(func, obj) {
    remove_callback(#"hash_2e68909d4e4ed889", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x887323e2, Offset: 0x1ad0
// Size: 0x3c
function on_vehicle_damage(func, obj) {
    add_callback(#"on_vehicle_damage", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0xe0c5bf3e, Offset: 0x1b18
// Size: 0x3c
function remove_on_vehicle_damage(func, obj) {
    remove_callback(#"on_vehicle_damage", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x4005a1c5, Offset: 0x1b60
// Size: 0x3c
function on_downed(func, obj) {
    add_callback(#"on_player_downed", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x73e9ca5b, Offset: 0x1ba8
// Size: 0x3c
function remove_on_downed(func, obj) {
    remove_callback(#"on_player_downed", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x87d8011d, Offset: 0x1bf0
// Size: 0x3c
function on_laststand(func, obj) {
    add_callback(#"on_player_laststand", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x6f654bbc, Offset: 0x1c38
// Size: 0x3c
function remove_on_laststand(func, obj) {
    remove_callback(#"on_player_laststand", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0xf63fd018, Offset: 0x1c80
// Size: 0x3c
function function_716834ed(func, obj) {
    add_callback(#"entering_last_stand", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x990f629b, Offset: 0x1cc8
// Size: 0x3c
function function_d5b3e529(func, obj) {
    remove_callback(#"entering_last_stand", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x45184537, Offset: 0x1d10
// Size: 0x3c
function on_bleedout(func, obj) {
    add_callback(#"on_player_bleedout", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x47d5ab6a, Offset: 0x1d58
// Size: 0x3c
function on_revived(func, obj) {
    add_callback(#"on_player_revived", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0xd9db20a6, Offset: 0x1da0
// Size: 0x3c
function on_mission_failed(func, obj) {
    add_callback(#"on_mission_failed", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xbf3d6f58, Offset: 0x1de8
// Size: 0x3c
function on_challenge_complete(func, obj) {
    add_callback(#"on_challenge_complete", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x40295722, Offset: 0x1e30
// Size: 0x3c
function on_weapon_change(func, obj) {
    add_callback(#"weapon_change", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x4d1b5b62, Offset: 0x1e78
// Size: 0x3c
function remove_on_weapon_change(func, obj) {
    remove_callback(#"weapon_change", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x56c4c271, Offset: 0x1ec0
// Size: 0x3c
function on_weapon_fired(func, obj) {
    add_callback(#"weapon_fired", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0xe1d07b35, Offset: 0x1f08
// Size: 0x3c
function remove_on_weapon_fired(func, obj) {
    remove_callback(#"weapon_fired", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x4706c678, Offset: 0x1f50
// Size: 0x3c
function on_grenade_fired(func, obj) {
    add_callback(#"grenade_fired", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x17659f3f, Offset: 0x1f98
// Size: 0x3c
function remove_on_grenade_fired(func, obj) {
    remove_callback(#"grenade_fired", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xb505b1f5, Offset: 0x1fe0
// Size: 0x3c
function on_offhand_fire(func, obj) {
    add_callback(#"offhand_fire", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x1459e79f, Offset: 0x2028
// Size: 0x3c
function remove_on_offhand_fire(func, obj) {
    remove_callback(#"offhand_fire", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x4e7f4b9c, Offset: 0x2070
// Size: 0x3c
function function_4b7977fe(func, obj) {
    add_callback(#"hash_198a389d6b65f68d", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x1bae1db7, Offset: 0x20b8
// Size: 0x3c
function function_61583a71(func, obj) {
    remove_callback(#"hash_198a389d6b65f68d", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x7c4b29ef, Offset: 0x2100
// Size: 0x3c
function on_detonate(func, obj) {
    function_d8abfc3d(#"detonate", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x8730ac14, Offset: 0x2148
// Size: 0x3c
function remove_on_detonate(func, obj) {
    function_52ac9652(#"detonate", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x3908f31f, Offset: 0x2190
// Size: 0x3c
function on_double_tap_detonate(func, obj) {
    function_d8abfc3d(#"doubletap_detonate", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0xa1c4b741, Offset: 0x21d8
// Size: 0x3c
function remove_on_double_tap_detonate(func, obj) {
    function_52ac9652(#"doubletap_detonate", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x4c873002, Offset: 0x2220
// Size: 0x3c
function function_9cac835e(func, obj) {
    add_callback(#"hash_1f5aa545c7334d3a", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0xa1a71272, Offset: 0x2268
// Size: 0x3c
function function_e1c2dbd9(func, obj) {
    remove_callback(#"hash_1f5aa545c7334d3a", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xceb22a45, Offset: 0x22b0
// Size: 0x3c
function on_death(func, obj) {
    function_d8abfc3d(#"death", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x6107aa0f, Offset: 0x22f8
// Size: 0x3c
function remove_on_death(func, obj) {
    function_52ac9652(#"death", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x39613d4d, Offset: 0x2340
// Size: 0x3c
function function_27d9ab8(func, obj) {
    add_callback(#"hash_1e4a4ca774f4ce22", func, obj);
}

// Namespace callback/callbacks_shared
// Params 3, eflags: 0x42 linked
// Checksum 0x7e37dc, Offset: 0x2388
// Size: 0x44
function on_trigger(func, obj, ...) {
    function_d8abfc3d(#"on_trigger", func, obj, vararg);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0xdd60e999, Offset: 0x23d8
// Size: 0x3c
function remove_on_trigger(func, obj) {
    function_52ac9652(#"on_trigger", func, obj);
}

// Namespace callback/callbacks_shared
// Params 3, eflags: 0x42 linked
// Checksum 0x69089d92, Offset: 0x2420
// Size: 0x44
function on_trigger_once(func, obj, ...) {
    function_d8abfc3d(#"on_trigger_once", func, obj, vararg);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x354053a6, Offset: 0x2470
// Size: 0x3c
function remove_on_trigger_once(func, obj) {
    function_52ac9652(#"on_trigger_once", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x7734fb7e, Offset: 0x24b8
// Size: 0x3c
function function_33f0ddd3(func, obj) {
    add_callback(#"hash_39bf72fd97e248a0", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0xb56010d1, Offset: 0x2500
// Size: 0x3c
function function_824d206(func, obj) {
    remove_callback(#"hash_39bf72fd97e248a0", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0xf810449, Offset: 0x2548
// Size: 0x3c
function on_boast(func, obj) {
    add_callback(#"on_boast", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x9c5bca1b, Offset: 0x2590
// Size: 0x3c
function remove_on_boast(func, obj) {
    remove_callback(#"on_boast", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x7f54a61d, Offset: 0x25d8
// Size: 0x3c
function function_5753ac6e(func, obj) {
    add_callback(#"hash_4a9c56bba76da754", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0xe0ee0590, Offset: 0x2620
// Size: 0x3c
function function_16046baa(func, obj) {
    remove_callback(#"hash_4a9c56bba76da754", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x900f08dc, Offset: 0x2668
// Size: 0x3c
function function_94eab4fb(func, obj) {
    add_callback(#"hash_435b494b9418c561", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xa345db08, Offset: 0x26b0
// Size: 0x3c
function on_menu_response(func, obj) {
    add_callback(#"menu_response", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0xeb375e73, Offset: 0x26f8
// Size: 0x3c
function function_96bbd5dc(func, obj) {
    remove_callback(#"menu_response", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xfbed6dc7, Offset: 0x2740
// Size: 0x3c
function on_item_pickup(func, obj) {
    add_callback(#"on_item_pickup", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0xf8fcc4d6, Offset: 0x2788
// Size: 0x3c
function on_item_drop(func, obj) {
    add_callback(#"on_drop_item", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x98dc114a, Offset: 0x27d0
// Size: 0x3c
function on_drop_inventory(func, obj) {
    add_callback(#"on_drop_inventory", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xab3bdd95, Offset: 0x2818
// Size: 0x3c
function on_item_use(func, obj) {
    add_callback(#"on_item_use", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x8508ecb8, Offset: 0x2860
// Size: 0x3c
function on_stash_open(func, obj) {
    add_callback(#"on_stash_open", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xe44c81e5, Offset: 0x28a8
// Size: 0x3c
function on_character_unlock(func, obj) {
    add_callback(#"on_character_unlock", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x4c120f35, Offset: 0x28f0
// Size: 0x3c
function on_contract_complete(func, obj) {
    add_callback(#"contract_complete", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0xcfdb9ea2, Offset: 0x2938
// Size: 0x6c
function function_6700e8b5(func, obj) {
    if (self == level) {
        add_callback(#"hash_4428d68b23082312", func, obj);
        return;
    }
    function_d8abfc3d(#"hash_4428d68b23082312", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x17b272f3, Offset: 0x29b0
// Size: 0x6c
function function_900862de(func, obj) {
    if (self == level) {
        add_callback(#"hash_4b4c187e584b34ac", func, obj);
        return;
    }
    function_d8abfc3d(#"hash_4b4c187e584b34ac", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x18722f26, Offset: 0x2a28
// Size: 0x6c
function function_be4cb7fe(func, obj) {
    if (self == level) {
        add_callback(#"hash_255b4626805810f5", func, obj);
        return;
    }
    function_d8abfc3d(#"hash_255b4626805810f5", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xb83983c8, Offset: 0x2aa0
// Size: 0x3c
function function_532a4f74(func, obj) {
    add_callback(#"hash_78ee75fdad31407d", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x7eb51534, Offset: 0x2ae8
// Size: 0x3c
function function_c16ce2bc(func, obj) {
    add_callback(#"hash_52c6deac4a362083", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x2fee2484, Offset: 0x2b30
// Size: 0x3c
function on_zipline(func, obj) {
    add_callback(#"on_zipline", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xb8688b22, Offset: 0x2b78
// Size: 0x3c
function function_46609b1(func, obj) {
    add_callback(#"hash_1b4bad2414c405c0", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x798028a4, Offset: 0x2bc0
// Size: 0x3c
function function_e5340d32(func, obj) {
    add_callback(#"hash_3b6ebf3a7ab5c795", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x27e460c2, Offset: 0x2c08
// Size: 0x3c
function function_d4f0a93d(func, obj) {
    remove_callback(#"hash_3b6ebf3a7ab5c795", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x2e4f1d19, Offset: 0x2c50
// Size: 0x3c
function function_dd017b2e(func, obj) {
    add_callback(#"player_callout", func, obj);
}

// Namespace callback/level_preinit
// Params 1, eflags: 0x20
// Checksum 0xad325f02, Offset: 0x2c98
// Size: 0x3c
function event_handler[level_preinit] codecallback_preinitialization(*eventstruct) {
    system::run_pre_systems();
    flag::set(#"preinit");
}

// Namespace callback/level_init
// Params 1, eflags: 0x20
// Checksum 0x4146622c, Offset: 0x2ce0
// Size: 0x2c
function event_handler[level_init] function_4123368a(*eventstruct) {
    flag::set(#"levelinit");
}

// Namespace callback/event_cc819519
// Params 1, eflags: 0x20
// Checksum 0x4b960fbf, Offset: 0x2d18
// Size: 0x3c
function event_handler[event_cc819519] function_12c01a61(*eventstruct) {
    system::run_post_systems();
    flag::set(#"postinit");
}

// Namespace callback/level_finalizeinit
// Params 1, eflags: 0x20
// Checksum 0x60206dff, Offset: 0x2d60
// Size: 0x5c
function event_handler[level_finalizeinit] codecallback_finalizeinitialization(*eventstruct) {
    system::function_b1553822();
    flag::set(#"hash_4f4b65226250fc99");
    callback(#"on_finalize_initialization");
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xe5b4af73, Offset: 0x2dc8
// Size: 0x40
function add_weapon_damage(weapontype, callback) {
    if (!isdefined(level.weapon_damage_callback_array)) {
        level.weapon_damage_callback_array = [];
    }
    level.weapon_damage_callback_array[weapontype] = callback;
}

// Namespace callback/callbacks_shared
// Params 5, eflags: 0x2 linked
// Checksum 0x1f2943eb, Offset: 0x2e10
// Size: 0xca
function callback_weapon_damage(eattacker, einflictor, weapon, meansofdeath, damage) {
    if (isdefined(level.weapon_damage_callback_array)) {
        if (isdefined(level.weapon_damage_callback_array[weapon])) {
            self thread [[ level.weapon_damage_callback_array[weapon] ]](eattacker, einflictor, weapon, meansofdeath, damage);
            return true;
        } else if (isdefined(level.weapon_damage_callback_array[weapon.rootweapon])) {
            self thread [[ level.weapon_damage_callback_array[weapon.rootweapon] ]](eattacker, einflictor, weapon, meansofdeath, damage);
            return true;
        }
    }
    return false;
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x2d39de42, Offset: 0x2ee8
// Size: 0x40
function add_weapon_fired(weapon, callback) {
    if (!isdefined(level.var_129c2069)) {
        level.var_129c2069 = [];
    }
    level.var_129c2069[weapon] = callback;
}

// Namespace callback/callbacks_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x82e52cf, Offset: 0x2f30
// Size: 0xa2
function callback_weapon_fired(weapon) {
    if (isdefined(weapon) && isdefined(level.var_129c2069)) {
        if (isdefined(level.var_129c2069[weapon])) {
            self thread [[ level.var_129c2069[weapon] ]](weapon);
            return true;
        } else if (isdefined(level.var_129c2069[weapon.rootweapon])) {
            self thread [[ level.var_129c2069[weapon.rootweapon] ]](weapon);
            return true;
        }
    }
    return false;
}

// Namespace callback/gametype_start
// Params 1, eflags: 0x20
// Checksum 0x5f3976ba, Offset: 0x2fe0
// Size: 0x5c
function event_handler[gametype_start] codecallback_startgametype(*eventstruct) {
    if (!isdefined(level.gametypestarted) || !level.gametypestarted) {
        if (isdefined(level.callbackstartgametype)) {
            [[ level.callbackstartgametype ]]();
        }
        level.gametypestarted = 1;
    }
}

// Namespace callback/player_connect
// Params 1, eflags: 0x20
// Checksum 0x239b734d, Offset: 0x3048
// Size: 0x30
function event_handler[player_connect] codecallback_playerconnect(*eventstruct) {
    self endon(#"disconnect");
    [[ level.callbackplayerconnect ]]();
}

// Namespace callback/player_disconnect
// Params 1, eflags: 0x20
// Checksum 0x1fd66f77, Offset: 0x3080
// Size: 0x94
function event_handler[player_disconnect] codecallback_playerdisconnect(*eventstruct) {
    self.player_disconnected = 1;
    self notify(#"disconnect");
    level notify(#"disconnect", self);
    self notify(#"death");
    [[ level.callbackplayerdisconnect ]]();
    callback(#"on_player_disconnect");
}

// Namespace callback/hostmigration_setupgametype
// Params 0, eflags: 0x20
// Checksum 0xf804c9db, Offset: 0x3120
// Size: 0x34
function event_handler[hostmigration_setupgametype] codecallback_migration_setupgametype() {
    println("<unknown string>");
    simple_hostmigration::migration_setupgametype();
}

// Namespace callback/hostmigration
// Params 1, eflags: 0x20
// Checksum 0xf086e62a, Offset: 0x3160
// Size: 0x3c
function event_handler[hostmigration] codecallback_hostmigration(*eventstruct) {
    println("<unknown string>");
    [[ level.callbackhostmigration ]]();
}

// Namespace callback/hostmigration_save
// Params 1, eflags: 0x20
// Checksum 0xe7dd07b4, Offset: 0x31a8
// Size: 0x3c
function event_handler[hostmigration_save] codecallback_hostmigrationsave(*eventstruct) {
    println("<unknown string>");
    [[ level.callbackhostmigrationsave ]]();
}

// Namespace callback/hostmigration_premigrationsave
// Params 1, eflags: 0x20
// Checksum 0xa849e82a, Offset: 0x31f0
// Size: 0x3c
function event_handler[hostmigration_premigrationsave] codecallback_prehostmigrationsave(*eventstruct) {
    println("<unknown string>");
    [[ level.callbackprehostmigrationsave ]]();
}

// Namespace callback/hostmigration_playermigrated
// Params 1, eflags: 0x20
// Checksum 0x28781e7e, Offset: 0x3238
// Size: 0x3c
function event_handler[hostmigration_playermigrated] codecallback_playermigrated(*eventstruct) {
    println("<unknown string>");
    [[ level.callbackplayermigrated ]]();
}

// Namespace callback/player_damage
// Params 1, eflags: 0x20
// Checksum 0xdeda4168, Offset: 0x3280
// Size: 0xa0
function event_handler[player_damage] codecallback_playerdamage(eventstruct) {
    self endon(#"disconnect");
    [[ level.callbackplayerdamage ]](eventstruct.inflictor, eventstruct.attacker, eventstruct.amount, eventstruct.flags, eventstruct.mod, eventstruct.weapon, eventstruct.var_fd90b0bb, eventstruct.position, eventstruct.direction, eventstruct.hit_location, eventstruct.damage_origin, eventstruct.time_offset, eventstruct.bone_index, eventstruct.normal);
}

// Namespace callback/player_killed
// Params 1, eflags: 0x20
// Checksum 0x3b8975b6, Offset: 0x3328
// Size: 0x80
function event_handler[player_killed] codecallback_playerkilled(eventstruct) {
    self endon(#"disconnect");
    [[ level.callbackplayerkilled ]](eventstruct.inflictor, eventstruct.attacker, eventstruct.amount, eventstruct.mod, eventstruct.weapon, eventstruct.var_fd90b0bb, eventstruct.direction, eventstruct.hit_location, eventstruct.time_offset, eventstruct.death_anim_duration);
}

// Namespace callback/event_2958ea55
// Params 1, eflags: 0x20
// Checksum 0x8520a019, Offset: 0x33b0
// Size: 0x68
function event_handler[event_2958ea55] function_73e8e3f9(eventstruct) {
    self endon(#"disconnect");
    if (isdefined(level.var_3a9881cb)) {
        [[ level.var_3a9881cb ]](eventstruct.attacker, eventstruct.effect_name, eventstruct.var_894859a2, eventstruct.durationoverride, eventstruct.weapon);
    }
}

// Namespace callback/event_a98a54a7
// Params 1, eflags: 0x20
// Checksum 0x551b1fc4, Offset: 0x3420
// Size: 0x38
function event_handler[event_a98a54a7] function_323548ba(eventstruct) {
    self endon(#"disconnect");
    [[ level.callbackplayershielddamageblocked ]](eventstruct.damage);
}

// Namespace callback/player_laststand
// Params 1, eflags: 0x20
// Checksum 0x9babf186, Offset: 0x3460
// Size: 0x94
function event_handler[player_laststand] codecallback_playerlaststand(eventstruct) {
    self endon(#"disconnect");
    self stopanimscripted();
    [[ level.callbackplayerlaststand ]](eventstruct.inflictor, eventstruct.attacker, eventstruct.amount, eventstruct.mod, eventstruct.weapon, eventstruct.var_fd90b0bb, eventstruct.direction, eventstruct.hit_location, eventstruct.time_offset, eventstruct.delay);
}

// Namespace callback/event_dd67c1a8
// Params 1, eflags: 0x20
// Checksum 0xb4724644, Offset: 0x3500
// Size: 0x38
function event_handler[event_dd67c1a8] function_46c0443b(eventstruct) {
    self endon(#"disconnect");
    [[ level.var_69959686 ]](eventstruct.weapon);
}

// Namespace callback/event_1294e3a7
// Params 1, eflags: 0x20
// Checksum 0xcef9618e, Offset: 0x3540
// Size: 0x48
function event_handler[event_1294e3a7] function_9e4c68e2(eventstruct) {
    self endon(#"disconnect");
    if (isdefined(level.var_bb1ea3f1)) {
        [[ level.var_bb1ea3f1 ]](eventstruct.weapon);
    }
}

// Namespace callback/event_eb7e11e4
// Params 1, eflags: 0x20
// Checksum 0xc32a8310, Offset: 0x3590
// Size: 0x48
function event_handler[event_eb7e11e4] function_2f677e9d(eventstruct) {
    self endon(#"disconnect");
    if (isdefined(level.var_2f64d35)) {
        [[ level.var_2f64d35 ]](eventstruct.weapon);
    }
}

// Namespace callback/event_3dd1ca18
// Params 1, eflags: 0x20
// Checksum 0x8df75e14, Offset: 0x35e0
// Size: 0x48
function event_handler[event_3dd1ca18] function_cf68d893(eventstruct) {
    self endon(#"disconnect");
    if (isdefined(level.var_523faa05)) {
        [[ level.var_523faa05 ]](eventstruct.weapon);
    }
}

// Namespace callback/event_bf57d5bb
// Params 1, eflags: 0x20
// Checksum 0xfcf05f9a, Offset: 0x3630
// Size: 0x48
function event_handler[event_bf57d5bb] function_d7eb3672(eventstruct) {
    self endon(#"disconnect");
    if (isdefined(level.var_a28be0a5)) {
        [[ level.var_a28be0a5 ]](eventstruct.weapon);
    }
}

// Namespace callback/event_e9b4bb47
// Params 1, eflags: 0x20
// Checksum 0xe4d9f103, Offset: 0x3680
// Size: 0x48
function event_handler[event_e9b4bb47] function_7dba9a1(eventstruct) {
    self endon(#"disconnect");
    if (isdefined(level.var_bd0b5fc1)) {
        [[ level.var_bd0b5fc1 ]](eventstruct.weapon);
    }
}

// Namespace callback/player_boast
// Params 1, eflags: 0x20
// Checksum 0x8bf542a5, Offset: 0x36d0
// Size: 0x74
function event_handler[player_boast] function_3b159f77(eventstruct) {
    self endon(#"disconnect");
    if (isdefined(level.var_4268159)) {
        [[ level.var_4268159 ]](eventstruct.gestureindex, eventstruct.animlength);
    }
    callback(#"on_boast", eventstruct);
}

// Namespace callback/event_8451509a
// Params 1, eflags: 0x20
// Checksum 0x36141e50, Offset: 0x3750
// Size: 0x44
function event_handler[event_8451509a] function_e35aeddd(*eventstruct) {
    self endon(#"disconnect");
    callback(#"hash_4a9c56bba76da754");
}

// Namespace callback/event_7602f48e
// Params 2, eflags: 0x20
// Checksum 0x4893c35a, Offset: 0x37a0
// Size: 0x64
function event_handler[event_7602f48e] function_1a49689c(*eventstruct, *var_22c15896) {
    self endon(#"disconnect");
    waittillframeend();
    if (!isplayer(self)) {
        return;
    }
    callback(#"hash_51775e2174499c80");
}

// Namespace callback/sprint_begin
// Params 1, eflags: 0x20
// Checksum 0x92129558, Offset: 0x3810
// Size: 0x44
function event_handler[sprint_begin] function_336afb8e(eventstruct) {
    self endon(#"disconnect");
    if (isdefined(level.var_7bd720f6)) {
        [[ level.var_7bd720f6 ]](eventstruct);
    }
}

// Namespace callback/sprint_end
// Params 1, eflags: 0x20
// Checksum 0xeb7f315f, Offset: 0x3860
// Size: 0x44
function event_handler[sprint_end] function_6806b4f(eventstruct) {
    self endon(#"disconnect");
    if (isdefined(level.var_42b43ce2)) {
        [[ level.var_42b43ce2 ]](eventstruct);
    }
}

// Namespace callback/event_9e865a6e
// Params 1, eflags: 0x20
// Checksum 0xfab0649e, Offset: 0x38b0
// Size: 0x44
function event_handler[event_9e865a6e] function_1855d09f(*eventstruct) {
    self endon(#"disconnect");
    callback(#"hash_78ee75fdad31407d");
}

// Namespace callback/event_50ce9aa8
// Params 1, eflags: 0x20
// Checksum 0x473dd6d8, Offset: 0x3900
// Size: 0x44
function event_handler[event_50ce9aa8] function_e51b8b9d(*eventstruct) {
    self endon(#"disconnect");
    callback(#"hash_52c6deac4a362083");
}

// Namespace callback/event_6d81870d
// Params 1, eflags: 0x20
// Checksum 0x67c35414, Offset: 0x3950
// Size: 0x44
function event_handler[event_6d81870d] function_78ddc6fb(*eventstruct) {
    self endon(#"disconnect");
    callback(#"on_zipline");
}

// Namespace callback/event_4be77411
// Params 1, eflags: 0x20
// Checksum 0xcad840, Offset: 0x39a0
// Size: 0x44
function event_handler[event_4be77411] function_e62ade94(*eventstruct) {
    self endon(#"disconnect");
    callback(#"hash_1b4bad2414c405c0");
}

// Namespace callback/slide_begin
// Params 1, eflags: 0x20
// Checksum 0x8e54c50e, Offset: 0x39f0
// Size: 0x44
function event_handler[slide_begin] function_2e3100e0(eventstruct) {
    self endon(#"disconnect");
    if (isdefined(level.var_e74639aa)) {
        [[ level.var_e74639aa ]](eventstruct);
    }
}

// Namespace callback/slide_end
// Params 1, eflags: 0x20
// Checksum 0x4d000fa3, Offset: 0x3a40
// Size: 0x44
function event_handler[slide_end] function_e1b7e658(eventstruct) {
    self endon(#"disconnect");
    if (isdefined(level.var_7f80c5a6)) {
        [[ level.var_7f80c5a6 ]](eventstruct);
    }
}

// Namespace callback/jump_begin
// Params 1, eflags: 0x20
// Checksum 0x1550a4b9, Offset: 0x3a90
// Size: 0x44
function event_handler[jump_begin] function_b0353bef(eventstruct) {
    self endon(#"disconnect");
    if (isdefined(level.var_6c3038dc)) {
        [[ level.var_6c3038dc ]](eventstruct);
    }
}

// Namespace callback/jump_end
// Params 1, eflags: 0x20
// Checksum 0x33a47854, Offset: 0x3ae0
// Size: 0x44
function event_handler[jump_end] function_40b29944(eventstruct) {
    self endon(#"disconnect");
    if (isdefined(level.var_4c9e52d1)) {
        [[ level.var_4c9e52d1 ]](eventstruct);
    }
}

// Namespace callback/player_melee
// Params 1, eflags: 0x20
// Checksum 0xe71759cf, Offset: 0x3b30
// Size: 0x70
function event_handler[player_melee] codecallback_playermelee(eventstruct) {
    self endon(#"disconnect");
    [[ level.callbackplayermelee ]](eventstruct.attacker, eventstruct.amount, eventstruct.weapon, eventstruct.position, eventstruct.direction, eventstruct.bone_index, eventstruct.is_shieldhit, eventstruct.is_frombehind);
}

// Namespace callback/actor_spawned
// Params 1, eflags: 0x20
// Checksum 0x2966ffa0, Offset: 0x3ba8
// Size: 0x28
function event_handler[actor_spawned] codecallback_actorspawned(eventstruct) {
    self [[ level.callbackactorspawned ]](eventstruct.entity);
}

// Namespace callback/event_7d801d3e
// Params 1, eflags: 0x20
// Checksum 0xff77a1bf, Offset: 0x3bd8
// Size: 0x38
function event_handler[event_7d801d3e] function_2f02dc73(eventstruct) {
    if (isdefined(level.var_a79419ed)) {
        self [[ level.var_a79419ed ]](eventstruct.entity);
    }
}

// Namespace callback/event_52071346
// Params 1, eflags: 0x20
// Checksum 0xcd482a8c, Offset: 0x3c18
// Size: 0x2c
function event_handler[event_52071346] function_40ef094(*eventstruct) {
    self callback(#"hash_7d2e38b28c894e5a");
}

// Namespace callback/actor_damage
// Params 1, eflags: 0x20
// Checksum 0x783aed4b, Offset: 0x3c50
// Size: 0x9c
function event_handler[actor_damage] codecallback_actordamage(eventstruct) {
    [[ level.callbackactordamage ]](eventstruct.inflictor, eventstruct.attacker, eventstruct.amount, eventstruct.flags, eventstruct.mod, eventstruct.weapon, eventstruct.var_fd90b0bb, eventstruct.position, eventstruct.direction, eventstruct.hit_location, eventstruct.damage_origin, eventstruct.time_offset, eventstruct.bone_index, eventstruct.model_index, eventstruct.surface_type, eventstruct.normal);
}

// Namespace callback/actor_killed
// Params 1, eflags: 0x20
// Checksum 0x1262d856, Offset: 0x3cf8
// Size: 0x64
function event_handler[actor_killed] codecallback_actorkilled(eventstruct) {
    [[ level.callbackactorkilled ]](eventstruct.inflictor, eventstruct.attacker, eventstruct.amount, eventstruct.mod, eventstruct.weapon, eventstruct.var_fd90b0bb, eventstruct.direction, eventstruct.hit_location, eventstruct.time_offset);
}

// Namespace callback/actor_cloned
// Params 1, eflags: 0x20
// Checksum 0x79e41a1b, Offset: 0x3d68
// Size: 0x24
function event_handler[actor_cloned] codecallback_actorcloned(eventstruct) {
    [[ level.callbackactorcloned ]](eventstruct.clone);
}

// Namespace callback/event_bc72e1ee
// Params 1, eflags: 0x20
// Checksum 0x7002cba9, Offset: 0x3d98
// Size: 0x2c
function event_handler[event_bc72e1ee] function_df3c93ef(eventstruct) {
    self callback(#"hash_3d6ccbbe0e628b2d", eventstruct);
}

// Namespace callback/event_1524de24
// Params 1, eflags: 0x20
// Checksum 0x7f58904e, Offset: 0x3dd0
// Size: 0xa4
function event_handler[event_1524de24] function_5b0a9275(eventstruct) {
    [[ level.var_6788bf11 ]](eventstruct.inflictor, eventstruct.attacker, eventstruct.amount, eventstruct.flags, eventstruct.mod, eventstruct.weapon, eventstruct.var_fd90b0bb, eventstruct.position, eventstruct.direction, eventstruct.hit_location, eventstruct.damage_origin, eventstruct.time_offset, eventstruct.bone_index, eventstruct.model_index, eventstruct.part_name, eventstruct.surface_type, eventstruct.normal);
}

// Namespace callback/vehicle_spawned
// Params 1, eflags: 0x20
// Checksum 0x5e0c7000, Offset: 0x3e80
// Size: 0x34
function event_handler[vehicle_spawned] codecallback_vehiclespawned(eventstruct) {
    if (isdefined(level.callbackvehiclespawned)) {
        [[ level.callbackvehiclespawned ]](eventstruct.spawner);
    }
}

// Namespace callback/vehicle_killed
// Params 1, eflags: 0x20
// Checksum 0xd13d671f, Offset: 0x3ec0
// Size: 0x5c
function event_handler[vehicle_killed] codecallback_vehiclekilled(eventstruct) {
    [[ level.callbackvehiclekilled ]](eventstruct.inflictor, eventstruct.attacker, eventstruct.amount, eventstruct.mod, eventstruct.weapon, eventstruct.direction, eventstruct.hit_location, eventstruct.time_offset);
}

// Namespace callback/vehicle_damage
// Params 1, eflags: 0x20
// Checksum 0x8fbb3762, Offset: 0x3f28
// Size: 0x9c
function event_handler[vehicle_damage] codecallback_vehicledamage(eventstruct) {
    [[ level.callbackvehicledamage ]](eventstruct.inflictor, eventstruct.attacker, eventstruct.amount, eventstruct.flags, eventstruct.mod, eventstruct.weapon, eventstruct.var_fd90b0bb, eventstruct.position, eventstruct.direction, eventstruct.hit_location, eventstruct.damage_origin, eventstruct.time_offset, eventstruct.damage_from_underneath, eventstruct.model_index, eventstruct.part_name, eventstruct.normal);
}

// Namespace callback/vehicle_radiusdamage
// Params 1, eflags: 0x20
// Checksum 0x8edb6692, Offset: 0x3fd0
// Size: 0x94
function event_handler[vehicle_radiusdamage] codecallback_vehicleradiusdamage(eventstruct) {
    if (isdefined(level.callbackvehicleradiusdamage)) {
        [[ level.callbackvehicleradiusdamage ]](eventstruct.inflictor, eventstruct.attacker, eventstruct.amount, eventstruct.inner_damage, eventstruct.outer_damage, eventstruct.flags, eventstruct.mod, eventstruct.weapon, eventstruct.position, eventstruct.outer_radius, eventstruct.cone_angle, eventstruct.cone_direction, eventstruct.time_offset);
    }
}

// Namespace callback/ping
// Params 1, eflags: 0x20
// Checksum 0xb6fdef60, Offset: 0x4070
// Size: 0x2c
function event_handler[ping] function_87cf247e(eventstruct) {
    self callback(#"hash_435b494b9418c561", eventstruct);
}

// Namespace callback/callbacks_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x29f0afa2, Offset: 0x40a8
// Size: 0xae
function finishcustomtraversallistener() {
    self endon(#"death");
    self waittillmatch({#notetrack:"end"}, #"custom_traversal_anim_finished");
    self finishtraversal();
    self unlink();
    self.usegoalanimweight = 0;
    self.blockingpain = 0;
    self.customtraverseendnode = undefined;
    self.customtraversestartnode = undefined;
    self notify(#"custom_traversal_cleanup");
}

// Namespace callback/callbacks_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xde31f898, Offset: 0x4160
// Size: 0x74
function killedcustomtraversallistener() {
    self endon(#"custom_traversal_cleanup");
    self waittill(#"death");
    if (isdefined(self)) {
        self finishtraversal();
        self stopanimscripted();
        self unlink();
    }
}

// Namespace callback/entity_playcustomtraversal
// Params 1, eflags: 0x20
// Checksum 0xfebffb80, Offset: 0x41e0
// Size: 0x184
function event_handler[entity_playcustomtraversal] codecallback_playcustomtraversal(eventstruct) {
    entity = eventstruct.entity;
    endparent = eventstruct.end_entity;
    entity.blockingpain = 1;
    entity.usegoalanimweight = 1;
    entity.customtraverseendnode = entity.traverseendnode;
    entity.customtraversestartnode = entity.traversestartnode;
    entity animmode("noclip", 0);
    entity orientmode("face angle", eventstruct.direction[1]);
    if (isdefined(endparent)) {
        offset = entity.origin - endparent.origin;
        entity linkto(endparent, "", offset);
    }
    entity animscripted("custom_traversal_anim_finished", eventstruct.location, eventstruct.direction, eventstruct.animation, eventstruct.anim_mode, undefined, eventstruct.playback_speed, eventstruct.goal_time, eventstruct.lerp_time);
    entity thread finishcustomtraversallistener();
    entity thread killedcustomtraversallistener();
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x301203d7, Offset: 0x4370
// Size: 0x9c
function codecallback_faceeventnotify(notify_msg, ent) {
    if (isdefined(ent) && isdefined(ent.do_face_anims) && ent.do_face_anims) {
        if (isdefined(level.face_event_handler) && isdefined(level.face_event_handler.events[notify_msg])) {
            ent sendfaceevent(level.face_event_handler.events[notify_msg]);
        }
    }
}

// Namespace callback/ui_menuresponse
// Params 1, eflags: 0x20
// Checksum 0x4740f9a0, Offset: 0x4418
// Size: 0xa0
function event_handler[ui_menuresponse] codecallback_menuresponse(eventstruct) {
    if (!isdefined(level.menuresponsequeue)) {
        level.menuresponsequeue = [];
        level thread menu_response_queue_pump();
    }
    index = level.menuresponsequeue.size;
    level.menuresponsequeue[index] = {#ent:self, #eventstruct:eventstruct};
    level notify(#"menuresponse_queue");
}

// Namespace callback/callbacks_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x1d721945, Offset: 0x44c0
// Size: 0xf8
function menu_response_queue_pump() {
    while (true) {
        level waittill(#"menuresponse_queue");
        do {
            if (isdefined(level.menuresponsequeue[0].ent)) {
                level.menuresponsequeue[0].ent notify(#"menuresponse", level.menuresponsequeue[0].eventstruct);
                level.menuresponsequeue[0].ent callback(#"menu_response", level.menuresponsequeue[0].eventstruct);
            }
            arrayremoveindex(level.menuresponsequeue, 0, 0);
            waitframe(1);
        } while (level.menuresponsequeue.size > 0);
    }
}

// Namespace callback/notetrack_callserverscript
// Params 1, eflags: 0x20
// Checksum 0x65632b21, Offset: 0x45c0
// Size: 0xc2
function event_handler[notetrack_callserverscript] codecallback_callserverscript(eventstruct) {
    if (!isdefined(level._animnotifyfuncs)) {
        return;
    }
    if (isdefined(level._animnotifyfuncs[eventstruct.label])) {
        if (isdefined(eventstruct.param3) && eventstruct.param3 != "") {
            eventstruct.entity [[ level._animnotifyfuncs[eventstruct.label] ]](eventstruct.param, eventstruct.param3);
            return;
        }
        eventstruct.entity [[ level._animnotifyfuncs[eventstruct.label] ]](eventstruct.param);
    }
}

// Namespace callback/notetrack_callserverscriptonlevel
// Params 1, eflags: 0x20
// Checksum 0xb6871ebc, Offset: 0x4690
// Size: 0xba
function event_handler[notetrack_callserverscriptonlevel] codecallback_callserverscriptonlevel(eventstruct) {
    if (!isdefined(level._animnotifyfuncs)) {
        return;
    }
    if (isdefined(level._animnotifyfuncs[eventstruct.label])) {
        if (isdefined(eventstruct.param3) && eventstruct.param3 != "") {
            level [[ level._animnotifyfuncs[eventstruct.label] ]](eventstruct.param, eventstruct.param3);
            return;
        }
        level [[ level._animnotifyfuncs[eventstruct.label] ]](eventstruct.param);
    }
}

// Namespace callback/event_69572c01
// Params 1, eflags: 0x20
// Checksum 0x54a47d92, Offset: 0x4758
// Size: 0x104
function event_handler[event_69572c01] function_2073f6dc(eventstruct) {
    origin = self.origin;
    magnitude = float(eventstruct.magnitude);
    innerradius = float(eventstruct.innerradius);
    outerradius = int(eventstruct.outerradius);
    innerdamage = isdefined(self.var_f501d778) ? self.var_f501d778 : 50;
    outerdamage = isdefined(self.var_e14c1b5c) ? self.var_e14c1b5c : 25;
    physicsexplosionsphere(origin, outerradius, innerradius, magnitude, outerdamage, innerdamage);
}

// Namespace callback/event_195cc461
// Params 1, eflags: 0x20
// Checksum 0xa2886998, Offset: 0x4868
// Size: 0x264
function event_handler[event_195cc461] function_52d32e5b(eventstruct) {
    actor = self;
    player = arraygetclosest(actor.origin, function_a1ef346b());
    if (!isactor(actor)) {
        return;
    }
    if (is_true(eventstruct.enable) && isdefined(player)) {
        switch (eventstruct.type) {
        case #"hash_d85822f3fe3ff26":
            actor lookatentity(player, 0, 0, 0, eventstruct.blend, eventstruct.weight);
            break;
        case #"hash_23fc6c9a6565775f":
            actor lookatentity(player, 0, 0, 1, eventstruct.blend, eventstruct.weight);
            break;
        case #"head":
            actor lookatentity(player, 1, 0, 1, eventstruct.blend, eventstruct.weight);
            break;
        case #"eyes":
            actor lookatentity(player, 1, 1, 0, eventstruct.blend, eventstruct.weight);
            break;
        case #"aim":
            actor aimatentityik(player, eventstruct.blend, eventstruct.weight);
            break;
        case #"hash_3da13f2589a059c6":
        default:
            actor lookatentity(player, 1, 0, 0, eventstruct.blend, eventstruct.weight);
            break;
        }
        return;
    }
    actor lookatentity();
}

// Namespace callback/event_5d98e413
// Params 1, eflags: 0x20
// Checksum 0x5d5d8029, Offset: 0x4ad8
// Size: 0x94
function event_handler[event_5d98e413] function_81d4b0fe(eventstruct) {
    player = self;
    if (!isplayer(player)) {
        player = getplayers()[0];
    }
    if (isdefined(player)) {
        player setviewclamp(eventstruct.minyaw, eventstruct.maxyaw, eventstruct.minpitch, eventstruct.maxpitch, 0, 0, eventstruct.blend);
    }
}

// Namespace callback/sidemission_launch
// Params 1, eflags: 0x20
// Checksum 0xb8f6806c, Offset: 0x4b78
// Size: 0x94
function event_handler[sidemission_launch] codecallback_launchsidemission(eventstruct) {
    switchmap_preload(eventstruct.name, eventstruct.game_type);
    luinotifyevent(#"open_side_mission_countdown", 1, eventstruct.list_index);
    wait(10);
    luinotifyevent(#"close_side_mission_countdown");
    switchmap_switch();
}

// Namespace callback/ui_fadeblackscreen
// Params 1, eflags: 0x20
// Checksum 0xdcb7c7e5, Offset: 0x4c18
// Size: 0x74
function event_handler[ui_fadeblackscreen] codecallback_fadeblackscreen(eventstruct) {
    if (isplayer(self) && !isbot(self)) {
        self thread hud::fade_to_black_for_x_sec(0, eventstruct.duration, eventstruct.blend, eventstruct.blend);
    }
}

// Namespace callback/event_40f83b44
// Params 1, eflags: 0x20
// Checksum 0xc34c72f0, Offset: 0x4c98
// Size: 0x74
function event_handler[event_40f83b44] function_4b5ab05f(eventstruct) {
    if (isplayer(self) && !isbot(self)) {
        self thread hud::fade_to_black_for_x_sec(0, eventstruct.duration, eventstruct.blend_out, eventstruct.blend_in);
    }
}

// Namespace callback/callbacks_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xe7f385d1, Offset: 0x4d18
// Size: 0x224
function abort_level() {
    /#
        println("<unknown string>");
        println("<unknown string>");
        println("<unknown string>");
    #/
    level.callbackstartgametype = &callback_void;
    level.callbackplayerconnect = &callback_void;
    level.callbackplayerdisconnect = &callback_void;
    level.callbackplayerdamage = &callback_void;
    level.callbackplayerkilled = &callback_void;
    level.var_3a9881cb = &callback_void;
    level.callbackplayerlaststand = &callback_void;
    level.var_4268159 = &callback_void;
    level.var_69959686 = &callback_void;
    level.callbackplayermelee = &callback_void;
    level.callbackactordamage = &callback_void;
    level.callbackactorkilled = &callback_void;
    level.var_6788bf11 = &callback_void;
    level.callbackvehicledamage = &callback_void;
    level.callbackvehiclekilled = &callback_void;
    level.callbackactorspawned = &callback_void;
    if (isdefined(level._gametype_default)) {
        setdvar(#"g_gametype", level._gametype_default);
    }
    exitlevel(0);
}

// Namespace callback/glass_smash
// Params 1, eflags: 0x20
// Checksum 0x3524eab7, Offset: 0x4f48
// Size: 0x58
function event_handler[glass_smash] codecallback_glasssmash(eventstruct) {
    level notify(#"glass_smash", {#position:eventstruct.position, #direction:eventstruct.direction});
}

// Namespace callback/freefall
// Params 1, eflags: 0x20
// Checksum 0xdc00adbc, Offset: 0x4fa8
// Size: 0x2c
function event_handler[freefall] function_5019e563(eventstruct) {
    self callback(#"freefall", eventstruct);
}

// Namespace callback/parachute
// Params 1, eflags: 0x20
// Checksum 0x32deae3d, Offset: 0x4fe0
// Size: 0x2c
function event_handler[parachute] function_87b05fa3(eventstruct) {
    self callback(#"parachute", eventstruct);
}

// Namespace callback/event_43f9bc02
// Params 1, eflags: 0x20
// Checksum 0x84bd54d, Offset: 0x5018
// Size: 0x2c
function event_handler[event_43f9bc02] function_5bc68fd9(eventstruct) {
    self callback(#"hash_5d462019157fdedc", eventstruct);
}

// Namespace callback/event_57a38b79
// Params 1, eflags: 0x20
// Checksum 0x441cf044, Offset: 0x5050
// Size: 0x2c
function event_handler[event_57a38b79] function_250a9740(eventstruct) {
    self callback(#"hash_171443902e2a22ee", eventstruct);
}

// Namespace callback/swimming_begin
// Params 1, eflags: 0x20
// Checksum 0x7d5252e4, Offset: 0x5088
// Size: 0x44
function event_handler[swimming_begin] function_e337eb32(*eventstruct) {
    self callback(#"swimming", {#swimming:1});
}

// Namespace callback/swimming_end
// Params 1, eflags: 0x20
// Checksum 0xe8b15e3a, Offset: 0x50d8
// Size: 0x44
function event_handler[swimming_end] function_e142d2b2(*eventstruct) {
    self callback(#"swimming", {#swimming:0});
}

// Namespace callback/underwater
// Params 1, eflags: 0x20
// Checksum 0x9f70be62, Offset: 0x5128
// Size: 0x2c
function event_handler[underwater] codecallback_underwater(eventstruct) {
    self callback(#"underwater", eventstruct);
}

// Namespace callback/event_d6f9e6ad
// Params 1, eflags: 0x20
// Checksum 0x9cb156f, Offset: 0x5160
// Size: 0x2c
function event_handler[event_d6f9e6ad] function_8877d89(eventstruct) {
    self callback(#"hash_42aa89b2a0951308", eventstruct);
}

// Namespace callback/player_callout
// Params 1, eflags: 0x20
// Checksum 0x2bfee3d6, Offset: 0x5198
// Size: 0x2c
function event_handler[player_callout] function_c91ebb30(eventstruct) {
    self callback(#"player_callout", eventstruct);
}

/#

    // Namespace callback/debug_movement
    // Params 1, eflags: 0x20
    // Checksum 0x4810603d, Offset: 0x51d0
    // Size: 0x34
    function event_handler[debug_movement] function_930ce3c3(eventstruct) {
        self callback(#"debug_movement", eventstruct);
    }

#/

// Namespace callback/event_6726fc3a
// Params 1, eflags: 0x20
// Checksum 0x76e4c757, Offset: 0x5210
// Size: 0x2c
function event_handler[event_6726fc3a] function_86a28d6a(eventstruct) {
    self callback(#"hash_1f5aa545c7334d3a", eventstruct);
}

// Namespace callback/event_6ba27c50
// Params 1, eflags: 0x20
// Checksum 0x605f81c0, Offset: 0x5248
// Size: 0x2c
function event_handler[event_6ba27c50] function_d736b8a9(eventstruct) {
    self callback(#"hash_3b6ebf3a7ab5c795", eventstruct);
}

// Namespace callback/event_31e1c5e9
// Params 1, eflags: 0x20
// Checksum 0x39060d9c, Offset: 0x5280
// Size: 0x5c
function event_handler[event_31e1c5e9] function_7d45bff(*eventstruct) {
    self endon(#"death");
    level flag::wait_till("system_postinit_complete");
    self callback(#"hash_1e4a4ca774f4ce22");
}

// Namespace callback/trigger
// Params 2, eflags: 0x22 linked
// Checksum 0xe02ed3a7, Offset: 0x52e8
// Size: 0xcc
function event_handler[trigger] codecallback_trigger(eventstruct, look_trigger = 0) {
    self endon(#"death");
    if (look_trigger || !self trigger::is_look_trigger()) {
        self util::script_delay();
        self callback(#"on_trigger", eventstruct);
        self callback(#"on_trigger_once", eventstruct);
        self remove_on_trigger_once("all");
    }
}

// Namespace callback/entity_deleted
// Params 1, eflags: 0x20
// Checksum 0x821ad665, Offset: 0x53c0
// Size: 0x2c
function event_handler[entity_deleted] codecallback_entitydeleted(*eventstruct) {
    self callback(#"on_entity_deleted");
}

// Namespace callback/bot_enteruseredge
// Params 1, eflags: 0x20
// Checksum 0xcb6f8c25, Offset: 0x53f8
// Size: 0x2c
function event_handler[bot_enteruseredge] codecallback_botentereduseredge(eventstruct) {
    self callback(#"hash_767bb029d2dcda7c", eventstruct);
}

// Namespace callback/event_e054b61b
// Params 1, eflags: 0x20
// Checksum 0x76e728fe, Offset: 0x5430
// Size: 0x2c
function event_handler[event_e054b61b] function_d658381b(*eventstruct) {
    self callback(#"hash_6efb8cec1ca372dc");
}

// Namespace callback/event_46837d44
// Params 1, eflags: 0x20
// Checksum 0x9d0f548e, Offset: 0x5468
// Size: 0x2c
function event_handler[event_46837d44] function_2ff20679(*eventstruct) {
    self callback(#"hash_6280ac8ed281ce3c");
}

// Namespace callback/event_596b7bdc
// Params 1, eflags: 0x20
// Checksum 0xc0f9dc86, Offset: 0x54a0
// Size: 0x88
function event_handler[event_596b7bdc] function_f5026566(eventstruct) {
    if (!isdefined(level.var_abb3fd2)) {
        return;
    }
    /#
    #/
    eventdata = {};
    eventdata.tableindex = eventstruct.tableindex;
    eventdata.event_info = eventstruct.event_info;
    self [[ level.var_abb3fd2 ]](eventstruct.event_name, eventstruct.time, eventstruct.client, eventstruct.priority, eventdata);
}

// Namespace callback/player_decoration
// Params 1, eflags: 0x20
// Checksum 0x66871a9c, Offset: 0x5530
// Size: 0x70
function event_handler[player_decoration] codecallback_decoration(*eventstruct) {
    a_decorations = self getdecorations(1);
    if (!isdefined(a_decorations)) {
        return;
    }
    if (a_decorations.size == 12) {
    }
    level notify(#"decoration_awarded");
    [[ level.callbackdecorationawarded ]]();
}

// Namespace callback/event_4620dccd
// Params 1, eflags: 0x20
// Checksum 0xb1d2c191, Offset: 0x55a8
// Size: 0x30
function event_handler[event_4620dccd] function_a4a77d57(eventstruct) {
    if (isdefined(level.var_b24258)) {
        self [[ level.var_b24258 ]](eventstruct);
    }
}

// Namespace callback/event_4e560379
// Params 1, eflags: 0x20
// Checksum 0x782b8745, Offset: 0x55e0
// Size: 0x30
function event_handler[event_4e560379] function_d5edcd9a(eventstruct) {
    if (isdefined(level.var_ee39a80e)) {
        self [[ level.var_ee39a80e ]](eventstruct);
    }
}

// Namespace callback/event_ba6fea54
// Params 1, eflags: 0x20
// Checksum 0xa076f997, Offset: 0x5618
// Size: 0x4c
function event_handler[event_ba6fea54] function_f4449e63(eventstruct) {
    if (isdefined(level.var_17c7288a)) {
        [[ level.var_17c7288a ]](eventstruct.player, eventstruct.eventtype, eventstruct.eventdata, eventstruct.var_c5a66313);
    }
}

// Namespace callback/detonate
// Params 1, eflags: 0x20
// Checksum 0x7bb4a2d3, Offset: 0x5670
// Size: 0x2c
function event_handler[detonate] codecallback_detonate(eventstruct) {
    self callback(#"detonate", eventstruct);
}

// Namespace callback/doubletap_detonate
// Params 1, eflags: 0x20
// Checksum 0xb222db24, Offset: 0x56a8
// Size: 0x2c
function event_handler[doubletap_detonate] function_92aba4c4(eventstruct) {
    self callback(#"doubletap_detonate", eventstruct);
}

// Namespace callback/death
// Params 1, eflags: 0x20
// Checksum 0xc5cd8415, Offset: 0x56e0
// Size: 0x44
function event_handler[death] codecallback_death(eventstruct) {
    self notify(#"death", eventstruct);
    self callback(#"death", eventstruct);
}

// Namespace callback/callbacks_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x5730
// Size: 0x4
function callback_void() {
    
}

