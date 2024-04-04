// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\math_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\audio_shared.csc;

#namespace empgrenade;

// Namespace empgrenade/empgrenade
// Params 0, eflags: 0x5
// Checksum 0x9dd558d8, Offset: 0x120
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"empgrenade", &preinit, undefined, undefined, undefined);
}

// Namespace empgrenade/empgrenade
// Params 0, eflags: 0x4
// Checksum 0xc23427e7, Offset: 0x168
// Size: 0xb4
function private preinit() {
    clientfield::register("toplayer", "empd", 1, 1, "int", &onempchanged, 0, 1);
    clientfield::register("toplayer", "empd_monitor_distance", 1, 1, "int", &onempmonitordistancechanged, 0, 0);
    callback::on_spawned(&on_player_spawned);
}

// Namespace empgrenade/empgrenade
// Params 7, eflags: 0x0
// Checksum 0x53908571, Offset: 0x228
// Size: 0xd4
function onempchanged(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    localplayer = function_5c10bd79(binitialsnap);
    if (bwastimejump == 1) {
        self startempeffects(localplayer);
        return;
    }
    already_distance_monitored = localplayer clientfield::get_to_player("empd_monitor_distance") == 1;
    if (!already_distance_monitored) {
        self stopempeffects(localplayer, fieldname);
    }
}

// Namespace empgrenade/empgrenade
// Params 2, eflags: 0x0
// Checksum 0xd103d54b, Offset: 0x308
// Size: 0x6c
function startempeffects(*localplayer, bwastimejump = 0) {
    if (!bwastimejump) {
        playsound(0, #"mpl_plr_emp_activate", (0, 0, 0));
    }
    audio::playloopat("mpl_plr_emp_looper", (0, 0, 0));
}

// Namespace empgrenade/empgrenade
// Params 3, eflags: 0x0
// Checksum 0x30bac4af, Offset: 0x380
// Size: 0x84
function stopempeffects(*localplayer, oldval, bwastimejump = 0) {
    if (oldval != 0 && !bwastimejump) {
        playsound(0, #"mpl_plr_emp_deactivate", (0, 0, 0));
    }
    audio::stoploopat("mpl_plr_emp_looper", (0, 0, 0));
}

// Namespace empgrenade/empgrenade
// Params 1, eflags: 0x0
// Checksum 0xde629252, Offset: 0x410
// Size: 0x120
function on_player_spawned(localclientnum) {
    self endon(#"disconnect");
    localplayer = function_5c10bd79(localclientnum);
    if (localplayer != self) {
        return;
    }
    curval = localplayer clientfield::get_to_player("empd_monitor_distance");
    inkillcam = function_1cbf351b(localclientnum);
    if (curval > 0 && localplayer isempjammed()) {
        startempeffects(localplayer, inkillcam);
        localplayer monitordistance(localclientnum);
        return;
    }
    stopempeffects(localplayer, 0, 1);
    localplayer notify(#"end_emp_monitor_distance");
}

// Namespace empgrenade/empgrenade
// Params 7, eflags: 0x0
// Checksum 0xcb9b1918, Offset: 0x538
// Size: 0xd0
function onempmonitordistancechanged(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, bwastimejump) {
    localplayer = function_5c10bd79(bnewent);
    if (fieldname == 1) {
        startempeffects(localplayer, bwastimejump);
        localplayer monitordistance(bnewent);
        return;
    }
    stopempeffects(localplayer, binitialsnap, bwastimejump);
    localplayer notify(#"end_emp_monitor_distance");
}

// Namespace empgrenade/empgrenade
// Params 1, eflags: 0x0
// Checksum 0x937516f0, Offset: 0x610
// Size: 0x318
function monitordistance(localclientnum) {
    localplayer = self;
    localplayer endon(#"death");
    localplayer endon(#"end_emp_monitor_distance");
    localplayer endon(#"team_changed");
    if (localplayer isempjammed() == 0) {
        return;
    }
    distance_to_closest_enemy_emp_ui_model = getuimodel(function_1df4c3b0(localclientnum, #"hash_6f4b11a0bee9b73d"), "distanceToClosestEnemyEmpKillstreak");
    new_distance = 0;
    max_static_value = getdvarfloat(#"ks_emp_fullscreen_maxstaticvalue", 0);
    min_static_value = getdvarfloat(#"ks_emp_fullscreen_minstaticvalue", 0);
    min_radius_max_static = getdvarfloat(#"ks_emp_fullscreen_minradiusmaxstatic", 0);
    max_radius_min_static = getdvarfloat(#"ks_emp_fullscreen_maxradiusminstatic", 0);
    if (isdefined(distance_to_closest_enemy_emp_ui_model)) {
        while (true) {
            /#
                max_static_value = getdvarfloat(#"ks_emp_fullscreen_maxstaticvalue", 0);
                min_static_value = getdvarfloat(#"ks_emp_fullscreen_minstaticvalue", 0);
                min_radius_max_static = getdvarfloat(#"ks_emp_fullscreen_minradiusmaxstatic", 0);
                max_radius_min_static = getdvarfloat(#"ks_emp_fullscreen_maxradiusminstatic", 0);
            #/
            new_distance = getuimodelvalue(distance_to_closest_enemy_emp_ui_model);
            range = max_radius_min_static - min_radius_max_static;
            current_static_value = max_static_value - (range <= 0 ? max_static_value : (new_distance - min_radius_max_static) / range);
            current_static_value = math::clamp(current_static_value, min_static_value, max_static_value);
            emp_grenaded = localplayer clientfield::get_to_player("empd") == 1;
            if (emp_grenaded && current_static_value < 1) {
                current_static_value = 1;
            }
            wait(0.1);
        }
    }
}

