// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_aoe.gsc;
#using script_36f4be19da8eb6d0;
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\status_effects\status_effect_util.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\ai\zombie_eye_glow.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace zm_hazard;

// Namespace zm_hazard/zm_hazard
// Params 0, eflags: 0x0
// Checksum 0x5846596f, Offset: 0x148
// Size: 0x84
function init() {
    if (is_true(level.var_9377a535)) {
        return;
    }
    level.var_9377a535 = 1;
    if (!isdefined(level.var_95198344)) {
        level.var_95198344 = [];
    }
    callback::on_spawned(&on_player_spawned);
    /#
        level thread function_b5cd0ae5();
    #/
}

// Namespace zm_hazard/zm_hazard
// Params 1, eflags: 0x0
// Checksum 0x4b64f9ab, Offset: 0x1d8
// Size: 0x4a0
function function_6b39d9c5(count) {
    spawnpoints = struct::get_array("radiation_hazard", "targetname");
    spawnpoints = array::randomize(spawnpoints);
    var_baa683fe = arraycopy(level.var_95198344);
    var_3d3c8738 = [];
    foreach (point in spawnpoints) {
        if (!isinarray(var_baa683fe, point) && zm_utility::check_point_in_enabled_zone(point.origin) && zm_utility::check_point_in_playable_area(point.origin)) {
            a_e_players = function_a1ef346b(undefined, point.origin, 275);
            var_68298325 = 0;
            foreach (e_player in a_e_players) {
                if (!e_player laststand::player_is_in_laststand()) {
                    var_68298325 = 1;
                    break;
                }
            }
            if (var_68298325) {
                continue;
            }
            if (var_baa683fe.size > 0) {
                foreach (var_10e462a8 in var_baa683fe) {
                    if (distancesquared(point.origin, var_10e462a8.origin) >= 250000) {
                        if (!isdefined(var_3d3c8738)) {
                            var_3d3c8738 = [];
                        } else if (!isarray(var_3d3c8738)) {
                            var_3d3c8738 = array(var_3d3c8738);
                        }
                        var_3d3c8738[var_3d3c8738.size] = point;
                        if (!isdefined(var_baa683fe)) {
                            var_baa683fe = [];
                        } else if (!isarray(var_baa683fe)) {
                            var_baa683fe = array(var_baa683fe);
                        }
                        var_baa683fe[var_baa683fe.size] = point;
                        break;
                    }
                }
            } else {
                if (!isdefined(var_3d3c8738)) {
                    var_3d3c8738 = [];
                } else if (!isarray(var_3d3c8738)) {
                    var_3d3c8738 = array(var_3d3c8738);
                }
                var_3d3c8738[var_3d3c8738.size] = point;
                if (!isdefined(var_baa683fe)) {
                    var_baa683fe = [];
                } else if (!isarray(var_baa683fe)) {
                    var_baa683fe = array(var_baa683fe);
                }
                var_baa683fe[var_baa683fe.size] = point;
            }
            if (var_3d3c8738.size >= count) {
                break;
            }
        }
    }
    foreach (point in var_3d3c8738) {
        level thread function_47187ffc(point);
    }
}

// Namespace zm_hazard/zm_hazard
// Params 1, eflags: 0x0
// Checksum 0x2e2c8845, Offset: 0x680
// Size: 0xd0
function function_47187ffc(point) {
    zm_aoe::function_371b4147(1, "zm_aoe_radiation_hazard", point.origin, point, &function_b8a8955, &function_252d8295);
    if (!isdefined(level.var_95198344)) {
        level.var_95198344 = [];
    } else if (!isarray(level.var_95198344)) {
        level.var_95198344 = array(level.var_95198344);
    }
    level.var_95198344[level.var_95198344.size] = point;
}

// Namespace zm_hazard/zm_hazard
// Params 0, eflags: 0x0
// Checksum 0x96338591, Offset: 0x758
// Size: 0x1c
function on_player_spawned() {
    self thread function_1c2829b5();
}

