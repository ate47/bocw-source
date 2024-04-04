// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace vehicleturretoverheat;

// Namespace vehicleturretoverheat
// Method(s) 7 Total 14
class cvehicleturretoverheat : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace cvehicleturretoverheat/vehicleturretoverheat
    // Params 2, eflags: 0x0
    // Checksum 0xd2759495, Offset: 0x2c8
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace cvehicleturretoverheat/vehicleturretoverheat
    // Params 1, eflags: 0x0
    // Checksum 0x187d1183, Offset: 0x310
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace cvehicleturretoverheat/vehicleturretoverheat
    // Params 0, eflags: 0x0
    // Checksum 0x5622d09b, Offset: 0x250
    // Size: 0x6c
    function setup_clientfields() {
        cluielem::setup_clientfields("VehicleTurretOverheat");
        cluielem::add_clientfield("_state", 1, 1, "int");
        cluielem::add_clientfield("bar_percent", 1, 6, "float", 0);
    }

    // Namespace cvehicleturretoverheat/vehicleturretoverheat
    // Params 2, eflags: 0x0
    // Checksum 0x4113ec45, Offset: 0x340
    // Size: 0xcc
    function set_state(player, state_name) {
        if (#"defaultstate" == state_name) {
            player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "_state", 0);
            return;
        }
        if (#"overheat" == state_name) {
            player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "_state", 1);
            return;
        }
        assertmsg("<unknown string>");
    }

    // Namespace cvehicleturretoverheat/vehicleturretoverheat
    // Params 2, eflags: 0x0
    // Checksum 0x60616771, Offset: 0x418
    // Size: 0x44
    function set_bar_percent(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "bar_percent", value);
    }

}

// Namespace vehicleturretoverheat/vehicleturretoverheat
// Params 0, eflags: 0x0
// Checksum 0x5edc56d, Offset: 0x100
// Size: 0x34
function register() {
    elem = new cvehicleturretoverheat();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace vehicleturretoverheat/vehicleturretoverheat
// Params 2, eflags: 0x0
// Checksum 0x40d59cb0, Offset: 0x140
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace vehicleturretoverheat/vehicleturretoverheat
// Params 1, eflags: 0x0
// Checksum 0x6221b1b7, Offset: 0x180
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace vehicleturretoverheat/vehicleturretoverheat
// Params 1, eflags: 0x0
// Checksum 0xd7920db2, Offset: 0x1a8
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace vehicleturretoverheat/vehicleturretoverheat
// Params 2, eflags: 0x0
// Checksum 0xd15109cf, Offset: 0x1d0
// Size: 0x28
function set_state(player, state_name) {
    [[ self ]]->set_state(player, state_name);
}

// Namespace vehicleturretoverheat/vehicleturretoverheat
// Params 2, eflags: 0x0
// Checksum 0x19f1d56, Offset: 0x200
// Size: 0x28
function set_bar_percent(player, value) {
    [[ self ]]->set_bar_percent(player, value);
}

