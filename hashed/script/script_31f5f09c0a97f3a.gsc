// Atian COD Tools GSC CW decompiler test
#using script_54f593f5beb1464a;
#using script_2a30ac7aa0ee8988;

#namespace namespace_ed93e89a;

// Namespace namespace_ed93e89a/namespace_ed93e89a
// Params 0, eflags: 0x1
// Checksum 0x48a51893, Offset: 0xa0
// Size: 0x14
function autoexec __init__() {
    function_5355973a();
}

// Namespace namespace_ed93e89a/namespace_ed93e89a
// Params 0, eflags: 0x2 linked
// Checksum 0xd4b31624, Offset: 0xc0
// Size: 0x1b4
function function_5355973a() {
    var_87d0eef8 = &item_world_fixup::remove_item;
    var_74257310 = &item_world_fixup::add_item_replacement;
    var_f8a4c541 = &item_world_fixup::function_6991057;
    var_edfbccd0 = &item_world_fixup::function_e70fa91c;
    namespace_1c7b37c6::item_replacer(var_f8a4c541, #"zm_magicbox_weapon_named_weapons", #"hash_ae7cd5bcb26ed4");
    namespace_1c7b37c6::item_replacer(var_f8a4c541, #"level_6_gun_list", #"hash_73a96a34fef07711");
    namespace_1c7b37c6::item_replacer(var_f8a4c541, #"named_gun_list", #"hash_46278665675794d3");
    namespace_1c7b37c6::item_replacer(var_f8a4c541, #"ltm_halloween_chest_wonder_weapons", #"hash_444c92427ea7e4f9");
    namespace_1c7b37c6::item_replacer(var_74257310, #"ray_gun_item_sr", #"ww_ray_rifle_t9_item_sr");
    if (getdvarstring(#"g_gametype") === "zcranked") {
        namespace_1c7b37c6::item_replacer(var_f8a4c541, #"zm_equipment_list", #"hash_74ff81f976594bff");
    }
}

