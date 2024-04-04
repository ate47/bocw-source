// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace vehicleturretdurability;

// Namespace vehicleturretdurability
// Method(s) 7 Total 14
class cvehicleturretdurability : cluielem {

    // Namespace cvehicleturretdurability/vehicleturretdurability
    // Params 1, eflags: 0x0
    // Checksum 0x8d2e111f, Offset: 0x440
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cvehicleturretdurability/vehicleturretdurability
    // Params 0, eflags: 0x0
    // Checksum 0x52775501, Offset: 0x3c8
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("VehicleTurretDurability");
    }

    // Namespace cvehicleturretdurability/vehicleturretdurability
    // Params 1, eflags: 0x0
    // Checksum 0x407ecb1d, Offset: 0x370
    // Size: 0x4c
    function setup_clientfields(var_661989d5) {
        cluielem::setup_clientfields("VehicleTurretDurability");
        cluielem::add_clientfield("bar_percent", 1, 6, "float", var_661989d5);
    }

    // Namespace cvehicleturretdurability/vehicleturretdurability
    // Params 1, eflags: 0x0
    // Checksum 0x84e5206d, Offset: 0x3f0
    // Size: 0x48
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_data(localclientnum, "bar_percent", 0);
    }

    // Namespace cvehicleturretdurability/vehicleturretdurability
    // Params 2, eflags: 0x0
    // Checksum 0x1d0af15e, Offset: 0x470
    // Size: 0x30
    function set_bar_percent(localclientnum, value) {
        set_data(localclientnum, "bar_percent", value);
    }

}

// Namespace vehicleturretdurability/vehicleturretdurability
// Params 1, eflags: 0x0
// Checksum 0x92efa890, Offset: 0xe8
// Size: 0x176
function register(var_661989d5) {
    elem = new cvehicleturretdurability();
    [[ elem ]]->setup_clientfields(var_661989d5);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"vehicleturretdurability"])) {
        level.var_ae746e8f[#"vehicleturretdurability"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"vehicleturretdurability"])) {
        level.var_ae746e8f[#"vehicleturretdurability"] = [];
    } else if (!isarray(level.var_ae746e8f[#"vehicleturretdurability"])) {
        level.var_ae746e8f[#"vehicleturretdurability"] = array(level.var_ae746e8f[#"vehicleturretdurability"]);
    }
    level.var_ae746e8f[#"vehicleturretdurability"][level.var_ae746e8f[#"vehicleturretdurability"].size] = elem;
}

// Namespace vehicleturretdurability/vehicleturretdurability
// Params 0, eflags: 0x0
// Checksum 0xb966fc46, Offset: 0x268
// Size: 0x34
function register_clientside() {
    elem = new cvehicleturretdurability();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace vehicleturretdurability/vehicleturretdurability
// Params 1, eflags: 0x0
// Checksum 0x50c9b987, Offset: 0x2a8
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace vehicleturretdurability/vehicleturretdurability
// Params 1, eflags: 0x0
// Checksum 0x1f42e9d6, Offset: 0x2d0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace vehicleturretdurability/vehicleturretdurability
// Params 1, eflags: 0x0
// Checksum 0x715ed0c4, Offset: 0x2f8
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace vehicleturretdurability/vehicleturretdurability
// Params 2, eflags: 0x0
// Checksum 0x9bbce78f, Offset: 0x320
// Size: 0x28
function set_bar_percent(localclientnum, value) {
    [[ self ]]->set_bar_percent(localclientnum, value);
}

