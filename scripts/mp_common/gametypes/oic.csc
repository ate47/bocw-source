// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\clientfield_shared.csc;

#namespace oic;

// Namespace oic/gametype_init
// Params 1, eflags: 0x20
// Checksum 0xd2aa774, Offset: 0xb0
// Size: 0x6c
function event_handler[gametype_init] main(*eventstruct) {
    level.var_8eef5741 = 1;
    clientfield::register_clientuimodel("hudItems.alivePlayerCount", #"hash_6f4b11a0bee9b73d", #"aliveplayercount", 1, 4, "int", undefined, 0, 0);
}

