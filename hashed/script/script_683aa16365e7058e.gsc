// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace luielemcounter;

// Namespace luielemcounter
// Method(s) 16 Total 23
class class_1beae0 : cluielem {

    // Namespace namespace_1beae0/luielemcounter
    // Params 1, eflags: 0x0
    // Checksum 0x6291d5a3, Offset: 0x7c8
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_1beae0/luielemcounter
    // Params 2, eflags: 0x0
    // Checksum 0x9bdccfb6, Offset: 0x9f0
    // Size: 0x30
    function set_horizontal_alignment(localclientnum, value) {
        set_data(localclientnum, "horizontal_alignment", value);
    }

    // Namespace namespace_1beae0/luielemcounter
    // Params 2, eflags: 0x0
    // Checksum 0xe01984a8, Offset: 0x948
    // Size: 0x30
    function set_green(localclientnum, value) {
        set_data(localclientnum, "green", value);
    }

    // Namespace namespace_1beae0/luielemcounter
    // Params 2, eflags: 0x0
    // Checksum 0xe8cc512a, Offset: 0x8a0
    // Size: 0x30
    function set_fadeovertime(localclientnum, value) {
        set_data(localclientnum, "fadeOverTime", value);
    }

    // Namespace namespace_1beae0/luielemcounter
    // Params 0, eflags: 0x0
    // Checksum 0xf8951407, Offset: 0x638
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("LUIelemCounter");
    }

    // Namespace namespace_1beae0/luielemcounter
    // Params 2, eflags: 0x0
    // Checksum 0xbd64abf6, Offset: 0x9b8
    // Size: 0x30
    function function_5d4dff63(localclientnum, value) {
        set_data(localclientnum, "number", value);
    }

    // Namespace namespace_1beae0/luielemcounter
    // Params 2, eflags: 0x0
    // Checksum 0x48183a5a, Offset: 0x868
    // Size: 0x30
    function set_height(localclientnum, value) {
        set_data(localclientnum, "height", value);
    }

    // Namespace namespace_1beae0/luielemcounter
    // Params 2, eflags: 0x0
    // Checksum 0x5e2babcb, Offset: 0x980
    // Size: 0x30
    function set_blue(localclientnum, value) {
        set_data(localclientnum, "blue", value);
    }

    // Namespace namespace_1beae0/luielemcounter
    // Params 10, eflags: 0x0
    // Checksum 0xc1b1e97c, Offset: 0x5c0
    // Size: 0x6c
    function setup_clientfields(*xcallback, *ycallback, *heightcallback, *fadeovertimecallback, *alphacallback, *redcallback, *greencallback, *bluecallback, *var_4cf01ed6, *horizontal_alignmentcallback) {
        cluielem::setup_clientfields("LUIelemCounter");
    }

    // Namespace namespace_1beae0/luielemcounter
    // Params 2, eflags: 0x0
    // Checksum 0xd6378358, Offset: 0x830
    // Size: 0x30
    function set_y(localclientnum, value) {
        set_data(localclientnum, "y", value);
    }

    // Namespace namespace_1beae0/luielemcounter
    // Params 2, eflags: 0x0
    // Checksum 0x2e4b5ebb, Offset: 0x8d8
    // Size: 0x30
    function set_alpha(localclientnum, value) {
        set_data(localclientnum, "alpha", value);
    }

    // Namespace namespace_1beae0/luielemcounter
    // Params 2, eflags: 0x0
    // Checksum 0x93948c35, Offset: 0x7f8
    // Size: 0x30
    function set_x(localclientnum, value) {
        set_data(localclientnum, "x", value);
    }

    // Namespace namespace_1beae0/luielemcounter
    // Params 2, eflags: 0x0
    // Checksum 0x277778e8, Offset: 0x910
    // Size: 0x30
    function set_red(localclientnum, value) {
        set_data(localclientnum, "red", value);
    }

    // Namespace namespace_1beae0/luielemcounter
    // Params 1, eflags: 0x0
    // Checksum 0x8807207d, Offset: 0x660
    // Size: 0x15c
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
        set_data(localclientnum, "number", 0);
        set_data(localclientnum, "horizontal_alignment", 0);
    }

}

