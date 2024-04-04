// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace ability_gadgets;

// Namespace ability_gadgets/ability_gadgets
// Params 0, eflags: 0x5
// Checksum 0xac77a6ed, Offset: 0xe8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"ability_gadgets", &preinit, undefined, undefined, undefined);
}

// Namespace ability_gadgets/ability_gadgets
// Params 0, eflags: 0x6 linked
// Checksum 0x1d1a219a, Offset: 0x130
// Size: 0xa4
function private preinit() {
    clientfield::register_clientuimodel("huditems.abilityHoldToActivate", #"hash_6f4b11a0bee9b73d", #"abilityholdtoactivate", 1, 2, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("huditems.abilityDelayProgress", #"hash_6f4b11a0bee9b73d", #"abilitydelayprogress", 1, 5, "float", undefined, 0, 0);
}

