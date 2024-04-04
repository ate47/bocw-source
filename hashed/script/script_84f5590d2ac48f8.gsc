// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace full_screen_movie;

// Namespace full_screen_movie
// Method(s) 13 Total 20
class cfull_screen_movie : cluielem {

    // Namespace cfull_screen_movie/full_screen_movie
    // Params 2, eflags: 0x2 linked
    // Checksum 0x462811a4, Offset: 0x808
    // Size: 0x30
    function set_moviename(localclientnum, value) {
        set_data(localclientnum, "movieName", value);
    }

    // Namespace cfull_screen_movie/full_screen_movie
    // Params 1, eflags: 0x2 linked
    // Checksum 0x5ae13558, Offset: 0x7d8
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cfull_screen_movie/full_screen_movie
    // Params 2, eflags: 0x2 linked
    // Checksum 0x2557e44c, Offset: 0x958
    // Size: 0x30
    function set_moviekey(localclientnum, value) {
        set_data(localclientnum, "movieKey", value);
    }

    // Namespace cfull_screen_movie/full_screen_movie
    // Params 2, eflags: 0x2 linked
    // Checksum 0x924072ef, Offset: 0x8e8
    // Size: 0x30
    function set_playoutromovie(localclientnum, value) {
        set_data(localclientnum, "playOutroMovie", value);
    }

    // Namespace cfull_screen_movie/full_screen_movie
    // Params 2, eflags: 0x2 linked
    // Checksum 0xd7277ba1, Offset: 0x8b0
    // Size: 0x30
    function set_additive(localclientnum, value) {
        set_data(localclientnum, "additive", value);
    }

    // Namespace cfull_screen_movie/full_screen_movie
    // Params 0, eflags: 0x2 linked
    // Checksum 0xc0543e71, Offset: 0x6a0
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("full_screen_movie");
    }

    // Namespace cfull_screen_movie/full_screen_movie
    // Params 2, eflags: 0x2 linked
    // Checksum 0x834f58e6, Offset: 0x878
    // Size: 0x30
    function set_looping(localclientnum, value) {
        set_data(localclientnum, "looping", value);
    }

    // Namespace cfull_screen_movie/full_screen_movie
    // Params 2, eflags: 0x2 linked
    // Checksum 0xe16b37dc, Offset: 0x920
    // Size: 0x30
    function registerplayer_callout_traversal(localclientnum, value) {
        set_data(localclientnum, "skippable", value);
    }

    // Namespace cfull_screen_movie/full_screen_movie
    // Params 2, eflags: 0x2 linked
    // Checksum 0x53d4e580, Offset: 0x840
    // Size: 0x30
    function set_showblackscreen(localclientnum, value) {
        set_data(localclientnum, "showBlackScreen", value);
    }

    // Namespace cfull_screen_movie/full_screen_movie
    // Params 7, eflags: 0x2 linked
    // Checksum 0xa64aec5a, Offset: 0x528
    // Size: 0x16c
    function setup_clientfields(*var_f7b454f9, var_d5b04ae3, var_e4decd0, var_e545d4b9, var_78184b90, var_8ba396cb, *var_ea38d488) {
        cluielem::setup_clientfields("full_screen_movie");
        cluielem::function_dcb34c80("moviefile", "movieName", 1);
        cluielem::add_clientfield("showBlackScreen", 1, 1, "int", var_e4decd0);
        cluielem::add_clientfield("looping", 1, 1, "int", var_e545d4b9);
        cluielem::add_clientfield("additive", 1, 1, "int", var_78184b90);
        cluielem::add_clientfield("playOutroMovie", 1, 1, "int", var_8ba396cb);
        cluielem::add_clientfield("skippable", 1, 1, "int", var_ea38d488);
        cluielem::function_dcb34c80("moviefile", "movieKey", 1);
    }

    // Namespace cfull_screen_movie/full_screen_movie
    // Params 1, eflags: 0x2 linked
    // Checksum 0xbf3e5240, Offset: 0x6c8
    // Size: 0x104
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "movieName", #"");
        set_data(localclientnum, "showBlackScreen", 0);
        set_data(localclientnum, "looping", 0);
        set_data(localclientnum, "additive", 0);
        set_data(localclientnum, "playOutroMovie", 0);
        set_data(localclientnum, "skippable", 0);
        set_data(localclientnum, "movieKey", #"");
    }

}

