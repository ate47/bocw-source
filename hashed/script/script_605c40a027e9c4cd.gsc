// Atian COD Tools GSC CW decompiler test
#using script_6741a9edbcf6c25e;
#using script_6a72d858ff1942eb;
#using script_2ce5448dd4c3e201;
#using scripts\core_common\clientfield_shared.csc;

#namespace fireteam_koth;

// Namespace fireteam_koth/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x9959c6e8, Offset: 0x218
// Size: 0x20c
function event_handler[gametype_init] main(*eventstruct) {
    namespace_2938acdc::init();
    namespace_d150537f::init();
    clientfield::register_clientuimodel("hud_items_fireteam_percontroller.waypoint_friendly_count_0", #"hash_6647de0da4510faf", #"hash_6380b11f6a262237", 20000, 3, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hud_items_fireteam_percontroller.waypoint_friendly_count_1", #"hash_6647de0da4510faf", #"hash_6380b01f6a262084", 20000, 3, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hud_items_fireteam_percontroller.waypoint_friendly_count_2", #"hash_6647de0da4510faf", #"hash_6380b31f6a26259d", 20000, 3, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hud_items_fireteam_percontroller.waypoint_enemy_count_0", #"hash_6647de0da4510faf", #"hash_659c4c036d9a19aa", 20000, 3, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hud_items_fireteam_percontroller.waypoint_enemy_count_1", #"hash_6647de0da4510faf", #"hash_659c4d036d9a1b5d", 20000, 3, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hud_items_fireteam_percontroller.waypoint_enemy_count_2", #"hash_6647de0da4510faf", #"hash_659c4a036d9a1644", 20000, 3, "int", undefined, 0, 0);
}

