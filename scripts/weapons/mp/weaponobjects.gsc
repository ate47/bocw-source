// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\util.gsc;
#using script_6b221588ece2c4aa;
#using scripts\weapons\weaponobjects.gsc;
#using scripts\core_common\weapons_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace weaponobjects;

// Namespace weaponobjects/weaponobjects
// Params 0, eflags: 0x5
// Checksum 0xe7ff0b14, Offset: 0xd0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"weaponobjects", &preinit, undefined, undefined, undefined);
}

// Namespace weaponobjects/weaponobjects
// Params 0, eflags: 0x6 linked
// Checksum 0x20c87620, Offset: 0x118
// Size: 0x34
function private preinit() {
    init_shared();
    callback::on_start_gametype(&start_gametype);
}

// Namespace weaponobjects/weaponobjects
// Params 0, eflags: 0x2 linked
// Checksum 0x1049691, Offset: 0x158
// Size: 0x44
function start_gametype() {
    callback::on_connect(&on_player_connect);
    callback::on_spawned(&on_player_spawned);
}

// Namespace weaponobjects/weaponobjects
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x1a8
// Size: 0x4
function on_player_spawned() {
    
}

