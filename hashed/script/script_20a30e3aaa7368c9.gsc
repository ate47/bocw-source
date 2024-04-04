// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace luielembar_ct;

// Namespace luielembar_ct
// Method(s) 15 Total 22
class cluielembar_ct : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace cluielembar_ct/luielembar_ct
    // Params 2, eflags: 0x0
    // Checksum 0x4bdeb4a5, Offset: 0x900
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cluielembar_ct/luielembar_ct
    // Params 2, eflags: 0x0
    // Checksum 0xd0537886, Offset: 0xba8
    // Size: 0x44
    function set_green(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "green", value);
    }

    // Namespace cluielembar_ct/luielembar_ct
    // Params 2, eflags: 0x0
    // Checksum 0x563e3f66, Offset: 0xab8
    // Size: 0x44
    function set_fadeovertime(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "fadeOverTime", value);
    }

    // Namespace cluielembar_ct/luielembar_ct
    // Params 1, eflags: 0x0
    // Checksum 0xc2ca3dd1, Offset: 0x948
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cluielembar_ct/luielembar_ct
    // Params 2, eflags: 0x0
    // Checksum 0xd2171675, Offset: 0xa68
    // Size: 0x44
    function set_height(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "height", value);
    }

    // Namespace cluielembar_ct/luielembar_ct
    // Params 2, eflags: 0x0
    // Checksum 0x4d754a1b, Offset: 0xbf8
    // Size: 0x44
    function set_blue(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "blue", value);
    }

    // Namespace cluielembar_ct/luielembar_ct
    // Params 2, eflags: 0x0
    // Checksum 0x2aaeb98d, Offset: 0xa18
    // Size: 0x44
    function set_width(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "width", value);
    }

    // Namespace cluielembar_ct/luielembar_ct
    // Params 0, eflags: 0x0
    // Checksum 0x308ccfd5, Offset: 0x748
    // Size: 0x1ac
    function setup_clientfields() {
        cluielem::setup_clientfields("LUIelemBar_ct");
        cluielem::add_clientfield("x", 1, 7, "int");
        cluielem::add_clientfield("y", 1, 6, "int");
        cluielem::add_clientfield("width", 1, 6, "int");
        cluielem::add_clientfield("height", 1, 6, "int");
        cluielem::add_clientfield("fadeOverTime", 1, 5, "int");
        cluielem::add_clientfield("alpha", 1, 4, "float");
        cluielem::add_clientfield("red", 1, 4, "float");
        cluielem::add_clientfield("green", 1, 4, "float");
        cluielem::add_clientfield("blue", 1, 4, "float");
        cluielem::add_clientfield("bar_percent", 1, 6, "float");
    }

    // Namespace cluielembar_ct/luielembar_ct
    // Params 2, eflags: 0x0
    // Checksum 0x1ea8b006, Offset: 0x9c8
    // Size: 0x44
    function set_y(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "y", value);
    }

    // Namespace cluielembar_ct/luielembar_ct
    // Params 2, eflags: 0x0
    // Checksum 0x1515213c, Offset: 0xb08
    // Size: 0x44
    function set_alpha(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "alpha", value);
    }

    // Namespace cluielembar_ct/luielembar_ct
    // Params 2, eflags: 0x0
    // Checksum 0x24cec559, Offset: 0x978
    // Size: 0x44
    function set_x(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "x", value);
    }

    // Namespace cluielembar_ct/luielembar_ct
    // Params 2, eflags: 0x0
    // Checksum 0x50e91b1f, Offset: 0xb58
    // Size: 0x44
    function set_red(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "red", value);
    }

    // Namespace cluielembar_ct/luielembar_ct
    // Params 2, eflags: 0x0
    // Checksum 0x89899b6a, Offset: 0xc48
    // Size: 0x44
    function set_bar_percent(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "bar_percent", value);
    }

}

// Namespace luielembar_ct/luielembar_ct
// Params 4, eflags: 0x0
// Checksum 0xf7b6c1a1, Offset: 0x140
// Size: 0x6c
function set_color(player, red, green, blue) {
    self set_red(player, red);
    self set_green(player, green);
    self set_blue(player, blue);
}

// Namespace luielembar_ct/luielembar_ct
// Params 3, eflags: 0x0
// Checksum 0xbbc125ab, Offset: 0x1b8
// Size: 0x7c
function fade(player, var_1a92607f, duration = 0) {
    self set_alpha(player, var_1a92607f);
    self set_fadeovertime(player, int(duration * 10));
}

// Namespace luielembar_ct/luielembar_ct
// Params 2, eflags: 0x0
// Checksum 0xd3a9082, Offset: 0x240
// Size: 0x44
function show(player, duration = 0) {
    self fade(player, 1, duration);
}

