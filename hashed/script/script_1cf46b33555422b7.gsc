// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace luielemtext;

// Namespace luielemtext
// Method(s) 15 Total 22
class cluielemtext : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace cluielemtext/luielemtext
    // Params 2, eflags: 0x0
    // Checksum 0x55d7e3f7, Offset: 0x878
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cluielemtext/luielemtext
    // Params 2, eflags: 0x0
    // Checksum 0x38df4cb1, Offset: 0xbc0
    // Size: 0x44
    function set_horizontal_alignment(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "horizontal_alignment", value);
    }

    // Namespace cluielemtext/luielemtext
    // Params 2, eflags: 0x0
    // Checksum 0x343668d8, Offset: 0xad0
    // Size: 0x44
    function set_green(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "green", value);
    }

    // Namespace cluielemtext/luielemtext
    // Params 2, eflags: 0x0
    // Checksum 0x4ff245be, Offset: 0x9e0
    // Size: 0x44
    function set_fadeovertime(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "fadeOverTime", value);
    }

    // Namespace cluielemtext/luielemtext
    // Params 1, eflags: 0x0
    // Checksum 0xe80149c3, Offset: 0x8c0
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cluielemtext/luielemtext
    // Params 2, eflags: 0x0
    // Checksum 0xfea80f6f, Offset: 0x990
    // Size: 0x44
    function set_height(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "height", value);
    }

    // Namespace cluielemtext/luielemtext
    // Params 2, eflags: 0x0
    // Checksum 0x9fc3fb18, Offset: 0xb20
    // Size: 0x44
    function set_blue(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "blue", value);
    }

    // Namespace cluielemtext/luielemtext
    // Params 0, eflags: 0x0
    // Checksum 0x20e99400, Offset: 0x6c0
    // Size: 0x1ac
    function setup_clientfields() {
        cluielem::setup_clientfields("LUIelemText");
        cluielem::add_clientfield("x", 1, 7, "int");
        cluielem::add_clientfield("y", 1, 6, "int");
        cluielem::add_clientfield("height", 1, 2, "int");
        cluielem::add_clientfield("fadeOverTime", 1, 5, "int");
        cluielem::add_clientfield("alpha", 1, 4, "float");
        cluielem::add_clientfield("red", 1, 4, "float");
        cluielem::add_clientfield("green", 1, 4, "float");
        cluielem::add_clientfield("blue", 1, 4, "float");
        cluielem::function_dcb34c80("string", "text", 1);
        cluielem::add_clientfield("horizontal_alignment", 1, 2, "int");
    }

    // Namespace cluielemtext/luielemtext
    // Params 2, eflags: 0x0
    // Checksum 0xebe0ec97, Offset: 0x940
    // Size: 0x44
    function set_y(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "y", value);
    }

    // Namespace cluielemtext/luielemtext
    // Params 2, eflags: 0x0
    // Checksum 0xea1734fb, Offset: 0xa30
    // Size: 0x44
    function set_alpha(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "alpha", value);
    }

    // Namespace cluielemtext/luielemtext
    // Params 2, eflags: 0x0
    // Checksum 0x219173db, Offset: 0x8f0
    // Size: 0x44
    function set_x(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "x", value);
    }

    // Namespace cluielemtext/luielemtext
    // Params 2, eflags: 0x0
    // Checksum 0x98db450e, Offset: 0xb70
    // Size: 0x44
    function set_text(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "text", value);
    }

    // Namespace cluielemtext/luielemtext
    // Params 2, eflags: 0x0
    // Checksum 0x563f342f, Offset: 0xa80
    // Size: 0x44
    function set_red(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "red", value);
    }

}

// Namespace luielemtext/luielemtext
// Params 4, eflags: 0x0
// Checksum 0xf7b6c1a1, Offset: 0x150
// Size: 0x6c
function set_color(player, red, green, blue) {
    self set_red(player, red);
    self set_green(player, green);
    self set_blue(player, blue);
}

// Namespace luielemtext/luielemtext
// Params 3, eflags: 0x0
// Checksum 0xbbc125ab, Offset: 0x1c8
// Size: 0x7c
function fade(player, var_1a92607f, duration = 0) {
    self set_alpha(player, var_1a92607f);
    self set_fadeovertime(player, int(duration * 10));
}

