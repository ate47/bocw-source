// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace doa_bannerelement;

// Namespace doa_bannerelement
// Method(s) 17 Total 24
class class_1bec696c : cluielem {

    // Namespace namespace_1bec696c/doa_bannerelement
    // Params 1, eflags: 0x0
    // Checksum 0xc4b3847b, Offset: 0xcc0
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_1bec696c/doa_bannerelement
    // Params 2, eflags: 0x0
    // Checksum 0xf3e41105, Offset: 0xee8
    // Size: 0x30
    function set_horizontal_alignment(localclientnum, value) {
        set_data(localclientnum, "horizontal_alignment", value);
    }

    // Namespace namespace_1bec696c/doa_bannerelement
    // Params 2, eflags: 0x0
    // Checksum 0xaf8e6741, Offset: 0xe40
    // Size: 0x30
    function set_green(localclientnum, value) {
        set_data(localclientnum, "green", value);
    }

    // Namespace namespace_1bec696c/doa_bannerelement
    // Params 2, eflags: 0x0
    // Checksum 0xa1ace05e, Offset: 0xd98
    // Size: 0x30
    function set_fadeovertime(localclientnum, value) {
        set_data(localclientnum, "fadeOverTime", value);
    }

    // Namespace namespace_1bec696c/doa_bannerelement
    // Params 0, eflags: 0x0
    // Checksum 0x7e784550, Offset: 0xb00
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("DOA_BannerElement");
    }

    // Namespace namespace_1bec696c/doa_bannerelement
    // Params 2, eflags: 0x0
    // Checksum 0xbd29c85f, Offset: 0xd60
    // Size: 0x30
    function set_height(localclientnum, value) {
        set_data(localclientnum, "height", value);
    }

    // Namespace namespace_1bec696c/doa_bannerelement
    // Params 2, eflags: 0x0
    // Checksum 0xc5ddd315, Offset: 0xe78
    // Size: 0x30
    function set_blue(localclientnum, value) {
        set_data(localclientnum, "blue", value);
    }

    // Namespace namespace_1bec696c/doa_bannerelement
    // Params 11, eflags: 0x0
    // Checksum 0xa7fe1ed2, Offset: 0x8c8
    // Size: 0x22c
    function setup_clientfields(xcallback, ycallback, heightcallback, fadeovertimecallback, alphacallback, redcallback, greencallback, bluecallback, *textcallback, horizontal_alignmentcallback, var_766e2bbb) {
        cluielem::setup_clientfields("DOA_BannerElement");
        cluielem::add_clientfield("x", 1, 7, "int", ycallback);
        cluielem::add_clientfield("y", 1, 6, "int", heightcallback);
        cluielem::add_clientfield("height", 1, 2, "int", fadeovertimecallback);
        cluielem::add_clientfield("fadeOverTime", 1, 5, "int", alphacallback);
        cluielem::add_clientfield("alpha", 1, 4, "float", redcallback);
        cluielem::add_clientfield("red", 1, 4, "float", greencallback);
        cluielem::add_clientfield("green", 1, 4, "float", bluecallback);
        cluielem::add_clientfield("blue", 1, 4, "float", textcallback);
        cluielem::function_dcb34c80("string", "text", 1);
        cluielem::add_clientfield("horizontal_alignment", 1, 2, "int", horizontal_alignmentcallback);
        cluielem::add_clientfield("scale", 1, 6, "float", var_766e2bbb);
    }

    // Namespace namespace_1bec696c/doa_bannerelement
    // Params 2, eflags: 0x0
    // Checksum 0xb408ae44, Offset: 0xd28
    // Size: 0x30
    function set_y(localclientnum, value) {
        set_data(localclientnum, "y", value);
    }

    // Namespace namespace_1bec696c/doa_bannerelement
    // Params 2, eflags: 0x0
    // Checksum 0xffd5411a, Offset: 0xdd0
    // Size: 0x30
    function set_alpha(localclientnum, value) {
        set_data(localclientnum, "alpha", value);
    }

    // Namespace namespace_1bec696c/doa_bannerelement
    // Params 2, eflags: 0x0
    // Checksum 0xf5330a6, Offset: 0xf20
    // Size: 0x30
    function set_scale(localclientnum, value) {
        set_data(localclientnum, "scale", value);
    }

    // Namespace namespace_1bec696c/doa_bannerelement
    // Params 2, eflags: 0x0
    // Checksum 0xc686ef89, Offset: 0xcf0
    // Size: 0x30
    function set_x(localclientnum, value) {
        set_data(localclientnum, "x", value);
    }

    // Namespace namespace_1bec696c/doa_bannerelement
    // Params 2, eflags: 0x0
    // Checksum 0xd9030d66, Offset: 0xeb0
    // Size: 0x30
    function set_text(localclientnum, value) {
        set_data(localclientnum, "text", value);
    }

    // Namespace namespace_1bec696c/doa_bannerelement
    // Params 2, eflags: 0x0
    // Checksum 0xc9a0df10, Offset: 0xe08
    // Size: 0x30
    function set_red(localclientnum, value) {
        set_data(localclientnum, "red", value);
    }

    // Namespace namespace_1bec696c/doa_bannerelement
    // Params 1, eflags: 0x0
    // Checksum 0xdd213272, Offset: 0xb28
    // Size: 0x18c
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
        set_data(localclientnum, "scale", 0);
    }

}

