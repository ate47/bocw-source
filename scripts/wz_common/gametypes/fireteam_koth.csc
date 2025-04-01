#using script_2ce5448dd4c3e201;
#using script_6741a9edbcf6c25e;
#using script_6a72d858ff1942eb;
#using scripts\core_common\clientfield_shared;

#namespace fireteam_koth;

// Namespace fireteam_koth/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x9959c6e8, Offset: 0x218
// Size: 0x20c
function event_handler[gametype_init] main( *eventstruct )
{
    namespace_2938acdc::init();
    namespace_d150537f::init();
    clientfield::register_clientuimodel( "hud_items_fireteam_percontroller.waypoint_friendly_count_0", #"hud_items_fireteam_percontroller", #"waypoint_friendly_count_0", 20000, 3, "int", undefined, 0, 0 );
    clientfield::register_clientuimodel( "hud_items_fireteam_percontroller.waypoint_friendly_count_1", #"hud_items_fireteam_percontroller", #"waypoint_friendly_count_1", 20000, 3, "int", undefined, 0, 0 );
    clientfield::register_clientuimodel( "hud_items_fireteam_percontroller.waypoint_friendly_count_2", #"hud_items_fireteam_percontroller", #"waypoint_friendly_count_2", 20000, 3, "int", undefined, 0, 0 );
    clientfield::register_clientuimodel( "hud_items_fireteam_percontroller.waypoint_enemy_count_0", #"hud_items_fireteam_percontroller", #"waypoint_enemy_count_0", 20000, 3, "int", undefined, 0, 0 );
    clientfield::register_clientuimodel( "hud_items_fireteam_percontroller.waypoint_enemy_count_1", #"hud_items_fireteam_percontroller", #"waypoint_enemy_count_1", 20000, 3, "int", undefined, 0, 0 );
    clientfield::register_clientuimodel( "hud_items_fireteam_percontroller.waypoint_enemy_count_2", #"hud_items_fireteam_percontroller", #"waypoint_enemy_count_2", 20000, 3, "int", undefined, 0, 0 );
}

