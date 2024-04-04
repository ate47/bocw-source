// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace vehicleturretdurability;

// Namespace vehicleturretdurability
// Method(s) 6 Total 13
class cvehicleturretdurability : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace cvehicleturretdurability/vehicleturretdurability
    // Params 2, eflags: 0x0
    // Checksum 0x1af786ea, Offset: 0x260
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cvehicleturretdurability/vehicleturretdurability
    // Params 1, eflags: 0x0
    // Checksum 0xc24a9008, Offset: 0x2a8
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cvehicleturretdurability/vehicleturretdurability
    // Params 0, eflags: 0x0
    // Checksum 0xe6c59c35, Offset: 0x210
    // Size: 0x44
    function setup_clientfields() {
        cluielem::setup_clientfields("VehicleTurretDurability");
        cluielem::add_clientfield("bar_percent", 1, 6, "float", 0);
    }

    // Namespace cvehicleturretdurability/vehicleturretdurability
    // Params 2, eflags: 0x0
    // Checksum 0x623f3c5e, Offset: 0x2d8
    // Size: 0x44
    function set_bar_percent(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "bar_percent", value);
    }

}

// Namespace vehicleturretdurability/vehicleturretdurability
// Params 0, eflags: 0x0
// Checksum 0x7b4f13d7, Offset: 0xf0
// Size: 0x34
function register() {
    elem = new cvehicleturretdurability();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace vehicleturretdurability/vehicleturretdurability
// Params 2, eflags: 0x0
// Checksum 0x584b4b43, Offset: 0x130
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace vehicleturretdurability/vehicleturretdurability
// Params 1, eflags: 0x0
// Checksum 0x5189623b, Offset: 0x170
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace vehicleturretdurability/vehicleturretdurability
// Params 1, eflags: 0x0
// Checksum 0xc3d6ea8d, Offset: 0x198
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace vehicleturretdurability/vehicleturretdurability
// Params 2, eflags: 0x0
// Checksum 0x143c393c, Offset: 0x1c0
// Size: 0x28
function set_bar_percent(player, value) {
    [[ self ]]->set_bar_percent(player, value);
}

