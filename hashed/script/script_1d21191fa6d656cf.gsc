#using script_1b9f100b85b7e21d;
#using script_3b2905ec05ed796;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\exploder_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\load_shared;
#using scripts\core_common\lui_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\struct;
#using scripts\core_common\trigger_shared;
#using scripts\core_common\util_shared;
#using scripts\core_common\vehicle_shared;
#using scripts\cp_common\snd;
#using scripts\cp_common\util;

#namespace namespace_1512c89a;

// Namespace namespace_1512c89a/level_init
// Params 1, eflags: 0x20
// Checksum 0x627ae788, Offset: 0x508
// Size: 0x104
function event_handler[level_init] main( *eventstruct )
{
    load::main();
    thread function_1a690b0e();
    thread function_e137ff01();
    thread function_8e05c407();
    thread post_nuke_power_on_01();
    thread post_nuke_power_on_02();
    thread post_nuke_power_on_03();
    thread post_nuke_power_on_04();
    setdvar( #"hash_76c0d7e6385ee6de", 0.3 );
    setdvar( #"hash_4466b01c6d8d7307", 1.9 );
    setdvar( #"hash_7b06b8037c26b99b", 255 );
}

// Namespace namespace_1512c89a/namespace_1512c89a
// Params 0, eflags: 0x0
// Checksum 0x78b86ece, Offset: 0x618
// Size: 0x77c
function function_8e05c407()
{
    while ( !isdefined( level.var_77be18d2 ) )
    {
        waitframe( 1 );
    }
    
    level flag::wait_till( "flg_intro_ride_in_progress" );
    fill = getent( "fill_cin_intro", "targetname" );
    key = getent( "key_cin_intro", "targetname" );
    
    if ( isdefined( level.var_77be18d2 ) )
    {
        key linkto( level.var_77be18d2, "tag_body_animate", ( -90, 0, 106.1 ), ( 0, 0, 0 ) );
        fill linkto( level.var_77be18d2, "tag_body_animate", ( 17, 20, 53.1 ), ( 160, 0, 0 ) );
    }
    
    while ( !isdefined( level.var_5d798cf2 ) )
    {
        waitframe( 1 );
    }
    
    vh_ally_fav_right_tail_light_a = getent( "vh_ally_fav_right_tail_light_a", "targetname" );
    vh_ally_fav_right_tail_light_b = getent( "vh_ally_fav_right_tail_light_b", "targetname" );
    vh_ally_fav_right_head_light_a = getent( "vh_ally_fav_right_head_light_a", "targetname" );
    vh_ally_fav_right_head_light_b = getent( "vh_ally_fav_right_head_light_b", "targetname" );
    vh_ally_fav_right_tail_light_a linkto( level.var_5d798cf2, "tag_fx_tail_light_left", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    vh_ally_fav_right_tail_light_b linkto( level.var_5d798cf2, "tag_fx_tail_light_right", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    vh_ally_fav_right_head_light_a linkto( level.var_5d798cf2, "tag_fx_headlight_left", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    vh_ally_fav_right_head_light_b linkto( level.var_5d798cf2, "tag_fx_headlight_right", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    
    while ( !isdefined( level.var_7b278a4f ) )
    {
        waitframe( 1 );
    }
    
    vh_ally_fav_left_tail_light_a = getent( "vh_ally_fav_left_tail_light_a", "targetname" );
    vh_ally_fav_left_tail_light_b = getent( "vh_ally_fav_left_tail_light_b", "targetname" );
    vh_ally_fav_left_head_light_a = getent( "vh_ally_fav_left_head_light_a", "targetname" );
    vh_ally_fav_left_head_light_b = getent( "vh_ally_fav_left_head_light_b", "targetname" );
    vh_ally_fav_left_tail_light_a linkto( level.var_7b278a4f, "tag_fx_tail_light_left", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    vh_ally_fav_left_tail_light_b linkto( level.var_7b278a4f, "tag_fx_tail_light_right", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    vh_ally_fav_left_head_light_a linkto( level.var_7b278a4f, "tag_fx_headlight_left", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    vh_ally_fav_left_head_light_b linkto( level.var_7b278a4f, "tag_fx_headlight_right", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    
    while ( !isdefined( level.var_82e50b77 ) )
    {
        waitframe( 1 );
    }
    
    vh_ally_fav_tail_light_a = getentarray( "vh_ally_fav_tail_light_a", "targetname" );
    vh_ally_fav_tail_light_b = getentarray( "vh_ally_fav_tail_light_b", "targetname" );
    vh_ally_fav_head_light_a = getentarray( "vh_ally_fav_head_light_a", "targetname" );
    vh_ally_fav_head_light_b = getentarray( "vh_ally_fav_head_light_b", "targetname" );
    vh_ally_fav_tail_light_a[ 0 ] linkto( level.var_82e50b77, "tag_fx_tail_light_left", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    vh_ally_fav_tail_light_b[ 0 ] linkto( level.var_82e50b77, "tag_fx_tail_light_right", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    vh_ally_fav_head_light_a[ 0 ] linkto( level.var_82e50b77, "tag_fx_headlight_left", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    vh_ally_fav_head_light_b[ 0 ] linkto( level.var_82e50b77, "tag_fx_headlight_right", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    level waittill( #"hash_29db583983db73c" );
    
    for (i = 1; i < level.var_a1030c4e.size; i++) {
        vh_ally_fav_tail_light_a[ i ] linkto( level.var_a1030c4e[ i - 1 ], "tag_fx_tail_light_left", ( 0, 0, 0 ), ( 0, 0, 0 ) );
        vh_ally_fav_tail_light_b[ i ] linkto( level.var_a1030c4e[ i - 1 ], "tag_fx_tail_light_right", ( 0, 0, 0 ), ( 0, 0, 0 ) );
        vh_ally_fav_head_light_a[ i ] linkto( level.var_a1030c4e[ i - 1 ], "tag_fx_headlight_left", ( 0, 0, 0 ), ( 0, 0, 0 ) );
        vh_ally_fav_head_light_b[ i ] linkto( level.var_a1030c4e[ i - 1 ], "tag_fx_headlight_right", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    }
    
    vh_ally_fav_tail_light_a[ i ] linkto( level.var_77be18d2, "tag_fx_tail_light_left", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    vh_ally_fav_tail_light_b[ i ] linkto( level.var_77be18d2, "tag_fx_tail_light_right", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    vh_ally_fav_head_light_a[ i ] linkto( level.var_77be18d2, "tag_fx_headlight_left", ( 0, 0, 0 ), ( 0, 0, 0 ) );
    vh_ally_fav_head_light_b[ i ] linkto( level.var_77be18d2, "tag_fx_headlight_right", ( 0, 0, 0 ), ( 0, 0, 0 ) );
}

// Namespace namespace_1512c89a/namespace_1512c89a
// Params 0, eflags: 0x0
// Checksum 0xb1990fea, Offset: 0xda0
// Size: 0x6dc
function function_ff11843e()
{
    while ( !isdefined( level.var_77be18d2 ) )
    {
        waitframe( 1 );
    }
    
    fill = getent( "fill_cin_intro", "targetname" );
    key = getent( "key_cin_intro", "targetname" );
    vh_ally_fav_tail_light_a = getentarray( "vh_ally_fav_tail_light_a", "targetname" );
    vh_ally_fav_tail_light_b = getentarray( "vh_ally_fav_tail_light_b", "targetname" );
    vh_ally_fav_left_tail_light_a = getent( "vh_ally_fav_left_tail_light_a", "targetname" );
    vh_ally_fav_left_tail_light_b = getent( "vh_ally_fav_left_tail_light_b", "targetname" );
    vh_ally_fav_left_head_light_a = getent( "vh_ally_fav_left_head_light_a", "targetname" );
    vh_ally_fav_left_head_light_b = getent( "vh_ally_fav_left_head_light_b", "targetname" );
    vh_ally_fav_head_light_a = getentarray( "vh_ally_fav_head_light_a", "targetname" );
    vh_ally_fav_head_light_b = getentarray( "vh_ally_fav_head_light_b", "targetname" );
    vh_ally_fav_right_tail_light_a = getent( "vh_ally_fav_right_tail_light_a", "targetname" );
    vh_ally_fav_right_tail_light_b = getent( "vh_ally_fav_right_tail_light_b", "targetname" );
    vh_ally_fav_right_head_light_a = getent( "vh_ally_fav_right_head_light_a", "targetname" );
    vh_ally_fav_right_head_light_b = getent( "vh_ally_fav_right_head_light_b", "targetname" );
    fill setlightintensity( 0.01 );
    fill setlightradius( 0.01 );
    key setlightintensity( 0.01 );
    key setlightradius( 0.01 );
    
    while ( !isdefined( level.var_5d798cf2 ) )
    {
        waitframe( 1 );
    }
    
    while ( !isdefined( level.var_7b278a4f ) )
    {
        waitframe( 1 );
    }
    
    while ( !isdefined( level.var_82e50b77 ) )
    {
        waitframe( 1 );
    }
    
    level.var_77be18d2 thread vehicle::lights_off();
    level.var_5d798cf2 thread vehicle::lights_off();
    level.var_7b278a4f thread vehicle::lights_off();
    level.var_82e50b77 thread vehicle::lights_off();
    
    for (i = 0; i < level.var_a1030c4e.size; i++) {
        level.var_a1030c4e[ i ] thread vehicle::lights_off();
    }
    
    vh_ally_fav_right_tail_light_a setlightintensity( 0.01 );
    vh_ally_fav_right_tail_light_a setlightradius( 0.01 );
    vh_ally_fav_right_tail_light_b setlightintensity( 0.01 );
    vh_ally_fav_right_tail_light_b setlightradius( 0.01 );
    vh_ally_fav_right_head_light_a setlightintensity( 0.01 );
    vh_ally_fav_right_head_light_a setlightradius( 0.01 );
    vh_ally_fav_right_head_light_b setlightintensity( 0.01 );
    vh_ally_fav_right_head_light_b setlightradius( 0.01 );
    vh_ally_fav_left_tail_light_a setlightintensity( 0.01 );
    vh_ally_fav_left_tail_light_a setlightradius( 0.01 );
    vh_ally_fav_left_tail_light_b setlightintensity( 0.01 );
    vh_ally_fav_left_tail_light_b setlightradius( 0.01 );
    vh_ally_fav_left_head_light_a setlightintensity( 0.01 );
    vh_ally_fav_left_head_light_a setlightradius( 0.01 );
    vh_ally_fav_left_head_light_b setlightintensity( 0.01 );
    vh_ally_fav_left_head_light_b setlightradius( 0.01 );
    
    for (i = 0; i < vh_ally_fav_tail_light_a.size; i++) {
        vh_ally_fav_tail_light_a[ i ] setlightintensity( 0.01 );
        vh_ally_fav_tail_light_a[ i ] setlightradius( 0.01 );
        vh_ally_fav_tail_light_b[ i ] setlightintensity( 0.01 );
        vh_ally_fav_tail_light_b[ i ] setlightradius( 0.01 );
        vh_ally_fav_head_light_a[ i ] setlightintensity( 0.01 );
        vh_ally_fav_head_light_a[ i ] setlightradius( 0.01 );
        vh_ally_fav_head_light_b[ i ] setlightintensity( 0.01 );
        vh_ally_fav_head_light_b[ i ] setlightradius( 0.01 );
    }
}

// Namespace namespace_1512c89a/namespace_1512c89a
// Params 0, eflags: 0x0
// Checksum 0x521c57d8, Offset: 0x1488
// Size: 0x9c
function function_e137ff01()
{
    level waittill( #"player_spawned" );
    wait 1;
    
    if ( !level flag::get( "level_intro_nuke_checkpoint" ) && !level flag::get( "flg_loose_ends" ) )
    {
        setlightingstate( 1 );
        exploder::exploder( "fxexp_nuke_loop_fx" );
    }
}

// Namespace namespace_1512c89a/namespace_1512c89a
// Params 0, eflags: 0x0
// Checksum 0x1d691b8d, Offset: 0x1530
// Size: 0x54
function function_1a690b0e()
{
    level flag::wait_till( "level_intro_nuke_checkpoint" );
    level thread nuke_explosion();
    level thread function_dabce745();
}

// Namespace namespace_1512c89a/namespace_1512c89a
// Params 0, eflags: 0x0
// Checksum 0x4e144369, Offset: 0x1590
// Size: 0x5c
function function_99fed945()
{
    var_f796c5fc = getent( "nuke_trail_trigger_fx", "targetname" );
    var_f796c5fc trigger::wait_till();
    exploder::exploder( "fxexp_nuke_trail_fx" );
}

// Namespace namespace_1512c89a/namespace_1512c89a
// Params 0, eflags: 0x0
// Checksum 0xbf9186ab, Offset: 0x15f8
// Size: 0x6e
function nuke_explosion()
{
    level waittill( #"hash_42baa5404bc46f9c" );
    wait 1;
    setlightingstate( 1 );
    exploder::exploder( "lgt_exp_pre_nuke_ext_lights" );
    var_d9452bdb = ( -148, 5446, 123 );
}

// Namespace namespace_1512c89a/namespace_1512c89a
// Params 0, eflags: 0x0
// Checksum 0xe2d0d941, Offset: 0x1670
// Size: 0x24
function function_dabce745()
{
    level waittill( #"hash_42baa5404bc46f9c" );
    wait 2.5;
}

// Namespace namespace_1512c89a/namespace_1512c89a
// Params 0, eflags: 0x0
// Checksum 0xe4c40b60, Offset: 0x16a0
// Size: 0x1c4
function function_19de36c9()
{
    var_43c0fe92 = getent( "nuke_trigger", "targetname" );
    var_43c0fe92 trigger::wait_till();
    var_11196acd = getent( "nuke_altostratus_cloud_a", "targetname" );
    var_107ad8f5 = ( 41769.5, 100569, -21784.3 );
    var_a2de0e58 = getent( "nuke_altostratus_cloud_b", "targetname" );
    var_9350951 = ( 41654.1, -32697.4, -17409.6 );
    var_ac9f21da = getent( "nuke_altostratus_cloud_c", "targetname" );
    var_dda2c547 = ( 10988.9, 375.336, -6354.21 );
    var_11196acd moveto( var_107ad8f5, 16, 5, 0.01 );
    var_a2de0e58 moveto( var_9350951, 16, 5, 0.01 );
    var_ac9f21da moveto( var_dda2c547, 16, 5, 0.01 );
}

// Namespace namespace_1512c89a/namespace_1512c89a
// Params 0, eflags: 0x0
// Checksum 0x97047f1f, Offset: 0x1870
// Size: 0x5c
function post_nuke_power_on_01()
{
    var_143ff068 = getent( "post_nuke_power_on_01", "targetname" );
    var_143ff068 trigger::wait_till();
    exploder::exploder( "lgt_exp_post_nuke_power_on_01" );
}

// Namespace namespace_1512c89a/namespace_1512c89a
// Params 0, eflags: 0x0
// Checksum 0x773f8dee, Offset: 0x18d8
// Size: 0x74
function post_nuke_power_on_02()
{
    var_143ff068 = getent( "post_nuke_power_on_02", "targetname" );
    var_143ff068 trigger::wait_till();
    exploder::exploder( "lgt_exp_post_nuke_power_on_02" );
    exploder::exploder( "lgt_exp_post_nuke_power_on_03_lightpost" );
}

// Namespace namespace_1512c89a/namespace_1512c89a
// Params 0, eflags: 0x0
// Checksum 0x610dc611, Offset: 0x1958
// Size: 0x44
function post_nuke_power_on_03()
{
    var_143ff068 = getent( "post_nuke_power_on_03", "targetname" );
    var_143ff068 trigger::wait_till();
}

// Namespace namespace_1512c89a/namespace_1512c89a
// Params 0, eflags: 0x0
// Checksum 0x569d180, Offset: 0x19a8
// Size: 0x44
function post_nuke_power_on_04()
{
    var_143ff068 = getent( "post_nuke_power_on_04", "targetname" );
    var_143ff068 trigger::wait_till();
}

