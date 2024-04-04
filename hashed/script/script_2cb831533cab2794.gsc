// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace zm_hint_text;

// Namespace zm_hint_text
// Method(s) 8 Total 15
class czm_hint_text : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace czm_hint_text/zm_hint_text
    // Params 2, eflags: 0x2 linked
    // Checksum 0x1c7fc189, Offset: 0x320
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace czm_hint_text/zm_hint_text
    // Params 1, eflags: 0x2 linked
    // Checksum 0x7e7fd193, Offset: 0x368
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace czm_hint_text/zm_hint_text
    // Params 0, eflags: 0x2 linked
    // Checksum 0xeeed0bd5, Offset: 0x280
    // Size: 0x94
    function setup_clientfields() {
        cluielem::setup_clientfields("zm_hint_text");
        cluielem::function_dcb34c80("string", "text", 1);
        cluielem::add_clientfield("visible", 1, 1, "int");
        cluielem::function_dcb34c80("string", "textGpad", 1);
    }

    // Namespace czm_hint_text/zm_hint_text
    // Params 2, eflags: 0x2 linked
    // Checksum 0xba34c195, Offset: 0x398
    // Size: 0x44
    function set_text(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "text", value);
    }

    // Namespace czm_hint_text/zm_hint_text
    // Params 2, eflags: 0x2 linked
    // Checksum 0x4efbfeb5, Offset: 0x3e8
    // Size: 0x44
    function set_visible(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "visible", value);
    }

    // Namespace czm_hint_text/zm_hint_text
    // Params 2, eflags: 0x2 linked
    // Checksum 0xd2a7d5e2, Offset: 0x438
    // Size: 0x44
    function function_f2cb39c0(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "textGpad", value);
    }

}

// Namespace zm_hint_text/zm_hint_text
// Params 0, eflags: 0x2 linked
// Checksum 0xd49e306b, Offset: 0x100
// Size: 0x34
function register() {
    elem = new czm_hint_text();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace zm_hint_text/zm_hint_text
// Params 2, eflags: 0x2 linked
// Checksum 0x3a6790e3, Offset: 0x140
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace zm_hint_text/zm_hint_text
// Params 1, eflags: 0x2 linked
// Checksum 0x2ad0b106, Offset: 0x180
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_hint_text/zm_hint_text
// Params 1, eflags: 0x2 linked
// Checksum 0x1e0592ea, Offset: 0x1a8
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace zm_hint_text/zm_hint_text
// Params 2, eflags: 0x2 linked
// Checksum 0xcc6c0c8b, Offset: 0x1d0
// Size: 0x28
function set_text(player, value) {
    [[ self ]]->set_text(player, value);
}

// Namespace zm_hint_text/zm_hint_text
// Params 2, eflags: 0x2 linked
// Checksum 0xef6d6fbb, Offset: 0x200
// Size: 0x28
function set_visible(player, value) {
    [[ self ]]->set_visible(player, value);
}

// Namespace zm_hint_text/zm_hint_text
// Params 2, eflags: 0x2 linked
// Checksum 0xb779ee8d, Offset: 0x230
// Size: 0x28
function function_f2cb39c0(player, value) {
    [[ self ]]->function_f2cb39c0(player, value);
}

