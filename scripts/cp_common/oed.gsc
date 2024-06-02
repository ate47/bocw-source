// Atian COD Tools GSC CW decompiler test
#using script_32399001bdb550da;
#using scripts\core_common\visionset_mgr_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace oed;

// Namespace oed/oed
// Params 0, eflags: 0x5
// Checksum 0xefb54035, Offset: 0x198
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"oed", &preinit, &postinit, undefined, undefined);
}

// Namespace oed/oed
// Params 0, eflags: 0x6 linked
// Checksum 0x9ea1eee3, Offset: 0x1f0
// Size: 0x27c
function private preinit() {
    clientfield::register("toplayer", "sitrep_toggle", 1, 1, "int");
    clientfield::register("toplayer", "active_dni_fx", 1, 1, "counter");
    clientfield::register("toplayer", "hack_dni_fx", 1, 1, "counter");
    clientfield::register("actor", "sitrep_material", 1, 1, "int");
    clientfield::register("vehicle", "sitrep_material", 1, 1, "int");
    clientfield::register("scriptmover", "sitrep_material", 1, 1, "int");
    clientfield::register("item", "sitrep_material", 1, 1, "int");
    clientfield::register("vehicle", "turret_keyline_render", 1, 1, "int");
    clientfield::register("vehicle", "vehicle_keyline_toggle", 1, 1, "int");
    callback::on_spawned(&on_player_spawned);
    spawner::add_global_spawn_function(#"axis", &function_9eccf6c1);
    spawner::add_global_spawn_function(#"allies", &function_9eccf6c1);
    level.var_3cebd57f = 1;
    level.var_7813404f = 0;
    level.enable_thermal = &enable_thermal;
    level.disable_thermal = &disable_thermal;
}

// Namespace oed/oed
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x478
// Size: 0x4
function private postinit() {
    
}

// Namespace oed/oed
// Params 0, eflags: 0x2 linked
// Checksum 0x8599d26e, Offset: 0x488
// Size: 0x6c
function on_player_spawned() {
    self.var_3cebd57f = level.var_3cebd57f;
    self.var_a12ca713 = 0;
    self function_4b06932(self.var_a12ca713);
    var_92ea5533 = 0;
    self clientfield::set_to_player("sitrep_toggle", 1);
}

// Namespace oed/button_bit_actionslot_1_pressed
// Params 0, eflags: 0x20
// Checksum 0x95a7123a, Offset: 0x500
// Size: 0x8c
function event_handler[button_bit_actionslot_1_pressed] function_84d84898() {
    if (is_true(level.var_3cebd57f) && is_true(self.var_3cebd57f)) {
        if (!scene::is_igc_active()) {
            self.var_a12ca713 = !is_true(self.var_a12ca713);
            self function_4b06932(self.var_a12ca713);
        }
    }
}

// Namespace oed/oed
// Params 0, eflags: 0x2 linked
// Checksum 0xc0163027, Offset: 0x598
// Size: 0x64
function function_9eccf6c1() {
    if (self.team == #"axis") {
        self enable_thermal();
        return;
    }
    if (self.team == #"allies") {
        self enable_thermal();
    }
}

// Namespace oed/oed
// Params 1, eflags: 0x2 linked
// Checksum 0xb38d6f8b, Offset: 0x608
// Size: 0x5c
function enable_thermal(var_5bf5152f) {
    self endon(#"death");
    self thread function_5feac491();
    if (isdefined(var_5bf5152f)) {
        level waittill(var_5bf5152f);
        self disable_thermal();
    }
}

// Namespace oed/oed
// Params 0, eflags: 0x2 linked
// Checksum 0x387ccfb4, Offset: 0x670
// Size: 0x44
function function_5feac491() {
    self endon(#"disable_thermal");
    self waittill(#"death");
    if (isdefined(self)) {
        self disable_thermal();
    }
}

// Namespace oed/oed
// Params 0, eflags: 0x2 linked
// Checksum 0x62af39ac, Offset: 0x6c0
// Size: 0x16
function disable_thermal() {
    self notify(#"disable_thermal");
}

// Namespace oed/oed
// Params 1, eflags: 0x0
// Checksum 0xefdfedc9, Offset: 0x6e0
// Size: 0xaa
function function_9ce86e2d(b_enabled = 1) {
    level.var_3cebd57f = b_enabled;
    foreach (e_player in level.players) {
        e_player.var_3cebd57f = b_enabled;
    }
}

// Namespace oed/oed
// Params 1, eflags: 0x2 linked
// Checksum 0xa31077a, Offset: 0x798
// Size: 0x4c
function enable_ev(b_enabled = 1) {
    self.var_3cebd57f = b_enabled;
    if (!b_enabled) {
        self function_4b06932(b_enabled);
    }
}

// Namespace oed/oed
// Params 1, eflags: 0x2 linked
// Checksum 0x26a3ef7d, Offset: 0x7f0
// Size: 0x5e
function function_4b06932(b_enabled = 1) {
    self.var_a12ca713 = b_enabled;
    if (self.var_a12ca713) {
        self notify(#"hash_4bf84da81ef07fa4");
        return;
    }
    self notify(#"hash_2e8449934db3fd9d");
}

// Namespace oed/oed
// Params 2, eflags: 0x0
// Checksum 0xed5b94b7, Offset: 0x858
// Size: 0x8c
function function_f2a6c166(*var_af4a3f3e, var_5bf5152f) {
    self endon(#"death");
    self clientfield::set("sitrep_material", 1);
    self thread function_99b61739();
    if (isdefined(var_5bf5152f)) {
        level waittill(var_5bf5152f);
        self function_b925bd3c();
    }
}

// Namespace oed/oed
// Params 0, eflags: 0x2 linked
// Checksum 0xc2712c3, Offset: 0x8f0
// Size: 0x34
function function_99b61739() {
    self waittill(#"death");
    if (isdefined(self)) {
        self function_b925bd3c();
    }
}

// Namespace oed/oed
// Params 0, eflags: 0x2 linked
// Checksum 0x8ed2db1c, Offset: 0x930
// Size: 0x24
function function_b925bd3c() {
    self clientfield::set("sitrep_material", 0);
}

// Namespace oed/oed
// Params 1, eflags: 0x0
// Checksum 0x6fa09561, Offset: 0x960
// Size: 0xc8
function function_19b0de13(*b_active) {
    foreach (player in level.players) {
        player.var_bef05351 = !is_true(player.var_bef05351);
        player clientfield::set_to_player("sitrep_toggle", player.var_bef05351);
    }
}

// Namespace oed/oed
// Params 0, eflags: 0x0
// Checksum 0x8575d89a, Offset: 0xa30
// Size: 0xb2
function function_8c3be026() {
    if (!isdefined(self.angles)) {
        self.angles = (0, 0, 0);
    }
    var_57f4c959 = level.scriptbundles[#"sitrep"][self.scriptbundlename];
    var_7343683f = util::spawn_model(var_57f4c959.model, self.origin, self.angles);
    if (isdefined(var_57f4c959.var_2e0f906a)) {
        var_7343683f.var_280ea1f = var_57f4c959.var_2e0f906a;
    } else {
        var_7343683f.var_280ea1f = 0;
    }
    return var_7343683f;
}

