// Atian COD Tools GSC CW decompiler test
#using script_71b355b2496e3c6d;
#using scripts\core_common\system_shared.csc;

#namespace namespace_5a359049;

// Namespace namespace_5a359049/namespace_5a359049
// Params 0, eflags: 0x5
// Checksum 0xbb35e9bd, Offset: 0xd0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_695bd4a240716800", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_5a359049/namespace_5a359049
// Params 0, eflags: 0x6 linked
// Checksum 0x6867e9bc, Offset: 0x118
// Size: 0x54
function private preinit() {
    if (is_true(level.legacy_cymbal_monkey)) {
        level.cymbal_monkey_model = "weapon_zombie_monkey_bomb";
    } else {
        level.cymbal_monkey_model = "wpn_t7_zmb_monkey_bomb_world";
    }
    namespace_cc411409::preinit();
}

