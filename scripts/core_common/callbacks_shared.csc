// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\scene_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\exploder_shared.csc;
#using scripts\core_common\audio_shared.csc;
#using scripts\core_common\array_shared.csc;
#using scripts\core_common\animation_shared.csc;
#using scripts\core_common\activecamo_shared.csc;

#namespace callback;

// Namespace callback/callbacks_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x22a6cf6f, Offset: 0x128
// Size: 0x12e
function callback(event, localclientnum, params) {
    if (isdefined(level._callbacks) && isdefined(level._callbacks[event])) {
        for (i = 0; i < level._callbacks[event].size; i++) {
            callback = level._callbacks[event][i][0];
            obj = level._callbacks[event][i][1];
            if (!isdefined(callback)) {
                continue;
            }
            if (isdefined(obj)) {
                if (isdefined(params)) {
                    obj thread [[ callback ]](localclientnum, self, params);
                } else {
                    obj thread [[ callback ]](localclientnum, self);
                }
                continue;
            }
            if (isdefined(params)) {
                self thread [[ callback ]](localclientnum, params);
                continue;
            }
            self thread [[ callback ]](localclientnum);
        }
    }
}

// Namespace callback/callbacks_shared
// Params 3, eflags: 0x2 linked
// Checksum 0xd669a8b6, Offset: 0x260
// Size: 0x11e
function entity_callback(event, localclientnum, params) {
    if (isdefined(self._callbacks) && isdefined(self._callbacks[event])) {
        for (i = 0; i < self._callbacks[event].size; i++) {
            callback = self._callbacks[event][i][0];
            obj = self._callbacks[event][i][1];
            if (!isdefined(callback)) {
                continue;
            }
            if (isdefined(obj)) {
                if (isdefined(params)) {
                    obj thread [[ callback ]](localclientnum, self, params);
                } else {
                    obj thread [[ callback ]](localclientnum, self);
                }
                continue;
            }
            if (isdefined(params)) {
                self thread [[ callback ]](localclientnum, params);
                continue;
            }
            self thread [[ callback ]](localclientnum);
        }
    }
}

// Namespace callback/callbacks_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x56d2e098, Offset: 0x388
// Size: 0x17c
function add_callback(event, func, obj) {
    assert(isdefined(event), "<unknown string>");
    if (!isdefined(level._callbacks) || !isdefined(level._callbacks[event])) {
        level._callbacks[event] = [];
    }
    foreach (callback in level._callbacks[event]) {
        if (callback[0] == func) {
            if (!isdefined(obj) || callback[1] == obj) {
                return;
            }
        }
    }
    array::add(level._callbacks[event], array(func, obj), 0);
    if (isdefined(obj)) {
        obj thread remove_callback_on_death(event, func);
    }
}

