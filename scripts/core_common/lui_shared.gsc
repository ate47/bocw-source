// Atian COD Tools GSC CW decompiler test
#using script_4194df57536e11ed;
#using script_50719ad9bcd4b183;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\string_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace lui;

// Namespace lui
// Method(s) 10 Total 10
class cluielem {

    var var_779239b4;
    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace cluielem/lui_shared
    // Params 0, eflags: 0xa linked
    // Checksum 0xd170555d, Offset: 0x2f38
    // Size: 0x2a
    constructor() {
        var_d5213cbb = "";
        var_bf9c8c95 = undefined;
        var_779239b4 = 0;
    }

    // Namespace cluielem/lui_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0xa711572d, Offset: 0x3230
    // Size: 0x3a
    function function_7bfd10e6(player) {
        return player function_3fc81484(hash(var_d5213cbb), var_bf9c8c95);
    }

    // Namespace cluielem/lui_shared
    // Params 2, eflags: 0x2 linked
    // Checksum 0x5d256c6a, Offset: 0x31c0
    // Size: 0x62
    function open_luielem(player, flags = 0) {
        player openluielem(hash(var_d5213cbb), var_bf9c8c95, flags);
        var_779239b4 = 1;
    }

    // Namespace cluielem/lui_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x2fbc1d80, Offset: 0x2f70
    // Size: 0xce
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
    }

    // Namespace cluielem/lui_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x6e626a7, Offset: 0x3278
    // Size: 0xee
    function close_luielem(player) {
        if (isplayer(player)) {
            if (isdefined(player.var_3bc46b87) && isdefined(player.var_3bc46b87[hash(var_d5213cbb)]) && isdefined(player.var_3bc46b87[hash(var_d5213cbb)][var_bf9c8c95])) {
                player.var_3bc46b87[hash(var_d5213cbb)][var_bf9c8c95] = undefined;
            }
            player closeluielem(hash(var_d5213cbb), var_bf9c8c95);
            var_779239b4 = 0;
        }
    }

    // Namespace cluielem/lui_shared
    // Params 3, eflags: 0x2 linked
    // Checksum 0xfbd3782e, Offset: 0x3120
    // Size: 0x44
    function set_clientfield(player, field_name, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, field_name, value);
    }

    // Namespace cluielem/lui_shared
    // Params 3, eflags: 0x2 linked
    // Checksum 0xd2b4c7b6, Offset: 0x3170
    // Size: 0x44
    function function_d6203429(player, field_name, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, field_name, value);
    }

    // Namespace cluielem/lui_shared
    // Params 5, eflags: 0x2 linked
    // Checksum 0x8aaec4aa, Offset: 0x3048
    // Size: 0x64
    function add_clientfield(field_name, version, bits, type, var_59f69872 = 1) {
        clientfield::register_luielem(var_d5213cbb, var_bf9c8c95, field_name, version, bits, type, var_59f69872);
    }

    // Namespace cluielem/lui_shared
    // Params 4, eflags: 0x2 linked
    // Checksum 0xe0ef6643, Offset: 0x30b8
    // Size: 0x5c
    function function_dcb34c80(var_2a0de052, field_name, version, var_59f69872 = 1) {
        clientfield::function_b63c5dfe(var_2a0de052, var_d5213cbb, var_bf9c8c95, field_name, version, var_59f69872);
    }

}

// Namespace lui/lui_shared
// Params 0, eflags: 0x5
// Checksum 0xe582cf52, Offset: 0x248
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"lui_shared", &preinit, undefined, undefined, undefined);
}

// Namespace lui/lui_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x1f7c4f99, Offset: 0x290
// Size: 0x74
function private preinit() {
    callback::on_spawned(&refresh_menu_values);
    add_luimenu("FullScreenBlack", &full_screen_black::register);
    add_luimenu("InitialBlack", &initial_black::register);
}

