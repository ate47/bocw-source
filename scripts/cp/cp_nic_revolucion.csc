#using script_26c8cfe8e27649cd;
#using script_2a51053f55890a96;
#using script_38867f943fb86135;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\load_shared;
#using scripts\core_common\postfx_shared;
#using scripts\core_common\util_shared;
#using scripts\cp\cp_nic_revolucion_fx;

#namespace cp_nic_revolucion;

// Namespace cp_nic_revolucion/level_init
// Params 1, eflags: 0x20
// Checksum 0x838e6e29, Offset: 0xd0
// Size: 0x124
function event_handler[level_init] main(*eventstruct) {
    setsaveddvar(#"enable_global_wind", 1);
    setsaveddvar(#"wind_global_vector", "88 0 0");
    setsaveddvar(#"wind_global_low_altitude", 0);
    setsaveddvar(#"wind_global_hi_altitude", 10000);
    setsaveddvar(#"wind_global_low_strength_percent", 100);
    cp_nic_revolucion_fx::preload();
    load::main();
    callback::on_spawned(&on_player_spawned);
    util::waitforclient(0);
}

// Namespace cp_nic_revolucion/cp_nic_revolucion
// Params 1, eflags: 0x0
// Checksum 0x3d35343d, Offset: 0x200
// Size: 0x28
function on_player_spawned(*localclientnum) {
    if (!isdefined(level.player)) {
        level.player = self;
    }
}

