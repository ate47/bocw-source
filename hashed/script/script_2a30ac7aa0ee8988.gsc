// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;
#using script_54f593f5beb1464a;

#namespace namespace_1c7b37c6;

// Namespace namespace_1c7b37c6/namespace_1c7b37c6
// Params 0, eflags: 0x5
// Checksum 0x661a1e3d, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_28a40055ae0e64e0", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_1c7b37c6/namespace_1c7b37c6
// Params 0, eflags: 0x1
// Checksum 0xc37b622b, Offset: 0xd8
// Size: 0x14
function autoexec __init() {
    function_41453b43();
}

// Namespace namespace_1c7b37c6/namespace_1c7b37c6
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0xf8
// Size: 0x4
function private preinit() {
    
}

// Namespace namespace_1c7b37c6/namespace_1c7b37c6
// Params 2, eflags: 0x2 linked
// Checksum 0x48a48c64, Offset: 0x108
// Size: 0x34
function item_remover(func1, param1) {
    if (!isdefined(param1)) {
        return;
    }
    if (isdefined(func1)) {
        [[ func1 ]](param1);
    }
}

// Namespace namespace_1c7b37c6/namespace_1c7b37c6
// Params 3, eflags: 0x2 linked
// Checksum 0xd980b600, Offset: 0x148
// Size: 0x4a
function item_replacer(func1, list1, list2) {
    if (!isdefined(list1) || !isdefined(list2)) {
        return;
    }
    if (isdefined(func1)) {
        [[ func1 ]](list1, list2);
    }
}

// Namespace namespace_1c7b37c6/namespace_1c7b37c6
// Params 0, eflags: 0x2 linked
// Checksum 0x25249d8e, Offset: 0x1a0
// Size: 0x4e
function function_41453b43() {
    var_87d0eef8 = &item_world_fixup::remove_item;
    var_74257310 = &item_world_fixup::add_item_replacement;
    var_f8a4c541 = &item_world_fixup::function_6991057;
}

