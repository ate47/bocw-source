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
    namespace_1c7b37c6::item_replacer(var_f8a4c541, #"hash_218c23f79bec44e2", #"hash_ae7cd5bcb26ed4");
    namespace_1c7b37c6::item_replacer(var_f8a4c541, #"hash_63e44c0150bb5992", #"hash_73a96a34fef07711");
    namespace_1c7b37c6::item_replacer(var_f8a4c541, #"hash_45a2c2712690bd0", #"hash_46278665675794d3");
    namespace_1c7b37c6::item_replacer(var_f8a4c541, #"hash_3ec8c7d720778d76", #"hash_444c92427ea7e4f9");
    namespace_1c7b37c6::item_replacer(var_74257310, #"hash_79d7d5e206eaf770", #"hash_55c0a68941dcc80b");
    if (getdvarstring(#"g_gametype") === "zcranked") {
        namespace_1c7b37c6::item_replacer(var_f8a4c541, #"hash_4a5ba547feb80628", #"hash_74ff81f976594bff");
    }
}

