// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\gametypes\globallogic.gsc;
#using script_5e96d104c70be5ac;
#using scripts\zm_common\trials\zm_trial_disable_buys.gsc;
#using scripts\zm_common\zm_zonemgr.gsc;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_unitrigger.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_melee_weapon.gsc;
#using scripts\zm_common\zm_magicbox.gsc;
#using scripts\zm_common\zm_loadout.gsc;
#using scripts\zm_common\zm_equipment.gsc;
#using scripts\zm_common\zm_customgame.gsc;
#using scripts\zm_common\zm_contracts.gsc;
#using scripts\zm_common\zm_bgb.gsc;
#using scripts\zm_common\zm_audio.gsc;
#using scripts\zm_common\bb.gsc;
#using scripts\zm_common\callbacks.gsc;
#using script_7a8059ca02b7b09e;
#using scripts\core_common\math_shared.gsc;
#using script_340a2e805e35f7a2;
#using script_471b31bd963b388e;
#using scripts\core_common\item_drop.gsc;
#using scripts\core_common\content_manager.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace namespace_207ea311;

// Namespace namespace_207ea311/namespace_207ea311
// Params 0, eflags: 0x5
// Checksum 0xfd92f2f, Offset: 0x1c0
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_684573a459d68beb", &preinit, &postinit, undefined, undefined);
}

// Namespace namespace_207ea311/namespace_207ea311
// Params 0, eflags: 0x4
// Checksum 0x2c89461a, Offset: 0x218
// Size: 0x44
function private preinit() {
    clientfield::register("allplayers", "" + #"hash_63af42145e260fb5", 1, 2, "int");
}

// Namespace namespace_207ea311/namespace_207ea311
// Params 0, eflags: 0x4
// Checksum 0xbd8dafb3, Offset: 0x268
// Size: 0x44
function private postinit() {
    callback::on_spawned(&on_player_spawned);
    callback::on_player_killed(&on_death);
}

// Namespace namespace_207ea311/namespace_207ea311
// Params 0, eflags: 0x0
// Checksum 0x89ce437a, Offset: 0x2b8
// Size: 0x44
function on_player_spawned() {
    if (isdefined(level.var_33833303)) {
        self thread [[ level.var_33833303 ]]();
        return;
    }
    self thread function_23c31b4e();
}

// Namespace namespace_207ea311/namespace_207ea311
// Params 0, eflags: 0x0
// Checksum 0xdb1bda5f, Offset: 0x308
// Size: 0x2c
function on_death() {
    self clientfield::set("" + #"hash_63af42145e260fb5", 0);
}

// Namespace namespace_207ea311/namespace_207ea311
// Params 1, eflags: 0x0
// Checksum 0xa6445cd5, Offset: 0x340
// Size: 0x34
function function_31b6f21e(*str_notify) {
    self clientfield::set("" + #"hash_63af42145e260fb5", 0);
}

// Namespace namespace_207ea311/namespace_207ea311
// Params 0, eflags: 0x0
// Checksum 0x945adb60, Offset: 0x380
// Size: 0x1c2
function function_23c31b4e() {
    if (is_true(self.is_hotjoining) || self util::is_spectating()) {
        return;
    }
    self endoncallback(&function_31b6f21e, #"death");
    while (true) {
        if (level flag::get(#"dark_aether_active")) {
            self clientfield::set("" + #"hash_63af42145e260fb5", 2);
        } else if (level flag::get("power_on")) {
            self clientfield::set("" + #"hash_63af42145e260fb5", 0);
        } else {
            self childthread function_3ba2978d();
        }
        waitresult = level waittill(#"dark_aether_active", #"power_on");
        if (waitresult._notify == "power_on") {
            wait(5);
        }
        if (waitresult._notify == "dark_aether_active" && level flag::get(#"dark_aether_active")) {
            wait(3);
        }
    }
}

// Namespace namespace_207ea311/namespace_207ea311
// Params 0, eflags: 0x0
// Checksum 0xb483450, Offset: 0x550
// Size: 0xce
function function_3ba2978d() {
    level endon(#"dark_aether_active", #"power_on");
    while (true) {
        if (self zm_zonemgr::is_player_in_zone(level.var_b80c4ecc)) {
            self clientfield::set("" + #"hash_63af42145e260fb5", 1);
        } else {
            self clientfield::set("" + #"hash_63af42145e260fb5", 0);
        }
        self waittill(#"zone_change");
    }
}

// Namespace namespace_207ea311/namespace_207ea311
// Params 0, eflags: 0x0
// Checksum 0x1c710217, Offset: 0x628
// Size: 0xc0
function function_57cc7ff7() {
    a_players = getplayers();
    foreach (player in a_players) {
        player clientfield::set("" + #"hash_63af42145e260fb5", 0);
    }
}

// Namespace namespace_207ea311/namespace_207ea311
// Params 1, eflags: 0x0
// Checksum 0x7b392fe4, Offset: 0x6f0
// Size: 0x5c
function function_c6b98f73(a_zones) {
    if (!isdefined(a_zones)) {
        a_zones = [];
    } else if (!isarray(a_zones)) {
        a_zones = array(a_zones);
    }
    level.var_b80c4ecc = a_zones;
}

