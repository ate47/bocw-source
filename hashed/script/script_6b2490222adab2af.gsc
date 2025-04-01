#using script_1b9f100b85b7e21d;
#using script_237e957844a8197c;
#using script_5991d6501121591f;
#using script_7728aa611ab72ad9;
#using scripts\core_common\ai_shared;
#using scripts\core_common\array_shared;
#using scripts\core_common\exploder_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\lui_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\struct;
#using scripts\core_common\trigger_shared;
#using scripts\core_common\util_shared;
#using scripts\core_common\values_shared;
#using scripts\core_common\vehicle_shared;
#using scripts\cp_common\gametypes\globallogic_ui;
#using scripts\cp_common\gametypes\save;
#using scripts\cp_common\hms_util;
#using scripts\cp_common\objectives;
#using scripts\cp_common\skipto;
#using scripts\cp_common\snd;
#using scripts\cp_common\util;

#namespace namespace_7617b2b9;

// Namespace namespace_7617b2b9/namespace_7617b2b9
// Params 1, eflags: 0x0
// Checksum 0x3586aac6, Offset: 0x3f0
// Size: 0xc
function start( *str_objective )
{
    
}

// Namespace namespace_7617b2b9/namespace_7617b2b9
// Params 2, eflags: 0x0
// Checksum 0xee172b10, Offset: 0x408
// Size: 0x29c
function main( *str_objective, *var_50cc0d4f )
{
    /#
        hms_util::print( "<dev string:x38>" );
    #/
    
    level thread globallogic_ui::function_7bc0e4b9();
    setsaveddvar( #"vt_reset", 1 );
    snd::client_msg( "audio_level_begin_duck_start" );
    namespace_232ddc52::music( "1.0_intro" );
    level hms_util::function_ee1d1df6( "park", "Park", "park_ride_struct" );
    level hms_util::function_ee1d1df6( "lazar", "Lazar", "lazar_ride_struct" );
    level thread namespace_a789f8ae::function_96b44444();
    level.player setmovespeedscale( 0.85 );
    level waittill( #"chyron_menu_closed" );
    setsaveddvar( #"hash_4f816615d4fd775f", 1 );
    level thread function_4fce6930();
    level thread function_75183099();
    level thread function_3d89f142();
    scene::function_27f5972e( "p9_fxanim_cp_revolucion_pallet_destruction_bundle" );
    hms_util::function_eaa0342e( "ride_containment_warnings", "ride_containment_fails" );
    savegame::checkpoint_save();
    var_40ecb908 = getnode( "intro_street_stack_on_church_lazar", "targetname" );
    var_345f4332 = getnode( "intro_street_stack_on_church_park", "targetname" );
    level.lazar setgoal( var_40ecb908 );
    level.park setgoal( var_345f4332 );
}

/#

    // Namespace namespace_7617b2b9/namespace_7617b2b9
    // Params 4, eflags: 0x0
    // Checksum 0x6bf43920, Offset: 0x6b0
    // Size: 0x44, Type: dev
    function cleanup( *str_objective, *var_50cc0d4f, *var_aa1a6455, *player )
    {
        hms_util::print( "<dev string:x49>" );
    }

#/

// Namespace namespace_7617b2b9/namespace_7617b2b9
// Params 0, eflags: 0x0
// Checksum 0xdf5279f0, Offset: 0x700
// Size: 0xbc
function function_75183099()
{
    var_b6ac0499 = struct::get( "s_ride_objective", "targetname" );
    var_e534dcb = struct::get( "ai_alder_radio", "targetname" );
    objectives::goto( "obj_ride", var_b6ac0499.origin, #"hash_d53f9da3038914b" );
    level flag::wait_till( "flag_obj_ride_done" );
    objectives::complete( "obj_ride" );
}

// Namespace namespace_7617b2b9/namespace_7617b2b9
// Params 0, eflags: 0x0
// Checksum 0x31426fb0, Offset: 0x7c8
// Size: 0xd4
function function_4fce6930()
{
    level.player endon( #"death" );
    level endon( #"flg_vo_ride_done" );
    var_e534dcb = struct::get( "ai_alder_radio", "targetname" );
    var_662759db = struct::get( "ai_woods_radio", "targetname" );
    level flag::wait_till( "flg_cuba_objetive_vo" );
    var_e534dcb hms_util::dialogue( "vox_cp_cbcr_01000_adlr_allteamswedothi_78", 1, "allies", "Adler" );
}

// Namespace namespace_7617b2b9/namespace_7617b2b9
// Params 0, eflags: 0x0
// Checksum 0x3f3fb979, Offset: 0x8a8
// Size: 0x224
function function_2c2814a4()
{
    self endon( #"death" );
    self setstance( "crouch" );
    self val::set( #"hash_400bf78914eebf1e", "allow_stand", 0 );
    self val::set( #"hash_400bf78914eebf1e", "allow_prone", 0 );
    self val::set( #"hash_400bf78914eebf1e", "low_ready", 1 );
    var_da2f0187 = struct::get( "s_ride_start_pos", "targetname" );
    e_tag = util::spawn_model( "tag_origin", var_da2f0187.origin, var_da2f0187.angles );
    self playerlinkto( e_tag, "tag_origin", 0, 55, 30, 25, 25 );
    level flag::wait_till( "flag_intro_scene_ended" );
    self unlink();
    self val::reset( #"hash_400bf78914eebf1e", "allow_stand" );
    self val::reset( #"hash_400bf78914eebf1e", "allow_prone" );
    self val::reset( #"hash_400bf78914eebf1e", "low_ready" );
    e_tag delete();
    savegame::checkpoint_save();
}

// Namespace namespace_7617b2b9/namespace_7617b2b9
// Params 0, eflags: 0x4
// Checksum 0x18a7d520, Offset: 0xad8
// Size: 0x94
function private function_3d89f142()
{
    wait 2.5;
    level thread exploder::exploder( "birdsfly_upper" );
    snd::client_msg( "audio_bird_spook_upper" );
    level waittill( #"hash_24e8378183f4ac59" );
    level exploder::exploder( "birdsfly_lower" );
    snd::client_msg( "audio_bird_spook_lower" );
}