// Namespace luielembar_ct/luielembar_ct
// Params 2, eflags: 0x0
// Checksum 0x62407fb7, Offset: 0x290
// Size: 0x3c
function hide(player, duration = 0) {
    self fade(player, 0, duration);
}

// Namespace luielembar_ct/luielembar_ct
// Params 2, eflags: 0x0
// Checksum 0xca434655, Offset: 0x2d8
// Size: 0x4c
function function_e5898fd7(player, var_c6572d9b) {
    self set_x(player, int(var_c6572d9b / 15));
}

// Namespace luielembar_ct/luielembar_ct
// Params 2, eflags: 0x0
// Checksum 0x9e9605be, Offset: 0x330
// Size: 0x4c
function function_58a135d3(player, var_d390c80e) {
    self set_y(player, int(var_d390c80e / 15));
}

// Namespace luielembar_ct/luielembar_ct
// Params 3, eflags: 0x0
// Checksum 0x45a9429f, Offset: 0x388
// Size: 0x4c
function function_f97e9049(player, var_c6572d9b, var_d390c80e) {
    self function_e5898fd7(player, var_c6572d9b);
    self function_58a135d3(player, var_d390c80e);
}

// Namespace luielembar_ct/luielembar_ct
// Params 3, eflags: 0x0
// Checksum 0x9e44ad44, Offset: 0x3e0
// Size: 0x8c
function function_35f52fe9(player, width, height) {
    self set_width(player, int(width / 4));
    self set_height(player, int(height / 4));
}

// Namespace luielembar_ct/luielembar_ct
// Params 0, eflags: 0x0
// Checksum 0x2d2e9a0a, Offset: 0x478
// Size: 0x34
function register() {
    elem = new cluielembar_ct();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace luielembar_ct/luielembar_ct
// Params 2, eflags: 0x0
// Checksum 0xf413922d, Offset: 0x4b8
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace luielembar_ct/luielembar_ct
// Params 1, eflags: 0x0
// Checksum 0xb33dd40d, Offset: 0x4f8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace luielembar_ct/luielembar_ct
// Params 1, eflags: 0x0
// Checksum 0x4194485c, Offset: 0x520
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace luielembar_ct/luielembar_ct
// Params 2, eflags: 0x0
// Checksum 0xc039cd56, Offset: 0x548
// Size: 0x28
function set_x(player, value) {
    [[ self ]]->set_x(player, value);
}

// Namespace luielembar_ct/luielembar_ct
// Params 2, eflags: 0x0
// Checksum 0x865656d7, Offset: 0x578
// Size: 0x28
function set_y(player, value) {
    [[ self ]]->set_y(player, value);
}

// Namespace luielembar_ct/luielembar_ct
// Params 2, eflags: 0x0
// Checksum 0xfa7ab9a8, Offset: 0x5a8
// Size: 0x28
function set_width(player, value) {
    [[ self ]]->set_width(player, value);
}

// Namespace luielembar_ct/luielembar_ct
// Params 2, eflags: 0x0
// Checksum 0xd7c27507, Offset: 0x5d8
// Size: 0x28
function set_height(player, value) {
    [[ self ]]->set_height(player, value);
}

// Namespace luielembar_ct/luielembar_ct
// Params 2, eflags: 0x0
// Checksum 0x56418d59, Offset: 0x608
// Size: 0x28
function set_fadeovertime(player, value) {
    [[ self ]]->set_fadeovertime(player, value);
}

// Namespace luielembar_ct/luielembar_ct
// Params 2, eflags: 0x0
// Checksum 0xf23c770d, Offset: 0x638
// Size: 0x28
function set_alpha(player, value) {
    [[ self ]]->set_alpha(player, value);
}

// Namespace luielembar_ct/luielembar_ct
// Params 2, eflags: 0x0
// Checksum 0xe51aed42, Offset: 0x668
// Size: 0x28
function set_red(player, value) {
    [[ self ]]->set_red(player, value);
}

// Namespace luielembar_ct/luielembar_ct
// Params 2, eflags: 0x0
// Checksum 0x4e70a0f9, Offset: 0x698
// Size: 0x28
function set_green(player, value) {
    [[ self ]]->set_green(player, value);
}

// Namespace luielembar_ct/luielembar_ct
// Params 2, eflags: 0x0
// Checksum 0x263c1476, Offset: 0x6c8
// Size: 0x28
function set_blue(player, value) {
    [[ self ]]->set_blue(player, value);
}

// Namespace luielembar_ct/luielembar_ct
// Params 2, eflags: 0x0
// Checksum 0x30c3bb02, Offset: 0x6f8
// Size: 0x28
function set_bar_percent(player, value) {
    [[ self ]]->set_bar_percent(player, value);
}

