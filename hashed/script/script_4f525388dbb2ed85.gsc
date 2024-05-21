// Atian COD Tools GSC CW decompiler test
#using script_35ae72be7b4fec10;
#using script_3dc93ca9902a9cda;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_d395170f;

// Namespace namespace_d395170f/namespace_d395170f
// Params 0, eflags: 0x5
// Checksum 0x3908f5f2, Offset: 0xc0
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_1a7d629e99e37eda", &_preload, &function_fa076c68, undefined, undefined);
}

// Namespace namespace_d395170f/namespace_d395170f
// Params 0, eflags: 0x6 linked
// Checksum 0x12fb60fd, Offset: 0x118
// Size: 0x34
function private _preload() {
    function_ad272ef4();
    function_90ceecf8();
    function_7c9b0132();
}

// Namespace namespace_d395170f/namespace_d395170f
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x158
// Size: 0x4
function private function_fa076c68() {
    
}

// Namespace namespace_d395170f/namespace_d395170f
// Params 0, eflags: 0x6 linked
// Checksum 0x95c1fbc7, Offset: 0x168
// Size: 0xba
function private function_ad272ef4() {
    if (!isdefined(level._fx)) {
        level._fx = {};
    }
    if (!isdefined(level._fx.var_7b96a5ce)) {
        level._fx.var_7b96a5ce = {};
    }
    if (!isdefined(level._fx.var_7b96a5ce.data)) {
        level._fx.var_7b96a5ce.data = [];
    }
    if (!isdefined(level._fx.var_7b96a5ce.input)) {
        level._fx.var_7b96a5ce.input = {};
    }
}