// Namespace luielemtext/luielemtext
// Params 2, eflags: 0x0
// Checksum 0xd3a9082, Offset: 0x250
// Size: 0x44
function show(player, duration = 0) {
    self fade(player, 1, duration);
}

// Namespace luielemtext/luielemtext
// Params 2, eflags: 0x0
// Checksum 0x62407fb7, Offset: 0x2a0
// Size: 0x3c
function hide(player, duration = 0) {
    self fade(player, 0, duration);
}

// Namespace luielemtext/luielemtext
// Params 2, eflags: 0x0
// Checksum 0xca434655, Offset: 0x2e8
// Size: 0x4c
function function_e5898fd7(player, var_c6572d9b) {
    self set_x(player, int(var_c6572d9b / 15));
}

// Namespace luielemtext/luielemtext
// Params 2, eflags: 0x0
// Checksum 0x9e9605be, Offset: 0x340
// Size: 0x4c
function function_58a135d3(player, var_d390c80e) {
    self set_y(player, int(var_d390c80e / 15));
}

// Namespace luielemtext/luielemtext
// Params 3, eflags: 0x0
// Checksum 0x45a9429f, Offset: 0x398
// Size: 0x4c
function function_f97e9049(player, var_c6572d9b, var_d390c80e) {
    self function_e5898fd7(player, var_c6572d9b);
    self function_58a135d3(player, var_d390c80e);
}

// Namespace luielemtext/luielemtext
// Params 0, eflags: 0x0
// Checksum 0xf05cab55, Offset: 0x3f0
// Size: 0x34
function register() {
    elem = new cluielemtext();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace luielemtext/luielemtext
// Params 2, eflags: 0x0
// Checksum 0xf9b0076d, Offset: 0x430
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace luielemtext/luielemtext
// Params 1, eflags: 0x0
// Checksum 0x40863a4f, Offset: 0x470
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace luielemtext/luielemtext
// Params 1, eflags: 0x0
// Checksum 0xa26cd720, Offset: 0x498
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace luielemtext/luielemtext
// Params 2, eflags: 0x0
// Checksum 0x88d53dfe, Offset: 0x4c0
// Size: 0x28
function set_x(player, value) {
    [[ self ]]->set_x(player, value);
}

// Namespace luielemtext/luielemtext
// Params 2, eflags: 0x0
// Checksum 0xe775ae74, Offset: 0x4f0
// Size: 0x28
function set_y(player, value) {
    [[ self ]]->set_y(player, value);
}

// Namespace luielemtext/luielemtext
// Params 2, eflags: 0x0
// Checksum 0x1e48d99f, Offset: 0x520
// Size: 0x28
function set_height(player, value) {
    [[ self ]]->set_height(player, value);
}

// Namespace luielemtext/luielemtext
// Params 2, eflags: 0x0
// Checksum 0xad0beeba, Offset: 0x550
// Size: 0x28
function set_fadeovertime(player, value) {
    [[ self ]]->set_fadeovertime(player, value);
}

// Namespace luielemtext/luielemtext
// Params 2, eflags: 0x0
// Checksum 0xfca8968, Offset: 0x580
// Size: 0x28
function set_alpha(player, value) {
    [[ self ]]->set_alpha(player, value);
}

// Namespace luielemtext/luielemtext
// Params 2, eflags: 0x0
// Checksum 0x4d2ec9b3, Offset: 0x5b0
// Size: 0x28
function set_red(player, value) {
    [[ self ]]->set_red(player, value);
}

// Namespace luielemtext/luielemtext
// Params 2, eflags: 0x0
// Checksum 0x58e2953c, Offset: 0x5e0
// Size: 0x28
function set_green(player, value) {
    [[ self ]]->set_green(player, value);
}

// Namespace luielemtext/luielemtext
// Params 2, eflags: 0x0
// Checksum 0x511cc388, Offset: 0x610
// Size: 0x28
function set_blue(player, value) {
    [[ self ]]->set_blue(player, value);
}

// Namespace luielemtext/luielemtext
// Params 2, eflags: 0x0
// Checksum 0xf29e4e90, Offset: 0x640
// Size: 0x28
function set_text(player, value) {
    [[ self ]]->set_text(player, value);
}

// Namespace luielemtext/luielemtext
// Params 2, eflags: 0x0
// Checksum 0x812f32a7, Offset: 0x670
// Size: 0x28
function set_horizontal_alignment(player, value) {
    [[ self ]]->set_horizontal_alignment(player, value);
}

