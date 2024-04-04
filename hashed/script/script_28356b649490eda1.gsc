// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace vehicleturretoverheat;

// Namespace vehicleturretoverheat
// Method(s) 8 Total 15
class cvehicleturretoverheat : cluielem {

    // Namespace cvehicleturretoverheat/vehicleturretoverheat
    // Params 1, eflags: 0x0
    // Checksum 0x971b8acd, Offset: 0x4c8
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace cvehicleturretoverheat/vehicleturretoverheat
    // Params 0, eflags: 0x0
    // Checksum 0xf6a11c77, Offset: 0x430
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("VehicleTurretOverheat");
    }

    // Namespace cvehicleturretoverheat/vehicleturretoverheat
    // Params 1, eflags: 0x0
    // Checksum 0x4719a6bc, Offset: 0x3b0
    // Size: 0x74
    function setup_clientfields(var_661989d5) {
        cluielem::setup_clientfields("VehicleTurretOverheat");
        cluielem::add_clientfield("_state", 1, 1, "int");
        cluielem::add_clientfield("bar_percent", 1, 6, "float", var_661989d5);
    }

    // Namespace cvehicleturretoverheat/vehicleturretoverheat
    // Params 2, eflags: 0x0
    // Checksum 0xb2c68aa4, Offset: 0x4f8
    // Size: 0xac
    function set_state(localclientnum, state_name) {
        if (#"defaultstate" == state_name) {
            set_data(localclientnum, "_state", 0);
            return;
        }
        if (#"overheat" == state_name) {
            set_data(localclientnum, "_state", 1);
            return;
        }
        assertmsg("<unknown string>");
    }

    // Namespace cvehicleturretoverheat/vehicleturretoverheat
    // Params 1, eflags: 0x0
    // Checksum 0x5c6f6c68, Offset: 0x458
    // Size: 0x68
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        set_state(localclientnum, #"defaultstate");
        set_data(localclientnum, "bar_percent", 0);
    }

    // Namespace cvehicleturretoverheat/vehicleturretoverheat
    // Params 2, eflags: 0x0
    // Checksum 0x2e9d86bf, Offset: 0x5b0
    // Size: 0x30
    function set_bar_percent(localclientnum, value) {
        set_data(localclientnum, "bar_percent", value);
    }

}

// Namespace vehicleturretoverheat/vehicleturretoverheat
// Params 1, eflags: 0x0
// Checksum 0x35b74964, Offset: 0xf8
// Size: 0x176
function register(var_661989d5) {
    elem = new cvehicleturretoverheat();
    [[ elem ]]->setup_clientfields(var_661989d5);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"vehicleturretoverheat"])) {
        level.var_ae746e8f[#"vehicleturretoverheat"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"vehicleturretoverheat"])) {
        level.var_ae746e8f[#"vehicleturretoverheat"] = [];
    } else if (!isarray(level.var_ae746e8f[#"vehicleturretoverheat"])) {
        level.var_ae746e8f[#"vehicleturretoverheat"] = array(level.var_ae746e8f[#"vehicleturretoverheat"]);
    }
    level.var_ae746e8f[#"vehicleturretoverheat"][level.var_ae746e8f[#"vehicleturretoverheat"].size] = elem;
}

// Namespace vehicleturretoverheat/vehicleturretoverheat
// Params 0, eflags: 0x0
// Checksum 0x6301106a, Offset: 0x278
// Size: 0x34
function register_clientside() {
    elem = new cvehicleturretoverheat();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace vehicleturretoverheat/vehicleturretoverheat
// Params 1, eflags: 0x0
// Checksum 0xab7c1abf, Offset: 0x2b8
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace vehicleturretoverheat/vehicleturretoverheat
// Params 1, eflags: 0x0
// Checksum 0x2c2bb37, Offset: 0x2e0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace vehicleturretoverheat/vehicleturretoverheat
// Params 1, eflags: 0x0
// Checksum 0x71b19878, Offset: 0x308
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace vehicleturretoverheat/vehicleturretoverheat
// Params 2, eflags: 0x0
// Checksum 0xa72ca68f, Offset: 0x330
// Size: 0x28
function set_state(localclientnum, state_name) {
    [[ self ]]->set_state(localclientnum, state_name);
}

// Namespace vehicleturretoverheat/vehicleturretoverheat
// Params 2, eflags: 0x0
// Checksum 0xd20d0edd, Offset: 0x360
// Size: 0x28
function set_bar_percent(localclientnum, value) {
    [[ self ]]->set_bar_percent(localclientnum, value);
}

