#using script_67ce8e728d8f37ba;
#using script_72d96920f15049b8;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\compass;
#using scripts\core_common\exploder_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\load_shared;
#using scripts\core_common\music_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\struct;
#using scripts\core_common\util_shared;
#using scripts\killstreaks\killstreaks_shared;

#namespace mp_tundra;

// Namespace mp_tundra/mp_tundra
// Params 0, eflags: 0x1
// Checksum 0xf64900c0, Offset: 0x340
// Size: 0x74
function autoexec function_7defddbd()
{
    str_gametype = util::get_game_type();
    
    if ( str_gametype === #"vip" || str_gametype === #"zsurvival" )
    {
        setgametypesetting( #"hash_3a15393c2e90e121", 1 );
    }
}

// Namespace mp_tundra/level_preinit
// Params 1, eflags: 0x20
// Checksum 0xa2d83e33, Offset: 0x3c0
// Size: 0x34
function event_handler[level_preinit] codecallback_preinitialization( *eventstruct )
{
    killstreaks::function_8c83a621( "straferun", #"hash_32c02123dd00c261" );
}

// Namespace mp_tundra/level_init
// Params 1, eflags: 0x20
// Checksum 0x3758497b, Offset: 0x400
// Size: 0x2a4
function event_handler[level_init] main( *eventstruct )
{
    level.levelkothdisable = [];
    level.levelkothdisable[ level.levelkothdisable.size ] = spawn( "trigger_radius", ( -898, 2710, 180 ), 0, 50, 150 );
    level.levelwardisable = [];
    level.levelwardisable[ level.levelwardisable.size ] = spawn( "trigger_radius", ( -898, 2710, 180 ), 0, 50, 150 );
    str_gametype = util::get_game_type();
    
    if ( !function_559de4b9( str_gametype ) )
    {
        hidemiscmodels( "5v5_asset_boundary" );
    }
    else
    {
        level.var_633063a5 = 1;
    }
    
    if ( str_gametype === "zsurvival" )
    {
        level.var_b8c0d7a2 = 3500;
        level.var_e6b49685 = 3000;
    }
    
    function_8993980();
    namespace_66d6aa44::function_3f3466c9();
    killstreaks::function_257a5f13( "straferun", 60 );
    killstreaks::function_257a5f13( "helicopter_comlink", 75 );
    callback::on_game_playing( &on_game_playing );
    callback::on_end_game( &on_end_game );
    load::main();
    compass::setupminimap( "" );
    setdvar( #"hash_7b06b8037c26b99b", 150 );
    level flag::wait_till( "first_player_spawned" );
    level thread function_e33449fd();
    level thread function_29584e41();
    function_e8fa58f2();
    function_564698fd();
}

// Namespace mp_tundra/mp_tundra
// Params 0, eflags: 0x0
// Checksum 0x6478d76a, Offset: 0x6b0
// Size: 0x4c
function function_e8fa58f2()
{
    hidemiscmodels( "magicbox_zbarrier" );
    hidemiscmodels( "hordehunt_corpses_1" );
    hidemiscmodels( "hordehunt_corpses_2" );
}

// Namespace mp_tundra/mp_tundra
// Params 0, eflags: 0x0
// Checksum 0xa183fd69, Offset: 0x708
// Size: 0xa4
function function_564698fd()
{
    gametype = function_be90acca( util::get_game_type() );
    
    if ( gametype === "zsurvival" )
    {
        level.var_29cfe9dd = 0;
        namespace_e8c18978::function_d887d24d( "chopper_gunner_vol_tundra_1" );
        namespace_e8c18978::function_d887d24d( "chopper_gunner_vol_tundra_2" );
        level flag::set( #"hash_3070ff342f14b371" );
    }
}

// Namespace mp_tundra/mp_tundra
// Params 0, eflags: 0x0
// Checksum 0x71d6a57d, Offset: 0x7b8
// Size: 0x108
function function_8993980()
{
    str_gametype = util::get_game_type();
    
    if ( str_gametype == "vip" )
    {
        var_87e54151 = getentarray( "script_vehicle", "classname" );
        
        foreach ( var_59cf64fa in var_87e54151 )
        {
            if ( !isdefined( var_59cf64fa.scriptvehicletype ) || var_59cf64fa.scriptvehicletype == "player_tank" )
            {
                var_59cf64fa delete();
            }
        }
    }
}

// Namespace mp_tundra/mp_tundra
// Params 0, eflags: 0x0
// Checksum 0x284a9dc9, Offset: 0x8c8
// Size: 0x224
function on_game_playing()
{
    str_gametype = util::get_game_type();
    
    if ( function_559de4b9( str_gametype ) )
    {
        hidemiscmodels( "turret_model" );
        exploder::exploder( "fxexp_tundra_6v6" );
        return;
    }
    
    var_5b84b22c = getentarray( "tundra_oob_clip", "targetname" );
    
    foreach ( var_ec7dad0 in var_5b84b22c )
    {
        if ( isdefined( var_ec7dad0 ) )
        {
            var_ec7dad0 delete();
        }
    }
    
    var_3359f998 = arraycombine( getentarray( "5v5_asset_boundary", "targetname" ), getentarray( "5v5_asset_boundary", "script_noteworthy" ), 0, 0 );
    
    foreach ( var_8da7cb3 in var_3359f998 )
    {
        if ( isdefined( var_8da7cb3 ) )
        {
            var_8da7cb3 delete();
        }
    }
    
    exploder::exploder( "exp_lgt_12v12" );
}

// Namespace mp_tundra/mp_tundra
// Params 1, eflags: 0x0
// Checksum 0x69432fca, Offset: 0xaf8
// Size: 0x17e
function function_559de4b9( str_gametype )
{
    a_tokens = strtok( str_gametype, "_" );
    
    switch ( a_tokens[ 0 ] )
    {
        case #"koth":
        case #"sas":
        case #"spy":
        case #"prop":
        case #"control":
        case #"dm":
        case #"sd":
        case #"conf":
        case #"scream":
        case #"oic":
        case #"dom":
        case #"dropkick":
        case #"gun":
        case #"tdm":
        case #"clean":
        case #"infect":
            var_f710be30 = 1;
            break;
        default:
            var_f710be30 = 0;
            break;
    }
    
    return var_f710be30;
}

// Namespace mp_tundra/mp_tundra
// Params 0, eflags: 0x0
// Checksum 0xbd4bc6c6, Offset: 0xc80
// Size: 0x5c
function on_end_game()
{
    if ( getdvarint( #"hash_5cfa659178399dc6", 0 ) )
    {
        level scene::function_1e327c20( array( "cin_mp_tundra_outro_cia", "cin_mp_tundra_outro_kgb" ) );
    }
}

// Namespace mp_tundra/mp_tundra
// Params 0, eflags: 0x0
// Checksum 0xce31d69b, Offset: 0xce8
// Size: 0x4c
function function_e33449fd()
{
    rope_bridge_trig = getent( "rope_bridge_trig", "targetname" );
    rope_bridge_trig callback::on_trigger( &function_95ec9598 );
}

// Namespace mp_tundra/mp_tundra
// Params 1, eflags: 0x0
// Checksum 0x39f93788, Offset: 0xd40
// Size: 0x1f6
function function_95ec9598( var_3a72e7b7 )
{
    player = var_3a72e7b7.activator;
    
    if ( isdefined( self ) && isalive( player ) && !is_true( self.activated ) && player function_64fefea() )
    {
        level endon( #"game_ended" );
        scene = struct::get( #"hash_2467352290a052f7", "scriptbundlename" );
        bridge = scene.scene_ents[ #"prop 1" ];
        self.activated = 1;
        level thread scene::play( #"hash_2467352290a052f7", "Shot 2" );
        
        while ( self function_86072b19() )
        {
            waitframe( 1 );
        }
        
        bridge waittill( #"loop_done", #"death" );
        
        if ( function_acf0ca42() && !function_86072b19() )
        {
            level thread scene::stop( #"hash_2467352290a052f7" );
        }
        else if ( !function_acf0ca42() )
        {
            level thread scene::play( #"hash_2467352290a052f7", "Shot 1" );
        }
        
        self.activated = 0;
    }
}

// Namespace mp_tundra/mp_tundra
// Params 0, eflags: 0x0
// Checksum 0x91222514, Offset: 0xf40
// Size: 0xdc, Type: bool
function function_86072b19()
{
    foreach ( player in getplayers() )
    {
        if ( isalive( player ) && isdefined( self ) && player istouching( self ) && player function_64fefea() )
        {
            return true;
        }
    }
    
    return false;
}

// Namespace mp_tundra/mp_tundra
// Params 0, eflags: 0x0
// Checksum 0x4153e54f, Offset: 0x1028
// Size: 0xc4, Type: bool
function function_acf0ca42()
{
    foreach ( player in getplayers() )
    {
        if ( isalive( player ) && isdefined( self ) && player istouching( self ) )
        {
            return true;
        }
    }
    
    return false;
}

// Namespace mp_tundra/mp_tundra
// Params 0, eflags: 0x0
// Checksum 0xa3e564d4, Offset: 0x10f8
// Size: 0x2c, Type: bool
function function_64fefea()
{
    if ( self getvelocity() === ( 0, 0, 0 ) )
    {
        return false;
    }
    
    return true;
}

// Namespace mp_tundra/mp_tundra
// Params 0, eflags: 0x0
// Checksum 0xf45e71bb, Offset: 0x1130
// Size: 0x170
function function_29584e41()
{
    level flag::wait_till( #"item_world_reset" );
    
    if ( util::get_game_type() !== #"spy" )
    {
        var_94c44cac = getdynentarray( "spy_special_weapon_stash" );
        var_de285f77 = getdynentarray( "spy_ammo_stash" );
        var_ffd6a2d3 = getdynentarray( "spy_equipment_stash" );
        var_3c1644b6 = arraycombine( var_94c44cac, var_de285f77 );
        var_3c1644b6 = arraycombine( var_3c1644b6, var_ffd6a2d3 );
        
        foreach ( dynent in var_3c1644b6 )
        {
            setdynentstate( dynent, 3 );
        }
    }
}

