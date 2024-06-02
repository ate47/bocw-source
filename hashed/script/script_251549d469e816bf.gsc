// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace luielemimage;

// Namespace luielemimage
// Method(s) 16 Total 23
class cluielemimage : cluielem {

    // Namespace cluielemimage/luielemimage
    // Params 1, eflags: 0x0
    // Checksum 0x38dc5a7a, Offset: 0x968
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cluielemimage/luielemimage
    // Params 2, eflags: 0x0
    // Checksum 0x6e7dfeda, Offset: 0xb20
    // Size: 0x30
    function set_green(localclientnum, value) {
        set_data(localclientnum, "green", value);
    }

    // Namespace cluielemimage/luielemimage
    // Params 2, eflags: 0x0
    // Checksum 0xb4854575, Offset: 0xa78
    // Size: 0x30
    function set_fadeovertime(localclientnum, value) {
        set_data(localclientnum, "fadeOverTime", value);
    }

    // Namespace cluielemimage/luielemimage
    // Params 0, eflags: 0x0
    // Checksum 0xadb2bee4, Offset: 0x7c8
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("LUIelemImage");
    }

    // Namespace cluielemimage/luielemimage
    // Params 2, eflags: 0x0
    // Checksum 0x4c1520a5, Offset: 0xa40
    // Size: 0x30
    function set_height(localclientnum, value) {
        set_data(localclientnum, "height", value);
    }

    // Namespace cluielemimage/luielemimage
    // Params 2, eflags: 0x0
    // Checksum 0x4f485175, Offset: 0xb90
    // Size: 0x30
    function set_material(localclientnum, value) {
        set_data(localclientnum, "material", value);
    }

    // Namespace cluielemimage/luielemimage
    // Params 2, eflags: 0x0
    // Checksum 0x364d6f57, Offset: 0xb58
    // Size: 0x30
    function set_blue(localclientnum, value) {
        set_data(localclientnum, "blue", value);
    }

    // Namespace cluielemimage/luielemimage
    // Params 2, eflags: 0x0
    // Checksum 0x4255deff, Offset: 0xa08
    // Size: 0x30
    function set_width(localclientnum, value) {
        set_data(localclientnum, "width", value);
    }

    // Namespace cluielemimage/luielemimage
    // Params 10, eflags: 0x0
    // Checksum 0x9125d2ea, Offset: 0x5c0
    // Size: 0x1fc
    function setup_clientfields(xcallback, ycallback, widthcallback, heightcallback, fadeovertimecallback, alphacallback, redcallback, greencallback, bluecallback, *materialcallback) {
        cluielem::setup_clientfields("LUIelemImage");
        cluielem::add_clientfield("x", 1, 7, "int", ycallback);
        cluielem::add_clientfield("y", 1, 6, "int", widthcallback);
        cluielem::add_clientfield("width", 1, 6, "int", heightcallback);
        cluielem::add_clientfield("height", 1, 6, "int", fadeovertimecallback);
        cluielem::add_clientfield("fadeOverTime", 1, 5, "int", alphacallback);
        cluielem::add_clientfield("alpha", 1, 4, "float", redcallback);
        cluielem::add_clientfield("red", 1, 4, "float", greencallback);
        cluielem::add_clientfield("green", 1, 4, "float", bluecallback);
        cluielem::add_clientfield("blue", 1, 4, "float", materialcallback);
        cluielem::function_dcb34c80("material", "material", 1);
    }

    // Namespace cluielemimage/luielemimage
    // Params 2, eflags: 0x0
    // Checksum 0x49efc37f, Offset: 0x9d0
    // Size: 0x30
    function set_y(localclientnum, value) {
        set_data(localclientnum, "y", value);
    }

    // Namespace cluielemimage/luielemimage
    // Params 2, eflags: 0x0
    // Checksum 0xfab89af, Offset: 0xab0
    // Size: 0x30
    function set_alpha(localclientnum, value) {
        set_data(localclientnum, "alpha", value);
    }

    // Namespace cluielemimage/luielemimage
    // Params 2, eflags: 0x0
    // Checksum 0x769c5b64, Offset: 0x998
    // Size: 0x30
    function set_x(localclientnum, value) {
        set_data(localclientnum, "x", value);
    }

    // Namespace cluielemimage/luielemimage
    // Params 2, eflags: 0x0
    // Checksum 0xabf13e53, Offset: 0xae8
    // Size: 0x30
    function set_red(localclientnum, value) {
        set_data(localclientnum, "red", value);
    }

    // Namespace cluielemimage/luielemimage
    // Params 1, eflags: 0x0
    // Checksum 0x37c59c31, Offset: 0x7f0
    // Size: 0x16c
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
        set_data(localclientnum, "material", #"");
    }

}

