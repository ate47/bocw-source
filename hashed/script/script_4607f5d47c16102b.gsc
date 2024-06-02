// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace luielemimage;

// Namespace luielemimage
// Method(s) 15 Total 22
class cluielemimage : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace cluielemimage/luielemimage
    // Params 2, eflags: 0x0
    // Checksum 0x21fa0bde, Offset: 0x8f8
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cluielemimage/luielemimage
    // Params 2, eflags: 0x0
    // Checksum 0xa1c92449, Offset: 0xba0
    // Size: 0x44
    function set_green(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "green", value);
    }

    // Namespace cluielemimage/luielemimage
    // Params 2, eflags: 0x0
    // Checksum 0x8d113850, Offset: 0xab0
    // Size: 0x44
    function set_fadeovertime(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "fadeOverTime", value);
    }

    // Namespace cluielemimage/luielemimage
    // Params 1, eflags: 0x0
    // Checksum 0xf16b23dc, Offset: 0x940
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cluielemimage/luielemimage
    // Params 2, eflags: 0x0
    // Checksum 0xe5ddb341, Offset: 0xa60
    // Size: 0x44
    function set_height(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "height", value);
    }

    // Namespace cluielemimage/luielemimage
    // Params 2, eflags: 0x0
    // Checksum 0x94cfc89c, Offset: 0xc40
    // Size: 0x44
    function set_material(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "material", value);
    }

    // Namespace cluielemimage/luielemimage
    // Params 2, eflags: 0x0
    // Checksum 0x482d38eb, Offset: 0xbf0
    // Size: 0x44
    function set_blue(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "blue", value);
    }

    // Namespace cluielemimage/luielemimage
    // Params 2, eflags: 0x0
    // Checksum 0x96f1a05d, Offset: 0xa10
    // Size: 0x44
    function set_width(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "width", value);
    }

    // Namespace cluielemimage/luielemimage
    // Params 0, eflags: 0x0
    // Checksum 0x91507839, Offset: 0x740
    // Size: 0x1ac
    function setup_clientfields() {
        cluielem::setup_clientfields("LUIelemImage");
        cluielem::add_clientfield("x", 1, 7, "int");
        cluielem::add_clientfield("y", 1, 6, "int");
        cluielem::add_clientfield("width", 1, 6, "int");
        cluielem::add_clientfield("height", 1, 6, "int");
        cluielem::add_clientfield("fadeOverTime", 1, 5, "int");
        cluielem::add_clientfield("alpha", 1, 4, "float");
        cluielem::add_clientfield("red", 1, 4, "float");
        cluielem::add_clientfield("green", 1, 4, "float");
        cluielem::add_clientfield("blue", 1, 4, "float");
        cluielem::function_dcb34c80("material", "material", 1);
    }

    // Namespace cluielemimage/luielemimage
    // Params 2, eflags: 0x0
    // Checksum 0x5b859552, Offset: 0x9c0
    // Size: 0x44
    function set_y(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "y", value);
    }

    // Namespace cluielemimage/luielemimage
    // Params 2, eflags: 0x0
    // Checksum 0x561639e, Offset: 0xb00
    // Size: 0x44
    function set_alpha(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "alpha", value);
    }

    // Namespace cluielemimage/luielemimage
    // Params 2, eflags: 0x0
    // Checksum 0xa7878c3d, Offset: 0x970
    // Size: 0x44
    function set_x(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "x", value);
    }

    // Namespace cluielemimage/luielemimage
    // Params 2, eflags: 0x0
    // Checksum 0x4d89fdd8, Offset: 0xb50
    // Size: 0x44
    function set_red(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "red", value);
    }

}

// Namespace luielemimage/luielemimage
// Params 4, eflags: 0x0
// Checksum 0x79996b20, Offset: 0x138
// Size: 0x6c
function set_color(player, red, green, blue) {
    self set_red(player, red);
    self set_green(player, green);
    self set_blue(player, blue);
}

// Namespace luielemimage/luielemimage
// Params 3, eflags: 0x0
// Checksum 0xf2bc6a92, Offset: 0x1b0
// Size: 0x7c
function fade(player, var_1a92607f, duration = 0) {
    self set_alpha(player, var_1a92607f);
    self set_fadeovertime(player, int(duration * 10));
}

// Namespace luielemimage/luielemimage
// Params 2, eflags: 0x0
// Checksum 0x2b4c8131, Offset: 0x238
// Size: 0x44
function show(player, duration = 0) {
    self fade(player, 1, duration);
}

