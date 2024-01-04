// Atian COD Tools GSC CW decompiler test
#using script_3a2fac1479c56997;
#using scripts\zm_common\zm_utility.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace zm_progress;

// Namespace zm_progress/zm_progress
// Params 0, eflags: 0x5
// Checksum 0x929312ae, Offset: 0xb0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_progress", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace zm_progress/zm_progress
// Params 0, eflags: 0x4
// Checksum 0xddc5a3fa, Offset: 0xf8
// Size: 0x14
function private function_70a657d8() {
    zm_build_progress::register();
}

