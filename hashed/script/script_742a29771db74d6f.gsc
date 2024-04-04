// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace zm_arcade_timer;

// Namespace zm_arcade_timer
// Method(s) 9 Total 16
class czm_arcade_timer : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace czm_arcade_timer/zm_arcade_timer
    // Params 2, eflags: 0x0
    // Checksum 0x64022167, Offset: 0x920
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace czm_arcade_timer/zm_arcade_timer
    // Params 2, eflags: 0x0
    // Checksum 0x2ddf93aa, Offset: 0xa38
    // Size: 0x44
    function set_minutes(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "minutes", value);
    }

    // Namespace czm_arcade_timer/zm_arcade_timer
    // Params 2, eflags: 0x0
    // Checksum 0x55583ba4, Offset: 0xa88
    // Size: 0x44
    function set_title(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "title", value);
    }

    // Namespace czm_arcade_timer/zm_arcade_timer
    // Params 1, eflags: 0x0
    // Checksum 0x1abe138b, Offset: 0x968
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace czm_arcade_timer/zm_arcade_timer
    // Params 2, eflags: 0x0
    // Checksum 0x87c7680, Offset: 0x998
    // Size: 0x44
    function set_showzero(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "showzero", value);
    }

    // Namespace czm_arcade_timer/zm_arcade_timer
    // Params 0, eflags: 0x0
    // Checksum 0x41ed147f, Offset: 0x858
    // Size: 0xbc
    function setup_clientfields() {
        cluielem::setup_clientfields("zm_arcade_timer");
        cluielem::add_clientfield("showzero", 1, 1, "int");
        cluielem::add_clientfield("seconds", 1, 6, "int");
        cluielem::add_clientfield("minutes", 1, 4, "int");
        cluielem::function_dcb34c80("string", "title", 1);
    }

    // Namespace czm_arcade_timer/zm_arcade_timer
    // Params 2, eflags: 0x0
    // Checksum 0xdeeb2d09, Offset: 0x9e8
    // Size: 0x44
    function set_seconds(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "seconds", value);
    }

}

// Namespace zm_arcade_timer/zm_arcade_timer
// Params 3, eflags: 0x0
// Checksum 0x728ea3e7, Offset: 0x110
// Size: 0x134
function set_timer(player, var_c895e25d, var_b1100790) {
    self open_timer(player);
    n_minutes = int(floor(var_c895e25d / 60));
    n_seconds = int(var_c895e25d - n_minutes * 60);
    self set_minutes(player, n_minutes);
    self set_seconds(player, n_seconds);
    if (n_seconds < 10) {
        self set_showzero(player, 1);
    } else {
        self set_showzero(player, 0);
    }
    if (isdefined(var_b1100790)) {
        self set_title(player, var_b1100790);
    }
}

// Namespace zm_arcade_timer/zm_arcade_timer
// Params 1, eflags: 0x0
// Checksum 0xa5aef17b, Offset: 0x250
// Size: 0xc8
function function_e7a1c8a4(*str_notify) {
    foreach (player in level.players) {
        if (isdefined(level.var_f5682bb8) && level.var_f5682bb8 is_open(player)) {
            level.var_f5682bb8 close(player);
        }
    }
}