// Namespace luielemcounter/luielemcounter
// Params 10, eflags: 0x0
// Checksum 0xa4e1d047, Offset: 0x130
// Size: 0x1ce
function register(xcallback, ycallback, heightcallback, fadeovertimecallback, alphacallback, redcallback, greencallback, bluecallback, var_4cf01ed6, horizontal_alignmentcallback) {
    elem = new class_1beae0();
    [[ elem ]]->setup_clientfields(xcallback, ycallback, heightcallback, fadeovertimecallback, alphacallback, redcallback, greencallback, bluecallback, var_4cf01ed6, horizontal_alignmentcallback);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"luielemcounter"])) {
        level.var_ae746e8f[#"luielemcounter"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"luielemcounter"])) {
        level.var_ae746e8f[#"luielemcounter"] = [];
    } else if (!isarray(level.var_ae746e8f[#"luielemcounter"])) {
        level.var_ae746e8f[#"luielemcounter"] = array(level.var_ae746e8f[#"luielemcounter"]);
    }
    level.var_ae746e8f[#"luielemcounter"][level.var_ae746e8f[#"luielemcounter"].size] = elem;
}

// Namespace luielemcounter/luielemcounter
// Params 0, eflags: 0x0
// Checksum 0x8f29499d, Offset: 0x308
// Size: 0x34
function register_clientside() {
    elem = new class_1beae0();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace luielemcounter/luielemcounter
// Params 1, eflags: 0x0
// Checksum 0x6e172ab4, Offset: 0x348
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace luielemcounter/luielemcounter
// Params 1, eflags: 0x0
// Checksum 0xdcad857b, Offset: 0x370
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace luielemcounter/luielemcounter
// Params 1, eflags: 0x0
// Checksum 0x76583747, Offset: 0x398
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace luielemcounter/luielemcounter
// Params 2, eflags: 0x0
// Checksum 0x4f34982f, Offset: 0x3c0
// Size: 0x28
function set_x(localclientnum, value) {
    [[ self ]]->set_x(localclientnum, value);
}

// Namespace luielemcounter/luielemcounter
// Params 2, eflags: 0x0
// Checksum 0xab529143, Offset: 0x3f0
// Size: 0x28
function set_y(localclientnum, value) {
    [[ self ]]->set_y(localclientnum, value);
}

// Namespace luielemcounter/luielemcounter
// Params 2, eflags: 0x0
// Checksum 0xc1c42419, Offset: 0x420
// Size: 0x28
function set_height(localclientnum, value) {
    [[ self ]]->set_height(localclientnum, value);
}

// Namespace luielemcounter/luielemcounter
// Params 2, eflags: 0x0
// Checksum 0xe4a5d775, Offset: 0x450
// Size: 0x28
function set_fadeovertime(localclientnum, value) {
    [[ self ]]->set_fadeovertime(localclientnum, value);
}

// Namespace luielemcounter/luielemcounter
// Params 2, eflags: 0x0
// Checksum 0xc66c4e3b, Offset: 0x480
// Size: 0x28
function set_alpha(localclientnum, value) {
    [[ self ]]->set_alpha(localclientnum, value);
}

// Namespace luielemcounter/luielemcounter
// Params 2, eflags: 0x0
// Checksum 0xdcdd2031, Offset: 0x4b0
// Size: 0x28
function set_red(localclientnum, value) {
    [[ self ]]->set_red(localclientnum, value);
}

// Namespace luielemcounter/luielemcounter
// Params 2, eflags: 0x0
// Checksum 0x6722fc30, Offset: 0x4e0
// Size: 0x28
function set_green(localclientnum, value) {
    [[ self ]]->set_green(localclientnum, value);
}

// Namespace luielemcounter/luielemcounter
// Params 2, eflags: 0x0
// Checksum 0xaec423d0, Offset: 0x510
// Size: 0x28
function set_blue(localclientnum, value) {
    [[ self ]]->set_blue(localclientnum, value);
}

// Namespace luielemcounter/luielemcounter
// Params 2, eflags: 0x0
// Checksum 0x14041458, Offset: 0x540
// Size: 0x28
function function_5d4dff63(localclientnum, value) {
    [[ self ]]->function_5d4dff63(localclientnum, value);
}

// Namespace luielemcounter/luielemcounter
// Params 2, eflags: 0x0
// Checksum 0xc98c75ad, Offset: 0x570
// Size: 0x28
function set_horizontal_alignment(localclientnum, value) {
    [[ self ]]->set_horizontal_alignment(localclientnum, value);
}

