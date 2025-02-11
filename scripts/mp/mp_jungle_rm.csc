#using script_1c9802f98dc9cc03;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\load_shared;
#using scripts\core_common\util_shared;
#using scripts\mp\mp_jungle_rm_fx;
#using scripts\mp\mp_jungle_rm_sound;

#namespace mp_jungle_rm;

// Namespace mp_jungle_rm/level_init
// Params 1, eflags: 0x20
// Checksum 0xd6355080, Offset: 0x148
// Size: 0x26c
function event_handler[level_init] main(*eventstruct) {
    if (level.var_87c6c648 !== 1) {
        function_11e3e877(#"surface_enter", #"hash_7c6e0aa9d993a347");
        function_11e3e877(#"hash_6be5853fe57d01b0", #"hash_318b453a5ae107ff");
        function_11e3e877(#"hash_6251d9bc015e4542", #"hash_222183eb5b944f3f");
        function_11e3e877(#"hash_6a2ccf46147cb7d8", #"hash_1a91f7e44ea66fa7");
    }
    setsaveddvar(#"enable_global_wind", 1);
    setsaveddvar(#"wind_global_vector", "88 0 0");
    setsaveddvar(#"wind_global_low_altitude", 0);
    setsaveddvar(#"wind_global_hi_altitude", 10000);
    setsaveddvar(#"wind_global_low_strength_percent", 100);
    level.draftxcam = #"ui_cam_draft_common";
    level.var_482af62e = #"hash_12263e5d70551bf9";
    mp_jungle_rm_fx::main();
    mp_jungle_rm_sound::main();
    load::main();
    level.domflagbasefxoverride = &dom_flag_base_fx_override;
    level.domflagcapfxoverride = &dom_flag_cap_fx_override;
    util::waitforclient(0);
    util::function_8eb5d4b0(500, 1.5);
}

// Namespace mp_jungle_rm/mp_jungle_rm
// Params 2, eflags: 0x0
// Checksum 0x8e8e430d, Offset: 0x3c0
// Size: 0xf2
function dom_flag_base_fx_override(flag, team) {
    switch (flag.name) {
    case #"a":
        if (team == #"neutral") {
            return "ui/fx_dom_marker_neutral_r120";
        } else {
            return "ui/fx_dom_marker_team_r120";
        }
        break;
    case #"b":
        if (team == #"neutral") {
            return "ui/fx_dom_marker_neutral_r120";
        } else {
            return "ui/fx_dom_marker_team_r120";
        }
        break;
    case #"c":
        if (team == #"neutral") {
            return "ui/fx_dom_marker_neutral_r120";
        } else {
            return "ui/fx_dom_marker_team_r120";
        }
        break;
    }
}

// Namespace mp_jungle_rm/mp_jungle_rm
// Params 2, eflags: 0x0
// Checksum 0x1c5f6fa7, Offset: 0x4c0
// Size: 0xf2
function dom_flag_cap_fx_override(flag, team) {
    switch (flag.name) {
    case #"a":
        if (team == #"neutral") {
            return "ui/fx_dom_cap_indicator_neutral_r120";
        } else {
            return "ui/fx_dom_cap_indicator_team_r120";
        }
        break;
    case #"b":
        if (team == #"neutral") {
            return "ui/fx_dom_cap_indicator_neutral_r120";
        } else {
            return "ui/fx_dom_cap_indicator_team_r120";
        }
        break;
    case #"c":
        if (team == #"neutral") {
            return "ui/fx_dom_cap_indicator_neutral_r120";
        } else {
            return "ui/fx_dom_cap_indicator_team_r120";
        }
        break;
    }
}

