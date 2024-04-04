// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.csc;
#using scripts\zm_common\zm_perks.csc;
#using scripts\zm_common\zm_equipment.csc;
#using scripts\zm_common\util.csc;
#using scripts\core_common\visionset_mgr_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\lui_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\struct.csc;

#namespace zm_altbody;

// Namespace zm_altbody/zm_altbody
// Params 0, eflags: 0x5
// Checksum 0x43e0e1f6, Offset: 0x158
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_altbody", &preinit, undefined, undefined, undefined);
}

// Namespace zm_altbody/zm_altbody
// Params 0, eflags: 0x4
// Checksum 0x11023965, Offset: 0x1a0
// Size: 0x154
function private preinit() {
    clientfield::register_clientuimodel("player_lives", #"zm_hud", #"player_lives", 1, 2, "int", undefined, 0, 0);
    clientfield::register("toplayer", "player_mana", 1, 8, "float", &set_player_mana, 0, 1);
    clientfield::register("toplayer", "player_in_afterlife", 1, 1, "int", &toggle_player_altbody, 0, 1);
    clientfield::register("allplayers", "player_altbody", 1, 1, "int", &toggle_player_altbody_3p, 0, 1);
    setupclientfieldcodecallbacks("toplayer", 1, "player_in_afterlife");
}

// Namespace zm_altbody/zm_altbody
// Params 9, eflags: 0x0
// Checksum 0xc4e8e32c, Offset: 0x300
// Size: 0x164
function init(name, *trigger_name, *trigger_hint, visionset_name, *visionset_priority, enter_callback, exit_callback, enter_3p_callback, exit_3p_callback) {
    if (!isdefined(level.altbody_enter_callbacks)) {
        level.altbody_enter_callbacks = [];
    }
    if (!isdefined(level.altbody_exit_callbacks)) {
        level.altbody_exit_callbacks = [];
    }
    if (!isdefined(level.altbody_enter_3p_callbacks)) {
        level.altbody_enter_3p_callbacks = [];
    }
    if (!isdefined(level.altbody_exit_3p_callbacks)) {
        level.altbody_exit_3p_callbacks = [];
    }
    if (!isdefined(level.altbody_visionsets)) {
        level.altbody_visionsets = [];
    }
    level.altbody_name = visionset_name;
    if (isdefined(visionset_priority)) {
        level.altbody_visionsets[visionset_name] = visionset_priority;
        visionset_mgr::register_visionset_info(visionset_priority, 1, 1, visionset_priority, visionset_priority);
    }
    level.altbody_enter_callbacks[visionset_name] = enter_callback;
    level.altbody_exit_callbacks[visionset_name] = exit_callback;
    level.altbody_enter_3p_callbacks[visionset_name] = enter_3p_callback;
    level.altbody_exit_3p_callbacks[visionset_name] = exit_3p_callback;
}

// Namespace zm_altbody/zm_altbody
// Params 7, eflags: 0x0
// Checksum 0xfe8637ab, Offset: 0x470
// Size: 0x4a
function set_player_mana(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self.mana = bwastimejump;
}

// Namespace zm_altbody/zm_altbody
// Params 7, eflags: 0x0
// Checksum 0x7f240f3f, Offset: 0x4c8
// Size: 0x144
function toggle_player_altbody(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, bwastimejump) {
    if (!isdefined(self.altbody)) {
        self.altbody = 0;
    }
    self usealternatehud(fieldname);
    if (self.altbody !== fieldname) {
        self.altbody = fieldname;
        if (bwastimejump) {
            self thread clear_transition(binitialsnap, fieldname);
        } else {
            self thread cover_transition(binitialsnap, fieldname);
        }
        if (fieldname == 1) {
            callback = level.altbody_enter_callbacks[level.altbody_name];
            if (isdefined(callback)) {
                self [[ callback ]](binitialsnap);
            }
            return;
        }
        callback = level.altbody_exit_callbacks[level.altbody_name];
        if (isdefined(callback)) {
            self [[ callback ]](binitialsnap);
        }
    }
}

// Namespace zm_altbody/zm_altbody
// Params 7, eflags: 0x0
// Checksum 0x2faa723c, Offset: 0x618
// Size: 0xe0
function toggle_player_altbody_3p(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (self function_21c0fa55()) {
        return;
    }
    self.altbody_3p = bwastimejump;
    if (bwastimejump == 1) {
        callback = level.altbody_enter_3p_callbacks[level.altbody_name];
        if (isdefined(callback)) {
            self [[ callback ]](fieldname);
        }
        return;
    }
    callback = level.altbody_exit_3p_callbacks[level.altbody_name];
    if (isdefined(callback)) {
        self [[ callback ]](fieldname);
    }
}

// Namespace zm_altbody/zm_altbody
// Params 2, eflags: 0x0
// Checksum 0x19a6aa72, Offset: 0x700
// Size: 0xc4
function cover_transition(localclientnum, *onoff) {
    if (!self util::function_50ed1561(onoff)) {
        return;
    }
    if (isdemoplaying() && demoisanyfreemovecamera()) {
        return;
    }
    level lui::screen_fade_out(onoff, 0.05);
    level waittilltimeout(0.15, #"demo_jump");
    level lui::screen_fade_in(onoff, 0.1);
}

// Namespace zm_altbody/zm_altbody
// Params 2, eflags: 0x0
// Checksum 0x207b4fd3, Offset: 0x7d0
// Size: 0x34
function clear_transition(localclientnum, *onoff) {
    level lui::screen_fade_in(onoff, 0);
}

