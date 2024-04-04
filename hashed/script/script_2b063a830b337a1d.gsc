// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_8f760a1e;

// Namespace namespace_8f760a1e
// Method(s) 12 Total 19
class class_fb1bfa12 : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace namespace_fb1bfa12/namespace_8f760a1e
    // Params 2, eflags: 0x0
    // Checksum 0x4fc5c24f, Offset: 0x528
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_fb1bfa12/namespace_8f760a1e
    // Params 2, eflags: 0x0
    // Checksum 0x3972053b, Offset: 0x6e0
    // Size: 0x44
    function function_10415bce(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "lvlDescriptionShort", value);
    }

    // Namespace namespace_fb1bfa12/namespace_8f760a1e
    // Params 2, eflags: 0x0
    // Checksum 0xc710c33e, Offset: 0x730
    // Size: 0x44
    function function_275127c2(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "lvlDescriptionLong", value);
    }

    // Namespace namespace_fb1bfa12/namespace_8f760a1e
    // Params 2, eflags: 0x0
    // Checksum 0x68389c78, Offset: 0x780
    // Size: 0x44
    function function_3d5ae5d4(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "lvlProgress", value);
    }

    // Namespace namespace_fb1bfa12/namespace_8f760a1e
    // Params 2, eflags: 0x0
    // Checksum 0x29a3dc03, Offset: 0x5f0
    // Size: 0x44
    function function_57d3362b(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "activeState", value);
    }

    // Namespace namespace_fb1bfa12/namespace_8f760a1e
    // Params 1, eflags: 0x0
    // Checksum 0x4a2abf33, Offset: 0x570
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_fb1bfa12/namespace_8f760a1e
    // Params 0, eflags: 0x0
    // Checksum 0x7caf82ce, Offset: 0x3e8
    // Size: 0x134
    function setup_clientfields() {
        cluielem::setup_clientfields("evidence_board_mission_preview");
        cluielem::add_clientfield("entNum", 1, 10, "int");
        cluielem::add_clientfield("activeState", 1, 2, "int");
        cluielem::add_clientfield("lvlYear", 1, 11, "int");
        cluielem::function_dcb34c80("string", "lvlName", 1);
        cluielem::function_dcb34c80("string", "lvlDescriptionShort", 1);
        cluielem::function_dcb34c80("string", "lvlDescriptionLong", 1);
        cluielem::add_clientfield("lvlProgress", 1, 4, "float");
    }

    // Namespace namespace_fb1bfa12/namespace_8f760a1e
    // Params 2, eflags: 0x0
    // Checksum 0x415cfe1f, Offset: 0x690
    // Size: 0x44
    function function_c063a71c(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "lvlName", value);
    }

    // Namespace namespace_fb1bfa12/namespace_8f760a1e
    // Params 2, eflags: 0x0
    // Checksum 0x1096abcc, Offset: 0x640
    // Size: 0x44
    function function_c2c6a8c3(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "lvlYear", value);
    }

    // Namespace namespace_fb1bfa12/namespace_8f760a1e
    // Params 2, eflags: 0x0
    // Checksum 0x1cad3e8d, Offset: 0x5a0
    // Size: 0x44
    function set_entnum(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "entNum", value);
    }

}

// Namespace namespace_8f760a1e/namespace_8f760a1e
// Params 2, eflags: 0x0
// Checksum 0x53d0fb53, Offset: 0x168
// Size: 0x34
function function_326329cb(player, var_ba420c60) {
    function_c063a71c(player, var_ba420c60.levelname);
}

// Namespace namespace_8f760a1e/namespace_8f760a1e
// Params 0, eflags: 0x0
// Checksum 0x6887d3f4, Offset: 0x1a8
// Size: 0x34
function register() {
    elem = new class_fb1bfa12();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace namespace_8f760a1e/namespace_8f760a1e
// Params 2, eflags: 0x0
// Checksum 0xc011af55, Offset: 0x1e8
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace namespace_8f760a1e/namespace_8f760a1e
// Params 1, eflags: 0x0
// Checksum 0xd61d11a3, Offset: 0x228
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace namespace_8f760a1e/namespace_8f760a1e
// Params 1, eflags: 0x0
// Checksum 0xea7a8b61, Offset: 0x250
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace namespace_8f760a1e/namespace_8f760a1e
// Params 2, eflags: 0x0
// Checksum 0xfa4cd9fb, Offset: 0x278
// Size: 0x28
function set_entnum(player, value) {
    [[ self ]]->set_entnum(player, value);
}

// Namespace namespace_8f760a1e/namespace_8f760a1e
// Params 2, eflags: 0x0
// Checksum 0xc666c165, Offset: 0x2a8
// Size: 0x28
function function_57d3362b(player, value) {
    [[ self ]]->function_57d3362b(player, value);
}

// Namespace namespace_8f760a1e/namespace_8f760a1e
// Params 2, eflags: 0x0
// Checksum 0x553506b9, Offset: 0x2d8
// Size: 0x28
function function_c2c6a8c3(player, value) {
    [[ self ]]->function_c2c6a8c3(player, value);
}

// Namespace namespace_8f760a1e/namespace_8f760a1e
// Params 2, eflags: 0x0
// Checksum 0x32fa7012, Offset: 0x308
// Size: 0x28
function function_c063a71c(player, value) {
    [[ self ]]->function_c063a71c(player, value);
}

// Namespace namespace_8f760a1e/namespace_8f760a1e
// Params 2, eflags: 0x0
// Checksum 0x638c5fc1, Offset: 0x338
// Size: 0x28
function function_10415bce(player, value) {
    [[ self ]]->function_10415bce(player, value);
}

// Namespace namespace_8f760a1e/namespace_8f760a1e
// Params 2, eflags: 0x0
// Checksum 0x6e737854, Offset: 0x368
// Size: 0x28
function function_275127c2(player, value) {
    [[ self ]]->function_275127c2(player, value);
}

// Namespace namespace_8f760a1e/namespace_8f760a1e
// Params 2, eflags: 0x0
// Checksum 0xa7bbba90, Offset: 0x398
// Size: 0x28
function function_3d5ae5d4(player, value) {
    [[ self ]]->function_3d5ae5d4(player, value);
}

