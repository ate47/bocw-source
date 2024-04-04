// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace zm_hint_text;

// Namespace zm_hint_text
// Method(s) 9 Total 16
class czm_hint_text : cluielem {

    // Namespace czm_hint_text/zm_hint_text
    // Params 1, eflags: 0x2 linked
    // Checksum 0xc32853f4, Offset: 0x578
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace czm_hint_text/zm_hint_text
    // Params 0, eflags: 0x2 linked
    // Checksum 0x624da644, Offset: 0x4b0
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("zm_hint_text");
    }

    // Namespace czm_hint_text/zm_hint_text
    // Params 3, eflags: 0x2 linked
    // Checksum 0xec14909a, Offset: 0x3f8
    // Size: 0xac
    function setup_clientfields(*textcallback, var_6ad1a3bb, *var_83e66917) {
        cluielem::setup_clientfields("zm_hint_text");
        cluielem::function_dcb34c80("string", "text", 1);
        cluielem::add_clientfield("visible", 1, 1, "int", var_83e66917);
        cluielem::function_dcb34c80("string", "textGpad", 1);
    }

    // Namespace czm_hint_text/zm_hint_text
    // Params 2, eflags: 0x2 linked
    // Checksum 0x31e1fb11, Offset: 0x5a8
    // Size: 0x30
    function set_text(localclientnum, value) {
        set_data(localclientnum, "text", value);
    }

    // Namespace czm_hint_text/zm_hint_text
    // Params 2, eflags: 0x2 linked
    // Checksum 0x1fa9bcf, Offset: 0x5e0
    // Size: 0x30
    function set_visible(localclientnum, value) {
        set_data(localclientnum, "visible", value);
    }

    // Namespace czm_hint_text/zm_hint_text
    // Params 2, eflags: 0x2 linked
    // Checksum 0x3c1ebfe7, Offset: 0x618
    // Size: 0x30
    function function_f2cb39c0(localclientnum, value) {
        set_data(localclientnum, "textGpad", value);
    }

    // Namespace czm_hint_text/zm_hint_text
    // Params 1, eflags: 0x2 linked
    // Checksum 0x90cf5c77, Offset: 0x4d8
    // Size: 0x94
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "text", #"");
        set_data(localclientnum, "visible", 0);
        set_data(localclientnum, "textGpad", #"");
    }

}

// Namespace zm_hint_text/zm_hint_text
// Params 3, eflags: 0x2 linked
// Checksum 0xa7485bf1, Offset: 0xf8
// Size: 0x18e
function register(textcallback, var_6ad1a3bb, var_83e66917) {
    elem = new czm_hint_text();
    [[ elem ]]->setup_clientfields(textcallback, var_6ad1a3bb, var_83e66917);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"zm_hint_text"])) {
        level.var_ae746e8f[#"zm_hint_text"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"zm_hint_text"])) {
        level.var_ae746e8f[#"zm_hint_text"] = [];
    } else if (!isarray(level.var_ae746e8f[#"zm_hint_text"])) {
        level.var_ae746e8f[#"zm_hint_text"] = array(level.var_ae746e8f[#"zm_hint_text"]);
    }
    level.var_ae746e8f[#"zm_hint_text"][level.var_ae746e8f[#"zm_hint_text"].size] = elem;
}

// Namespace zm_hint_text/zm_hint_text
// Params 0, eflags: 0x0
// Checksum 0xadddd8e5, Offset: 0x290
// Size: 0x34
function register_clientside() {
    elem = new czm_hint_text();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace zm_hint_text/zm_hint_text
// Params 1, eflags: 0x0
// Checksum 0x37a0e45a, Offset: 0x2d0
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace zm_hint_text/zm_hint_text
// Params 1, eflags: 0x0
// Checksum 0xc21d77ea, Offset: 0x2f8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_hint_text/zm_hint_text
// Params 1, eflags: 0x0
// Checksum 0x10ca3097, Offset: 0x320
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace zm_hint_text/zm_hint_text
// Params 2, eflags: 0x0
// Checksum 0x21e5d488, Offset: 0x348
// Size: 0x28
function set_text(localclientnum, value) {
    [[ self ]]->set_text(localclientnum, value);
}

// Namespace zm_hint_text/zm_hint_text
// Params 2, eflags: 0x0
// Checksum 0xf89b11eb, Offset: 0x378
// Size: 0x28
function set_visible(localclientnum, value) {
    [[ self ]]->set_visible(localclientnum, value);
}

// Namespace zm_hint_text/zm_hint_text
// Params 2, eflags: 0x0
// Checksum 0x7474600b, Offset: 0x3a8
// Size: 0x28
function function_f2cb39c0(localclientnum, value) {
    [[ self ]]->function_f2cb39c0(localclientnum, value);
}

