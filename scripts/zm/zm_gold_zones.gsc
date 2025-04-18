#using script_2f560596a9a134ab;
#using script_4ce5d94e8c797350;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\struct;
#using scripts\core_common\util_shared;
#using scripts\zm\zm_gold;
#using scripts\zm_common\zm_hud;
#using scripts\zm_common\zm_sq;
#using scripts\zm_common\zm_zonemgr;

#namespace zm_gold_zones;

// Namespace zm_gold_zones/zm_gold_zones
// Params 0, eflags: 0x1
// Checksum 0x23e65b84, Offset: 0xca0
// Size: 0x364
function autoexec init()
{
    callback::on_spawned( &function_44b1279a );
    level.var_4b35561a = [ "zone_firebase", "zone_firebase2", "zone_firebase3", "zone_armory", "zone_trenches", "zone_chopper_gunner", "zone_chopper_gunner2", "zone_chopper_gunner3", "zone_artillery_strike", "zone_artillery_strike2", "zone_artillery_strike_outdoor", "zone_armory2", "zone_burnt_forest_defend", "zone_tents", "zone_tents2", "zone_rocky_slope_defend", "zone_napalm_strike", "zone_napalm_strike2", "zone_hillside_road_defend", "zone_hillside_road_defend_outside", "zone_rocky_slope_defend_outside", "zone_burnt_forest_defend_outside", "zone_opc_room", "zone_field_hospital", "zone_walkway", "zone_weapon_lab", "zone_lot", "zone_opc", "zone_trenches_office", "zone_trenches_garage", "zone_tents_a", "zone_tents_b", "zone_colonel_office", "zone_armory2_outside" ];
    level.var_aa31c120 = [ "zone_village", "zone_village2", "zone_village3", "zone_atrium", "zone_scientist", "zone_peck_quarters", "zone_village_house", "zone_village_house2", "zone_portal_transfer", "zone_radio_room" ];
    level thread function_19f5e3fa();
    level thread function_a2cfeff5();
    level.var_aa3b88c5 = &function_27028b8e;
    level.var_27028b8e = &function_27028b8e;
}

