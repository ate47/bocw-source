// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;

#namespace luielembar;

// Namespace luielembar
// Method(s) 15 Total 22
class cluielembar : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace cluielembar/luielembar
    // Params 2, eflags: 0x0
    // Checksum 0xe582a322, Offset: 0x6f8
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cluielembar/luielembar
    // Params 2, eflags: 0x0
    // Checksum 0xadc14e25, Offset: 0xa18
    // Size: 0x6c
    function set_green(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 8, int(value * (16 - 1)), 0);
    }

    // Namespace cluielembar/luielembar
    // Params 2, eflags: 0x0
    // Checksum 0x80f446c3, Offset: 0x8d0
    // Size: 0x4c
    function set_fadeovertime(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 5, value, 0);
    }

    // Namespace cluielembar/luielembar
    // Params 1, eflags: 0x0
    // Checksum 0xf88c2dfe, Offset: 0x740
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cluielembar/luielembar
    // Params 2, eflags: 0x0
    // Checksum 0x6093b6c7, Offset: 0x878
    // Size: 0x4c
    function set_height(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 4, value, 0);
    }

    // Namespace cluielembar/luielembar
    // Params 2, eflags: 0x0
    // Checksum 0xad0cad77, Offset: 0xa90
    // Size: 0x6c
    function set_blue(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 9, int(value * (16 - 1)), 0);
    }

    // Namespace cluielembar/luielembar
    // Params 2, eflags: 0x0
    // Checksum 0x16509506, Offset: 0x820
    // Size: 0x4c
    function set_width(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 3, value, 0);
    }

    // Namespace cluielembar/luielembar
    // Params 0, eflags: 0x0
    // Checksum 0xb7af7524, Offset: 0x6d0
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("LUIelemBar");
    }

    // Namespace cluielembar/luielembar
    // Params 2, eflags: 0x0
    // Checksum 0x7eeba1c3, Offset: 0x7c8
    // Size: 0x4c
    function set_y(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 2, value, 0);
    }

    // Namespace cluielembar/luielembar
    // Params 2, eflags: 0x0
    // Checksum 0x1a5ec481, Offset: 0x928
    // Size: 0x6c
    function set_alpha(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 6, int(value * (16 - 1)), 0);
    }

    // Namespace cluielembar/luielembar
    // Params 2, eflags: 0x0
    // Checksum 0xf5f538ab, Offset: 0x770
    // Size: 0x4c
    function set_x(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 1, value, 0);
    }

    // Namespace cluielembar/luielembar
    // Params 2, eflags: 0x0
    // Checksum 0x6feedf98, Offset: 0x9a0
    // Size: 0x6c
    function set_red(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 7, int(value * (16 - 1)), 0);
    }

    // Namespace cluielembar/luielembar
    // Params 2, eflags: 0x0
    // Checksum 0x54b97954, Offset: 0xb08
    // Size: 0x6c
    function set_bar_percent(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 10, int(value * (128 - 1)), 0);
    }

}

// Namespace luielembar/luielembar
// Params 4, eflags: 0x0
// Checksum 0xf7b6c1a1, Offset: 0xc8
// Size: 0x6c
function set_color(player, red, green, blue) {
    self set_red(player, red);
    self set_green(player, green);
    self set_blue(player, blue);
}

// Namespace luielembar/luielembar
// Params 3, eflags: 0x0
// Checksum 0xbbc125ab, Offset: 0x140
// Size: 0x7c
function fade(player, var_1a92607f, duration = 0) {
    self set_alpha(player, var_1a92607f);
    self set_fadeovertime(player, int(duration * 10));
}

// Namespace luielembar/luielembar
// Params 2, eflags: 0x0
// Checksum 0xd3a9082, Offset: 0x1c8
// Size: 0x44
function show(player, duration = 0) {
    self fade(player, 1, duration);
}

// Namespace luielembar/luielembar
// Params 2, eflags: 0x0
// Checksum 0x62407fb7, Offset: 0x218
// Size: 0x3c
function hide(player, duration = 0) {
    self fade(player, 0, duration);
}