// Namespace full_screen_movie/full_screen_movie
// Params 7, eflags: 0x2 linked
// Checksum 0x8d595093, Offset: 0x140
// Size: 0x1b6
function register(var_f7b454f9, var_d5b04ae3, var_e4decd0, var_e545d4b9, var_78184b90, var_8ba396cb, var_ea38d488) {
    elem = new cfull_screen_movie();
    [[ elem ]]->setup_clientfields(var_f7b454f9, var_d5b04ae3, var_e4decd0, var_e545d4b9, var_78184b90, var_8ba396cb, var_ea38d488);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"full_screen_movie"])) {
        level.var_ae746e8f[#"full_screen_movie"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"full_screen_movie"])) {
        level.var_ae746e8f[#"full_screen_movie"] = [];
    } else if (!isarray(level.var_ae746e8f[#"full_screen_movie"])) {
        level.var_ae746e8f[#"full_screen_movie"] = array(level.var_ae746e8f[#"full_screen_movie"]);
    }
    level.var_ae746e8f[#"full_screen_movie"][level.var_ae746e8f[#"full_screen_movie"].size] = elem;
}

// Namespace full_screen_movie/full_screen_movie
// Params 0, eflags: 0x0
// Checksum 0xbb064c02, Offset: 0x300
// Size: 0x34
function register_clientside() {
    elem = new cfull_screen_movie();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace full_screen_movie/full_screen_movie
// Params 1, eflags: 0x0
// Checksum 0xe14c6bff, Offset: 0x340
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace full_screen_movie/full_screen_movie
// Params 1, eflags: 0x0
// Checksum 0x77dfb2b, Offset: 0x368
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace full_screen_movie/full_screen_movie
// Params 1, eflags: 0x0
// Checksum 0xe82f6e5, Offset: 0x390
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace full_screen_movie/full_screen_movie
// Params 2, eflags: 0x0
// Checksum 0x887aa533, Offset: 0x3b8
// Size: 0x28
function set_moviename(localclientnum, value) {
    [[ self ]]->set_moviename(localclientnum, value);
}

// Namespace full_screen_movie/full_screen_movie
// Params 2, eflags: 0x0
// Checksum 0x2d38f00b, Offset: 0x3e8
// Size: 0x28
function set_showblackscreen(localclientnum, value) {
    [[ self ]]->set_showblackscreen(localclientnum, value);
}

// Namespace full_screen_movie/full_screen_movie
// Params 2, eflags: 0x0
// Checksum 0xb3f2e077, Offset: 0x418
// Size: 0x28
function set_looping(localclientnum, value) {
    [[ self ]]->set_looping(localclientnum, value);
}

// Namespace full_screen_movie/full_screen_movie
// Params 2, eflags: 0x0
// Checksum 0x5cf1a625, Offset: 0x448
// Size: 0x28
function set_additive(localclientnum, value) {
    [[ self ]]->set_additive(localclientnum, value);
}

// Namespace full_screen_movie/full_screen_movie
// Params 2, eflags: 0x0
// Checksum 0x5a355436, Offset: 0x478
// Size: 0x28
function set_playoutromovie(localclientnum, value) {
    [[ self ]]->set_playoutromovie(localclientnum, value);
}

// Namespace full_screen_movie/full_screen_movie
// Params 2, eflags: 0x0
// Checksum 0x8f6c2ad6, Offset: 0x4a8
// Size: 0x28
function registerplayer_callout_traversal(localclientnum, value) {
    [[ self ]]->registerplayer_callout_traversal(localclientnum, value);
}

// Namespace full_screen_movie/full_screen_movie
// Params 2, eflags: 0x0
// Checksum 0x17597f2c, Offset: 0x4d8
// Size: 0x28
function set_moviekey(localclientnum, value) {
    [[ self ]]->set_moviekey(localclientnum, value);
}

