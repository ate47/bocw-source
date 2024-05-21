// Atian COD Tools GSC CW decompiler test
#namespace debug_menu;

/#

    // Namespace debug_menu/debug_menu
    // Params 7, eflags: 0x0
    // Checksum 0xeac3b0f9, Offset: 0x80
    // Size: 0x17a
    function set_hudelem(text, x, y, scale, alpha, sort, debug_hudelem) {
        if (!isdefined(alpha)) {
            alpha = 1;
        }
        if (!isdefined(scale)) {
            scale = 1;
        }
        if (!isdefined(sort)) {
            sort = 20;
        }
        if (isdefined(level.player) && !isdefined(debug_hudelem)) {
            hud = newdebughudelem(level.player);
        } else {
            hud = newdebughudelem();
            hud.debug_hudelem = 1;
        }
        hud.location = 0;
        hud.alignx = "<unknown string>";
        hud.aligny = "<unknown string>";
        hud.foreground = 1;
        hud.fontscale = scale;
        hud.sort = sort;
        hud.alpha = alpha;
        hud.x = x;
        hud.y = y;
        hud.og_scale = scale;
        if (isdefined(text)) {
            hud settext(text);
        }
        return hud;
    }

    // Namespace debug_menu/debug_menu
    // Params 5, eflags: 0x0
    // Checksum 0x17d3919d, Offset: 0x208
    // Size: 0xc4
    function new_hud(hud_name, msg, x, y, scale) {
        if (!isdefined(level.hud_array)) {
            level.hud_array = [];
        }
        if (!isdefined(level.hud_array[hud_name])) {
            level.hud_array[hud_name] = [];
        }
        hud = set_hudelem(msg, x, y, scale);
        level.hud_array[hud_name][level.hud_array[hud_name].size] = hud;
        return hud;
    }

    // Namespace debug_menu/debug_menu
    // Params 1, eflags: 0x0
    // Checksum 0xc7c5071e, Offset: 0x2d8
    // Size: 0x8c
    function function_7cafeca(hud_name) {
        if (!isdefined(level.hud_array[hud_name])) {
            return;
        }
        huds = level.hud_array[hud_name];
        for (i = 0; i < huds.size; i++) {
            function_2a064f4f(huds[i]);
        }
        level.hud_array[hud_name] = undefined;
    }

    // Namespace debug_menu/debug_menu
    // Params 1, eflags: 0x0
    // Checksum 0x71824801, Offset: 0x370
    // Size: 0x2c
    function function_2a064f4f(hud) {
        if (isdefined(hud)) {
            hud destroy();
        }
    }

#/
