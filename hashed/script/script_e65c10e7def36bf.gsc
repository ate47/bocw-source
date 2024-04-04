// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;

#namespace mobile_armory_loadout;

// Namespace mobile_armory_loadout
// Method(s) 5 Total 12
class class_8019ebdc : cluielem {

    // Namespace namespace_8019ebdc/mobile_armory_loadout
    // Params 2, eflags: 0x0
    // Checksum 0x8efc0dc, Offset: 0x1e8
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_8019ebdc/mobile_armory_loadout
    // Params 1, eflags: 0x0
    // Checksum 0x335296bf, Offset: 0x230
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_8019ebdc/mobile_armory_loadout
    // Params 0, eflags: 0x0
    // Checksum 0xc3c53a14, Offset: 0x1c0
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("mobile_armory_loadout");
    }

}

// Namespace mobile_armory_loadout/mobile_armory_loadout
// Params 0, eflags: 0x0
// Checksum 0x7eaeff3c, Offset: 0xd0
// Size: 0x34
function register() {
    elem = new class_8019ebdc();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace mobile_armory_loadout/mobile_armory_loadout
// Params 2, eflags: 0x0
// Checksum 0x83b95f3f, Offset: 0x110
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace mobile_armory_loadout/mobile_armory_loadout
// Params 1, eflags: 0x0
// Checksum 0xde74b2a0, Offset: 0x150
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace mobile_armory_loadout/mobile_armory_loadout
// Params 1, eflags: 0x0
// Checksum 0x686d9d85, Offset: 0x178
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

