// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\killstreakrules_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_5e75c551;

// Namespace namespace_5e75c551/namespace_5e75c551
// Params 0, eflags: 0x5
// Checksum 0x18ab9179, Offset: 0xb8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_7bd5e0fb2a57c52f", &function_70a657d8, undefined, undefined, #"killstreaks");
}

// Namespace namespace_5e75c551/namespace_5e75c551
// Params 0, eflags: 0x0
// Checksum 0xa3ad9dc3, Offset: 0x108
// Size: 0x44
function function_70a657d8() {
    if (isdefined(level.killstreakrules[#"hash_1ef837cba38c6dd3"])) {
        killstreakrules::addkillstreaktorule("napalm_strike_zm", "hero_weapons", 0, 0);
    }
}
