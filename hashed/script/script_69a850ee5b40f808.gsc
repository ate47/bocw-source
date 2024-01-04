// Atian COD Tools GSC CW decompiler test
#using script_309ce7f5a9a023de;
#using script_644007a8c3885fc;

#namespace namespace_7f51d30f;

// Namespace namespace_7f51d30f/namespace_7f51d30f
// Params 0, eflags: 0x1
// Checksum 0xd1430983, Offset: 0x90
// Size: 0x14
function autoexec __init__() {
    function_90ae260d();
}

// Namespace namespace_7f51d30f/namespace_7f51d30f
// Params 0, eflags: 0x2 linked
// Checksum 0xdf0a2149, Offset: 0xb0
// Size: 0x154
function function_90ae260d() {
    var_87d0eef8 = &item_world_fixup::remove_item;
    var_74257310 = &item_world_fixup::add_item_replacement;
    var_f8a4c541 = &item_world_fixup::function_6991057;
    var_edfbccd0 = &item_world_fixup::function_e70fa91c;
    namespace_1c7b37c6::item_replacer(var_f8a4c541, #"hash_218c23f79bec44e2", #"hash_1b5199fd1393a226");
    namespace_1c7b37c6::item_replacer(var_f8a4c541, #"hash_63e44c0150bb5992", #"hash_24b2c0f4ab55c0d7");
    namespace_1c7b37c6::item_replacer(var_f8a4c541, #"hash_45a2c2712690bd0", #"hash_6284c394c2718975");
    namespace_1c7b37c6::item_replacer(var_f8a4c541, #"hash_3ec8c7d720778d76", #"hash_350839c1d730853f");
    namespace_1c7b37c6::item_replacer(var_74257310, #"hash_55c0a68941dcc80b", #"hash_79d7d5e206eaf770");
}

