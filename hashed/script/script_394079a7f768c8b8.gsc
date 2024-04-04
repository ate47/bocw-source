// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace pitch_and_yaw_meters;

// Namespace pitch_and_yaw_meters
// Method(s) 6 Total 13
class class_98cc868d : cluielem {

    // Namespace namespace_98cc868d/pitch_and_yaw_meters
    // Params 1, eflags: 0x0
    // Checksum 0xf54f69e6, Offset: 0x3a0
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_98cc868d/pitch_and_yaw_meters
    // Params 0, eflags: 0x0
    // Checksum 0xe5af2df8, Offset: 0x348
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("pitch_and_yaw_meters");
    }

    // Namespace namespace_98cc868d/pitch_and_yaw_meters
    // Params 0, eflags: 0x0
    // Checksum 0x3d3893e5, Offset: 0x320
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("pitch_and_yaw_meters");
    }

    // Namespace namespace_98cc868d/pitch_and_yaw_meters
    // Params 1, eflags: 0x0
    // Checksum 0x2ab1dbf, Offset: 0x370
    // Size: 0x24
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
    }

}

// Namespace pitch_and_yaw_meters/pitch_and_yaw_meters
// Params 0, eflags: 0x0
// Checksum 0x8da2d3f1, Offset: 0xd0
// Size: 0x16e
function register() {
    elem = new class_98cc868d();
    [[ elem ]]->setup_clientfields();
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"pitch_and_yaw_meters"])) {
        level.var_ae746e8f[#"pitch_and_yaw_meters"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"pitch_and_yaw_meters"])) {
        level.var_ae746e8f[#"pitch_and_yaw_meters"] = [];
    } else if (!isarray(level.var_ae746e8f[#"pitch_and_yaw_meters"])) {
        level.var_ae746e8f[#"pitch_and_yaw_meters"] = array(level.var_ae746e8f[#"pitch_and_yaw_meters"]);
    }
    level.var_ae746e8f[#"pitch_and_yaw_meters"][level.var_ae746e8f[#"pitch_and_yaw_meters"].size] = elem;
}

// Namespace pitch_and_yaw_meters/pitch_and_yaw_meters
// Params 0, eflags: 0x0
// Checksum 0xf39ecb5a, Offset: 0x248
// Size: 0x34
function register_clientside() {
    elem = new class_98cc868d();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace pitch_and_yaw_meters/pitch_and_yaw_meters
// Params 1, eflags: 0x0
// Checksum 0x558d1ea5, Offset: 0x288
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace pitch_and_yaw_meters/pitch_and_yaw_meters
// Params 1, eflags: 0x0
// Checksum 0x93d9ed5, Offset: 0x2b0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace pitch_and_yaw_meters/pitch_and_yaw_meters
// Params 1, eflags: 0x0
// Checksum 0xacf5dac4, Offset: 0x2d8
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