// Namespace zm_arcade_timer/zm_arcade_timer
// Params 4, eflags: 0x0
// Checksum 0xc38db2a9, Offset: 0x320
// Size: 0x18c
function function_88df772a(player, var_c895e25d, var_b1100790, var_f0996295 = 0) {
    player endon(#"disconnect", #"hash_660dedc4af5b4336");
    level endoncallback(&function_e7a1c8a4, #"end_game");
    if (!var_f0996295) {
        player endoncallback(&function_57490fd5, #"hash_2a4a6c3c411261d8");
    }
    self function_ecffd525(player);
    if (var_f0996295 || !isdefined(player.var_26b0547b)) {
        player.var_26b0547b = var_b1100790;
    }
    while (var_c895e25d >= 0) {
        if (player.var_26b0547b === var_b1100790) {
            self set_timer(player, var_c895e25d, var_b1100790);
        }
        wait(1);
        var_c895e25d--;
        if (!isdefined(player.var_26b0547b)) {
            player.var_26b0547b = var_b1100790;
        }
    }
    if (player.var_26b0547b === var_b1100790) {
        player.var_26b0547b = undefined;
    }
    self function_9bab3960(player, 0, var_b1100790);
}

// Namespace zm_arcade_timer/zm_arcade_timer
// Params 1, eflags: 0x0
// Checksum 0x8731d100, Offset: 0x4b8
// Size: 0x3c
function function_57490fd5(*str_notify) {
    if (!isdefined(self.var_e325b124)) {
        self.var_e325b124 = 0;
    }
    if (self.var_e325b124 > 0) {
        self.var_e325b124--;
    }
}

// Namespace zm_arcade_timer/zm_arcade_timer
// Params 1, eflags: 0x0
// Checksum 0x54112a9d, Offset: 0x500
// Size: 0x44
function function_ecffd525(player) {
    if (!isdefined(player.var_e325b124)) {
        player.var_e325b124 = 0;
    }
    player.var_e325b124++;
    self open_timer(player);
}

// Namespace zm_arcade_timer/zm_arcade_timer
// Params 1, eflags: 0x0
// Checksum 0xe32e2a48, Offset: 0x550
// Size: 0x44
function open_timer(player) {
    if (!self is_open(player)) {
        self open(player, 1);
    }
}

// Namespace zm_arcade_timer/zm_arcade_timer
// Params 3, eflags: 0x0
// Checksum 0x1840aceb, Offset: 0x5a0
// Size: 0x100
function function_9bab3960(player, b_force_close = 0, var_b1100790) {
    if (!isdefined(player.var_e325b124)) {
        player.var_e325b124 = 0;
    }
    player.var_e325b124--;
    if (player.var_26b0547b === var_b1100790) {
        player.var_26b0547b = undefined;
    }
    if (self is_open(player) && (player.var_e325b124 <= 0 || b_force_close)) {
        player.var_e325b124 = 0;
        self close(player);
        player notify(#"hash_2a4a6c3c411261d8");
        player.var_26b0547b = undefined;
        if (b_force_close) {
            player notify(#"hash_660dedc4af5b4336");
        }
    }
}

// Namespace zm_arcade_timer/zm_arcade_timer
// Params 0, eflags: 0x0
// Checksum 0xa8dd65e9, Offset: 0x6a8
// Size: 0x34
function register() {
    elem = new czm_arcade_timer();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace zm_arcade_timer/zm_arcade_timer
// Params 2, eflags: 0x0
// Checksum 0xf24edb05, Offset: 0x6e8
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace zm_arcade_timer/zm_arcade_timer
// Params 1, eflags: 0x0
// Checksum 0xabe31a25, Offset: 0x728
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace zm_arcade_timer/zm_arcade_timer
// Params 1, eflags: 0x0
// Checksum 0x97887c37, Offset: 0x750
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace zm_arcade_timer/zm_arcade_timer
// Params 2, eflags: 0x0
// Checksum 0x4a75530b, Offset: 0x778
// Size: 0x28
function set_showzero(player, value) {
    [[ self ]]->set_showzero(player, value);
}

// Namespace zm_arcade_timer/zm_arcade_timer
// Params 2, eflags: 0x0
// Checksum 0xd74daa7e, Offset: 0x7a8
// Size: 0x28
function set_seconds(player, value) {
    [[ self ]]->set_seconds(player, value);
}

// Namespace zm_arcade_timer/zm_arcade_timer
// Params 2, eflags: 0x0
// Checksum 0x36f827e, Offset: 0x7d8
// Size: 0x28
function set_minutes(player, value) {
    [[ self ]]->set_minutes(player, value);
}

// Namespace zm_arcade_timer/zm_arcade_timer
// Params 2, eflags: 0x0
// Checksum 0x20e63cc0, Offset: 0x808
// Size: 0x28
function set_title(player, value) {
    [[ self ]]->set_title(player, value);
}

