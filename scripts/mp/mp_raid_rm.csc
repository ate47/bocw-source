#using scripts\core_common\callbacks_shared;
#using scripts\core_common\load_shared;
#using scripts\core_common\util_shared;

#namespace mp_raid_rm;

// Namespace mp_raid_rm/level_init
// Params 1, eflags: 0x20
// Checksum 0x969f670a, Offset: 0x150
// Size: 0x12c
function event_handler[level_init] main(*eventstruct) {
    setsaveddvar(#"enable_global_wind", 1);
    setsaveddvar(#"wind_global_vector", "88 0 0");
    setsaveddvar(#"wind_global_low_altitude", 0);
    setsaveddvar(#"wind_global_hi_altitude", 10000);
    setsaveddvar(#"wind_global_low_strength_percent", 100);
    callback::on_gameplay_started(&on_gameplay_started);
    level thread function_b02d88a3();
    load::main();
    util::waitforclient(0);
}

// Namespace mp_raid_rm/mp_raid_rm
// Params 1, eflags: 0x0
// Checksum 0xd57f05a1, Offset: 0x288
// Size: 0x2c
function on_gameplay_started(*localclientnum) {
    waitframe(1);
    util::function_8eb5d4b0(700, 1.5);
}

// Namespace mp_raid_rm/mp_raid_rm
// Params 0, eflags: 0x0
// Checksum 0x9af88776, Offset: 0x2c0
// Size: 0x108
function function_b02d88a3() {
    var_f7d8aaa7 = strtok("tdm tdm_hc tdm10v10 conf conf10v10 conf_hc dm dm_hc ctf koth koth10v10 koth_cdl koth_hc oic shrp gun control control_cdl koth_cdlpro control_cdlpro", " ");
    gametype = util::get_game_type();
    if (!isinarray(var_f7d8aaa7, gametype)) {
        indices = findvolumedecalindexarray("dom_bounds");
        foreach (index in indices) {
            hidevolumedecal(index);
        }
    }
}

