// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace encodedradio_usebar;

// Namespace encodedradio_usebar
// Method(s) 8 Total 15
class class_ba33e0c1 : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace namespace_ba33e0c1/encodedradio_usebar
    // Params 2, eflags: 0x0
    // Checksum 0x97f3da24, Offset: 0x330
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_ba33e0c1/encodedradio_usebar
    // Params 2, eflags: 0x0
    // Checksum 0x2c7b2ee3, Offset: 0x4d0
    // Size: 0x44
    function function_4aa46834(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "activatorCount", value);
    }

    // Namespace namespace_ba33e0c1/encodedradio_usebar
    // Params 1, eflags: 0x0
    // Checksum 0x5c6de1fb, Offset: 0x378
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_ba33e0c1/encodedradio_usebar
    // Params 0, eflags: 0x0
    // Checksum 0xa5de0f5, Offset: 0x290
    // Size: 0x94
    function setup_clientfields() {
        cluielem::setup_clientfields("EncodedRadio_UseBar");
        cluielem::add_clientfield("_state", 1, 1, "int");
        cluielem::add_clientfield("progressFrac", 1, 10, "float");
        cluielem::add_clientfield("activatorCount", 1, 3, "int", 0);
    }

    // Namespace namespace_ba33e0c1/encodedradio_usebar
    // Params 2, eflags: 0x0
    // Checksum 0x9488dbd6, Offset: 0x3a8
    // Size: 0xcc
    function set_state(player, state_name) {
        if (#"defaultstate" == state_name) {
            player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "_state", 0);
            return;
        }
        if (#"hash_5fba3d476e0b33f8" == state_name) {
            player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "_state", 1);
            return;
        }
        assertmsg("<unknown string>");
    }

    // Namespace namespace_ba33e0c1/encodedradio_usebar
    // Params 2, eflags: 0x0
    // Checksum 0xaebf3322, Offset: 0x480
    // Size: 0x44
    function function_f0df5702(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "progressFrac", value);
    }

}

// Namespace encodedradio_usebar/encodedradio_usebar
// Params 0, eflags: 0x0
// Checksum 0x931aa89e, Offset: 0x110
// Size: 0x34
function register() {
    elem = new class_ba33e0c1();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace encodedradio_usebar/encodedradio_usebar
// Params 2, eflags: 0x0
// Checksum 0x584b4b43, Offset: 0x150
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace encodedradio_usebar/encodedradio_usebar
// Params 1, eflags: 0x0
// Checksum 0x5189623b, Offset: 0x190
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace encodedradio_usebar/encodedradio_usebar
// Params 1, eflags: 0x0
// Checksum 0xc3d6ea8d, Offset: 0x1b8
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace encodedradio_usebar/encodedradio_usebar
// Params 2, eflags: 0x0
// Checksum 0x9478374c, Offset: 0x1e0
// Size: 0x28
function set_state(player, state_name) {
    [[ self ]]->set_state(player, state_name);
}

// Namespace encodedradio_usebar/encodedradio_usebar
// Params 2, eflags: 0x0
// Checksum 0xfb3969db, Offset: 0x210
// Size: 0x28
function function_f0df5702(player, value) {
    [[ self ]]->function_f0df5702(player, value);
}

// Namespace encodedradio_usebar/encodedradio_usebar
// Params 2, eflags: 0x0
// Checksum 0xb75c7889, Offset: 0x240
// Size: 0x28
function function_4aa46834(player, value) {
    [[ self ]]->function_4aa46834(player, value);
}

