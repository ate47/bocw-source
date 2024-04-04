// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace namespace_ee630e04;

// Namespace namespace_ee630e04
// Method(s) 8 Total 15
class class_c3742963 : cluielem {

    // Namespace namespace_c3742963/namespace_ee630e04
    // Params 1, eflags: 0x0
    // Checksum 0xfa05e85e, Offset: 0x4d0
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_c3742963/namespace_ee630e04
    // Params 0, eflags: 0x0
    // Checksum 0x9b84cce1, Offset: 0x440
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("consequences_notification");
    }

    // Namespace namespace_c3742963/namespace_ee630e04
    // Params 2, eflags: 0x0
    // Checksum 0x4a534592, Offset: 0x3b8
    // Size: 0x7c
    function setup_clientfields(var_6ad1a3bb, var_b8233aa2) {
        cluielem::setup_clientfields("consequences_notification");
        cluielem::add_clientfield("visible", 1, 1, "int", var_6ad1a3bb);
        cluielem::add_clientfield("content_index", 1, 4, "int", var_b8233aa2);
    }

    // Namespace namespace_c3742963/namespace_ee630e04
    // Params 2, eflags: 0x0
    // Checksum 0x1c9afcd8, Offset: 0x538
    // Size: 0x30
    function function_afdd9f65(localclientnum, value) {
        set_data(localclientnum, "content_index", value);
    }

    // Namespace namespace_c3742963/namespace_ee630e04
    // Params 2, eflags: 0x0
    // Checksum 0x1aadbc89, Offset: 0x500
    // Size: 0x30
    function set_visible(localclientnum, value) {
        set_data(localclientnum, "visible", value);
    }

    // Namespace namespace_c3742963/namespace_ee630e04
    // Params 1, eflags: 0x0
    // Checksum 0xd9b789aa, Offset: 0x468
    // Size: 0x5c
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "visible", 0);
        set_data(localclientnum, "content_index", 0);
    }

}

// Namespace namespace_ee630e04/namespace_ee630e04
// Params 2, eflags: 0x0
// Checksum 0xbc5ffdcc, Offset: 0xf8
// Size: 0x17e
function register(var_6ad1a3bb, var_b8233aa2) {
    elem = new class_c3742963();
    [[ elem ]]->setup_clientfields(var_6ad1a3bb, var_b8233aa2);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"hash_298916642a88e053"])) {
        level.var_ae746e8f[#"hash_298916642a88e053"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"hash_298916642a88e053"])) {
        level.var_ae746e8f[#"hash_298916642a88e053"] = [];
    } else if (!isarray(level.var_ae746e8f[#"hash_298916642a88e053"])) {
        level.var_ae746e8f[#"hash_298916642a88e053"] = array(level.var_ae746e8f[#"hash_298916642a88e053"]);
    }
    level.var_ae746e8f[#"hash_298916642a88e053"][level.var_ae746e8f[#"hash_298916642a88e053"].size] = elem;
}

// Namespace namespace_ee630e04/namespace_ee630e04
// Params 0, eflags: 0x0
// Checksum 0x2cca6b68, Offset: 0x280
// Size: 0x34
function register_clientside() {
    elem = new class_c3742963();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace namespace_ee630e04/namespace_ee630e04
// Params 1, eflags: 0x0
// Checksum 0x30c153cc, Offset: 0x2c0
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace namespace_ee630e04/namespace_ee630e04
// Params 1, eflags: 0x0
// Checksum 0x5dbf26a, Offset: 0x2e8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace namespace_ee630e04/namespace_ee630e04
// Params 1, eflags: 0x0
// Checksum 0xf8480f91, Offset: 0x310
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace namespace_ee630e04/namespace_ee630e04
// Params 2, eflags: 0x0
// Checksum 0x130742c3, Offset: 0x338
// Size: 0x28
function set_visible(localclientnum, value) {
    [[ self ]]->set_visible(localclientnum, value);
}

// Namespace namespace_ee630e04/namespace_ee630e04
// Params 2, eflags: 0x0
// Checksum 0x277b375a, Offset: 0x368
// Size: 0x28
function function_afdd9f65(localclientnum, value) {
    [[ self ]]->function_afdd9f65(localclientnum, value);
}

