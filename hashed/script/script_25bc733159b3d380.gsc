// Atian COD Tools GSC CW decompiler test
#using script_309ce7f5a9a023de;
#using script_644007a8c3885fc;

#namespace namespace_d5db95b4;

// Namespace namespace_d5db95b4/namespace_d5db95b4
// Params 0, eflags: 0x1
// Checksum 0x3309af91, Offset: 0x90
// Size: 0x14
function autoexec __init__() {
    function_c70f8122();
}

// Namespace namespace_d5db95b4/namespace_d5db95b4
// Params 0, eflags: 0x2 linked
// Checksum 0xfaea6f78, Offset: 0xb0
// Size: 0x184
function function_c70f8122() {
    var_87d0eef8 = &item_world_fixup::remove_item;
    var_74257310 = &item_world_fixup::add_item_replacement;
    var_f8a4c541 = &item_world_fixup::function_6991057;
    var_edfbccd0 = &item_world_fixup::function_e70fa91c;
    namespace_1c7b37c6::item_replacer(var_f8a4c541, #"zm_magicbox_weapon_named_weapons", #"hash_76801accbe42542");
    namespace_1c7b37c6::item_replacer(var_f8a4c541, #"zm_magicbox_scorestreak_list", #"hash_66e8775be8803156");
    namespace_1c7b37c6::item_replacer(var_f8a4c541, #"level_6_gun_list", #"hash_2615b9246d595abb");
    namespace_1c7b37c6::item_replacer(var_f8a4c541, #"named_gun_list", #"hash_577ec9e24502ddd");
    namespace_1c7b37c6::item_replacer(var_f8a4c541, #"ltm_halloween_chest_wonder_weapons", #"hash_418c1b8934168303");
    namespace_1c7b37c6::item_replacer(var_74257310, #"ww_ray_rifle_t9_item_sr", #"ray_gun_item_sr");
}

