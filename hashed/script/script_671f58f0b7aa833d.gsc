// Atian COD Tools GSC CW decompiler test
#using script_35ae72be7b4fec10;
#using script_3dc93ca9902a9cda;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_9fe28d6e;

// Namespace namespace_9fe28d6e/namespace_9fe28d6e
// Params 0, eflags: 0x5
// Checksum 0xad3d5f5, Offset: 0x100
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_38469cb55dd6355a", &_preload, &function_fa076c68, undefined, undefined);
}

// Namespace namespace_9fe28d6e/namespace_9fe28d6e
// Params 0, eflags: 0x6 linked
// Checksum 0xba7a07ee, Offset: 0x158
// Size: 0x34
function private _preload() {
    function_ad272ef4();
    function_90ceecf8();
    function_7c9b0132();
}

// Namespace namespace_9fe28d6e/namespace_9fe28d6e
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x198
// Size: 0x4
function private function_fa076c68() {
    
}

// Namespace namespace_9fe28d6e/namespace_9fe28d6e
// Params 0, eflags: 0x6 linked
// Checksum 0xc3a9a02e, Offset: 0x1a8
// Size: 0xba
function private function_ad272ef4() {
    if (!isdefined(level._fx)) {
        level._fx = {};
    }
    if (!isdefined(level._fx.ambientwar)) {
        level._fx.ambientwar = {};
    }
    if (!isdefined(level._fx.ambientwar.data)) {
        level._fx.ambientwar.data = [];
    }
    if (!isdefined(level._fx.ambientwar.input)) {
        level._fx.ambientwar.input = {};
    }
}