// Namespace doa_bannerelement/doa_bannerelement
// Params 4, eflags: 0x0
// Checksum 0x7c4bf32d, Offset: 0x158
// Size: 0x6c
function set_color(localclientnum, red, green, blue) {
    self set_red(localclientnum, red);
    self set_green(localclientnum, green);
    self set_blue(localclientnum, blue);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 3, eflags: 0x0
// Checksum 0x845e28e2, Offset: 0x1d0
// Size: 0x7c
function fade(localclientnum, var_1a92607f, duration = 0) {
    self set_alpha(localclientnum, var_1a92607f);
    self set_fadeovertime(localclientnum, int(duration * 10));
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0xd2d67ae, Offset: 0x258
// Size: 0x44
function show(localclientnum, duration = 0) {
    self fade(localclientnum, 1, duration);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0xc4ce9ba5, Offset: 0x2a8
// Size: 0x3c
function hide(localclientnum, duration = 0) {
    self fade(localclientnum, 0, duration);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0x8df686df, Offset: 0x2f0
// Size: 0x4c
function function_e5898fd7(localclientnum, var_c6572d9b) {
    self set_x(localclientnum, int(var_c6572d9b / 15));
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0x57a18456, Offset: 0x348
// Size: 0x4c
function function_58a135d3(localclientnum, var_d390c80e) {
    self set_y(localclientnum, int(var_d390c80e / 15));
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 3, eflags: 0x0
// Checksum 0x36c72911, Offset: 0x3a0
// Size: 0x4c
function function_f97e9049(localclientnum, var_c6572d9b, var_d390c80e) {
    self function_e5898fd7(localclientnum, var_c6572d9b);
    self function_58a135d3(localclientnum, var_d390c80e);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 11, eflags: 0x0
// Checksum 0x2bceab7b, Offset: 0x3f8
// Size: 0x1de
function register(xcallback, ycallback, heightcallback, fadeovertimecallback, alphacallback, redcallback, greencallback, bluecallback, textcallback, horizontal_alignmentcallback, var_766e2bbb) {
    elem = new class_1bec696c();
    [[ elem ]]->setup_clientfields(xcallback, ycallback, heightcallback, fadeovertimecallback, alphacallback, redcallback, greencallback, bluecallback, textcallback, horizontal_alignmentcallback, var_766e2bbb);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"doa_bannerelement"])) {
        level.var_ae746e8f[#"doa_bannerelement"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"doa_bannerelement"])) {
        level.var_ae746e8f[#"doa_bannerelement"] = [];
    } else if (!isarray(level.var_ae746e8f[#"doa_bannerelement"])) {
        level.var_ae746e8f[#"doa_bannerelement"] = array(level.var_ae746e8f[#"doa_bannerelement"]);
    }
    level.var_ae746e8f[#"doa_bannerelement"][level.var_ae746e8f[#"doa_bannerelement"].size] = elem;
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 0, eflags: 0x0
// Checksum 0x16f3cd3b, Offset: 0x5e0
// Size: 0x34
function register_clientside() {
    elem = new class_1bec696c();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 1, eflags: 0x0
// Checksum 0x560d6933, Offset: 0x620
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 1, eflags: 0x0
// Checksum 0xf84431b4, Offset: 0x648
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 1, eflags: 0x0
// Checksum 0xb4b6bce2, Offset: 0x670
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0xc95f6ba8, Offset: 0x698
// Size: 0x28
function set_x(localclientnum, value) {
    [[ self ]]->set_x(localclientnum, value);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0xdb7a72fb, Offset: 0x6c8
// Size: 0x28
function set_y(localclientnum, value) {
    [[ self ]]->set_y(localclientnum, value);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0xd235511e, Offset: 0x6f8
// Size: 0x28
function set_height(localclientnum, value) {
    [[ self ]]->set_height(localclientnum, value);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0xec9dfb92, Offset: 0x728
// Size: 0x28
function set_fadeovertime(localclientnum, value) {
    [[ self ]]->set_fadeovertime(localclientnum, value);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0x1c14a7bd, Offset: 0x758
// Size: 0x28
function set_alpha(localclientnum, value) {
    [[ self ]]->set_alpha(localclientnum, value);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0x845e920, Offset: 0x788
// Size: 0x28
function set_red(localclientnum, value) {
    [[ self ]]->set_red(localclientnum, value);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0x56265add, Offset: 0x7b8
// Size: 0x28
function set_green(localclientnum, value) {
    [[ self ]]->set_green(localclientnum, value);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0xe850fb34, Offset: 0x7e8
// Size: 0x28
function set_blue(localclientnum, value) {
    [[ self ]]->set_blue(localclientnum, value);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0xc8a5fc9b, Offset: 0x818
// Size: 0x28
function set_text(localclientnum, value) {
    [[ self ]]->set_text(localclientnum, value);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0x3b02f576, Offset: 0x848
// Size: 0x28
function set_horizontal_alignment(localclientnum, value) {
    [[ self ]]->set_horizontal_alignment(localclientnum, value);
}

// Namespace doa_bannerelement/doa_bannerelement
// Params 2, eflags: 0x0
// Checksum 0x7c8170ef, Offset: 0x878
// Size: 0x28
function set_scale(localclientnum, value) {
    [[ self ]]->set_scale(localclientnum, value);
}

