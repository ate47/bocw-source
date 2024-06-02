// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace luielembar;

// Namespace luielembar
// Method(s) 16 Total 23
class cluielembar : cluielem {

    // Namespace cluielembar/luielembar
    // Params 1, eflags: 0x0
    // Checksum 0xae2b0646, Offset: 0x7c0
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cluielembar/luielembar
    // Params 2, eflags: 0x0
    // Checksum 0x6d0c127a, Offset: 0x978
    // Size: 0x30
    function set_green(localclientnum, value) {
        set_data(localclientnum, "green", value);
    }

    // Namespace cluielembar/luielembar
    // Params 2, eflags: 0x0
    // Checksum 0x67f1a247, Offset: 0x8d0
    // Size: 0x30
    function set_fadeovertime(localclientnum, value) {
        set_data(localclientnum, "fadeOverTime", value);
    }

    // Namespace cluielembar/luielembar
    // Params 0, eflags: 0x0
    // Checksum 0x60f1fd00, Offset: 0x628
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("LUIelemBar");
    }

    // Namespace cluielembar/luielembar
    // Params 2, eflags: 0x0
    // Checksum 0x13722ffe, Offset: 0x898
    // Size: 0x30
    function set_height(localclientnum, value) {
        set_data(localclientnum, "height", value);
    }

    // Namespace cluielembar/luielembar
    // Params 2, eflags: 0x0
    // Checksum 0xa2f233af, Offset: 0x9b0
    // Size: 0x30
    function set_blue(localclientnum, value) {
        set_data(localclientnum, "blue", value);
    }

    // Namespace cluielembar/luielembar
    // Params 2, eflags: 0x0
    // Checksum 0x356ca015, Offset: 0x860
    // Size: 0x30
    function set_width(localclientnum, value) {
        set_data(localclientnum, "width", value);
    }

    // Namespace cluielembar/luielembar
    // Params 10, eflags: 0x0
    // Checksum 0xd07e9eb0, Offset: 0x5b0
    // Size: 0x6c
    function setup_clientfields(*xcallback, *ycallback, *widthcallback, *heightcallback, *fadeovertimecallback, *alphacallback, *redcallback, *greencallback, *bluecallback, *var_661989d5) {
        cluielem::setup_clientfields("LUIelemBar");
    }

    // Namespace cluielembar/luielembar
    // Params 2, eflags: 0x0
    // Checksum 0xc93e1698, Offset: 0x828
    // Size: 0x30
    function set_y(localclientnum, value) {
        set_data(localclientnum, "y", value);
    }

    // Namespace cluielembar/luielembar
    // Params 2, eflags: 0x0
    // Checksum 0x37d0ef76, Offset: 0x908
    // Size: 0x30
    function set_alpha(localclientnum, value) {
        set_data(localclientnum, "alpha", value);
    }

    // Namespace cluielembar/luielembar
    // Params 2, eflags: 0x0
    // Checksum 0x6c2c7953, Offset: 0x7f0
    // Size: 0x30
    function set_x(localclientnum, value) {
        set_data(localclientnum, "x", value);
    }

    // Namespace cluielembar/luielembar
    // Params 2, eflags: 0x0
    // Checksum 0x70726bcf, Offset: 0x940
    // Size: 0x30
    function set_red(localclientnum, value) {
        set_data(localclientnum, "red", value);
    }

    // Namespace cluielembar/luielembar
    // Params 1, eflags: 0x0
    // Checksum 0x93c5ff45, Offset: 0x650
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

    // Namespace cluielembar/luielembar
    // Params 2, eflags: 0x0
    // Checksum 0xa48b91f, Offset: 0x9e8
    // Size: 0x30
    function set_bar_percent(localclientnum, value) {
        set_data(localclientnum, "bar_percent", value);
    }

}

