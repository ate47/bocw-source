// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\weapons\weapons.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\item_world.gsc;
#using scripts\core_common\serverfield_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\armor.gsc;

#namespace namespace_2ed67032;

// Namespace namespace_2ed67032/namespace_2ed67032
// Params 0, eflags: 0x5
// Checksum 0x2907d96, Offset: 0x120
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_7aac5c09cf9461e3", &preinit, undefined, &finalize, undefined);
}

// Namespace namespace_2ed67032/namespace_2ed67032
// Params 0, eflags: 0x6 linked
// Checksum 0xe0bc9b2f, Offset: 0x170
// Size: 0x124
function private preinit() {
    level.var_8ef8b9e8 = getweapon(#"armor_plate");
    clientfield::register_clientuimodel("hudItems.armorPlateCount", 1, 4, "int", 0);
    clientfield::register_clientuimodel("hudItems.armorPlateMaxCarry", 1, 4, "int");
    callback::on_spawned(&on_player_spawned);
    callback::on_connect(&on_player_connect);
    callback::add_callback(#"on_loadout", &on_player_loadout);
    serverfield::register("armor_plate_behavior", 1, 1, "int", &function_deb3cb98);
}

// Namespace namespace_2ed67032/namespace_2ed67032
// Params 0, eflags: 0x6 linked
// Checksum 0xb0a75533, Offset: 0x2a0
// Size: 0x34
function private finalize() {
    item_world::function_861f348d(#"generic_pickup", &function_e74225a7);
}

// Namespace namespace_2ed67032/namespace_2ed67032
// Params 2, eflags: 0x2 linked
// Checksum 0x22c90b24, Offset: 0x2e0
// Size: 0x3e
function function_deb3cb98(*oldval, newval) {
    if (!isplayer(self)) {
        return;
    }
    self.armor_plate_behavior = newval;
}

// Namespace namespace_2ed67032/namespace_2ed67032
// Params 0, eflags: 0x6 linked
// Checksum 0xf419b241, Offset: 0x328
// Size: 0x5a
function private on_player_connect() {
    if (!isdefined(self.armor_plate_behavior)) {
        self.armor_plate_behavior = isdefined(self serverfield::get("armor_plate_behavior")) ? self serverfield::get("armor_plate_behavior") : 0;
    }
}

// Namespace namespace_2ed67032/namespace_2ed67032
// Params 0, eflags: 0x6 linked
// Checksum 0xf9ddc0db, Offset: 0x390
// Size: 0x64
function private on_player_spawned() {
    self.var_7d7d976a = 0;
    self.var_c52363ab = 5;
    self clientfield::set_player_uimodel("hudItems.armorPlateCount", self.var_7d7d976a);
    self clientfield::set_player_uimodel("hudItems.armorPlateMaxCarry", self.var_c52363ab);
}

// Namespace namespace_2ed67032/namespace_2ed67032
// Params 0, eflags: 0x6 linked
// Checksum 0xaec68972, Offset: 0x400
// Size: 0x1a4
function private on_player_loadout() {
    self giveweapon(level.var_8ef8b9e8);
    self lockweapon(level.var_8ef8b9e8, 1, 1);
    if (is_true(getgametypesetting(#"hash_5700fdc9d17186f7"))) {
        self armor::set_armor(225, 225, 3, 0.4, 1, 0.5, 0, 1, 1, 1);
        return;
    }
    if ((isdefined(getgametypesetting(#"hash_64f2892e3a0fd0b")) ? getgametypesetting(#"hash_64f2892e3a0fd0b") : 0) > 0) {
        self armor::set_armor(getgametypesetting(#"hash_64f2892e3a0fd0b") * 75, 225, 3, 0.4, 1, 0.5, 0, 1, 1, 1);
    }
}

// Namespace namespace_2ed67032/namespace_2ed67032
// Params 7, eflags: 0x6 linked
// Checksum 0x7969a433, Offset: 0x5b0
// Size: 0xf0
function private function_e74225a7(item, player, *networkid, *itemid, itemcount, *var_aec6fa7f, *slot) {
    if (itemcount.itementry.itemtype == #"armor_shard") {
        var_82da4e0 = int(min(slot, self.var_c52363ab - var_aec6fa7f.var_7d7d976a));
        var_aec6fa7f.var_7d7d976a += var_82da4e0;
        var_aec6fa7f clientfield::set_player_uimodel("hudItems.armorPlateCount", var_aec6fa7f.var_7d7d976a);
        return (slot - var_82da4e0);
    }
    return slot;
}

// Namespace namespace_2ed67032/namespace_2ed67032
// Params 0, eflags: 0x6 linked
// Checksum 0xf08bef71, Offset: 0x6a8
// Size: 0xc2
function private function_86b9a404() {
    if (self isonladder() || self function_b4813488() || self inlaststand() || self isparachuting() || self isinfreefall() || self isskydiving()) {
        return false;
    }
    return self.var_7d7d976a > 0 && armor::get_armor() < 225;
}

// Namespace namespace_2ed67032/namespace_2ed67032
// Params 1, eflags: 0x2 linked
// Checksum 0xc4f59276, Offset: 0x778
// Size: 0x84
function function_e12c220a(var_16888a24) {
    assert(isplayer(self));
    if (!isplayer(self)) {
        return;
    }
    self.var_c52363ab = var_16888a24;
    self clientfield::set_player_uimodel("hudItems.armorPlateMaxCarry", self.var_c52363ab);
}

// Namespace namespace_2ed67032/namespace_2ed67032
// Params 0, eflags: 0x6 linked
// Checksum 0xbf28c2dd, Offset: 0x808
// Size: 0x114
function private function_d66636df() {
    if (function_86b9a404()) {
        self.var_7d7d976a -= 1;
        self clientfield::set_player_uimodel("hudItems.armorPlateCount", self.var_7d7d976a);
        var_8b8faf32 = armor::get_armor();
        var_3d557ef9 = var_8b8faf32 + 75;
        var_3d557ef9 = int(min(var_3d557ef9, 225));
        self armor::set_armor(var_3d557ef9, 225, 3, 0.4, 1, 0.5, 0, 1, 1, 1);
        return true;
    }
    return false;
}

// Namespace namespace_2ed67032/namespace_2ed67032
// Params 1, eflags: 0x6 linked
// Checksum 0xb0690d58, Offset: 0x928
// Size: 0x3c4
function private function_a7879258(lastweapon) {
    self endon(#"disconnect");
    if (lastweapon === level.var_8ef8b9e8 || lastweapon === level.weaponnone) {
        lastweapon = undefined;
    }
    var_b2cde03b = function_ce353466(lastweapon);
    if (self getcurrentweapon() === level.var_8ef8b9e8 && !self isswitchingweapons()) {
        self weapons::function_d571ac59(lastweapon, 0, 0, var_b2cde03b);
        return;
    }
    waitresult = self waittilltimeout(2, #"weapon_change_complete", #"death", #"enter_vehicle", #"exit_vehicle");
    if (waitresult._notify !== #"weapon_change_complete") {
        self weapons::function_d571ac59(lastweapon, 0, 0, var_b2cde03b);
        return;
    }
    if (self getcurrentweapon() === level.var_8ef8b9e8) {
        if (!isdefined(self.armor_plate_behavior)) {
            self.armor_plate_behavior = isdefined(self serverfield::get("armor_plate_behavior")) ? self serverfield::get("armor_plate_behavior") : 0;
        }
        self.var_6a0f2dd7 = 0;
        self.var_32b4a72a = 0;
        if (self.armor_plate_behavior != 1) {
            self thread function_c81e4a7c();
        }
        for (;;) {
            if (!function_86b9a404() || self.var_32b4a72a === 1 && self.var_6a0f2dd7) {
                self weapons::function_d571ac59(lastweapon, 0, 0, var_b2cde03b);
                return;
            }
            waitresult = self waittilltimeout(1.1, #"death", #"enter_vehicle", #"exit_vehicle");
            if (waitresult._notify !== #"timeout") {
                self weapons::function_d571ac59(lastweapon, 0, 0, var_b2cde03b);
                return;
            }
            if (self getcurrentweapon() !== level.var_8ef8b9e8 || self isdroppingweapon()) {
                break;
            }
            if (function_d66636df()) {
                self.var_6a0f2dd7 = 1;
            }
        }
    } else {
        return;
    }
    currentweapon = self getcurrentweapon();
    if (currentweapon === level.var_8ef8b9e8 || currentweapon === level.weaponnone) {
        self weapons::function_d571ac59(lastweapon, 0, 0, var_b2cde03b);
    }
}

// Namespace namespace_2ed67032/namespace_2ed67032
// Params 1, eflags: 0x6 linked
// Checksum 0x5e9e5e8, Offset: 0xcf8
// Size: 0xe8
function private function_ce353466(last_weapon) {
    if (!isdefined(last_weapon) || last_weapon === level.weaponnone || last_weapon === level.var_8ef8b9e8) {
        return false;
    }
    if (!self hasweapon(last_weapon)) {
        return false;
    }
    if (last_weapon === level.laststandpistol) {
        return false;
    }
    if (killstreaks::is_killstreak_weapon(last_weapon) && last_weapon.iscarriedkillstreak !== 1) {
        return false;
    }
    if (last_weapon.isgameplayweapon || last_weapon.var_29d24e37 || last_weapon.var_9a789947 || last_weapon.isnotdroppable) {
        return false;
    }
    return true;
}

// Namespace namespace_2ed67032/namespace_2ed67032
// Params 0, eflags: 0x6 linked
// Checksum 0x1ce0a549, Offset: 0xde8
// Size: 0xba
function private function_c81e4a7c() {
    self endon(#"disconnect");
    self.var_32b4a72a = 0;
    while (isalive(self) && (self weaponswitchbuttonpressed() || self function_315b0f70()) && self getcurrentweapon() === level.var_8ef8b9e8 && !self isdroppingweapon()) {
        waitframe(1);
    }
    self.var_32b4a72a = 1;
}

// Namespace namespace_2ed67032/weapon_change
// Params 1, eflags: 0x20
// Checksum 0x1cd884f2, Offset: 0xeb0
// Size: 0x44
function event_handler[weapon_change] function_62befac0(eventstruct) {
    if (eventstruct.weapon === level.var_8ef8b9e8) {
        self thread function_a7879258(eventstruct.last_weapon);
    }
}