// Namespace luielemimage/luielemimage
// Params 2, eflags: 0x0
// Checksum 0xdc4fb858, Offset: 0x288
// Size: 0x3c
function hide(player, duration = 0) {
    self fade(player, 0, duration);
}

// Namespace luielemimage/luielemimage
// Params 2, eflags: 0x0
// Checksum 0x8fc88791, Offset: 0x2d0
// Size: 0x4c
function function_e5898fd7(player, var_c6572d9b) {
    self set_x(player, int(var_c6572d9b / 15));
}

// Namespace luielemimage/luielemimage
// Params 2, eflags: 0x0
// Checksum 0x65c66481, Offset: 0x328
// Size: 0x4c
function function_58a135d3(player, var_d390c80e) {
    self set_y(player, int(var_d390c80e / 15));
}

// Namespace luielemimage/luielemimage
// Params 3, eflags: 0x0
// Checksum 0xab5e2967, Offset: 0x380
// Size: 0x4c
function function_f97e9049(player, var_c6572d9b, var_d390c80e) {
    self function_e5898fd7(player, var_c6572d9b);
    self function_58a135d3(player, var_d390c80e);
}

// Namespace luielemimage/luielemimage
// Params 3, eflags: 0x0
// Checksum 0xf296f452, Offset: 0x3d8
// Size: 0x8c
function function_35f52fe9(player, width, height) {
    self set_width(player, int(width / 4));
    self set_height(player, int(height / 4));
}

// Namespace luielemimage/luielemimage
// Params 0, eflags: 0x0
// Checksum 0x73dec662, Offset: 0x470
// Size: 0x34
function register() {
    elem = new cluielemimage();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace luielemimage/luielemimage
// Params 2, eflags: 0x0
// Checksum 0x7c75a94c, Offset: 0x4b0
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace luielemimage/luielemimage
// Params 1, eflags: 0x0
// Checksum 0xccc449ae, Offset: 0x4f0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace luielemimage/luielemimage
// Params 1, eflags: 0x0
// Checksum 0x26d82178, Offset: 0x518
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace luielemimage/luielemimage
// Params 2, eflags: 0x0
// Checksum 0xd3842c5d, Offset: 0x540
// Size: 0x28
function set_x(player, value) {
    [[ self ]]->set_x(player, value);
}

// Namespace luielemimage/luielemimage
// Params 2, eflags: 0x0
// Checksum 0x2001dd15, Offset: 0x570
// Size: 0x28
function set_y(player, value) {
    [[ self ]]->set_y(player, value);
}

// Namespace luielemimage/luielemimage
// Params 2, eflags: 0x0
// Checksum 0x2ed28c09, Offset: 0x5a0
// Size: 0x28
function set_width(player, value) {
    [[ self ]]->set_width(player, value);
}

// Namespace luielemimage/luielemimage
// Params 2, eflags: 0x0
// Checksum 0x11ddfdf5, Offset: 0x5d0
// Size: 0x28
function set_height(player, value) {
    [[ self ]]->set_height(player, value);
}

// Namespace luielemimage/luielemimage
// Params 2, eflags: 0x0
// Checksum 0xfb25f7e5, Offset: 0x600
// Size: 0x28
function set_fadeovertime(player, value) {
    [[ self ]]->set_fadeovertime(player, value);
}

// Namespace luielemimage/luielemimage
// Params 2, eflags: 0x0
// Checksum 0x13d43460, Offset: 0x630
// Size: 0x28
function set_alpha(player, value) {
    [[ self ]]->set_alpha(player, value);
}

// Namespace luielemimage/luielemimage
// Params 2, eflags: 0x0
// Checksum 0xcd6839a1, Offset: 0x660
// Size: 0x28
function set_red(player, value) {
    [[ self ]]->set_red(player, value);
}

// Namespace luielemimage/luielemimage
// Params 2, eflags: 0x0
// Checksum 0x7e853fe7, Offset: 0x690
// Size: 0x28
function set_green(player, value) {
    [[ self ]]->set_green(player, value);
}

// Namespace luielemimage/luielemimage
// Params 2, eflags: 0x0
// Checksum 0x504ce79, Offset: 0x6c0
// Size: 0x28
function set_blue(player, value) {
    [[ self ]]->set_blue(player, value);
}

// Namespace luielemimage/luielemimage
// Params 2, eflags: 0x0
// Checksum 0x21955541, Offset: 0x6f0
// Size: 0x28
function set_material(player, value) {
    [[ self ]]->set_material(player, value);
}

