#using script_31e9b35aaacbbd93;
#using script_3626f1b2cf51a99c;
#using script_3dc93ca9902a9cda;
#using script_61cfc2ab8e60625;
#using script_671f58f0b7aa833d;
#using script_74940ab70a48ee4e;
#using script_9bfd3d8a6a89e5e;
#using scripts\core_common\ai\archetype_damage_utility;
#using scripts\core_common\ai\archetype_utility;
#using scripts\core_common\ai_shared;
#using scripts\core_common\animation_shared;
#using scripts\core_common\array_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\districts;
#using scripts\core_common\exploder_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\fx_shared;
#using scripts\core_common\lui_shared;
#using scripts\core_common\music_shared;
#using scripts\core_common\player\player_stats;
#using scripts\core_common\scene_shared;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\struct;
#using scripts\core_common\trigger_shared;
#using scripts\core_common\util_shared;
#using scripts\core_common\values_shared;
#using scripts\cp\cp_takedown_af_hill;
#using scripts\cp_common\collectibles;
#using scripts\cp_common\dialog_tree;
#using scripts\cp_common\dialogue;
#using scripts\cp_common\gametypes\battlechatter;
#using scripts\cp_common\gametypes\globallogic_ui;
#using scripts\cp_common\objectives;
#using scripts\cp_common\player_decision;
#using scripts\cp_common\skipto;
#using scripts\cp_common\ui\prompts;
#using scripts\cp_common\util;

