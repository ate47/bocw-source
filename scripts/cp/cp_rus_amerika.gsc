#using script_155b17ff7c8b315c;
#using script_446752c03c555e16;
#using script_5535d5829946973d;
#using script_55c94e3e2ed0bf40;
#using script_57d05cf093ffba5c;
#using script_5a4029688e94b318;
#using script_6cd35fe7afb1f231;
#using script_7082da1eb645c3b8;
#using script_719116534f2a623f;
#using script_776dd70e5af0a4;
#using script_77d064824b2c820c;
#using script_97b74052c477c23;
#using scripts\autogenerated\luielems\cp\full_screen_movie;
#using scripts\core_common\array_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\load_shared;
#using scripts\core_common\lui_shared;
#using scripts\core_common\struct;
#using scripts\core_common\util_shared;
#using scripts\core_common\values_shared;
#using scripts\cp\cp_rus_amerika_fx;
#using scripts\cp_common\cp_explosive_barrel;
#using scripts\cp_common\hms_util;
#using scripts\cp_common\skipto;

#namespace cp_rus_amerika;

// Namespace cp_rus_amerika/level_init
// Params 1, eflags: 0x20
// Checksum 0x4afb19bb, Offset: 0x768
// Size: 0x364
function event_handler[level_init] main( *eventstruct )
{
    setclearanceceiling( 16 );
    init_clientfields();
    function_bf4b4b7e();
    namespace_f942705d::preload();
    level thread lui::add_luimenu( "full_screen_movie", &full_screen_movie::register );
    load::main();
    namespace_f6d09d1a::init();
    namespace_f942705d::init();
    namespace_2977687d::init();
    setdvar( #"compassmaxrange", "2100" );
    level.disablestattracking = 1;
    level namespace_fc3e8cb::function_a23603cf();
    setdvar( #"hash_7fb1be9520b9a725", 100 );
    setdvar( #"hash_6b57212fd4fcdd3a", 350 );
    setdvar( #"hash_4ad75035d6026ea2", 0.819 );
    callback::on_spawned( &namespace_fc3e8cb::setup_player );
    level namespace_fc3e8cb::function_e610d177();
    level namespace_fc3e8cb::function_a47a7ec();
    callback::on_spawned( &function_eabfb2d5 );
    callback::on_spawned( &function_90fab2ab );
    thread function_a2f341e2( "targetname", "destructible", "lockpick_ent_clean_trig", "exterior_aabb_min", "exterior_aabb_max" );
    thread function_a2f341e2( "targetname", "destructible", "exterior_ent_clean_trig", "exterior_aabb_min", "exterior_aabb_max" );
    thread function_a2f341e2( "targetname", "destructible", "terminal_ent_clean_trig", "main_street_aabb_min", "main_street_aabb_max" );
    thread function_a2f341e2( "targetname", "male_mannequin_trigger", "terminal_ent_clean_trig", "main_street_aabb_min", "main_street_aabb_max" );
    thread function_a2f341e2( "targetname", "child_mannequin_trigger", "terminal_ent_clean_trig", "main_street_aabb_min", "main_street_aabb_max" );
    thread function_a2f341e2( "targetname", "female_mannequin_trigger", "terminal_ent_clean_trig", "main_street_aabb_min", "main_street_aabb_max" );
}

// Namespace cp_rus_amerika/cp_rus_amerika
// Params 0, eflags: 0x0
// Checksum 0x43ce4040, Offset: 0xad8
// Size: 0xcec
function function_bf4b4b7e()
{
    skipto::function_eb91535d( "forest", &namespace_e967dd33::function_d033814a, &namespace_e967dd33::function_2c620a1d, "Forest", &namespace_e967dd33::function_34489c64 );
    skipto::function_eb91535d( "perimeter", &namespace_e967dd33::function_ccc536c3, &namespace_e967dd33::function_bdf1abf6, "Perimeter", &namespace_e967dd33::function_1399c3c8 );
    skipto::function_eb91535d( "helipad", &namespace_e967dd33::function_4f9d9de3, &namespace_e967dd33::function_b53f913c, "Helipad", &namespace_e967dd33::function_f83ba620 );
    skipto::add( "side_door", &namespace_e967dd33::function_d27fe3f3, &namespace_e967dd33::function_908a5d78, "Side Door", &namespace_e967dd33::function_56a40f23 );
    skipto::add( "lockpick", &namespace_96add23c::function_709fd94e, &namespace_96add23c::function_a5ad7a90, "Lockpick Door", &namespace_96add23c::function_70073b6b );
    skipto::function_eb91535d( "tunnels", &namespace_96add23c::tunnels_main, &namespace_96add23c::function_debfe625, "Maintenance Tunnels", &namespace_96add23c::tunnels_cleanup );
    skipto::add( "arcade", &namespace_aad1a8fc::function_f31f54a0, &namespace_aad1a8fc::function_c4dc0c81, "Arcade", &namespace_aad1a8fc::function_bb767617 );
    skipto::function_eb91535d( "video_store", &namespace_b767a37e::function_6fc923cc, &namespace_b767a37e::function_1bfb5e75, "Video Store", &namespace_b767a37e::function_b85d7b0c );
    skipto::add( "main_street", &namespace_b767a37e::function_c5b43ce, &namespace_b767a37e::function_bc754782, "Main Street", &namespace_b767a37e::function_c76d36b0 );
    skipto::function_eb91535d( "elevator_fight", &namespace_b767a37e::function_f7a489fd, &namespace_b767a37e::function_e169c9d8, "Elevator Fight", &namespace_b767a37e::function_5ce25b5 );
    skipto::function_eb91535d( "elevator", &namespace_be0b7a4::elevator_main, &namespace_be0b7a4::function_cc475eed, "Elevator", &namespace_be0b7a4::function_987cb73 );
    skipto::function_eb91535d( "terminal", &namespace_be0b7a4::function_da9636d5, &namespace_be0b7a4::function_4254583f, "Terminal", &namespace_be0b7a4::function_207b0552 );
    skipto::function_eb91535d( "observation", &namespace_be0b7a4::function_7ff0a4d3, &namespace_be0b7a4::function_170cfeb3, "Observation", &namespace_be0b7a4::function_123e9b38 );
    skipto::function_eb91535d( "facades", &namespace_4c1dd357::function_bb5a40cc, &namespace_4c1dd357::function_ad51fa26, "Facades", &namespace_4c1dd357::function_7c8934a0 );
    skipto::add( "rooftops", &namespace_4c1dd357::rooftops_main, &namespace_4c1dd357::function_3c9f8a88, "Rooftops", &namespace_4c1dd357::function_21fbbfb2 );
    skipto::add( "storage", &namespace_4c1dd357::function_f13abd77, &namespace_4c1dd357::function_69d1435d, "Storage", &namespace_4c1dd357::function_80555a03 );
    skipto::function_eb91535d( "motor_pool", &namespace_4c1dd357::function_3b55ec61, &namespace_4c1dd357::function_36c18ca, "Motor Pool", &namespace_4c1dd357::function_b78a9ad4 );
    skipto::function_eb91535d( "apc_turret", &namespace_80316bc8::function_6bd1bb5a, &namespace_80316bc8::function_757efcb6, "APC Turret", &namespace_80316bc8::function_54337d3f );
    skipto::function_eb91535d( "apc_townsquare", &namespace_80316bc8::function_a668e580, &namespace_80316bc8::function_7da641f5, "APC Townsquare", &namespace_80316bc8::function_28117f7e );
    skipto::add( "apc_mall", &namespace_80316bc8::function_a668e580, &namespace_80316bc8::function_7da641f5, "APC Mall", &namespace_80316bc8::function_28117f7e );
    skipto::function_46d8992a( "forest" );
    
    /#
        level.var_965c6227[ #"forest" ] = [ "<dev string:x38>", "<dev string:x42>", "<dev string:x4d>", "<dev string:x57>" ];
        level.var_965c6227[ #"perimeter" ] = [ "<dev string:x65>", "<dev string:x42>", "<dev string:x4d>", "<dev string:x57>" ];
        level.var_965c6227[ #"helipad" ] = [ "<dev string:x72>", "<dev string:x42>", "<dev string:x4d>", "<dev string:x57>" ];
        level.var_965c6227[ #"side_door" ] = [ "<dev string:x7d>", "<dev string:x42>", "<dev string:x8a>", "<dev string:x57>" ];
        level.var_965c6227[ #"lockpick" ] = [ "<dev string:x93>", "<dev string:xa4>", "<dev string:x8a>", "<dev string:x57>" ];
        level.var_965c6227[ #"tunnels" ] = [ "<dev string:xb3>", "<dev string:x42>", "<dev string:x8a>", "<dev string:x57>" ];
        level.var_965c6227[ #"arcade" ] = [ "<dev string:xca>", "<dev string:xd4>", "<dev string:x8a>", "<dev string:x57>" ];
        level.var_965c6227[ #"video_store" ] = [ "<dev string:xe1>", "<dev string:xf0>", "<dev string:x8a>", "<dev string:x57>" ];
        level.var_965c6227[ #"main_street" ] = [ "<dev string:xfa>", "<dev string:xf0>", "<dev string:x109>", "<dev string:x57>" ];
        level.var_965c6227[ #"elevator_fight" ] = [ "<dev string:x111>", "<dev string:xf0>", "<dev string:x8a>", "<dev string:x57>" ];
        level.var_965c6227[ #"elevator" ] = [ "<dev string:x123>", "<dev string:xf0>", "<dev string:x8a>", "<dev string:x57>" ];
        level.var_965c6227[ #"terminal" ] = [ "<dev string:x12f>", "<dev string:xa4>", "<dev string:x8a>", "<dev string:x57>" ];
        level.var_965c6227[ #"Observation" ] = [ "<dev string:x13b>", "<dev string:xd4>", "<dev string:x8a>", "<dev string:x57>" ];
        level.var_965c6227[ #"Facades" ] = [ "<dev string:x14a>", "<dev string:xf0>", "<dev string:x4d>", "<dev string:x57>" ];
        level.var_965c6227[ #"Rooftops" ] = [ "<dev string:x155>", "<dev string:xf0>", "<dev string:x4d>", "<dev string:x57>" ];
        level.var_965c6227[ #"storage" ] = [ "<dev string:x161>", "<dev string:xf0>", "<dev string:x4d>", "<dev string:x57>" ];
        level.var_965c6227[ #"motor_pool" ] = [ "<dev string:x16c>", "<dev string:xf0>", "<dev string:x4d>", "<dev string:x57>" ];
        level.var_965c6227[ #"apc_turret" ] = [ "<dev string:x17a>", "<dev string:x188>", "<dev string:x4d>", "<dev string:x57>" ];
        level.var_965c6227[ #"apc_ride" ] = [ "<dev string:x193>", "<dev string:x188>", "<dev string:x4d>", "<dev string:x57>" ];
    #/
}

// Namespace cp_rus_amerika/cp_rus_amerika
// Params 0, eflags: 0x0
// Checksum 0x9895fb47, Offset: 0x17d0
// Size: 0x334
function init_clientfields()
{
    clientfield::register( "world", "cull_helipad", 1, 2, "int" );
    clientfield::register( "world", "cull_mainstreet", 1, 2, "int" );
    clientfield::register( "world", "cull_facility", 1, 2, "int" );
    clientfield::register( "world", "rooftop_02_interior", 1, 2, "int" );
    clientfield::register( "world", "cull_courtyard", 1, 2, "int" );
    clientfield::register( "world", "cull_allinterior", 1, 2, "int" );
    clientfield::register( "scriptmover", "force_stream_ent", 1, 1, "int" );
    clientfield::register( "scriptmover", "spy_camera_entity_highlight", 1, 2, "int" );
    clientfield::register( "toplayer", "lerp_fov", 1, 2, "int" );
    clientfield::register( "toplayer", "spy_camera_photo_focus_check", 1, 1, "int" );
    clientfield::register( "toplayer", "spy_camera_photo_trace_check", 1, 1, "int" );
    clientfield::register( "toplayer", "slowmo_postfx", 1, 1, "int" );
    clientfield::register( "actor", "spy_camera_photo_reset", 1, 1, "int" );
    clientfield::register( "vehicle", "apc_threat_sight_meter", 1, 6, "int" );
    clientfield::register( "vehicle", "apc_threat_sight_state", 1, 2, "int" );
    clientfield::register( "toplayer", "playIntro_postFX", 1, 1, "int" );
    clientfield::register( "world", "SetPBGExposureBank", 1, 2, "int" );
}

// Namespace cp_rus_amerika/cp_rus_amerika
// Params 5, eflags: 0x0
// Checksum 0x43061d90, Offset: 0x1b10
// Size: 0x370
function function_a2f341e2( key, value, trigger, var_e41ae6e2, var_784eb2cc )
{
    entarray = getentarray( value, key );
    var_7dcda7ca = [];
    aabbmin = getent( var_e41ae6e2, "targetname" );
    aabbmax = getent( var_784eb2cc, "targetname" );
    var_fb71415b = getent( trigger, "targetname" );
    i = 0;
    
    foreach ( ent in entarray )
    {
        if ( ent.origin[ 0 ] > aabbmin.origin[ 0 ] && ent.origin[ 0 ] < aabbmax.origin[ 0 ] && ent.origin[ 1 ] > aabbmin.origin[ 1 ] && ent.origin[ 1 ] < aabbmax.origin[ 1 ] && ent.origin[ 2 ] > aabbmin.origin[ 2 ] && ent.origin[ 2 ] < aabbmax.origin[ 2 ] )
        {
            var_7dcda7ca[ i ] = ent;
            i += 1;
        }
    }
    
    var_fb71415b waittill( #"trigger" );
    
    if ( value == "destructible" )
    {
        foreach ( ent in var_7dcda7ca )
        {
            if ( isdefined( ent ) )
            {
                ent notify( #"car_dead" );
            }
        }
    }
    
    foreach ( ent in var_7dcda7ca )
    {
        if ( isdefined( ent ) )
        {
            ent delete();
        }
    }
}

// Namespace cp_rus_amerika/cp_rus_amerika
// Params 0, eflags: 0x0
// Checksum 0x6f9eaf89, Offset: 0x1e88
// Size: 0x32c
function function_eabfb2d5()
{
    level.var_9f3e167e = [];
    a_e_targets = getentarray( "amk_spring_loaded_target", "targetname" );
    
    foreach ( e_target in a_e_targets )
    {
        var_e30e452 = spawnstruct();
        var_e30e452.classname = e_target.classname;
        var_e30e452.origin = e_target.origin;
        var_e30e452.angles = e_target.angles;
        var_e30e452.modelname = e_target.model;
        var_e30e452.targetname = e_target.targetname;
        var_e30e452.target = e_target.target;
        var_e30e452.destructibledef = e_target.destructibledef;
        var_e30e452.script = e_target.script;
        var_e30e452.script_delay = e_target.script_delay;
        var_e30e452.script_flag_wait = e_target.script_flag_wait;
        var_e30e452.var_7da8e72f = e_target.var_7da8e72f;
        var_e30e452.var_2ce4392f = e_target.var_2ce4392f;
        var_e30e452.var_f0979e33 = e_target.var_f0979e33;
        var_e30e452.var_78a1032b = e_target.var_78a1032b;
        var_e30e452.var_4b38ad7d = e_target.var_4b38ad7d;
        var_e30e452.script_health = e_target.script_health;
        var_e30e452.script_team = e_target.script_team;
        var_e30e452.script_noteworthy = e_target.script_noteworthy;
        var_e30e452.script_speed = e_target.script_speed;
        var_e30e452.objectid = e_target.objectid;
        var_e30e452.health = e_target.health;
        
        if ( !isdefined( level.var_9f3e167e ) )
        {
            level.var_9f3e167e = [];
        }
        else if ( !isarray( level.var_9f3e167e ) )
        {
            level.var_9f3e167e = array( level.var_9f3e167e );
        }
        
        level.var_9f3e167e[ level.var_9f3e167e.size ] = var_e30e452;
    }
    
    foreach ( e_target in a_e_targets )
    {
        e_target delete();
    }
    
    level flag::set( "flg_amk_spring_loaded_target_info_stored" );
}

// Namespace cp_rus_amerika/cp_rus_amerika
// Params 0, eflags: 0x0
// Checksum 0xe9198789, Offset: 0x21c0
// Size: 0x364
function function_a5db1760()
{
    if ( !level flag::get( "flg_amk_spring_loaded_targets_respawned" ) )
    {
        level flag::wait_till( "flg_amk_spring_loaded_target_info_stored" );
        
        foreach ( var_e30e452 in level.var_9f3e167e )
        {
            e_target = spawn( var_e30e452.classname, var_e30e452.origin );
            e_target setmodel( var_e30e452.modelname );
            e_target.angles = var_e30e452.angles;
            e_target.targetname = var_e30e452.targetname;
            e_target.destructibledef = var_e30e452.destructibledef;
            e_target.script = var_e30e452.script;
            e_target.script_delay = var_e30e452.script_delay;
            e_target.script_flag_wait = var_e30e452.script_flag_wait;
            e_target.var_7da8e72f = var_e30e452.var_7da8e72f;
            e_target.var_2ce4392f = var_e30e452.var_2ce4392f;
            e_target.var_f0979e33 = var_e30e452.var_f0979e33;
            e_target.var_78a1032b = var_e30e452.var_78a1032b;
            e_target.var_4b38ad7d = var_e30e452.var_4b38ad7d;
            e_target.script_health = var_e30e452.script_health;
            e_target.script_team = var_e30e452.script_team;
            e_target.script_noteworthy = var_e30e452.script_noteworthy;
            e_target.script_speed = var_e30e452.script_speed;
            e_target.objectid = var_e30e452.objectid;
            e_target.health = var_e30e452.health;
            e_target val::set( "spring_loaded_target", "takedamage", 1 );
            e_target val::set( "spring_loaded_target", "allowdeath", 0 );
            e_target clientfield::set( "force_stream_ent", 1 );
            e_target.var_77aff7ae = 0;
            e_target.var_1b7a5aa9 = undefined;
            e_target solid();
            
            if ( !isdefined( level.var_ea773f78 ) )
            {
                level.var_ea773f78 = [];
            }
            else if ( !isarray( level.var_ea773f78 ) )
            {
                level.var_ea773f78 = array( level.var_ea773f78 );
            }
            
            level.var_ea773f78[ level.var_ea773f78.size ] = e_target;
            e_target thread namespace_fc3e8cb::function_4793fdc3();
            var_e30e452.e_target = e_target;
        }
        
        level flag::set( "flg_amk_spring_loaded_targets_respawned" );
    }
}

// Namespace cp_rus_amerika/cp_rus_amerika
// Params 0, eflags: 0x0
// Checksum 0x2f0830fc, Offset: 0x2530
// Size: 0x3a4
function function_90fab2ab()
{
    level.var_c9de7735 = [];
    var_efa5472a = skipto::function_5a61e21a()[ 0 ];
    var_47580e79 = getentarray( "cp_explosive_barrel", "targetname" );
    
    foreach ( var_fc3729bf in var_47580e79 )
    {
        s_barrel = spawnstruct();
        s_barrel.classname = var_fc3729bf.classname;
        s_barrel.origin = var_fc3729bf.origin;
        s_barrel.angles = var_fc3729bf.angles;
        s_barrel.modelname = var_fc3729bf.model;
        s_barrel.targetname = var_fc3729bf.targetname;
        s_barrel.target = var_fc3729bf.target;
        s_barrel.destructibledef = var_fc3729bf.destructibledef;
        s_barrel.script = var_fc3729bf.script;
        s_barrel.script_health = var_fc3729bf.script_health;
        s_barrel.script_team = var_fc3729bf.script_team;
        s_barrel.script_noteworthy = var_fc3729bf.script_noteworthy;
        s_barrel.script_speed = var_fc3729bf.script_speed;
        s_barrel.objectid = var_fc3729bf.objectid;
        s_barrel.health = var_fc3729bf.health;
        
        if ( var_fc3729bf.script_objective === "terminal" )
        {
            s_barrel.var_a21d4ac9 = array( "main_street", "elevator_fight", "elevator" );
            s_barrel.script_objective = var_fc3729bf.script_objective;
        }
        else
        {
            s_barrel.var_a21d4ac9 = array( "storage", "motor_pool", "apc_turret" );
            s_barrel.script_objective = var_fc3729bf.script_objective;
        }
        
        if ( !isdefined( level.var_c9de7735 ) )
        {
            level.var_c9de7735 = [];
        }
        else if ( !isarray( level.var_c9de7735 ) )
        {
            level.var_c9de7735 = array( level.var_c9de7735 );
        }
        
        level.var_c9de7735[ level.var_c9de7735.size ] = s_barrel;
        b_delete_me = 1;
        
        foreach ( var_1d3e1e2a in s_barrel.var_a21d4ac9 )
        {
            if ( var_1d3e1e2a == var_efa5472a )
            {
                b_delete_me = 0;
            }
        }
        
        if ( b_delete_me )
        {
            var_fc3729bf delete();
        }
    }
    
    level flag::set( "flg_amk_explosive_barrel_info_stored" );
}

// Namespace cp_rus_amerika/cp_rus_amerika
// Params 1, eflags: 0x0
// Checksum 0xa1276878, Offset: 0x28e0
// Size: 0x114
function function_f6b6f426( var_d3440450 )
{
    if ( !level flag::get( "flg_amk_explosive_barrels_respawned_" + var_d3440450 ) )
    {
        level flag::wait_till( "flg_amk_explosive_barrel_info_stored" );
        
        foreach ( s_barrel in level.var_c9de7735 )
        {
            if ( s_barrel.script_objective === var_d3440450 )
            {
                s_barrel function_20d471e4();
            }
        }
        
        level flag::set( "flg_amk_explosive_barrels_respawned_" + var_d3440450 );
    }
}

// Namespace cp_rus_amerika/cp_rus_amerika
// Params 0, eflags: 0x0
// Checksum 0xd60f477, Offset: 0x2a00
// Size: 0x11c
function function_20d471e4()
{
    if ( !isdefined( self.var_fc3729bf ) )
    {
        var_fc3729bf = spawn( self.classname, self.origin );
        var_fc3729bf setmodel( self.modelname );
        var_fc3729bf.angles = self.angles;
        var_fc3729bf.targetname = self.targetname;
        var_fc3729bf.destructibledef = self.destructibledef;
        var_fc3729bf.script = self.script;
        var_fc3729bf.script_health = self.script_health;
        var_fc3729bf.script_team = self.script_team;
        var_fc3729bf.script_noteworthy = self.script_noteworthy;
        var_fc3729bf.script_speed = self.script_speed;
        var_fc3729bf.objectid = self.objectid;
        var_fc3729bf.health = self.health;
        self.var_fc3729bf = var_fc3729bf;
        level thread cp_explosive_barrel::function_8d10f6be( var_fc3729bf );
    }
}

// Namespace cp_rus_amerika/cp_rus_amerika
// Params 1, eflags: 0x0
// Checksum 0xb1258a5, Offset: 0x2b28
// Size: 0xd8
function function_cee29c87( var_d3440450 )
{
    foreach ( s_barrel in level.var_c9de7735 )
    {
        if ( s_barrel.script_objective === var_d3440450 )
        {
            if ( isdefined( s_barrel.var_fc3729bf ) )
            {
                s_barrel.var_fc3729bf delete();
            }
            
            arrayremovevalue( level.var_c9de7735, s_barrel );
        }
    }
}

