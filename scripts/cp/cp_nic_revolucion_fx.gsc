#using scripts\core_common\clientfield_shared;
#using scripts\cp_common\snd;

#namespace cp_nic_revolucion_fx;

// Namespace cp_nic_revolucion_fx/cp_nic_revolucion_fx
// Params 0, eflags: 0x0
// Checksum 0xe4b7b391, Offset: 0x108
// Size: 0x94
function preload() {
    clientfield::register("toplayer", "cctv_cam_swap", 1, 1, "counter");
    clientfield::register("toplayer", "cctv_cam_static", 1, 2, "int");
    clientfield::register("vehicle", "ac130_runner", 1, 1, "int");
}

// Namespace cp_nic_revolucion_fx/cp_nic_revolucion_fx
// Params 0, eflags: 0x0
// Checksum 0x1483405f, Offset: 0x1a8
// Size: 0x50
function function_383d3084() {
    self clientfield::increment_to_player("cctv_cam_swap", 1);
    snd::client_msg("flg_cctv_cam_swap_audio");
    level notify(#"hash_37a2f205712110e2");
}

// Namespace cp_nic_revolucion_fx/cp_nic_revolucion_fx
// Params 1, eflags: 0x0
// Checksum 0x2dea4253, Offset: 0x200
// Size: 0x2c
function function_476c025a(var_5f6ea71e) {
    self clientfield::set_to_player("cctv_cam_static", var_5f6ea71e);
}

// Namespace cp_nic_revolucion_fx/cp_nic_revolucion_fx
// Params 0, eflags: 0x0
// Checksum 0x9a9d87b3, Offset: 0x238
// Size: 0x2c
function function_bf0e01f7() {
    level.ac130 clientfield::set("ac130_runner", 1);
}

