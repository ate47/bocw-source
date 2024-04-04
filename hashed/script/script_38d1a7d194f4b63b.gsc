// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace hint_tutorial;

// Namespace hint_tutorial/hint_tutorial
// Params 0, eflags: 0x5
// Checksum 0xbfa6031f, Offset: 0xe8
// Size: 0x34
function private autoexec __init__system__() {
    system::register("hint_tutorial", &preinit, undefined, undefined, undefined);
}

// Namespace hint_tutorial/hint_tutorial
// Params 0, eflags: 0x6 linked
// Checksum 0x10f4a4f8, Offset: 0x128
// Size: 0x4c
function private preinit() {
    clientfield::register("toplayer", "hint_pause_state", 1, 1, "int", &function_22315c10, 1, 0);
}

// Namespace hint_tutorial/hint_tutorial
// Params 7, eflags: 0x6 linked
// Checksum 0xf6c458d0, Offset: 0x180
// Size: 0xc2
function private function_22315c10(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    switch (bwastimejump) {
    case 1:
        function_5ea2c6e3("cp_hint_tutorial_duck", 0.1, 1);
        break;
    case 0:
        function_ed62c9c2("cp_hint_tutorial_duck", 0.1);
        break;
    }
}

