// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\killstreakrules_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_e321b666;

// Namespace namespace_e321b666/namespace_e321b666
// Params 0, eflags: 0x5
// Checksum 0x51c3bf90, Offset: 0xb0
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_4236b7e69638cde7", &function_70a657d8, undefined, undefined, #"killstreaks");
}

// Namespace namespace_e321b666/namespace_e321b666
// Params 0, eflags: 0x0
// Checksum 0x2ec2ad32, Offset: 0x100
// Size: 0x44
function function_70a657d8() {
    if (isdefined(level.killstreakrules[#"hash_1ef837cba38c6dd3"])) {
        killstreakrules::addkillstreaktorule("sig_lmg", "hero_weapons", 0, 0);
    }
}
