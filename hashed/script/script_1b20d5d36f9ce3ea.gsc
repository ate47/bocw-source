#using script_3dc93ca9902a9cda;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\system_shared;
#using scripts\cp_common\snd;

#namespace namespace_660edc44;

// Namespace namespace_660edc44/namespace_660edc44
// Params 0, eflags: 0x5
// Checksum 0x673cac0f, Offset: 0x198
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_5bc80a4805fb6af", &preload, undefined, undefined, #"hash_2846a4f4bd094545");
}

// Namespace namespace_660edc44/namespace_660edc44
// Params 0, eflags: 0x0
// Checksum 0xd0435db0, Offset: 0x1e8
// Size: 0x34
function preload() {
    spawner::add_archetype_spawn_function(#"civilian", &function_478f2963);
}

// Namespace namespace_660edc44/namespace_660edc44
// Params 0, eflags: 0x4
// Checksum 0x2379b07e, Offset: 0x228
// Size: 0x1a
function private function_478f2963() {
    self.var_5557ac4d = &function_383c1f31;
}

// Namespace namespace_660edc44/namespace_660edc44
// Params 0, eflags: 0x4
// Checksum 0x7e7ade6c, Offset: 0x250
// Size: 0xdc
function private function_383c1f31() {
    var_3fb530fa = ["vox_civ_panic_01", "vox_civ_panic_02", "vox_civ_panic_03"];
    if (isdefined(level.map_name) && level.map_name == "cp_nic_revolucion") {
        var_3fb530fa = ["vox_cp_cbcr_02400_sci_startledscream_0c", "vox_cp_cbcr_02400_ms2_heavybreathing_ff", "vox_cp_cbcr_02400_sci_whimpering_48", "vox_cp_cbcr_02400_ms2_whimpering_48"];
    }
    snd::play(var_3fb530fa[randomint(var_3fb530fa.size)], self);
}

