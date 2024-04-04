// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace zm_equip_shield;

// Namespace zm_equip_shield/zm_weap_riotshield
// Params 0, eflags: 0x5
// Checksum 0x64e48f7c, Offset: 0x148
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_equip_shield", &preinit, undefined, undefined, undefined);
}

// Namespace zm_equip_shield/zm_weap_riotshield
// Params 0, eflags: 0x4
// Checksum 0xe7f3a07a, Offset: 0x190
// Size: 0x104
function private preinit() {
    callback::on_spawned(&player_on_spawned);
    clientfield::register("toplayer", "zm_shield_damage_rumble", 1, 1, "counter", &zm_shield_damage_rumble, 0, 0);
    clientfield::register("toplayer", "zm_shield_break_rumble", 1, 1, "counter", &zm_shield_break_rumble, 0, 0);
    clientfield::register_clientuimodel("ZMInventoryPersonal.shield_health", #"hash_1d3ddede734994d8", #"shield_health", 1, 4, "float", undefined, 0, 0);
}

// Namespace zm_equip_shield/zm_weap_riotshield
// Params 1, eflags: 0x0
// Checksum 0x97f0fc1e, Offset: 0x2a0
// Size: 0x24
function player_on_spawned(localclientnum) {
    self thread watch_weapon_changes(localclientnum);
}

// Namespace zm_equip_shield/zm_weap_riotshield
// Params 1, eflags: 0x0
// Checksum 0x3d9d1416, Offset: 0x2d0
// Size: 0x120
function watch_weapon_changes(*localclientnum) {
    self endon(#"death");
    while (isdefined(self)) {
        waitresult = self waittill(#"weapon_change");
        w_current = waitresult.weapon;
        w_previous = waitresult.last_weapon;
        if (w_current.isriotshield) {
            for (i = 0; i < w_current.var_21329beb.size; i++) {
                util::lock_model(w_current.var_21329beb[i]);
            }
            continue;
        }
        if (w_previous.isriotshield) {
            for (i = 0; i < w_previous.var_21329beb.size; i++) {
                util::unlock_model(w_previous.var_21329beb[i]);
            }
        }
    }
}

// Namespace zm_equip_shield/zm_weap_riotshield
// Params 7, eflags: 0x0
// Checksum 0x42d47328, Offset: 0x3f8
// Size: 0x64
function zm_shield_damage_rumble(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self playrumbleonentity(fieldname, "zm_shield_damage");
    }
}

// Namespace zm_equip_shield/zm_weap_riotshield
// Params 7, eflags: 0x0
// Checksum 0x1b9b06c2, Offset: 0x468
// Size: 0x64
function zm_shield_break_rumble(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self playrumbleonentity(fieldname, "zm_shield_break");
    }
}

