// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\values_shared.gsc;
#using script_61828ad9e71c6616;
#using script_7bdcff4f92f3d220;
#using scripts\killstreaks\remotemissile_shared.gsc;
#using scripts\killstreaks\killstreakrules_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace remotemissile;

// Namespace remotemissile/remotemissile
// Params 0, eflags: 0x5
// Checksum 0xe2e13402, Offset: 0x160
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"remotemissile", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace remotemissile/remotemissile
// Params 0, eflags: 0x6 linked
// Checksum 0xa6fae1e1, Offset: 0x1b0
// Size: 0x164
function private preinit() {
    clientfield::register("world", "" + #"hash_59ec82b1a72deb72", 1, 1, "int");
    clientfield::register("toplayer", "" + #"hash_7bdbbf163a28169", 6000, 1, "int");
    clientfield::register("toplayer", "" + #"hash_4241f7b51f8c144", 8000, 1, "int");
    init_shared("killstreak_remote_missile" + "_zm", &function_ea3ce28b);
    if (isdefined(level.killstreakrules[#"hero_weapons"])) {
        killstreakrules::addkillstreaktorule("remote_missile", "hero_weapons", 0, 0);
    }
    killstreaks::function_7b6102ed("remote_missile");
    killstreaks::function_7b6102ed("inventory_remote_missile");
}

// Namespace remotemissile/remotemissile
// Params 1, eflags: 0x2 linked
// Checksum 0xbc182d8f, Offset: 0x320
// Size: 0xca
function function_ea3ce28b(killstreaktype) {
    if (!self killstreakrules::function_71e94a3b()) {
        self.var_baf4657c = 1;
        self killstreakrules::function_65739e7b("remote_missile");
        return 0;
    }
    self callback::function_d8abfc3d(#"hash_247d67dbf83dbc1a", &function_903cf6aa);
    self callback::function_d8abfc3d(#"hash_72a7670db71677f", &function_3e6a41b7);
    return tryusepredatormissile(killstreaktype);
}

// Namespace remotemissile/remotemissile
// Params 0, eflags: 0x2 linked
// Checksum 0x4092d0eb, Offset: 0x3f8
// Size: 0xbc
function function_903cf6aa() {
    self thread killstreakrules::function_24241971();
    level function_f7599440(1);
    self clientfield::set_to_player("" + #"hash_4241f7b51f8c144", 1);
    self val::set(#"remote_missile", "ignoreme", 1);
    self val::set(#"remote_missile", "takedamage", 0);
}

// Namespace remotemissile/remotemissile
// Params 0, eflags: 0x2 linked
// Checksum 0xa4b30b8, Offset: 0x4c0
// Size: 0xb4
function function_3e6a41b7() {
    level function_f7599440(0);
    self clientfield::set_to_player("" + #"hash_4241f7b51f8c144", 0);
    wait(2);
    if (isplayer(self)) {
        self val::reset(#"remote_missile", "ignoreme");
        self val::reset(#"remote_missile", "takedamage");
    }
}

// Namespace remotemissile/remotemissile
// Params 1, eflags: 0x2 linked
// Checksum 0xbbcb5377, Offset: 0x580
// Size: 0xbe
function function_f7599440(on) {
    if (!isdefined(level.var_15ebb842)) {
        level.var_15ebb842 = 0;
    }
    if (on) {
        clientfield::set("" + #"hash_59ec82b1a72deb72", 1);
        level.var_15ebb842++;
        return;
    }
    level.var_15ebb842--;
    if (level.var_15ebb842 <= 0) {
        clientfield::set("" + #"hash_59ec82b1a72deb72", 0);
        level.var_15ebb842 = undefined;
    }
}