#namespace tkdn_raid_capture;

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 1, eflags: 0x0
// Checksum 0x805c37ef, Offset: 0x9a8
// Size: 0x394
function starting( *var_d3440450 )
{
    thread objectives::scripted( "obj_takedown_capture", undefined, #"hash_49c1d860c97e3792" );
    player = getplayers()[ 0 ];
    var_8a3bb97c = getspawnerarray( "raid_adler", "targetname" );
    woods_spawner = getspawnerarray( "raid_woods", "targetname" );
    level.adler = var_8a3bb97c[ 0 ] spawner::spawn( 1 );
    var_fcbd93e0 = struct::get( "raid_capture_adler", "targetname" );
    level.adler forceteleport( var_fcbd93e0.origin, var_fcbd93e0.angles );
    level.adler.ignoreall = 1;
    weapon = getweapon( #"pistol_semiauto_t9" );
    level.adler aiutility::setprimaryweapon( weapon );
    level.adler ai::gun_switchto( weapon, "right" );
    level.woods = woods_spawner[ 0 ] spawner::spawn( 1 );
    var_1100faeb = struct::get( "raid_capture_woods", "targetname" );
    level.woods forceteleport( var_1100faeb.origin, var_1100faeb.angles );
    level.woods.ignoreall = 1;
    exploder::exploder( "lgt_vista_lights" );
    level flag::set( "flag_qasim_ready_for_interrogation" );
    level scene::init( "scene_tkd_hit2_rooftop" );
    level thread function_daaa52d5();
    level.qasim = getactorarray( "raid_qasim", "targetname" )[ 0 ];
    level.qasim thread namespace_b100dd86::swap_head( undefined, "c_t9_cp_ira_militant_vip_qasim_head_nohat_injured" );
    level.qasim thread namespace_b100dd86::function_f82142f8( undefined, "c_t9_cp_ira_militant_vip_qasim_tkd_body" );
    level thread scene::skipto_end( "scene_tkd_hit2_rooftop_slide_enemy2", "Shot 1", undefined, 1, 0 );
    player util::delay( 1, undefined, &util::function_749362d7, 1 );
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 0, eflags: 0x0
// Checksum 0x12df1d54, Offset: 0xd48
// Size: 0x2b0
function function_daaa52d5()
{
    raid_capture_plant = getent( "raid_capture_plant", "targetname" );
    
    if ( isdefined( raid_capture_plant ) )
    {
        level scene::init( "scene_tkd_hit2_rooftop_props", [ raid_capture_plant ] );
    }
    
    level thread scene::play( "scene_tkd_hit2_canal_ambience" );
    level thread scene::init( "bird_plantsmash_startle", "targetname" );
    level thread function_bde24dd8();
    canal_boats = getentarray( "canal_boats", "targetname" );
    
    foreach ( boat in canal_boats )
    {
        if ( isdefined( boat.target ) )
        {
            boat.var_dcc87061 = [];
            var_dcc87061 = getentarray( boat.target, "targetname" );
            
            foreach ( var_a8f6e856 in var_dcc87061 )
            {
                if ( isdefined( var_a8f6e856 ) )
                {
                    var_a8f6e856 linkto( boat );
                    
                    if ( !isdefined( boat.var_dcc87061 ) )
                    {
                        boat.var_dcc87061 = [];
                    }
                    else if ( !isarray( boat.var_dcc87061 ) )
                    {
                        boat.var_dcc87061 = array( boat.var_dcc87061 );
                    }
                    
                    boat.var_dcc87061[ boat.var_dcc87061.size ] = var_a8f6e856;
                }
            }
        }
        
        boat thread function_d40d301c();
    }
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 0, eflags: 0x0
// Checksum 0x201d4414, Offset: 0x1000
// Size: 0x44
function function_bde24dd8()
{
    level waittill( #"bird_plantsmash_startle" );
    level thread scene::play( "bird_plantsmash_startle", "targetname" );
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 0, eflags: 0x0
// Checksum 0x98b37732, Offset: 0x1050
// Size: 0x84
function function_d40d301c()
{
    wait randomfloatrange( 0.5, 1.5 );
    
    if ( isdefined( self.script_noteworthy ) && self.script_noteworthy == "boat_small" )
    {
        self thread scene::play( "scene_tkd_hit2_canal_ambience_boat_small", self );
        return;
    }
    
    self thread scene::play( "scene_tkd_hit2_canal_ambience_boat_large", self );
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 2, eflags: 0x0
// Checksum 0xe0c408c7, Offset: 0x10e0
// Size: 0x534
function main( var_d3440450, var_50cc0d4f )
{
    player = getplayers()[ 0 ];
    
    if ( var_50cc0d4f )
    {
        namespace_a052577e::function_724cb241();
    }
    
    level.var_b21fd7ea = [];
    scene::function_d0d7d9f7( "scene_tkd_hit2_rooftop", &function_6c1a4c01 );
    scene::function_d0d7d9f7( "scene_tkd_hit2_rooftop_props", &function_6c1a4c01 );
    level thread function_3dafee47();
    
    if ( isdefined( level.adler ) )
    {
        level.raid_adler = level.adler;
    }
    
    if ( isdefined( level.woods ) )
    {
        level.raid_woods = level.woods;
    }
    
    level battlechatter::function_2ab9360b( 0 );
    player thread function_c0b643d5();
    level thread function_26e6230d();
    level thread function_ba74fe83();
    level waittill( #"hash_1971429b4a856253" );
    
    for (player = getplayers()[ 0 ]; !isplayer( player ); player = getplayers()[ 0 ]) {
        waitframe( 1 );
    }
    
    player thread util::delay( 1, undefined, &disableweapons );
    level.adler thread function_e5aa773b( "adler_leave_capture" );
    level.woods thread function_e5aa773b( "woods_leave_capture" );
    player clientfield::set_to_player( "lerp_fov", 0 );
    namespace_a052577e::function_60c0a46b();
    level thread objectives::complete( "obj_takedown_capture" );
    namespace_a052577e::function_a5d5a125();
    level thread namespace_29a279dd::set_display( 1 );
    wait 2;
    player disableweapons();
    level thread namespace_29a279dd::set_display( 2, #"hash_1b54ccd62c65b43a" );
    wait 0.5;
    player setstance( "stand" );
    player freezecontrols( 1 );
    player util::function_749362d7( 0 );
    tkdn_af_hill::function_a2015343();
    level thread scene::init( "scene_tkd_hit3_intro" );
    wait 2.5;
    
    if ( isdefined( level.raid_adler.magic_bullet_shield ) )
    {
        level thread util::stop_magic_bullet_shield( level.raid_adler );
    }
    
    if ( isdefined( level.raid_woods.magic_bullet_shield ) )
    {
        level thread util::stop_magic_bullet_shield( level.raid_woods );
    }
    
    level scene::stop( "scene_tkd_hit2_rooftop", 1 );
    level scene::stop( "scene_tkd_hit2_rooftop_props", 1 );
    level scene::stop( "scene_tkd_hit2_canal_ambience", 1 );
    corpses = getcorpsearray();
    
    foreach ( corpse in corpses )
    {
        if ( isactorcorpse( corpse ) )
        {
            corpse delete();
        }
    }
    
    if ( isdefined( var_d3440450 ) )
    {
        skipto::function_4e3ab877( var_d3440450 );
    }
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 0, eflags: 0x0
// Checksum 0x9e5f8273, Offset: 0x1620
// Size: 0x3c
function function_c0b643d5()
{
    level waittill( #"hash_4fb9af0599362b26" );
    self playrumbleonentity( "damage_heavy" );
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 0, eflags: 0x0
// Checksum 0x570b37c1, Offset: 0x1668
// Size: 0x14c
function function_26e6230d()
{
    if ( !isdefined( level.qasim ) )
    {
        level.qasim = getactorarray( "raid_qasim", "targetname" )[ 0 ];
    }
    
    level.qasim endon( #"death" );
    level.qasim.var_c681e4c1 = 1;
    level.qasim.ignoreall = 1;
    level.raid_adler = level.adler;
    level.raid_woods = level.woods;
    level.raid_qasim = level.qasim;
    level flag::wait_till( "flag_qasim_ready_for_interrogation" );
    level.qasim thread dialog_tree::function_cfa96cee( level.var_27da2f39, undefined, undefined, undefined, 100, 200, 15, ( 0, 0, 6 ), 1 );
    level.qasim prompts::function_2557566( #"use", 5 );
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 1, eflags: 0x0
// Checksum 0x1f87b760, Offset: 0x17c0
// Size: 0x7c
function function_e5aa773b( struct_name )
{
    struct = struct::get( struct_name, "targetname" );
    self ai::set_behavior_attribute( "demeanor", "patrol" );
    self ai::force_goal( struct.origin, 0 );
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 2, eflags: 0x0
// Checksum 0x183d9ccf, Offset: 0x1848
// Size: 0x11c
function function_6c1a4c01( a_ents, *str_shot )
{
    foreach ( ent in str_shot )
    {
        if ( !isdefined( level.var_b21fd7ea ) )
        {
            level.var_b21fd7ea = [];
        }
        else if ( !isarray( level.var_b21fd7ea ) )
        {
            level.var_b21fd7ea = array( level.var_b21fd7ea );
        }
        
        if ( !isinarray( level.var_b21fd7ea, ent ) )
        {
            level.var_b21fd7ea[ level.var_b21fd7ea.size ] = ent;
        }
    }
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 0, eflags: 0x0
// Checksum 0xcdfc21be, Offset: 0x1970
// Size: 0x15c
function function_44f8874()
{
    level notify( #"hash_5737131f700cbdb" );
    level.qasim stopsounds();
    level.qasim dialogue::function_47b06180();
    
    if ( isdefined( level.var_30fc6630 ) )
    {
        level.var_30fc6630 delete();
    }
    
    if ( isdefined( level.raid_adler.model ) && level.raid_adler.model != #"c_t9_usa_hero_adler_civ_amsterdam_body_no_dyn" )
    {
        level.raid_adler thread namespace_b100dd86::function_f82142f8( undefined, "c_t9_usa_hero_adler_civ_amsterdam_body_no_dyn" );
    }
    
    level thread scene::play( "scene_tkd_hit2_rooftop_props", "dt_enter" );
    level scene::play( "scene_tkd_hit2_rooftop", "dt_enter" );
    level notify( #"hash_6fec65520df29efc" );
    level thread scene::play( "scene_tkd_hit2_rooftop", "dt_idle" );
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 0, eflags: 0x0
// Checksum 0x722162b, Offset: 0x1ad8
// Size: 0x3c
function function_8a6dd527()
{
    level waittill( #"hash_74f0b712a3680b18" );
    self clientfield::set_to_player( "lerp_fov", 5 );
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 0, eflags: 0x0
// Checksum 0x9fb51073, Offset: 0x1b20
// Size: 0x49c
function function_3dafee47()
{
    var_6139147e = [ "vox_cp_tdwn_05100_qasm_iijusthandlethe_6e", "vox_cp_tdwn_05100_adlr_idontthinkyouun_95", "vox_cp_tdwn_05100_qasm_youcantdothisyo_0e", "vox_cp_tdwn_05100_adlr_ivesteppedthrou_86", "vox_cp_tdwn_05100_adlr_newpresidentnew_27" ];
    level.var_27da2f39 = dialog_tree::new_tree( &function_44f8874, undefined, 1, 0, "scene_tkd_hit2_rooftop" );
    level.var_27da2f39 dialog_tree::add_option( #"hash_3c66be703efed3de", undefined, "dt_1_res", "dt_idle", 1, undefined, undefined, &function_86b6bafa );
    level.var_27da2f39 dialog_tree::add_option( #"hash_318bdd24cc15cbb", undefined, "dt_1_res", "dt_idle", 1, undefined, undefined, &function_86b6bafa );
    dialog_tree::function_21780fc5( level.var_27da2f39, array( 1340, 700 ) );
    level.var_58759087 = dialog_tree::new_tree( undefined, undefined, 1, 0, "scene_tkd_hit2_rooftop" );
    level.var_58759087 dialog_tree::add_option( #"hash_f2078633819f72a", undefined, "dt_2_res", "dt_idle", 1, undefined, undefined, &function_58efdf6d );
    level.var_58759087 dialog_tree::add_option( #"hash_18daf35010313d18", undefined, "dt_2_res", "dt_idle", 1, undefined, undefined, &function_58efdf6d );
    dialog_tree::function_21780fc5( level.var_58759087, array( 1340, 700 ) );
    level.var_4a3df400 = dialog_tree::new_tree( undefined, undefined, 1, 0, "scene_tkd_hit2_rooftop" );
    level.var_4a3df400 dialog_tree::add_option( #"hash_349afebd4cf454c0", undefined, "dt_3_res", "dt_idle", 1, undefined, undefined, &function_6321f3d1 );
    level.var_4a3df400 dialog_tree::add_option( #"hash_492dbe6eaab8aa2f", undefined, undefined, undefined, 1, undefined, undefined, &function_80b14544 );
    dialog_tree::function_21780fc5( level.var_4a3df400, array( 1340, 700 ) );
    level.var_cb1375a9 = dialog_tree::new_tree( undefined, undefined, 1, 0, "scene_tkd_hit2_rooftop" );
    level.var_cb1375a9 dialog_tree::add_option( #"hash_129166306e8bfcd3", undefined, undefined, undefined, 1, undefined, undefined, &function_4f4627e4 );
    level.var_cb1375a9 dialog_tree::add_option( #"hash_492dbe6eaab8aa2f", undefined, undefined, undefined, 1, undefined, undefined, &function_80b14544 );
    level.var_cb1375a9 dialog_tree::add_option( #"hash_48d4e67acff606fd", undefined, undefined, undefined, 1, undefined, undefined, &function_c29f52ec );
    dialog_tree::function_21780fc5( level.var_cb1375a9, array( 1340, 700 ) );
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 0, eflags: 0x0
// Checksum 0xce46932d, Offset: 0x1fc8
// Size: 0x104
function function_86b6bafa()
{
    level thread namespace_a052577e::function_e88f8edb();
    self waittill( #"hash_12324459eb2bc76d" );
    level.var_58759087 thread dialog_tree::run( level.qasim );
    level districts::function_a7d79fcb( [ "airfield_intro", "airfield_base" ] );
    level thread slide_enemy2_clip();
    
    if ( isdefined( level.raid_adler.model ) && level.raid_adler.model != #"c_t9_usa_hero_adler_civ_amsterdam_body" )
    {
        level.raid_adler thread namespace_b100dd86::function_f82142f8( undefined, "c_t9_usa_hero_adler_civ_amsterdam_body" );
    }
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 0, eflags: 0x0
// Checksum 0xe74f3a61, Offset: 0x20d8
// Size: 0x1cc
function function_b47183fb()
{
    if ( !isdefined( level.raid_capture_street_vehicle ) )
    {
        level.raid_capture_street_vehicle = getent( "raid_capture_street_vehicle", "targetname" );
    }
    
    if ( !isdefined( level.raid_capture_street_vehicle ) )
    {
        return;
    }
    
    if ( level.raid_capture_street_vehicle haspart( "tag_glass_windshield_d1" ) )
    {
        level.raid_capture_street_vehicle hidepart( "tag_glass_windshield_d1" );
    }
    
    if ( level.raid_capture_street_vehicle haspart( "tag_glass_hatch_d1" ) )
    {
        level.raid_capture_street_vehicle hidepart( "tag_glass_hatch_d1" );
    }
    
    if ( level.raid_capture_street_vehicle haspart( "tag_glass_right_side_d1" ) )
    {
        level.raid_capture_street_vehicle hidepart( "tag_glass_right_side_d1" );
    }
    
    if ( level.raid_capture_street_vehicle haspart( "tag_glass_left_side_d1" ) )
    {
        level.raid_capture_street_vehicle hidepart( "tag_glass_left_side_d1" );
    }
    
    if ( level.raid_capture_street_vehicle haspart( "tag_glass_right_front_d1" ) )
    {
        level.raid_capture_street_vehicle hidepart( "tag_glass_right_front_d1" );
    }
    
    if ( level.raid_capture_street_vehicle haspart( "tag_glass_left_front_d1" ) )
    {
        level.raid_capture_street_vehicle hidepart( "tag_glass_left_front_d1" );
    }
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 0, eflags: 0x0
// Checksum 0x7b92bb1a, Offset: 0x22b0
// Size: 0x3f4
function function_ba74fe83()
{
    if ( !isdefined( level.raid_capture_street_vehicle ) )
    {
        level function_b47183fb();
    }
    
    if ( !isdefined( level.raid_capture_street_vehicle ) )
    {
        return;
    }
    
    level waittill( #"hash_6cb6f4903c20dbae" );
    playfxontag( "destruct/fx_dest_glass_shard_impact_burst", level.raid_capture_street_vehicle, "tag_glass_windshield_d0" );
    
    if ( level.raid_capture_street_vehicle haspart( "tag_glass_windshield_d0" ) )
    {
        level.raid_capture_street_vehicle hidepart( "tag_glass_windshield_d0" );
    }
    
    if ( level.raid_capture_street_vehicle haspart( "tag_glass_windshield_d1" ) )
    {
        level.raid_capture_street_vehicle showpart( "tag_glass_windshield_d1" );
    }
    
    playfxontag( "destruct/fx_dest_glass_shard_impact_burst", level.raid_capture_street_vehicle, "tag_glass_hatch_d0" );
    
    if ( level.raid_capture_street_vehicle haspart( "tag_glass_hatch_d0" ) )
    {
        level.raid_capture_street_vehicle hidepart( "tag_glass_hatch_d0" );
    }
    
    if ( level.raid_capture_street_vehicle haspart( "tag_glass_hatch_d1" ) )
    {
        level.raid_capture_street_vehicle showpart( "tag_glass_hatch_d1" );
    }
    
    if ( level.raid_capture_street_vehicle haspart( "tag_glass_right_side_d0" ) )
    {
        level.raid_capture_street_vehicle hidepart( "tag_glass_right_side_d0" );
    }
    
    if ( level.raid_capture_street_vehicle haspart( "tag_glass_right_side_d1" ) )
    {
        level.raid_capture_street_vehicle showpart( "tag_glass_right_side_d1" );
    }
    
    playfxontag( "destruct/fx_dest_glass_shard_impact_burst", level.raid_capture_street_vehicle, "tag_glass_left_side_d0" );
    
    if ( level.raid_capture_street_vehicle haspart( "tag_glass_left_side_d0" ) )
    {
        level.raid_capture_street_vehicle hidepart( "tag_glass_left_side_d0" );
    }
    
    if ( level.raid_capture_street_vehicle haspart( "tag_glass_left_side_d1" ) )
    {
        level.raid_capture_street_vehicle showpart( "tag_glass_left_side_d1" );
    }
    
    playfxontag( "destruct/fx_dest_glass_shard_impact_burst", level.raid_capture_street_vehicle, "tag_glass_right_front_d0" );
    
    if ( level.raid_capture_street_vehicle haspart( "tag_glass_right_front_d0" ) )
    {
        level.raid_capture_street_vehicle hidepart( "tag_glass_right_front_d0" );
    }
    
    if ( level.raid_capture_street_vehicle haspart( "tag_glass_right_front_d1" ) )
    {
        level.raid_capture_street_vehicle showpart( "tag_glass_right_front_d1" );
    }
    
    if ( level.raid_capture_street_vehicle haspart( "tag_glass_left_front_d0" ) )
    {
        level.raid_capture_street_vehicle hidepart( "tag_glass_left_front_d0" );
    }
    
    if ( level.raid_capture_street_vehicle haspart( "tag_glass_left_front_d1" ) )
    {
        level.raid_capture_street_vehicle showpart( "tag_glass_left_front_d1" );
    }
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 0, eflags: 0x0
// Checksum 0x9bf983b0, Offset: 0x26b0
// Size: 0x3c
function function_58efdf6d()
{
    self waittill( #"hash_12324459eb2bc76d" );
    level.var_4a3df400 thread dialog_tree::run( level.qasim );
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 0, eflags: 0x0
// Checksum 0x8addf3ba, Offset: 0x26f8
// Size: 0x54
function function_6321f3d1()
{
    self waittill( #"hash_12324459eb2bc76d" );
    collectibles::function_6cd091d2( 1, 0 );
    level.var_cb1375a9 thread dialog_tree::run( level.qasim );
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 0, eflags: 0x0
// Checksum 0x9709058d, Offset: 0x2758
// Size: 0x104
function function_80b14544()
{
    level thread scene::play( "scene_tkd_hit2_rooftop", "dt_end_1_throw" );
    music::function_edda155f( "3.2_kill_stinger" );
    player = getplayers()[ 0 ];
    player waittillmatch( { #notetrack:"end" }, #"hash_b1f863e899edc77" );
    player player_decision::function_a029a114( 1 );
    getplayers()[ 0 ] stats::function_dad108fa( #"hash_66d228fbcd074f42", 1 );
    player_decision::function_8c0836dd( 1 );
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 0, eflags: 0x0
// Checksum 0x70917646, Offset: 0x2868
// Size: 0x44
function slide_enemy2_clip()
{
    clip = getent( "slide_enemy2_clip", "targetname" );
    clip delete();
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 0, eflags: 0x0
// Checksum 0x7dd66189, Offset: 0x28b8
// Size: 0x3c
function function_c29f52ec()
{
    level thread scene::play( "scene_tkd_hit2_rooftop", "dt_end_2_capture" );
    thread function_1998b542();
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 0, eflags: 0x0
// Checksum 0x2c7c031b, Offset: 0x2900
// Size: 0x84
function function_1998b542()
{
    player = getplayers()[ 0 ];
    player waittillmatch( { #notetrack:"end" }, #"hash_40acbc898ee5e354" );
    player player_decision::function_a029a114( 0 );
    player player_decision::function_8c0836dd( 2 );
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 0, eflags: 0x0
// Checksum 0x32b7226c, Offset: 0x2990
// Size: 0x10e
function function_4f4627e4()
{
    util::delay( 1, undefined, &dialogue::function_96171f6d, "vox_cp_tdwn_05100_masn_thereyougo_99" );
    level thread scene::play( "scene_tkd_hit2_rooftop", "dt_5_res" );
    self thread function_95707bc7();
    level.qasim thread function_f48f4f4f();
    player = getplayers()[ 0 ];
    player util::delay( 2, undefined, &util::function_749362d7, 0 );
    player waittillmatch( { #notetrack:"end" }, #"hash_576c5aac6ddaa60a" );
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 0, eflags: 0x0
// Checksum 0x8dc9676b, Offset: 0x2aa8
// Size: 0x7c
function function_f48f4f4f()
{
    level endon( #"hash_2871e831466dfa03" );
    self waittill( #"hash_276984293d5e72ee" );
    self thread dialogue::queue( "vox_cp_tdwn_05100_qasm_thankyou_94" );
    self waittill( #"hash_2ecc2687291f2139" );
    self thread dialogue::queue( "vox_cp_tdwn_05100_qasm_pleaseigaveyouw_d0" );
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 0, eflags: 0x0
// Checksum 0xa50fab53, Offset: 0x2b30
// Size: 0x1cc
function function_95707bc7()
{
    player = getplayers()[ 0 ];
    level endon( #"hash_19e8d79db3b9786a" );
    level.qasim thread function_fa343ac7();
    aiutility::addaioverridedamagecallback( level.qasim, &function_c5881277 );
    waitresult = level.qasim waittill( #"damage", #"dt_5_res_over" );
    
    if ( waitresult._notify == "dt_5_res_over" )
    {
        level thread scene::play( "scene_tkd_hit2_rooftop", "dt_5_res_idle" );
        level thread function_2ed341fb();
        level.qasim waittill( #"damage" );
        level.qasim stopsounds();
    }
    
    player player_decision::function_a029a114( 1 );
    player_decision::function_8c0836dd( 1 );
    level notify( #"hash_2871e831466dfa03" );
    level.qasim dialogue::function_47b06180();
    level scene::play( "scene_tkd_hit2_rooftop", "dt_end_3_playershoots" );
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 0, eflags: 0x0
// Checksum 0xa4cbb07f, Offset: 0x2d08
// Size: 0x34
function function_e65b6174()
{
    level.qasim thread function_230fc686();
    level.qasim thread function_c5f7e209();
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 0, eflags: 0x0
// Checksum 0x5d3031ae, Offset: 0x2d48
// Size: 0x3c
function function_230fc686()
{
    self dialogue::queue( "evt_qasim_headshot" );
    self dialogue::function_47b06180();
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 0, eflags: 0x0
// Checksum 0x81f80249, Offset: 0x2d90
// Size: 0x3c
function function_c5f7e209()
{
    self dialogue::queue( "vox_cp_tdwn_05100_qasm_aaahh_f4" );
    self dialogue::function_47b06180();
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 16, eflags: 0x0
// Checksum 0xc0f2cd82, Offset: 0x2dd8
// Size: 0x136
function function_c5881277( *inflictor, *attacker, damage, *idflags, *meansofdeath, *weapon, *var_fd90b0bb, *point, *dir, hitloc, *vdamageorigin, *psoffsettime, *damagefromunderneath, *modelindex, *partname, *vsurfacenormal )
{
    aiutility::removeaioverridedamagecallback( level.qasim, &function_c5881277 );
    level endon( #"hash_19e8d79db3b9786a" );
    
    if ( vsurfacenormal === "helmet" || vsurfacenormal === "head" )
    {
        level.qasim thread function_230fc686();
        return partname;
    }
    else
    {
        level.qasim thread function_c5f7e209();
        return partname;
    }
    
    return partname;
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 1, eflags: 0x0
// Checksum 0xff4a0587, Offset: 0x2f18
// Size: 0x5c
function function_dd99245( s_result )
{
    if ( s_result.mod === "MOD_HEAD_SHOT" )
    {
        iprintlnbold( "HEAD SHOT!" );
        return;
    }
    
    iprintlnbold( "NOT HEAD SHOT" );
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 0, eflags: 0x0
// Checksum 0x556516d8, Offset: 0x2f80
// Size: 0x66
function function_fa343ac7()
{
    self endon( #"death" );
    self endon( #"damage" );
    self waittillmatch( { #notetrack:"end" }, #"hash_14f49c6f7696568c" );
    self notify( #"dt_5_res_over" );
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 0, eflags: 0x0
// Checksum 0xd918614c, Offset: 0x2ff0
// Size: 0xdc
function function_2ed341fb()
{
    player = getplayers()[ 0 ];
    level endon( #"hash_2871e831466dfa03" );
    wait 6;
    level notify( #"hash_19e8d79db3b9786a" );
    aiutility::removeaioverridedamagecallback( level.qasim, &function_c5881277 );
    player player_decision::function_a029a114( 1 );
    player_decision::function_8c0836dd( 1 );
    level scene::play( "scene_tkd_hit2_rooftop", "dt_end_4_Adlershoots" );
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 4, eflags: 0x0
// Checksum 0x8b038066, Offset: 0x30d8
// Size: 0x41c
function cleanup( *name, *starting, *direct, *player )
{
    if ( isdefined( level.raid_qasim ) )
    {
        if ( isdefined( level.raid_qasim.magic_bullet_shield ) )
        {
            level thread util::stop_magic_bullet_shield( level.raid_qasim );
        }
        
        level.raid_qasim delete();
    }
    
    if ( isdefined( level.raid_adler ) )
    {
        if ( isdefined( level.raid_adler.magic_bullet_shield ) )
        {
            level thread util::stop_magic_bullet_shield( level.raid_adler );
        }
        
        level.raid_adler delete();
    }
    
    if ( isdefined( level.raid_woods ) )
    {
        if ( isdefined( level.raid_woods.magic_bullet_shield ) )
        {
            level thread util::stop_magic_bullet_shield( level.raid_woods );
        }
        
        level.raid_woods delete();
    }
    
    raid_capture_street_vehicle = getent( "raid_capture_street_vehicle", "targetname" );
    
    if ( isdefined( raid_capture_street_vehicle ) )
    {
        raid_capture_street_vehicle delete();
    }
    
    raid_capture_plant = getent( "raid_capture_plant", "targetname" );
    
    if ( isdefined( raid_capture_plant ) )
    {
        raid_capture_plant delete();
    }
    
    canal_boats = getentarray( "canal_boats", "targetname" );
    
    if ( isdefined( canal_boats ) )
    {
        foreach ( boat in canal_boats )
        {
            if ( isdefined( boat.target ) )
            {
                var_dcc87061 = getentarray( boat.target, "targetname" );
                
                foreach ( var_a8f6e856 in var_dcc87061 )
                {
                    if ( isdefined( var_a8f6e856 ) )
                    {
                        var_a8f6e856 delete();
                    }
                }
            }
            
            if ( isdefined( boat ) )
            {
                boat delete();
            }
        }
    }
    
    canal_house_boat = getent( "canal_house_boat", "targetname" );
    
    if ( isdefined( canal_house_boat ) )
    {
        canal_house_boat delete();
    }
    
    canal_small_boat = getent( "canal_small_boat", "targetname" );
    
    if ( isdefined( canal_small_boat ) )
    {
        canal_small_boat delete();
    }
    
    guys = getaiteamarray( "axis" );
    array::delete_all( guys );
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x3500
// Size: 0x4
function init_flags()
{
    
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x3510
// Size: 0x4
function init_clientfields()
{
    
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x3520
// Size: 0x4
function function_22b7fffd()
{
    
}

// Namespace tkdn_raid_capture/cp_takedown_raid_capture
// Params 2, eflags: 0x0
// Checksum 0xd28f5a72, Offset: 0x3530
// Size: 0x184
function function_2d0aefe0( *height, time = 3 )
{
    self disableweapons();
    struct = struct::get( "raid_zoom_out_pos", "targetname" );
    namespace_a052577e::function_60c0a46b();
    var_4449f5d0 = spawn( "script_model", self.origin + ( 0, 0, 120 ) );
    var_4449f5d0.angles = struct.angles;
    var_4449f5d0 setmodel( "tag_origin" );
    self playerlinktoblend( var_4449f5d0, "tag_origin", 0.5, 0, 0, 0.5, 0, 0, 1 );
    var_4449f5d0 moveto( struct.origin, time, 0.5, time / 3 );
    wait time;
    var_4449f5d0 util::delay( 2, undefined, &delete );
}

