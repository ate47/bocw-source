// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using script_2f272fb57a31d81c;
#using scripts\killstreaks\killstreak_vehicle.csc;
#using scripts\core_common\struct.csc;

#namespace namespace_4e48d9c;

// Namespace namespace_4e48d9c/namespace_4e48d9c
// Params 0, eflags: 0x5
// Checksum 0x61c37470, Offset: 0xc0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_f1b44dbfb6fccde", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace namespace_4e48d9c/namespace_4e48d9c
// Params 0, eflags: 0x6 linked
// Checksum 0x787f9a41, Offset: 0x108
// Size: 0x4c
function private function_70a657d8() {
    init_shared();
    bundle = getscriptbundle("killstreak_missile_turret");
    killstreak_vehicle::init_killstreak(bundle);
}

