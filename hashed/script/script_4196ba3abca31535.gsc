// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace luielembar_ct;

// Namespace luielembar_ct
// Method(s) 16 Total 23
class cluielembar_ct : cluielem {

    // Namespace cluielembar_ct/luielembar_ct
    // Params 1, eflags: 0x0
    // Checksum 0x3381d018, Offset: 0x968
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cluielembar_ct/luielembar_ct
    // Params 2, eflags: 0x0
    // Checksum 0x4fe2091a, Offset: 0xb20
    // Size: 0x30
    function set_green(localclientnum, value) {
        set_data(localclientnum, "green", value);
    }

    // Namespace cluielembar_ct/luielembar_ct
    // Params 2, eflags: 0x0
    // Checksum 0x47aa5ccd, Offset: 0xa78
    // Size: 0x30
    function set_fadeovertime(localclientnum, value) {
        set_data(localclientnum, "fadeOverTime", value);
    }

    // Namespace cluielembar_ct/luielembar_ct
    // Params 0, eflags: 0x0
    // Checksum 0x816ce809, Offset: 0x7d0
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("LUIelemBar_ct");
    }

    // Namespace cluielembar_ct/luielembar_ct
    // Params 2, eflags: 0x0
    // Checksum 0xfe4ef5fe, Offset: 0xa40
    // Size: 0x30
    function set_height(localclientnum, value) {
        set_data(localclientnum, "height", value);
    }

    // Namespace cluielembar_ct/luielembar_ct
    // Params 2, eflags: 0x0
    // Checksum 0xb8b92527, Offset: 0xb58
    // Size: 0x30
    function set_blue(localclientnum, value) {
        set_data(localclientnum, "blue", value);
    }

    // Namespace cluielembar_ct/luielembar_ct
    // Params 2, eflags: 0x0
    // Checksum 0xa101e984, Offset: 0xa08
    // Size: 0x30
    function set_width(localclientnum, value) {
        set_data(localclientnum, "width", value);
    }

    // Namespace cluielembar_ct/luielembar_ct
    // Params 10, eflags: 0x0
    // Checksum 0x1445a8c8, Offset: 0x5c8
    // Size: 0x1fc
    function setup_clientfields(xcallback, ycallback, widthcallback, heightcallback, fadeovertimecallback, alphacallback, redcallback, greencallback, bluecallback, var_661989d5) {
        cluielem::setup_clientfields("LUIelemBar_ct");
        cluielem::add_clientfield("x", 1, 7, "int", xcallback);
        cluielem::add_clientfield("y", 1, 6, "int", ycallback);
        cluielem::add_clientfield("width", 1, 6, "int", widthcallback);
        cluielem::add_clientfield("height", 1, 6, "int", heightcallback);
        cluielem::add_clientfield("fadeOverTime", 1, 5, "int", fadeovertimecallback);
        cluielem::add_clientfield("alpha", 1, 4, "float", alphacallback);
        cluielem::add_clientfield("red", 1, 4, "float", redcallback);
        cluielem::add_clientfield("green", 1, 4, "float", greencallback);
        cluielem::add_clientfield("blue", 1, 4, "float", bluecallback);
        cluielem::add_clientfield("bar_percent", 1, 6, "float", var_661989d5);
    }

    // Namespace cluielembar_ct/luielembar_ct
    // Params 2, eflags: 0x0
    // Checksum 0xbc0dd6a2, Offset: 0x9d0
    // Size: 0x30
    function set_y(localclientnum, value) {
        set_data(localclientnum, "y", value);
    }

    // Namespace cluielembar_ct/luielembar_ct
    // Params 2, eflags: 0x0
    // Checksum 0xfc9f2a2a, Offset: 0xab0
    // Size: 0x30
    function set_alpha(localclientnum, value) {
        set_data(localclientnum, "alpha", value);
    }

    // Namespace cluielembar_ct/luielembar_ct
    // Params 2, eflags: 0x0
    // Checksum 0x14679d66, Offset: 0x998
    // Size: 0x30
    function set_x(localclientnum, value) {
        set_data(localclientnum, "x", value);
    }

    // Namespace cluielembar_ct/luielembar_ct
    // Params 2, eflags: 0x0
    // Checksum 0x827bd74f, Offset: 0xae8
    // Size: 0x30
    function set_red(localclientnum, value) {
        set_data(localclientnum, "red", value);
    }

    // Namespace cluielembar_ct/luielembar_ct
    // Params 1, eflags: 0x0
    // Checksum 0x2449da85, Offset: 0x7f8
    // Size: 0x164
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "x", 0);
        set_data(localclientnum, "y", 0);
        set_data(localclientnum, "width", 0);
        set_data(localclientnum, "height", 0);
        set_data(localclientnum, "fadeOverTime", 0);
        set_data(localclientnum, "alpha", 0);
        set_data(localclientnum, "red", 0);
        set_data(localclientnum, "green", 0);
        set_data(localclientnum, "blue", 0);
        set_data(localclientnum, "bar_percent", 0);
    }

    // Namespace cluielembar_ct/luielembar_ct
    // Params 2, eflags: 0x0
    // Checksum 0x22f519f2, Offset: 0xb90
    // Size: 0x30
    function set_bar_percent(localclientnum, value) {
        set_data(localclientnum, "bar_percent", value);
    }

}