// Namespace zm_hazard/zm_hazard
// Params 0, eflags: 0x4
// Checksum 0x931e1518, Offset: 0x780
// Size: 0x98
function private function_1c2829b5() {
    self endon(#"death");
    while (true) {
        s_waitresult = self waittill(#"aoe_damage");
        if (s_waitresult.var_159100b7 == "zm_aoe_radiation_hazard") {
            self status_effect::status_effect_apply(getstatuseffect(#"hash_48bb9c4c96e64c3d"), undefined, self);
        }
    }
}

// Namespace zm_hazard/zm_hazard
// Params 0, eflags: 0x4
// Checksum 0x15de9975, Offset: 0x820
// Size: 0x1e2
function private function_6fa1e587() {
    self endon(#"hash_3913004963ca6fe4");
    self.trigger_damage = spawn("trigger_damage", self.position + (0, 0, 30), 4194304, 75, 175);
    self.trigger_damage.owner = self;
    self.trigger_damage.health = 99999;
    self.trigger_damage.var_22cea3da = &function_4685c5f8;
    self.trigger_damage endon(#"death");
    while (true) {
        s_result = self.trigger_damage waittill(#"damage");
        if (isplayer(s_result.attacker)) {
            if (isdefined(s_result.weapon) && namespace_b376a999::function_5fef4201(s_result.weapon)) {
                level notify(#"hash_4a62d4959b0dbb0e", {#e_player:s_result.attacker});
                if (namespace_b376a999::function_7c292369(s_result.weapon)) {
                    zm_aoe::function_389bf7bf(self, 1);
                    println("<unknown string>");
                    s_result.attacker notify(#"hash_7f30d2acb25cc4d9");
                    return;
                }
            }
        }
    }
}

// Namespace zm_hazard/zm_hazard
// Params 2, eflags: 0x0
// Checksum 0x2a24bbdb, Offset: 0xa10
// Size: 0x80
function function_4685c5f8(attacker, time) {
    if (time >= 4000) {
        if (isdefined(self.owner)) {
            zm_aoe::function_389bf7bf(self.owner, 1);
            println("<unknown string>");
            attacker notify(#"hash_7f30d2acb25cc4d9");
        }
    }
}

// Namespace zm_hazard/zm_hazard
// Params 1, eflags: 0x0
// Checksum 0xb95f26a6, Offset: 0xa98
// Size: 0x24
function function_b8a8955(aoe) {
    aoe thread function_6fa1e587();
}

// Namespace zm_hazard/zm_hazard
// Params 1, eflags: 0x0
// Checksum 0xa5e3f27c, Offset: 0xac8
// Size: 0x64
function function_252d8295(aoe) {
    if (isdefined(aoe.userdata)) {
        arrayremovevalue(level.var_95198344, aoe.userdata);
    }
    if (isdefined(aoe.trigger_damage)) {
        aoe.trigger_damage delete();
    }
}

// Namespace zm_hazard/zm_hazard
// Params 0, eflags: 0x0
// Checksum 0x70eafce3, Offset: 0xb38
// Size: 0x24
function function_9e3de60() {
    level.var_95198344 = [];
    zm_aoe::function_3690781e();
}

/#

    // Namespace zm_hazard/zm_hazard
    // Params 0, eflags: 0x0
    // Checksum 0x28afc4c1, Offset: 0xb68
    // Size: 0x7c
    function function_b5cd0ae5() {
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        level flag::wait_till("<unknown string>");
        zm_devgui::add_custom_devgui_callback(&function_2499fe1b);
    }

    // Namespace zm_hazard/zm_hazard
    // Params 0, eflags: 0x0
    // Checksum 0x6c985b44, Offset: 0xbf0
    // Size: 0x1ac
    function function_eccc5dbd() {
        player = getplayers()[0];
        v_direction = player getplayerangles();
        v_direction = anglestoforward(v_direction) * 500;
        eye = player geteye();
        trace = bullettrace(eye, eye + v_direction, 0, undefined);
        var_770ed480 = positionquery_source_navigation(trace[#"position"], 64, 256, 512, 20);
        spot = spawn("<unknown string>", player.origin);
        spot setmodel("<unknown string>");
        if (isdefined(var_770ed480) && var_770ed480.data.size > 0) {
            spot.origin = var_770ed480.data[0].origin;
        }
        println("<unknown string>" + spot.origin);
        level thread function_47187ffc(spot);
    }

    // Namespace zm_hazard/zm_hazard
    // Params 1, eflags: 0x0
    // Checksum 0x327340e1, Offset: 0xda8
    // Size: 0x9a
    function function_2499fe1b(cmd) {
        switch (cmd) {
        case #"hash_1a5bda29acd157fd":
            function_eccc5dbd();
            break;
        case #"hash_55c4e53689e598c3":
            function_9e3de60();
            level notify(#"hash_7e539f4178c9c27c");
            break;
        default:
            break;
        }
    }

#/
