// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace full_screen_black;

// Namespace full_screen_black
// Method(s) 13 Total 20
class cfull_screen_black : cluielem {

    // Namespace cfull_screen_black/full_screen_black
    // Params 2, eflags: 0x2 linked
    // Checksum 0x5233af94, Offset: 0x910
    // Size: 0x30
    function set_endalpha(localclientnum, value) {
        set_data(localclientnum, "endAlpha", value);
    }

    // Namespace cfull_screen_black/full_screen_black
    // Params 1, eflags: 0x2 linked
    // Checksum 0x1e40a403, Offset: 0x7c8
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cfull_screen_black/full_screen_black
    // Params 2, eflags: 0x2 linked
    // Checksum 0x5afe5db5, Offset: 0x830
    // Size: 0x30
    function set_green(localclientnum, value) {
        set_data(localclientnum, "green", value);
    }

    // Namespace cfull_screen_black/full_screen_black
    // Params 2, eflags: 0x2 linked
    // Checksum 0x8c0150e4, Offset: 0x8a0
    // Size: 0x30
    function set_fadeovertime(localclientnum, value) {
        set_data(localclientnum, "fadeOverTime", value);
    }

    // Namespace cfull_screen_black/full_screen_black
    // Params 0, eflags: 0x2 linked
    // Checksum 0x947c154e, Offset: 0x688
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("full_screen_black");
    }

    // Namespace cfull_screen_black/full_screen_black
    // Params 2, eflags: 0x2 linked
    // Checksum 0x67cfe0de, Offset: 0x868
    // Size: 0x30
    function set_blue(localclientnum, value) {
        set_data(localclientnum, "blue", value);
    }

    // Namespace cfull_screen_black/full_screen_black
    // Params 7, eflags: 0x2 linked
    // Checksum 0xf169fcb6, Offset: 0x510
    // Size: 0x16c
    function setup_clientfields(redcallback, greencallback, bluecallback, fadeovertimecallback, var_b046940, var_34291db, var_32445b2) {
        cluielem::setup_clientfields("full_screen_black");
        cluielem::add_clientfield("red", 1, 3, "float", redcallback);
        cluielem::add_clientfield("green", 1, 3, "float", greencallback);
        cluielem::add_clientfield("blue", 1, 3, "float", bluecallback);
        cluielem::add_clientfield("fadeOverTime", 1, 12, "int", fadeovertimecallback);
        cluielem::add_clientfield("startAlpha", 1, 5, "float", var_b046940);
        cluielem::add_clientfield("endAlpha", 1, 5, "float", var_34291db);
        cluielem::add_clientfield("drawHUD", 1, 1, "int", var_32445b2);
    }

    // Namespace cfull_screen_black/full_screen_black
    // Params 2, eflags: 0x2 linked
    // Checksum 0x9862e18d, Offset: 0x8d8
    // Size: 0x30
    function set_startalpha(localclientnum, value) {
        set_data(localclientnum, "startAlpha", value);
    }

    // Namespace cfull_screen_black/full_screen_black
    // Params 2, eflags: 0x2 linked
    // Checksum 0x2cfbe81c, Offset: 0x948
    // Size: 0x30
    function set_drawhud(localclientnum, value) {
        set_data(localclientnum, "drawHUD", value);
    }

    // Namespace cfull_screen_black/full_screen_black
    // Params 2, eflags: 0x2 linked
    // Checksum 0x6165fbdf, Offset: 0x7f8
    // Size: 0x30
    function set_red(localclientnum, value) {
        set_data(localclientnum, "red", value);
    }

    // Namespace cfull_screen_black/full_screen_black
    // Params 1, eflags: 0x2 linked
    // Checksum 0xa0b46827, Offset: 0x6b0
    // Size: 0x110
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "red", 0);
        set_data(localclientnum, "green", 0);
        set_data(localclientnum, "blue", 0);
        set_data(localclientnum, "fadeOverTime", 0);
        set_data(localclientnum, "startAlpha", 0);
        set_data(localclientnum, "endAlpha", 0);
        set_data(localclientnum, "drawHUD", 0);
    }

}

// Namespace full_screen_black/full_screen_black
// Params 7, eflags: 0x2 linked
// Checksum 0x44eeae77, Offset: 0x128
// Size: 0x1b6
function register(redcallback, greencallback, bluecallback, fadeovertimecallback, var_b046940, var_34291db, var_32445b2) {
    elem = new cfull_screen_black();
    [[ elem ]]->setup_clientfields(redcallback, greencallback, bluecallback, fadeovertimecallback, var_b046940, var_34291db, var_32445b2);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"full_screen_black"])) {
        level.var_ae746e8f[#"full_screen_black"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"full_screen_black"])) {
        level.var_ae746e8f[#"full_screen_black"] = [];
    } else if (!isarray(level.var_ae746e8f[#"full_screen_black"])) {
        level.var_ae746e8f[#"full_screen_black"] = array(level.var_ae746e8f[#"full_screen_black"]);
    }
    level.var_ae746e8f[#"full_screen_black"][level.var_ae746e8f[#"full_screen_black"].size] = elem;
}

// Namespace full_screen_black/full_screen_black
// Params 0, eflags: 0x2 linked
// Checksum 0x9d65e6bc, Offset: 0x2e8
// Size: 0x34
function register_clientside() {
    elem = new cfull_screen_black();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace full_screen_black/full_screen_black
// Params 1, eflags: 0x0
// Checksum 0xd3a3a02f, Offset: 0x328
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace full_screen_black/full_screen_black
// Params 1, eflags: 0x0
// Checksum 0xc2853311, Offset: 0x350
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace full_screen_black/full_screen_black
// Params 1, eflags: 0x0
// Checksum 0xb8810db7, Offset: 0x378
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace full_screen_black/full_screen_black
// Params 2, eflags: 0x0
// Checksum 0x7c92fcc5, Offset: 0x3a0
// Size: 0x28
function set_red(localclientnum, value) {
    [[ self ]]->set_red(localclientnum, value);
}

// Namespace full_screen_black/full_screen_black
// Params 2, eflags: 0x0
// Checksum 0x2b68f8a6, Offset: 0x3d0
// Size: 0x28
function set_green(localclientnum, value) {
    [[ self ]]->set_green(localclientnum, value);
}

// Namespace full_screen_black/full_screen_black
// Params 2, eflags: 0x0
// Checksum 0xc96bcd26, Offset: 0x400
// Size: 0x28
function set_blue(localclientnum, value) {
    [[ self ]]->set_blue(localclientnum, value);
}

// Namespace full_screen_black/full_screen_black
// Params 2, eflags: 0x0
// Checksum 0x113464ff, Offset: 0x430
// Size: 0x28
function set_fadeovertime(localclientnum, value) {
    [[ self ]]->set_fadeovertime(localclientnum, value);
}

// Namespace full_screen_black/full_screen_black
// Params 2, eflags: 0x0
// Checksum 0x4ef9e405, Offset: 0x460
// Size: 0x28
function set_startalpha(localclientnum, value) {
    [[ self ]]->set_startalpha(localclientnum, value);
}

// Namespace full_screen_black/full_screen_black
// Params 2, eflags: 0x0
// Checksum 0xb5285a65, Offset: 0x490
// Size: 0x28
function set_endalpha(localclientnum, value) {
    [[ self ]]->set_endalpha(localclientnum, value);
}

// Namespace full_screen_black/full_screen_black
// Params 2, eflags: 0x0
// Checksum 0xd61b3e86, Offset: 0x4c0
// Size: 0x28
function set_drawhud(localclientnum, value) {
    [[ self ]]->set_drawhud(localclientnum, value);
}

