// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.csc;

#namespace namespace_6c3927f6;

// Namespace namespace_6c3927f6
// Method(s) 9 Total 16
class class_fbe341f : cluielem {

    // Namespace class_fbe341f/namespace_6c3927f6
    // Params 0, eflags: 0x8
    // Checksum 0x7e1e6212, Offset: 0x3d8
    // Size: 0x14
    __constructor() {
        cluielem::__constructor();
    }

    // Namespace class_fbe341f/namespace_6c3927f6
    // Params 0, eflags: 0x90 class_linked
    // Checksum 0x86c7e799, Offset: 0x7d0
    // Size: 0x14
    __destructor() {
        cluielem::__destructor();
    }

    // Namespace namespace_fbe341f/namespace_6c3927f6
    // Params 1, eflags: 0x0
    // Checksum 0x35cafbad, Offset: 0x560
    // Size: 0x24
    function open(localclientnum) {
        cluielem::open(localclientnum);
    }

    // Namespace namespace_fbe341f/namespace_6c3927f6
    // Params 2, eflags: 0x0
    // Checksum 0x497bde45, Offset: 0x798
    // Size: 0x30
    function function_4aa46834(localclientnum, value) {
        [[ self ]]->set_data(localclientnum, "activatorCount", value);
    }

    // Namespace namespace_fbe341f/namespace_6c3927f6
    // Params 0, eflags: 0x0
    // Checksum 0x3fe4322e, Offset: 0x4a8
    // Size: 0x1c
    function register_clientside() {
        cluielem::register_clientside("DirtyBomb_UseBar");
    }

    // Namespace namespace_fbe341f/namespace_6c3927f6
    // Params 2, eflags: 0x0
    // Checksum 0xeef57c4c, Offset: 0x3f8
    // Size: 0xa4
    function setup_clientfields(var_ec85b709, var_193163f7) {
        cluielem::setup_clientfields("DirtyBomb_UseBar");
        cluielem::add_clientfield("_state", 1, 3, "int");
        cluielem::add_clientfield("progressFrac", 1, 10, "float", var_ec85b709);
        cluielem::add_clientfield("activatorCount", 1, 3, "int", var_193163f7);
    }

    // Namespace namespace_fbe341f/namespace_6c3927f6
    // Params 2, eflags: 0x0
    // Checksum 0xff3d9d31, Offset: 0x590
    // Size: 0x1c4
    function set_state(localclientnum, state_name) {
        if (#"defaultstate" == state_name) {
            [[ self ]]->set_data(localclientnum, "_state", 0);
        } else if (#"detonating" == state_name) {
            [[ self ]]->set_data(localclientnum, "_state", 1);
        } else if (#"hash_1a2812055c330ee0" == state_name) {
            [[ self ]]->set_data(localclientnum, "_state", 2);
        } else if (#"hash_59e0e869fbae7705" == state_name) {
            [[ self ]]->set_data(localclientnum, "_state", 3);
        } else if (#"hash_b86ebfb5a93f57f" == state_name) {
            [[ self ]]->set_data(localclientnum, "_state", 4);
        } else if (#"hash_4ff55a42344e567e" == state_name) {
            [[ self ]]->set_data(localclientnum, "_state", 5);
        } else if (#"hash_288548f3fca8b603" == state_name) {
            [[ self ]]->set_data(localclientnum, "_state", 6);
        } else {
            /#
                /#
                    assertmsg("<unknown string>");
                #/
            #/
        }
    }

    // Namespace namespace_fbe341f/namespace_6c3927f6
    // Params 2, eflags: 0x0
    // Checksum 0x228183f8, Offset: 0x760
    // Size: 0x30
    function function_f0df5702(localclientnum, value) {
        [[ self ]]->set_data(localclientnum, "progressFrac", value);
    }

    // Namespace namespace_fbe341f/namespace_6c3927f6
    // Params 1, eflags: 0x0
    // Checksum 0x7d29e272, Offset: 0x4d0
    // Size: 0x84
    function function_fa582112(localclientnum) {
        cluielem::function_fa582112(localclientnum);
        [[ self ]]->set_state(localclientnum, #"defaultstate");
        [[ self ]]->set_data(localclientnum, "progressFrac", 0);
        [[ self ]]->set_data(localclientnum, "activatorCount", 0);
    }

}

// Namespace namespace_6c3927f6/namespace_6c3927f6
// Params 2, eflags: 0x0
// Checksum 0x78fc433f, Offset: 0x108
// Size: 0x17e
function register(var_ec85b709, var_193163f7) {
    elem = new class_fbe341f();
    [[ elem ]]->setup_clientfields(var_ec85b709, var_193163f7);
    if (!isdefined(level.var_ae746e8f)) {
        level.var_ae746e8f = associativearray();
    }
    if (!isdefined(level.var_ae746e8f[#"hash_691653a7e05702f0"])) {
        level.var_ae746e8f[#"hash_691653a7e05702f0"] = [];
    }
    if (!isdefined(level.var_ae746e8f[#"hash_691653a7e05702f0"])) {
        level.var_ae746e8f[#"hash_691653a7e05702f0"] = [];
    } else if (!isarray(level.var_ae746e8f[#"hash_691653a7e05702f0"])) {
        level.var_ae746e8f[#"hash_691653a7e05702f0"] = array(level.var_ae746e8f[#"hash_691653a7e05702f0"]);
    }
    level.var_ae746e8f[#"hash_691653a7e05702f0"][level.var_ae746e8f[#"hash_691653a7e05702f0"].size] = elem;
}

// Namespace namespace_6c3927f6/namespace_6c3927f6
// Params 0, eflags: 0x0
// Checksum 0x87435d75, Offset: 0x290
// Size: 0x34
function register_clientside() {
    elem = new class_fbe341f();
    [[ elem ]]->register_clientside();
    return elem;
}

// Namespace namespace_6c3927f6/namespace_6c3927f6
// Params 1, eflags: 0x0
// Checksum 0x30c153cc, Offset: 0x2d0
// Size: 0x1c
function open(player) {
    [[ self ]]->open(player);
}

// Namespace namespace_6c3927f6/namespace_6c3927f6
// Params 1, eflags: 0x0
// Checksum 0x5dbf26a, Offset: 0x2f8
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace namespace_6c3927f6/namespace_6c3927f6
// Params 1, eflags: 0x0
// Checksum 0xf8480f91, Offset: 0x320
// Size: 0x1a
function is_open(localclientnum) {
    return [[ self ]]->is_open(localclientnum);
}

// Namespace namespace_6c3927f6/namespace_6c3927f6
// Params 2, eflags: 0x0
// Checksum 0x2642104f, Offset: 0x348
// Size: 0x28
function set_state(localclientnum, state_name) {
    [[ self ]]->set_state(localclientnum, state_name);
}

// Namespace namespace_6c3927f6/namespace_6c3927f6
// Params 2, eflags: 0x0
// Checksum 0xf52cb605, Offset: 0x378
// Size: 0x28
function function_f0df5702(localclientnum, value) {
    [[ self ]]->function_f0df5702(localclientnum, value);
}

// Namespace namespace_6c3927f6/namespace_6c3927f6
// Params 2, eflags: 0x0
// Checksum 0x84693ec7, Offset: 0x3a8
// Size: 0x28
function function_4aa46834(localclientnum, value) {
    [[ self ]]->function_4aa46834(localclientnum, value);
}

