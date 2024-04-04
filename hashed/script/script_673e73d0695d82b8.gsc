// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace spectrerisingindicator;

// Namespace spectrerisingindicator
// Method(s) 7 Total 14
class cspectrerisingindicator : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace cspectrerisingindicator/spectrerisingindicator
    // Params 2, eflags: 0x0
    // Checksum 0xd118d251, Offset: 0x2c0
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cspectrerisingindicator/spectrerisingindicator
    // Params 2, eflags: 0x0
    // Checksum 0x4db10819, Offset: 0x338
    // Size: 0x44
    function set_clientnum(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "clientnum", value);
    }

    // Namespace cspectrerisingindicator/spectrerisingindicator
    // Params 1, eflags: 0x0
    // Checksum 0x87639077, Offset: 0x308
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cspectrerisingindicator/spectrerisingindicator
    // Params 2, eflags: 0x0
    // Checksum 0x5fab6c0a, Offset: 0x388
    // Size: 0x44
    function set_isalive(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "isAlive", value);
    }

    // Namespace cspectrerisingindicator/spectrerisingindicator
    // Params 0, eflags: 0x0
    // Checksum 0x483c392f, Offset: 0x248
    // Size: 0x6c
    function setup_clientfields() {
        cluielem::setup_clientfields("SpectreRisingIndicator");
        cluielem::add_clientfield("clientnum", 1, 7, "int");
        cluielem::add_clientfield("isAlive", 1, 1, "int");
    }

}

// Namespace spectrerisingindicator/spectrerisingindicator
// Params 0, eflags: 0x0
// Checksum 0x3c5aa280, Offset: 0xf8
// Size: 0x34
function register() {
    elem = new cspectrerisingindicator();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace spectrerisingindicator/spectrerisingindicator
// Params 2, eflags: 0x0
// Checksum 0x83b95f3f, Offset: 0x138
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace spectrerisingindicator/spectrerisingindicator
// Params 1, eflags: 0x0
// Checksum 0xde74b2a0, Offset: 0x178
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace spectrerisingindicator/spectrerisingindicator
// Params 1, eflags: 0x0
// Checksum 0x686d9d85, Offset: 0x1a0
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace spectrerisingindicator/spectrerisingindicator
// Params 2, eflags: 0x0
// Checksum 0x359b0ee8, Offset: 0x1c8
// Size: 0x28
function set_clientnum(player, value) {
    [[ self ]]->set_clientnum(player, value);
}

// Namespace spectrerisingindicator/spectrerisingindicator
// Params 2, eflags: 0x0
// Checksum 0x2bf44e53, Offset: 0x1f8
// Size: 0x28
function set_isalive(player, value) {
    [[ self ]]->set_isalive(player, value);
}

