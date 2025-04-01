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

#namespace namespace_61150688;

// Namespace namespace_61150688/level_preinit
// Params 1, eflags: 0x20
// Checksum 0xa25eadd2, Offset: 0x230
// Size: 0x8c
function event_handler[level_preinit] function_b489bb7b( *eventstruct )
{
    snd::function_d4ec748e( &function_f2a2832d );
    snd::function_ce78b33b( &function_32ab045 );
    snd::function_5e69f468( &_objective );
    snd::trigger_init( &_trigger );
}

// Namespace namespace_61150688/event_cc819519
// Params 1, eflags: 0x20
// Checksum 0x4d934986, Offset: 0x2c8
// Size: 0x3c
function event_handler[event_cc819519] function_686b88aa( *eventstruct )
{
    snd::wait_init();
    snd::waitforplayers();
    audio::function_21f8b7c3();
}

// Namespace namespace_61150688/namespace_fdf485e5
// Params 2, eflags: 0x4
// Checksum 0x48c10d73, Offset: 0x310
// Size: 0xca
function private function_32ab045( ent, name )
{
    switch ( name )
    {
        case #"woods":
            level.woods = ent;
            ent waittill( #"death" );
            level.woods = undefined;
            break;
        default:
            /#
                snd::function_81fac19d( snd::function_d78e3644(), "<dev string:x38>" + snd::function_783b69( name, "<dev string:x5d>" ) );
            #/
            
            break;
    }
}

// Namespace namespace_61150688/namespace_fdf485e5
// Params 3, eflags: 0x4
// Checksum 0x79d7183, Offset: 0x3e8
// Size: 0x172
function private _trigger( *player, trigger, *var_ec80d14b )
{
    trigger_name = snd::function_ea2f17d1( var_ec80d14b.script_ambientroom, "$default" );
    
    switch ( trigger_name )
    {
        case #"$default":
            break;
        case #"chopper_interior_open":
        case #"chopper_interior":
            break;
        case #"trailer_park":
            break;
        case #"gas_station":
        case #"hash_2f729a7b8a49915c":
        case #"hash_349b30c47da883f7":
            break;
        case #"hash_d51c18e8de6b968":
        case #"hash_de86bed30711149":
        case #"hash_31e3a6f7cf5f48ed":
        case #"hash_58c23e8563e35e75":
            break;
        default:
            /#
                snd::function_81fac19d( snd::function_d78e3644(), "<dev string:x62>" + trigger_name + "<dev string:x5d>" );
            #/
            
            break;
    }
}

// Namespace namespace_61150688/namespace_fdf485e5
// Params 2, eflags: 0x4
// Checksum 0x7f40c9dd, Offset: 0x568
// Size: 0x1da
function private function_f2a2832d( player, msg )
{
    switch ( msg )
    {
        case #"hash_37a62ab7a23cfc44":
            break;
        case #"hash_515c6d481df889cb":
            forceambientroom( "chopper_interior_open" );
            thread function_eb8c6b8e();
            break;
        case #"intro_trans_out":
            level notify( #"intro_trans_out" );
            forceambientroom( "" );
            break;
        case #"stop_camera_zoom":
            players = snd::function_da785aa8();
            player = players[ 0 ];
            
            if ( isdefined( player.var_1523fda0 ) )
            {
                snd::stop( player.var_1523fda0 );
            }
            
            break;
        case #"hash_5c7e1a43ba45c2b4":
            thread function_1477a4b9();
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

// Namespace namespace_61150688/namespace_fdf485e5
// Params 1, eflags: 0x4
// Checksum 0xfccd014f, Offset: 0x750
// Size: 0x1c2
function private _objective( objective )
{
    switch ( objective )
    {
        case #"tkdn_heli_intro":
            forceambientroom( "chopper_interior" );
            thread function_86127769();
            break;
        case #"tkdn_heli_convoy_aslt":
            function_ed62c9c2( "cp_sm_tkdn_heli_interior", 1 );
            thread function_cae705ff();
            break;
        case #"tkdn_heli_trailer_park":
            thread function_cae705ff();
            break;
        case #"tkdn_heli_hotel_parking_lot":
            thread function_cae705ff();
            break;
        case #"tkdn_heli_hotel_breach":
            thread function_cae705ff();
            break;
        case #"tkdn_heli_exfil":
            forceambientroom( "" );
            thread function_cae705ff();
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

// Namespace namespace_61150688/namespace_fdf485e5
// Params 0, eflags: 0x0
// Checksum 0xcd42402d, Offset: 0x920
// Size: 0x5c
function function_327abcaf()
{
    if ( is_true( level.var_a364c876 ) )
    {
        return;
    }
    
    level.var_a364c876 = 1;
    function_5ea2c6e3( "cp_sm_tkdn_intro_black", 0, 1 );
}

// Namespace namespace_61150688/namespace_fdf485e5
// Params 0, eflags: 0x0
// Checksum 0x30a534f1, Offset: 0x988
// Size: 0xac
function function_86127769()
{
    if ( is_true( level.var_b422391c ) )
    {
        return;
    }
    
    level.var_b422391c = 1;
    function_5ea2c6e3( "cp_sm_tkdn_intro_black", 0, 1 );
    wait 9;
    function_ed62c9c2( "cp_sm_tkdn_intro_black", 4 );
    function_5ea2c6e3( "cp_sm_tkdn_heli_interior", 4, 1 );
}

// Namespace namespace_61150688/namespace_fdf485e5
// Params 0, eflags: 0x0
// Checksum 0x4fe197ef, Offset: 0xa40
// Size: 0xac
function function_eb8c6b8e()
{
    if ( is_true( level.var_75676a02 ) )
    {
        return;
    }
    
    level.var_75676a02 = 1;
    function_5ea2c6e3( "cp_sm_tkdn_heli_int_mus_down", 0.1, 1 );
    wait 6;
    function_ed62c9c2( "cp_sm_tkdn_heli_int_mus_down", 2 );
    wait 20;
    function_ed62c9c2( "cp_sm_tkdn_heli_interior", 6.5 );
}

// Namespace namespace_61150688/namespace_fdf485e5
// Params 0, eflags: 0x0
// Checksum 0x11b1319f, Offset: 0xaf8
// Size: 0x5c
function function_cae705ff()
{
    if ( is_true( level.var_eabcd160 ) )
    {
        return;
    }
    
    level.var_eabcd160 = 1;
    function_5ea2c6e3( "cp_sm_tkdn_combat", 1, 1 );
}

// Namespace namespace_61150688/namespace_fdf485e5
// Params 0, eflags: 0x0
// Checksum 0xbd855fe3, Offset: 0xb60
// Size: 0x54
function function_85ebb65()
{
    if ( is_true( level.var_948dd971 ) )
    {
        return;
    }
    
    level.var_948dd971 = 1;
    function_ed62c9c2( "cp_sm_tkdn_combat", 1 );
}

// Namespace namespace_61150688/namespace_fdf485e5
// Params 0, eflags: 0x0
// Checksum 0xc59843a8, Offset: 0xbc0
// Size: 0xcc
function function_1477a4b9()
{
    wait 1;
    function_ed62c9c2( "cp_sm_tkdn_combat", 1 );
    snd::play( "evt_evac_chopper_cockpit_lp", 1 );
    snd::play( "veh_evac_chopper_jetwhine_lp", 1 );
    snd::play( "veh_evac_chopper_fake_dist_lp", 1 );
    function_5ea2c6e3( "cp_sm_tkdn_evac_chopper", 1, 1 );
    snd::play( "evt_evac_chopper_board" );
}

// Namespace namespace_61150688/namespace_fdf485e5
// Params 0, eflags: 0x0
// Checksum 0x58d88d78, Offset: 0xc98
// Size: 0x7c
function function_f9003ea1()
{
    if ( is_true( level.var_3565723c ) )
    {
        return;
    }
    
    level.var_3565723c = 1;
    wait 5;
    function_ed62c9c2( "cp_sm_tkdn_evac_chopper", 3.5 );
    function_5ea2c6e3( "cp_sm_tkdn_outro_fadeout", 3.5, 1 );
}

