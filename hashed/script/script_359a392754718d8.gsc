// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\killstreakrules_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_d8608565;

// Namespace namespace_d8608565/namespace_d8608565
// Params 0, eflags: 0x5
// Checksum 0x9b4c1b3d, Offset: 0xb0
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_661f2553d5c4d2b4", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace namespace_d8608565/namespace_d8608565
// Params 0, eflags: 0x2 linked
// Checksum 0xb68f22b2, Offset: 0x100
// Size: 0x44
function preinit() {
    if (isdefined(level.killstreakrules[#"hero_weapons"])) {
        killstreakrules::addkillstreaktorule("planemortar", "hero_weapons", 0, 0);
    }
}