// Namespace luielembar/luielembar
// Params 10, eflags: 0x0
// Checksum 0x1911ab96, Offset: 0x120
// Size: 0x1ce
function register(xcallback, ycallback, widthcallback, heightcallback, fadeovertimecallback, alphacallback, redcallback, greencallback, bluecallback, var_661989d5) {
    elem = new cluielembar();
    [[ elem ]]->setup_clientfields(xcallback, ycallback, widthcallback, heightcallback, fadeovertimecallback, alphacallback, redcallback, greencallback, bluecallback, var_661989d5);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"luielembar"])) {
        level.var_ae746e8f[#"luielembar"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"luielembar"])) {
        level.var_ae746e8f[#"luielembar"] = [];
    } else if (!isarray(level.var_ae746e8f[#"luielembar"])) {
        level.var_ae746e8f[#"luielembar"] = array(level.var_ae746e8f[#"luielembar"]);
    }
    level.var_ae746e8f[#"luielembar"][level.var_ae746e8f[#"luielembar"].size] = elem;
}

// Namespace luielembar/luielembar
// Params 0, eflags: 0x0
// Checksum 0xf22089bf, Offset: 0x2f8
// Size: 0x34
function register_clientside() {
    elem = new cluielembar();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace luielembar/luielembar
// Params 1, eflags: 0x0
// Checksum 0xaf5fbfff, Offset: 0x338
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace luielembar/luielembar
// Params 1, eflags: 0x0
// Checksum 0xe8d7c9b4, Offset: 0x360
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace luielembar/luielembar
// Params 1, eflags: 0x0
// Checksum 0x6bba3fbc, Offset: 0x388
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace luielembar/luielembar
// Params 2, eflags: 0x0
// Checksum 0xdb909c57, Offset: 0x3b0
// Size: 0x28
function set_x(localclientnum, value) {
    [[ self ]]->set_x(localclientnum, value);
}

// Namespace luielembar/luielembar
// Params 2, eflags: 0x0
// Checksum 0x79c008f2, Offset: 0x3e0
// Size: 0x28
function set_y(localclientnum, value) {
    [[ self ]]->set_y(localclientnum, value);
}

// Namespace luielembar/luielembar
// Params 2, eflags: 0x0
// Checksum 0x7f68a9fd, Offset: 0x410
// Size: 0x28
function set_width(localclientnum, value) {
    [[ self ]]->set_width(localclientnum, value);
}

// Namespace luielembar/luielembar
// Params 2, eflags: 0x0
// Checksum 0xc7cacecf, Offset: 0x440
// Size: 0x28
function set_height(localclientnum, value) {
    [[ self ]]->set_height(localclientnum, value);
}

// Namespace luielembar/luielembar
// Params 2, eflags: 0x0
// Checksum 0xf5e41e39, Offset: 0x470
// Size: 0x28
function set_fadeovertime(localclientnum, value) {
    [[ self ]]->set_fadeovertime(localclientnum, value);
}

// Namespace luielembar/luielembar
// Params 2, eflags: 0x0
// Checksum 0x43824b92, Offset: 0x4a0
// Size: 0x28
function set_alpha(localclientnum, value) {
    [[ self ]]->set_alpha(localclientnum, value);
}

// Namespace luielembar/luielembar
// Params 2, eflags: 0x0
// Checksum 0xbafd4e87, Offset: 0x4d0
// Size: 0x28
function set_red(localclientnum, value) {
    [[ self ]]->set_red(localclientnum, value);
}

// Namespace luielembar/luielembar
// Params 2, eflags: 0x0
// Checksum 0x48085255, Offset: 0x500
// Size: 0x28
function set_green(localclientnum, value) {
    [[ self ]]->set_green(localclientnum, value);
}

// Namespace luielembar/luielembar
// Params 2, eflags: 0x0
// Checksum 0x2fb187b3, Offset: 0x530
// Size: 0x28
function set_blue(localclientnum, value) {
    [[ self ]]->set_blue(localclientnum, value);
}

// Namespace luielembar/luielembar
// Params 2, eflags: 0x0
// Checksum 0xee9a1f24, Offset: 0x560
// Size: 0x28
function set_bar_percent(localclientnum, value) {
    [[ self ]]->set_bar_percent(localclientnum, value);
}

