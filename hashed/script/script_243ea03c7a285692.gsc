// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace revive_hud;

// Namespace revive_hud
// Method(s) 8 Total 15
class crevive_hud : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace crevive_hud/revive_hud
    // Params 2, eflags: 0x2 linked
    // Checksum 0xa3bbe23e, Offset: 0x320
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace crevive_hud/revive_hud
    // Params 2, eflags: 0x2 linked
    // Checksum 0x99bcaf8a, Offset: 0x438
    // Size: 0x44
    function set_fadetime(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "fadeTime", value);
    }

    // Namespace crevive_hud/revive_hud
    // Params 2, eflags: 0x2 linked
    // Checksum 0x20eb5534, Offset: 0x3e8
    // Size: 0x44
    function set_clientnum(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "clientNum", value);
    }

    // Namespace crevive_hud/revive_hud
    // Params 1, eflags: 0x2 linked
    // Checksum 0x9b0c8b67, Offset: 0x368
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace crevive_hud/revive_hud
    // Params 0, eflags: 0x2 linked
    // Checksum 0xbffb4a2f, Offset: 0x280
    // Size: 0x94
    function setup_clientfields() {
        cluielem::setup_clientfields("revive_hud");
        cluielem::function_dcb34c80("string", "text", 1);
        cluielem::add_clientfield("clientNum", 1, 7, "int");
        cluielem::add_clientfield("fadeTime", 1, 5, "int");
    }

    // Namespace crevive_hud/revive_hud
    // Params 2, eflags: 0x2 linked
    // Checksum 0xc1d154ed, Offset: 0x398
    // Size: 0x44
    function set_text(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "text", value);
    }

}

// Namespace revive_hud/revive_hud
// Params 0, eflags: 0x0
// Checksum 0x11bcf2f1, Offset: 0x100
// Size: 0x34
function register() {
    elem = new crevive_hud();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace revive_hud/revive_hud
// Params 2, eflags: 0x2 linked
// Checksum 0x3a6790e3, Offset: 0x140
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace revive_hud/revive_hud
// Params 1, eflags: 0x0
// Checksum 0x2ad0b106, Offset: 0x180
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace revive_hud/revive_hud
// Params 1, eflags: 0x2 linked
// Checksum 0x1e0592ea, Offset: 0x1a8
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace revive_hud/revive_hud
// Params 2, eflags: 0x2 linked
// Checksum 0xcc6c0c8b, Offset: 0x1d0
// Size: 0x28
function set_text(player, value) {
    [[ self ]]->set_text(player, value);
}

// Namespace revive_hud/revive_hud
// Params 2, eflags: 0x2 linked
// Checksum 0x1a3ede94, Offset: 0x200
// Size: 0x28
function set_clientnum(player, value) {
    [[ self ]]->set_clientnum(player, value);
}

// Namespace revive_hud/revive_hud
// Params 2, eflags: 0x2 linked
// Checksum 0x637205f8, Offset: 0x230
// Size: 0x28
function set_fadetime(player, value) {
    [[ self ]]->set_fadetime(player, value);
}

