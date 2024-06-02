// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace doa_textelement;

// Namespace doa_textelement
// Method(s) 19 Total 26
class class_df106b1 : cluielem {

    // Namespace namespace_df106b1/doa_textelement
    // Params 1, eflags: 0x0
    // Checksum 0x39e4ef96, Offset: 0xe28
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 2, eflags: 0x0
    // Checksum 0x245c6ec6, Offset: 0x10c0
    // Size: 0x30
    function function_1a98dac6(localclientnum, value) {
        set_data(localclientnum, "textpayload", value);
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 2, eflags: 0x0
    // Checksum 0xc5d31e39, Offset: 0x1050
    // Size: 0x30
    function set_horizontal_alignment(localclientnum, value) {
        set_data(localclientnum, "horizontal_alignment", value);
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 2, eflags: 0x0
    // Checksum 0xc5f628a9, Offset: 0xfa8
    // Size: 0x30
    function set_green(localclientnum, value) {
        set_data(localclientnum, "green", value);
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 2, eflags: 0x0
    // Checksum 0x21f7ac51, Offset: 0xf00
    // Size: 0x30
    function set_fadeovertime(localclientnum, value) {
        set_data(localclientnum, "fadeOverTime", value);
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 0, eflags: 0x0
    // Checksum 0x522b0df0, Offset: 0xc28
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("DOA_TextElement");
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 2, eflags: 0x0
    // Checksum 0x70bf5e2a, Offset: 0xec8
    // Size: 0x30
    function set_height(localclientnum, value) {
        set_data(localclientnum, "height", value);
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 2, eflags: 0x0
    // Checksum 0x19e2af80, Offset: 0xfe0
    // Size: 0x30
    function set_blue(localclientnum, value) {
        set_data(localclientnum, "blue", value);
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 13, eflags: 0x0
    // Checksum 0xb7169364, Offset: 0x990
    // Size: 0x28c
    function setup_clientfields(xcallback, ycallback, heightcallback, fadeovertimecallback, alphacallback, redcallback, greencallback, bluecallback, *textcallback, horizontal_alignmentcallback, var_9194fd72, *var_3d17213, var_766e2bbb) {
        cluielem::setup_clientfields("DOA_TextElement");
        cluielem::add_clientfield("x", 1, 7, "int", heightcallback);
        cluielem::add_clientfield("y", 1, 6, "int", fadeovertimecallback);
        cluielem::add_clientfield("height", 1, 2, "int", alphacallback);
        cluielem::add_clientfield("fadeOverTime", 1, 5, "int", redcallback);
        cluielem::add_clientfield("alpha", 1, 4, "float", greencallback);
        cluielem::add_clientfield("red", 1, 4, "float", bluecallback);
        cluielem::add_clientfield("green", 1, 4, "float", textcallback);
        cluielem::add_clientfield("blue", 1, 4, "float", horizontal_alignmentcallback);
        cluielem::function_dcb34c80("string", "text", 1);
        cluielem::add_clientfield("horizontal_alignment", 1, 2, "int", var_9194fd72);
        cluielem::add_clientfield("intpayload", 1, 32, "int", var_3d17213);
        cluielem::function_dcb34c80("string", "textpayload", 1);
        cluielem::add_clientfield("scale", 1, 5, "float", var_766e2bbb);
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 2, eflags: 0x0
    // Checksum 0xa4b8cb92, Offset: 0xe90
    // Size: 0x30
    function set_y(localclientnum, value) {
        set_data(localclientnum, "y", value);
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 2, eflags: 0x0
    // Checksum 0x3840030d, Offset: 0x1088
    // Size: 0x30
    function function_9e089af4(localclientnum, value) {
        set_data(localclientnum, "intpayload", value);
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 2, eflags: 0x0
    // Checksum 0xe2bf531a, Offset: 0xf38
    // Size: 0x30
    function set_alpha(localclientnum, value) {
        set_data(localclientnum, "alpha", value);
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 2, eflags: 0x0
    // Checksum 0xb8a88d12, Offset: 0x10f8
    // Size: 0x30
    function set_scale(localclientnum, value) {
        set_data(localclientnum, "scale", value);
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 2, eflags: 0x0
    // Checksum 0x673e00c5, Offset: 0xe58
    // Size: 0x30
    function set_x(localclientnum, value) {
        set_data(localclientnum, "x", value);
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 2, eflags: 0x0
    // Checksum 0x6bee85a7, Offset: 0x1018
    // Size: 0x30
    function set_text(localclientnum, value) {
        set_data(localclientnum, "text", value);
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 2, eflags: 0x0
    // Checksum 0xb5951329, Offset: 0xf70
    // Size: 0x30
    function set_red(localclientnum, value) {
        set_data(localclientnum, "red", value);
    }

    // Namespace namespace_df106b1/doa_textelement
    // Params 1, eflags: 0x0
    // Checksum 0x7dab2bc, Offset: 0xc50
    // Size: 0x1d0
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "x", 0);
        set_data(localclientnum, "y", 0);
        set_data(localclientnum, "height", 0);
        set_data(localclientnum, "fadeOverTime", 0);
        set_data(localclientnum, "alpha", 0);
        set_data(localclientnum, "red", 0);
        set_data(localclientnum, "green", 0);
        set_data(localclientnum, "blue", 0);
        set_data(localclientnum, "text", #"");
        set_data(localclientnum, "horizontal_alignment", 0);
        set_data(localclientnum, "intpayload", 0);
        set_data(localclientnum, "textpayload", #"");
        set_data(localclientnum, "scale", 0);
    }

}

// Namespace doa_textelement/doa_textelement
// Params 4, eflags: 0x0
// Checksum 0xd72fed5, Offset: 0x170
// Size: 0x6c
function set_color(localclientnum, red, green, blue) {
    self set_red(localclientnum, red);
    self set_green(localclientnum, green);
    self set_blue(localclientnum, blue);
}

// Namespace doa_textelement/doa_textelement
// Params 3, eflags: 0x0
// Checksum 0x921da7f3, Offset: 0x1e8
// Size: 0x7c
function fade(localclientnum, var_1a92607f, duration = 0) {
    self set_alpha(localclientnum, var_1a92607f);
    self set_fadeovertime(localclientnum, int(duration * 10));
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0x17b79958, Offset: 0x270
// Size: 0x44
function show(localclientnum, duration = 0) {
    self fade(localclientnum, 1, duration);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0xf9d8361d, Offset: 0x2c0
// Size: 0x3c
function hide(localclientnum, duration = 0) {
    self fade(localclientnum, 0, duration);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0xa1d7f8c3, Offset: 0x308
// Size: 0x4c
function function_e5898fd7(localclientnum, var_c6572d9b) {
    self set_x(localclientnum, int(var_c6572d9b / 15));
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0x9064c74e, Offset: 0x360
// Size: 0x4c
function function_58a135d3(localclientnum, var_d390c80e) {
    self set_y(localclientnum, int(var_d390c80e / 15));
}

// Namespace doa_textelement/doa_textelement
// Params 3, eflags: 0x0
// Checksum 0x3ca4839, Offset: 0x3b8
// Size: 0x4c
function function_f97e9049(localclientnum, var_c6572d9b, var_d390c80e) {
    self function_e5898fd7(localclientnum, var_c6572d9b);
    self function_58a135d3(localclientnum, var_d390c80e);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0x58ed4a03, Offset: 0x410
// Size: 0x34
function function_f50d5765(localclientnum, text) {
    if (isdefined(text)) {
        self set_text(localclientnum, text);
    }
}

// Namespace doa_textelement/doa_textelement
// Params 13, eflags: 0x0
// Checksum 0xa3084496, Offset: 0x450
// Size: 0x1ee
function register(xcallback, ycallback, heightcallback, fadeovertimecallback, alphacallback, redcallback, greencallback, bluecallback, textcallback, horizontal_alignmentcallback, var_9194fd72, var_3d17213, var_766e2bbb) {
    elem = new class_df106b1();
    [[ elem ]]->setup_clientfields(xcallback, ycallback, heightcallback, fadeovertimecallback, alphacallback, redcallback, greencallback, bluecallback, textcallback, horizontal_alignmentcallback, var_9194fd72, var_3d17213, var_766e2bbb);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"doa_textelement"])) {
        level.var_ae746e8f[#"doa_textelement"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"doa_textelement"])) {
        level.var_ae746e8f[#"doa_textelement"] = [];
    } else if (!isarray(level.var_ae746e8f[#"doa_textelement"])) {
        level.var_ae746e8f[#"doa_textelement"] = array(level.var_ae746e8f[#"doa_textelement"]);
    }
    level.var_ae746e8f[#"doa_textelement"][level.var_ae746e8f[#"doa_textelement"].size] = elem;
}

// Namespace doa_textelement/doa_textelement
// Params 0, eflags: 0x0
// Checksum 0x73fcf369, Offset: 0x648
// Size: 0x34
function register_clientside() {
    elem = new class_df106b1();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace doa_textelement/doa_textelement
// Params 1, eflags: 0x0
// Checksum 0x15de5e06, Offset: 0x688
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace doa_textelement/doa_textelement
// Params 1, eflags: 0x0
// Checksum 0x5717cf9a, Offset: 0x6b0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace doa_textelement/doa_textelement
// Params 1, eflags: 0x0
// Checksum 0xca10754f, Offset: 0x6d8
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0xf65674f, Offset: 0x700
// Size: 0x28
function set_x(localclientnum, value) {
    [[ self ]]->set_x(localclientnum, value);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0xfe27ef6a, Offset: 0x730
// Size: 0x28
function set_y(localclientnum, value) {
    [[ self ]]->set_y(localclientnum, value);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0x3a03e7e5, Offset: 0x760
// Size: 0x28
function set_height(localclientnum, value) {
    [[ self ]]->set_height(localclientnum, value);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0x83d1381b, Offset: 0x790
// Size: 0x28
function set_fadeovertime(localclientnum, value) {
    [[ self ]]->set_fadeovertime(localclientnum, value);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0xaa84c6b9, Offset: 0x7c0
// Size: 0x28
function set_alpha(localclientnum, value) {
    [[ self ]]->set_alpha(localclientnum, value);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0x37169273, Offset: 0x7f0
// Size: 0x28
function set_red(localclientnum, value) {
    [[ self ]]->set_red(localclientnum, value);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0x42e92527, Offset: 0x820
// Size: 0x28
function set_green(localclientnum, value) {
    [[ self ]]->set_green(localclientnum, value);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0x96db6e37, Offset: 0x850
// Size: 0x28
function set_blue(localclientnum, value) {
    [[ self ]]->set_blue(localclientnum, value);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0x881a059b, Offset: 0x880
// Size: 0x28
function set_text(localclientnum, value) {
    [[ self ]]->set_text(localclientnum, value);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0xb4e9ed61, Offset: 0x8b0
// Size: 0x28
function set_horizontal_alignment(localclientnum, value) {
    [[ self ]]->set_horizontal_alignment(localclientnum, value);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0xa3c6f438, Offset: 0x8e0
// Size: 0x28
function function_9e089af4(localclientnum, value) {
    [[ self ]]->function_9e089af4(localclientnum, value);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0x9734ecd6, Offset: 0x910
// Size: 0x28
function function_1a98dac6(localclientnum, value) {
    [[ self ]]->function_1a98dac6(localclientnum, value);
}

// Namespace doa_textelement/doa_textelement
// Params 2, eflags: 0x0
// Checksum 0xac3dff3e, Offset: 0x940
// Size: 0x28
function set_scale(localclientnum, value) {
    [[ self ]]->set_scale(localclientnum, value);
}

