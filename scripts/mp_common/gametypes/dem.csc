// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace dem;

// Namespace dem/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x2b0ad6b2, Offset: 0xd0
// Size: 0xc4
function event_handler[gametype_init] main(*eventstruct) {
    callback::on_spawned(&on_player_spawned);
    if (getgametypesetting(#"silentplant") != 0) {
        setsoundcontext("bomb_plant", "silent");
    }
    clientfield::register_clientuimodel("Demolition.isCarryingBomb", #"hash_98bce8d3ef5ce18", #"hash_62d4ae8562a2dfb8", 1, 1, "int", undefined, 0, 0);
}

// Namespace dem/dem
// Params 1, eflags: 0x0
// Checksum 0x63b8e069, Offset: 0x1a0
// Size: 0xc
function on_player_spawned(*localclientnum) {
    
}

