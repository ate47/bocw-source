// Atian COD Tools GSC CW decompiler test
#using script_1da833573eb80e61;
#using script_2feaeed9ab01d6f7;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace lui;

// Namespace lui
// Method(s) 13 Total 13
class cluielem {

    var var_47d8642e;
    var var_779239b4;
    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace cluielem/lui_shared
    // Params 0, eflags: 0xa linked
    // Checksum 0x8b91af5d, Offset: 0x778
    // Size: 0x2a
    constructor() {
        var_d5213cbb = "";
        var_bf9c8c95 = undefined;
        var_779239b4 = 0;
    }

    // Namespace cluielem/lui_shared
    // Params 0, eflags: 0x82 linked class_linked
    // Checksum 0x7a7fe23c, Offset: 0x7b0
    // Size: 0x96
    function destructor() {
        if (lui::function_4206783a() && isdefined(var_d5213cbb) && var_d5213cbb != "" && isdefined(level.var_a706401b[hash(var_d5213cbb)][var_bf9c8c95])) {
            level.var_a706401b[hash(var_d5213cbb)][var_bf9c8c95] = undefined;
        }
    }

    // Namespace cluielem/lui_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x42ca241f, Offset: 0xed8
    // Size: 0x82
    function open(local_client_num) {
        assert(var_47d8642e, "<unknown string>");
        openluielem(local_client_num, hash(var_d5213cbb), var_bf9c8c95);
        function_fa582112(local_client_num);
        var_779239b4 = 1;
    }

    // Namespace cluielem/lui_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x94e4b8d, Offset: 0xfd8
    // Size: 0x6e
    function close(local_client_num) {
        assert(var_47d8642e, "<unknown string>");
        closeluielem(local_client_num, hash(var_d5213cbb), var_bf9c8c95);
        var_779239b4 = 0;
    }

