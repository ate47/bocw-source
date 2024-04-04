// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace full_screen_movie;

// Namespace full_screen_movie
// Method(s) 12 Total 19
class cfull_screen_movie : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace cfull_screen_movie/full_screen_movie
    // Params 2, eflags: 0x2 linked
    // Checksum 0xb87cf950, Offset: 0x540
    // Size: 0x44
    function set_moviename(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "movieName", value);
    }

    // Namespace cfull_screen_movie/full_screen_movie
    // Params 2, eflags: 0x2 linked
    // Checksum 0x26425a5c, Offset: 0x4c8
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cfull_screen_movie/full_screen_movie
    // Params 2, eflags: 0x2 linked
    // Checksum 0xab7dc210, Offset: 0x720
    // Size: 0x44
    function set_moviekey(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "movieKey", value);
    }

    // Namespace cfull_screen_movie/full_screen_movie
    // Params 2, eflags: 0x2 linked
    // Checksum 0xb389ca66, Offset: 0x680
    // Size: 0x44
    function set_playoutromovie(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "playOutroMovie", value);
    }

    // Namespace cfull_screen_movie/full_screen_movie
    // Params 2, eflags: 0x2 linked
    // Checksum 0xf49b8821, Offset: 0x630
    // Size: 0x44
    function set_additive(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "additive", value);
    }

    // Namespace cfull_screen_movie/full_screen_movie
    // Params 1, eflags: 0x2 linked
    // Checksum 0x986d1152, Offset: 0x510
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cfull_screen_movie/full_screen_movie
    // Params 2, eflags: 0x2 linked
    // Checksum 0x51c66473, Offset: 0x5e0
    // Size: 0x44
    function set_looping(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "looping", value);
    }

    // Namespace cfull_screen_movie/full_screen_movie
    // Params 2, eflags: 0x2 linked
    // Checksum 0x786e13f3, Offset: 0x6d0
    // Size: 0x44
    function registerplayer_callout_traversal(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "skippable", value);
    }

    // Namespace cfull_screen_movie/full_screen_movie
    // Params 2, eflags: 0x2 linked
    // Checksum 0x429bee62, Offset: 0x590
    // Size: 0x44
    function set_showblackscreen(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "showBlackScreen", value);
    }

    // Namespace cfull_screen_movie/full_screen_movie
    // Params 0, eflags: 0x2 linked
    // Checksum 0xc5c8e9b, Offset: 0x388
    // Size: 0x134
    function setup_clientfields() {
        cluielem::setup_clientfields("full_screen_movie");
        cluielem::function_dcb34c80("moviefile", "movieName", 1);
        cluielem::add_clientfield("showBlackScreen", 1, 1, "int");
        cluielem::add_clientfield("looping", 1, 1, "int");
        cluielem::add_clientfield("additive", 1, 1, "int");
        cluielem::add_clientfield("playOutroMovie", 1, 1, "int");
        cluielem::add_clientfield("skippable", 1, 1, "int");
        cluielem::function_dcb34c80("moviefile", "movieKey", 1);
    }

}

// Namespace full_screen_movie/full_screen_movie
// Params 0, eflags: 0x2 linked
// Checksum 0xc18b6147, Offset: 0x148
// Size: 0x34
function register() {
    elem = new cfull_screen_movie();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace full_screen_movie/full_screen_movie
// Params 2, eflags: 0x0
// Checksum 0x584b4b43, Offset: 0x188
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace full_screen_movie/full_screen_movie
// Params 1, eflags: 0x0
// Checksum 0x5189623b, Offset: 0x1c8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace full_screen_movie/full_screen_movie
// Params 1, eflags: 0x0
// Checksum 0xc3d6ea8d, Offset: 0x1f0
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace full_screen_movie/full_screen_movie
// Params 2, eflags: 0x0
// Checksum 0x6526a4aa, Offset: 0x218
// Size: 0x28
function set_moviename(player, value) {
    [[ self ]]->set_moviename(player, value);
}

// Namespace full_screen_movie/full_screen_movie
// Params 2, eflags: 0x0
// Checksum 0x9f03516a, Offset: 0x248
// Size: 0x28
function set_showblackscreen(player, value) {
    [[ self ]]->set_showblackscreen(player, value);
}

// Namespace full_screen_movie/full_screen_movie
// Params 2, eflags: 0x0
// Checksum 0x952e4d97, Offset: 0x278
// Size: 0x28
function set_looping(player, value) {
    [[ self ]]->set_looping(player, value);
}

// Namespace full_screen_movie/full_screen_movie
// Params 2, eflags: 0x0
// Checksum 0xff68e418, Offset: 0x2a8
// Size: 0x28
function set_additive(player, value) {
    [[ self ]]->set_additive(player, value);
}

// Namespace full_screen_movie/full_screen_movie
// Params 2, eflags: 0x0
// Checksum 0x73eb31a, Offset: 0x2d8
// Size: 0x28
function set_playoutromovie(player, value) {
    [[ self ]]->set_playoutromovie(player, value);
}

// Namespace full_screen_movie/full_screen_movie
// Params 2, eflags: 0x0
// Checksum 0x1f65bb17, Offset: 0x308
// Size: 0x28
function registerplayer_callout_traversal(player, value) {
    [[ self ]]->registerplayer_callout_traversal(player, value);
}

// Namespace full_screen_movie/full_screen_movie
// Params 2, eflags: 0x0
// Checksum 0x931fd0ea, Offset: 0x338
// Size: 0x28
function set_moviekey(player, value) {
    [[ self ]]->set_moviekey(player, value);
}

