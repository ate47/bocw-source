#using script_1cd690a97dfca36e;
#using scripts\core_common\array_shared;
#using scripts\core_common\audio_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\music_shared;
#using scripts\core_common\struct;
#using scripts\core_common\util_shared;
#using scripts\cp_common\snd;
#using scripts\cp_common\snd_draw;
#using scripts\cp_common\snd_utility;

#namespace namespace_c1cfab6c;

// Namespace namespace_c1cfab6c/level_preinit
// Params 1, eflags: 0x20
// Checksum 0x6804d4d9, Offset: 0x360
// Size: 0x8c
function event_handler[level_preinit] function_b489bb7b( *eventstruct )
{
    snd::function_d4ec748e( &function_f2a2832d );
    snd::function_ce78b33b( &function_32ab045 );
    snd::trigger_init( &_trigger );
    snd::function_5e69f468( &_objective );
}

// Namespace namespace_c1cfab6c/event_cc819519
// Params 1, eflags: 0x20
// Checksum 0x4218e613, Offset: 0x3f8
// Size: 0x74
function event_handler[event_cc819519] function_686b88aa( *eventstruct )
{
    level thread alarms();
    snd::wait_init();
    snd::waitforplayers();
    function_b6407dd4( 1 );
    function_62ff8d93( 1 );
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 2, eflags: 0x4
// Checksum 0x343d17cc, Offset: 0x478
// Size: 0x1aa
function private function_32ab045( ent, name )
{
    switch ( name )
    {
        case #"heli":
            ent thread heli();
            break;
        case #"truck":
            ent thread truck();
            break;
        case #"ai_truck":
            ent thread ai_truck();
            break;
        case #"hash_5c1cf640998f4b32":
            ent thread function_4ada6bd4();
            break;
        case #"missile":
            ent thread missile();
            break;
        case #"smoke_grenade":
            var_b6d070fb = snd::play( "wpn_smoke_hiss_lp", ent );
            snd::function_f4f3a2a( var_b6d070fb, ent, 1 );
            break;
        default:
            /#
                snd::function_81fac19d( snd::function_d78e3644(), "<dev string:x38>" + snd::function_783b69( name, "<dev string:x5d>" ) );
            #/
            
            break;
    }
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 3, eflags: 0x4
// Checksum 0xf3ee4be, Offset: 0x630
// Size: 0xd2
function private _trigger( *player, trigger, *var_ec80d14b )
{
    trigger_name = snd::function_ea2f17d1( var_ec80d14b.script_ambientroom, "$default" );
    
    switch ( trigger_name )
    {
        case #"$default":
            break;
        case #"hash_52c986eea5204cd3":
            break;
        default:
            /#
                snd::function_81fac19d( snd::function_d78e3644(), "<dev string:x62>" + trigger_name + "<dev string:x5d>" );
            #/
            
            break;
    }
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 2, eflags: 0x4
// Checksum 0xee626e49, Offset: 0x710
// Size: 0x15a
function private function_f2a2832d( *player, msg )
{
    switch ( msg )
    {
        case #"hash_685e0be4fd449fb7":
            break;
        case #"hash_a6672e4b395e2b8":
            thread function_f65bf20a();
            thread function_23f249d1();
            break;
        case #"hash_1b35e000cf122d8e":
            thread function_641ef2a8();
            break;
        case #"hash_5c7e1a43ba45c2b4":
            thread function_1477a4b9();
            thread function_58c7f87f();
            break;
        case #"hash_305dcf2b80864ec":
            thread function_f9003ea1();
            break;
        default:
            /#
                snd::function_81fac19d( snd::function_d78e3644(), "<dev string:x86>" + snd::function_783b69( msg, "<dev string:x5d>" ) );
            #/
            
            break;
    }
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 1, eflags: 0x4
// Checksum 0xc982f94d, Offset: 0x878
// Size: 0x192
function private _objective( objective )
{
    switch ( objective )
    {
        case #"tundra_intro":
            thread function_f65bf20a();
            break;
        case #"tundra_combat":
            level notify( #"hash_d0fb1042d2d6aa" );
            thread function_bca722a8();
            thread function_ac9af666();
            break;
        case #"dev_vip_active":
            level notify( #"hash_d0fb1042d2d6aa" );
            thread function_ac9af666();
            break;
        case #"tundra_outro":
            level notify( #"hash_d0fb1042d2d6aa" );
            thread function_bca722a8();
            thread function_ac9af666();
            break;
        case #"no_game":
            break;
        default:
            /#
                snd::function_81fac19d( snd::function_d78e3644(), "<dev string:xa4>" + objective + "<dev string:x5d>" );
            #/
            
            break;
    }
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 0, eflags: 0x0
// Checksum 0x4b449f68, Offset: 0xa18
// Size: 0xcc
function function_f65bf20a()
{
    if ( is_true( level.var_f2a6039e ) )
    {
        return;
    }
    
    level.var_f2a6039e = 1;
    snd::play( "evt_wind_build_edge_00_l", ( 3688, 1016, 1525 ) );
    snd::play( "evt_cold_edge_close", ( 3556, 1422, 1473 ) );
    snd::play( "evt_air_cold_light", ( 3246, 1132, 1398 ) );
    snd::play( "evt_wind_gusty", ( 2787, 949, 1312 ) );
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 0, eflags: 0x0
// Checksum 0xc0189812, Offset: 0xaf0
// Size: 0x1c
function function_23f249d1()
{
    snd::play( "evt_intro_mountaineering" );
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 0, eflags: 0x4
// Checksum 0x7ebbed5e, Offset: 0xb18
// Size: 0x76
function private heli()
{
    heli = self;
    var_9ab07417 = snd::play( [ "evt_intro_choppers_flyby", 1 ], [ heli, "tag_origin" ] );
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 0, eflags: 0x4
// Checksum 0x32569a92, Offset: 0xb98
// Size: 0x1bc
function private truck()
{
    truck = self;
    var_4c5ca2df = [];
    var_4c5ca2df[ #"speed" ] = [ 0, 18 ];
    var_4c5ca2df[ #"scale" ] = [ snd::function_d8b24901( -12 ), snd::function_d8b24901( 12 ) ];
    var_4c5ca2df[ #"curve" ] = [ "linear" ];
    var_9fd84ef1 = [];
    var_9fd84ef1[ #"speed" ] = [ 0, 6 ];
    var_9fd84ef1[ #"scale" ] = [ 0.1, 1 ];
    var_9fd84ef1[ #"curve" ] = [ "xfade" ];
    var_de483b4c = snd::speed( truck, "veh_jeep_engine_lp", var_4c5ca2df, var_9fd84ef1 );
    snd::function_f4f3a2a( var_de483b4c, truck );
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 0, eflags: 0x4
// Checksum 0x9680d4e6, Offset: 0xd60
// Size: 0x1bc
function private ai_truck()
{
    truck = self;
    var_4c5ca2df = [];
    var_4c5ca2df[ #"speed" ] = [ 0, 18 ];
    var_4c5ca2df[ #"scale" ] = [ snd::function_d8b24901( -12 ), snd::function_d8b24901( 12 ) ];
    var_4c5ca2df[ #"curve" ] = [ "linear" ];
    var_9fd84ef1 = [];
    var_9fd84ef1[ #"speed" ] = [ 0, 6 ];
    var_9fd84ef1[ #"scale" ] = [ 0.1, 1 ];
    var_9fd84ef1[ #"curve" ] = [ "xfade" ];
    var_de483b4c = snd::speed( truck, "veh_jeep_engine_lp", var_4c5ca2df, var_9fd84ef1 );
    snd::function_f4f3a2a( var_de483b4c, truck );
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 0, eflags: 0x4
// Checksum 0x9530f58e, Offset: 0xf28
// Size: 0x1bc
function private function_4ada6bd4()
{
    truck = self;
    var_4c5ca2df = [];
    var_4c5ca2df[ #"speed" ] = [ 0, 18 ];
    var_4c5ca2df[ #"scale" ] = [ snd::function_d8b24901( -12 ), snd::function_d8b24901( 12 ) ];
    var_4c5ca2df[ #"curve" ] = [ "linear" ];
    var_9fd84ef1 = [];
    var_9fd84ef1[ #"speed" ] = [ 0, 6 ];
    var_9fd84ef1[ #"scale" ] = [ 0.1, 1 ];
    var_9fd84ef1[ #"curve" ] = [ "xfade" ];
    var_de483b4c = snd::speed( truck, "veh_jeep_engine_lp", var_4c5ca2df, var_9fd84ef1 );
    snd::function_f4f3a2a( var_de483b4c, truck );
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 0, eflags: 0x4
// Checksum 0xf90bd7b2, Offset: 0x10f0
// Size: 0xf0
function private missile()
{
    missile = self;
    var_52b4db4 = missile.origin;
    snd::play( "evt_intro_missile_launch", var_52b4db4 );
    var_54b85925 = snd::play( "evt_intro_missile_incoming", missile );
    
    while ( isdefined( missile ) )
    {
        var_52b4db4 = missile.origin;
        waitframe( 1 );
    }
    
    snd::play( "evt_intro_missile_explo", var_52b4db4 );
    snd::stop( var_54b85925, 0.05 );
    var_54b85925 = undefined;
    thread function_727d6e9c();
    wait 2;
    level notify( #"hash_d0fb1042d2d6aa" );
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 0, eflags: 0x0
// Checksum 0x6eeb5948, Offset: 0x11e8
// Size: 0x34
function function_641ef2a8()
{
    wait 6;
    snd::play( "evt_intro_trucks_activity", ( -1462, -165, 1226 ) );
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 0, eflags: 0x0
// Checksum 0x347a24f7, Offset: 0x1228
// Size: 0x44
function function_727d6e9c()
{
    snd::play( "evt_intro_trucks_alert", ( -1462, -165, 1226 ) );
    wait 5;
    thread function_bca722a8();
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 0, eflags: 0x0
// Checksum 0x1b0f74fa, Offset: 0x1278
// Size: 0x11c
function function_bca722a8()
{
    if ( is_true( level.var_5f1169fc ) )
    {
        return;
    }
    
    level.var_5f1169fc = 1;
    snd::play( "evt_base_alarm", ( 1000, 1547, 655 ) );
    snd::play( "evt_base_alarm", ( -2261, -852, 596 ) );
    snd::play( "evt_base_alarm", ( -2093, -5125, 601 ) );
    snd::play( "evt_intro_battle_walla_lp", ( 1080, 1736, 592 ) );
    snd::play( "evt_sm_tundra_battle_walla_lp", ( -2261, -852, 596 ) );
    snd::play( "evt_sm_tundra_battle_walla_lp", ( -2093, -5125, 601 ) );
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 0, eflags: 0x0
// Checksum 0xa6f99ab1, Offset: 0x13a0
// Size: 0xee
function alarms()
{
    if ( is_true( level.snd_alarms ) )
    {
        return;
    }
    
    level.snd_alarms = 1;
    level waittill( #"hash_d0fb1042d2d6aa" );
    var_5b06b09f = [ ( 866, 2568, 576 ), ( -891, 3078, 663 ), ( -2877, 3617, 510 ), ( -2038, -817, 280 ), ( 49, -3951, 432 ) ];
    var_d047eec7 = snd::play( "evt_building_alarm", var_5b06b09f );
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 0, eflags: 0x0
// Checksum 0xfa5090e5, Offset: 0x1498
// Size: 0x5c
function function_ac9af666()
{
    if ( is_true( level.var_e4af65d2 ) )
    {
        return;
    }
    
    level.var_e4af65d2 = 1;
    function_5ea2c6e3( "cp_sm_tundra_combat", 1, 1 );
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 0, eflags: 0x0
// Checksum 0x4a589f34, Offset: 0x1500
// Size: 0x54
function function_58c7f87f()
{
    if ( is_true( level.var_c6ed3d2f ) )
    {
        return;
    }
    
    level.var_c6ed3d2f = 1;
    function_ed62c9c2( "cp_sm_tundra_combat", 1 );
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 0, eflags: 0x0
// Checksum 0x2f477624, Offset: 0x1560
// Size: 0x7c
function function_1477a4b9()
{
    wait 1;
    function_5ea2c6e3( "cp_sm_tundra_evac_chopper", 2.5 );
    snd::play( "evt_evac_chopper_cockpit_lp" );
    snd::play( "evt_evac_chopper_board" );
    wait 2.5;
    snd::play( "evt_evac_chopper_cockpit_walla" );
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 0, eflags: 0x0
// Checksum 0x6fe22b47, Offset: 0x15e8
// Size: 0x24
function function_f9003ea1()
{
    function_5ea2c6e3( "cp_sm_tundra_outro_fadeout", 5 );
}

