// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace luielemtext;

// Namespace luielemtext
// Method(s) 16 Total 23
class cluielemtext : cluielem {

    // Namespace cluielemtext/luielemtext
    // Params 1, eflags: 0x0
    // Checksum 0x64cf93d3, Offset: 0x978
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cluielemtext/luielemtext
    // Params 2, eflags: 0x0
    // Checksum 0xfc1471ec, Offset: 0xba0
    // Size: 0x30
    function set_horizontal_alignment(localclientnum, value) {
        set_data(localclientnum, "horizontal_alignment", value);
    }

    // Namespace cluielemtext/luielemtext
    // Params 2, eflags: 0x0
    // Checksum 0x9eae093b, Offset: 0xaf8
    // Size: 0x30
    function set_green(localclientnum, value) {
        set_data(localclientnum, "green", value);
    }

    // Namespace cluielemtext/luielemtext
    // Params 2, eflags: 0x0
    // Checksum 0x380800c4, Offset: 0xa50
    // Size: 0x30
    function set_fadeovertime(localclientnum, value) {
        set_data(localclientnum, "fadeOverTime", value);
    }

    // Namespace cluielemtext/luielemtext
    // Params 0, eflags: 0x0
    // Checksum 0x50aed88c, Offset: 0x7e0
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("LUIelemText");
    }

    // Namespace cluielemtext/luielemtext
    // Params 2, eflags: 0x0
    // Checksum 0xfcbe7350, Offset: 0xa18
    // Size: 0x30
    function set_height(localclientnum, value) {
        set_data(localclientnum, "height", value);
    }

    // Namespace cluielemtext/luielemtext
    // Params 2, eflags: 0x0
    // Checksum 0x4bb35cd, Offset: 0xb30
    // Size: 0x30
    function set_blue(localclientnum, value) {
        set_data(localclientnum, "blue", value);
    }

    // Namespace cluielemtext/luielemtext
    // Params 10, eflags: 0x0
    // Checksum 0xb23feb96, Offset: 0x5d8
    // Size: 0x1fc
    function setup_clientfields(xcallback, ycallback, heightcallback, fadeovertimecallback, alphacallback, redcallback, greencallback, bluecallback, *textcallback, horizontal_alignmentcallback) {
        cluielem::setup_clientfields("LUIelemText");
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
    }

    // Namespace cluielemtext/luielemtext
    // Params 2, eflags: 0x0
    // Checksum 0x51a768af, Offset: 0x9e0
    // Size: 0x30
    function set_y(localclientnum, value) {
        set_data(localclientnum, "y", value);
    }

    // Namespace cluielemtext/luielemtext
    // Params 2, eflags: 0x0
    // Checksum 0xe979e188, Offset: 0xa88
    // Size: 0x30
    function set_alpha(localclientnum, value) {
        set_data(localclientnum, "alpha", value);
    }

    // Namespace cluielemtext/luielemtext
    // Params 2, eflags: 0x0
    // Checksum 0x5bd53fc8, Offset: 0x9a8
    // Size: 0x30
    function set_x(localclientnum, value) {
        set_data(localclientnum, "x", value);
    }

    // Namespace cluielemtext/luielemtext
    // Params 2, eflags: 0x0
    // Checksum 0x514fb6bc, Offset: 0xb68
    // Size: 0x30
    function set_text(localclientnum, value) {
        set_data(localclientnum, "text", value);
    }

    // Namespace cluielemtext/luielemtext
    // Params 2, eflags: 0x0
    // Checksum 0x4ff7d1eb, Offset: 0xac0
    // Size: 0x30
    function set_red(localclientnum, value) {
        set_data(localclientnum, "red", value);
    }

    // Namespace cluielemtext/luielemtext
    // Params 1, eflags: 0x0
    // Checksum 0xe308fb33, Offset: 0x808
    // Size: 0x168
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
    }

}