    // Namespace cluielem/lui_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0xc89505fa, Offset: 0xd00
    // Size: 0x18e
    function register_clientside(menu_name) {
        if (!isdefined(level.var_c6881a61)) {
            level.var_c6881a61 = associativearray();
        }
        if (!isdefined(level.var_c6881a61[hash(menu_name)])) {
            level.var_c6881a61[hash(menu_name)] = 0;
        }
        var_d5213cbb = menu_name;
        var_bf9c8c95 = level.var_c6881a61[hash(menu_name)];
        level.var_c6881a61[hash(menu_name)]++;
        var_47d8642e = 1;
        if (lui::function_4206783a()) {
            if (!isdefined(level.var_a706401b)) {
                level.var_a706401b = associativearray();
            }
            if (!isdefined(level.var_a706401b[hash(menu_name)])) {
                level.var_a706401b[hash(menu_name)] = [];
            }
            level.var_a706401b[hash(menu_name)][var_bf9c8c95] = {#var_34327e5a:self};
        }
    }

    // Namespace cluielem/lui_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x14cec4, Offset: 0x850
    // Size: 0xda
    function setup_clientfields(menu_name) {
        if (!isdefined(level.var_f70b6db)) {
            level.var_f70b6db = associativearray();
        }
        if (!isdefined(level.var_f70b6db[hash(menu_name)])) {
            level.var_f70b6db[hash(menu_name)] = 0;
        }
        var_d5213cbb = menu_name;
        var_bf9c8c95 = level.var_f70b6db[hash(menu_name)];
        level.var_f70b6db[hash(menu_name)]++;
        var_47d8642e = 0;
    }

    // Namespace cluielem/lui_shared
    // Params 2, eflags: 0x2 linked
    // Checksum 0x3f5326c1, Offset: 0x1280
    // Size: 0x6a
    function get_data(local_client_num, field) {
        assert(var_47d8642e, "<unknown string>");
        return function_88759655(local_client_num, hash(var_d5213cbb), var_bf9c8c95, field);
    }

    // Namespace cluielem/lui_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x795b5e4e, Offset: 0x12f8
    // Size: 0x26c
    function function_cbca32d8(local_client_num) {
        if (lui::function_4206783a() && isdefined(level.var_a706401b[hash(var_d5213cbb)][var_bf9c8c95])) {
            data = level.var_a706401b[hash(var_d5213cbb)][var_bf9c8c95].data;
            if (isdefined(data)) {
                if (isdefined(local_client_num)) {
                    if (isdefined(data[local_client_num])) {
                        foreach (kvp in data[local_client_num]) {
                            function_bcc2134a(local_client_num, hash(var_d5213cbb), var_bf9c8c95, kvp.field, kvp.value);
                        }
                    }
                    return;
                }
                foreach (local_client_num in data) {
                    foreach (kvp in data[local_client_num]) {
                        function_bcc2134a(local_client_num, hash(var_d5213cbb), var_bf9c8c95, kvp.field, kvp.value);
                    }
                }
            }
        }
    }

    // Namespace cluielem/lui_shared
    // Params 3, eflags: 0x2 linked
    // Checksum 0xd2c4c68a, Offset: 0x1050
    // Size: 0x222
    function set_data(local_client_num, field, value) {
        assert(var_47d8642e, "<unknown string>");
        function_bcc2134a(local_client_num, hash(var_d5213cbb), var_bf9c8c95, field, value);
        if (lui::function_4206783a() && !level flag::get(#"hash_31f7d14ea61c9b88") && isdefined(level.var_a706401b[hash(var_d5213cbb)][var_bf9c8c95])) {
            if (!isdefined(level.var_a706401b[hash(var_d5213cbb)][var_bf9c8c95].data)) {
                level.var_a706401b[hash(var_d5213cbb)][var_bf9c8c95].data = [];
            }
            if (!isdefined(level.var_a706401b[hash(var_d5213cbb)][var_bf9c8c95].data[local_client_num])) {
                level.var_a706401b[hash(var_d5213cbb)][var_bf9c8c95].data[local_client_num] = [];
            }
            level.var_a706401b[hash(var_d5213cbb)][var_bf9c8c95].data[local_client_num][field] = {#field:field, #value:value};
        }
    }

    // Namespace cluielem/lui_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0xb66aa312, Offset: 0xf68
    // Size: 0x62
    function is_open(local_client_num) {
        assert(var_47d8642e, "<unknown string>");
        return isluielemopen(local_client_num, hash(var_d5213cbb), var_bf9c8c95);
    }

    // Namespace cluielem/lui_shared
    // Params 5, eflags: 0x2 linked
    // Checksum 0x48b8a43a, Offset: 0x938
    // Size: 0x1e4
    function add_clientfield(field_name, version, bits, type, callback) {
        assert(!var_47d8642e, "<unknown string>");
        var_8e016f22 = strtok(field_name, ".");
        var_2637b994 = [];
        foreach (field in var_8e016f22) {
            if (!isdefined(var_2637b994)) {
                var_2637b994 = [];
            } else if (!isarray(var_2637b994)) {
                var_2637b994 = array(var_2637b994);
            }
            var_2637b994[var_2637b994.size] = hash(field);
        }
        clientfield::register_luielem("luielement." + var_d5213cbb + "." + (isdefined(var_bf9c8c95) ? "" + var_bf9c8c95 : "") + field_name, hash(var_d5213cbb), var_bf9c8c95, var_2637b994, version, bits, type, callback, 0, 0);
    }

    // Namespace cluielem/lui_shared
    // Params 3, eflags: 0x2 linked
    // Checksum 0xfb34fbb2, Offset: 0xb28
    // Size: 0x1cc
    function function_dcb34c80(var_2a0de052, field_name, version) {
        assert(!var_47d8642e, "<unknown string>");
        var_8e016f22 = strtok(field_name, ".");
        var_2637b994 = [];
        foreach (field in var_8e016f22) {
            if (!isdefined(var_2637b994)) {
                var_2637b994 = [];
            } else if (!isarray(var_2637b994)) {
                var_2637b994 = array(var_2637b994);
            }
            var_2637b994[var_2637b994.size] = hash(field);
        }
        clientfield::function_b63c5dfe(var_2a0de052, "luielement." + var_d5213cbb + "." + (isdefined(var_bf9c8c95) ? "" + var_bf9c8c95 : "") + field_name, hash(var_d5213cbb), var_bf9c8c95, var_2637b994, version, undefined, 0, 0);
    }

    // Namespace cluielem/lui_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x75bad5e2, Offset: 0xe98
    // Size: 0x34
    function function_fa582112(*local_client_num) {
        assert(var_47d8642e, "<unknown string>");
    }

}

// Namespace lui/lui_shared
// Params 0, eflags: 0x5
// Checksum 0x46d567f4, Offset: 0x100
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"lui_shared", &preinit, undefined, undefined, undefined);
}

// Namespace lui/lui_shared
// Params 0, eflags: 0x6 linked
// Checksum 0xf2238664, Offset: 0x148
// Size: 0x70
function private preinit() {
    full_screen_black::register();
    initial_black::register();
    level.localclients = [];
    level.localclients[0] = {};
    level.localclients[1] = {};
    level.localclients[2] = {};
    level.localclients[3] = {};
}

// Namespace lui/lui_shared
// Params 6, eflags: 0x2 linked
// Checksum 0xef962240, Offset: 0x1c0
// Size: 0x9c
function screen_fade(localclientnum, n_time, n_target_alpha = 1, n_start_alpha = 0, str_color = "black", b_force_close_menu = 0) {
    level thread _screen_fade(localclientnum, n_time, n_target_alpha, n_start_alpha, str_color, b_force_close_menu);
}

// Namespace lui/lui_shared
// Params 3, eflags: 0x2 linked
// Checksum 0xe3b68e71, Offset: 0x268
// Size: 0x42
function screen_fade_out(localclientnum, n_time, str_color) {
    screen_fade(localclientnum, n_time, 1, 0, str_color, 0);
    wait(n_time);
}

// Namespace lui/lui_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x521a6836, Offset: 0x2b8
// Size: 0x4a
function screen_fade_in(localclientnum, n_time, str_color) {
    screen_fade(localclientnum, n_time, 0, 1, str_color, 1);
    wait(n_time);
}

// Namespace lui/lui_shared
// Params 1, eflags: 0x0
// Checksum 0x89834cee, Offset: 0x310
// Size: 0x24
function screen_close_menu(localclientnum) {
    level thread _screen_close_menu(localclientnum);
}

// Namespace lui/lui_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x7fa7b932, Offset: 0x340
// Size: 0x80
function private _screen_close_menu(localclientnum) {
    level notify("_screen_fade" + localclientnum);
    level endon("_screen_fade" + localclientnum);
    if (isdefined(level.localclients[localclientnum].full_screen_black)) {
        [[ level.localclients[localclientnum].full_screen_black.lui_menu ]]->close(localclientnum);
    }
}

// Namespace lui/lui_shared
// Params 6, eflags: 0x6 linked
// Checksum 0xee0388fc, Offset: 0x3c8
// Size: 0x384
function private _screen_fade(localclientnum, n_time, n_target_alpha, n_start_alpha, v_color, b_force_close_menu) {
    level notify("_screen_fade" + localclientnum);
    level endon("_screen_fade" + localclientnum);
    if (!isdefined(v_color)) {
        v_color = (0, 0, 0);
    }
    n_time_ms = int(int(n_time * 1000));
    str_menu = "full_screen_black";
    if (isstring(v_color)) {
        switch (v_color) {
        case #"black":
            v_color = (0, 0, 0);
            break;
        case #"white":
            v_color = (1, 1, 1);
            break;
        default:
            assertmsg("<unknown string>");
            break;
        }
    }
    if (!isdefined(level.localclients[localclientnum].full_screen_black)) {
        level.localclients[localclientnum].full_screen_black = spawnstruct();
        level.localclients[localclientnum].full_screen_black.lui_menu = full_screen_black::register_clientside();
    }
    s_menu = level.localclients[localclientnum].full_screen_black;
    if ([[ s_menu.lui_menu ]]->is_open(localclientnum)) {
        [[ s_menu.lui_menu ]]->close(localclientnum);
        if (isdefined(s_menu.n_start_alpha) && isdefined(s_menu.n_target_alpha) && isdefined(s_menu.n_start_time)) {
            n_start_alpha = lerpfloat(s_menu.n_start_alpha, s_menu.n_target_alpha, gettime() - s_menu.n_start_time);
        }
    }
    s_menu.n_start_alpha = n_start_alpha;
    s_menu.n_target_alpha = n_target_alpha;
    s_menu.n_target_time = n_time_ms;
    s_menu.n_start_time = gettime();
    [[ s_menu.lui_menu ]]->open(localclientnum);
    [[ s_menu.lui_menu ]]->set_red(localclientnum, v_color[0]);
    [[ s_menu.lui_menu ]]->set_green(localclientnum, v_color[1]);
    [[ s_menu.lui_menu ]]->set_blue(localclientnum, v_color[2]);
    [[ s_menu.lui_menu ]]->set_startalpha(localclientnum, n_start_alpha);
    [[ s_menu.lui_menu ]]->set_endalpha(localclientnum, n_target_alpha);
    [[ s_menu.lui_menu ]]->set_fadeovertime(localclientnum, n_time_ms);
    wait(n_time);
    if (b_force_close_menu || n_target_alpha == 0) {
        [[ s_menu.lui_menu ]]->close(localclientnum);
    }
}

// Namespace lui/lui_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x247e796d, Offset: 0x758
// Size: 0x12
function private function_4206783a() {
    return sessionmodeiscampaigngame();
}

// Namespace lui/lui_shared
// Params 2, eflags: 0x0
// Checksum 0x3b958934, Offset: 0x1808
// Size: 0xc4
function function_ca036b2c(local_client_num, name) {
    var_cad692a8 = getentarray(local_client_num, name, "targetname");
    foreach (trigger in var_cad692a8) {
        trigger function_c06a8682(local_client_num);
    }
    return var_cad692a8;
}

