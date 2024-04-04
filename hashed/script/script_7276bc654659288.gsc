// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace cp_hint_text;

// Namespace cp_hint_text
// Method(s) 10 Total 17
class class_ab111f2c : cluielem {

    // Namespace namespace_ab111f2c/cp_hint_text
    // Params 1, eflags: 0x2 linked
    // Checksum 0x76afe754, Offset: 0x5f0
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_ab111f2c/cp_hint_text
    // Params 1, eflags: 0x2 linked
    // Checksum 0x2a493ab8, Offset: 0x6d0
    // Size: 0x6c
    function function_1c78fe1e(localclientnum) {
        current_val = get_data(localclientnum, "fadeout");
        new_val = (current_val + 1) % 2;
        set_data(localclientnum, "fadeout", new_val);
    }

    // Namespace namespace_ab111f2c/cp_hint_text
    // Params 0, eflags: 0x2 linked
    // Checksum 0x6a2ed9b6, Offset: 0x520
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("cp_hint_text");
    }

    // Namespace namespace_ab111f2c/cp_hint_text
    // Params 1, eflags: 0x2 linked
    // Checksum 0x46ef0c30, Offset: 0x658
    // Size: 0x6c
    function function_64d95cad(localclientnum) {
        current_val = get_data(localclientnum, "display_blink");
        new_val = (current_val + 1) % 2;
        set_data(localclientnum, "display_blink", new_val);
    }

    // Namespace namespace_ab111f2c/cp_hint_text
    // Params 4, eflags: 0x2 linked
    // Checksum 0x9664db8e, Offset: 0x438
    // Size: 0xdc
    function setup_clientfields(*var_4f361551, var_8f133ca4, var_b38e91b5, var_101d8535) {
        cluielem::setup_clientfields("cp_hint_text");
        cluielem::function_dcb34c80("string", "hint_text", 1);
        cluielem::add_clientfield("display_blink", 1, 1, "counter", var_8f133ca4);
        cluielem::add_clientfield("fadeout", 1, 1, "counter", var_b38e91b5);
        cluielem::add_clientfield("display_noblink", 1, 1, "counter", var_101d8535);
    }

    // Namespace namespace_ab111f2c/cp_hint_text
    // Params 2, eflags: 0x2 linked
    // Checksum 0x60271853, Offset: 0x620
    // Size: 0x30
    function function_a16f86c1(localclientnum, value) {
        set_data(localclientnum, "hint_text", value);
    }

    // Namespace namespace_ab111f2c/cp_hint_text
    // Params 1, eflags: 0x2 linked
    // Checksum 0x2d146011, Offset: 0x748
    // Size: 0x6c
    function function_a981d6b6(localclientnum) {
        current_val = get_data(localclientnum, "display_noblink");
        new_val = (current_val + 1) % 2;
        set_data(localclientnum, "display_noblink", new_val);
    }

    // Namespace namespace_ab111f2c/cp_hint_text
    // Params 1, eflags: 0x2 linked
    // Checksum 0x1ee4ceb, Offset: 0x548
    // Size: 0xa0
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "hint_text", #"");
        set_data(localclientnum, "display_blink", 0);
        set_data(localclientnum, "fadeout", 0);
        set_data(localclientnum, "display_noblink", 0);
    }

}

// Namespace cp_hint_text/cp_hint_text
// Params 4, eflags: 0x2 linked
// Checksum 0x30372835, Offset: 0x118
// Size: 0x196
function register(var_4f361551, var_8f133ca4, var_b38e91b5, var_101d8535) {
    elem = new class_ab111f2c();
    [[ elem ]]->setup_clientfields(var_4f361551, var_8f133ca4, var_b38e91b5, var_101d8535);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"cp_hint_text"])) {
        level.var_ae746e8f[#"cp_hint_text"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"cp_hint_text"])) {
        level.var_ae746e8f[#"cp_hint_text"] = [];
    } else if (!isarray(level.var_ae746e8f[#"cp_hint_text"])) {
        level.var_ae746e8f[#"cp_hint_text"] = array(level.var_ae746e8f[#"cp_hint_text"]);
    }
    level.var_ae746e8f[#"cp_hint_text"][level.var_ae746e8f[#"cp_hint_text"].size] = elem;
}

// Namespace cp_hint_text/cp_hint_text
// Params 0, eflags: 0x0
// Checksum 0xf7880d40, Offset: 0x2b8
// Size: 0x34
function register_clientside() {
    elem = new class_ab111f2c();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace cp_hint_text/cp_hint_text
// Params 1, eflags: 0x0
// Checksum 0x7e49eabf, Offset: 0x2f8
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace cp_hint_text/cp_hint_text
// Params 1, eflags: 0x0
// Checksum 0x4e86abe3, Offset: 0x320
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace cp_hint_text/cp_hint_text
// Params 1, eflags: 0x0
// Checksum 0x1ec1353b, Offset: 0x348
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace cp_hint_text/cp_hint_text
// Params 2, eflags: 0x0
// Checksum 0xe789a536, Offset: 0x370
// Size: 0x28
function function_a16f86c1(localclientnum, value) {
    [[ self ]]->function_a16f86c1(localclientnum, value);
}

// Namespace cp_hint_text/cp_hint_text
// Params 1, eflags: 0x0
// Checksum 0x1445e665, Offset: 0x3a0
// Size: 0x1c
function function_64d95cad(localclientnum) {
    [[ self ]]->function_64d95cad(localclientnum);
}

// Namespace cp_hint_text/cp_hint_text
// Params 1, eflags: 0x0
// Checksum 0xd861f8fb, Offset: 0x3c8
// Size: 0x1c
function function_1c78fe1e(localclientnum) {
    [[ self ]]->function_1c78fe1e(localclientnum);
}

// Namespace cp_hint_text/cp_hint_text
// Params 1, eflags: 0x0
// Checksum 0xd04cea32, Offset: 0x3f0
// Size: 0x1c
function function_a981d6b6(localclientnum) {
    [[ self ]]->function_a981d6b6(localclientnum);
}

