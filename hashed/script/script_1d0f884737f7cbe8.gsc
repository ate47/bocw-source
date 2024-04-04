// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;

#namespace lui_napalm_strike;

// Namespace lui_napalm_strike
// Method(s) 5 Total 12
class clui_napalm_strike : cluielem {

    // Namespace clui_napalm_strike/lui_napalm_strike
    // Params 2, eflags: 0x2 linked
    // Checksum 0x3aed3c6b, Offset: 0x1e8
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace clui_napalm_strike/lui_napalm_strike
    // Params 1, eflags: 0x2 linked
    // Checksum 0x56ca8646, Offset: 0x230
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace clui_napalm_strike/lui_napalm_strike
    // Params 0, eflags: 0x2 linked
    // Checksum 0xa0495291, Offset: 0x1c0
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("lui_napalm_strike");
    }

}

// Namespace lui_napalm_strike/lui_napalm_strike
// Params 0, eflags: 0x0
// Checksum 0x5c9b3ce2, Offset: 0xd0
// Size: 0x34
function register() {
    elem = new clui_napalm_strike();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace lui_napalm_strike/lui_napalm_strike
// Params 2, eflags: 0x0
// Checksum 0xa4df70d2, Offset: 0x110
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace lui_napalm_strike/lui_napalm_strike
// Params 1, eflags: 0x0
// Checksum 0x2fdf789, Offset: 0x150
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace lui_napalm_strike/lui_napalm_strike
// Params 1, eflags: 0x0
// Checksum 0xe6010a6a, Offset: 0x178
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

