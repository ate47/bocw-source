// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;

#namespace cp_killcam;

// Namespace cp_killcam
// Method(s) 5 Total 12
class class_a5d10b03 : cluielem {

    // Namespace namespace_a5d10b03/cp_killcam
    // Params 2, eflags: 0x0
    // Checksum 0xae0f72a2, Offset: 0x1e0
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_a5d10b03/cp_killcam
    // Params 1, eflags: 0x0
    // Checksum 0xb3ce6d90, Offset: 0x228
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_a5d10b03/cp_killcam
    // Params 0, eflags: 0x0
    // Checksum 0x7681aa50, Offset: 0x1b8
    // Size: 0x1c
    function setup_clientfields() {
        cluielem::setup_clientfields("cp_killcam");
    }

}

// Namespace cp_killcam/cp_killcam
// Params 0, eflags: 0x0
// Checksum 0x5ae13c78, Offset: 0xc8
// Size: 0x34
function register() {
    elem = new class_a5d10b03();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace cp_killcam/cp_killcam
// Params 2, eflags: 0x0
// Checksum 0xaa4b8eb3, Offset: 0x108
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace cp_killcam/cp_killcam
// Params 1, eflags: 0x0
// Checksum 0xf8a9ca82, Offset: 0x148
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace cp_killcam/cp_killcam
// Params 1, eflags: 0x0
// Checksum 0xa2c3bd60, Offset: 0x170
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

