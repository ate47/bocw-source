// Atian COD Tools GSC CW decompiler test
#using script_54f593f5beb1464a;
#using script_2a30ac7aa0ee8988;

#namespace namespace_e5326a0e;

// Namespace namespace_e5326a0e/namespace_e5326a0e
// Params 0, eflags: 0x1
// Checksum 0x1cab2cb2, Offset: 0xc0
// Size: 0x1a4
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
    namespace_1c7b37c6::item_replacer(&item_world_fixup::function_6991057, #"hash_5de6b5f9e52cac08", #"t9_empty_global");
    function_d5eb555d();
    function_f05c9e0a();
}

// Namespace namespace_e5326a0e/namespace_e5326a0e
// Params 0, eflags: 0x2 linked
// Checksum 0x8e57dd28, Offset: 0x270
// Size: 0x14
function function_cbbf16a4() {
    function_c379f040();
}

// Namespace namespace_e5326a0e/namespace_e5326a0e
// Params 0, eflags: 0x2 linked
// Checksum 0x12f48a3f, Offset: 0x290
// Size: 0x14
function function_e5d1b704() {
    function_c379f040();
}

// Namespace namespace_e5326a0e/namespace_e5326a0e
// Params 0, eflags: 0x2 linked
// Checksum 0xc065e60c, Offset: 0x2b0
// Size: 0x54
function function_574dc51f() {
    namespace_1c7b37c6::item_replacer(&item_world_fixup::function_6991057, #"hash_203198a6940492f9", #"hash_20fe5ea7eec81707");
    function_c379f040();
}

// Namespace namespace_e5326a0e/namespace_e5326a0e
// Params 0, eflags: 0x2 linked
// Checksum 0x30931450, Offset: 0x310
// Size: 0xa4
function function_1ed4cf79() {
    var_87d0eef8 = &item_world_fixup::remove_item;
    var_74257310 = &item_world_fixup::add_item_replacement;
    var_f8a4c541 = &item_world_fixup::function_6991057;
    var_edfbccd0 = &item_world_fixup::function_e70fa91c;
    namespace_1c7b37c6::item_replacer(var_f8a4c541, #"hash_203198a6940492f9", #"hash_59ceff804ad2c7b8");
    function_c379f040();
}

// Namespace namespace_e5326a0e/namespace_e5326a0e
// Params 0, eflags: 0x2 linked
// Checksum 0xfdfb967c, Offset: 0x3c0
// Size: 0xa4
function function_11109d50() {
    var_87d0eef8 = &item_world_fixup::remove_item;
    var_74257310 = &item_world_fixup::add_item_replacement;
    var_f8a4c541 = &item_world_fixup::function_6991057;
    var_edfbccd0 = &item_world_fixup::function_e70fa91c;
    namespace_1c7b37c6::item_replacer(var_f8a4c541, #"hash_203198a6940492f9", #"hash_539207ef429bfa40");
    function_c379f040();
}

// Namespace namespace_e5326a0e/namespace_e5326a0e
// Params 0, eflags: 0x2 linked
// Checksum 0x59800b3e, Offset: 0x470
// Size: 0x104
function function_bcd11f83() {
    namespace_1c7b37c6::item_replacer(&item_world_fixup::function_6991057, #"hash_203198a6940492f9", #"t9_empty_global");
    namespace_1c7b37c6::item_replacer(&item_world_fixup::function_6991057, #"hash_67a3062578c7c05e", #"t9_empty_global");
    namespace_1c7b37c6::item_replacer(&item_world_fixup::function_6991057, #"hash_288f3ff6a80e4bba", #"t9_empty_global");
    namespace_1c7b37c6::item_replacer(&item_world_fixup::function_6991057, #"hash_645d5733111a79", #"t9_empty_global");
}

// Namespace namespace_e5326a0e/namespace_e5326a0e
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x580
// Size: 0x4
function function_d5eb555d() {
    
}

// Namespace namespace_e5326a0e/namespace_e5326a0e
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x590
// Size: 0x4
function function_f05c9e0a() {
    
}

// Namespace namespace_e5326a0e/namespace_e5326a0e
// Params 3, eflags: 0x0
// Checksum 0xb89239e8, Offset: 0x5a0
// Size: 0x19c
function function_8341771e(locations, radius, name) {
    var_32948f8f = function_91b29d2a("dirty_bomb_stash");
    foreach (location in locations) {
        foreach (var_64b8ecb8 in var_32948f8f) {
            if (distance2dsquared(location.origin, var_64b8ecb8.origin) <= radius * radius) {
                var_d196e508 = var_64b8ecb8.origin;
                item_world_fixup::function_a997e342(var_d196e508, 16);
                if (isdefined(name)) {
                    item_world_fixup::add_spawn_point(var_d196e508, name, var_64b8ecb8.angles);
                }
            }
        }
    }
}

// Namespace namespace_e5326a0e/namespace_e5326a0e
// Params 0, eflags: 0x2 linked
// Checksum 0x2e8dfd65, Offset: 0x748
// Size: 0x1c
function function_c379f040() {
    hidemiscmodels("magicbox_zbarrier");
}

