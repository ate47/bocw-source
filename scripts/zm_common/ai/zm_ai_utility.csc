// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace zm_ai_utility;

// Namespace zm_ai_utility/zm_ai_utility
// Params 0, eflags: 0x5
// Checksum 0xe74e7474, Offset: 0xc8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_ai_utility", &preinit, undefined, undefined, undefined);
}

// Namespace zm_ai_utility/zm_ai_utility
// Params 0, eflags: 0x6 linked
// Checksum 0x4a7e8393, Offset: 0x110
// Size: 0x6c
function private preinit() {
    ai::add_ai_spawn_function(&function_f3a051c6);
    clientfield::register("actor", "actor_enable_on_radar", 1, 1, "int", &function_4a09edeb, 0, 0);
}

// Namespace zm_ai_utility/zm_ai_utility
// Params 1, eflags: 0x6 linked
// Checksum 0xe49e4e12, Offset: 0x188
// Size: 0xc
function private function_f3a051c6(*localclientnum) {
    
}

// Namespace zm_ai_utility/zm_ai_utility
// Params 7, eflags: 0x6 linked
// Checksum 0x7e689727, Offset: 0x1a0
// Size: 0x74
function private function_4a09edeb(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self enableonradar();
        return;
    }
    self disableonradar();
}

