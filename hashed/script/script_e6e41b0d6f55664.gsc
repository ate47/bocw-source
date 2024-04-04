// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\killstreakrules_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_f7a26881;

// Namespace namespace_f7a26881/namespace_f7a26881
// Params 0, eflags: 0x5
// Checksum 0xada1a63f, Offset: 0xb8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_17158d9655e9dc58", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace namespace_f7a26881/namespace_f7a26881
// Params 0, eflags: 0x2 linked
// Checksum 0xa3ad9dc3, Offset: 0x108
// Size: 0x44
function preinit() {
    if (isdefined(level.killstreakrules[#"hero_weapons"])) {
        killstreakrules::addkillstreaktorule("hero_annihilator", "hero_weapons", 0, 0);
    }
}