// Namespace callback/callbacks_shared
// Params 3, eflags: 0x2 linked
// Checksum 0xed090a8b, Offset: 0x510
// Size: 0x154
function add_entity_callback(event, func, obj) {
    assert(isdefined(event), "<unknown string>");
    if (!isdefined(self._callbacks) || !isdefined(self._callbacks[event])) {
        self._callbacks[event] = [];
    }
    foreach (callback in self._callbacks[event]) {
        if (callback[0] == func) {
            if (!isdefined(obj) || callback[1] == obj) {
                return;
            }
        }
    }
    array::add(self._callbacks[event], array(func, obj), 0);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xd70e8b51, Offset: 0x670
// Size: 0x44
function remove_callback_on_death(event, func) {
    self waittill(#"death");
    remove_callback(event, func, self);
}

// Namespace callback/callbacks_shared
// Params 3, eflags: 0x2 linked
// Checksum 0xcdebc8e9, Offset: 0x6c0
// Size: 0x124
function function_52ac9652(event, func, obj) {
    assert(isdefined(event), "<unknown string>");
    if (!isdefined(self._callbacks) || !isdefined(self._callbacks[event])) {
        return;
    }
    foreach (index, func_group in self._callbacks[event]) {
        if (func_group[0] == func) {
            if (func_group[1] === obj) {
                arrayremoveindex(self._callbacks[event], index, 0);
                break;
            }
        }
    }
}

// Namespace callback/callbacks_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x3c3391e0, Offset: 0x7f0
// Size: 0x12c
function remove_callback(event, func, obj) {
    assert(isdefined(event), "<unknown string>");
    assert(isdefined(level._callbacks[event]), "<unknown string>");
    foreach (index, func_group in level._callbacks[event]) {
        if (func_group[0] == func) {
            if (func_group[1] === obj) {
                arrayremoveindex(level._callbacks[event], index, 0);
                break;
            }
        }
    }
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xc7c89b28, Offset: 0x928
// Size: 0x3c
function on_localclient_connect(func, obj) {
    add_callback(#"on_localclient_connect", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x1d7accc8, Offset: 0x970
// Size: 0x3c
function on_localclient_shutdown(func, obj) {
    add_callback(#"on_localclient_shutdown", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x2fde1326, Offset: 0x9b8
// Size: 0x3c
function on_finalize_initialization(func, obj) {
    add_callback(#"on_finalize_initialization", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xc9246a86, Offset: 0xa00
// Size: 0x3c
function on_gameplay_started(func, obj) {
    add_callback(#"on_gameplay_started", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x39600276, Offset: 0xa48
// Size: 0x3c
function on_localplayer_spawned(func, obj) {
    add_callback(#"on_localplayer_spawned", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x54b819b0, Offset: 0xa90
// Size: 0x3c
function remove_on_localplayer_spawned(func, obj) {
    remove_callback(#"on_localplayer_spawned", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xcb506222, Offset: 0xad8
// Size: 0x3c
function on_spawned(func, obj) {
    add_callback(#"on_player_spawned", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0xd24b60bd, Offset: 0xb20
// Size: 0x3c
function remove_on_spawned(func, obj) {
    remove_callback(#"on_player_spawned", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x3ca7659d, Offset: 0xb68
// Size: 0x3c
function function_675f0963(func, obj) {
    add_callback(#"hash_1fc6e31d0d02aa3", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x359e619b, Offset: 0xbb0
// Size: 0x3c
function function_ce9bb4ec(func, obj) {
    remove_callback(#"hash_1fc6e31d0d02aa3", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x7c9e1e57, Offset: 0xbf8
// Size: 0x3c
function on_vehicle_spawned(func, obj) {
    add_callback(#"on_vehicle_spawned", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x5f381846, Offset: 0xc40
// Size: 0x3c
function remove_on_vehicle_spawned(func, obj) {
    remove_callback(#"on_vehicle_spawned", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x6697f1b0, Offset: 0xc88
// Size: 0x3c
function on_laststand(func, obj) {
    add_callback(#"on_player_laststand", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x6051dfec, Offset: 0xcd0
// Size: 0x3c
function remove_on_laststand(func, obj) {
    remove_callback(#"on_player_laststand", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x2e5f9b53, Offset: 0xd18
// Size: 0x3c
function on_player_corpse(func, obj) {
    add_callback(#"on_player_corpse", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xfcf582fe, Offset: 0xd60
// Size: 0x3c
function function_930e5d42(func, obj) {
    add_callback(#"hash_781399e15b138a4e", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xf7fa534b, Offset: 0xda8
// Size: 0x3c
function on_weapon_change(func, obj) {
    self add_entity_callback(#"weapon_change", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xbcc9b500, Offset: 0xdf0
// Size: 0x3c
function function_94eab4fb(func, obj) {
    self add_entity_callback(#"hash_435b494b9418c561", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x4ddf0156, Offset: 0xe38
// Size: 0x3c
function function_78827e7f(func, obj) {
    self add_entity_callback(#"hash_5768f5220f99ebd1", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x5d8e209f, Offset: 0xe80
// Size: 0x3c
function function_6231c19(func, obj) {
    add_callback(#"weapon_change", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x629ed4a2, Offset: 0xec8
// Size: 0x3c
function function_a880899e(func, obj) {
    self add_entity_callback(#"hash_42d524149523a1eb", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x94cb3ec5, Offset: 0xf10
// Size: 0x3c
function function_23694c6c(func, obj) {
    self add_entity_callback(#"hash_56b841ac8d1dac0b", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x9ea7f2da, Offset: 0xf58
// Size: 0x3c
function function_4531552d(func, obj) {
    self add_entity_callback(#"hash_28ae86e34f270362", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xb7fe9eda, Offset: 0xfa0
// Size: 0x3c
function function_74f5faf8(func, obj) {
    self add_entity_callback(#"hash_eb85a61dd6639ae", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x3110ce7e, Offset: 0xfe8
// Size: 0x3c
function on_deleted(func, obj) {
    add_callback(#"on_entity_deleted", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0xb1cc9c1, Offset: 0x1030
// Size: 0x3c
function remove_on_deleted(func, obj) {
    remove_callback(#"on_entity_deleted", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xa814d4fa, Offset: 0x1078
// Size: 0x3c
function on_shutdown(func, obj) {
    add_entity_callback(#"on_entity_shutdown", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0xb3fc8fb7, Offset: 0x10c0
// Size: 0x3c
function on_start_gametype(func, obj) {
    add_callback(#"on_start_gametype", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x4db73fcc, Offset: 0x1108
// Size: 0x3c
function on_end_game(func, obj) {
    add_callback(#"on_end_game", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x17380570, Offset: 0x1150
// Size: 0x3c
function remove_on_end_game(func, obj) {
    remove_callback(#"on_end_game", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x14c81623, Offset: 0x1198
// Size: 0x3c
function on_killcam_begin(func, obj) {
    add_callback(#"killcam_begin", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x29f3dfcf, Offset: 0x11e0
// Size: 0x3c
function on_killcam_end(func, obj) {
    add_callback(#"killcam_end", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x28a6c02c, Offset: 0x1228
// Size: 0x3c
function function_9fcd5f60(func, obj) {
    add_callback(#"hash_7a8be4f48b2d1cf6", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xa904c62c, Offset: 0x1270
// Size: 0x3c
function function_fb65b7c2(func, obj) {
    add_callback(#"hash_5fc3311fa3420931", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x3c796608, Offset: 0x12b8
// Size: 0x3c
function on_melee(func, obj) {
    add_callback(#"melee", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x12f6d84e, Offset: 0x1300
// Size: 0x3c
function on_trigger(func, obj) {
    add_entity_callback(#"on_trigger", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0xf755adde, Offset: 0x1348
// Size: 0x3c
function remove_on_trigger(func, obj) {
    function_52ac9652(#"on_trigger", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0x5eadeb8e, Offset: 0x1390
// Size: 0x3c
function on_trigger_once(func, obj) {
    add_entity_callback(#"on_trigger_once", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xe1abe57e, Offset: 0x13d8
// Size: 0x3c
function remove_on_trigger_once(func, obj) {
    function_52ac9652(#"on_trigger_once", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x504fc812, Offset: 0x1420
// Size: 0x3c
function function_2870abef(func, obj) {
    add_callback(#"hash_23660169f647c82b", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xc860d7c1, Offset: 0x1468
// Size: 0x3c
function function_b27200db(func, obj) {
    add_callback(#"hash_4bc6f7eaa57c10a7", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xed0f27d3, Offset: 0x14b0
// Size: 0x3c
function function_56df655f(func, obj) {
    add_callback(#"demo_jump", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xc736767b, Offset: 0x14f8
// Size: 0x3c
function function_f8062bf(func, obj) {
    add_callback(#"demo_player_switch", func, obj);
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x44cd60a5, Offset: 0x1540
// Size: 0x3c
function function_ed112c52(func, obj) {
    add_callback(#"player_switch", func, obj);
}

// Namespace callback/level_preinit
// Params 1, eflags: 0x20
// Checksum 0x9db08423, Offset: 0x1588
// Size: 0x1c
function event_handler[level_preinit] codecallback_preinitialization(*eventstruct) {
    system::run_pre_systems();
}

// Namespace callback/event_cc819519
// Params 1, eflags: 0x20
// Checksum 0x385f1c4c, Offset: 0x15b0
// Size: 0x1c
function event_handler[event_cc819519] function_12c01a61(*eventstruct) {
    system::run_post_systems();
}

// Namespace callback/level_finalizeinit
// Params 1, eflags: 0x20
// Checksum 0x35182865, Offset: 0x15d8
// Size: 0x3c
function event_handler[level_finalizeinit] codecallback_finalizeinitialization(*eventstruct) {
    system::function_b1553822();
    callback(#"on_finalize_initialization");
}

// Namespace callback/systemstatechange
// Params 1, eflags: 0x20
// Checksum 0xf55721da, Offset: 0x1620
// Size: 0x10c
function event_handler[systemstatechange] codecallback_statechange(eventstruct) {
    if (!isdefined(level._systemstates)) {
        level._systemstates = [];
    }
    if (!isdefined(level._systemstates[eventstruct.system])) {
        level._systemstates[eventstruct.system] = spawnstruct();
    }
    level._systemstates[eventstruct.system].state = eventstruct.state;
    if (isdefined(level._systemstates[eventstruct.system].callback)) {
        [[ level._systemstates[eventstruct.system].callback ]](eventstruct.localclientnum, eventstruct.state);
        return;
    }
    println("<unknown string>" + eventstruct.system + "<unknown string>");
}

// Namespace callback/event_6ba27c50
// Params 1, eflags: 0x20
// Checksum 0xf94b1842, Offset: 0x1738
// Size: 0x50
function event_handler[event_6ba27c50] function_d736b8a9(*eventstruct) {
    println("<unknown string>");
    if (isdefined(level.var_4564d138)) {
        level thread [[ level.var_4564d138 ]]();
    }
}

// Namespace callback/maprestart
// Params 1, eflags: 0x20
// Checksum 0x588522b7, Offset: 0x1790
// Size: 0x64
function event_handler[maprestart] codecallback_maprestart(*eventstruct) {
    println("<unknown string>");
    if (isdefined(level.var_6bd86801)) {
        level thread [[ level.var_6bd86801 ]]();
    }
    level thread util::init_utility();
}

// Namespace callback/event_daf3d2ef
// Params 1, eflags: 0x20
// Checksum 0x5bb8e5d0, Offset: 0x1800
// Size: 0x50
function event_handler[event_daf3d2ef] function_3036fadc(*eventstruct) {
    println("<unknown string>");
    if (isdefined(level.var_bad05810)) {
        level thread [[ level.var_bad05810 ]]();
    }
}

// Namespace callback/localclient_connect
// Params 1, eflags: 0x20
// Checksum 0xe6ded28d, Offset: 0x1858
// Size: 0x64
function event_handler[localclient_connect] codecallback_localclientconnect(eventstruct) {
    if (!isdefined(level.callbacklocalclientconnect)) {
        waitframe(1);
    }
    println("<unknown string>" + eventstruct.localclientnum);
    [[ level.callbacklocalclientconnect ]](eventstruct.localclientnum);
}

/#

    // Namespace callback/glass_smash
    // Params 1, eflags: 0x20
    // Checksum 0xea1121ac, Offset: 0x18c8
    // Size: 0x2c
    function event_handler[glass_smash] codecallback_glasssmash(*eventstruct) {
        println("<unknown string>");
    }

#/

// Namespace callback/sound_setambientstate
// Params 1, eflags: 0x20
// Checksum 0xed8e0567, Offset: 0x1900
// Size: 0x44
function event_handler[sound_setambientstate] codecallback_soundsetambientstate(eventstruct) {
    audio::setcurrentambientstate(eventstruct.ambientroom, eventstruct.ambientpackage, eventstruct.roomcollider, eventstruct.packagecollider, eventstruct.is_defaultroom);
}

// Namespace callback/sound_setaiambientstate
// Params 1, eflags: 0x20
// Checksum 0x984b9828, Offset: 0x1950
// Size: 0xc
function event_handler[sound_setaiambientstate] codecallback_soundsetaiambientstate(*eventstruct) {
    
}

// Namespace callback/event_10eed35b
// Params 1, eflags: 0x20
// Checksum 0x9ca8a92f, Offset: 0x1968
// Size: 0x50
function event_handler[event_10eed35b] function_d3771684(eventstruct) {
    if (!isdefined(level.var_44e74ef4)) {
        return;
    }
    println("<unknown string>");
    thread [[ level.var_44e74ef4 ]](eventstruct);
}

// Namespace callback/sound_playuidecodeloop
// Params 1, eflags: 0x20
// Checksum 0x31b8e55e, Offset: 0x19c0
// Size: 0x34
function event_handler[sound_playuidecodeloop] codecallback_soundplayuidecodeloop(eventstruct) {
    self thread audio::soundplayuidecodeloop(eventstruct.decode_string, eventstruct.play_time_ms);
}

// Namespace callback/player_spawned
// Params 1, eflags: 0x20
// Checksum 0xd17da084, Offset: 0x1a00
// Size: 0x40
function event_handler[player_spawned] codecallback_playerspawned(eventstruct) {
    while (!isdefined(level.callbackplayerspawned)) {
        waitframe(1);
    }
    [[ level.callbackplayerspawned ]](eventstruct.localclientnum);
}

// Namespace callback/player_laststand
// Params 1, eflags: 0x20
// Checksum 0xb5392215, Offset: 0x1a48
// Size: 0x24
function event_handler[player_laststand] codecallback_playerlaststand(eventstruct) {
    [[ level.callbackplayerlaststand ]](eventstruct.localclientnum);
}

// Namespace callback/event_d6f9e6ad
// Params 1, eflags: 0x20
// Checksum 0x700813b2, Offset: 0x1a78
// Size: 0x54
function event_handler[event_d6f9e6ad] function_c1d1f779(eventstruct) {
    if (!isdefined(level.var_c3e66138)) {
        return;
    }
    println("<unknown string>");
    thread [[ level.var_c3e66138 ]](eventstruct.var_428d0be2);
}

// Namespace callback/event_e469e10d
// Params 1, eflags: 0x20
// Checksum 0x7863b920, Offset: 0x1ad8
// Size: 0x34
function event_handler[event_e469e10d] function_cfcbacb1(eventstruct) {
    if (isdefined(level.var_beec2b1)) {
        [[ level.var_beec2b1 ]](eventstruct.localclientnum);
    }
}

// Namespace callback/event_dd67c1a8
// Params 1, eflags: 0x20
// Checksum 0x3856fce3, Offset: 0x1b18
// Size: 0x40
function event_handler[event_dd67c1a8] function_46c0443b(eventstruct) {
    if (isdefined(level.var_c442de72)) {
        [[ level.var_c442de72 ]](self, eventstruct.localclientnum, eventstruct.weapon);
    }
}

// Namespace callback/entity_gibevent
// Params 1, eflags: 0x20
// Checksum 0x23cb3da, Offset: 0x1b60
// Size: 0x48
function event_handler[entity_gibevent] codecallback_gibevent(eventstruct) {
    if (isdefined(level._gibeventcbfunc)) {
        self thread [[ level._gibeventcbfunc ]](eventstruct.localclientnum, eventstruct.type, eventstruct.locations);
    }
}

// Namespace callback/gametype_precache
// Params 1, eflags: 0x20
// Checksum 0xe6b613fc, Offset: 0x1bb0
// Size: 0x2c
function event_handler[gametype_precache] codecallback_precachegametype(*eventstruct) {
    if (isdefined(level.callbackprecachegametype)) {
        [[ level.callbackprecachegametype ]]();
    }
}

// Namespace callback/gametype_start
// Params 1, eflags: 0x20
// Checksum 0x1486de12, Offset: 0x1be8
// Size: 0x60
function event_handler[gametype_start] codecallback_startgametype(*eventstruct) {
    if (isdefined(level.callbackstartgametype) && (!isdefined(level.gametypestarted) || !level.gametypestarted)) {
        [[ level.callbackstartgametype ]]();
        level.gametypestarted = 1;
    }
}

// Namespace callback/entity_spawned
// Params 1, eflags: 0x20
// Checksum 0xb6862816, Offset: 0x1c50
// Size: 0x3c
function event_handler[entity_spawned] codecallback_entityspawned(eventstruct) {
    if (!isdefined(level.callbackentityspawned)) {
        waitframe(1);
    }
    [[ level.callbackentityspawned ]](eventstruct.localclientnum);
}

// Namespace callback/enter_vehicle
// Params 1, eflags: 0x20
// Checksum 0x30fced7d, Offset: 0x1c98
// Size: 0xa8
function event_handler[enter_vehicle] codecallback_entervehicle(eventstruct) {
    if (isplayer(self)) {
        if (isdefined(level.var_69b47c50)) {
            self [[ level.var_69b47c50 ]](eventstruct.localclientnum, eventstruct.vehicle);
        }
        return;
    }
    if (self isvehicle()) {
        if (isdefined(level.var_93b40f07)) {
            self [[ level.var_93b40f07 ]](eventstruct.localclientnum, eventstruct.player);
        }
    }
}

// Namespace callback/exit_vehicle
// Params 1, eflags: 0x20
// Checksum 0x823f1982, Offset: 0x1d48
// Size: 0xa8
function event_handler[exit_vehicle] codecallback_exitvehicle(eventstruct) {
    if (isplayer(self)) {
        if (isdefined(level.var_db2ec524)) {
            self [[ level.var_db2ec524 ]](eventstruct.localclientnum, eventstruct.vehicle);
        }
        return;
    }
    if (self isvehicle()) {
        if (isdefined(level.var_d4d60480)) {
            self [[ level.var_d4d60480 ]](eventstruct.localclientnum, eventstruct.player);
        }
    }
}

// Namespace callback/sound_notify
// Params 1, eflags: 0x20
// Checksum 0x2301db7, Offset: 0x1df8
// Size: 0x8a
function event_handler[sound_notify] codecallback_soundnotify(eventstruct) {
    switch (eventstruct.notetrack) {
    case #"scr_bomb_beep":
        if (getgametypesetting(#"silentplant") == 0) {
            self playsound(eventstruct.localclientnum, #"");
        }
        break;
    }
}

// Namespace callback/entity_shutdown
// Params 1, eflags: 0x20
// Checksum 0x2c34beb, Offset: 0x1e90
// Size: 0x6c
function event_handler[entity_shutdown] codecallback_entityshutdown(eventstruct) {
    if (isdefined(level.callbackentityshutdown)) {
        [[ level.callbackentityshutdown ]](eventstruct.localclientnum, eventstruct.entity);
    }
    eventstruct.entity entity_callback(#"on_entity_shutdown", eventstruct.localclientnum);
}

// Namespace callback/localclient_shutdown
// Params 1, eflags: 0x20
// Checksum 0x4ffbc8d, Offset: 0x1f08
// Size: 0x54
function event_handler[localclient_shutdown] codecallback_localclientshutdown(eventstruct) {
    level.localplayers = getlocalplayers();
    eventstruct.entity callback(#"on_localclient_shutdown", eventstruct.localclientnum);
}

// Namespace callback/localclient_changed
// Params 1, eflags: 0x20
// Checksum 0x4481d21b, Offset: 0x1f68
// Size: 0x24
function event_handler[localclient_changed] codecallback_localclientchanged(*eventstruct) {
    level.localplayers = getlocalplayers();
}

// Namespace callback/player_airsupport
// Params 1, eflags: 0x20
// Checksum 0x96bf279b, Offset: 0x1f98
// Size: 0xa0
function event_handler[player_airsupport] codecallback_airsupport(eventstruct) {
    if (isdefined(level.callbackairsupport)) {
        [[ level.callbackairsupport ]](eventstruct.localclientnum, eventstruct.location[0], eventstruct.location[1], eventstruct.location[2], eventstruct.type, eventstruct.yaw, eventstruct.team, eventstruct.team_faction, eventstruct.owner, eventstruct.exit_type, eventstruct.server_time, eventstruct.height);
    }
}

// Namespace callback/demosystem_jump
// Params 1, eflags: 0x20
// Checksum 0xc74b4b1b, Offset: 0x2040
// Size: 0x94
function event_handler[demosystem_jump] codecallback_demojump(eventstruct) {
    level notify(#"demo_jump", {#time:eventstruct.time});
    level notify("demo_jump" + eventstruct.localclientnum, {#time:eventstruct.time});
    level callback(#"demo_jump", eventstruct);
}

// Namespace callback/callbacks_shared
// Params 1, eflags: 0x0
// Checksum 0x60927b69, Offset: 0x20e0
// Size: 0x54
function codecallback_demoplayerswitch(localclientnum) {
    level notify(#"demo_player_switch");
    level notify("demo_player_switch" + localclientnum);
    level callback(#"demo_player_switch");
}

// Namespace callback/player_switch
// Params 1, eflags: 0x20
// Checksum 0x3d6348cb, Offset: 0x2140
// Size: 0x5c
function event_handler[player_switch] codecallback_playerswitch(eventstruct) {
    level notify(#"player_switch");
    level notify("player_switch" + eventstruct.localclientnum);
    level callback(#"player_switch", eventstruct);
}

// Namespace callback/killcam_begin
// Params 1, eflags: 0x20
// Checksum 0xf8fe5c64, Offset: 0x21a8
// Size: 0x94
function event_handler[killcam_begin] codecallback_killcambegin(eventstruct) {
    level notify(#"killcam_begin", {#time:eventstruct.time});
    level notify("killcam_begin" + eventstruct.localclientnum, {#time:eventstruct.time});
    level callback(#"killcam_begin", eventstruct);
}

// Namespace callback/killcam_end
// Params 1, eflags: 0x20
// Checksum 0x7e36ca11, Offset: 0x2248
// Size: 0x94
function event_handler[killcam_end] codecallback_killcamend(eventstruct) {
    level notify(#"killcam_end", {#time:eventstruct.time});
    level notify("killcam_end" + eventstruct.localclientnum, {#time:eventstruct.time});
    level callback(#"killcam_end", eventstruct);
}

// Namespace callback/event_b1c5e32
// Params 1, eflags: 0x20
// Checksum 0xa5374c35, Offset: 0x22e8
// Size: 0x2c
function event_handler[event_b1c5e32] function_d6a509f1(eventstruct) {
    level callback(#"hash_7a8be4f48b2d1cf6", eventstruct);
}

// Namespace callback/player_corpse
// Params 1, eflags: 0x20
// Checksum 0x2e7b4eab, Offset: 0x2320
// Size: 0x3c
function event_handler[player_corpse] codecallback_creatingcorpse(eventstruct) {
    if (isdefined(level.callbackcreatingcorpse)) {
        [[ level.callbackcreatingcorpse ]](eventstruct.localclientnum, eventstruct.player);
    }
}

// Namespace callback/exploder_activate
// Params 1, eflags: 0x20
// Checksum 0xf8073367, Offset: 0x2368
// Size: 0xdc
function event_handler[exploder_activate] codecallback_activateexploder(eventstruct) {
    if (!isdefined(level._exploder_ids)) {
        return;
    }
    exploder = undefined;
    foreach (k, v in level._exploder_ids) {
        if (v == eventstruct.exploder_id) {
            exploder = k;
            break;
        }
    }
    if (!isdefined(exploder)) {
        return;
    }
    exploder::activate_exploder(exploder);
}

// Namespace callback/exploder_deactivate
// Params 1, eflags: 0x20
// Checksum 0xd5f82bac, Offset: 0x2450
// Size: 0xdc
function event_handler[exploder_deactivate] codecallback_deactivateexploder(eventstruct) {
    if (!isdefined(level._exploder_ids)) {
        return;
    }
    exploder = undefined;
    foreach (k, v in level._exploder_ids) {
        if (v == eventstruct.exploder_id) {
            exploder = k;
            break;
        }
    }
    if (!isdefined(exploder)) {
        return;
    }
    exploder::stop_exploder(exploder);
}

// Namespace callback/sound_chargeshotweaponnotify
// Params 1, eflags: 0x20
// Checksum 0xa72724c0, Offset: 0x2538
// Size: 0x48
function event_handler[sound_chargeshotweaponnotify] codecallback_chargeshotweaponsoundnotify(eventstruct) {
    if (isdefined(level.sndchargeshot_func)) {
        self [[ level.sndchargeshot_func ]](eventstruct.localclientnum, eventstruct.weapon, eventstruct.chargeshotlevel);
    }
}

// Namespace callback/hostmigration
// Params 1, eflags: 0x20
// Checksum 0x4910ef45, Offset: 0x2588
// Size: 0x54
function event_handler[hostmigration] codecallback_hostmigration(eventstruct) {
    println("<unknown string>");
    if (isdefined(level.callbackhostmigration)) {
        [[ level.callbackhostmigration ]](eventstruct.localclientnum);
    }
}

// Namespace callback/entity_footstep
// Params 1, eflags: 0x20
// Checksum 0xfc9d4aba, Offset: 0x25e8
// Size: 0x44
function event_handler[entity_footstep] codecallback_playaifootstep(eventstruct) {
    [[ level.callbackplayaifootstep ]](eventstruct.localclientnum, eventstruct.location, eventstruct.surface, eventstruct.notetrack, eventstruct.bone);
}

// Namespace callback/callbacks_shared
// Params 3, eflags: 0x0
// Checksum 0xc9e47a81, Offset: 0x2638
// Size: 0x44
function codecallback_clientflag(localclientnum, flag, set) {
    if (isdefined(level.callbackclientflag)) {
        [[ level.callbackclientflag ]](localclientnum, flag, set);
    }
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x0
// Checksum 0xaad2ddf3, Offset: 0x2688
// Size: 0x5e
function codecallback_clientflagasval(localclientnum, val) {
    if (isdefined(level._client_flagasval_callbacks) && isdefined(level._client_flagasval_callbacks[self.type])) {
        self thread [[ level._client_flagasval_callbacks[self.type] ]](localclientnum, val);
    }
}

// Namespace callback/event_3cbeb
// Params 1, eflags: 0x20
// Checksum 0x8855e867, Offset: 0x26f0
// Size: 0x74
function event_handler[event_3cbeb] function_327732bf(eventstruct) {
    if (isdefined(level.var_dda8e1d8)) {
        [[ level.var_dda8e1d8 ]](eventstruct.localclientnum, eventstruct.job_index, eventstruct.extracam_index, eventstruct.session_mode, eventstruct.character_index, eventstruct.outfit_index, eventstruct.item_type, eventstruct.item_index, eventstruct.is_defaultrender);
    }
}

// Namespace callback/extracam_wcpaintjobicon
// Params 1, eflags: 0x20
// Checksum 0xfc23276c, Offset: 0x2770
// Size: 0x6c
function event_handler[extracam_wcpaintjobicon] codecallback_extracamrenderwcpaintjobicon(eventstruct) {
    if (isdefined(level.extra_cam_render_wc_paintjobicon_func_callback)) {
        [[ level.extra_cam_render_wc_paintjobicon_func_callback ]](eventstruct.localclientnum, eventstruct.extracam_index, eventstruct.job_index, eventstruct.weapon_options, eventstruct.weapon, eventstruct.loadout_slot, eventstruct.paintjob_slot, eventstruct.is_fileshare_preview);
    }
}

// Namespace callback/extracam_wcvarianticon
// Params 1, eflags: 0x20
// Checksum 0x871c54c9, Offset: 0x27e8
// Size: 0x6c
function event_handler[extracam_wcvarianticon] codecallback_extracamrenderwcvarianticon(eventstruct) {
    if (isdefined(level.extra_cam_render_wc_varianticon_func_callback)) {
        [[ level.extra_cam_render_wc_varianticon_func_callback ]](eventstruct.localclientnum, eventstruct.extracam_index, eventstruct.job_index, eventstruct.weapon_options, eventstruct.weapon, eventstruct.loadout_slot, eventstruct.paintjob_slot, eventstruct.is_fileshare_preview);
    }
}

// Namespace callback/collectibles_changed
// Params 1, eflags: 0x20
// Checksum 0xb5b651d9, Offset: 0x2860
// Size: 0x44
function event_handler[collectibles_changed] codecallback_collectibleschanged(eventstruct) {
    if (isdefined(level.on_collectibles_change)) {
        [[ level.on_collectibles_change ]](eventstruct.clientnum, eventstruct.collectibles, eventstruct.localclientnum);
    }
}

// Namespace callback/callbacks_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xc25d1dd6, Offset: 0x28b0
// Size: 0x54
function add_weapon_type(weapontype, callback) {
    if (!isdefined(level.weapon_type_callback_array)) {
        level.weapon_type_callback_array = [];
    }
    weapontype = getweapon(weapontype);
    level.weapon_type_callback_array[weapontype] = callback;
}

// Namespace callback/callbacks_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x2a1ca556, Offset: 0x2910
// Size: 0x66
function spawned_weapon_type(localclientnum) {
    weapontype = self.weapon.rootweapon;
    if (isdefined(level.weapon_type_callback_array) && isdefined(level.weapon_type_callback_array[weapontype])) {
        self thread [[ level.weapon_type_callback_array[weapontype] ]](localclientnum);
    }
}

// Namespace callback/callbacks_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x803bb103, Offset: 0x2980
// Size: 0x24
function function_cbfd8fd6(localclientnum) {
    activecamo::function_cbfd8fd6(localclientnum);
}

// Namespace callback/notetrack_callclientscript
// Params 1, eflags: 0x20
// Checksum 0xe6e366d1, Offset: 0x29b0
// Size: 0xba
function event_handler[notetrack_callclientscript] codecallback_callclientscript(eventstruct) {
    if (!isdefined(level._animnotifyfuncs)) {
        return;
    }
    if (isdefined(level._animnotifyfuncs[eventstruct.label])) {
        if (isdefined(eventstruct.param3) && eventstruct.param3 != "") {
            self [[ level._animnotifyfuncs[eventstruct.label] ]](eventstruct.param, eventstruct.param3);
            return;
        }
        self [[ level._animnotifyfuncs[eventstruct.label] ]](eventstruct.param);
    }
}

// Namespace callback/notetrack_callclientscriptonlevel
// Params 1, eflags: 0x20
// Checksum 0x145126ad, Offset: 0x2a78
// Size: 0xba
function event_handler[notetrack_callclientscriptonlevel] codecallback_callclientscriptonlevel(eventstruct) {
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
// Checksum 0xa0d4c6af, Offset: 0x2b40
// Size: 0x164
function event_handler[event_69572c01] function_2073f6dc(eventstruct) {
    origin = self.origin;
    magnitude = float(eventstruct.magnitude);
    innerradius = float(eventstruct.innerradius);
    outerradius = float(eventstruct.outerradius);
    innerdamage = isdefined(self.var_f501d778) ? self.var_f501d778 : 50;
    outerdamage = isdefined(self.var_e14c1b5c) ? self.var_e14c1b5c : 25;
    var_a62fd3ab = isdefined(self.var_abe3f153) ? self.var_abe3f153 : 1;
    var_c1cde02b = isdefined(self.var_bd0f9401) ? self.var_bd0f9401 : 1;
    physicsexplosionsphere(eventstruct.localclientnum, origin, outerradius, innerradius, magnitude, innerdamage, outerdamage, var_a62fd3ab, var_c1cde02b);
}

// Namespace callback/scene_init
// Params 1, eflags: 0x20
// Checksum 0xa050d75f, Offset: 0x2cb0
// Size: 0x44
function event_handler[scene_init] codecallback_serversceneinit(eventstruct) {
    if (isdefined(level.server_scenes[eventstruct.scene_name])) {
        level thread scene::init(eventstruct.scene_name);
    }
}

// Namespace callback/scene_play
// Params 1, eflags: 0x20
// Checksum 0x5fb1d816, Offset: 0x2d00
// Size: 0x5c
function event_handler[scene_play] codecallback_serversceneplay(eventstruct) {
    level thread scene_black_screen();
    if (isdefined(level.server_scenes[eventstruct.scene_name])) {
        level thread scene::play(eventstruct.scene_name);
    }
}

// Namespace callback/scene_stop
// Params 1, eflags: 0x20
// Checksum 0x1df5d4f1, Offset: 0x2d68
// Size: 0x64
function event_handler[scene_stop] codecallback_serverscenestop(eventstruct) {
    level thread scene_black_screen();
    if (isdefined(level.server_scenes[eventstruct.scene_name])) {
        level thread scene::stop(eventstruct.scene_name, undefined, undefined, undefined, 1);
    }
}

// Namespace callback/callbacks_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xc4e4fbda, Offset: 0x2dd8
// Size: 0x120
function scene_black_screen() {
    foreach (localclientnum in function_41bfa501()) {
        lui::screen_fade_out(localclientnum, 0);
    }
    waitframe(1);
    foreach (localclientnum in function_41bfa501()) {
        lui::screen_fade_in(localclientnum, 0);
    }
}

// Namespace callback/gadget_visionpulsereveal
// Params 1, eflags: 0x20
// Checksum 0x918d0e3e, Offset: 0x2f00
// Size: 0xc
function event_handler[gadget_visionpulsereveal] codecallback_gadgetvisionpulse_reveal(*eventstruct) {
    
}

// Namespace callback/callbacks_shared
// Params 6, eflags: 0x6 linked
// Checksum 0xd5e121a1, Offset: 0x2f18
// Size: 0x7c
function private fade_to_black_for_x_sec(localclientnum, startwait, blackscreenwait, fadeintime, fadeouttime, var_79f400ae) {
    wait(startwait);
    lui::screen_fade_out(localclientnum, fadeintime, var_79f400ae);
    wait(blackscreenwait);
    if (isdefined(self)) {
        lui::screen_fade_in(localclientnum, fadeouttime, var_79f400ae);
    }
}

// Namespace callback/ui_fadeblackscreen
// Params 1, eflags: 0x20
// Checksum 0xd21acdbf, Offset: 0x2fa0
// Size: 0x9c
function event_handler[ui_fadeblackscreen] codecallback_fadeblackscreen(eventstruct) {
    if (isdefined(self) && isplayer(self) && !isbot(self) && self function_21c0fa55()) {
        level thread fade_to_black_for_x_sec(eventstruct.localclientnum, 0, eventstruct.duration, eventstruct.blend, eventstruct.blend);
    }
}

// Namespace callback/event_40f83b44
// Params 1, eflags: 0x20
// Checksum 0xbd2a11b0, Offset: 0x3048
// Size: 0x9c
function event_handler[event_40f83b44] function_4b5ab05f(eventstruct) {
    if (isdefined(self) && isplayer(self) && !isbot(self) && self function_21c0fa55()) {
        level thread fade_to_black_for_x_sec(eventstruct.localclientnum, 0, eventstruct.duration, eventstruct.blend_out, eventstruct.blend_in);
    }
}

// Namespace callback/event_1f757215
// Params 1, eflags: 0x20
// Checksum 0x308d4ece, Offset: 0x30f0
// Size: 0x44
function event_handler[event_1f757215] function_5067ee2f(eventstruct) {
    self animation::play_siege(eventstruct.anim_name, eventstruct.shot_name, eventstruct.rate, eventstruct.loop);
}

// Namespace callback/forcestreambundle
// Params 1, eflags: 0x20
// Checksum 0xe8288b24, Offset: 0x3140
// Size: 0x34
function event_handler[forcestreambundle] codecallback_forcestreambundle(eventstruct) {
    forcestreambundle(eventstruct.name, eventstruct.var_3c542760, eventstruct.var_a0e51075);
}

// Namespace callback/event_bfc28859
// Params 1, eflags: 0x20
// Checksum 0x2600be05, Offset: 0x3180
// Size: 0x54
function event_handler[event_bfc28859] function_582e112f(eventstruct) {
    if (isdefined(level.var_45ca79e5)) {
        [[ level.var_45ca79e5 ]](eventstruct.localclientnum, eventstruct.eventtype, eventstruct.itemid, eventstruct.value, eventstruct.value2);
    }
}

// Namespace callback/event_a5e70678
// Params 1, eflags: 0x20
// Checksum 0x394e6c42, Offset: 0x31e0
// Size: 0x34
function event_handler[event_a5e70678] function_11988454(eventstruct) {
    if (isdefined(level.var_a6c75fcb)) {
        [[ level.var_a6c75fcb ]](eventstruct.var_85604f16);
    }
}

// Namespace callback/trigger
// Params 1, eflags: 0x20
// Checksum 0x6b1fbaf6, Offset: 0x3220
// Size: 0x7c
function event_handler[trigger] codecallback_trigger(eventstruct) {
    if (isdefined(level.var_a6c75fcb)) {
        self callback(#"on_trigger", eventstruct);
        self callback(#"on_trigger_once", eventstruct);
        self remove_on_trigger_once("all");
    }
}

// Namespace callback/entity_deleted
// Params 1, eflags: 0x20
// Checksum 0xf45d979, Offset: 0x32a8
// Size: 0x2c
function event_handler[entity_deleted] codecallback_entitydeleted(*eventstruct) {
    self callback(#"on_entity_deleted");
}

// Namespace callback/freefall
// Params 1, eflags: 0x20
// Checksum 0xbacecaf2, Offset: 0x32e0
// Size: 0x5c
function event_handler[freefall] function_5019e563(eventstruct) {
    self callback(#"freefall", eventstruct);
    self entity_callback(#"freefall", eventstruct.localclientnum, eventstruct);
}

// Namespace callback/parachute
// Params 1, eflags: 0x20
// Checksum 0x8214befe, Offset: 0x3348
// Size: 0x5c
function event_handler[parachute] function_87b05fa3(eventstruct) {
    self callback(#"parachute", eventstruct);
    self entity_callback(#"parachute", eventstruct.localclientnum, eventstruct);
}

// Namespace callback/event_43f9bc02
// Params 1, eflags: 0x20
// Checksum 0xba59ae44, Offset: 0x33b0
// Size: 0x5c
function event_handler[event_43f9bc02] function_5bc68fd9(eventstruct) {
    self callback(#"hash_5d462019157fdedc", eventstruct);
    self entity_callback(#"hash_5d462019157fdedc", eventstruct.localclientnum, eventstruct);
}

// Namespace callback/event_57a38b79
// Params 1, eflags: 0x20
// Checksum 0x40506e7b, Offset: 0x3418
// Size: 0x5c
function event_handler[event_57a38b79] function_250a9740(eventstruct) {
    self callback(#"hash_171443902e2a22ee", eventstruct);
    self entity_callback(#"hash_171443902e2a22ee", eventstruct.localclientnum, eventstruct);
}

// Namespace callback/death
// Params 1, eflags: 0x20
// Checksum 0x99bbf00b, Offset: 0x3480
// Size: 0x44
function event_handler[death] codecallback_death(eventstruct) {
    self notify(#"death", eventstruct);
    self entity_callback(#"death", eventstruct);
}

// Namespace callback/melee
// Params 1, eflags: 0x20
// Checksum 0x57af6dd8, Offset: 0x34d0
// Size: 0x2c
function event_handler[melee] codecallback_melee(eventstruct) {
    self callback(#"melee", eventstruct);
}

// Namespace callback/culled
// Params 1, eflags: 0x20
// Checksum 0xf40f5785, Offset: 0x3508
// Size: 0x2c
function event_handler[culled] function_667f84de(eventstruct) {
    self entity_callback(#"culled", eventstruct);
}

// Namespace callback/event_1b69f758
// Params 1, eflags: 0x20
// Checksum 0xae5ee0fd, Offset: 0x3540
// Size: 0x2c
function event_handler[event_1b69f758] function_255585d(eventstruct) {
    callback(#"hash_5fc3311fa3420931", eventstruct);
}

// Namespace callback/weapon_change
// Params 1, eflags: 0x20
// Checksum 0xcb9ae80c, Offset: 0x3578
// Size: 0x6c
function event_handler[weapon_change] function_6846a2b7(eventstruct) {
    if (self function_21c0fa55()) {
        level callback(#"weapon_change", eventstruct);
    }
    self callback(#"weapon_change", eventstruct);
}

// Namespace callback/event_41480c76
// Params 1, eflags: 0x20
// Checksum 0xf20555f5, Offset: 0x35f0
// Size: 0x6c
function event_handler[event_41480c76] function_c33f3471(eventstruct) {
    if (self function_21c0fa55()) {
        level callback(#"hash_4152cf6a61494581", eventstruct);
    }
    self callback(#"hash_4152cf6a61494581", eventstruct);
}

// Namespace callback/event_6e84b1b1
// Params 1, eflags: 0x20
// Checksum 0x29e0e0ad, Offset: 0x3668
// Size: 0x2c
function event_handler[event_6e84b1b1] function_ff9acfac(eventstruct) {
    level callback(#"hash_2fc4cfecaed47583", eventstruct);
}

// Namespace callback/event_2a48d8d7
// Params 1, eflags: 0x20
// Checksum 0x3a79240f, Offset: 0x36a0
// Size: 0x4c
function event_handler[event_2a48d8d7] function_c0a2fad1(eventstruct) {
    self callback(#"hash_42d524149523a1eb", eventstruct);
    self callback(#"hash_eb85a61dd6639ae", eventstruct);
}

// Namespace callback/event_4e1fa07c
// Params 1, eflags: 0x20
// Checksum 0xb7f7497f, Offset: 0x36f8
// Size: 0xac
function event_handler[event_4e1fa07c] function_5ea431f0(eventstruct) {
    if (self function_21c0fa55()) {
        level callback(#"hash_56b841ac8d1dac0b", eventstruct);
        level callback(#"hash_eb85a61dd6639ae", eventstruct);
    }
    self callback(#"hash_56b841ac8d1dac0b", eventstruct);
    self callback(#"hash_eb85a61dd6639ae", eventstruct);
}

// Namespace callback/event_2a2c80ff
// Params 1, eflags: 0x20
// Checksum 0x85f99462, Offset: 0x37b0
// Size: 0xac
function event_handler[event_2a2c80ff] function_7831af89(eventstruct) {
    if (self function_21c0fa55()) {
        level callback(#"hash_28ae86e34f270362", eventstruct);
        level callback(#"hash_eb85a61dd6639ae", eventstruct);
    }
    self callback(#"hash_28ae86e34f270362", eventstruct);
    self callback(#"hash_eb85a61dd6639ae", eventstruct);
}

// Namespace callback/updateactivecamo
// Params 1, eflags: 0x20
// Checksum 0x966d6d39, Offset: 0x3868
// Size: 0x3c
function event_handler[updateactivecamo] codecallback_updateactivecamo(eventstruct) {
    self callback(#"updateactivecamo", eventstruct.localclientnum, eventstruct);
}

// Namespace callback/event_ab7a7fd3
// Params 1, eflags: 0x20
// Checksum 0x2e551cb9, Offset: 0x38b0
// Size: 0x2c
function event_handler[event_ab7a7fd3] function_bc70e1e4(eventstruct) {
    self callback(#"hash_6900f4ea0ff32c3e", eventstruct);
}

// Namespace callback/ping
// Params 1, eflags: 0x20
// Checksum 0xeaacbb2c, Offset: 0x38e8
// Size: 0x2c
function event_handler[ping] function_87cf247e(eventstruct) {
    self callback(#"hash_435b494b9418c561", eventstruct);
}

// Namespace callback/event_7fdec554
// Params 1, eflags: 0x20
// Checksum 0xfd8b3beb, Offset: 0x3920
// Size: 0x2c
function event_handler[event_7fdec554] function_45d8e443(eventstruct) {
    self callback(#"hash_5768f5220f99ebd1", eventstruct);
}

// Namespace callback/event_e9d1ea42
// Params 1, eflags: 0x20
// Checksum 0xee7d801e, Offset: 0x3958
// Size: 0x2c
function event_handler[event_e9d1ea42] function_84c7f7d4(eventstruct) {
    self callback(#"hash_23660169f647c82b", eventstruct);
}

// Namespace callback/event_43452705
// Params 1, eflags: 0x20
// Checksum 0xbe38aae7, Offset: 0x3990
// Size: 0x2c
function event_handler[event_43452705] function_fcc3f82c(eventstruct) {
    self callback(#"hash_4bc6f7eaa57c10a7", eventstruct);
}

// Namespace callback/event_919707cb
// Params 1, eflags: 0x20
// Checksum 0x225d2d46, Offset: 0x39c8
// Size: 0xda
function event_handler[event_919707cb] function_75438dba(eventstruct) {
    if (!isdefined(self) || !isplayer(self)) {
        return;
    }
    localclientnum = eventstruct.localclientnum;
    if (!isdefined(localclientnum)) {
        return;
    }
    if (isdefined(level.var_a979e61b)) {
        if (self [[ level.var_a979e61b ]](localclientnum) === 1) {
            return;
        }
    }
    if (isdefined(level.var_a05cd64e)) {
        if (self [[ level.var_a05cd64e ]](localclientnum) === 1) {
            return;
        }
    }
    if (isdefined(level.var_53854c4)) {
        if (self [[ level.var_53854c4 ]](localclientnum) === 1) {
            return;
        }
    }
}

// Namespace callback/event_fa673889
// Params 1, eflags: 0x20
// Checksum 0x637507a3, Offset: 0x3ab0
// Size: 0x82
function event_handler[event_fa673889] function_54972fb6(eventstruct) {
    if (!isdefined(self) || !isplayer(self)) {
        return;
    }
    localclientnum = eventstruct.localclientnum;
    if (!isdefined(localclientnum)) {
        return;
    }
    if (isdefined(level.var_a05cd64e)) {
        if (self [[ level.var_a05cd64e ]](localclientnum) === 1) {
            return;
        }
    }
}

// Namespace callback/event_f4737734
// Params 1, eflags: 0x20
// Checksum 0x8893b147, Offset: 0x3b40
// Size: 0x2c
function event_handler[event_f4737734] objective_update(eventstruct) {
    self callback(#"hash_34e39ee0c9fa0092", eventstruct);
}

// Namespace callback/callbacks_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x398b2d36, Offset: 0x3b78
// Size: 0xbc
function callback_stunned(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self.stunned = bwastimejump;
    println("<unknown string>");
    if (bwastimejump) {
        self notify(#"stunned");
    } else {
        self notify(#"not_stunned");
    }
    if (isdefined(self.stunnedcallback)) {
        self [[ self.stunnedcallback ]](fieldname, bwastimejump);
    }
}

