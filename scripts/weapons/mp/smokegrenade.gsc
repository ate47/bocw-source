// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\smokegrenade.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace smokegrenade;

// Namespace smokegrenade/smokegrenade
// Params 0, eflags: 0x5
// Checksum 0xd2d43086, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"smokegrenade", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace smokegrenade/smokegrenade
// Params 0, eflags: 0x6 linked
// Checksum 0xf358517a, Offset: 0xd8
// Size: 0x34
function private function_70a657d8() {
    init_shared();
    level.var_5712bc1c = 1;
    level.var_9bb99713 = 1;
}

