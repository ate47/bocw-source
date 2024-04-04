// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\audio_shared.csc;

#namespace status_effect_pulse;

// Namespace status_effect_pulse/status_effect_pulse
// Params 0, eflags: 0x5
// Checksum 0xf0728b50, Offset: 0xd0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"status_effect_pulse", &preinit, undefined, undefined, undefined);
}

// Namespace status_effect_pulse/status_effect_pulse
// Params 0, eflags: 0x6 linked
// Checksum 0x756efefa, Offset: 0x118
// Size: 0x4c
function private preinit() {
    clientfield::register("toplayer", "pulsed", 1, 1, "int", &on_pulsed_change, 0, 0);
}

// Namespace status_effect_pulse/status_effect_pulse
// Params 7, eflags: 0x2 linked
// Checksum 0xfb3de864, Offset: 0x170
// Size: 0xa4
function on_pulsed_change(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    localplayer = function_5c10bd79(binitialsnap);
    if (bwastimejump == 1) {
        self start_pulse_effects(localplayer);
        return;
    }
    self stop_pulse_effects(localplayer, fieldname);
}

// Namespace status_effect_pulse/status_effect_pulse
// Params 2, eflags: 0x2 linked
// Checksum 0x9a6abce8, Offset: 0x220
// Size: 0x6c
function start_pulse_effects(*localplayer, bwastimejump = 0) {
    if (!bwastimejump) {
        playsound(0, #"mpl_plr_emp_activate", (0, 0, 0));
    }
    audio::playloopat("mpl_plr_emp_looper", (0, 0, 0));
}

// Namespace status_effect_pulse/status_effect_pulse
// Params 3, eflags: 0x2 linked
// Checksum 0x80d97974, Offset: 0x298
// Size: 0x84
function stop_pulse_effects(*localplayer, oldval, bwastimejump = 0) {
    if (oldval != 0 && !bwastimejump) {
        playsound(0, #"mpl_plr_emp_deactivate", (0, 0, 0));
    }
    audio::stoploopat("mpl_plr_emp_looper", (0, 0, 0));
}