// Namespace namespace_9fe28d6e/namespace_9fe28d6e
// Params 0, eflags: 0x6 linked
// Checksum 0x1c622e04, Offset: 0x270
// Size: 0xac
function private function_7c9b0132() {
    /#
        function_5ac4dc99(#"hash_1ccb34f428b1a279", 0);
        function_cd140ee9(#"hash_1ccb34f428b1a279", &function_93945397);
        function_5ac4dc99(#"hash_6d342deda30a228a", 100);
        function_5ac4dc99(#"hash_79ddea850d94a804", 0.5);
    #/
}

// Namespace namespace_9fe28d6e/namespace_9fe28d6e
// Params 0, eflags: 0x6 linked
// Checksum 0xc262374c, Offset: 0x328
// Size: 0x24
function private function_90ceecf8() {
    callback::on_spawned(&_on_player_spawned);
}

// Namespace namespace_9fe28d6e/namespace_9fe28d6e
// Params 1, eflags: 0x6 linked
// Checksum 0x32f22bd2, Offset: 0x358
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

    // Namespace namespace_9fe28d6e/namespace_9fe28d6e
    // Params 1, eflags: 0x4
    // Checksum 0x1d712b23, Offset: 0x3b8
    // Size: 0x1dc
    function private function_93945397(parms) {
        if (parms.value == 1) {
            setdvar(#"hash_1614a5a56768d221", 0);
            level._fx.player val::set(#"hash_36c3761ec21ee4ac", "<unknown string>", 0);
            level._fx.player val::set(#"hash_36c3761ec21ee4ac", "<unknown string>", 1);
            level._fx.player val::set(#"hash_36c3761ec21ee4ac", "<unknown string>", 1);
            level._fx.player val::set(#"hash_36c3761ec21ee4ac", "<unknown string>", 1);
            adddebugcommand("<unknown string>");
            adddebugcommand("<unknown string>");
            function_8af93a7();
            return;
        }
        function_263df0ea();
        adddebugcommand("<unknown string>");
        level._fx.player val::reset_all(#"hash_36c3761ec21ee4ac");
    }

    // Namespace namespace_9fe28d6e/namespace_9fe28d6e
    // Params 0, eflags: 0x4
    // Checksum 0x621c7883, Offset: 0x5a0
    // Size: 0x21c
    function private function_8af93a7() {
        namespace_61e6d095::create(#"hash_2f8c229e8241a3a0", #"hash_355d1782cf92b25");
        if (namespace_61e6d095::exists(#"hash_2f8c229e8241a3a0")) {
            if (!isdefined(level._fx.ambientwar)) {
                level._fx.ambientwar = {};
            }
            if (!isdefined(level._fx.ambientwar.data)) {
                level._fx.ambientwar.data = [];
            }
            if (!isdefined(level._fx.ambientwar.input)) {
                level._fx.ambientwar.input = {};
            }
            level._fx.ambientwar.var_bebc9d74 = 0;
            level thread function_56e7d0e3();
            function_d885deda(0);
            level thread function_2e225b16();
            buttons = [];
            buttons[buttons.size] = "<unknown string>";
            buttons[buttons.size] = "<unknown string>";
            buttons[buttons.size] = "<unknown string>";
            level._fx.player thread function_5402d440(level._fx.ambientwar.input, buttons);
            level._fx.player thread function_a11a465a(level._fx.ambientwar.input);
        }
    }

    // Namespace namespace_9fe28d6e/namespace_9fe28d6e
    // Params 0, eflags: 0x4
    // Checksum 0xf4e0fce7, Offset: 0x7c8
    // Size: 0x418
    function private function_56e7d0e3() {
        self notify("<unknown string>");
        self endon("<unknown string>");
        level endon(#"hash_d28501bd896672c");
        while (true) {
            if (namespace_61e6d095::exists(#"hash_2f8c229e8241a3a0")) {
                for (i = 0; i < level._fx.ambientwar.var_bebc9d74; i++) {
                    namespace_61e6d095::function_7239e030(#"hash_2f8c229e8241a3a0", i);
                }
                count = 0;
                foreach (entry in level._fx.ambientwar.data) {
                    namespace_61e6d095::set_count(#"hash_2f8c229e8241a3a0", count);
                    namespace_61e6d095::function_f2a9266(#"hash_2f8c229e8241a3a0", count, "<unknown string>", entry.var_c6bf081d);
                    namespace_61e6d095::function_f2a9266(#"hash_2f8c229e8241a3a0", count, "<unknown string>", entry.is_active);
                    namespace_61e6d095::function_f2a9266(#"hash_2f8c229e8241a3a0", count, "<unknown string>", entry.group_id);
                    namespace_61e6d095::function_f2a9266(#"hash_2f8c229e8241a3a0", count, "<unknown string>", entry.locations.size);
                    namespace_61e6d095::function_f2a9266(#"hash_2f8c229e8241a3a0", count, "<unknown string>", string(float(entry.distance.min), 1));
                    namespace_61e6d095::function_f2a9266(#"hash_2f8c229e8241a3a0", count, "<unknown string>", string(float(entry.distance.max), 1));
                    namespace_61e6d095::function_f2a9266(#"hash_2f8c229e8241a3a0", count, "<unknown string>", string(float(entry.delay.min), 1));
                    namespace_61e6d095::function_f2a9266(#"hash_2f8c229e8241a3a0", count, "<unknown string>", string(float(entry.delay.max), 1));
                    count++;
                }
                level._fx.ambientwar.var_bebc9d74 = count;
            }
            level waittill(#"hash_51a762912b76bdc1");
        }
    }

    // Namespace namespace_9fe28d6e/namespace_9fe28d6e
    // Params 0, eflags: 0x4
    // Checksum 0xa3d66232, Offset: 0xbe8
    // Size: 0x64
    function private function_263df0ea() {
        level notify(#"hash_d28501bd896672c");
        if (namespace_61e6d095::exists(#"hash_2f8c229e8241a3a0")) {
            namespace_61e6d095::remove(#"hash_2f8c229e8241a3a0");
        }
    }

    // Namespace namespace_9fe28d6e/namespace_9fe28d6e
    // Params 2, eflags: 0x4
    // Checksum 0x8a6dd4e, Offset: 0xc58
    // Size: 0x15a
    function private function_5402d440(input, buttons) {
        level endon(#"hash_d28501bd896672c");
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

    // Namespace namespace_9fe28d6e/namespace_9fe28d6e
    // Params 1, eflags: 0x4
    // Checksum 0x95d187da, Offset: 0xdc0
    // Size: 0x224
    function private function_a11a465a(input) {
        self notify("<unknown string>");
        self endon("<unknown string>");
        level endon(#"hash_d28501bd896672c");
        while (true) {
            selection = isdefined(level._fx.ambientwar.selection) ? level._fx.ambientwar.selection : 0;
            current_time = gettime();
            var_5b49269e = getdvarint(#"hash_6d342deda30a228a", 100);
            if (input.dpad_up && !input.var_df3d5273 || isdefined(input.var_58d265ea) && current_time - input.var_58d265ea > var_5b49269e) {
                selection--;
                function_d885deda(selection);
                input.var_58d265ea = current_time + var_5b49269e;
            }
            if (input.dpad_down && !input.var_8a047c03 || isdefined(input.var_3c626fd) && current_time - input.var_3c626fd > var_5b49269e) {
                selection++;
                function_d885deda(selection);
                input.var_3c626fd = current_time + var_5b49269e;
            }
            if (input.button_y && !input.var_d356f692 || isdefined(input.var_6a06b2b8) && current_time - input.var_6a06b2b8 > var_5b49269e) {
                toggle(function_be6420e7(selection));
                input.var_6a06b2b8 = current_time + var_5b49269e;
            }
            waitframe(1);
        }
    }

    // Namespace namespace_9fe28d6e/namespace_9fe28d6e
    // Params 1, eflags: 0x4
    // Checksum 0x147e50e, Offset: 0xff0
    // Size: 0x1da
    function private function_d885deda(selection) {
        level endon(#"hash_d28501bd896672c");
        if (isdefined(level._fx.ambientwar.selection)) {
            level._fx.ambientwar.data[function_be6420e7(level._fx.ambientwar.selection)].var_c6bf081d = 0;
            namespace_61e6d095::function_f2a9266(#"hash_2f8c229e8241a3a0", level._fx.ambientwar.selection, "<unknown string>", 0);
        }
        if (selection < 0) {
            selection = level._fx.ambientwar.data.size - 1;
        }
        if (selection >= level._fx.ambientwar.data.size) {
            selection = 0;
        }
        snd::play("<unknown string>", level._fx.player);
        level._fx.ambientwar.data[function_be6420e7(selection)].var_c6bf081d = 1;
        namespace_61e6d095::function_f2a9266(#"hash_2f8c229e8241a3a0", selection, "<unknown string>", 1);
        level._fx.ambientwar.selection = selection;
    }

    // Namespace namespace_9fe28d6e/namespace_9fe28d6e
    // Params 0, eflags: 0x4
    // Checksum 0xd110be15, Offset: 0x11d8
    // Size: 0x2be
    function private function_2e225b16() {
        self notify("<unknown string>");
        self endon("<unknown string>");
        level endon(#"hash_d28501bd896672c");
        while (true) {
            if (isdefined(level._fx.ambientwar.selection)) {
                selection = level._fx.ambientwar.selection;
                group_id = function_be6420e7(selection);
                locations = level._fx.ambientwar.data[group_id].locations;
                distance = level._fx.ambientwar.data[group_id].distance;
                for (i = 0; i < locations.size; i++) {
                    box(locations[i].origin, (-5, -5, -5), (5, 5, 5), locations[i].angles, (0, 0, 0), 1, 0, 1);
                    debugaxis(locations[i].origin, locations[i].angles, 16, 1, 0, 1);
                    if (function_1913c46(locations[i])) {
                        circle(locations[i].origin, locations[i].var_c9dbde14, (1, 0.65, 0), 0, 1, 1);
                    }
                    if (isdefined(level._fx.player.origin)) {
                        circle(level._fx.player.origin, distance.min, (0, 1, 0), 0, 1, 1);
                        circle(level._fx.player.origin, distance.max, (1, 0, 0), 0, 1, 1);
                    }
                }
            }
            waitframe(1);
        }
    }

#/

// Namespace namespace_9fe28d6e/namespace_9fe28d6e
// Params 1, eflags: 0x4
// Checksum 0xe5f077c0, Offset: 0x14a0
// Size: 0xb6
function private function_be6420e7(selection) {
    count = 0;
    foreach (entry in level._fx.ambientwar.data) {
        if (count == selection) {
            return entry.group_id;
        }
        count++;
    }
    return undefined;
}

// Namespace namespace_9fe28d6e/namespace_9fe28d6e
// Params 3, eflags: 0x6 linked
// Checksum 0x6718497d, Offset: 0x1560
// Size: 0xc4
function private function_20e12458(location, dist_min, dist_max) {
    if (!isdefined(level._fx.player.origin)) {
        return 0;
    }
    dist_sqr = distance2dsquared(level._fx.player.origin, location.origin);
    return dist_sqr >= sqr(dist_min) && dist_sqr <= sqr(dist_max) ? 1 : 0;
}

// Namespace namespace_9fe28d6e/namespace_9fe28d6e
// Params 2, eflags: 0x6 linked
// Checksum 0x742e070a, Offset: 0x1630
// Size: 0x82
function private function_4c6d8fd3(location, fov) {
    if (!isdefined(level._fx.player.origin)) {
        return 0;
    }
    return util::within_fov(level._fx.player.origin, level._fx.player.angles, location.origin, fov);
}

// Namespace namespace_9fe28d6e/namespace_9fe28d6e
// Params 1, eflags: 0x6 linked
// Checksum 0x88c7146f, Offset: 0x16c0
// Size: 0xa4
function private function_1913c46(location) {
    if (!isdefined(level._fx.player)) {
        return 0;
    }
    enemies = [];
    if (isdefined(location.var_c9dbde14) && location.var_c9dbde14 > 0) {
        enemies = level._fx.player getenemiesinradius(location.origin, location.var_c9dbde14);
    }
    return enemies.size < 0 ? 0 : 1;
}

// Namespace namespace_9fe28d6e/namespace_9fe28d6e
// Params 1, eflags: 0x6 linked
// Checksum 0xc3eb75b9, Offset: 0x1770
// Size: 0x506
function private function_613e65ee(group_id) {
    level endon("stop_ambientwar_" + group_id);
    delay = level._fx.ambientwar.data[group_id].delay;
    distance = level._fx.ambientwar.data[group_id].distance;
    locations = level._fx.ambientwar.data[group_id].locations;
    effects = level._fx.ambientwar.data[group_id].effects;
    if (locations.size <= 0) {
        return;
    }
    if (!isdefined(effects) || effects.size <= 0) {
        for (i = 0; i < locations.size; i++) {
            if (!isdefined(locations[i].var_b17f3758)) {
                arrayremoveindex(effects, i, 1);
            }
        }
        arrayremovevalue(locations, undefined);
    }
    while (locations.size > 0) {
        effect = undefined;
        var_f16d4896 = randomintrange(0, locations.size);
        var_5fd45f33 = locations[var_f16d4896];
        on_screen = function_4c6d8fd3(var_5fd45f33, 0.5);
        in_range = function_20e12458(var_5fd45f33, distance.min, distance.max);
        var_1bd0dc4d = function_1913c46(var_5fd45f33);
        if (is_true(on_screen) && is_true(in_range) && is_false(var_1bd0dc4d)) {
            if (isdefined(var_5fd45f33.var_b17f3758) && var_5fd45f33.var_b17f3758 != "") {
                effect = var_5fd45f33.var_b17f3758;
            } else {
                effect = effects[randomintrange(0, effects.size)];
            }
            if (isdefined(effect)) {
                playfx(effect, var_5fd45f33.origin, anglestoforward(var_5fd45f33.angles), anglestoup(var_5fd45f33.angles));
                /#
                    if (getdvarint(#"hash_1ccb34f428b1a279", 0) && function_be6420e7(level._fx.ambientwar.selection) == group_id) {
                        display_time = getdvarfloat(#"hash_79ddea850d94a804", 0.5) / float(function_60d95f53()) / 1000;
                        start = var_5fd45f33.origin + (0, 0, 20);
                        end = var_5fd45f33.origin + (0, 0, 100);
                        str = isdefined(var_5fd45f33.var_b17f3758) ? "<unknown string>" + effect : effect;
                        line(start, end, (1, 0.65, 0), 1, 0, int(display_time));
                        print3d(end, str, (1, 1, 1), 1, 0.5, int(display_time), 0);
                    }
                #/
                wait(randomfloatrange(delay.min, delay.max));
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_9fe28d6e/namespace_9fe28d6e
// Params 6, eflags: 0x0
// Checksum 0x70a0ee61, Offset: 0x1c80
// Size: 0x1b8
function create(group_id, var_6f2c5280 = undefined, min_delay = 0.5, max_delay = 1.5, min_dist = 100, max_dist = 1000) {
    delay = {};
    delay.min = min_delay;
    delay.max = max_delay;
    distance = {};
    distance.min = min_dist;
    distance.max = max_dist;
    struct = {};
    struct.var_c6bf081d = 0;
    struct.is_active = 0;
    struct.group_id = group_id;
    struct.locations = struct::get_array(group_id, "vfx_ambientwar_group_id");
    struct.effects = var_6f2c5280;
    struct.distance = distance;
    struct.delay = delay;
    if (isdefined(level._fx.ambientwar.data[group_id])) {
        return;
    }
    level._fx.ambientwar.data[group_id] = struct;
    /#
        level notify(#"hash_51a762912b76bdc1");
    #/
}

// Namespace namespace_9fe28d6e/namespace_9fe28d6e
// Params 1, eflags: 0x2 linked
// Checksum 0x1ec9f1e0, Offset: 0x1e40
// Size: 0x90
function start(group_id) {
    if (isdefined(level._fx.ambientwar.data[group_id])) {
        level._fx.ambientwar.data[group_id].is_active = 1;
        level thread function_613e65ee(group_id);
        /#
            level notify(#"hash_51a762912b76bdc1");
        #/
    }
}

// Namespace namespace_9fe28d6e/namespace_9fe28d6e
// Params 1, eflags: 0x2 linked
// Checksum 0x856e69e7, Offset: 0x1ed8
// Size: 0x88
function stop(group_id) {
    if (isdefined(level._fx.ambientwar.data[group_id])) {
        level notify("stop_ambientwar_" + group_id);
        level._fx.ambientwar.data[group_id].is_active = 0;
        /#
            level notify(#"hash_51a762912b76bdc1");
        #/
    }
}

// Namespace namespace_9fe28d6e/namespace_9fe28d6e
// Params 1, eflags: 0x0
// Checksum 0x80c5b1db, Offset: 0x1f68
// Size: 0xb0
function remove(group_id) {
    if (isdefined(level._fx.ambientwar.data[group_id])) {
        stop(group_id);
        level._fx.ambientwar.data[group_id] = undefined;
        arrayremovevalue(level._fx.ambientwar.data, undefined);
        /#
            level notify(#"hash_51a762912b76bdc1");
        #/
    }
}

// Namespace namespace_9fe28d6e/namespace_9fe28d6e
// Params 1, eflags: 0x0
// Checksum 0x95c4b62c, Offset: 0x2020
// Size: 0xb0
function toggle(group_id) {
    if (isdefined(level._fx.ambientwar.data[group_id])) {
        if (is_true(level._fx.ambientwar.data[group_id].is_active)) {
            stop(group_id);
        } else {
            start(group_id);
        }
        /#
            level notify(#"hash_51a762912b76bdc1");
        #/
    }
}

