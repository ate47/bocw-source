// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;

#namespace doa_textbubble_playername;

// Namespace doa_textbubble_playername
// Method(s) 10 Total 17
class class_42946372 : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace namespace_42946372/doa_textbubble_playername
    // Params 2, eflags: 0x0
    // Checksum 0x8bdf7bbf, Offset: 0x2e0
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_42946372/doa_textbubble_playername
    // Params 2, eflags: 0x0
    // Checksum 0x24c9b690, Offset: 0x3b0
    // Size: 0x4c
    function set_clientnum(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 2, value, 0);
    }

    // Namespace namespace_42946372/doa_textbubble_playername
    // Params 2, eflags: 0x0
    // Checksum 0x9fa97277, Offset: 0x460
    // Size: 0x4c
    function function_4f6e830d(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 4, value, 0);
    }

    // Namespace namespace_42946372/doa_textbubble_playername
    // Params 1, eflags: 0x0
    // Checksum 0x9da40d88, Offset: 0x328
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_42946372/doa_textbubble_playername
    // Params 2, eflags: 0x0
    // Checksum 0x5880d9ad, Offset: 0x408
    // Size: 0x4c
    function function_61312692(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 3, value, 0);
    }

    // Namespace namespace_42946372/doa_textbubble_playername
    // Params 2, eflags: 0x0
    // Checksum 0xb786a31a, Offset: 0x4b8
    // Size: 0x4c
    function function_7ddfdfef(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 5, value, 0);
    }

    // Namespace namespace_42946372/doa_textbubble_playername
    // Params 0, eflags: 0x0
    // Checksum 0xe44e3368, Offset: 0x2b8
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("DOA_TextBubble_PlayerName");
    }

    // Namespace namespace_42946372/doa_textbubble_playername
    // Params 2, eflags: 0x0
    // Checksum 0xe9fb5cae, Offset: 0x358
    // Size: 0x4c
    function set_entnum(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 1, value, 0);
    }

}

// Namespace doa_textbubble_playername/doa_textbubble_playername
// Params 0, eflags: 0x0
// Checksum 0x650ad9b2, Offset: 0xd8
// Size: 0x34
function register() {
    elem = new class_42946372();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace doa_textbubble_playername/doa_textbubble_playername
// Params 2, eflags: 0x0
// Checksum 0xa4df70d2, Offset: 0x118
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace doa_textbubble_playername/doa_textbubble_playername
// Params 1, eflags: 0x0
// Checksum 0x2fdf789, Offset: 0x158
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace doa_textbubble_playername/doa_textbubble_playername
// Params 1, eflags: 0x0
// Checksum 0xe6010a6a, Offset: 0x180
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace doa_textbubble_playername/doa_textbubble_playername
// Params 2, eflags: 0x0
// Checksum 0xcf0d832, Offset: 0x1a8
// Size: 0x28
function set_entnum(player, value) {
    [[ self ]]->set_entnum(player, value);
}

// Namespace doa_textbubble_playername/doa_textbubble_playername
// Params 2, eflags: 0x0
// Checksum 0x8f7d2906, Offset: 0x1d8
// Size: 0x28
function set_clientnum(player, value) {
    [[ self ]]->set_clientnum(player, value);
}

// Namespace doa_textbubble_playername/doa_textbubble_playername
// Params 2, eflags: 0x0
// Checksum 0x82b20567, Offset: 0x208
// Size: 0x28
function function_61312692(player, value) {
    [[ self ]]->function_61312692(player, value);
}

// Namespace doa_textbubble_playername/doa_textbubble_playername
// Params 2, eflags: 0x0
// Checksum 0xff07444, Offset: 0x238
// Size: 0x28
function function_4f6e830d(player, value) {
    [[ self ]]->function_4f6e830d(player, value);
}

// Namespace doa_textbubble_playername/doa_textbubble_playername
// Params 2, eflags: 0x0
// Checksum 0xcd1e2f14, Offset: 0x268
// Size: 0x28
function function_7ddfdfef(player, value) {
    [[ self ]]->function_7ddfdfef(player, value);
}

