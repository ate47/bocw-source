// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;

#namespace mp_prop_controls;

// Namespace mp_prop_controls
// Method(s) 5 Total 12
class cmp_prop_controls : cluielem {

    // Namespace cmp_prop_controls/mp_prop_controls
    // Params 2, eflags: 0x0
    // Checksum 0x8396e5c8, Offset: 0x1e8
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cmp_prop_controls/mp_prop_controls
    // Params 1, eflags: 0x0
    // Checksum 0x2cf7c006, Offset: 0x230
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cmp_prop_controls/mp_prop_controls
    // Params 0, eflags: 0x0
    // Checksum 0x331ef22d, Offset: 0x1c0
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("mp_prop_controls");
    }

}

// Namespace mp_prop_controls/mp_prop_controls
// Params 0, eflags: 0x0
// Checksum 0xd6eb1c39, Offset: 0xd0
// Size: 0x34
function register() {
    elem = new cmp_prop_controls();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace mp_prop_controls/mp_prop_controls
// Params 2, eflags: 0x0
// Checksum 0x22b7d0a0, Offset: 0x110
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace mp_prop_controls/mp_prop_controls
// Params 1, eflags: 0x0
// Checksum 0xbeec1ac2, Offset: 0x150
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace mp_prop_controls/mp_prop_controls
// Params 1, eflags: 0x0
// Checksum 0xd0ca6291, Offset: 0x178
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

