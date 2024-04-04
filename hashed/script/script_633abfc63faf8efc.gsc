// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace cp_hint_text;

// Namespace cp_hint_text
// Method(s) 9 Total 16
class class_ab111f2c : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace namespace_ab111f2c/cp_hint_text
    // Params 2, eflags: 0x2 linked
    // Checksum 0x31716144, Offset: 0x380
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_ab111f2c/cp_hint_text
    // Params 1, eflags: 0x2 linked
    // Checksum 0xf8d275ef, Offset: 0x490
    // Size: 0x3c
    function function_1c78fe1e(player) {
        player clientfield::function_bb878fc3(var_d5213cbb, var_bf9c8c95, "fadeout");
    }

    // Namespace namespace_ab111f2c/cp_hint_text
    // Params 1, eflags: 0x2 linked
    // Checksum 0x4161a525, Offset: 0x3c8
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_ab111f2c/cp_hint_text
    // Params 1, eflags: 0x2 linked
    // Checksum 0xddfcef73, Offset: 0x448
    // Size: 0x3c
    function function_64d95cad(player) {
        player clientfield::function_bb878fc3(var_d5213cbb, var_bf9c8c95, "display_blink");
    }

    // Namespace namespace_ab111f2c/cp_hint_text
    // Params 0, eflags: 0x2 linked
    // Checksum 0xa7e6e69e, Offset: 0x2b8
    // Size: 0xbc
    function setup_clientfields() {
        cluielem::setup_clientfields("cp_hint_text");
        cluielem::function_dcb34c80("string", "hint_text", 1);
        cluielem::add_clientfield("display_blink", 1, 1, "counter");
        cluielem::add_clientfield("fadeout", 1, 1, "counter");
        cluielem::add_clientfield("display_noblink", 1, 1, "counter");
    }

    // Namespace namespace_ab111f2c/cp_hint_text
    // Params 2, eflags: 0x2 linked
    // Checksum 0xbcb3e4a1, Offset: 0x3f8
    // Size: 0x44
    function function_a16f86c1(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "hint_text", value);
    }

    // Namespace namespace_ab111f2c/cp_hint_text
    // Params 1, eflags: 0x2 linked
    // Checksum 0x41bae714, Offset: 0x4d8
    // Size: 0x3c
    function function_a981d6b6(player) {
        player clientfield::function_bb878fc3(var_d5213cbb, var_bf9c8c95, "display_noblink");
    }

}

// Namespace cp_hint_text/cp_hint_text
// Params 0, eflags: 0x2 linked
// Checksum 0xdf3a3275, Offset: 0x120
// Size: 0x34
function register() {
    elem = new class_ab111f2c();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace cp_hint_text/cp_hint_text
// Params 2, eflags: 0x2 linked
// Checksum 0x83b95f3f, Offset: 0x160
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace cp_hint_text/cp_hint_text
// Params 1, eflags: 0x0
// Checksum 0xde74b2a0, Offset: 0x1a0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace cp_hint_text/cp_hint_text
// Params 1, eflags: 0x2 linked
// Checksum 0x686d9d85, Offset: 0x1c8
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace cp_hint_text/cp_hint_text
// Params 2, eflags: 0x2 linked
// Checksum 0xb107bef3, Offset: 0x1f0
// Size: 0x28
function function_a16f86c1(player, value) {
    [[ self ]]->function_a16f86c1(player, value);
}

// Namespace cp_hint_text/cp_hint_text
// Params 1, eflags: 0x2 linked
// Checksum 0x6bd6ffee, Offset: 0x220
// Size: 0x1c
function function_64d95cad(player) {
    [[ self ]]->function_64d95cad(player);
}

// Namespace cp_hint_text/cp_hint_text
// Params 1, eflags: 0x0
// Checksum 0x302c3d17, Offset: 0x248
// Size: 0x1c
function function_1c78fe1e(player) {
    [[ self ]]->function_1c78fe1e(player);
}

// Namespace cp_hint_text/cp_hint_text
// Params 1, eflags: 0x2 linked
// Checksum 0xa5a1fab5, Offset: 0x270
// Size: 0x1c
function function_a981d6b6(player) {
    [[ self ]]->function_a981d6b6(player);
}