// Namespace namespace_d395170f/namespace_d395170f
// Params 0, eflags: 0x6 linked
// Checksum 0xe3778b1e, Offset: 0x230
// Size: 0x84
function private function_7c9b0132() {
    /#
        function_5ac4dc99(#"hash_1614a5a56768d221", 0);
        function_cd140ee9(#"hash_1614a5a56768d221", &function_2c3c4513);
        function_5ac4dc99(#"hash_1c94e0c8a0d5dd72", 100);
    #/
}

// Namespace namespace_d395170f/namespace_d395170f
// Params 0, eflags: 0x6 linked
// Checksum 0x586bb3e2, Offset: 0x2c0
// Size: 0x24
function private function_90ceecf8() {
    callback::on_spawned(&_on_player_spawned);
}

// Namespace namespace_d395170f/namespace_d395170f
// Params 1, eflags: 0x6 linked
// Checksum 0x3372edd3, Offset: 0x2f0
// Size: 0x52
function private _on_player_spawned(*localclientnum) {
    if (!isdefined(level._fx)) {
        level._fx = {};
    }
    if (!isdefined(level._fx.player)) {
        level._fx.player = self;
    }
}

/#

    // Namespace namespace_d395170f/namespace_d395170f
    // Params 1, eflags: 0x4
    // Checksum 0x875540fe, Offset: 0x350
    // Size: 0x1dc
    function private function_2c3c4513(parms) {
        if (parms.value == 1) {
            setdvar(#"hash_1ccb34f428b1a279", 0);
            level._fx.player val::set(#"hash_2636d41164c271c", "<unknown string>", 0);
            level._fx.player val::set(#"hash_2636d41164c271c", "<unknown string>", 1);
            level._fx.player val::set(#"hash_2636d41164c271c", "<unknown string>", 1);
            level._fx.player val::set(#"hash_2636d41164c271c", "<unknown string>", 1);
            adddebugcommand("<unknown string>");
            adddebugcommand("<unknown string>");
            function_28539d53();
            return;
        }
        function_7e383fce();
        adddebugcommand("<unknown string>");
        level._fx.player val::reset_all(#"hash_2636d41164c271c");
    }

    // Namespace namespace_d395170f/namespace_d395170f
    // Params 0, eflags: 0x4
    // Checksum 0x839b265a, Offset: 0x538
    // Size: 0x7a4
    function private function_28539d53() {
        if (!isdefined(level._fx.var_7b96a5ce)) {
            level._fx.var_7b96a5ce = {};
        }
        if (!isdefined(level._fx.var_7b96a5ce.var_fb619bb2)) {
            level._fx.var_7b96a5ce.var_fb619bb2 = 1;
        }
        if (!isdefined(level._fx.var_7b96a5ce.data)) {
            level._fx.var_7b96a5ce.data = [];
        }
        if (!isdefined(level._fx.var_7b96a5ce.input)) {
            level._fx.var_7b96a5ce.input = {};
        }
        data = [];
        data[0] = function_7f9a08f5("<unknown string>", 0, 0, 10000, &function_3fbf6d4d);
        data[1] = function_7f9a08f5("<unknown string>", 1, 0.1, 999, &function_8e3051ee);
        data[2] = function_7f9a08f5("<unknown string>", 0, -1, 999, &function_5cc62c3a);
        data[3] = function_7f9a08f5("<unknown string>", -1, -1, 999, &function_41f9427c);
        data[4] = function_7f9a08f5("<unknown string>", 1, 0, 100, &function_640e61ea);
        data[5] = function_7f9a08f5("<unknown string>", 5, 0, 100, undefined);
        data[6] = function_7f9a08f5("<unknown string>", 0, 0, 100, &function_640e61ea);
        data[7] = function_7f9a08f5("<unknown string>", 0, 0, 100, undefined);
        data[8] = function_7f9a08f5("<unknown string>", 0, 0, 100, &function_640e61ea);
        data[9] = function_7f9a08f5("<unknown string>", 0, 0, 100, undefined);
        data[10] = function_7f9a08f5("<unknown string>", 2, 0.1, 100, undefined);
        level._fx.var_7b96a5ce.data = data;
        namespace_61e6d095::create(#"hash_579637b8c2a4ab78", #"hash_758c0eb59e11c69d");
        if (namespace_61e6d095::exists(#"hash_579637b8c2a4ab78")) {
            namespace_61e6d095::function_9ade1d9b(#"hash_579637b8c2a4ab78", "<unknown string>", int(level._fx.var_7b96a5ce.var_fb619bb2));
            for (i = 0; i < level._fx.var_7b96a5ce.data.size; i++) {
                namespace_61e6d095::set_count(#"hash_579637b8c2a4ab78", i);
                namespace_61e6d095::function_f2a9266(#"hash_579637b8c2a4ab78", i, "<unknown string>", 0);
                namespace_61e6d095::function_f2a9266(#"hash_579637b8c2a4ab78", i, "<unknown string>", 0);
                namespace_61e6d095::function_f2a9266(#"hash_579637b8c2a4ab78", i, "<unknown string>", level._fx.var_7b96a5ce.data[i].name);
                namespace_61e6d095::function_f2a9266(#"hash_579637b8c2a4ab78", i, "<unknown string>", string(level._fx.var_7b96a5ce.data[i].value, 1));
                _set_value(i, level._fx.var_7b96a5ce.data[i].value, 1);
            }
            function_d885deda(0);
            level thread function_f46326c5();
            buttons = [];
            buttons[buttons.size] = "<unknown string>";
            buttons[buttons.size] = "<unknown string>";
            buttons[buttons.size] = "<unknown string>";
            buttons[buttons.size] = "<unknown string>";
            buttons[buttons.size] = "<unknown string>";
            buttons[buttons.size] = "<unknown string>";
            buttons[buttons.size] = "<unknown string>";
            buttons[buttons.size] = "<unknown string>";
            buttons[buttons.size] = "<unknown string>";
            level._fx.player thread function_5402d440(level._fx.var_7b96a5ce.input, buttons);
            level._fx.player thread function_a11a465a(level._fx.var_7b96a5ce.input);
        }
    }

    // Namespace namespace_d395170f/namespace_d395170f
    // Params 0, eflags: 0x4
    // Checksum 0x42a3eb18, Offset: 0xce8
    // Size: 0xbe
    function private function_7e383fce() {
        level notify(#"hash_47e0ed0d8fb144dc");
        if (namespace_61e6d095::exists(#"hash_579637b8c2a4ab78")) {
            namespace_61e6d095::remove(#"hash_579637b8c2a4ab78");
        }
        if (isdefined(level._fx.var_7b96a5ce.var_4f5ffab2)) {
            level._fx.var_7b96a5ce.var_4f5ffab2 delete();
        }
        level._fx.var_7b96a5ce = undefined;
    }

    // Namespace namespace_d395170f/namespace_d395170f
    // Params 5, eflags: 0x4
    // Checksum 0x5cfe01f5, Offset: 0xdb0
    // Size: 0x9c
    function private function_7f9a08f5(name, value, min, max, func) {
        if (!isdefined(func)) {
            func = undefined;
        }
        struct = {};
        struct.name = name;
        struct.value = value;
        struct.min = min;
        struct.max = max;
        struct.func = func;
        struct.iserror = 0;
        return struct;
    }

    // Namespace namespace_d395170f/namespace_d395170f
    // Params 2, eflags: 0x4
    // Checksum 0x2bc5201b, Offset: 0xe58
    // Size: 0x17a
    function private function_5402d440(input, buttons) {
        self notify("<unknown string>");
        self endon("<unknown string>");
        level endon(#"hash_47e0ed0d8fb144dc");
        while (true) {
            foreach (button in buttons) {
                input.(button + "<unknown string>") = input.(button);
                input.(button) = self buttonpressed(button);
                if (input.(button) && !isdefined(input.(button + "<unknown string>"))) {
                    input.(button + "<unknown string>") = gettime();
                }
                if (!input.(button)) {
                    input.(button + "<unknown string>") = undefined;
                }
            }
            waitframe(1);
        }
    }

    // Namespace namespace_d395170f/namespace_d395170f
    // Params 1, eflags: 0x4
    // Checksum 0x591739ec, Offset: 0xfe0
    // Size: 0x44c
    function private function_a11a465a(input) {
        self notify("<unknown string>");
        self endon("<unknown string>");
        level endon(#"hash_47e0ed0d8fb144dc");
        while (true) {
            selection = isdefined(level._fx.var_7b96a5ce.selection) ? level._fx.var_7b96a5ce.selection : 0;
            current_time = gettime();
            var_5b49269e = getdvarint(#"hash_1c94e0c8a0d5dd72", 100);
            increment = 1;
            var_6738a51d = level._fx.var_7b96a5ce.data[1].value * 1000;
            if (input.button_ltrig) {
                increment = 0.1;
            }
            if (input.button_rtrig) {
                increment = 10;
            }
            if (input.button_ltrig && input.button_rtrig) {
                increment = 100;
            }
            if (input.dpad_left && !input.var_16788062 || isdefined(input.var_aaaaeef4) && current_time - input.var_aaaaeef4 > var_5b49269e) {
                selection--;
                function_d885deda(selection);
                input.var_aaaaeef4 = current_time + var_5b49269e;
            }
            if (input.dpad_right && !input.var_66d92101 || isdefined(input.var_f05fb7a0) && current_time - input.var_f05fb7a0 > var_5b49269e) {
                selection++;
                function_d885deda(selection);
                input.var_f05fb7a0 = current_time + var_5b49269e;
            }
            if (input.dpad_up && !input.var_df3d5273 || isdefined(input.var_58d265ea) && current_time - input.var_58d265ea > var_5b49269e) {
                function_b9049406(selection, increment);
            }
            if (input.dpad_down && !input.var_8a047c03 || isdefined(input.var_3c626fd) && current_time - input.var_3c626fd > var_5b49269e) {
                function_b9049406(selection, increment * -1);
            }
            if (input.button_x && !input.var_961b2129 || isdefined(input.var_eaa99449) && current_time - input.var_eaa99449 > var_5b49269e) {
                function_137a0af2();
                input.var_eaa99449 = current_time + var_5b49269e;
            }
            if (input.button_y && !input.var_d356f692 || isdefined(input.var_6a06b2b8) && current_time - input.var_6a06b2b8 > var_5b49269e + var_6738a51d) {
                function_8cd46b76();
                input.var_6a06b2b8 = current_time + var_5b49269e + var_6738a51d;
            }
            if (input.button_rstick && !input.var_d03fde02 || isdefined(input.var_9c4f3609) && current_time - input.var_9c4f3609 > var_5b49269e) {
                function_10175386();
                input.var_9c4f3609 = current_time + var_5b49269e;
            }
            waitframe(1);
        }
    }

    // Namespace namespace_d395170f/namespace_d395170f
    // Params 1, eflags: 0x4
    // Checksum 0xea37683, Offset: 0x1438
    // Size: 0x152
    function private function_d885deda(selection) {
        level endon(#"hash_47e0ed0d8fb144dc");
        if (isdefined(level._fx.var_7b96a5ce.selection)) {
            namespace_61e6d095::function_f2a9266(#"hash_579637b8c2a4ab78", level._fx.var_7b96a5ce.selection, "<unknown string>", 0);
        }
        if (selection < 0) {
            selection = level._fx.var_7b96a5ce.data.size - 1;
        }
        if (selection >= level._fx.var_7b96a5ce.data.size) {
            selection = 0;
        }
        snd::play("<unknown string>", level._fx.player);
        namespace_61e6d095::function_f2a9266(#"hash_579637b8c2a4ab78", selection, "<unknown string>", 1);
        level._fx.var_7b96a5ce.selection = selection;
    }

    // Namespace namespace_d395170f/namespace_d395170f
    // Params 3, eflags: 0x4
    // Checksum 0xf5c3e12c, Offset: 0x1598
    // Size: 0x18e
    function private _set_value(index, newval, force_update) {
        if (!isdefined(force_update)) {
            force_update = 0;
        }
        level endon(#"hash_47e0ed0d8fb144dc");
        selected = level._fx.var_7b96a5ce.data[index];
        newval = _validate_value(index, newval);
        if (newval != selected.value || is_true(force_update)) {
            if (is_false(force_update)) {
                snd::play("<unknown string>", level._fx.player);
            }
            var_cb9bc389 = isdefined(selected.var_cb9bc389) ? selected.var_cb9bc389 : string(newval, 1);
            namespace_61e6d095::function_f2a9266(#"hash_579637b8c2a4ab78", index, "<unknown string>", var_cb9bc389);
            level._fx.var_7b96a5ce.data[index].value = newval;
        }
    }

    // Namespace namespace_d395170f/namespace_d395170f
    // Params 2, eflags: 0x4
    // Checksum 0x94527007, Offset: 0x1730
    // Size: 0x11e
    function private _validate_value(index, newval) {
        if (isdefined(level._fx.var_7b96a5ce.data[index].func)) {
            newval = [[ level._fx.var_7b96a5ce.data[index].func ]](index, newval);
        } else {
            newval = function_1ee8f56b(newval, level._fx.var_7b96a5ce.data[index].min, level._fx.var_7b96a5ce.data[index].max);
        }
        return round(newval * pow(10, 1)) / pow(10, 1);
    }

    // Namespace namespace_d395170f/namespace_d395170f
    // Params 3, eflags: 0x4
    // Checksum 0x942c9788, Offset: 0x1858
    // Size: 0x74
    function private function_b9049406(index, increment, *force_update) {
        level endon(#"hash_47e0ed0d8fb144dc");
        _set_value(increment, level._fx.var_7b96a5ce.data[increment].value + force_update);
    }

    // Namespace namespace_d395170f/namespace_d395170f
    // Params 0, eflags: 0x4
    // Checksum 0x79409a10, Offset: 0x18d8
    // Size: 0x33c
    function private function_8cd46b76() {
        level endon(#"hash_47e0ed0d8fb144dc");
        if (!isdefined(level._fx.var_7b96a5ce.var_4f5ffab2)) {
            function_137a0af2();
        }
        var_4f5ffab2 = level._fx.var_7b96a5ce.var_4f5ffab2.origin;
        radius = level._fx.var_7b96a5ce.data[0].value;
        duration = level._fx.var_7b96a5ce.data[1].value;
        var_3fa2cc2f = level._fx.var_7b96a5ce.data[2].value;
        var_83ccc1d1 = level._fx.var_7b96a5ce.data[3].value;
        var_3f56d066 = level._fx.var_7b96a5ce.data[4].value;
        var_e0be7076 = level._fx.var_7b96a5ce.data[5].value;
        var_1ccf696c = level._fx.var_7b96a5ce.data[6].value;
        var_38fcd26f = level._fx.var_7b96a5ce.data[7].value;
        var_1ef3c0f = level._fx.var_7b96a5ce.data[8].value;
        var_74e9b7eb = level._fx.var_7b96a5ce.data[9].value;
        exponent = level._fx.var_7b96a5ce.data[10].value;
        screenshake(var_4f5ffab2, var_3f56d066, var_1ccf696c, var_1ef3c0f, duration, var_3fa2cc2f, var_83ccc1d1, radius, var_e0be7076, var_38fcd26f, var_74e9b7eb, exponent);
        function_4e1b4554(var_4f5ffab2, var_3f56d066, var_1ccf696c, var_1ef3c0f, duration, var_3fa2cc2f, var_83ccc1d1, radius, var_e0be7076, var_38fcd26f, var_74e9b7eb, exponent);
        if (is_true(level._fx.var_7b96a5ce.var_fb619bb2)) {
            physicsexplosionsphere(var_4f5ffab2, int(radius), 0, 1);
        }
    }

    // Namespace namespace_d395170f/namespace_d395170f
    // Params 0, eflags: 0x4
    // Checksum 0x50e7d5a, Offset: 0x1c20
    // Size: 0x1b2
    function private function_137a0af2() {
        level endon(#"hash_47e0ed0d8fb144dc");
        start = level._fx.player geteye();
        end = start + anglestoforward(level._fx.player getplayerangles()) * 1000;
        trace = bullettrace(start, end, 1, level._fx.player);
        if (isdefined(trace[#"position"])) {
            if (isdefined(level._fx.var_7b96a5ce.var_4f5ffab2)) {
                level._fx.var_7b96a5ce.var_4f5ffab2.origin = trace[#"position"];
                level._fx.var_7b96a5ce.var_4f5ffab2.angles = trace[#"normal"];
                return;
            }
            level._fx.var_7b96a5ce.var_4f5ffab2 = util::spawn_model("<unknown string>", trace[#"position"], trace[#"normal"]);
        }
    }

    // Namespace namespace_d395170f/namespace_d395170f
    // Params 0, eflags: 0x4
    // Checksum 0xf5690db9, Offset: 0x1de0
    // Size: 0xa4
    function private function_10175386() {
        level endon(#"hash_47e0ed0d8fb144dc");
        level._fx.var_7b96a5ce.var_fb619bb2 = !level._fx.var_7b96a5ce.var_fb619bb2;
        namespace_61e6d095::function_9ade1d9b(#"hash_579637b8c2a4ab78", "<unknown string>", int(level._fx.var_7b96a5ce.var_fb619bb2));
    }

    // Namespace namespace_d395170f/namespace_d395170f
    // Params 0, eflags: 0x4
    // Checksum 0xdcc33f34, Offset: 0x1e90
    // Size: 0x186
    function private function_f46326c5() {
        self notify("<unknown string>");
        self endon("<unknown string>");
        level endon(#"hash_47e0ed0d8fb144dc");
        while (true) {
            if (isdefined(level._fx.var_7b96a5ce.var_4f5ffab2)) {
                box(level._fx.var_7b96a5ce.var_4f5ffab2.origin, (-10, -10, -10), (10, 10, 10), 0, (0, 0, 0), 1, 0, 1);
                function_b95b9a60(level._fx.var_7b96a5ce.var_4f5ffab2.origin, level._fx.var_7b96a5ce.data[0].value, (1, 1, 1), 1, 0, 32, 1);
                debugstar(level._fx.var_7b96a5ce.var_4f5ffab2.origin, 1, (1, 0.65, 0), "<unknown string>", 0.5);
            }
            waitframe(1);
        }
    }

    // Namespace namespace_d395170f/namespace_d395170f
    // Params 12, eflags: 0x4
    // Checksum 0x548c3232, Offset: 0x2020
    // Size: 0x1bc
    function private function_4e1b4554(origin, var_3f56d066, var_1ccf696c, var_1ef3c0f, duration, var_3fa2cc2f, var_83ccc1d1, radius, var_e0be7076, var_38fcd26f, var_74e9b7eb, exponent) {
        header = "<unknown string>";
        footer = "<unknown string>";
        comma = "<unknown string>";
        output = "<unknown string>" + origin + "<unknown string>";
        output += var_3f56d066 + comma;
        output += var_1ccf696c + comma;
        output += var_1ef3c0f + comma;
        output += duration + comma;
        output += var_3fa2cc2f + comma;
        output += var_83ccc1d1 + comma;
        output += radius + comma;
        output += var_e0be7076 + comma;
        output += var_38fcd26f + comma;
        output += var_74e9b7eb + comma;
        output += exponent + "<unknown string>";
        println(header);
        println(output);
        println(footer);
    }

    // Namespace namespace_d395170f/namespace_d395170f
    // Params 2, eflags: 0x4
    // Checksum 0xfd70a6f5, Offset: 0x21e8
    // Size: 0x114
    function private function_fdbd2395(var_15065e92, message) {
        level endon(#"hash_47e0ed0d8fb144dc");
        snd::play("<unknown string>", level._fx.player);
        if (isarray(var_15065e92)) {
            foreach (val in var_15065e92) {
                level thread function_c6c530d1(val, message);
            }
            return;
        }
        level thread function_c6c530d1(var_15065e92, message);
    }

    // Namespace namespace_d395170f/namespace_d395170f
    // Params 2, eflags: 0x4
    // Checksum 0xd21c072c, Offset: 0x2308
    // Size: 0x19e
    function private function_c6c530d1(var_a03e23a6, message) {
        level endon(#"hash_47e0ed0d8fb144dc");
        if (is_true(level._fx.var_7b96a5ce.data[var_a03e23a6].iserror)) {
            return;
        }
        namespace_61e6d095::function_f2a9266(#"hash_579637b8c2a4ab78", var_a03e23a6, "<unknown string>", 1);
        namespace_61e6d095::function_f2a9266(#"hash_579637b8c2a4ab78", var_a03e23a6, "<unknown string>", message);
        level._fx.var_7b96a5ce.data[var_a03e23a6].iserror = 1;
        wait(1);
        namespace_61e6d095::function_f2a9266(#"hash_579637b8c2a4ab78", var_a03e23a6, "<unknown string>", 0);
        namespace_61e6d095::function_f2a9266(#"hash_579637b8c2a4ab78", var_a03e23a6, "<unknown string>", level._fx.var_7b96a5ce.data[var_a03e23a6].name);
        level._fx.var_7b96a5ce.data[var_a03e23a6].iserror = 0;
    }

    // Namespace namespace_d395170f/namespace_d395170f
    // Params 3, eflags: 0x4
    // Checksum 0x9d46300f, Offset: 0x24b0
    // Size: 0x8c
    function private function_1ee8f56b(value, min, max) {
        level endon(#"hash_47e0ed0d8fb144dc");
        if (value < min || value > max) {
            snd::play("<unknown string>", level._fx.player);
        }
        return math::clamp(value, min, max);
    }

    // Namespace namespace_d395170f/namespace_d395170f
    // Params 2, eflags: 0x4
    // Checksum 0x3b4c5fdf, Offset: 0x2548
    // Size: 0xf4
    function private function_3fbf6d4d(selection, newval) {
        level endon(#"hash_47e0ed0d8fb144dc");
        newval = function_1ee8f56b(newval, level._fx.var_7b96a5ce.data[selection].min, level._fx.var_7b96a5ce.data[selection].max);
        if (newval == 0) {
            level._fx.var_7b96a5ce.data[selection].var_cb9bc389 = "<unknown string>";
        } else {
            level._fx.var_7b96a5ce.data[selection].var_cb9bc389 = undefined;
        }
        return newval;
    }

    // Namespace namespace_d395170f/namespace_d395170f
    // Params 2, eflags: 0x4
    // Checksum 0x62cdaa2e, Offset: 0x2648
    // Size: 0x12c
    function private function_8e3051ee(selection, newval) {
        level endon(#"hash_47e0ed0d8fb144dc");
        duration = level._fx.var_7b96a5ce.data[selection];
        var_a944706 = level._fx.var_7b96a5ce.data[2].value + level._fx.var_7b96a5ce.data[3].value;
        increment = newval - selection;
        if (var_a944706 > newval) {
            function_fdbd2395([2, 3], "<unknown string>");
            newval = var_a944706;
        }
        return function_1ee8f56b(newval, duration.min, duration.max);
    }

    // Namespace namespace_d395170f/namespace_d395170f
    // Params 2, eflags: 0x4
    // Checksum 0x4c591f97, Offset: 0x2780
    // Size: 0x17c
    function private function_5cc62c3a(selection, newval) {
        level endon(#"hash_47e0ed0d8fb144dc");
        var_3fa2cc2f = level._fx.var_7b96a5ce.data[selection];
        var_83ccc1d1 = level._fx.var_7b96a5ce.data[3];
        duration = level._fx.var_7b96a5ce.data[1];
        var_a944706 = math::clamp(newval, 0, var_3fa2cc2f.max) + math::clamp(var_83ccc1d1.value, 0, var_83ccc1d1.max);
        if (var_a944706 > duration.value) {
            function_fdbd2395([1, 3], "<unknown string>");
            newval = var_3fa2cc2f.value;
        }
        return function_1ee8f56b(newval, var_3fa2cc2f.min, var_3fa2cc2f.max);
    }

    // Namespace namespace_d395170f/namespace_d395170f
    // Params 2, eflags: 0x4
    // Checksum 0x4812763c, Offset: 0x2908
    // Size: 0x17c
    function private function_41f9427c(selection, newval) {
        level endon(#"hash_47e0ed0d8fb144dc");
        var_3fa2cc2f = level._fx.var_7b96a5ce.data[2];
        var_83ccc1d1 = level._fx.var_7b96a5ce.data[selection];
        duration = level._fx.var_7b96a5ce.data[1];
        var_a944706 = math::clamp(newval, 0, var_83ccc1d1.max) + math::clamp(var_3fa2cc2f.value, 0, var_3fa2cc2f.max);
        if (var_a944706 > duration.value) {
            function_fdbd2395([1, 2], "<unknown string>");
            newval = var_83ccc1d1.value;
        }
        return function_1ee8f56b(newval, var_83ccc1d1.min, var_83ccc1d1.max);
    }

    // Namespace namespace_d395170f/namespace_d395170f
    // Params 2, eflags: 0x4
    // Checksum 0x2a51f01b, Offset: 0x2a90
    // Size: 0x204
    function private function_640e61ea(selection, newval) {
        level endon(#"hash_47e0ed0d8fb144dc");
        selected = level._fx.var_7b96a5ce.data[selection];
        var_3f56d066 = selection == 4 ? newval : level._fx.var_7b96a5ce.data[4].value;
        var_1ccf696c = selection == 6 ? newval : level._fx.var_7b96a5ce.data[6].value;
        var_1ef3c0f = selection == 8 ? newval : level._fx.var_7b96a5ce.data[8].value;
        if (var_3f56d066 == 0 && var_1ccf696c == 0 && var_1ef3c0f == 0) {
            var_15065e92 = [];
            var_15065e92[var_15065e92.size] = 4;
            var_15065e92[var_15065e92.size] = 6;
            var_15065e92[var_15065e92.size] = 8;
            var_15065e92 = array::exclude(var_15065e92, selection);
            function_fdbd2395(var_15065e92, "<unknown string>");
            newval = selected.value;
        }
        return function_1ee8f56b(newval, selected.min, selected.max);
    }

#/
