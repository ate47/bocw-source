// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace pip_menu;

// Namespace pip_menu
// Method(s) 9 Total 16
class class_70ee35b1 : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace namespace_70ee35b1/pip_menu
    // Params 2, eflags: 0x2 linked
    // Checksum 0x16440dfe, Offset: 0x408
    // Size: 0x44
    function set_moviename(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "movieName", value);
    }

    // Namespace namespace_70ee35b1/pip_menu
    // Params 2, eflags: 0x2 linked
    // Checksum 0xa0d0d6b6, Offset: 0x390
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_70ee35b1/pip_menu
    // Params 2, eflags: 0x2 linked
    // Checksum 0xcd2d4d53, Offset: 0x4f8
    // Size: 0x44
    function set_additive(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "additive", value);
    }

    // Namespace namespace_70ee35b1/pip_menu
    // Params 1, eflags: 0x2 linked
    // Checksum 0xeea0d326, Offset: 0x3d8
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_70ee35b1/pip_menu
    // Params 2, eflags: 0x2 linked
    // Checksum 0xbde610bc, Offset: 0x4a8
    // Size: 0x44
    function set_looping(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "looping", value);
    }

    // Namespace namespace_70ee35b1/pip_menu
    // Params 2, eflags: 0x2 linked
    // Checksum 0xd4705e89, Offset: 0x458
    // Size: 0x44
    function set_showblackscreen(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "showBlackScreen", value);
    }

    // Namespace namespace_70ee35b1/pip_menu
    // Params 0, eflags: 0x2 linked
    // Checksum 0x6263552e, Offset: 0x2c8
    // Size: 0xbc
    function setup_clientfields() {
        cluielem::setup_clientfields("pip_menu");
        cluielem::function_dcb34c80("moviefile", "movieName", 1);
        cluielem::add_clientfield("showBlackScreen", 1, 1, "int");
        cluielem::add_clientfield("looping", 1, 1, "int");
        cluielem::add_clientfield("additive", 1, 1, "int");
    }

}

// Namespace pip_menu/pip_menu
// Params 0, eflags: 0x2 linked
// Checksum 0x12bdb5, Offset: 0x118
// Size: 0x34
function register() {
    elem = new class_70ee35b1();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace pip_menu/pip_menu
// Params 2, eflags: 0x0
// Checksum 0xf79ebb64, Offset: 0x158
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace pip_menu/pip_menu
// Params 1, eflags: 0x0
// Checksum 0x8223fa61, Offset: 0x198
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace pip_menu/pip_menu
// Params 1, eflags: 0x0
// Checksum 0xc4970c2c, Offset: 0x1c0
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace pip_menu/pip_menu
// Params 2, eflags: 0x0
// Checksum 0xfc159fea, Offset: 0x1e8
// Size: 0x28
function set_moviename(player, value) {
    [[ self ]]->set_moviename(player, value);
}

// Namespace pip_menu/pip_menu
// Params 2, eflags: 0x0
// Checksum 0x2dc7a400, Offset: 0x218
// Size: 0x28
function set_showblackscreen(player, value) {
    [[ self ]]->set_showblackscreen(player, value);
}

// Namespace pip_menu/pip_menu
// Params 2, eflags: 0x0
// Checksum 0xaf442dbe, Offset: 0x248
// Size: 0x28
function set_looping(player, value) {
    [[ self ]]->set_looping(player, value);
}

// Namespace pip_menu/pip_menu
// Params 2, eflags: 0x0
// Checksum 0x771cefa5, Offset: 0x278
// Size: 0x28
function set_additive(player, value) {
    [[ self ]]->set_additive(player, value);
}

