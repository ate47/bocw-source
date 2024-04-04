// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace full_screen_black;

// Namespace full_screen_black
// Method(s) 12 Total 19
class cfull_screen_black : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace cfull_screen_black/full_screen_black
    // Params 2, eflags: 0x2 linked
    // Checksum 0x378f7aed, Offset: 0x6b8
    // Size: 0x44
    function set_endalpha(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "endAlpha", value);
    }

    // Namespace cfull_screen_black/full_screen_black
    // Params 2, eflags: 0x2 linked
    // Checksum 0x74b72858, Offset: 0x4b0
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cfull_screen_black/full_screen_black
    // Params 2, eflags: 0x2 linked
    // Checksum 0xaa01aed1, Offset: 0x578
    // Size: 0x44
    function set_green(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "green", value);
    }

    // Namespace cfull_screen_black/full_screen_black
    // Params 2, eflags: 0x2 linked
    // Checksum 0xa10b3e86, Offset: 0x618
    // Size: 0x44
    function set_fadeovertime(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "fadeOverTime", value);
    }

    // Namespace cfull_screen_black/full_screen_black
    // Params 1, eflags: 0x2 linked
    // Checksum 0x9855b99d, Offset: 0x4f8
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cfull_screen_black/full_screen_black
    // Params 2, eflags: 0x2 linked
    // Checksum 0x72aca967, Offset: 0x5c8
    // Size: 0x44
    function set_blue(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "blue", value);
    }

    // Namespace cfull_screen_black/full_screen_black
    // Params 0, eflags: 0x2 linked
    // Checksum 0x8916b184, Offset: 0x370
    // Size: 0x134
    function setup_clientfields() {
        cluielem::setup_clientfields("full_screen_black");
        cluielem::add_clientfield("red", 1, 3, "float");
        cluielem::add_clientfield("green", 1, 3, "float");
        cluielem::add_clientfield("blue", 1, 3, "float");
        cluielem::add_clientfield("fadeOverTime", 1, 12, "int");
        cluielem::add_clientfield("startAlpha", 1, 5, "float");
        cluielem::add_clientfield("endAlpha", 1, 5, "float");
        cluielem::add_clientfield("drawHUD", 1, 1, "int");
    }

    // Namespace cfull_screen_black/full_screen_black
    // Params 2, eflags: 0x2 linked
    // Checksum 0xa5a7b5b3, Offset: 0x668
    // Size: 0x44
    function set_startalpha(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "startAlpha", value);
    }

    // Namespace cfull_screen_black/full_screen_black
    // Params 2, eflags: 0x2 linked
    // Checksum 0x7927a9e6, Offset: 0x708
    // Size: 0x44
    function set_drawhud(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "drawHUD", value);
    }

    // Namespace cfull_screen_black/full_screen_black
    // Params 2, eflags: 0x2 linked
    // Checksum 0x27557248, Offset: 0x528
    // Size: 0x44
    function set_red(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "red", value);
    }

}

// Namespace full_screen_black/full_screen_black
// Params 0, eflags: 0x2 linked
// Checksum 0xe66f3806, Offset: 0x130
// Size: 0x34
function register() {
    elem = new cfull_screen_black();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace full_screen_black/full_screen_black
// Params 2, eflags: 0x0
// Checksum 0x40d59cb0, Offset: 0x170
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace full_screen_black/full_screen_black
// Params 1, eflags: 0x0
// Checksum 0x6221b1b7, Offset: 0x1b0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace full_screen_black/full_screen_black
// Params 1, eflags: 0x0
// Checksum 0xd7920db2, Offset: 0x1d8
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace full_screen_black/full_screen_black
// Params 2, eflags: 0x0
// Checksum 0x25a2aa3d, Offset: 0x200
// Size: 0x28
function set_red(player, value) {
    [[ self ]]->set_red(player, value);
}

// Namespace full_screen_black/full_screen_black
// Params 2, eflags: 0x0
// Checksum 0x33c146d2, Offset: 0x230
// Size: 0x28
function set_green(player, value) {
    [[ self ]]->set_green(player, value);
}

// Namespace full_screen_black/full_screen_black
// Params 2, eflags: 0x0
// Checksum 0x9f223f63, Offset: 0x260
// Size: 0x28
function set_blue(player, value) {
    [[ self ]]->set_blue(player, value);
}

// Namespace full_screen_black/full_screen_black
// Params 2, eflags: 0x0
// Checksum 0x8fab7bc0, Offset: 0x290
// Size: 0x28
function set_fadeovertime(player, value) {
    [[ self ]]->set_fadeovertime(player, value);
}

// Namespace full_screen_black/full_screen_black
// Params 2, eflags: 0x0
// Checksum 0x425ae0c6, Offset: 0x2c0
// Size: 0x28
function set_startalpha(player, value) {
    [[ self ]]->set_startalpha(player, value);
}

// Namespace full_screen_black/full_screen_black
// Params 2, eflags: 0x0
// Checksum 0x2d66dd0c, Offset: 0x2f0
// Size: 0x28
function set_endalpha(player, value) {
    [[ self ]]->set_endalpha(player, value);
}

// Namespace full_screen_black/full_screen_black
// Params 2, eflags: 0x0
// Checksum 0x28597fe8, Offset: 0x320
// Size: 0x28
function set_drawhud(player, value) {
    [[ self ]]->set_drawhud(player, value);
}

