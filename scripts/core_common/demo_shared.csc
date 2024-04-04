// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace demo;

// Namespace demo/demo_shared
// Params 0, eflags: 0x5
// Checksum 0x59b4e56, Offset: 0xa0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"demo", &preinit, undefined, undefined, undefined);
}

// Namespace demo/demo_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x82f535de, Offset: 0xe8
// Size: 0x18
function private preinit() {
    if (!isdemoplaying()) {
        return;
    }
}