// Namespace luielembar/luielembar
// Params 2, eflags: 0x0
// Checksum 0xca434655, Offset: 0x260
// Size: 0x4c
function function_e5898fd7(player, var_c6572d9b) {
    self set_x(player, int(var_c6572d9b / 15));
}

// Namespace luielembar/luielembar
// Params 2, eflags: 0x0
// Checksum 0x9e9605be, Offset: 0x2b8
// Size: 0x4c
function function_58a135d3(player, var_d390c80e) {
    self set_y(player, int(var_d390c80e / 15));
}

// Namespace luielembar/luielembar
// Params 3, eflags: 0x0
// Checksum 0x45a9429f, Offset: 0x310
// Size: 0x4c
function function_f97e9049(player, var_c6572d9b, var_d390c80e) {
    self function_e5898fd7(player, var_c6572d9b);
    self function_58a135d3(player, var_d390c80e);
}

// Namespace luielembar/luielembar
// Params 3, eflags: 0x0
// Checksum 0x9e44ad44, Offset: 0x368
// Size: 0x8c
function function_35f52fe9(player, width, height) {
    self set_width(player, int(width / 4));
    self set_height(player, int(height / 4));
}

// Namespace luielembar/luielembar
// Params 0, eflags: 0x0
// Checksum 0xbaf60a18, Offset: 0x400
// Size: 0x34
function register() {
    elem = new cluielembar();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace luielembar/luielembar
// Params 2, eflags: 0x0
// Checksum 0xf413922d, Offset: 0x440
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace luielembar/luielembar
// Params 1, eflags: 0x0
// Checksum 0xb33dd40d, Offset: 0x480
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace luielembar/luielembar
// Params 1, eflags: 0x0
// Checksum 0x4194485c, Offset: 0x4a8
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace luielembar/luielembar
// Params 2, eflags: 0x0
// Checksum 0xc039cd56, Offset: 0x4d0
// Size: 0x28
function set_x(player, value) {
    [[ self ]]->set_x(player, value);
}

// Namespace luielembar/luielembar
// Params 2, eflags: 0x0
// Checksum 0x865656d7, Offset: 0x500
// Size: 0x28
function set_y(player, value) {
    [[ self ]]->set_y(player, value);
}

// Namespace luielembar/luielembar
// Params 2, eflags: 0x0
// Checksum 0xfa7ab9a8, Offset: 0x530
// Size: 0x28
function set_width(player, value) {
    [[ self ]]->set_width(player, value);
}

// Namespace luielembar/luielembar
// Params 2, eflags: 0x0
// Checksum 0xd7c27507, Offset: 0x560
// Size: 0x28
function set_height(player, value) {
    [[ self ]]->set_height(player, value);
}

// Namespace luielembar/luielembar
// Params 2, eflags: 0x0
// Checksum 0x56418d59, Offset: 0x590
// Size: 0x28
function set_fadeovertime(player, value) {
    [[ self ]]->set_fadeovertime(player, value);
}

// Namespace luielembar/luielembar
// Params 2, eflags: 0x0
// Checksum 0xf23c770d, Offset: 0x5c0
// Size: 0x28
function set_alpha(player, value) {
    [[ self ]]->set_alpha(player, value);
}

// Namespace luielembar/luielembar
// Params 2, eflags: 0x0
// Checksum 0xe51aed42, Offset: 0x5f0
// Size: 0x28
function set_red(player, value) {
    [[ self ]]->set_red(player, value);
}

// Namespace luielembar/luielembar
// Params 2, eflags: 0x0
// Checksum 0x4e70a0f9, Offset: 0x620
// Size: 0x28
function set_green(player, value) {
    [[ self ]]->set_green(player, value);
}

// Namespace luielembar/luielembar
// Params 2, eflags: 0x0
// Checksum 0x263c1476, Offset: 0x650
// Size: 0x28
function set_blue(player, value) {
    [[ self ]]->set_blue(player, value);
}

// Namespace luielembar/luielembar
// Params 2, eflags: 0x0
// Checksum 0x30c3bb02, Offset: 0x680
// Size: 0x28
function set_bar_percent(player, value) {
    [[ self ]]->set_bar_percent(player, value);
}

