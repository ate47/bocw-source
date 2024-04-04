// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace doa_textelement;

// Namespace doa_textelement
// Method(s) 18 Total 25
class class_df106b1 : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace namespace_df106b1/doa_textelement
    // Params 2, eflags: 0x0
    // Checksum 0xc763a25d, Offset: 0x9a8
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 2, eflags: 0x0
    // Checksum 0xfc2ca79b, Offset: 0xd90
    // Size: 0x44
    function function_1a98dac6(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "textpayload", value);
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 2, eflags: 0x0
    // Checksum 0xe92f88d3, Offset: 0xcf0
    // Size: 0x44
    function set_horizontal_alignment(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "horizontal_alignment", value);
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 2, eflags: 0x0
    // Checksum 0xf1f13967, Offset: 0xc00
    // Size: 0x44
    function set_green(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "green", value);
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 2, eflags: 0x0
    // Checksum 0x70e4b1f2, Offset: 0xb10
    // Size: 0x44
    function set_fadeovertime(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "fadeOverTime", value);
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 1, eflags: 0x0
    // Checksum 0x734747ff, Offset: 0x9f0
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 2, eflags: 0x0
    // Checksum 0x3f535e55, Offset: 0xac0
    // Size: 0x44
    function set_height(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "height", value);
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 2, eflags: 0x0
    // Checksum 0x36cd8910, Offset: 0xc50
    // Size: 0x44
    function set_blue(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "blue", value);
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 0, eflags: 0x0
    // Checksum 0x73e8792c, Offset: 0x778
    // Size: 0x224
    function setup_clientfields() {
        cluielem::setup_clientfields("DOA_TextElement");
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
        cluielem::add_clientfield("intpayload", 1, 32, "int");
        cluielem::function_dcb34c80("string", "textpayload", 1);
        cluielem::add_clientfield("scale", 1, 5, "float");
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 2, eflags: 0x0
    // Checksum 0xb576fea1, Offset: 0xa70
    // Size: 0x44
    function set_y(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "y", value);
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 2, eflags: 0x0
    // Checksum 0x83d001a8, Offset: 0xd40
    // Size: 0x44
    function function_9e089af4(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "intpayload", value);
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 2, eflags: 0x0
    // Checksum 0x46329d7e, Offset: 0xb60
    // Size: 0x44
    function set_alpha(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "alpha", value);
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 2, eflags: 0x0
    // Checksum 0x4b14e63f, Offset: 0xde0
    // Size: 0x44
    function set_scale(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "scale", value);
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 2, eflags: 0x0
    // Checksum 0xeb69ae3f, Offset: 0xa20
    // Size: 0x44
    function set_x(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "x", value);
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 2, eflags: 0x0
    // Checksum 0x850e74d7, Offset: 0xca0
    // Size: 0x44
    function set_text(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "text", value);
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 2, eflags: 0x0
    // Checksum 0xafb8c1b8, Offset: 0xbb0
    // Size: 0x44
    function set_red(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "red", value);
    }

}

// Namespace doa_textelement/doa_textelement
// Params 4, eflags: 0x0
// Checksum 0x9dfc1713, Offset: 0x178
// Size: 0x6c
function set_color(player, red, green, blue) {
    self set_red(player, red);
    self set_green(player, green);
    self set_blue(player, blue);
}

// Namespace doa_textelement/doa_textelement
// Params 3, eflags: 0x0
// Checksum 0x95414e81, Offset: 0x1f0
// Size: 0x7c
function fade(player, var_1a92607f, duration = 0) {
    self set_alpha(player, var_1a92607f);
    self set_fadeovertime(player, int(duration * 10));
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0x1108d3bf, Offset: 0x278
// Size: 0x44
function show(player, duration = 0) {
    self fade(player, 1, duration);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0xda640813, Offset: 0x2c8
// Size: 0x3c
function hide(player, duration = 0) {
    self fade(player, 0, duration);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0xac65aa8c, Offset: 0x310
// Size: 0x4c
function function_e5898fd7(player, var_c6572d9b) {
    self set_x(player, int(var_c6572d9b / 15));
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0x9dd69501, Offset: 0x368
// Size: 0x4c
function function_58a135d3(player, var_d390c80e) {
    self set_y(player, int(var_d390c80e / 15));
}

// Namespace doa_textelement/doa_textelement
// Params 3, eflags: 0x0
// Checksum 0xe781a76, Offset: 0x3c0
// Size: 0x4c
function function_f97e9049(player, var_c6572d9b, var_d390c80e) {
    self function_e5898fd7(player, var_c6572d9b);
    self function_58a135d3(player, var_d390c80e);
}

// Namespace doa_textelement/doa_textelement
// Params 0, eflags: 0x0
// Checksum 0xe0ac09dc, Offset: 0x418
// Size: 0x34
function register() {
    elem = new class_df106b1();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0x6d00d241, Offset: 0x458
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace doa_textelement/doa_textelement
// Params 1, eflags: 0x0
// Checksum 0x951256d4, Offset: 0x498
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace doa_textelement/doa_textelement
// Params 1, eflags: 0x0
// Checksum 0xaa43d4f0, Offset: 0x4c0
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0xcfb92fb2, Offset: 0x4e8
// Size: 0x28
function set_x(player, value) {
    [[ self ]]->set_x(player, value);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0x7c3be44d, Offset: 0x518
// Size: 0x28
function set_y(player, value) {
    [[ self ]]->set_y(player, value);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0xfb8f8737, Offset: 0x548
// Size: 0x28
function set_height(player, value) {
    [[ self ]]->set_height(player, value);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0xd7cdff1b, Offset: 0x578
// Size: 0x28
function set_fadeovertime(player, value) {
    [[ self ]]->set_fadeovertime(player, value);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0x178229f5, Offset: 0x5a8
// Size: 0x28
function set_alpha(player, value) {
    [[ self ]]->set_alpha(player, value);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0x4725d72a, Offset: 0x5d8
// Size: 0x28
function set_red(player, value) {
    [[ self ]]->set_red(player, value);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0xe91c026f, Offset: 0x608
// Size: 0x28
function set_green(player, value) {
    [[ self ]]->set_green(player, value);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0x96cd9f50, Offset: 0x638
// Size: 0x28
function set_blue(player, value) {
    [[ self ]]->set_blue(player, value);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0x321cc429, Offset: 0x668
// Size: 0x28
function set_text(player, value) {
    [[ self ]]->set_text(player, value);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0xf4f377c3, Offset: 0x698
// Size: 0x28
function set_horizontal_alignment(player, value) {
    [[ self ]]->set_horizontal_alignment(player, value);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0xcf0e0ef6, Offset: 0x6c8
// Size: 0x28
function function_9e089af4(player, value) {
    [[ self ]]->function_9e089af4(player, value);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0x5b6c2da0, Offset: 0x6f8
// Size: 0x28
function function_1a98dac6(player, value) {
    [[ self ]]->function_1a98dac6(player, value);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0x340ec536, Offset: 0x728
// Size: 0x28
function set_scale(player, value) {
    [[ self ]]->set_scale(player, value);
}

