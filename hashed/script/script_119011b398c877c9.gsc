// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\killstreakrules_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_db2eee11;

// Namespace namespace_db2eee11/namespace_db2eee11
// Params 0, eflags: 0x5
// Checksum 0x5683568c, Offset: 0xb8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_1b51a976dc0202c7", &function_70a657d8, undefined, undefined, #"killstreaks");
}

// Namespace namespace_db2eee11/namespace_db2eee11
// Params 0, eflags: 0x0
// Checksum 0xd1529033, Offset: 0x108
// Size: 0x44
function function_70a657d8() {
    if (isdefined(level.killstreakrules[#"hash_1ef837cba38c6dd3"])) {
        killstreakrules::addkillstreaktorule("hero_flamethrower", "hero_weapons", 0, 0);
    }
}

