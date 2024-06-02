// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace namespace_a208feb2;

// Namespace namespace_a208feb2/gametype_start
// Params 1, eflags: 0x20
// Checksum 0x6b412c31, Offset: 0xd0
// Size: 0xbc
function event_handler[gametype_start] main(*eventstruct) {
    var_c34e1dc2 = strtok("war12v12", " ");
    gametype = util::get_game_type();
    if (!isinarray(var_c34e1dc2, gametype) || !getdvarint(#"hash_360035890f73b515", 0)) {
        return;
    }
    callback::on_gameplay_started(&on_gameplay_started);
}

// Namespace namespace_a208feb2/namespace_a208feb2
// Params 1, eflags: 0x2 linked
// Checksum 0x2e14ca51, Offset: 0x198
// Size: 0x24
function on_gameplay_started(localclientnum) {
    waitframe(1);
    function_f9f55898(localclientnum);
}

// Namespace namespace_a208feb2/namespace_a208feb2
// Params 1, eflags: 0x2 linked
// Checksum 0xaef128d7, Offset: 0x1c8
// Size: 0x12c
function function_f9f55898(localclientnum) {
    var_c34e1dc2 = strtok("war12v12", " ");
    gametype = util::get_game_type();
    if (!isinarray(var_c34e1dc2, gametype) || !getdvarint(#"hash_360035890f73b515", 0)) {
        array::delete_all(getentarray(localclientnum, "vehicle_oob_minimap", "targetname"));
        return;
    }
    var_c41d6d5b = getentarray(localclientnum, "vehicle_oob_minimap", "targetname");
    array::run_all(var_c41d6d5b, &function_c06a8682, localclientnum);
}

