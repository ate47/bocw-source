// Atian COD Tools GSC CW decompiler test
#using script_309ce7f5a9a023de;
#using script_644007a8c3885fc;

#namespace namespace_de6618fd;

// Namespace namespace_de6618fd/namespace_de6618fd
// Params 0, eflags: 0x1
// Checksum 0x1a5a8853, Offset: 0xf0
// Size: 0x164
function autoexec __init__() {
    gametype = getdvarstring(#"g_gametype");
    switch (gametype) {
    case #"fireteam_dirty_bomb":
        function_cbbf16a4();
        break;
    case #"hash_6463dea5fa2dbea5":
        function_e5d1b704();
        break;
    case #"fireteam_elimination":
        function_574dc51f();
        break;
    case #"fireteam_koth":
        function_1ed4cf79();
        break;
    case #"fireteam_satlink":
        function_11109d50();
        break;
    case #"zsurvival":
        function_bcd11f83();
        break;
    default:
        break;
    }
    function_d5eb555d();
    function_f05c9e0a();
}

// Namespace namespace_de6618fd/namespace_de6618fd
// Params 0, eflags: 0x2 linked
// Checksum 0xe0b41fcb, Offset: 0x260
// Size: 0x14
function function_cbbf16a4() {
    function_c379f040();
}

// Namespace namespace_de6618fd/namespace_de6618fd
// Params 0, eflags: 0x2 linked
// Checksum 0x5b05fdb, Offset: 0x280
// Size: 0x14
function function_e5d1b704() {
    function_c379f040();
}

// Namespace namespace_de6618fd/namespace_de6618fd
// Params 0, eflags: 0x2 linked
// Checksum 0x92723627, Offset: 0x2a0
// Size: 0x54
function function_574dc51f() {
    namespace_1c7b37c6::item_replacer(&item_world_fixup::function_6991057, #"hash_203198a6940492f9", #"hash_20fe5ea7eec81707");
    function_c379f040();
}

// Namespace namespace_de6618fd/namespace_de6618fd
// Params 0, eflags: 0x2 linked
// Checksum 0xb0d12d8, Offset: 0x300
// Size: 0xa4
function function_1ed4cf79() {
    var_87d0eef8 = &item_world_fixup::remove_item;
    var_74257310 = &item_world_fixup::add_item_replacement;
    var_f8a4c541 = &item_world_fixup::function_6991057;
    var_edfbccd0 = &item_world_fixup::function_e70fa91c;
    namespace_1c7b37c6::item_replacer(var_f8a4c541, #"hash_203198a6940492f9", #"hash_59ceff804ad2c7b8");
    function_c379f040();
}

// Namespace namespace_de6618fd/namespace_de6618fd
// Params 0, eflags: 0x2 linked
// Checksum 0xa4232a48, Offset: 0x3b0
// Size: 0xa4
function function_11109d50() {
    var_87d0eef8 = &item_world_fixup::remove_item;
    var_74257310 = &item_world_fixup::add_item_replacement;
    var_f8a4c541 = &item_world_fixup::function_6991057;
    var_edfbccd0 = &item_world_fixup::function_e70fa91c;
    namespace_1c7b37c6::item_replacer(var_f8a4c541, #"hash_203198a6940492f9", #"hash_539207ef429bfa40");
    function_c379f040();
}

// Namespace namespace_de6618fd/namespace_de6618fd
// Params 0, eflags: 0x2 linked
// Checksum 0xf899d9c1, Offset: 0x460
// Size: 0x104
function function_bcd11f83() {
    namespace_1c7b37c6::item_replacer(&item_world_fixup::function_6991057, #"hash_203198a6940492f9", #"t9_empty_global");
    namespace_1c7b37c6::item_replacer(&item_world_fixup::function_6991057, #"hash_288ef692cd8b7c55", #"t9_empty_global");
    namespace_1c7b37c6::item_replacer(&item_world_fixup::function_6991057, #"hash_d735743f6964821", #"t9_empty_global");
    namespace_1c7b37c6::item_replacer(&item_world_fixup::function_6991057, #"hash_41061d68aef8439e", #"t9_empty_global");
}

// Namespace namespace_de6618fd/namespace_de6618fd
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x570
// Size: 0x4
function function_d5eb555d() {
    
}

// Namespace namespace_de6618fd/namespace_de6618fd
// Params 0, eflags: 0x2 linked
// Checksum 0x4689b2a8, Offset: 0x580
// Size: 0xac
function function_f05c9e0a() {
    function_8341771e(function_91b29d2a("location_items_golova"), 7000, #"hash_5a88477bbf0736f1");
    function_8341771e(function_91b29d2a("location_items_farm"), 7000, #"hash_1c4eccf00713d9c7");
    function_8341771e(function_91b29d2a("location_items_mansion"), 9000, #"hash_d5c723294842e7c");
}

// Namespace namespace_de6618fd/namespace_de6618fd
// Params 3, eflags: 0x2 linked
// Checksum 0x3124833f, Offset: 0x638
// Size: 0x194
function function_8341771e(locations, radius, name) {
    var_32948f8f = function_91b29d2a("dirty_bomb_stash");
    foreach (location in locations) {
        foreach (var_64b8ecb8 in var_32948f8f) {
            var_d196e508 = var_64b8ecb8.origin;
            if (distance2dsquared(location.origin, var_d196e508) <= radius * radius) {
                item_world_fixup::function_a997e342(var_d196e508, 16);
                if (isdefined(name)) {
                    item_world_fixup::add_spawn_point(var_d196e508, name, var_64b8ecb8.angles);
                }
            }
        }
    }
}

// Namespace namespace_de6618fd/namespace_de6618fd
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x7d8
// Size: 0x4
function function_c379f040() {
    
}

