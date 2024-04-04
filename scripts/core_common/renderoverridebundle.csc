// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using script_13da4e6b98ca81a1;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace renderoverridebundle;

// Namespace renderoverridebundle/renderoverridebundle
// Params 0, eflags: 0x5
// Checksum 0xc3e2e290, Offset: 0x128
// Size: 0x34
function private autoexec __init__system__() {
    system::register("renderoverridebundle", &preinit, undefined, undefined, undefined);
}

// Namespace renderoverridebundle/renderoverridebundle
// Params 0, eflags: 0x6 linked
// Checksum 0x789efe5a, Offset: 0x168
// Size: 0x134
function private preinit() {
    level.renderoverridebundle = {#local_clients:[], #var_383fe4d6:[]};
    callback::on_localclient_connect(&function_d7ae6bbb);
    function_f72f089c(#"hash_ebb37dab2ee0ae3", sessionmodeiscampaigngame() ? #"rob_sonar_set_friendlyequip_cp" : #"rob_sonar_set_friendlyequip_mp", &function_6803f977);
    function_f72f089c(#"hash_2476e7ae62469f70", #"hash_39109749d54991e4", &function_9216f2c3);
    function_f72f089c(#"hash_2476eaae6246a489", #"hash_39109a49d54996fd", &function_9216f2c3);
}

// Namespace renderoverridebundle/renderoverridebundle
// Params 1, eflags: 0x2 linked
// Checksum 0x2cc97f40, Offset: 0x2a8
// Size: 0x6c
function function_d7ae6bbb(clientnum) {
    if (!isdefined(level.renderoverridebundle.local_clients[clientnum])) {
        level.renderoverridebundle.local_clients[clientnum] = {#var_e04728e4:[]};
    }
    thread function_e04728e4(clientnum);
}

// Namespace renderoverridebundle/renderoverridebundle
// Params 4, eflags: 0x4
// Checksum 0x4a78899c, Offset: 0x320
// Size: 0xa6
function private function_25996839(var_166900a8, bundle, validity_func, var_35a2c593) {
    /#
        var_3a009b84 = level.renderoverridebundle.var_383fe4d6[var_166900a8];
        if (!isdefined(var_3a009b84)) {
            return 0;
        }
        if (var_3a009b84.bundle != bundle) {
            return 1;
        }
        if (var_3a009b84.validity_func != validity_func) {
            return 1;
        }
        if (var_3a009b84.var_35a2c593 != var_35a2c593) {
            return 1;
        }
        return 0;
    #/
}

// Namespace renderoverridebundle/renderoverridebundle
// Params 6, eflags: 0x2 linked
// Checksum 0x1a082943, Offset: 0x3d0
// Size: 0x134
function function_f72f089c(var_166900a8, bundle, validity_func, var_35a2c593, default_bundle, force_kill) {
    assert(isdefined(level.renderoverridebundle));
    if (!isdefined(level.renderoverridebundle.var_383fe4d6)) {
        level.renderoverridebundle.var_383fe4d6 = [];
    }
    assert(!function_25996839(var_166900a8, bundle, validity_func, var_35a2c593));
    level.renderoverridebundle.var_383fe4d6[var_166900a8] = {#bundle:bundle, #validity_func:validity_func, #var_35a2c593:var_35a2c593, #var_1a5b7293:0, #default_bundle:default_bundle, #force_kill:force_kill};
}

// Namespace renderoverridebundle/renderoverridebundle
// Params 2, eflags: 0x2 linked
// Checksum 0xef287c63, Offset: 0x510
// Size: 0x2c
function function_2dbeddb5(*local_client_num, var_166900a8) {
    return level.renderoverridebundle.var_383fe4d6[var_166900a8];
}

// Namespace renderoverridebundle/renderoverridebundle
// Params 1, eflags: 0x2 linked
// Checksum 0x8002f733, Offset: 0x548
// Size: 0x3be
function function_e04728e4(local_client_num) {
    while (true) {
        result = level waittill(#"demo_jump", #"killcam_begin", #"killcam_end", #"player_switch", #"joined_team", #"localplayer_spawned", #"hash_7f642789ed08aae0", #"thermal_toggle", #"hacked");
        if (result._notify == "killcam_end") {
            function_9129cbe3(local_client_num);
        }
        var_e04728e4 = level.renderoverridebundle.local_clients[local_client_num].var_e04728e4;
        if (!isarray(var_e04728e4)) {
            waitframe(1);
            continue;
        }
        var_b8fe9b52 = codcaster::function_b8fe9b52(local_client_num);
        foreach (entity_num, entity_array in var_e04728e4) {
            entity = getentbynum(local_client_num, entity_num);
            if (!isdefined(entity)) {
                continue;
            }
            if (!isarray(entity_array)) {
                continue;
            }
            var_2bd670bd = 1;
            if (function_397ed5ed(entity)) {
                var_2bd670bd = isalive(entity);
            }
            if (var_2bd670bd) {
                if (var_b8fe9b52) {
                    foreach (flag, var_166900a8 in entity_array) {
                        if (var_166900a8 == #"hash_48a9d99bb016fbd3" || var_166900a8 == #"hash_2fff175ca0ba28b2" || var_166900a8 == #"hash_2476e7ae62469f70" || var_166900a8 == #"hash_2476eaae6246a489") {
                            continue;
                        }
                        entity thread function_c8d97b8e(local_client_num, flag, var_166900a8);
                    }
                    continue;
                }
                foreach (flag, var_166900a8 in entity_array) {
                    entity thread function_c8d97b8e(local_client_num, flag, var_166900a8);
                }
            }
        }
        waitframe(1);
    }
}

// Namespace renderoverridebundle/renderoverridebundle
// Params 1, eflags: 0x6 linked
// Checksum 0x1b9343a8, Offset: 0x910
// Size: 0x188
function private on_entity_shutdown(local_client_num) {
    var_2c81de05 = self getentitynumber();
    var_e04728e4 = level.renderoverridebundle.local_clients[local_client_num].var_e04728e4;
    if (!isarray(var_e04728e4)) {
        return;
    }
    foreach (entity_num, var_78b9c1b4 in var_e04728e4) {
        if (entity_num == var_2c81de05) {
            if (isarray(var_78b9c1b4)) {
                foreach (flag, var_3a009b84 in var_78b9c1b4) {
                    self flag::clear(flag);
                }
            }
            var_e04728e4[var_2c81de05] = undefined;
            return;
        }
    }
}

// Namespace renderoverridebundle/renderoverridebundle
// Params 1, eflags: 0x2 linked
// Checksum 0x6ef3b42f, Offset: 0xaa0
// Size: 0x1a4
function function_9129cbe3(local_client_num) {
    var_e04728e4 = level.renderoverridebundle.local_clients[local_client_num].var_e04728e4;
    if (!isarray(var_e04728e4)) {
        return;
    }
    foreach (entity_num, entity_array in var_e04728e4) {
        entity = getentbynum(local_client_num, entity_num);
        if (!isdefined(entity)) {
            continue;
        }
        if (!isarray(entity_array)) {
            continue;
        }
        foreach (flag, var_3a009b84 in entity_array) {
            if (entity flag::exists(flag)) {
                entity flag::clear(flag);
            }
        }
    }
}

// Namespace renderoverridebundle/renderoverridebundle
// Params 2, eflags: 0x2 linked
// Checksum 0x613d1764, Offset: 0xc50
// Size: 0x96
function start_bundle(flag, bundle) {
    is_set = flag::get(flag);
    if (!flag::get(flag)) {
        self flag::toggle(flag);
        self playrenderoverridebundle(bundle);
        self notify("kill" + flag + bundle);
    }
}

// Namespace renderoverridebundle/renderoverridebundle
// Params 3, eflags: 0x2 linked
// Checksum 0x97fd49d1, Offset: 0xcf0
// Size: 0xa4
function stop_bundle(flag, bundle, force_kill) {
    self notify("kill" + flag + bundle);
    if (flag::get(flag)) {
        self flag::toggle(flag);
        if (force_kill === 1) {
            self function_f6e99a8d(bundle);
            return;
        }
        self stoprenderoverridebundle(bundle);
    }
}

// Namespace renderoverridebundle/renderoverridebundle
// Params 4, eflags: 0x0
// Checksum 0x439d9c02, Offset: 0xda0
// Size: 0xac
function fade_bundle(localclientnum, flag, bundle, fadeduration) {
    self endon(#"death");
    if (flag::get(flag)) {
        util::lerp_generic(localclientnum, fadeduration, &function_9e7290f5, 1, 0, bundle);
    }
    wait(float(fadeduration) / 1000);
    stop_bundle(flag, bundle, 0);
}

// Namespace renderoverridebundle/renderoverridebundle
// Params 7, eflags: 0x2 linked
// Checksum 0x732971fe, Offset: 0xe58
// Size: 0xa4
function function_9e7290f5(*currenttime, elapsedtime, *localclientnum, fadeduration, from, to, bundle) {
    percent = localclientnum / fadeduration;
    amount = to * percent + from * (1 - percent);
    self function_78233d29(bundle, "", #"alpha", amount);
}

// Namespace renderoverridebundle/renderoverridebundle
// Params 2, eflags: 0x2 linked
// Checksum 0x6774e01f, Offset: 0xf08
// Size: 0x9e
function function_318de8bd(local_client_num, var_80292ef8) {
    if (!isdefined(var_80292ef8.validity_func) && isdefined(var_80292ef8.var_35a2c593)) {
        return 1;
    }
    if (isdefined(var_80292ef8.var_35a2c593)) {
        if (!isdefined(var_80292ef8.validity_func)) {
            return var_80292ef8.var_35a2c593;
        }
        return [[ var_80292ef8.validity_func ]](local_client_num, var_80292ef8.bundle, var_80292ef8.var_35a2c593);
    }
    return [[ var_80292ef8.validity_func ]](local_client_num, var_80292ef8);
}

// Namespace renderoverridebundle/renderoverridebundle
// Params 3, eflags: 0x2 linked
// Checksum 0xbaa53384, Offset: 0xfb0
// Size: 0x37a
function function_c8d97b8e(local_client_num, flag, var_166900a8) {
    if (!self flag::exists(flag)) {
        self flag::init(flag);
    }
    if (sessionmodeiswarzonegame()) {
        if (self.type === "actor_corpse" || self.type === "player_corpse") {
            return;
        }
    } else if (self.type === "actor_corpse" || self.type === "vehicle_corpse" || self.type === "player_corpse") {
        return;
    }
    var_80292ef8 = function_2dbeddb5(local_client_num, var_166900a8);
    if (!isdefined(var_80292ef8)) {
        return;
    }
    if (function_318de8bd(local_client_num, var_80292ef8)) {
        if (isdefined(var_80292ef8.default_bundle)) {
            self stop_bundle(flag + "_default", var_80292ef8.default_bundle, 1);
        }
        self start_bundle(flag, var_80292ef8.bundle);
    } else if (var_80292ef8.var_1a5b7293 && isdefined(var_80292ef8.default_bundle)) {
        self stop_bundle(flag, var_80292ef8.bundle, 1);
        self start_bundle(flag + "_default", var_80292ef8.default_bundle);
        var_80292ef8.var_1a5b7293 = 0;
    } else {
        self stop_bundle(flag, var_80292ef8.bundle, var_80292ef8.force_kill);
        if (isdefined(var_80292ef8.default_bundle)) {
            self stop_bundle(flag + "_default", var_80292ef8.default_bundle, var_80292ef8.force_kill);
        }
    }
    if (!isplayer(self)) {
        self callback::on_shutdown(&on_entity_shutdown);
    }
    entity_num = self getentitynumber();
    if (!isdefined(level.renderoverridebundle.local_clients[local_client_num])) {
        level.renderoverridebundle.local_clients[local_client_num] = {#var_e04728e4:[]};
    }
    if (!isdefined(level.renderoverridebundle.local_clients[local_client_num].var_e04728e4[entity_num])) {
        level.renderoverridebundle.local_clients[local_client_num].var_e04728e4[entity_num] = [];
    }
    level.renderoverridebundle.local_clients[local_client_num].var_e04728e4[entity_num][flag] = var_166900a8;
}

// Namespace renderoverridebundle/renderoverridebundle
// Params 2, eflags: 0x2 linked
// Checksum 0xd5ccc7f4, Offset: 0x1338
// Size: 0xce
function function_6803f977(local_client_num, bundle) {
    if (!self function_ca024039()) {
        return false;
    }
    if (isigcactive(local_client_num)) {
        return false;
    }
    if (isdefined(level.vision_pulse) && is_true(level.vision_pulse[local_client_num])) {
        return false;
    }
    player = function_5c10bd79(local_client_num);
    if (player.var_33b61b6f === 1) {
        bundle.force_kill = 1;
        return false;
    }
    return true;
}

// Namespace renderoverridebundle/renderoverridebundle
// Params 2, eflags: 0x0
// Checksum 0x65e66bb3, Offset: 0x1410
// Size: 0x8e
function function_ce7fd1b9(local_client_num, bundle) {
    if (self function_21c0fa55()) {
        return false;
    }
    if (self function_ca024039()) {
        return false;
    }
    player = function_5c10bd79(local_client_num);
    if (player.var_33b61b6f === 1) {
        bundle.force_kill = 1;
        return false;
    }
    return true;
}

// Namespace renderoverridebundle/renderoverridebundle
// Params 2, eflags: 0x2 linked
// Checksum 0xaf69499c, Offset: 0x14a8
// Size: 0x6e
function function_9216f2c3(local_client_num, *bundle) {
    if (is_true(level.gameended)) {
        return false;
    }
    if (!codcaster::function_b8fe9b52(bundle)) {
        return false;
    }
    if (is_true(level.isigcactive)) {
        return false;
    }
    return true;
}

// Namespace renderoverridebundle/renderoverridebundle
// Params 4, eflags: 0x2 linked
// Checksum 0x91abbbed, Offset: 0x1520
// Size: 0x94
function function_ee77bff9(local_client_num, field_name, bundle, var_d9c61b9c) {
    local_player = function_5c10bd79(local_client_num);
    should_play = isdefined(local_player) ? local_player clientfield::get_to_player(field_name) : 0;
    self function_f4eab437(local_client_num, should_play, bundle, var_d9c61b9c);
}

// Namespace renderoverridebundle/renderoverridebundle
// Params 4, eflags: 0x2 linked
// Checksum 0xfa19becf, Offset: 0x15c0
// Size: 0xac
function function_f4eab437(local_client_num, should_play, bundle, var_d9c61b9c) {
    if (isdefined(var_d9c61b9c)) {
        should_play = self [[ var_d9c61b9c ]](local_client_num, should_play);
    }
    is_playing = self function_d2503806(bundle);
    if (should_play) {
        if (!is_playing) {
            self playrenderoverridebundle(bundle);
        }
        return;
    }
    if (is_playing) {
        self stoprenderoverridebundle(bundle);
    }
}

