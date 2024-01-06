// Atian COD Tools GSC CW decompiler test
#using script_54f593f5beb1464a;
#using script_2a30ac7aa0ee8988;

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
    namespace_1c7b37c6::item_replacer(var_f8a4c541, #"zm_magicbox_weapon_named_weapons", #"hash_1b5199fd1393a226");
    namespace_1c7b37c6::item_replacer(var_f8a4c541, #"level_6_gun_list", #"hash_24b2c0f4ab55c0d7");
    namespace_1c7b37c6::item_replacer(var_f8a4c541, #"named_gun_list", #"hash_6284c394c2718975");
    namespace_1c7b37c6::item_replacer(var_f8a4c541, #"ltm_halloween_chest_wonder_weapons", #"hash_350839c1d730853f");
    namespace_1c7b37c6::item_replacer(var_74257310, #"ww_ray_rifle_t9_item_sr", #"ray_gun_item_sr");
}

