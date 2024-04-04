// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;

#namespace doa_textbubble;

// Namespace doa_textbubble
// Method(s) 10 Total 17
class class_b20c2804 : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace namespace_b20c2804/doa_textbubble
    // Params 2, eflags: 0x0
    // Checksum 0xdf4e5f22, Offset: 0x2e0
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_b20c2804/doa_textbubble
    // Params 2, eflags: 0x0
    // Checksum 0x44e8eb2c, Offset: 0x478
    // Size: 0x4c
    function function_4f6e830d(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 4, value, 0);
    }

    // Namespace namespace_b20c2804/doa_textbubble
    // Params 1, eflags: 0x0
    // Checksum 0x25468508, Offset: 0x328
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_b20c2804/doa_textbubble
    // Params 2, eflags: 0x0
    // Checksum 0xc62228ac, Offset: 0x420
    // Size: 0x4c
    function function_61312692(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 3, value, 0);
    }

    // Namespace namespace_b20c2804/doa_textbubble
    // Params 2, eflags: 0x0
    // Checksum 0x6f50056, Offset: 0x4d0
    // Size: 0x4c
    function function_7ddfdfef(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 5, value, 0);
    }

    // Namespace namespace_b20c2804/doa_textbubble
    // Params 0, eflags: 0x0
    // Checksum 0xdfca18d2, Offset: 0x2b8
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("DOA_TextBubble");
    }

    // Namespace namespace_b20c2804/doa_textbubble
    // Params 2, eflags: 0x0
    // Checksum 0x331a2767, Offset: 0x358
    // Size: 0x4c
    function set_entnum(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 1, value, 0);
    }

    // Namespace namespace_b20c2804/doa_textbubble
    // Params 2, eflags: 0x0
    // Checksum 0xc53329bb, Offset: 0x3b0
    // Size: 0x64
    function set_text(player, value) {
        player lui::function_bb6bcb89(hash(var_d5213cbb), var_bf9c8c95, 2, function_f2d511a6("string", value), 0);
    }

}

// Namespace doa_textbubble/doa_textbubble
// Params 0, eflags: 0x0
// Checksum 0x75a63b0e, Offset: 0xd8
// Size: 0x34
function register() {
    elem = new class_b20c2804();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace doa_textbubble/doa_textbubble
// Params 2, eflags: 0x0
// Checksum 0x22b7d0a0, Offset: 0x118
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace doa_textbubble/doa_textbubble
// Params 1, eflags: 0x0
// Checksum 0xbeec1ac2, Offset: 0x158
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace doa_textbubble/doa_textbubble
// Params 1, eflags: 0x0
// Checksum 0xd0ca6291, Offset: 0x180
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace doa_textbubble/doa_textbubble
// Params 2, eflags: 0x0
// Checksum 0x211934fb, Offset: 0x1a8
// Size: 0x28
function set_entnum(player, value) {
    [[ self ]]->set_entnum(player, value);
}

// Namespace doa_textbubble/doa_textbubble
// Params 2, eflags: 0x0
// Checksum 0xb55c6d8b, Offset: 0x1d8
// Size: 0x28
function set_text(player, value) {
    [[ self ]]->set_text(player, value);
}

// Namespace doa_textbubble/doa_textbubble
// Params 2, eflags: 0x0
// Checksum 0x1d0324aa, Offset: 0x208
// Size: 0x28
function function_61312692(player, value) {
    [[ self ]]->function_61312692(player, value);
}

// Namespace doa_textbubble/doa_textbubble
// Params 2, eflags: 0x0
// Checksum 0x6eb18dba, Offset: 0x238
// Size: 0x28
function function_4f6e830d(player, value) {
    [[ self ]]->function_4f6e830d(player, value);
}

// Namespace doa_textbubble/doa_textbubble
// Params 2, eflags: 0x0
// Checksum 0xf693605a, Offset: 0x268
// Size: 0x28
function function_7ddfdfef(player, value) {
    [[ self ]]->function_7ddfdfef(player, value);
}