// Namespace lui/lui_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x6a7fcd11, Offset: 0x310
// Size: 0x110
function function_bed1b789(menuname, registrationindex, modelnameindex, modelvalue) {
    if (!isdefined(self.var_3bc46b87)) {
        self.var_3bc46b87 = associativearray();
    }
    if (!isdefined(self.var_3bc46b87[menuname])) {
        self.var_3bc46b87[menuname] = associativearray();
    }
    if (!isdefined(self.var_3bc46b87[menuname][registrationindex])) {
        self.var_3bc46b87[menuname][registrationindex] = associativearray();
    }
    if (!isdefined(self.var_3bc46b87[menuname][registrationindex][modelnameindex]) || self.var_3bc46b87[menuname][registrationindex][modelnameindex] != modelvalue) {
        self.var_3bc46b87[menuname][registrationindex][modelnameindex] = modelvalue;
        return true;
    }
    return false;
}

// Namespace lui/lui_shared
// Params 5, eflags: 0x2 linked
// Checksum 0xaa8a445f, Offset: 0x428
// Size: 0x128
function function_bb6bcb89(menuname, registrationindex, modelnameindex, modelvalue, sendtospectators) {
    if (!self function_bed1b789(menuname, registrationindex, modelnameindex, modelvalue)) {
        return;
    }
    if (!isdefined(level.var_b0d329df)) {
        level.var_b0d329df = [];
        level thread function_1c4c4975();
    }
    index = level.var_b0d329df.size;
    level.var_b0d329df[index] = {#ent:self, #menuname:menuname, #registrationindex:registrationindex, #modelnameindex:modelnameindex, #modelvalue:modelvalue, #sendtospectators:sendtospectators};
    level notify(#"hash_731d5f1e22d23b13");
}

// Namespace lui/lui_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x8adcefd9, Offset: 0x558
// Size: 0x9c
function function_e1038404(var_32613683) {
    self function_2891bd54(var_32613683.menuname, var_32613683.registrationindex, 2, var_32613683.modelnameindex, var_32613683.modelvalue);
    if (is_true(var_32613683.sendtospectators)) {
        self function_4c1e52d4(var_32613683.menuname, var_32613683.registrationindex, 2, var_32613683.modelnameindex, var_32613683.modelvalue);
    }
}

// Namespace lui/lui_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x4e5e5f0d, Offset: 0x600
// Size: 0xa8
function function_1c4c4975() {
    while (true) {
        level waittill(#"hash_731d5f1e22d23b13");
        do {
            if (isdefined(level.var_b0d329df[0].ent)) {
                level.var_b0d329df[0].ent function_e1038404(level.var_b0d329df[0]);
            }
            arrayremoveindex(level.var_b0d329df, 0, 0);
            waitframe(1);
        } while (level.var_b0d329df.size > 0);
    }
}

// Namespace lui/lui_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x7836ccf5, Offset: 0x6b0
// Size: 0x54
function add_luimenu(alias, registerfunc) {
    if (!isdefined(level.luimenus)) {
        level.luimenus = array();
    }
    level.luimenus[alias] = [[ registerfunc ]]();
}

// Namespace lui/lui_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x48e3052e, Offset: 0x710
// Size: 0x1c
function get_luimenu(alias) {
    return level.luimenus[alias];
}

// Namespace lui/lui_shared
// Params 0, eflags: 0x6 linked
// Checksum 0xf0e82e9f, Offset: 0x738
// Size: 0x10c
function private refresh_menu_values() {
    if (!isdefined(level.lui_script_globals)) {
        return;
    }
    foreach (k, v in level.lui_script_globals) {
        foreach (k2, v2 in v) {
            self set_value_for_player(k, k2, v2);
        }
    }
}

// Namespace lui/lui_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x836c5244, Offset: 0x850
// Size: 0x9c
function play_animation(menu, str_anim) {
    str_curr_anim = self getluimenudata(menu, "current_animation");
    str_new_anim = str_anim;
    if (isdefined(str_curr_anim) && str_curr_anim == str_anim) {
        str_new_anim = "";
    }
    self setluimenudata(menu, #"current_animation", str_new_anim);
}

// Namespace lui/lui_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xc0962b39, Offset: 0x8f8
// Size: 0x80
function set_color(menu, color) {
    if (!isint(menu)) {
        [[ menu ]]->set_red(self, color[0]);
        [[ menu ]]->set_green(self, color[1]);
        [[ menu ]]->set_blue(self, color[2]);
    }
}

// Namespace lui/lui_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x813f4a1e, Offset: 0x980
// Size: 0x8c
function set_value_for_player(str_menu_id, str_variable_id, value) {
    if (!isdefined(self.lui_script_menus)) {
        self.lui_script_menus = [];
    }
    if (!isdefined(self.lui_script_menus[str_menu_id])) {
        self.lui_script_menus[str_menu_id] = self openluimenu(str_menu_id);
    }
    self setluimenudata(self.lui_script_menus[str_menu_id], str_variable_id, value);
}

// Namespace lui/lui_shared
// Params 3, eflags: 0x0
// Checksum 0x3a2292b8, Offset: 0xa18
// Size: 0x110
function set_global(str_menu_id, str_variable_id, value) {
    if (!isdefined(level.lui_script_globals)) {
        level.lui_script_globals = [];
    }
    if (!isdefined(level.lui_script_globals[str_menu_id])) {
        level.lui_script_globals[str_menu_id] = [];
    }
    level.lui_script_globals[str_menu_id][str_variable_id] = value;
    if (isdefined(level.players)) {
        foreach (player in level.players) {
            player set_value_for_player(str_menu_id, str_variable_id, value);
        }
    }
}

// Namespace lui/lui_shared
// Params 5, eflags: 0x0
// Checksum 0xab0fce9d, Offset: 0xb30
// Size: 0x184
function timer(n_time, str_endon, x = 1080, y = 200, height = 60) {
    lui = self openluimenu("HudElementTimer");
    self setluimenudata(lui, #"x", x);
    self setluimenudata(lui, #"y", y);
    self setluimenudata(lui, #"height", height);
    self setluimenudata(lui, #"time", gettime() + int(n_time * 1000));
    if (isdefined(str_endon)) {
        self waittilltimeout(n_time, str_endon);
    } else {
        wait(n_time);
    }
    self closeluimenu(lui);
}

// Namespace lui/lui_shared
// Params 3, eflags: 0x2 linked
// Checksum 0xe7eab90b, Offset: 0xcc0
// Size: 0x194
function prime_movie(str_movie, b_looping = 0, str_key = "") {
    if (isarray(self)) {
        foreach (player in self) {
            player primemovie(str_movie, b_looping, str_key);
        }
        return;
    }
    if (self == level) {
        foreach (player in level.players) {
            player primemovie(str_movie, b_looping, str_key);
        }
        return;
    }
    self primemovie(str_movie, b_looping, str_key);
}

// Namespace lui/lui_shared
// Params 4, eflags: 0x0
// Checksum 0x8843680d, Offset: 0xe60
// Size: 0x110
function function_2fb8927b(str_team, str_movie, b_looping = 0, str_key = #"") {
    callback::on_connect(&function_67373791, undefined, str_team, str_movie, b_looping, str_key);
    foreach (player in function_58385b58(str_team)) {
        player prime_movie(str_movie);
    }
}

// Namespace lui/lui_shared
// Params 4, eflags: 0x6 linked
// Checksum 0x5da61bfe, Offset: 0xf78
// Size: 0x6c
function private function_67373791(str_team, str_movie, *b_looping, *str_key) {
    if (util::is_on_side(b_looping)) {
        if (util::function_8e89351(self)) {
            prime_movie(str_key);
        }
    }
}

// Namespace lui/lui_shared
// Params 8, eflags: 0x0
// Checksum 0xc1308f97, Offset: 0xff0
// Size: 0x148
function function_c6d1cb5d(str_team, str_movie, str_type, show_black_screen = 0, b_looping = 0, b_skippable = 0, str_key = #"", n_timeout) {
    callback::remove_on_connect(&function_67373791);
    foreach (player in function_58385b58(str_team)) {
        player thread play_movie(str_movie, str_type, show_black_screen, b_looping, b_skippable, str_key, n_timeout);
    }
}

// Namespace lui/lui_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xa9517a24, Offset: 0x1140
// Size: 0x518
function play_movie(str_movie, str_type, show_black_screen = 0, b_looping = 0, b_skippable = 0, str_key = #"", n_timeout) {
    if (str_type === "fullscreen" || str_type === "fullscreen_additive") {
        b_hide_hud = 1;
    }
    if (isarray(self)) {
        a_players = self;
    } else if (self == level) {
        a_players = level.players;
    }
    if (isarray(a_players)) {
        var_7e05b6e9 = [];
        foreach (player in a_players) {
            if (isbot(player) || player issplitscreen()) {
                array::add(var_7e05b6e9, player);
            }
        }
        foreach (bot in var_7e05b6e9) {
            arrayremovevalue(a_players, bot);
        }
        foreach (player in a_players) {
            if (isdefined(b_hide_hud)) {
                player flag::set(#"playing_movie_hide_hud");
                player val::set(#"play_movie", "show_hud", 0);
            }
            player thread _play_movie_for_player(str_movie, str_type, show_black_screen, b_looping, b_skippable, str_key, n_timeout);
        }
        array::wait_till(a_players, "movie_done", n_timeout);
        if (a_players.size == 0) {
            waitframe(1);
        }
        if (isdefined(b_hide_hud)) {
            foreach (player in a_players) {
                player flag::clear(#"playing_movie_hide_hud");
                player val::reset(#"play_movie", "show_hud");
            }
        }
    } else {
        if (isdefined(b_hide_hud)) {
            self flag::set(#"playing_movie_hide_hud");
            self val::set(#"play_movie", "show_hud", 0);
        }
        _play_movie_for_player(str_movie, str_type, show_black_screen, b_looping, b_skippable, str_key, n_timeout);
        if (isdefined(b_hide_hud) && isdefined(self)) {
            self flag::clear(#"playing_movie_hide_hud");
            self val::reset(#"play_movie", "show_hud");
        }
    }
    level notify(#"movie_done", {#type:str_type});
}

// Namespace lui/lui_shared
// Params 7, eflags: 0x6 linked
// Checksum 0x87a555d4, Offset: 0x1660
// Size: 0x376
function private _play_movie_for_player(str_movie, str_type, show_black_screen, b_looping, b_skippable, str_key, n_timeout) {
    self endon(#"disconnect");
    str_menu = undefined;
    switch (str_type) {
    case #"fullscreen_additive":
    case #"fullscreen":
        str_menu = "full_screen_movie";
        break;
    case #"pip":
        str_menu = "pip_menu";
        break;
    default:
        assertmsg("<unknown string>" + str_type + "<unknown string>");
        break;
    }
    if (str_type == "pip") {
        self playsoundtoplayer(#"uin_pip_open", self);
    }
    lui_menu = get_luimenu(str_menu);
    if (![[ lui_menu ]]->function_7bfd10e6(self)) {
        [[ lui_menu ]]->open(self);
    }
    if (isdefined(lui_menu)) {
        [[ lui_menu ]]->set_moviename(self, str_movie);
        [[ lui_menu ]]->set_showblackscreen(self, show_black_screen);
        [[ lui_menu ]]->set_looping(self, b_looping);
        [[ lui_menu ]]->set_additive(self, 0);
        if (str_menu != "pip_menu") {
            [[ lui_menu ]]->set_moviekey(self, str_key);
            [[ lui_menu ]]->registerplayer_callout_traversal(self, b_skippable);
        }
        if (issubstr(str_type, "additive")) {
            [[ lui_menu ]]->set_additive(self, 1);
        }
        while (true) {
            if (isdefined(n_timeout)) {
                waitresult = self waittilltimeout(n_timeout, #"menuresponse");
            } else {
                waitresult = self waittill(#"menuresponse");
            }
            menu = waitresult.menu;
            response = waitresult.response;
            if (waitresult._notify == "timeout" || menu === hash(str_menu) && response === #"finished_movie_playback") {
                if (str_type == "pip") {
                    self playsoundtoplayer(#"uin_pip_close", self);
                }
                [[ lui_menu ]]->close(self);
                self notify(#"movie_done");
                break;
            }
        }
    }
}

// Namespace lui/lui_shared
// Params 1, eflags: 0x0
// Checksum 0x85b33fc0, Offset: 0x19e0
// Size: 0x400
function play_outro_movie(outro_movie = getmapoutromovie()) {
    if (!isdefined(outro_movie) || outro_movie == "") {
        return;
    }
    if (isarray(self)) {
        a_players = self;
    } else if (self == level) {
        a_players = getplayers();
    }
    level flag::set("playing_outro_movie");
    if (isarray(a_players)) {
        foreach (player in a_players) {
            player flag::set("playing_movie_hide_hud");
            player val::set(#"play_movie", "show_hud", 0);
            player val::set(#"play_movie", "freezecontrols", 1);
            player thread function_1bc580af();
        }
        array::wait_till(a_players, "movie_done");
        foreach (player in a_players) {
            player flag::clear("playing_movie_hide_hud");
            player val::reset(#"play_movie", "show_hud");
            player val::reset(#"play_movie", "freezecontrols");
        }
    } else {
        self flag::set("playing_movie_hide_hud");
        self val::set(#"play_movie", "show_hud", 0);
        self val::set(#"play_movie", "freezecontrols", 1);
        function_1bc580af();
        if (isdefined(self)) {
            self flag::clear("playing_movie_hide_hud");
            self val::reset(#"play_movie", "show_hud");
            self val::reset(#"play_movie", "freezecontrols");
        }
    }
    level flag::clear("playing_outro_movie");
    level notify(#"movie_done", {#type:"outro"});
}

// Namespace lui/lui_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x70bc6cea, Offset: 0x1de8
// Size: 0x18c
function private function_1bc580af() {
    lui_menu = get_luimenu("full_screen_movie");
    if (![[ lui_menu ]]->function_7bfd10e6(self)) {
        [[ lui_menu ]]->open(self);
    }
    if (isdefined(lui_menu)) {
        [[ lui_menu ]]->set_playoutromovie(self, 1);
        [[ lui_menu ]]->set_showblackscreen(self, 1);
        while (true) {
            waitresult = self waittill(#"menuresponse");
            menu = waitresult.menu;
            response = waitresult.response;
            value = waitresult.value;
            if (menu === #"full_screen_movie") {
                if (response === #"finished_movie_playback") {
                    [[ lui_menu ]]->close(self);
                    self notify(#"movie_done");
                    break;
                }
                if (response === #"skippable" && isdefined(value)) {
                    [[ lui_menu ]]->registerplayer_callout_traversal(self, value);
                }
            }
        }
    }
}

// Namespace lui/lui_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x56ad805e, Offset: 0x1f80
// Size: 0x18c
function screen_flash(n_fadein_time, n_hold_time, n_fadeout_time, n_target_alpha = 1, v_color, b_force_close_menu = 0, var_4db66001 = 0) {
    if (self == level) {
        foreach (player in level.players) {
            player thread screen_flash(n_fadein_time, n_hold_time, n_fadeout_time, n_target_alpha, v_color, b_force_close_menu, var_4db66001);
        }
        return;
    }
    self endon(#"disconnect");
    if (var_4db66001 && self scene::is_igc_active()) {
        return;
    }
    self _screen_fade(n_fadein_time, n_target_alpha, 0, v_color, b_force_close_menu);
    wait(n_hold_time);
    self _screen_fade(n_fadeout_time, 0, n_target_alpha, v_color, b_force_close_menu);
}

// Namespace lui/lui_shared
// Params 8, eflags: 0x2 linked
// Checksum 0x399815a2, Offset: 0x2118
// Size: 0x13c
function screen_fade(n_time, n_target_alpha = 1, n_start_alpha = 0, v_color, b_force_close_menu = 0, str_menu_id, var_b675738a, b_force) {
    if (self == level) {
        foreach (player in level.players) {
            player thread _screen_fade(n_time, n_target_alpha, n_start_alpha, v_color, b_force_close_menu, str_menu_id, var_b675738a, b_force);
        }
        return;
    }
    self thread _screen_fade(n_time, n_target_alpha, n_start_alpha, v_color, b_force_close_menu, str_menu_id, var_b675738a, b_force);
}

// Namespace lui/lui_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x9e66855b, Offset: 0x2260
// Size: 0x5c
function screen_fade_out(n_time, v_color, str_menu_id, var_b675738a) {
    screen_fade(n_time, 1, 0, v_color, 0, str_menu_id, var_b675738a);
    if (n_time > 0) {
        wait(n_time);
    }
}

// Namespace lui/lui_shared
// Params 5, eflags: 0x2 linked
// Checksum 0x103efed5, Offset: 0x22c8
// Size: 0x64
function screen_fade_in(n_time, v_color, str_menu_id, var_b675738a, b_force) {
    screen_fade(n_time, 0, 1, v_color, 1, str_menu_id, var_b675738a, b_force);
    if (n_time > 0) {
        wait(n_time);
    }
}

// Namespace lui/lui_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x89d6efc2, Offset: 0x2338
// Size: 0x44
function function_a6eb5334(n_time, v_color, str_menu_id, var_b675738a) {
    screen_fade_in(n_time, v_color, str_menu_id, var_b675738a, 1);
}

// Namespace lui/lui_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x43176a8e, Offset: 0x2388
// Size: 0xb4
function screen_close_menu() {
    if (self == level) {
        foreach (player in level.players) {
            player thread _screen_close_menu();
        }
        return;
    }
    self thread _screen_close_menu();
}

// Namespace lui/lui_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x72412d88, Offset: 0x2448
// Size: 0xb6
function private _screen_close_menu() {
    self notify(#"_screen_fade");
    self endon(#"_screen_fade", #"disconnect");
    if (isdefined(self.var_59f4be9a)) {
        if (isint(self.var_59f4be9a.lui_menu)) {
            self closeluimenu(self.var_59f4be9a.lui_menu);
        } else {
            [[ self.var_59f4be9a.lui_menu ]]->close(self);
        }
        self.var_59f4be9a = undefined;
    }
}

// Namespace lui/lui_shared
// Params 8, eflags: 0x6 linked
// Checksum 0xa2453ec4, Offset: 0x2508
// Size: 0x71e
function private _screen_fade(n_time, n_target_alpha, n_start_alpha, v_color, b_force_close_menu, str_menu_id = "default", var_b675738a = 0, b_force = 0) {
    self notify(#"_screen_fade_");
    self endon(#"_screen_fade_", #"disconnect");
    if (!b_force) {
        if (!isdefined(self.var_d57eeb7f)) {
            self.var_d57eeb7f = 0;
        }
        if (n_target_alpha >= n_start_alpha) {
            self.var_d57eeb7f++;
        } else {
            self.var_d57eeb7f--;
            if (self.var_d57eeb7f > 0) {
                return;
            } else {
                self.var_d57eeb7f = 0;
            }
        }
    } else {
        self.var_d57eeb7f = 0;
    }
    if (!isdefined(level.screen_fade_network_frame)) {
        level.screen_fade_network_frame = 0;
    }
    if (!isdefined(v_color)) {
        v_color = (0, 0, 0);
    }
    n_time_ms = int(int(n_time * 1000));
    str_menu = "FullScreenBlack";
    if (isstring(v_color)) {
        switch (v_color) {
        case #"black":
            v_color = (0, 0, 0);
            break;
        case #"white":
            v_color = (1, 1, 1);
            break;
        }
    }
    lui_menu = 0;
    if (isdefined(self.var_59f4be9a)) {
        s_menu = self.var_59f4be9a;
        lui_menu = s_menu.lui_menu;
        _one_screen_fade_per_network_frame(s_menu);
        n_start_alpha = lerpfloat(s_menu.n_start_alpha, s_menu.n_target_alpha, s_menu.n_target_time < 0 ? 1 : (gettime() - s_menu.n_start_time) / s_menu.n_target_time);
        [[ lui_menu ]]->set_startalpha(self, n_start_alpha);
        [[ lui_menu ]]->set_endalpha(self, n_target_alpha);
        waitframe(1);
    } else {
        if (isdefined(get_luimenu(str_menu))) {
            lui_menu = get_luimenu(str_menu);
            if (![[ lui_menu ]]->function_7bfd10e6(self)) {
                [[ lui_menu ]]->open(self);
            }
        } else {
            lui_menu = self openluimenu(str_menu);
        }
        self.var_59f4be9a = spawnstruct();
        self.var_59f4be9a.lui_menu = lui_menu;
    }
    self.var_59f4be9a.n_start_alpha = n_start_alpha;
    self.var_59f4be9a.n_target_alpha = n_target_alpha;
    self.var_59f4be9a.n_target_time = n_time_ms;
    self.var_59f4be9a.n_start_time = gettime();
    self set_color(lui_menu, v_color);
    drawhud = var_b675738a ? 1 : 0;
    if (isint(lui_menu)) {
        self setluimenudata(lui_menu, #"startalpha", n_start_alpha);
        self setluimenudata(lui_menu, #"endalpha", n_target_alpha);
        self setluimenudata(lui_menu, #"fadeovertime", n_time_ms);
        self setluimenudata(lui_menu, #"drawhud", drawhud);
    } else {
        [[ lui_menu ]]->set_startalpha(self, n_start_alpha);
        [[ lui_menu ]]->set_endalpha(self, n_target_alpha);
        [[ lui_menu ]]->set_fadeovertime(self, n_time_ms);
        [[ lui_menu ]]->set_drawhud(self, drawhud);
    }
    /#
        if (!isdefined(level.n_fade_debug_time)) {
            level.n_fade_debug_time = 0;
        }
        n_debug_time = gettime();
        if (n_debug_time - level.n_fade_debug_time > 5000) {
            printtoprightln("<unknown string>");
        }
        level.n_fade_debug_time = n_debug_time;
        printtoprightln("<unknown string>" + string::rjust("<unknown string>" + gettime(), 6) + "<unknown string>" + string::rjust(str_menu_id, 10) + "<unknown string>" + string::rjust(v_color, 11) + "<unknown string>" + string::rjust(n_start_alpha + "<unknown string>" + n_target_alpha, 10) + "<unknown string>" + string::rjust(n_time, 6) + "<unknown string>", (1, 1, 1));
    #/
    if (n_time > 0) {
        wait(n_time);
    }
    if (!isdefined(self)) {
        return;
    }
    if (isint(lui_menu)) {
        self setluimenudata(lui_menu, #"fadeovertime", 0);
    } else {
        [[ lui_menu ]]->set_fadeovertime(self, 0);
    }
    if (b_force_close_menu || n_target_alpha == 0) {
        if (isint(lui_menu)) {
            self closeluimenu(self.var_59f4be9a.lui_menu);
        } else {
            [[ lui_menu ]]->close(self);
        }
        self.var_59f4be9a = undefined;
    }
}

// Namespace lui/lui_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xd1d480fe, Offset: 0x2c30
// Size: 0x4a
function private _one_screen_fade_per_network_frame(s_menu) {
    while (s_menu.screen_fade_network_frame === level.network_frame) {
        util::wait_network_frame();
    }
    s_menu.screen_fade_network_frame = level.network_frame;
}

// Namespace lui/lui_shared
// Params 2, eflags: 0x0
// Checksum 0x37f95b3c, Offset: 0x2c88
// Size: 0x166
function open_generic_script_dialog(title, description) {
    self endoncallback(&function_5ce0a623, #"close_generic_script_dialog", #"disconnect");
    dialog = self openluimenu("ScriptMessageDialog_Compact");
    self setluimenudata(dialog, #"title", title);
    self setluimenudata(dialog, #"description", description);
    self.var_520fb18c = dialog;
    do {
        waitresult = self waittill(#"menuresponse");
        menu = waitresult.menu;
        response = waitresult.response;
    } while (menu != "ScriptMessageDialog_Compact" || response != "close");
    self closeluimenu(dialog);
    self.var_520fb18c = undefined;
}

// Namespace lui/lui_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x74190e0c, Offset: 0x2df8
// Size: 0x44
function function_5ce0a623(str_notify) {
    if (str_notify == "close_generic_script_dialog") {
        if (isdefined(self.var_520fb18c)) {
            self closeluimenu(self.var_520fb18c);
        }
    }
}

// Namespace lui/lui_shared
// Params 0, eflags: 0x0
// Checksum 0xdea525be, Offset: 0x2e48
// Size: 0x16
function close_generic_script_dialog() {
    self notify(#"close_generic_script_dialog");
}

// Namespace lui/lui_shared
// Params 1, eflags: 0x0
// Checksum 0x92cff311, Offset: 0x2e68
// Size: 0xc4
function open_script_dialog(dialog_name) {
    self endon(#"disconnect");
    dialog = self openluimenu(dialog_name);
    do {
        waitresult = self waittill(#"menuresponse");
        menu = waitresult.menu;
        response = waitresult.response;
    } while (menu != dialog_name || response != "close");
    self closeluimenu(dialog);
}

