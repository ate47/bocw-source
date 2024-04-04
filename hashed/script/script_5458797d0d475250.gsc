// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace zm_tungsten_title_cards;

// Namespace zm_tungsten_title_cards
// Method(s) 7 Total 14
class czm_tungsten_title_cards : cluielem {

    // Namespace czm_tungsten_title_cards/zm_tungsten_title_cards
    // Params 1, eflags: 0x0
    // Checksum 0x8d2e111f, Offset: 0x440
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace czm_tungsten_title_cards/zm_tungsten_title_cards
    // Params 0, eflags: 0x0
    // Checksum 0x2b7ca68b, Offset: 0x3d0
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("zm_tungsten_title_cards");
    }

    // Namespace czm_tungsten_title_cards/zm_tungsten_title_cards
    // Params 2, eflags: 0x0
    // Checksum 0x1d0af15e, Offset: 0x470
    // Size: 0x30
    function set_is_title_card_02(localclientnum, value) {
        set_data(localclientnum, "is_title_card_02", value);
    }

    // Namespace czm_tungsten_title_cards/zm_tungsten_title_cards
    // Params 1, eflags: 0x0
    // Checksum 0x419aab67, Offset: 0x378
    // Size: 0x4c
    function setup_clientfields(var_cb91ced3) {
        cluielem::setup_clientfields("zm_tungsten_title_cards");
        cluielem::add_clientfield("is_title_card_02", 4000, 1, "int", var_cb91ced3);
    }

    // Namespace czm_tungsten_title_cards/zm_tungsten_title_cards
    // Params 1, eflags: 0x0
    // Checksum 0xe95df02f, Offset: 0x3f8
    // Size: 0x40
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "is_title_card_02", 0);
    }

}

// Namespace zm_tungsten_title_cards/zm_tungsten_title_cards
// Params 1, eflags: 0x0
// Checksum 0x297db24b, Offset: 0xf0
// Size: 0x176
function register(var_cb91ced3) {
    elem = new czm_tungsten_title_cards();
    [[ elem ]]->setup_clientfields(var_cb91ced3);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"zm_tungsten_title_cards"])) {
        level.var_ae746e8f[#"zm_tungsten_title_cards"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"zm_tungsten_title_cards"])) {
        level.var_ae746e8f[#"zm_tungsten_title_cards"] = [];
    } else if (!isarray(level.var_ae746e8f[#"zm_tungsten_title_cards"])) {
        level.var_ae746e8f[#"zm_tungsten_title_cards"] = array(level.var_ae746e8f[#"zm_tungsten_title_cards"]);
    }
    level.var_ae746e8f[#"zm_tungsten_title_cards"][level.var_ae746e8f[#"zm_tungsten_title_cards"].size] = elem;
}

// Namespace zm_tungsten_title_cards/zm_tungsten_title_cards
// Params 0, eflags: 0x0
// Checksum 0x9e386fc1, Offset: 0x270
// Size: 0x34
function register_clientside() {
    elem = new czm_tungsten_title_cards();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace zm_tungsten_title_cards/zm_tungsten_title_cards
// Params 1, eflags: 0x0
// Checksum 0xc950a47, Offset: 0x2b0
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace zm_tungsten_title_cards/zm_tungsten_title_cards
// Params 1, eflags: 0x0
// Checksum 0x371be82f, Offset: 0x2d8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_tungsten_title_cards/zm_tungsten_title_cards
// Params 1, eflags: 0x0
// Checksum 0x38b4598, Offset: 0x300
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace zm_tungsten_title_cards/zm_tungsten_title_cards
// Params 2, eflags: 0x0
// Checksum 0xab1dd420, Offset: 0x328
// Size: 0x28
function set_is_title_card_02(localclientnum, value) {
    [[ self ]]->set_is_title_card_02(localclientnum, value);
}

