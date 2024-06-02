// Atian COD Tools GSC CW decompiler test
#using script_54f593f5beb1464a;
#using script_2a30ac7aa0ee8988;

#namespace namespace_2d440395;

// Namespace namespace_2d440395/namespace_2d440395
// Params 0, eflags: 0x1
// Checksum 0xc637cce8, Offset: 0x90
// Size: 0x14
function autoexec function_88ff61e0() {
    thread function_45a212c0();
}

// Namespace namespace_2d440395/namespace_2d440395
// Params 0, eflags: 0x2 linked
// Checksum 0x82318c2d, Offset: 0xb0
// Size: 0x70
function function_45a212c0() {
    var_87d0eef8 = &item_world_fixup::remove_item;
    var_74257310 = &item_world_fixup::add_item_replacement;
    var_f8a4c541 = &item_world_fixup::function_6991057;
    while (!isdefined(level)) {
        waitframe(1);
    }
    level.var_21f73755 = 1;
}

/#

    // Namespace namespace_2d440395/namespace_2d440395
    // Params 2, eflags: 0x4
    // Checksum 0x46a315f1, Offset: 0x128
    // Size: 0x74
    function private function_205a8326(msg, var_9fb99f62) {
        if (isdefined(var_9fb99f62)) {
            println("<unknown string>" + msg + "<unknown string>" + var_9fb99f62);
            return;
        }
        println("<unknown string>" + msg);
    }

    // Namespace namespace_2d440395/namespace_2d440395
    // Params 1, eflags: 0x4
    // Checksum 0x41ea0ebc, Offset: 0x1a8
    // Size: 0x124
    function private function_48b77dbf(customgame) {
        var_9fb99f62 = "<unknown string>";
        if (!is_true(getgametypesetting(#"wzenablespraycans"))) {
            var_9fb99f62 = "<unknown string>" + (isdefined(getgametypesetting(#"wzenablespraycans")) ? getgametypesetting(#"wzenablespraycans") : "<unknown string>");
        } else if (customgame) {
            if (gamemodeismode(1)) {
                var_9fb99f62 = "<unknown string>";
            } else if (gamemodeismode(7)) {
                var_9fb99f62 = "<unknown string>";
            }
        }
        function_205a8326("<unknown string>", var_9fb99f62);
    }

#/
