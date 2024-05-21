// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\zm_common\zm_weapons.csc;
#using scripts\zm_common\zm_utility.csc;
#using scripts\zm_common\zm_score.csc;
#using scripts\zm_common\zm_magicbox.csc;
#using scripts\zm_common\zm_equipment.csc;
#using scripts\zm_common\zm_bgb.csc;
#using scripts\zm_common\zm_audio.csc;
#using scripts\zm_common\util.csc;
#using scripts\core_common\player\player_stats.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\aat_shared.csc;
#using scripts\core_common\struct.csc;

#namespace zm_loadout;

// Namespace zm_loadout/zm_loadout
// Params 0, eflags: 0x5
// Checksum 0x999de237, Offset: 0x130
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_loadout", &preinit, undefined, undefined, undefined);
}

// Namespace zm_loadout/zm_loadout
// Params 0, eflags: 0x6 linked
// Checksum 0xb565f678, Offset: 0x178
// Size: 0x3c
function private preinit() {
    /#
        if (!isdemoplaying()) {
            callback::on_localplayer_spawned(&on_localplayer_spawned);
        }
    #/
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x0
// Checksum 0x12b9722e, Offset: 0x1c0
// Size: 0x1ec
function on_localplayer_spawned(localclientnum) {
    self.class_num = 0;
    if (isplayer(self)) {
        self.class_num = function_cc90c352(localclientnum);
    }
    self.loadout = [];
    var_cd6fae8c = self get_loadout_item(localclientnum, "primarygrenade");
    self.loadout[#"lethal"] = getunlockableiteminfofromindex(var_cd6fae8c, 1);
    var_9aeb4447 = self get_loadout_item(localclientnum, "primary");
    self.loadout[#"primary"] = getunlockableiteminfofromindex(var_9aeb4447, 1);
    self.loadout[#"perks"] = [];
    for (i = 1; i <= 4; i++) {
        var_96861ec8 = self get_loadout_item(localclientnum, "specialty" + i);
        self.loadout[#"perks"][i] = getunlockableiteminfofromindex(var_96861ec8, 3);
    }
    self.loadout[#"hero"] = self function_439b009a(localclientnum, "herogadget");
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0xcc7227ac, Offset: 0x3b8
// Size: 0x40
function function_622d8349(localclientnum) {
    level endon(#"demo_jump");
    while (!function_908617f2(localclientnum)) {
        waitframe(1);
    }
}

// Namespace zm_loadout/zm_loadout
// Params 2, eflags: 0x2 linked
// Checksum 0xf7bdb001, Offset: 0x400
// Size: 0x92
function get_loadout_item(localclientnum, slot) {
    if (!isplayer(self)) {
        return undefined;
    }
    if (!isdefined(self.class_num)) {
        self.class_num = function_cc90c352(localclientnum);
    }
    if (!isdefined(self.class_num)) {
        self.class_num = 0;
    }
    return getloadoutitem(localclientnum, self.class_num, slot);
}

// Namespace zm_loadout/zm_loadout
// Params 2, eflags: 0x2 linked
// Checksum 0x1d935ce0, Offset: 0x4a0
// Size: 0x92
function function_439b009a(localclientnum, slot) {
    if (!isplayer(self)) {
        return undefined;
    }
    if (!isdefined(self.class_num)) {
        self.class_num = function_cc90c352(localclientnum);
    }
    if (!isdefined(self.class_num)) {
        self.class_num = 0;
    }
    return getloadoutweapon(localclientnum, self.class_num, slot);
}

