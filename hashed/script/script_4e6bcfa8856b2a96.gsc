// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_6c3927f6;

// Namespace namespace_6c3927f6
// Method(s) 8 Total 15
class class_fbe341f : cluielem {

    // Namespace class_fbe341f/namespace_6c3927f6
    // Params 0, eflags: 0x8
    // Checksum 0x85a85551, Offset: 0x270
    // Size: 0x14
    __constructor() {
        cluielem::__constructor();
    }

    // Namespace class_fbe341f/namespace_6c3927f6
    // Params 0, eflags: 0x90 class_linked
    // Checksum 0xadc9cff0, Offset: 0x688
    // Size: 0x14
    __destructor() {
        cluielem::__destructor();
    }

    // Namespace namespace_fbe341f/namespace_6c3927f6
    // Params 2, eflags: 0x0
    // Checksum 0x2751d726, Offset: 0x330
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_fbe341f/namespace_6c3927f6
    // Params 2, eflags: 0x0
    // Checksum 0x2374c59, Offset: 0x638
    // Size: 0x44
    function function_4aa46834(player, value) {
        player clientfield::function_9bf78ef8(self.var_d5213cbb, self.var_bf9c8c95, "activatorCount", value);
    }

    // Namespace namespace_fbe341f/namespace_6c3927f6
    // Params 1, eflags: 0x0
    // Checksum 0x9ee8c34, Offset: 0x378
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_fbe341f/namespace_6c3927f6
    // Params 0, eflags: 0x0
    // Checksum 0x1b59586f, Offset: 0x290
    // Size: 0x94
    function setup_clientfields() {
        cluielem::setup_clientfields("DirtyBomb_UseBar");
        cluielem::add_clientfield("_state", 1, 3, "int");
        cluielem::add_clientfield("progressFrac", 1, 10, "float");
        cluielem::add_clientfield("activatorCount", 1, 3, "int", 0);
    }

    // Namespace namespace_fbe341f/namespace_6c3927f6
    // Params 2, eflags: 0x0
    // Checksum 0xefde2e49, Offset: 0x3a8
    // Size: 0x234
    function set_state(player, state_name) {
        if (#"defaultstate" == state_name) {
            player clientfield::function_9bf78ef8(self.var_d5213cbb, self.var_bf9c8c95, "_state", 0);
        } else if (#"detonating" == state_name) {
            player clientfield::function_9bf78ef8(self.var_d5213cbb, self.var_bf9c8c95, "_state", 1);
        } else if (#"hash_1a2812055c330ee0" == state_name) {
            player clientfield::function_9bf78ef8(self.var_d5213cbb, self.var_bf9c8c95, "_state", 2);
        } else if (#"hash_59e0e869fbae7705" == state_name) {
            player clientfield::function_9bf78ef8(self.var_d5213cbb, self.var_bf9c8c95, "_state", 3);
        } else if (#"hash_b86ebfb5a93f57f" == state_name) {
            player clientfield::function_9bf78ef8(self.var_d5213cbb, self.var_bf9c8c95, "_state", 4);
        } else if (#"hash_4ff55a42344e567e" == state_name) {
            player clientfield::function_9bf78ef8(self.var_d5213cbb, self.var_bf9c8c95, "_state", 5);
        } else if (#"hash_288548f3fca8b603" == state_name) {
            player clientfield::function_9bf78ef8(self.var_d5213cbb, self.var_bf9c8c95, "_state", 6);
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
    // Checksum 0xde35d2b3, Offset: 0x5e8
    // Size: 0x44
    function function_f0df5702(player, value) {
        player clientfield::function_9bf78ef8(self.var_d5213cbb, self.var_bf9c8c95, "progressFrac", value);
    }

}

// Namespace namespace_6c3927f6/namespace_6c3927f6
// Params 0, eflags: 0x0
// Checksum 0xa9fe919, Offset: 0x110
// Size: 0x34
function register() {
    elem = new class_fbe341f();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace namespace_6c3927f6/namespace_6c3927f6
// Params 2, eflags: 0x0
// Checksum 0x3a6790e3, Offset: 0x150
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace namespace_6c3927f6/namespace_6c3927f6
// Params 1, eflags: 0x0
// Checksum 0x2ad0b106, Offset: 0x190
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace namespace_6c3927f6/namespace_6c3927f6
// Params 1, eflags: 0x0
// Checksum 0x1e0592ea, Offset: 0x1b8
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace namespace_6c3927f6/namespace_6c3927f6
// Params 2, eflags: 0x0
// Checksum 0xca11b23c, Offset: 0x1e0
// Size: 0x28
function set_state(player, state_name) {
    [[ self ]]->set_state(player, state_name);
}

// Namespace namespace_6c3927f6/namespace_6c3927f6
// Params 2, eflags: 0x0
// Checksum 0x7886d3a4, Offset: 0x210
// Size: 0x28
function function_f0df5702(player, value) {
    [[ self ]]->function_f0df5702(player, value);
}

// Namespace namespace_6c3927f6/namespace_6c3927f6
// Params 2, eflags: 0x0
// Checksum 0x90efe864, Offset: 0x240
// Size: 0x28
function function_4aa46834(player, value) {
    [[ self ]]->function_4aa46834(player, value);
}
