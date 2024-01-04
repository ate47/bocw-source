// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace namespace_36f604ad;

// Namespace namespace_36f604ad
// Method(s) 11 Total 18
class class_42946372 : cluielem {

    // Namespace class_42946372/namespace_36f604ad
    // Params 0, eflags: 0x8
    // Checksum 0x28e5b85, Offset: 0x4d8
    // Size: 0x14
    __constructor() {
        cluielem::__constructor();
    }

    // Namespace class_42946372/namespace_36f604ad
    // Params 0, eflags: 0x90 class_linked
    // Checksum 0xab36cb97, Offset: 0x770
    // Size: 0x14
    __destructor() {
        cluielem::__destructor();
    }

    // Namespace namespace_42946372/namespace_36f604ad
    // Params 1, eflags: 0x0
    // Checksum 0x4870b950, Offset: 0x628
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_42946372/namespace_36f604ad
    // Params 2, eflags: 0x0
    // Checksum 0x97290f15, Offset: 0x690
    // Size: 0x30
    function set_clientnum(localclientnum, value) {
        [[ self ]]->set_data(localclientnum, "clientnum", value);
    }

    // Namespace namespace_42946372/namespace_36f604ad
    // Params 2, eflags: 0x0
    // Checksum 0x7b5396b0, Offset: 0x700
    // Size: 0x30
    function function_4f6e830d(localclientnum, value) {
        [[ self ]]->set_data(localclientnum, "offset_y", value);
    }

    // Namespace namespace_42946372/namespace_36f604ad
    // Params 0, eflags: 0x0
    // Checksum 0xe0ff866e, Offset: 0x548
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("DOA_TextBubble_PlayerName");
    }

    // Namespace namespace_42946372/namespace_36f604ad
    // Params 2, eflags: 0x0
    // Checksum 0xfe901489, Offset: 0x6c8
    // Size: 0x30
    function function_61312692(localclientnum, value) {
        [[ self ]]->set_data(localclientnum, "offset_x", value);
    }

    // Namespace namespace_42946372/namespace_36f604ad
    // Params 2, eflags: 0x0
    // Checksum 0x6b68fc44, Offset: 0x738
    // Size: 0x30
    function function_7ddfdfef(localclientnum, value) {
        [[ self ]]->set_data(localclientnum, "offset_z", value);
    }

    // Namespace namespace_42946372/namespace_36f604ad
    // Params 5, eflags: 0x0
    // Checksum 0xe3f395dc, Offset: 0x4f8
    // Size: 0x44
    function setup_clientfields(*var_5a7b4b38, *var_c05c67e2, *var_5957697a, *var_90efc226, *var_b77f41ee) {
        cluielem::setup_clientfields("DOA_TextBubble_PlayerName");
    }

    // Namespace namespace_42946372/namespace_36f604ad
    // Params 2, eflags: 0x0
    // Checksum 0x17471f4a, Offset: 0x658
    // Size: 0x30
    function set_entnum(localclientnum, value) {
        [[ self ]]->set_data(localclientnum, "entnum", value);
    }

    // Namespace namespace_42946372/namespace_36f604ad
    // Params 1, eflags: 0x0
    // Checksum 0xdd6aaf51, Offset: 0x570
    // Size: 0xb0
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        [[ self ]]->set_data(localclientnum, "entnum", 0);
        [[ self ]]->set_data(localclientnum, "clientnum", 0);
        [[ self ]]->set_data(localclientnum, "offset_x", 0);
        [[ self ]]->set_data(localclientnum, "offset_y", 0);
        [[ self ]]->set_data(localclientnum, "offset_z", 0);
    }

}

// Namespace namespace_36f604ad/namespace_36f604ad
// Params 4, eflags: 0x0
// Checksum 0x239e14a2, Offset: 0x110
// Size: 0x6c
function set_offset(localclientnum, offsetx, offsety, offsetz) {
    self function_61312692(localclientnum, offsetx);
    self function_4f6e830d(localclientnum, offsety);
    self function_7ddfdfef(localclientnum, offsetz);
}

// Namespace namespace_36f604ad/namespace_36f604ad
// Params 5, eflags: 0x0
// Checksum 0xc7c4596d, Offset: 0x188
// Size: 0x19e
function register(var_5a7b4b38, var_c05c67e2, var_5957697a, var_90efc226, var_b77f41ee) {
    elem = new class_42946372();
    [[ elem ]]->setup_clientfields(var_5a7b4b38, var_c05c67e2, var_5957697a, var_90efc226, var_b77f41ee);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"hash_7f210072744442c"])) {
        level.var_ae746e8f[#"hash_7f210072744442c"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"hash_7f210072744442c"])) {
        level.var_ae746e8f[#"hash_7f210072744442c"] = [];
    } else if (!isarray(level.var_ae746e8f[#"hash_7f210072744442c"])) {
        level.var_ae746e8f[#"hash_7f210072744442c"] = array(level.var_ae746e8f[#"hash_7f210072744442c"]);
    }
    level.var_ae746e8f[#"hash_7f210072744442c"][level.var_ae746e8f[#"hash_7f210072744442c"].size] = elem;
}

// Namespace namespace_36f604ad/namespace_36f604ad
// Params 0, eflags: 0x0
// Checksum 0x26a400ed, Offset: 0x330
// Size: 0x34
function register_clientside() {
    elem = new class_42946372();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace namespace_36f604ad/namespace_36f604ad
// Params 1, eflags: 0x0
// Checksum 0xb10bb85e, Offset: 0x370
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace namespace_36f604ad/namespace_36f604ad
// Params 1, eflags: 0x0
// Checksum 0xa33ccc6d, Offset: 0x398
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace namespace_36f604ad/namespace_36f604ad
// Params 1, eflags: 0x0
// Checksum 0x691cffce, Offset: 0x3c0
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace namespace_36f604ad/namespace_36f604ad
// Params 2, eflags: 0x0
// Checksum 0x9d595a14, Offset: 0x3e8
// Size: 0x28
function set_entnum(localclientnum, value) {
    [[ self ]]->set_entnum(localclientnum, value);
}

// Namespace namespace_36f604ad/namespace_36f604ad
// Params 2, eflags: 0x0
// Checksum 0x84340b2b, Offset: 0x418
// Size: 0x28
function set_clientnum(localclientnum, value) {
    [[ self ]]->set_clientnum(localclientnum, value);
}

// Namespace namespace_36f604ad/namespace_36f604ad
// Params 2, eflags: 0x0
// Checksum 0x1e7d916c, Offset: 0x448
// Size: 0x28
function function_61312692(localclientnum, value) {
    [[ self ]]->function_61312692(localclientnum, value);
}

// Namespace namespace_36f604ad/namespace_36f604ad
// Params 2, eflags: 0x0
// Checksum 0xf98ef9a6, Offset: 0x478
// Size: 0x28
function function_4f6e830d(localclientnum, value) {
    [[ self ]]->function_4f6e830d(localclientnum, value);
}

// Namespace namespace_36f604ad/namespace_36f604ad
// Params 2, eflags: 0x0
// Checksum 0xde75bd79, Offset: 0x4a8
// Size: 0x28
function function_7ddfdfef(localclientnum, value) {
    [[ self ]]->function_7ddfdfef(localclientnum, value);
}