// Namespace zm_gold_zones/zm_gold_zones
// Params 0, eflags: 0x0
// Checksum 0xe932ec9b, Offset: 0x1010
// Size: 0x371a
function zone_init()
{
    level flag::set( "always_on" );
    zm_zonemgr::zone_init( "zone_village" );
    zm_zonemgr::add_adjacent_zone( "zone_bunny_room_1", "zone_bunny_room_2", "enable_bunny_room_zone", 0 );
    zm_zonemgr::add_adjacent_zone( "zone_village", "zone_village2", "always_on" );
    zm_zonemgr::add_adjacent_zone( "zone_village", "zone_village3", "always_on" );
    zm_zonemgr::add_adjacent_zone( "zone_village", "zone_atrium", "always_on" );
    zm_zonemgr::add_adjacent_zone( "zone_village", "zone_scientist", "connect_village_to_scientist" );
    zm_zonemgr::add_adjacent_zone( "zone_village", "zone_village_house", "connect_village_to_village_house" );
    zm_zonemgr::add_adjacent_zone( "zone_village", "zone_village_house2", "connect_village_to_village_house" );
    zm_zonemgr::add_adjacent_zone( "zone_village", "zone_portal_transfer", "connect_village_to_village_house" );
    zm_zonemgr::add_adjacent_zone( "zone_village", "zone_peck_quarters", "connect_village_to_peck_quarters" );
    zm_zonemgr::add_adjacent_zone( "zone_village2", "zone_village", "always_on" );
    zm_zonemgr::add_adjacent_zone( "zone_village2", "zone_village3", "always_on" );
    zm_zonemgr::add_adjacent_zone( "zone_village2", "zone_atrium", "always_on" );
    zm_zonemgr::add_adjacent_zone( "zone_village2", "zone_radio_room", "always_on" );
    zm_zonemgr::add_adjacent_zone( "zone_village2", "zone_scientist", "connect_village_to_scientist" );
    zm_zonemgr::add_adjacent_zone( "zone_village2", "zone_village_house", "connect_village_to_village_house" );
    zm_zonemgr::add_adjacent_zone( "zone_village2", "zone_village_house2", "connect_village_to_village_house" );
    zm_zonemgr::add_adjacent_zone( "zone_village2", "zone_portal_transfer", "connect_village_to_village_house" );
    zm_zonemgr::add_adjacent_zone( "zone_village2", "zone_peck_quarters", "connect_village_to_peck_quarters" );
    zm_zonemgr::add_adjacent_zone( "zone_village3", "zone_village", "always_on" );
    zm_zonemgr::add_adjacent_zone( "zone_village3", "zone_village2", "always_on" );
    zm_zonemgr::add_adjacent_zone( "zone_village3", "zone_atrium", "always_on" );
    zm_zonemgr::add_adjacent_zone( "zone_village3", "zone_radio_room", "always_on" );
    zm_zonemgr::add_adjacent_zone( "zone_village3", "zone_scientist", "connect_village_to_scientist" );
    zm_zonemgr::add_adjacent_zone( "zone_village3", "zone_village_house", "connect_village_to_village_house" );
    zm_zonemgr::add_adjacent_zone( "zone_village3", "zone_village_house2", "connect_village_to_village_house" );
    zm_zonemgr::add_adjacent_zone( "zone_village3", "zone_portal_transfer", "connect_village_to_village_house" );
    zm_zonemgr::add_adjacent_zone( "zone_village3", "zone_peck_quarters", "connect_village_to_peck_quarters" );
    zm_zonemgr::add_adjacent_zone( "zone_atrium", "zone_village", "always_on" );
    zm_zonemgr::add_adjacent_zone( "zone_atrium", "zone_village2", "always_on" );
    zm_zonemgr::add_adjacent_zone( "zone_atrium", "zone_village3", "always_on" );
    zm_zonemgr::add_adjacent_zone( "zone_atrium", "zone_village_house", "connect_village_to_village_house" );
    zm_zonemgr::add_adjacent_zone( "zone_atrium", "zone_village_house2", "connect_village_to_village_house" );
    zm_zonemgr::add_adjacent_zone( "zone_atrium", "zone_scientist", "connect_atrium_to_scientist" );
    zm_zonemgr::add_adjacent_zone( "zone_atrium", "zone_peck_quarters", "connect_atrium_to_peck_quarters" );
    zm_zonemgr::add_adjacent_zone( "zone_radio_room", "zone_village", "always_on" );
    zm_zonemgr::add_adjacent_zone( "zone_radio_room", "zone_village2", "always_on" );
    zm_zonemgr::add_adjacent_zone( "zone_radio_room", "zone_village3", "always_on" );
    zm_zonemgr::add_adjacent_zone( "zone_radio_room", "zone_atrium", "always_on" );
    zm_zonemgr::add_adjacent_zone( "zone_radio_room", "zone_village_house", "connect_village_to_village_house" );
    zm_zonemgr::add_adjacent_zone( "zone_radio_room", "zone_village_house2", "connect_village_to_village_house" );
    zm_zonemgr::add_adjacent_zone( "zone_radio_room", "zone_scientist", "connect_village_to_scientist" );
    zm_zonemgr::add_adjacent_zone( "zone_village_house", "zone_radio_room", "connect_village_to_village_house" );
    zm_zonemgr::add_adjacent_zone( "zone_village_house", "zone_village", "connect_village_to_village_house" );
    zm_zonemgr::add_adjacent_zone( "zone_village_house", "zone_village2", "connect_village_to_village_house" );
    zm_zonemgr::add_adjacent_zone( "zone_village_house", "zone_village3", "connect_village_to_village_house" );
    zm_zonemgr::add_adjacent_zone( "zone_village_house", "zone_atrium", "connect_village_to_village_house" );
    zm_zonemgr::add_adjacent_zone( "zone_village_house", "zone_village_house2", "always_on" );
    zm_zonemgr::add_adjacent_zone( "zone_village_house", "zone_portal_transfer", "always_on" );
    zm_zonemgr::add_adjacent_zone( "zone_village_house", "zone_scientist", "connect_village_to_scientist" );
    zm_zonemgr::add_adjacent_zone( "zone_village_house", "zone_peck_quarters", "connect_atrium_to_peck_quarters" );
    zm_zonemgr::add_adjacent_zone( "zone_village_house2", "zone_radio_room", "connect_village_to_village_house" );
    zm_zonemgr::add_adjacent_zone( "zone_village_house2", "zone_village", "connect_village_to_village_house" );
    zm_zonemgr::add_adjacent_zone( "zone_village_house2", "zone_village2", "connect_village_to_village_house" );
    zm_zonemgr::add_adjacent_zone( "zone_village_house2", "zone_village3", "connect_village_to_village_house" );
    zm_zonemgr::add_adjacent_zone( "zone_village_house2", "zone_atrium", "connect_village_to_village_house" );
    zm_zonemgr::add_adjacent_zone( "zone_village_house2", "zone_village_house", "always_on" );
    zm_zonemgr::add_adjacent_zone( "zone_village_house2", "zone_portal_transfer", "always_on" );
    zm_zonemgr::add_adjacent_zone( "zone_village_house2", "zone_scientist", "connect_village_to_scientist" );
    zm_zonemgr::add_adjacent_zone( "zone_village_house2", "zone_peck_quarters", "connect_atrium_to_peck_quarters" );
    zm_zonemgr::add_adjacent_zone( "zone_portal_transfer", "zone_village", "always_on" );
    zm_zonemgr::add_adjacent_zone( "zone_portal_transfer", "zone_village2", "always_on" );
    zm_zonemgr::add_adjacent_zone( "zone_portal_transfer", "zone_village3", "always_on" );
    zm_zonemgr::add_adjacent_zone( "zone_portal_transfer", "zone_atrium", "always_on" );
    zm_zonemgr::add_adjacent_zone( "zone_portal_transfer", "zone_village_house", "always_on" );
    zm_zonemgr::add_adjacent_zone( "zone_portal_transfer", "zone_village_house2", "always_on" );
    zm_zonemgr::add_adjacent_zone( "zone_portal_transfer", "zone_peck_quarters", "connect_atrium_to_peck_quarters" );
    zm_zonemgr::add_adjacent_zone( "zone_scientist", "zone_village", "connect_village_to_scientist" );
    zm_zonemgr::add_adjacent_zone( "zone_scientist", "zone_village2", "connect_village_to_scientist" );
    zm_zonemgr::add_adjacent_zone( "zone_scientist", "zone_village3", "connect_village_to_scientist" );
    zm_zonemgr::add_adjacent_zone( "zone_scientist", "zone_atrium", "connect_village_to_scientist" );
    zm_zonemgr::add_adjacent_zone( "zone_scientist", "zone_village_house", "connect_village_to_scientist" );
    zm_zonemgr::add_adjacent_zone( "zone_scientist", "zone_peck_quarters", "connect_atrium_to_peck_quarters" );
    zm_zonemgr::add_adjacent_zone( "zone_peck_quarters", "zone_village", "connect_village_to_peck_quarters" );
    zm_zonemgr::add_adjacent_zone( "zone_peck_quarters", "zone_village2", "connect_village_to_peck_quarters" );
    zm_zonemgr::add_adjacent_zone( "zone_peck_quarters", "zone_village3", "connect_village_to_peck_quarters" );
    zm_zonemgr::add_adjacent_zone( "zone_peck_quarters", "zone_atrium", "connect_village_to_peck_quarters" );
    zm_zonemgr::add_adjacent_zone( "zone_peck_quarters", "zone_portal_transfer", "connect_village_to_peck_quarters" );
    zm_zonemgr::add_adjacent_zone( "zone_peck_quarters", "zone_scientist", "connect_village_to_peck_quarters" );
    zm_zonemgr::add_adjacent_zone( "zone_firebase", "zone_firebase2", "enable_firebase_zone" );
    zm_zonemgr::add_adjacent_zone( "zone_firebase", "zone_firebase3", "enable_firebase_zone" );
    zm_zonemgr::add_adjacent_zone( "zone_firebase", "zone_tents", "connect_firebase_to_tents" );
    zm_zonemgr::add_adjacent_zone( "zone_firebase", "zone_tents_a", "connect_firebase_to_tents" );
    zm_zonemgr::add_adjacent_zone( "zone_firebase", "zone_tents_b", "connect_firebase_to_tents" );
    zm_zonemgr::add_adjacent_zone( "zone_firebase", "zone_trenches", "connect_firebase_to_trenches" );
    zm_zonemgr::add_adjacent_zone( "zone_firebase", "zone_trenches_office", "connect_firebase_to_trenches" );
    zm_zonemgr::add_adjacent_zone( "zone_firebase", "zone_trenches_garage", "connect_firebase_to_trenches" );
    zm_zonemgr::add_adjacent_zone( "zone_firebase", "zone_lot", "connect_firebase_to_armory" );
    zm_zonemgr::add_adjacent_zone( "zone_firebase", "zone_armory", "connect_firebase_to_armory" );
    zm_zonemgr::add_adjacent_zone( "zone_firebase2", "zone_firebase", "enable_firebase_zone" );
    zm_zonemgr::add_adjacent_zone( "zone_firebase2", "zone_firebase3", "enable_firebase_zone" );
    zm_zonemgr::add_adjacent_zone( "zone_firebase2", "zone_tents", "connect_firebase_to_tents" );
    zm_zonemgr::add_adjacent_zone( "zone_firebase2", "zone_tents_a", "connect_firebase_to_tents" );
    zm_zonemgr::add_adjacent_zone( "zone_firebase2", "zone_tents_b", "connect_firebase_to_tents" );
    zm_zonemgr::add_adjacent_zone( "zone_firebase2", "zone_trenches", "connect_firebase_to_trenches" );
    zm_zonemgr::add_adjacent_zone( "zone_firebase2", "zone_armory", "connect_firebase_to_armory" );
    zm_zonemgr::add_adjacent_zone( "zone_firebase2", "zone_armory2", "connect_firebase_to_armory" );
    zm_zonemgr::add_adjacent_zone( "zone_firebase2", "zone_armory2_outside", "connect_firebase_to_armory" );
    zm_zonemgr::add_adjacent_zone( "zone_firebase2", "zone_lot", "connect_firebase_to_armory" );
    zm_zonemgr::add_adjacent_zone( "zone_firebase3", "zone_firebase", "enable_firebase_zone" );
    zm_zonemgr::add_adjacent_zone( "zone_firebase3", "zone_firebase2", "enable_firebase_zone" );
    zm_zonemgr::add_adjacent_zone( "zone_firebase3", "zone_lot", "connect_firebase_to_armory" );
    zm_zonemgr::add_adjacent_zone( "zone_firebase3", "zone_tents", "connect_firebase_to_tents" );
    zm_zonemgr::add_adjacent_zone( "zone_firebase3", "zone_trenches", "connect_firebase_to_trenches" );
    zm_zonemgr::add_adjacent_zone( "zone_tents", "zone_tents2", "connect_tents_zone" );
    zm_zonemgr::add_adjacent_zone( "zone_tents", "zone_tents_a", "connect_tents_zone" );
    zm_zonemgr::add_adjacent_zone( "zone_tents", "zone_tents_b", "connect_tents_zone" );
    zm_zonemgr::add_adjacent_zone( "zone_tents", "zone_field_hospital", "connect_tents_zone" );
    zm_zonemgr::add_adjacent_zone( "zone_tents", "zone_firebase", "connect_firebase_to_tents" );
    zm_zonemgr::add_adjacent_zone( "zone_tents", "zone_firebase2", "connect_firebase_to_tents" );
    zm_zonemgr::add_adjacent_zone( "zone_tents", "zone_firebase3", "connect_firebase_to_tents" );
    zm_zonemgr::add_adjacent_zone( "zone_tents2", "zone_tents", "connect_tents_zone" );
    zm_zonemgr::add_adjacent_zone( "zone_tents2", "zone_tents_a", "connect_tents_zone" );
    zm_zonemgr::add_adjacent_zone( "zone_tents2", "zone_tents_b", "connect_tents_zone" );
    zm_zonemgr::add_adjacent_zone( "zone_tents2", "zone_field_hospital", "connect_tents_zone" );
    zm_zonemgr::add_adjacent_zone( "zone_tents2", "zone_firebase", "connect_firebase_to_tents" );
    zm_zonemgr::add_adjacent_zone( "zone_tents2", "zone_artillery_strike", "connect_tents_to_artillery_strike" );
    zm_zonemgr::add_adjacent_zone( "zone_tents2", "zone_burnt_forest_defend", "connect_tents_to_burnt_forest_defend" );
    zm_zonemgr::add_adjacent_zone( "zone_tents_a", "zone_tents", "connect_tents_zone" );
    zm_zonemgr::add_adjacent_zone( "zone_tents_a", "zone_tents2", "connect_tents_zone" );
    zm_zonemgr::add_adjacent_zone( "zone_tents_a", "zone_tents_a", "connect_tents_zone" );
    zm_zonemgr::add_adjacent_zone( "zone_tents_a", "zone_tents_b", "connect_tents_zone" );
    zm_zonemgr::add_adjacent_zone( "zone_tents_a", "zone_field_hospital", "connect_tents_zone" );
    zm_zonemgr::add_adjacent_zone( "zone_tents_a", "zone_firebase", "connect_firebase_to_tents" );
    zm_zonemgr::add_adjacent_zone( "zone_tents_a", "zone_burnt_forest_defend", "connect_tents_to_burnt_forest_defend" );
    zm_zonemgr::add_adjacent_zone( "zone_tents_b", "zone_tents", "connect_tents_zone" );
    zm_zonemgr::add_adjacent_zone( "zone_tents_b", "zone_tents2", "connect_tents_zone" );
    zm_zonemgr::add_adjacent_zone( "zone_tents_b", "zone_tents_a", "connect_tents_zone" );
    zm_zonemgr::add_adjacent_zone( "zone_tents_b", "zone_field_hospital", "connect_tents_zone" );
    zm_zonemgr::add_adjacent_zone( "zone_tents_b", "zone_firebase", "connect_firebase_to_tents" );
    zm_zonemgr::add_adjacent_zone( "zone_tents_b", "zone_firebase2", "connect_firebase_to_tents" );
    zm_zonemgr::add_adjacent_zone( "zone_tents_b", "zone_artillery_strike", "connect_tents_to_artillery_strike" );
    zm_zonemgr::add_adjacent_zone( "zone_tents_b", "zone_burnt_forest_defend", "connect_tents_to_burnt_forest_defend" );
    zm_zonemgr::add_adjacent_zone( "zone_field_hospital", "zone_tents", "connect_tents_zone" );
    zm_zonemgr::add_adjacent_zone( "zone_field_hospital", "zone_tents2", "connect_tents_zone" );
    zm_zonemgr::add_adjacent_zone( "zone_field_hospital", "zone_tents_a", "connect_tents_zone" );
    zm_zonemgr::add_adjacent_zone( "zone_field_hospital", "zone_tents_b", "connect_tents_zone" );
    zm_zonemgr::add_adjacent_zone( "zone_field_hospital", "zone_field_hospital", "connect_tents_zone" );
    zm_zonemgr::add_adjacent_zone( "zone_field_hospital", "zone_firebase", "connect_firebase_to_tents" );
    zm_zonemgr::add_adjacent_zone( "zone_field_hospital", "zone_artillery_strike", "connect_tents_to_artillery_strike" );
    zm_zonemgr::add_adjacent_zone( "zone_field_hospital", "zone_burnt_forest_defend", "connect_tents_to_burnt_forest_defend" );
    zm_zonemgr::add_zone_flags( "connect_firebase_to_tents", "connect_tents_zone" );
    zm_zonemgr::add_zone_flags( "connect_tents_to_artillery_strike", "connect_tents_zone" );
    zm_zonemgr::add_zone_flags( "connect_tents_to_burnt_forest_defend", "connect_tents_zone" );
    zm_zonemgr::add_adjacent_zone( "zone_artillery_strike", "zone_artillery_strike2", "connect_artillery_strike_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_artillery_strike", "zone_artillery_strike_outdoor", "connect_artillery_strike_to_rocky_slope_defend" );
    zm_zonemgr::add_adjacent_zone( "zone_artillery_strike", "zone_tents2", "connect_tents_to_artillery_strike" );
    zm_zonemgr::add_adjacent_zone( "zone_artillery_strike", "zone_tents_b", "connect_tents_to_artillery_strike" );
    zm_zonemgr::add_adjacent_zone( "zone_artillery_strike", "zone_field_hospital", "connect_tents_to_artillery_strike" );
    zm_zonemgr::add_adjacent_zone( "zone_artillery_strike2", "zone_artillery_strike", "connect_artillery_strike_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_artillery_strike2", "zone_rocky_slope_defend", "connect_artillery_strike_2_to_rocky_slope_defend" );
    zm_zonemgr::add_adjacent_zone( "zone_artillery_strike2", "zone_weapon_lab", "connect_weapon_lab_to_rocky_slope_defend" );
    zm_zonemgr::add_adjacent_zone( "zone_artillery_strike_outdoor", "zone_artillery_strike", "connect_artillery_strike_to_rocky_slope_defend" );
    zm_zonemgr::add_adjacent_zone( "zone_artillery_strike_outdoor", "zone_artillery_strike2", "connect_artillery_strike_to_rocky_slope_defend" );
    zm_zonemgr::add_adjacent_zone( "zone_artillery_strike_outdoor", "zone_rocky_slope_defend", "connect_artillery_strike_to_rocky_slope_defend" );
    zm_zonemgr::add_adjacent_zone( "zone_artillery_strike_outdoor", "zone_weapon_lab", "connect_weapon_lab_to_rocky_slope_defend" );
    zm_zonemgr::add_adjacent_zone( "zone_rocky_slope_defend", "zone_artillery_strike2", "connect_artillery_strike_2_to_rocky_slope_defend" );
    zm_zonemgr::add_adjacent_zone( "zone_rocky_slope_defend", "zone_rocky_slope_defend_outside", "connect_artillery_strike_2_to_rocky_slope_defend" );
    zm_zonemgr::add_adjacent_zone( "zone_rocky_slope_defend", "zone_weapon_lab", "connect_weapon_lab_to_rocky_slope_defend" );
    zm_zonemgr::add_adjacent_zone( "zone_rocky_slope_defend_outside", "zone_artillery_strike2", "connect_artillery_strike_2_to_rocky_slope_defend" );
    zm_zonemgr::add_adjacent_zone( "zone_rocky_slope_defend_outside", "zone_rocky_slope_defend", "connect_artillery_strike_2_to_rocky_slope_defend" );
    zm_zonemgr::add_adjacent_zone( "zone_rocky_slope_defend_outside", "zone_weapon_lab", "connect_weapon_lab_to_rocky_slope_defend" );
    zm_zonemgr::add_zone_flags( "connect_tents_to_artillery_strike", "connect_artillery_strike_zones" );
    zm_zonemgr::add_zone_flags( "connect_artillery_strike_2_to_rocky_slope_defend", "connect_artillery_strike_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_weapon_lab", "zone_rocky_slope_defend", "connect_weapon_lab_to_rocky_slope_defend" );
    zm_zonemgr::add_adjacent_zone( "zone_weapon_lab", "zone_artillery_strike2", "connect_weapon_lab_to_rocky_slope_defend" );
    zm_zonemgr::add_adjacent_zone( "zone_weapon_lab", "zone_trenches", "activate_weapons_lab" );
    zm_zonemgr::add_adjacent_zone( "zone_weapon_lab", "zone_trenches_garage", "activate_weapons_lab" );
    zm_zonemgr::add_adjacent_zone( "zone_weapon_lab", "zone_trenches_office", "activate_weapons_lab" );
    level thread function_2c6d81f9();
    zm_zonemgr::add_adjacent_zone( "zone_trenches", "zone_trenches_office", "connect_trenches_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_trenches", "zone_trenches_garage", "connect_trenches_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_trenches", "zone_firebase", "connect_firebase_to_trenches" );
    zm_zonemgr::add_adjacent_zone( "zone_trenches", "zone_firebase2", "connect_firebase_to_trenches" );
    zm_zonemgr::add_adjacent_zone( "zone_trenches", "zone_firebase3", "connect_firebase_to_trenches" );
    zm_zonemgr::add_adjacent_zone( "zone_trenches", "zone_chopper_gunner2", "connect_trenches_to_chopper_gunner" );
    zm_zonemgr::add_adjacent_zone( "zone_trenches", "zone_weapon_lab", "activate_weapons_lab" );
    zm_zonemgr::add_adjacent_zone( "zone_trenches_garage", "zone_trenches", "connect_trenches_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_trenches_garage", "zone_trenches_office", "connect_trenches_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_trenches_garage", "zone_firebase", "connect_firebase_to_trenches" );
    zm_zonemgr::add_adjacent_zone( "zone_trenches_garage", "zone_firebase3", "connect_firebase_to_trenches" );
    zm_zonemgr::add_adjacent_zone( "zone_trenches_garage", "zone_chopper_gunner2", "connect_trenches_to_chopper_gunner" );
    zm_zonemgr::add_adjacent_zone( "zone_trenches_garage", "zone_weapon_lab", "activate_weapons_lab" );
    zm_zonemgr::add_adjacent_zone( "zone_trenches_office", "zone_trenches", "connect_trenches_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_trenches_office", "zone_trenches_garage", "connect_trenches_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_trenches_office", "zone_firebase", "connect_firebase_to_trenches" );
    zm_zonemgr::add_adjacent_zone( "zone_trenches_office", "zone_firebase2", "connect_firebase_to_trenches" );
    zm_zonemgr::add_adjacent_zone( "zone_trenches_office", "zone_chopper_gunner2", "connect_trenches_to_chopper_gunner" );
    zm_zonemgr::add_adjacent_zone( "zone_trenches_office", "zone_weapon_lab", "activate_weapons_lab" );
    zm_zonemgr::add_zone_flags( "connect_firebase_to_trenches", "connect_trenches_zones" );
    zm_zonemgr::add_zone_flags( "connect_trenches_to_chopper_gunner", "connect_trenches_zones" );
    zm_zonemgr::add_zone_flags( "connect_weapon_lab_to_rocky_slope_defend", "connect_trenches_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_chopper_gunner2", "zone_chopper_gunner", "connect_chopper_gunner_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_chopper_gunner2", "zone_chopper_gunner3", "connect_chopper_gunner_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_chopper_gunner2", "zone_trenches", "connect_trenches_to_chopper_gunner" );
    zm_zonemgr::add_adjacent_zone( "zone_chopper_gunner2", "zone_trenches_garage", "connect_trenches_to_chopper_gunner" );
    zm_zonemgr::add_adjacent_zone( "zone_chopper_gunner2", "zone_trenches_office", "connect_trenches_to_chopper_gunner" );
    zm_zonemgr::add_adjacent_zone( "zone_chopper_gunner2", "zone_hillside_road_defend", "connect_chopper_gunner_to_hillside_road_defend" );
    zm_zonemgr::add_adjacent_zone( "zone_chopper_gunner", "zone_chopper_gunner2", "connect_chopper_gunner_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_chopper_gunner", "zone_chopper_gunner3", "connect_chopper_gunner_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_chopper_gunner", "zone_hillside_road_defend", "connect_chopper_gunner_to_hillside_road_defend" );
    zm_zonemgr::add_adjacent_zone( "zone_chopper_gunner3", "zone_chopper_gunner", "connect_chopper_gunner_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_chopper_gunner3", "zone_chopper_gunner2", "connect_chopper_gunner_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_chopper_gunner3", "zone_colonel_office", "connect_chopper_gunner_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_chopper_gunner3", "zone_hillside_road_defend", "connect_chopper_gunner_to_hillside_road_defend" );
    zm_zonemgr::add_adjacent_zone( "zone_chopper_gunner3", "zone_walkway", "connect_armory_to_chopper_gunner" );
    zm_zonemgr::add_adjacent_zone( "zone_colonel_office", "zone_chopper_gunner", "connect_chopper_gunner_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_colonel_office", "zone_chopper_gunner3", "connect_chopper_gunner_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_colonel_office", "zone_walkway", "connect_armory_to_chopper_gunner" );
    zm_zonemgr::add_adjacent_zone( "zone_colonel_office", "zone_armory2", "connect_armory_to_chopper_gunner" );
    zm_zonemgr::add_adjacent_zone( "zone_hillside_road_defend", "zone_chopper_gunner", "connect_chopper_gunner_to_hillside_road_defend" );
    zm_zonemgr::add_adjacent_zone( "zone_hillside_road_defend", "zone_chopper_gunner2", "connect_chopper_gunner_to_hillside_road_defend" );
    zm_zonemgr::add_adjacent_zone( "zone_hillside_road_defend", "zone_chopper_gunner3", "connect_chopper_gunner_to_hillside_road_defend" );
    zm_zonemgr::add_adjacent_zone( "zone_hillside_road_defend", "zone_hillside_road_defend_outside", "connect_chopper_gunner_to_hillside_road_defend" );
    zm_zonemgr::add_adjacent_zone( "zone_hillside_road_defend_outside", "zone_chopper_gunner", "connect_chopper_gunner_to_hillside_road_defend" );
    zm_zonemgr::add_adjacent_zone( "zone_hillside_road_defend_outside", "zone_hillside_road_defend", "connect_chopper_gunner_to_hillside_road_defend" );
    zm_zonemgr::add_zone_flags( "connect_trenches_to_chopper_gunner", "connect_chopper_gunner_zones" );
    zm_zonemgr::add_zone_flags( "connect_armory_to_chopper_gunner", "connect_chopper_gunner_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_walkway", "zone_lot", "connect_armory_to_chopper_gunner" );
    zm_zonemgr::add_adjacent_zone( "zone_walkway", "zone_armory2", "connect_armory_to_chopper_gunner" );
    zm_zonemgr::add_adjacent_zone( "zone_walkway", "zone_armory2_outside", "connect_armory_to_chopper_gunner" );
    zm_zonemgr::add_adjacent_zone( "zone_walkway", "zone_chopper_gunner3", "connect_armory_to_chopper_gunner" );
    zm_zonemgr::add_adjacent_zone( "zone_walkway", "zone_colonel_office", "connect_armory_to_chopper_gunner" );
    zm_zonemgr::add_adjacent_zone( "zone_lot", "zone_armory", "connect_armory_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_lot", "zone_armory2", "connect_armory_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_lot", "zone_armory2_outside", "connect_armory_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_lot", "zone_opc", "connect_armory_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_lot", "zone_firebase", "connect_firebase_to_armory" );
    zm_zonemgr::add_adjacent_zone( "zone_lot", "zone_firebase2", "connect_firebase_to_armory" );
    zm_zonemgr::add_adjacent_zone( "zone_lot", "zone_firebase3", "connect_firebase_to_armory" );
    zm_zonemgr::add_adjacent_zone( "zone_lot", "zone_walkway", "connect_armory_to_chopper_gunner" );
    zm_zonemgr::add_adjacent_zone( "zone_lot", "zone_napalm_strike", "connect_napalm_strike_to_armory" );
    zm_zonemgr::add_adjacent_zone( "zone_armory", "zone_lot", "connect_armory_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_armory", "zone_armory2", "connect_armory_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_armory", "zone_armory2_outside", "connect_armory_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_armory", "zone_opc", "connect_armory_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_armory", "zone_firebase2", "connect_firebase_to_armory" );
    zm_zonemgr::add_adjacent_zone( "zone_armory", "zone_walkway", "connect_armory_to_chopper_gunner" );
    zm_zonemgr::add_adjacent_zone( "zone_armory", "zone_napalm_strike", "connect_napalm_strike_to_armory" );
    zm_zonemgr::add_adjacent_zone( "zone_armory2", "zone_lot", "connect_armory_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_armory2", "zone_armory", "connect_armory_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_armory2", "zone_armory2_outside", "connect_armory_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_armory2", "zone_opc", "connect_armory_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_armory2", "zone_firebase2", "connect_firebase_to_armory" );
    zm_zonemgr::add_adjacent_zone( "zone_armory2", "zone_walkway", "connect_armory_to_chopper_gunner" );
    zm_zonemgr::add_adjacent_zone( "zone_armory2", "zone_chopper_gunner3", "connect_armory_to_chopper_gunner" );
    zm_zonemgr::add_adjacent_zone( "zone_armory2", "zone_napalm_strike", "connect_napalm_strike_to_armory" );
    zm_zonemgr::add_adjacent_zone( "zone_armory2_outside", "zone_lot", "connect_armory_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_armory2_outside", "zone_armory", "connect_armory_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_armory2_outside", "zone_armory2", "connect_armory_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_armory2_outside", "zone_armory2_outside", "connect_armory_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_armory2_outside", "zone_opc", "connect_armory_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_armory2_outside", "zone_firebase", "connect_firebase_to_armory" );
    zm_zonemgr::add_adjacent_zone( "zone_armory2_outside", "zone_firebase2", "connect_firebase_to_armory" );
    zm_zonemgr::add_adjacent_zone( "zone_armory2_outside", "zone_walkway", "connect_armory_to_chopper_gunner" );
    zm_zonemgr::add_adjacent_zone( "zone_armory2_outside", "zone_chopper_gunner3", "connect_armory_to_chopper_gunner" );
    zm_zonemgr::add_adjacent_zone( "zone_armory2_outside", "zone_napalm_strike", "connect_napalm_strike_to_armory" );
    zm_zonemgr::add_adjacent_zone( "zone_armory2_outside", "zone_napalm_strike2", "connect_napalm_strike_to_armory" );
    zm_zonemgr::add_adjacent_zone( "zone_opc", "zone_lot", "connect_armory_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_opc", "zone_armory", "connect_armory_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_opc", "zone_armory2", "connect_armory_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_opc", "zone_armory2_outside", "connect_armory_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_opc", "zone_opc", "connect_armory_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_opc", "zone_firebase2", "connect_firebase_to_armory" );
    zm_zonemgr::add_adjacent_zone( "zone_opc", "zone_firebase3", "connect_firebase_to_armory" );
    zm_zonemgr::add_adjacent_zone( "zone_opc", "zone_walkway", "connect_armory_to_chopper_gunner" );
    zm_zonemgr::add_adjacent_zone( "zone_opc", "zone_chopper_gunner3", "connect_armory_to_chopper_gunner" );
    zm_zonemgr::add_adjacent_zone( "zone_opc", "zone_napalm_strike", "connect_napalm_strike_to_armory" );
    zm_zonemgr::add_adjacent_zone( "zone_opc", "zone_napalm_strike2", "connect_napalm_strike_to_armory" );
    zm_zonemgr::add_adjacent_zone( "zone_opc_room", "zone_opc", "connect_zone_opc_room_to_armory2" );
    zm_zonemgr::add_adjacent_zone( "zone_opc_room", "zone_armory2", "connect_zone_opc_room_to_armory2" );
    zm_zonemgr::add_adjacent_zone( "zone_opc_room", "zone_napalm_strike", "connect_zone_opc_room_to_armory2" );
    zm_zonemgr::add_zone_flags( "connect_firebase_to_armory", "connect_armory_zones" );
    zm_zonemgr::add_zone_flags( "connect_armory_to_chopper_gunner", "connect_armory_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_napalm_strike", "zone_napalm_strike2", "connect_napalm_strike_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_napalm_strike", "zone_lot", "connect_napalm_strike_to_armory" );
    zm_zonemgr::add_adjacent_zone( "zone_napalm_strike", "zone_armory", "connect_napalm_strike_to_armory" );
    zm_zonemgr::add_adjacent_zone( "zone_napalm_strike", "zone_burnt_forest_defend", "connect_burnt_forest_defend_to_napalm_strike" );
    zm_zonemgr::add_adjacent_zone( "zone_napalm_strike2", "zone_napalm_strike", "connect_napalm_strike_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_napalm_strike2", "zone_opc", "connect_napalm_strike_to_armory" );
    zm_zonemgr::add_adjacent_zone( "zone_napalm_strike2", "zone_armory2_outside", "connect_napalm_strike_to_armory" );
    zm_zonemgr::add_adjacent_zone( "zone_napalm_strike2", "zone_armory2", "connect_napalm_strike_to_armory" );
    zm_zonemgr::add_adjacent_zone( "zone_napalm_strike2", "zone_burnt_forest_defend", "connect_burnt_forest_defend_to_napalm_strike" );
    zm_zonemgr::add_zone_flags( "connect_napalm_strike_to_armory", "connect_napalm_strike_zones" );
    zm_zonemgr::add_adjacent_zone( "zone_burnt_forest_defend", "zone_napalm_strike2", "connect_burnt_forest_defend_to_napalm_strike" );
    zm_zonemgr::add_adjacent_zone( "zone_burnt_forest_defend", "zone_burnt_forest_defend_outside", "connect_burnt_forest_defend_to_napalm_strike" );
    zm_zonemgr::add_adjacent_zone( "zone_burnt_forest_defend", "zone_tents2", "connect_tents_to_burnt_forest_defend" );
    zm_zonemgr::add_adjacent_zone( "zone_burnt_forest_defend", "zone_field_hospital", "connect_tents_to_burnt_forest_defend" );
    zm_zonemgr::add_adjacent_zone( "zone_burnt_forest_defend_outside", "zone_napalm_strike2", "connect_burnt_forest_defend_to_napalm_strike" );
    zm_zonemgr::add_adjacent_zone( "zone_burnt_forest_defend_outside", "zone_burnt_forest_defend", "connect_burnt_forest_defend_to_napalm_strike" );
    zm_zonemgr::add_adjacent_zone( "zone_burnt_forest_defend_outside", "zone_tents2", "connect_tents_to_burnt_forest_defend" );
    namespace_f0b43eb5::create_challenge( #"hash_7e80a8ea892ec8c4", 90, "zone_trenches", undefined, #"hash_374955e0c82d6aa4", "s_obj_challenge_zone_trenches", &namespace_f0b43eb5::function_f51adffa, &namespace_f0b43eb5::function_9742c28f );
    namespace_f0b43eb5::create_challenge( #"hash_beba8c495ad1123", 90, array( "zone_firebase", "zone_firebase2", "zone_firebase3" ), undefined, #"hash_374955e0c82d6aa4", "s_obj_challenge_zone_firebase", &namespace_f0b43eb5::function_f51adffa, &namespace_f0b43eb5::function_9742c28f );
    namespace_f0b43eb5::create_challenge( #"hash_47d7bcdc94e2be1c", 90, array( "zone_tents", "zone_tents2" ), undefined, #"hash_374955e0c82d6aa4", "s_obj_challenge_zone_tents", &namespace_f0b43eb5::function_f51adffa, &namespace_f0b43eb5::function_9742c28f );
    namespace_f0b43eb5::create_challenge( #"hash_26e32893218f3cc2", 90, array( "zone_napalm_strike", "zone_napalm_strike2" ), undefined, #"hash_374955e0c82d6aa4", "s_obj_challenge_zone_napalm_strike", &namespace_f0b43eb5::function_f51adffa, &namespace_f0b43eb5::function_9742c28f );
    namespace_f0b43eb5::create_challenge( #"hash_363ccc9296a0bb43", 90, array( "zone_artillery_strike", "zone_artillery_strike2" ), undefined, #"hash_374955e0c82d6aa4", "s_obj_challenge_zone_artillery_strike", &namespace_f0b43eb5::function_f51adffa, &namespace_f0b43eb5::function_9742c28f );
    namespace_f0b43eb5::create_challenge( #"hash_97ec7cda4d126e", 90, array( "zone_village", "zone_village2", "zone_village3" ), undefined, #"hash_374955e0c82d6aa4", "s_obj_challenge_zone_village", &namespace_f0b43eb5::function_f51adffa, &namespace_f0b43eb5::function_9742c28f );
    s_challenge = namespace_f0b43eb5::create_challenge( #"hash_2274efc6b68c164b", 90, "zone_artillery_strike", undefined, #"hash_5cee7e17aff44d7e", "s_obj_challenge_zone_upper_data_center", &namespace_f0b43eb5::function_1d60215, &namespace_f0b43eb5::function_6be352fc );
    s_challenge.var_4e0096cd = #"hash_7cfeb04f6733358c";
    s_challenge = namespace_f0b43eb5::create_challenge( #"hash_1cc52d72244f1eda", 90, "zone_artillery_strike2", undefined, #"hash_5cee7e17aff44d7e", "s_obj_challenge_zone_lower_data_center", &namespace_f0b43eb5::function_1d60215, &namespace_f0b43eb5::function_6be352fc );
    s_challenge.var_4e0096cd = #"hash_2c46e924aa04dbf1";
    namespace_f0b43eb5::create_challenge( #"hash_79ec66f63fc093c6", 90, "zone_trenches_office", undefined, #"hash_5cee7e17aff44d7e", "s_obj_challenge_zone_motor_office", &namespace_f0b43eb5::function_1d60215, &namespace_f0b43eb5::function_6be352fc );
    namespace_f0b43eb5::create_challenge( #"hash_3b5a9c328640c84f", 90, "zone_trenches_garage", undefined, #"hash_5cee7e17aff44d7e", "s_obj_challenge_zone_motor_garage", &namespace_f0b43eb5::function_1d60215, &namespace_f0b43eb5::function_6be352fc );
    namespace_f0b43eb5::create_challenge( #"hash_864f03f723d7dc3", 90, "zone_tents_a", undefined, #"hash_5cee7e17aff44d7e", "s_obj_challenge_zone_tents_a", &namespace_f0b43eb5::function_1d60215, &namespace_f0b43eb5::function_6be352fc );
    namespace_f0b43eb5::create_challenge( #"hash_864f13f723d7f76", 90, "zone_tents_b", undefined, #"hash_5cee7e17aff44d7e", "s_obj_challenge_zone_tents_b", &namespace_f0b43eb5::function_1d60215, &namespace_f0b43eb5::function_6be352fc );
    namespace_f0b43eb5::create_challenge( #"hash_78b5818aca0414eb", 90, "zone_field_hospital", undefined, #"hash_5cee7e17aff44d7e", "s_obj_challenge_zone_field_hospital", &namespace_f0b43eb5::function_1d60215, &namespace_f0b43eb5::function_6be352fc );
    namespace_f0b43eb5::create_challenge( #"hash_3f88531b59d4cc0b", 90, "zone_walkway", undefined, #"hash_5cee7e17aff44d7e", "s_obj_challenge_zone_walkway", &namespace_f0b43eb5::function_1d60215, &namespace_f0b43eb5::function_6be352fc );
    s_challenge = namespace_f0b43eb5::create_challenge( #"hash_64cc9ec22d551ae5", 90, "zone_colonel_office", undefined, #"hash_5cee7e17aff44d7e", "s_obj_challenge_zone_colonel_office", &namespace_f0b43eb5::function_1d60215, &namespace_f0b43eb5::function_6be352fc );
    s_challenge.var_4e0096cd = #"hash_64c3b50e1de42d57";
    namespace_f0b43eb5::create_challenge( #"hash_1f16e513ff381c18", 90, "zone_chopper_gunner", undefined, #"hash_5cee7e17aff44d7e", "s_obj_challenge_zone_chopper_gunner", &namespace_f0b43eb5::function_1d60215, &namespace_f0b43eb5::function_6be352fc );
    namespace_f0b43eb5::create_challenge( #"hash_2f4a7e5da228eead", 90, "zone_chopper_gunner3", undefined, #"hash_5cee7e17aff44d7e", "s_obj_challenge_zone_chopper_gunner3", &namespace_f0b43eb5::function_1d60215, &namespace_f0b43eb5::function_6be352fc );
    s_challenge = namespace_f0b43eb5::create_challenge( #"hash_257a005f64e8c41e", 90, array( "zone_armory2", "zone_armory2_outside" ), undefined, #"hash_5cee7e17aff44d7e", "s_obj_challenge_zone_armory", &namespace_f0b43eb5::function_1d60215, &namespace_f0b43eb5::function_6be352fc );
    s_challenge.var_4e0096cd = #"hash_3cc28115aef8d6f6";
    s_challenge = namespace_f0b43eb5::create_challenge( #"hash_6e9cc81a9a529f18", 90, "zone_lot", undefined, #"hash_5cee7e17aff44d7e", "s_obj_challenge_zone_lot", &namespace_f0b43eb5::function_1d60215, &namespace_f0b43eb5::function_6be352fc );
    s_challenge.var_4e0096cd = #"hash_4e1d8a30f4ea2f2b";
    namespace_f0b43eb5::create_challenge( #"hash_52a6d61d1d8e570c", 90, "zone_weapon_lab", undefined, #"hash_5cee7e17aff44d7e", "s_obj_challenge_zone_weapon_lab", &namespace_f0b43eb5::function_1d60215, &namespace_f0b43eb5::function_6be352fc );
    s_challenge = namespace_f0b43eb5::create_challenge( #"hash_346b7588b58a9ac5", 90, "zone_mess_hall", undefined, #"hash_5cee7e17aff44d7e", "s_obj_challenge_zone_mess_hall", &namespace_f0b43eb5::function_1d60215, &namespace_f0b43eb5::function_6be352fc );
    s_challenge.var_4e0096cd = #"hash_8dfbc02b8d787a5";
    s_challenge = namespace_f0b43eb5::create_challenge( #"hash_b5ed710fa19696b", 90, "zone_briefing_room", undefined, #"hash_5cee7e17aff44d7e", "s_obj_challenge_zone_briefing_room", &namespace_f0b43eb5::function_1d60215, &namespace_f0b43eb5::function_6be352fc );
    s_challenge.var_4e0096cd = #"hash_3802e9f1f7fdc236";
    s_challenge = namespace_f0b43eb5::create_challenge( #"hash_749eb9a0557be48d", 90, "zone_scientist_quarters", undefined, #"hash_5cee7e17aff44d7e", "s_obj_challenge_zone_scientist_quarters", &namespace_f0b43eb5::function_1d60215, &namespace_f0b43eb5::function_6be352fc );
    s_challenge.var_4e0096cd = #"hash_6e2fe33d2742e702";
}

// Namespace zm_gold_zones/zm_gold_zones
// Params 0, eflags: 0x0
// Checksum 0xe8db878a, Offset: 0x4738
// Size: 0x6c
function function_2c6d81f9()
{
    flag::wait_till( "power_on3" );
    flag::wait_till_any( array( "connect_firebase_to_trenches", "connect_trenches_to_chopper_gunner", "connect_weapon_lab_to_rocky_slope_defend" ) );
    flag::set( "activate_weapons_lab" );
}

// Namespace zm_gold_zones/zm_gold_zones
// Params 1, eflags: 0x0
// Checksum 0x1006a68e, Offset: 0x47b0
// Size: 0x62
function function_e6d10d94( zone )
{
    if ( !isdefined( zone ) )
    {
        return "village";
    }
    
    var_4c5411df = isinarray( level.var_4b35561a, zone );
    return var_4c5411df ? "mountaintop" : "village";
}

// Namespace zm_gold_zones/hostmigration_playermigrated
// Params 1, eflags: 0x20
// Checksum 0x2da0a674, Offset: 0x4820
// Size: 0x7c
function event_handler[hostmigration_playermigrated] codecallback_playermigrated( *eventstruct )
{
    var_77279c0a = self zm_zonemgr::is_player_in_zone( level.var_4b35561a, 0 );
    var_4826cb3c = var_77279c0a ? "firebase" : "village";
    self zm_gold::setupminimap( "", var_4826cb3c );
}

// Namespace zm_gold_zones/zm_gold_zones
// Params 0, eflags: 0x0
// Checksum 0x6d8eed2f, Offset: 0x48a8
// Size: 0x1c8
function function_a2cfeff5()
{
    level endon( #"end_game" );
    level flag::wait_till( #"all_players_spawned" );
    
    foreach ( var_9503a78 in getentarray( "flinger_pad_aimer", "targetname" ) )
    {
        if ( var_9503a78.script_noteworthy === #"jump_pad" )
        {
            var_9503a78 clientfield::set( "set_compass_icon", 1 );
        }
    }
    
    foreach ( var_b338b8ed in getentarray( "flinger_landing_pad", "targetname" ) )
    {
        if ( var_b338b8ed.script_noteworthy === #"landing_pad" )
        {
            var_b338b8ed clientfield::set( "set_compass_icon", 1 );
        }
    }
}

// Namespace zm_gold_zones/zm_gold_zones
// Params 0, eflags: 0x0
// Checksum 0x340ad2e2, Offset: 0x4a78
// Size: 0x248
function function_44b1279a()
{
    self notify( "55c572a8dde62114" );
    self endon( "55c572a8dde62114" );
    self endon( #"death" );
    self zm_gold::setupminimap( "", "village" );
    self clientfield::set_to_player( "" + #"hash_697cae64fbcf81f8", 0 );
    util::wait_network_frame();
    
    while ( true )
    {
        if ( !isplayer( self ) )
        {
            return;
        }
        
        if ( !clientfield::function_ec6130f9( "" + #"hash_697cae64fbcf81f8" ) )
        {
            waitframe( 1 );
            continue;
        }
        
        is_player_in_zone = self zm_zonemgr::is_player_in_zone( level.var_4b35561a, 0 );
        var_6c117bd1 = self clientfield::get_to_player( "" + #"hash_697cae64fbcf81f8" );
        
        if ( is_player_in_zone && var_6c117bd1 == 0 )
        {
            self zm_gold::setupminimap( "", "firebase" );
            self clientfield::set_to_player( "" + #"hash_697cae64fbcf81f8", 1 );
        }
        else if ( !is_player_in_zone && var_6c117bd1 == 1 )
        {
            self zm_gold::setupminimap( "", "village" );
            self clientfield::set_to_player( "" + #"hash_697cae64fbcf81f8", 0 );
        }
        
        s_waitresult = self waittill( #"zone_change" );
    }
}

// Namespace zm_gold_zones/zm_gold_zones
// Params 0, eflags: 0x0
// Checksum 0x5ab77097, Offset: 0x4cc8
// Size: 0x13e
function function_19f5e3fa()
{
    level endon( #"end_game" );
    b_in_zone = 0;
    
    while ( !b_in_zone )
    {
        foreach ( player in function_a1ef346b() )
        {
            var_765b3144 = zm_zonemgr::get_zone_from_position( player.origin, 1 );
            
            if ( var_765b3144 === "zone_firebase" || var_765b3144 === "zone_firebase2" || var_765b3144 === "zone_firebase3" )
            {
                b_in_zone = 1;
                level flag::set( "enable_firebase_zone" );
                break;
            }
        }
        
        wait 1;
    }
}

// Namespace zm_gold_zones/zm_gold_zones
// Params 1, eflags: 0x0
// Checksum 0xa5a42c88, Offset: 0x4e10
// Size: 0x55e
function function_27028b8e( str_zone )
{
    if ( !isdefined( str_zone ) )
    {
        return undefined;
    }
    
    if ( isarray( str_zone ) )
    {
        str_zone = str_zone[ 0 ];
    }
    
    switch ( str_zone )
    {
        case #"zone_village3":
        case #"zone_village2":
        case #"zone_village":
            str_display = #"hash_1a784c62f3f40a7c";
            break;
        case #"zone_village_house":
            str_display = #"hash_712a00f5a89f306c";
            break;
        case #"zone_portal_transfer":
            str_display = #"hash_435a0098fb8df5e4";
            break;
        case #"zone_atrium":
            str_display = #"hash_7f333ea55aeef7fe";
            break;
        case #"zone_scientist":
            str_display = #"hash_6e2fe33d2742e702";
            break;
        case #"zone_peck_quarters":
            str_display = #"hash_475dca43d660d1cb";
            break;
        case #"zone_firebase":
        case #"zone_firebase3":
        case #"zone_firebase2":
            str_display = #"hash_5c666bba11ef5ae5";
            break;
        case #"zone_lot":
            str_display = #"hash_4e1d8a30f4ea2f2b";
            break;
        case #"zone_armory2":
        case #"zone_armory":
            str_display = #"hash_3cc28115aef8d6f6";
            break;
        case #"zone_chopper_gunner":
            str_display = #"hash_3a39c1a8fe2b4634";
            break;
        case #"zone_chopper_gunner2":
            str_display = #"hash_6a4e6de3fc04ec43";
            break;
        case #"zone_chopper_gunner3":
            str_display = #"hash_11c2394ea2e2d131";
            break;
        case #"zone_trenches":
            str_display = #"hash_5194b7f4cbf03b5e";
            break;
        case #"zone_trenches_office":
            str_display = #"hash_2b4cf31f8f6bf7e6";
            break;
        case #"zone_trenches_garage":
            str_display = #"hash_452e2000b54dc76f";
            break;
        case #"zone_tents2":
        case #"zone_tents":
            str_display = #"hash_7c1689ac620afc8a";
            break;
        case #"zone_tents_a":
            str_display = #"hash_481096036403fa63";
            break;
        case #"zone_tents_b":
            str_display = #"hash_481097036403fc16";
            break;
        case #"zone_artillery_strike2":
        case #"zone_artillery_strike":
            str_display = #"hash_6412a219d050bd95";
            break;
        case #"zone_rocky_slope_defend":
            str_display = #"hash_6b7c9e9fcdc2d4f5";
            break;
        case #"zone_napalm_strike":
        case #"zone_napalm_strike2":
            str_display = #"hash_2c0516d13ededf0c";
            break;
        case #"hash_3dcad3b850818581":
            str_display = #"hash_3020c93a3f65deed";
            break;
        case #"zone_burnt_forest_defend":
            str_display = #"hash_49e45240b857b096";
            break;
        case #"zone_hillside_road_defend":
            str_display = #"hash_1159d5e7f96b57cc";
            break;
        case #"zone_opc":
        case #"zone_opc_room":
            str_display = #"hash_67b0f231034932d8";
            break;
        case #"zone_field_hospital":
            str_display = #"hash_5387a0350fe7780b";
            break;
        case #"zone_walkway":
            str_display = #"hash_2aa69d05c4cff89c";
            break;
        case #"zone_weapon_lab":
            str_display = #"hash_42192a6d158c852c";
            break;
        default:
            str_display = undefined;
            break;
    }
    
    return str_display;
}

