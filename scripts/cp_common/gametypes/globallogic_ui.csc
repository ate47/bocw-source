// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using script_1efc4309c8526a4;

#namespace globallogic_ui;

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x5
// Checksum 0x8aa35b0d, Offset: 0xd8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"globallogic_ui", &preinit, undefined, undefined, undefined);
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x6 linked
// Checksum 0x3f61d04d, Offset: 0x120
// Size: 0xb4
function private preinit() {
    clientfield::register_clientuimodel("hudItems.playerInCombat", #"hash_6f4b11a0bee9b73d", #"hash_9f530669e6c8547", 1, 1, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.serverDifficulty", #"hash_6f4b11a0bee9b73d", #"hash_60ba5c277db66bc7", 1, 3, "int", undefined, 0, 0);
    function_11bcbb57();
}

// Namespace globallogic_ui/globallogic_ui
// Params 0, eflags: 0x2 linked
// Checksum 0x820ea654, Offset: 0x1e0
// Size: 0x14
function function_11bcbb57() {
    cp_chyron::register();
}