// Namespace luielemimage/luielemimage
// Params 10, eflags: 0x0
// Checksum 0x5b81ad06, Offset: 0x130
// Size: 0x1ce
function register(xcallback, ycallback, widthcallback, heightcallback, fadeovertimecallback, alphacallback, redcallback, greencallback, bluecallback, materialcallback) {
    elem = new cluielemimage();
    [[ elem ]]->setup_clientfields(xcallback, ycallback, widthcallback, heightcallback, fadeovertimecallback, alphacallback, redcallback, greencallback, bluecallback, materialcallback);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"luielemimage"])) {
        level.var_ae746e8f[#"luielemimage"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"luielemimage"])) {
        level.var_ae746e8f[#"luielemimage"] = [];
    } else if (!isarray(level.var_ae746e8f[#"luielemimage"])) {
        level.var_ae746e8f[#"luielemimage"] = array(level.var_ae746e8f[#"luielemimage"]);
    }
    level.var_ae746e8f[#"luielemimage"][level.var_ae746e8f[#"luielemimage"].size] = elem;
}

// Namespace luielemimage/luielemimage
// Params 0, eflags: 0x0
// Checksum 0xb5a703a3, Offset: 0x308
// Size: 0x34
function register_clientside() {
    elem = new cluielemimage();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace luielemimage/luielemimage
// Params 1, eflags: 0x0
// Checksum 0x4281783d, Offset: 0x348
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace luielemimage/luielemimage
// Params 1, eflags: 0x0
// Checksum 0xd3bdf75d, Offset: 0x370
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace luielemimage/luielemimage
// Params 1, eflags: 0x0
// Checksum 0xc950b86e, Offset: 0x398
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace luielemimage/luielemimage
// Params 2, eflags: 0x0
// Checksum 0xa6d3b518, Offset: 0x3c0
// Size: 0x28
function set_x(localclientnum, value) {
    [[ self ]]->set_x(localclientnum, value);
}

// Namespace luielemimage/luielemimage
// Params 2, eflags: 0x0
// Checksum 0x29d46422, Offset: 0x3f0
// Size: 0x28
function set_y(localclientnum, value) {
    [[ self ]]->set_y(localclientnum, value);
}

// Namespace luielemimage/luielemimage
// Params 2, eflags: 0x0
// Checksum 0xdd11ad48, Offset: 0x420
// Size: 0x28
function set_width(localclientnum, value) {
    [[ self ]]->set_width(localclientnum, value);
}

// Namespace luielemimage/luielemimage
// Params 2, eflags: 0x0
// Checksum 0xe6ba06b7, Offset: 0x450
// Size: 0x28
function set_height(localclientnum, value) {
    [[ self ]]->set_height(localclientnum, value);
}

// Namespace luielemimage/luielemimage
// Params 2, eflags: 0x0
// Checksum 0xa66dfaa9, Offset: 0x480
// Size: 0x28
function set_fadeovertime(localclientnum, value) {
    [[ self ]]->set_fadeovertime(localclientnum, value);
}

// Namespace luielemimage/luielemimage
// Params 2, eflags: 0x0
// Checksum 0xddd1e13c, Offset: 0x4b0
// Size: 0x28
function set_alpha(localclientnum, value) {
    [[ self ]]->set_alpha(localclientnum, value);
}

// Namespace luielemimage/luielemimage
// Params 2, eflags: 0x0
// Checksum 0x1938c932, Offset: 0x4e0
// Size: 0x28
function set_red(localclientnum, value) {
    [[ self ]]->set_red(localclientnum, value);
}

// Namespace luielemimage/luielemimage
// Params 2, eflags: 0x0
// Checksum 0x505bbf9, Offset: 0x510
// Size: 0x28
function set_green(localclientnum, value) {
    [[ self ]]->set_green(localclientnum, value);
}

// Namespace luielemimage/luielemimage
// Params 2, eflags: 0x0
// Checksum 0x8aacfa5e, Offset: 0x540
// Size: 0x28
function set_blue(localclientnum, value) {
    [[ self ]]->set_blue(localclientnum, value);
}

// Namespace luielemimage/luielemimage
// Params 2, eflags: 0x0
// Checksum 0xab463992, Offset: 0x570
// Size: 0x28
function set_material(localclientnum, value) {
    [[ self ]]->set_material(localclientnum, value);
}

