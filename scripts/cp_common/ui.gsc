// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\util.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\hud_util_shared.gsc;
#using scripts\core_common\hud_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace ui;

// Namespace ui/ui
// Params 0, eflags: 0x5
// Checksum 0x3773f8a8, Offset: 0x2a0
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"ui", &preinit, &postinit, undefined, undefined);
}

// Namespace ui/ui
// Params 0, eflags: 0x6 linked
// Checksum 0x61361414, Offset: 0x2f8
// Size: 0x3c
function private preinit() {
    if (!isdefined(level.var_ef4974d7)) {
        level.var_ef4974d7 = [];
    }
    /#
        level thread devgui_loop();
    #/
}

// Namespace ui/ui
// Params 0, eflags: 0x6 linked
// Checksum 0x65cc2271, Offset: 0x340
// Size: 0x1c
function private postinit() {
    level thread game_time();
}

// Namespace ui/ui
// Params 0, eflags: 0x2 linked
// Checksum 0x80e55d5d, Offset: 0x368
// Size: 0x30
function game_time() {
    level flag::wait_till("game_start");
    level.n_start_time = gettime();
}

// Namespace ui/ui
// Params 10, eflags: 0x0
// Checksum 0x75ffc77c, Offset: 0x3a0
// Size: 0x824
function countdown_timer(var_753cb060, var_3b192471 = "mission_fail_timer", str_team = #"any", var_9c038d31 = 1, var_f27011e3 = 1, var_3efd443d, var_edf9778a = 3, var_72f304a8 = 0, var_243f2dbe, var_f2a3a140 = array()) {
    function_d1eb8589(var_3b192471);
    level endon("destroy_ui_countdown_timer_" + var_3b192471);
    level.var_ef4974d7[var_3b192471] = spawnstruct();
    level.var_ef4974d7[var_3b192471].str_team = util::get_team_mapping(str_team);
    level.var_ef4974d7[var_3b192471].b_paused = 0;
    level.var_ef4974d7[var_3b192471].var_9c038d31 = var_9c038d31;
    level.var_ef4974d7[var_3b192471].n_time_left = var_753cb060;
    level.var_ef4974d7[var_3b192471].var_f27011e3 = var_f27011e3;
    level.var_ef4974d7[var_3b192471].var_c215d29e = var_72f304a8;
    if (level.var_ef4974d7[var_3b192471].n_time_left == 0) {
        function_c01d14b6(var_3b192471);
        return;
    }
    var_72f304a8 = var_72f304a8 || isdefined(var_243f2dbe);
    if (var_f27011e3) {
        switch (level.var_ef4974d7[var_3b192471].str_team) {
        case #"allies":
            if (is_true(var_72f304a8)) {
                clientfield::set_world_uimodel("hudItems.cpObjective.allies.hardpoint.progress", 0);
            } else {
                clientfield::set_world_uimodel("hudItems.cpObjective.allies.radialTimerMaxTime", var_753cb060);
            }
            clientfield::set_world_uimodel("hudItems.cpObjective.allies.progressType", var_edf9778a);
            break;
        case #"axis":
            if (is_true(var_72f304a8)) {
                clientfield::set_world_uimodel("hudItems.cpObjective.axis.hardpoint.progress", 0);
            } else {
                clientfield::set_world_uimodel("hudItems.cpObjective.axis.radialTimerMaxTime", var_753cb060);
            }
            clientfield::set_world_uimodel("hudItems.cpObjective.axis.progressType", var_edf9778a);
            break;
        default:
            if (is_true(var_72f304a8)) {
                clientfield::set_world_uimodel("hudItems.cpObjective.allies.hardpoint.progress", 0);
                clientfield::set_world_uimodel("hudItems.cpObjective.axis.hardpoint.progress", 0);
            } else {
                clientfield::set_world_uimodel("hudItems.cpObjective.allies.radialTimerMaxTime", var_753cb060);
                clientfield::set_world_uimodel("hudItems.cpObjective.axis.radialTimerMaxTime", var_753cb060);
            }
            clientfield::set_world_uimodel("hudItems.cpObjective.allies.progressType", var_edf9778a);
            clientfield::set_world_uimodel("hudItems.cpObjective.axis.progressType", var_edf9778a);
            break;
        }
    }
    while (level.var_ef4974d7[var_3b192471].n_time_left > 0) {
        if (var_f27011e3) {
            if (!level.var_ef4974d7[var_3b192471].var_9c038d31) {
                function_ba6cfb59(var_3b192471, 0, var_72f304a8);
            } else if (!level.var_ef4974d7[var_3b192471].b_paused) {
                function_c01d14b6(var_3b192471);
            }
        }
        waitframe(1);
        if (!level.var_ef4974d7[var_3b192471].b_paused) {
            level.var_ef4974d7[var_3b192471].n_time_left = level.var_ef4974d7[var_3b192471].n_time_left - float(function_60d95f53()) / 1000;
        }
        n_time_left = level.var_ef4974d7[var_3b192471].n_time_left;
        var_d7b76468 = (var_753cb060 - n_time_left) / var_753cb060;
        if (isdefined(var_243f2dbe)) {
            var_d7b76468 = [[ var_243f2dbe ]](var_d7b76468);
            n_time_left = var_753cb060 * (1 - var_d7b76468);
        }
        if (is_true(var_72f304a8)) {
            switch (level.var_ef4974d7[var_3b192471].str_team) {
            case #"allies":
                clientfield::set_world_uimodel("hudItems.cpObjective.allies.hardpoint.progress", var_d7b76468);
                break;
            case #"axis":
                clientfield::set_world_uimodel("hudItems.cpObjective.axis.hardpoint.progress", var_d7b76468);
                break;
            default:
                clientfield::set_world_uimodel("hudItems.cpObjective.allies.hardpoint.progress", var_d7b76468);
                clientfield::set_world_uimodel("hudItems.cpObjective.axis.hardpoint.progress", var_d7b76468);
                break;
            }
        }
        foreach (index, var_2e453ccb in var_f2a3a140) {
            if (n_time_left <= var_2e453ccb.seconds) {
                level notify(var_2e453ccb.notify_str, {#var_3b192471:var_3b192471});
                self notify(var_2e453ccb.notify_str);
                arrayremoveindex(var_f2a3a140, index);
                break;
            }
        }
        if (isdefined(var_3efd443d)) {
            foreach (var_ed6377c1 in var_3efd443d) {
                self hud::function_b825bd3d(var_ed6377c1, var_d7b76468);
            }
        }
    }
    if (var_f27011e3) {
        function_c01d14b6(var_3b192471, 0);
    }
    self notify(var_3b192471 + "_complete");
    if (var_f27011e3) {
        function_ba6cfb59(var_3b192471, 0, var_72f304a8);
        arrayremoveindex(level.var_ef4974d7, var_3b192471, 1);
    }
}

// Namespace ui/ui
// Params 3, eflags: 0x0
// Checksum 0x722338fc, Offset: 0xbd0
// Size: 0xe6
function function_77ab7e7d(n_seconds, var_8430ebdc, var_c15fc3d5) {
    notifies = [];
    foreach (index, var_9cdf346f in var_8430ebdc) {
        if (n_seconds >= var_9cdf346f) {
            var_d67e0fa4 = spawnstruct();
            var_d67e0fa4.seconds = var_9cdf346f;
            var_d67e0fa4.notify_str = var_c15fc3d5[index];
            notifies[notifies.size] = var_d67e0fa4;
        }
    }
    return notifies;
}

// Namespace ui/ui
// Params 2, eflags: 0x6 linked
// Checksum 0xe9c84b63, Offset: 0xcc0
// Size: 0x182
function private function_c01d14b6(var_3b192471, n_time_left) {
    if (isdefined(n_time_left)) {
        level.var_ef4974d7[var_3b192471].n_time_left = n_time_left;
    }
    var_1c0820a1 = gettime() + 1000 + int(level.var_ef4974d7[var_3b192471].n_time_left * 1000);
    function_ba6cfb59(var_3b192471, 1, !is_true(level.var_ef4974d7[var_3b192471].var_c215d29e));
    switch (level.var_ef4974d7[var_3b192471].str_team) {
    case #"allies":
        setbombtimer("A", var_1c0820a1);
        break;
    case #"axis":
        setbombtimer("B", var_1c0820a1);
        break;
    default:
        setbombtimer("A", var_1c0820a1);
        setbombtimer("B", var_1c0820a1);
        break;
    }
}

// Namespace ui/ui
// Params 3, eflags: 0x6 linked
// Checksum 0xf96bdd14, Offset: 0xe50
// Size: 0x28a
function private function_ba6cfb59(var_3b192471, b_enable = 1, var_96dc7504 = 1) {
    if (!is_true(level.var_ef4974d7[var_3b192471].var_f27011e3)) {
        return;
    }
    str_team = level.var_ef4974d7[var_3b192471].str_team;
    switch (str_team) {
    case #"allies":
        setmatchflag("bomb_timer_a", is_true(b_enable && var_96dc7504));
        break;
    case #"axis":
        setmatchflag("bomb_timer_b", is_true(b_enable && var_96dc7504));
        break;
    default:
        setmatchflag("bomb_timer_a", is_true(b_enable && var_96dc7504));
        setmatchflag("bomb_timer_b", is_true(b_enable && var_96dc7504));
        break;
    }
    if (!b_enable) {
        switch (str_team) {
        case #"allies":
            clientfield::set_world_uimodel("hudItems.cpObjective.allies.progressType", 0);
            break;
        case #"axis":
            clientfield::set_world_uimodel("hudItems.cpObjective.axis.progressType", 0);
            break;
        default:
            clientfield::set_world_uimodel("hudItems.cpObjective.allies.progressType", 0);
            clientfield::set_world_uimodel("hudItems.cpObjective.axis.progressType", 0);
            break;
        }
    }
}

// Namespace ui/ui
// Params 3, eflags: 0x0
// Checksum 0x64ca52fb, Offset: 0x10e8
// Size: 0xd2
function function_b4e596c2(var_3b192471, n_time, str_notify) {
    level endon("destroy_ui_countdown_timer_" + var_3b192471);
    self endon(var_3b192471 + "_complete");
    assert(isdefined(level.var_ef4974d7[var_3b192471]), "<unknown string>" + var_3b192471);
    while (level.var_ef4974d7[var_3b192471].n_time_left > n_time) {
        waitframe(1);
    }
    if (isdefined(str_notify)) {
        self notify(str_notify);
        return;
    }
    self notify("timer_" + var_3b192471 + "_reached_" + n_time);
}

// Namespace ui/ui
// Params 1, eflags: 0x2 linked
// Checksum 0xf020cd77, Offset: 0x11c8
// Size: 0x94
function function_d1eb8589(var_3b192471 = "mission_fail_timer") {
    if (isdefined(level.var_ef4974d7[var_3b192471])) {
        level notify("destroy_ui_countdown_timer_" + var_3b192471);
        function_ba6cfb59(var_3b192471, 0, level.var_ef4974d7[var_3b192471].var_316c2f69);
        arrayremoveindex(level.var_ef4974d7, var_3b192471, 1);
    }
}

// Namespace ui/ui
// Params 1, eflags: 0x0
// Checksum 0xbee9ec21, Offset: 0x1268
// Size: 0x4e
function function_f7aafb81(var_3b192471 = "mission_fail_timer") {
    if (isdefined(level.var_ef4974d7[var_3b192471])) {
        level.var_ef4974d7[var_3b192471].b_paused = 1;
    }
}

// Namespace ui/ui
// Params 1, eflags: 0x0
// Checksum 0xaad7718a, Offset: 0x12c0
// Size: 0x4e
function function_bb62027a(var_3b192471 = "mission_fail_timer") {
    if (isdefined(level.var_ef4974d7[var_3b192471])) {
        level.var_ef4974d7[var_3b192471].b_paused = 0;
    }
}

// Namespace ui/ui
// Params 1, eflags: 0x0
// Checksum 0xfb9831bc, Offset: 0x1318
// Size: 0x4e
function function_c061766e(var_3b192471 = "mission_fail_timer") {
    if (isdefined(level.var_ef4974d7[var_3b192471])) {
        level.var_ef4974d7[var_3b192471].var_9c038d31 = 1;
    }
}

// Namespace ui/ui
// Params 1, eflags: 0x0
// Checksum 0xa26d1797, Offset: 0x1370
// Size: 0x4e
function function_7ec9d70a(var_3b192471 = "mission_fail_timer") {
    if (isdefined(level.var_ef4974d7[var_3b192471])) {
        level.var_ef4974d7[var_3b192471].var_9c038d31 = 0;
    }
}

// Namespace ui/ui
// Params 1, eflags: 0x0
// Checksum 0xc3fdc5ac, Offset: 0x13c8
// Size: 0x72
function function_7856e5e0(var_3b192471 = "mission_fail_timer") {
    assert(isdefined(level.var_ef4974d7[var_3b192471]), "<unknown string>" + var_3b192471 + "<unknown string>");
    return level.var_ef4974d7[var_3b192471].n_time_left;
}

// Namespace ui/ui
// Params 1, eflags: 0x0
// Checksum 0x48dfdb27, Offset: 0x1448
// Size: 0x1e0
function game_result(str_winning_team) {
    foreach (player in level.players) {
        player val::set(#"game_result", "freezecontrols_allowlook");
        player playlocalsound(#"hash_339c0a10af56146d");
        if (!isbot(player)) {
            if (str_winning_team == #"none") {
                var_1a47c004 = #"hash_694986fb14b7d7dd";
                var_1da53c42 = #"hash_42774b4d7620fcbc";
            } else if (player util::is_on_side(str_winning_team)) {
                var_1a47c004 = #"hash_5379a106e94c7ecc";
                var_1da53c42 = #"hash_26e1226347737c3c";
            } else {
                var_1a47c004 = #"hash_694986fb14b7d7dd";
                var_1da53c42 = #"hash_6e65cf69191bdda7";
            }
            player luinotifyevent(#"pre_killcam_transition", 4, 1, level.teamindex[util::get_team_mapping(str_winning_team)], var_1a47c004, var_1da53c42);
        }
    }
}

/#

    // Namespace ui/ui
    // Params 0, eflags: 0x4
    // Checksum 0x6ca45db9, Offset: 0x1630
    // Size: 0x196
    function private devgui_loop() {
        while (true) {
            wait(0.25);
            dvarstr = getdvarstring(#"hash_146e539b33582942", "<unknown string>");
            if (dvarstr == "<unknown string>") {
                continue;
            }
            setdvar(#"hash_146e539b33582942", "<unknown string>");
            args = strtok(dvarstr, "<unknown string>");
            host = util::gethostplayer();
            if (!isdefined(host)) {
                continue;
            }
            switch (args[0]) {
            case #"comms":
                host function_97f309cb(args[1]);
                break;
            case #"hash_382e15719c2d9b7a":
                host function_97f309cb(args[1], args[2]);
                break;
            case #"prompt":
                host function_f29c45f6(args[1]);
                break;
            }
        }
    }

    // Namespace ui/ui
    // Params 2, eflags: 0x4
    // Checksum 0xab2d9f6a, Offset: 0x17d0
    // Size: 0xb4
    function private function_97f309cb(portraitid, var_e9f94d47) {
        if (!isdefined(var_e9f94d47)) {
            var_e9f94d47 = undefined;
        }
        if (isdefined(portraitid)) {
            if (isdefined(var_e9f94d47)) {
                self luinotifyevent(#"offsite_comms_message", 2, portraitid, var_e9f94d47);
            } else {
                self luinotifyevent(#"offsite_comms_message", 1, portraitid);
            }
            return;
        }
        self luinotifyevent(#"offsite_comms_complete");
    }

    // Namespace ui/ui
    // Params 1, eflags: 0x4
    // Checksum 0xad1af81d, Offset: 0x1890
    // Size: 0x6c
    function private function_f29c45f6(index) {
        if (!isdefined(index)) {
            index = 0;
        }
        if (isstring(index)) {
            index = int(index);
        }
        self clientfield::set_player_uimodel("<unknown string>", index);
    }

#/