// Namespace luielembar_ct/luielembar_ct
// Params 10, eflags: 0x0
// Checksum 0x679828b2, Offset: 0x138
// Size: 0x1ce
function register(xcallback, ycallback, widthcallback, heightcallback, fadeovertimecallback, alphacallback, redcallback, greencallback, bluecallback, var_661989d5) {
    elem = new cluielembar_ct();
    [[ elem ]]->setup_clientfields(xcallback, ycallback, widthcallback, heightcallback, fadeovertimecallback, alphacallback, redcallback, greencallback, bluecallback, var_661989d5);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"luielembar_ct"])) {
        level.var_ae746e8f[#"luielembar_ct"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"luielembar_ct"])) {
        level.var_ae746e8f[#"luielembar_ct"] = [];
    } else if (!isarray(level.var_ae746e8f[#"luielembar_ct"])) {
        level.var_ae746e8f[#"luielembar_ct"] = array(level.var_ae746e8f[#"luielembar_ct"]);
    }
    level.var_ae746e8f[#"luielembar_ct"][level.var_ae746e8f[#"luielembar_ct"].size] = elem;
}

// Namespace luielembar_ct/luielembar_ct
// Params 0, eflags: 0x0
// Checksum 0x9d42473f, Offset: 0x310
// Size: 0x34
function register_clientside() {
    elem = new cluielembar_ct();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace luielembar_ct/luielembar_ct
// Params 1, eflags: 0x0
// Checksum 0x19478c4e, Offset: 0x350
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace luielembar_ct/luielembar_ct
// Params 1, eflags: 0x0
// Checksum 0x8a5d6f94, Offset: 0x378
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace luielembar_ct/luielembar_ct
// Params 1, eflags: 0x0
// Checksum 0x7f38fa4b, Offset: 0x3a0
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace luielembar_ct/luielembar_ct
// Params 2, eflags: 0x0
// Checksum 0x55093b1f, Offset: 0x3c8
// Size: 0x28
function set_x(localclientnum, value) {
    [[ self ]]->set_x(localclientnum, value);
}

// Namespace luielembar_ct/luielembar_ct
// Params 2, eflags: 0x0
// Checksum 0xa866cbcd, Offset: 0x3f8
// Size: 0x28
function set_y(localclientnum, value) {
    [[ self ]]->set_y(localclientnum, value);
}

// Namespace luielembar_ct/luielembar_ct
// Params 2, eflags: 0x0
// Checksum 0x925049b6, Offset: 0x428
// Size: 0x28
function set_width(localclientnum, value) {
    [[ self ]]->set_width(localclientnum, value);
}

// Namespace luielembar_ct/luielembar_ct
// Params 2, eflags: 0x0
// Checksum 0xdc3d2238, Offset: 0x458
// Size: 0x28
function set_height(localclientnum, value) {
    [[ self ]]->set_height(localclientnum, value);
}

// Namespace luielembar_ct/luielembar_ct
// Params 2, eflags: 0x0
// Checksum 0xbc4fe27c, Offset: 0x488
// Size: 0x28
function set_fadeovertime(localclientnum, value) {
    [[ self ]]->set_fadeovertime(localclientnum, value);
}

// Namespace luielembar_ct/luielembar_ct
// Params 2, eflags: 0x0
// Checksum 0x74a758bc, Offset: 0x4b8
// Size: 0x28
function set_alpha(localclientnum, value) {
    [[ self ]]->set_alpha(localclientnum, value);
}

// Namespace luielembar_ct/luielembar_ct
// Params 2, eflags: 0x0
// Checksum 0xa3c20647, Offset: 0x4e8
// Size: 0x28
function set_red(localclientnum, value) {
    [[ self ]]->set_red(localclientnum, value);
}

// Namespace luielembar_ct/luielembar_ct
// Params 2, eflags: 0x0
// Checksum 0x101ee8dc, Offset: 0x518
// Size: 0x28
function set_green(localclientnum, value) {
    [[ self ]]->set_green(localclientnum, value);
}

// Namespace luielembar_ct/luielembar_ct
// Params 2, eflags: 0x0
// Checksum 0xad9b715b, Offset: 0x548
// Size: 0x28
function set_blue(localclientnum, value) {
    [[ self ]]->set_blue(localclientnum, value);
}

// Namespace luielembar_ct/luielembar_ct
// Params 2, eflags: 0x0
// Checksum 0x9977170c, Offset: 0x578
// Size: 0x28
function set_bar_percent(localclientnum, value) {
    [[ self ]]->set_bar_percent(localclientnum, value);
}