// Namespace luielemtext/luielemtext
// Params 10, eflags: 0x0
// Checksum 0x7684b2bf, Offset: 0x148
// Size: 0x1ce
function register(xcallback, ycallback, heightcallback, fadeovertimecallback, alphacallback, redcallback, greencallback, bluecallback, textcallback, horizontal_alignmentcallback) {
    elem = new cluielemtext();
    [[ elem ]]->setup_clientfields(xcallback, ycallback, heightcallback, fadeovertimecallback, alphacallback, redcallback, greencallback, bluecallback, textcallback, horizontal_alignmentcallback);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"luielemtext"])) {
        level.var_ae746e8f[#"luielemtext"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"luielemtext"])) {
        level.var_ae746e8f[#"luielemtext"] = [];
    } else if (!isarray(level.var_ae746e8f[#"luielemtext"])) {
        level.var_ae746e8f[#"luielemtext"] = array(level.var_ae746e8f[#"luielemtext"]);
    }
    level.var_ae746e8f[#"luielemtext"][level.var_ae746e8f[#"luielemtext"].size] = elem;
}

// Namespace luielemtext/luielemtext
// Params 0, eflags: 0x0
// Checksum 0xdaf63f64, Offset: 0x320
// Size: 0x34
function register_clientside() {
    elem = new cluielemtext();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace luielemtext/luielemtext
// Params 1, eflags: 0x0
// Checksum 0x19478c4e, Offset: 0x360
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace luielemtext/luielemtext
// Params 1, eflags: 0x0
// Checksum 0x8a5d6f94, Offset: 0x388
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace luielemtext/luielemtext
// Params 1, eflags: 0x0
// Checksum 0x7f38fa4b, Offset: 0x3b0
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace luielemtext/luielemtext
// Params 2, eflags: 0x0
// Checksum 0x55093b1f, Offset: 0x3d8
// Size: 0x28
function set_x(localclientnum, value) {
    [[ self ]]->set_x(localclientnum, value);
}

// Namespace luielemtext/luielemtext
// Params 2, eflags: 0x0
// Checksum 0xa866cbcd, Offset: 0x408
// Size: 0x28
function set_y(localclientnum, value) {
    [[ self ]]->set_y(localclientnum, value);
}

// Namespace luielemtext/luielemtext
// Params 2, eflags: 0x0
// Checksum 0x690919c5, Offset: 0x438
// Size: 0x28
function set_height(localclientnum, value) {
    [[ self ]]->set_height(localclientnum, value);
}

// Namespace luielemtext/luielemtext
// Params 2, eflags: 0x0
// Checksum 0xccd835fa, Offset: 0x468
// Size: 0x28
function set_fadeovertime(localclientnum, value) {
    [[ self ]]->set_fadeovertime(localclientnum, value);
}

// Namespace luielemtext/luielemtext
// Params 2, eflags: 0x0
// Checksum 0xb753f236, Offset: 0x498
// Size: 0x28
function set_alpha(localclientnum, value) {
    [[ self ]]->set_alpha(localclientnum, value);
}

// Namespace luielemtext/luielemtext
// Params 2, eflags: 0x0
// Checksum 0xc18b8be0, Offset: 0x4c8
// Size: 0x28
function set_red(localclientnum, value) {
    [[ self ]]->set_red(localclientnum, value);
}

// Namespace luielemtext/luielemtext
// Params 2, eflags: 0x0
// Checksum 0xe52bf041, Offset: 0x4f8
// Size: 0x28
function set_green(localclientnum, value) {
    [[ self ]]->set_green(localclientnum, value);
}

// Namespace luielemtext/luielemtext
// Params 2, eflags: 0x0
// Checksum 0xc8145105, Offset: 0x528
// Size: 0x28
function set_blue(localclientnum, value) {
    [[ self ]]->set_blue(localclientnum, value);
}

// Namespace luielemtext/luielemtext
// Params 2, eflags: 0x0
// Checksum 0xc1f623c1, Offset: 0x558
// Size: 0x28
function set_text(localclientnum, value) {
    [[ self ]]->set_text(localclientnum, value);
}

// Namespace luielemtext/luielemtext
// Params 2, eflags: 0x0
// Checksum 0xe13bb230, Offset: 0x588
// Size: 0x28
function set_horizontal_alignment(localclientnum, value) {
    [[ self ]]->set_horizontal_alignment(localclientnum, value);
}

