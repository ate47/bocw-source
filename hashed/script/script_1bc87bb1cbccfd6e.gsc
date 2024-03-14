// Atian COD Tools GSC CW decompiler test
#using script_48a4cce0f86a3f65;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\cp_common\gametypes\globallogic_ui.gsc;
#using script_35ae72be7b4fec10;

#namespace helicopter;

// Namespace helicopter/namespace_dd60787e
// Params 0, eflags: 0x5
// Checksum 0x395245fb, Offset: 0x228
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"chopper", &_preload, undefined, undefined, undefined);
}

// Namespace helicopter/namespace_dd60787e
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x270
// Size: 0x4
function private _preload() {
    
}

// Namespace helicopter/namespace_dd60787e
// Params 0, eflags: 0x2 linked
// Checksum 0x9c5c271e, Offset: 0x280
// Size: 0xec
function function_2b057725() {
    level.player = isdefined(level.player) ? level.player : getplayers()[0];
    if (!namespace_61e6d095::exists(#"hash_6481c47ace299b25")) {
        namespace_61e6d095::create(#"hash_6481c47ace299b25", #"chopper");
    }
    level.player val::set(#"helicopter", "show_weapon_hud", 0);
    level.player thread function_3cc2b159();
    entname::remove_all();
}

// Namespace helicopter/namespace_dd60787e
// Params 0, eflags: 0x2 linked
// Checksum 0xf543bc69, Offset: 0x378
// Size: 0x154
function function_437dfc97() {
    level.player = isdefined(level.player) ? level.player : getplayers()[0];
    self notify("30dbc82404b4037b");
    self endon("30dbc82404b4037b");
    if (namespace_61e6d095::exists(#"hash_6481c47ace299b25")) {
        namespace_61e6d095::remove(#"hash_6481c47ace299b25");
    }
    level.player val::reset(#"helicopter", "show_crosshair");
    level.player val::reset(#"helicopter", "show_weapon_hud");
    level.player notify(#"hash_6f1306832c75c68f");
    if (namespace_61e6d095::exists(#"hash_10ec463196b21e75")) {
        namespace_61e6d095::remove(#"hash_10ec463196b21e75");
    }
}

// Namespace helicopter/namespace_dd60787e
// Params 0, eflags: 0x6 linked
// Checksum 0xd16233f4, Offset: 0x4d8
// Size: 0x186
function private function_3cc2b159() {
    self endon(#"hash_6f1306832c75c68f", #"death");
    self thread function_d7c9c129();
    while (true) {
        if (isdefined(level.var_7466d419)) {
            weaponheat = level.var_7466d419 getturretheatvalue(3);
            weaponoverheating = level.var_7466d419 isvehicleturretoverheating(3);
            rocketammo = level.var_7466d419 function_e2d89efe(0);
            reloading = level.var_7466d419 function_fde0d99e(0) > 0;
            globallogic_ui::function_9ed5232e("cp_chopper_hud.weaponHeat", weaponheat, 0);
            globallogic_ui::function_9ed5232e("cp_chopper_hud.weaponOverheating", weaponoverheating, 0);
            globallogic_ui::function_9ed5232e("cp_chopper_hud.rocketAmmo", rocketammo, 0);
            globallogic_ui::function_9ed5232e("cp_chopper_hud.rocketReloading", reloading, 0);
        }
        waitframe(1);
    }
}

// Namespace helicopter/namespace_dd60787e
// Params 0, eflags: 0x2 linked
// Checksum 0xdcf3e675, Offset: 0x668
// Size: 0x4f6
function function_d7c9c129() {
    self endon(#"hash_6f1306832c75c68f", #"death");
    var_e583559a = getent("vol_ripcord_reticle", "targetname");
    if (!namespace_61e6d095::exists(#"hash_10ec463196b21e75")) {
        namespace_61e6d095::create(#"hash_10ec463196b21e75", #"hash_1624d8814bab0c71");
    }
    while (true) {
        if (isdefined(level.var_7466d419)) {
            var_2f37fbd = 0;
            weaponoverenemy = 0;
            v_origin = self getplayercamerapos();
            v_angles = anglestoforward(self getplayerangles());
            a_trace = bullettrace(v_origin, v_origin + vectorscale(v_angles, 30000), 1, level.var_7466d419, 1, 0, self);
            var_fd92bc1 = a_trace[#"entity"];
            str_name = #"";
            var_dfc4aab4 = 0;
            if (isdefined(var_fd92bc1)) {
                if (isalive(var_fd92bc1) && isvehicle(var_fd92bc1) && var_fd92bc1 util::is_on_side(#"allies")) {
                    var_2f37fbd = 1;
                    if (isdefined(var_fd92bc1.var_97de493f)) {
                        str_name = var_fd92bc1.var_97de493f;
                        var_dfc4aab4 = 1;
                    }
                } else if (var_fd92bc1 util::is_on_side(#"axis")) {
                    if (isalive(var_fd92bc1)) {
                        weaponoverenemy = 1;
                    } else if (var_fd92bc1 flag::get(#"hash_5e822f0ec26ae171") && !var_fd92bc1 flag::get(#"hash_667f31bea2f2a495")) {
                        weaponoverenemy = 1;
                    }
                }
            } else {
                v_hit = a_trace[#"position"];
                if (isdefined(v_hit) && istouching(v_hit, var_e583559a)) {
                    var_2f37fbd = 1;
                    str_name = #"hash_37c430482010f0d0";
                    var_dfc4aab4 = 1;
                }
            }
            if (var_2f37fbd || weaponoverenemy) {
                level flag::set("chopper_hud_target_highlighted");
                level flag::clear("chopper_hud_delayed_reticle_clear");
                namespace_61e6d095::set_text(#"hash_10ec463196b21e75", str_name);
                namespace_61e6d095::set_state(#"hash_10ec463196b21e75", var_dfc4aab4);
                globallogic_ui::function_9ed5232e("cp_chopper_hud.weaponOverFriendly", var_2f37fbd, 0);
                globallogic_ui::function_9ed5232e("cp_chopper_hud.weaponOverEnemy", weaponoverenemy, 0);
            } else if (level flag::get("chopper_hud_target_highlighted") && !level flag::get("chopper_hud_delayed_reticle_clear")) {
                level flag::clear("chopper_hud_target_highlighted");
                level flag::set("chopper_hud_delayed_reticle_clear");
                self thread function_3c5aae6c();
            } else if (!level flag::get("chopper_hud_delayed_reticle_clear")) {
                function_5c086305();
            }
        }
        waitframe(1);
    }
}

// Namespace helicopter/namespace_dd60787e
// Params 0, eflags: 0x2 linked
// Checksum 0x615b5f45, Offset: 0xb68
// Size: 0x74
function function_3c5aae6c() {
    self endon(#"hash_6f1306832c75c68f", #"death");
    level endon(#"hash_64a6c893bf1f6460");
    waitframe(3);
    function_5c086305();
    level flag::clear("chopper_hud_delayed_reticle_clear");
}

// Namespace helicopter/namespace_dd60787e
// Params 0, eflags: 0x2 linked
// Checksum 0xceed6729, Offset: 0xbe8
// Size: 0x94
function function_5c086305() {
    namespace_61e6d095::set_text(#"hash_10ec463196b21e75", #"");
    namespace_61e6d095::set_state(#"hash_10ec463196b21e75", 0);
    globallogic_ui::function_9ed5232e("cp_chopper_hud.weaponOverFriendly", 0, 0);
    globallogic_ui::function_9ed5232e("cp_chopper_hud.weaponOverEnemy", 0, 0);
}

