// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_85157ebf;

// Namespace namespace_85157ebf
// Method(s) 7 Total 14
class class_b201538a : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace namespace_b201538a/namespace_85157ebf
    // Params 2, eflags: 0x0
    // Checksum 0x6441d80c, Offset: 0x2e8
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_b201538a/namespace_85157ebf
    // Params 1, eflags: 0x0
    // Checksum 0x62042216, Offset: 0x330
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_b201538a/namespace_85157ebf
    // Params 0, eflags: 0x0
    // Checksum 0x5e5768b2, Offset: 0x270
    // Size: 0x6c
    function setup_clientfields() {
        cluielem::setup_clientfields("cp_test_journalist1_uni_download_hack_luielem");
        cluielem::add_clientfield("_state", 1, 2, "int");
        cluielem::add_clientfield("download_progress", 1, 7, "float");
    }

    // Namespace namespace_b201538a/namespace_85157ebf
    // Params 2, eflags: 0x0
    // Checksum 0x5af05847, Offset: 0x480
    // Size: 0x44
    function function_97bf49cb(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "download_progress", value);
    }

    // Namespace namespace_b201538a/namespace_85157ebf
    // Params 2, eflags: 0x0
    // Checksum 0xa3021583, Offset: 0x360
    // Size: 0x114
    function set_state(player, state_name) {
        if (#"defaultstate" == state_name) {
            player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "_state", 0);
            return;
        }
        if (#"paused" == state_name) {
            player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "_state", 1);
            return;
        }
        if (#"finished" == state_name) {
            player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "_state", 2);
            return;
        }
        assertmsg("<unknown string>");
    }

}

// Namespace namespace_85157ebf/namespace_85157ebf
// Params 0, eflags: 0x0
// Checksum 0xea269771, Offset: 0x120
// Size: 0x34
function register() {
    elem = new class_b201538a();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace namespace_85157ebf/namespace_85157ebf
// Params 2, eflags: 0x0
// Checksum 0x3a6790e3, Offset: 0x160
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace namespace_85157ebf/namespace_85157ebf
// Params 1, eflags: 0x0
// Checksum 0x2ad0b106, Offset: 0x1a0
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace namespace_85157ebf/namespace_85157ebf
// Params 1, eflags: 0x0
// Checksum 0x1e0592ea, Offset: 0x1c8
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace namespace_85157ebf/namespace_85157ebf
// Params 2, eflags: 0x0
// Checksum 0xca11b23c, Offset: 0x1f0
// Size: 0x28
function set_state(player, state_name) {
    [[ self ]]->set_state(player, state_name);
}

// Namespace namespace_85157ebf/namespace_85157ebf
// Params 2, eflags: 0x0
// Checksum 0x968cc2c, Offset: 0x220
// Size: 0x28
function function_97bf49cb(player, value) {
    [[ self ]]->function_97bf49cb(player, value);
}

