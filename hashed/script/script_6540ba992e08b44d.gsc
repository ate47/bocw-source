// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace doa_bannerelement;

// Namespace doa_bannerelement
// Method(s) 16 Total 23
class class_1bec696c : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace namespace_1bec696c/doa_bannerelement
    // Params 2, eflags: 0x0
    // Checksum 0x7323b12f, Offset: 0x8e0
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_1bec696c/doa_bannerelement
    // Params 2, eflags: 0x0
    // Checksum 0x43eb9d60, Offset: 0xc28
    // Size: 0x44
    function set_horizontal_alignment(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "horizontal_alignment", value);
    }

    // Namespace namespace_1bec696c/doa_bannerelement
    // Params 2, eflags: 0x0
    // Checksum 0xa7026f86, Offset: 0xb38
    // Size: 0x44
    function set_green(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "green", value);
    }

    // Namespace namespace_1bec696c/doa_bannerelement
    // Params 2, eflags: 0x0
    // Checksum 0xf69c5f61, Offset: 0xa48
    // Size: 0x44
    function set_fadeovertime(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "fadeOverTime", value);
    }

    // Namespace namespace_1bec696c/doa_bannerelement
    // Params 1, eflags: 0x0
    // Checksum 0xef75091e, Offset: 0x928
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_1bec696c/doa_bannerelement
    // Params 2, eflags: 0x0
    // Checksum 0x6e929b53, Offset: 0x9f8
    // Size: 0x44
    function set_height(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "height", value);
    }

    // Namespace namespace_1bec696c/doa_bannerelement
    // Params 2, eflags: 0x0
    // Checksum 0xb4469ea0, Offset: 0xb88
    // Size: 0x44
    function set_blue(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "blue", value);
    }

    // Namespace namespace_1bec696c/doa_bannerelement
    // Params 0, eflags: 0x0
    // Checksum 0x6e6716d5, Offset: 0x700
    // Size: 0x1d4
    function setup_clientfields() {
        cluielem::setup_clientfields("DOA_BannerElement");
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
        cluielem::add_clientfield("scale", 1, 6, "float");
    }

    // Namespace namespace_1bec696c/doa_bannerelement
    // Params 2, eflags: 0x0
    // Checksum 0x4921e8a, Offset: 0x9a8
    // Size: 0x44
    function set_y(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "y", value);
    }

    // Namespace namespace_1bec696c/doa_bannerelement
    // Params 2, eflags: 0x0
    // Checksum 0xefaa3725, Offset: 0xa98
    // Size: 0x44
    function set_alpha(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "alpha", value);
    }

    // Namespace namespace_1bec696c/doa_bannerelement
    // Params 2, eflags: 0x0
    // Checksum 0x301ad6b, Offset: 0xc78
    // Size: 0x44
    function set_scale(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "scale", value);
    }

    // Namespace namespace_1bec696c/doa_bannerelement
    // Params 2, eflags: 0x0
    // Checksum 0x18b06992, Offset: 0x958
    // Size: 0x44
    function set_x(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "x", value);
    }

    // Namespace namespace_1bec696c/doa_bannerelement
    // Params 2, eflags: 0x0
    // Checksum 0xdb2005fc, Offset: 0xbd8
    // Size: 0x44
    function set_text(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "text", value);
    }

    // Namespace namespace_1bec696c/doa_bannerelement
    // Params 2, eflags: 0x0
    // Checksum 0x457e9091, Offset: 0xae8
    // Size: 0x44
    function set_red(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "red", value);
    }

}

// Namespace doa_bannerelement/doa_bannerelement
// Params 4, eflags: 0x0
// Checksum 0xecc51aeb, Offset: 0x160
// Size: 0x6c
function set_color(player, red, green, blue) {
    self set_red(player, red);
    self set_green(player, green);
    self set_blue(player, blue);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 3, eflags: 0x0
// Checksum 0x8302c190, Offset: 0x1d8
// Size: 0x7c
function fade(player, var_1a92607f, duration = 0) {
    self set_alpha(player, var_1a92607f);
    self set_fadeovertime(player, int(duration * 10));
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0xb922d49, Offset: 0x260
// Size: 0x44
function show(player, duration = 0) {
    self fade(player, 1, duration);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0xe772a5ab, Offset: 0x2b0
// Size: 0x3c
function hide(player, duration = 0) {
    self fade(player, 0, duration);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0x8044d490, Offset: 0x2f8
// Size: 0x4c
function function_e5898fd7(player, var_c6572d9b) {
    self set_x(player, int(var_c6572d9b / 15));
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0x5a13d619, Offset: 0x350
// Size: 0x4c
function function_58a135d3(player, var_d390c80e) {
    self set_y(player, int(var_d390c80e / 15));
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 3, eflags: 0x0
// Checksum 0x3b757b5e, Offset: 0x3a8
// Size: 0x4c
function function_f97e9049(player, var_c6572d9b, var_d390c80e) {
    self function_e5898fd7(player, var_c6572d9b);
    self function_58a135d3(player, var_d390c80e);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 0, eflags: 0x0
// Checksum 0xdd8cd50f, Offset: 0x400
// Size: 0x34
function register() {
    elem = new class_1bec696c();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0xc7788de0, Offset: 0x440
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 1, eflags: 0x0
// Checksum 0xd49a1100, Offset: 0x480
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 1, eflags: 0x0
// Checksum 0x5ed3d002, Offset: 0x4a8
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0xfd8a5747, Offset: 0x4d0
// Size: 0x28
function set_x(player, value) {
    [[ self ]]->set_x(player, value);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0x5db51f80, Offset: 0x500
// Size: 0x28
function set_y(player, value) {
    [[ self ]]->set_y(player, value);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0x30a9f368, Offset: 0x530
// Size: 0x28
function set_height(player, value) {
    [[ self ]]->set_height(player, value);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0x696419ec, Offset: 0x560
// Size: 0x28
function set_fadeovertime(player, value) {
    [[ self ]]->set_fadeovertime(player, value);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0x6e2fa64e, Offset: 0x590
// Size: 0x28
function set_alpha(player, value) {
    [[ self ]]->set_alpha(player, value);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0x40f406b5, Offset: 0x5c0
// Size: 0x28
function set_red(player, value) {
    [[ self ]]->set_red(player, value);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0x2b7bae59, Offset: 0x5f0
// Size: 0x28
function set_green(player, value) {
    [[ self ]]->set_green(player, value);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0x32de613d, Offset: 0x620
// Size: 0x28
function set_blue(player, value) {
    [[ self ]]->set_blue(player, value);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0x452dc4e8, Offset: 0x650
// Size: 0x28
function set_text(player, value) {
    [[ self ]]->set_text(player, value);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0xcf78465f, Offset: 0x680
// Size: 0x28
function set_horizontal_alignment(player, value) {
    [[ self ]]->set_horizontal_alignment(player, value);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0x172a3181, Offset: 0x6b0
// Size: 0x28
function set_scale(player, value) {
    [[ self ]]->set_scale(player, value);
}

