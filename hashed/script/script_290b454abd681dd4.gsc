#using script_1b9f100b85b7e21d;
#using script_3dc93ca9902a9cda;
#using scripts\core_common\array_shared;
#using scripts\core_common\audio_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\music_shared;
#using scripts\core_common\struct;
#using scripts\core_common\util_shared;
#using scripts\cp_common\snd;
#using scripts\cp_common\snd_draw;
#using scripts\cp_common\snd_sp;
#using scripts\cp_common\snd_utility;

#namespace namespace_c1cfab6c;

// Namespace namespace_c1cfab6c/level_preinit
// Params 1, eflags: 0x24
// Checksum 0xa0a1b177, Offset: 0x2d8
// Size: 0x2c
function private event_handler[level_preinit] function_b489bb7b( *eventstruct )
{
    snd::function_5e69f468( &_objective );
}

// Namespace namespace_c1cfab6c/event_cc819519
// Params 1, eflags: 0x24
// Checksum 0x766a93e0, Offset: 0x310
// Size: 0x2c
function private event_handler[event_cc819519] function_686b88aa( *eventstruct )
{
    snd::wait_init();
    snd::waitforplayers();
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 1, eflags: 0x4
// Checksum 0x7612bc92, Offset: 0x348
// Size: 0x12a
function private _objective( objective )
{
    switch ( objective )
    {
        case #"tundra_intro":
            level thread intro();
            break;
        case #"tundra_combat":
            level thread function_eb09e7df();
            break;
        case #"dev_vip_active":
            level thread function_eb09e7df();
            break;
        case #"tundra_outro":
            level thread outro();
            break;
        case #"no_game":
            break;
        default:
            /#
                snd::function_81fac19d( snd::function_d78e3644(), "<dev string:x38>" + objective + "<dev string:x5b>" );
            #/
            
            break;
    }
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 1, eflags: 0x0
// Checksum 0xa277ea08, Offset: 0x480
// Size: 0x1d4
function music( var_b12adf3 )
{
    level.var_825fa088 = [];
    level.var_825fa088[ #"intro" ] = "1_0_intro";
    level.var_825fa088[ #"infiltrate" ] = "2_0_infiltrate";
    level.var_825fa088[ #"inside" ] = "3_0_inside";
    level.var_825fa088[ #"last_building" ] = "4_0_last_building";
    level.var_825fa088[ #"chase" ] = "5_0_chase";
    level.var_825fa088[ #"breach" ] = "6_0_breach";
    level.var_825fa088[ #"kill_confirmed" ] = "7_0_kill_confirmed";
    level.var_825fa088[ #"defend" ] = "8_0_defend";
    level.var_825fa088[ #"exfil" ] = "9_0_exfil";
    
    if ( var_b12adf3 == "combat" || var_b12adf3 == "search" )
    {
        var_b12adf3 = function_95410ce0();
    }
    
    state = level.var_825fa088[ var_b12adf3 ];
    
    if ( !isdefined( var_b12adf3 ) || !isdefined( state ) )
    {
        state = "";
    }
    
    snd::waitforplayers();
    music::setmusicstate( state );
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 0, eflags: 0x0
// Checksum 0x5d2eeb7a, Offset: 0x660
// Size: 0xda
function function_53e12236()
{
    clear_flags = [ "search_objective_1_cleared", "search_objective_2_cleared", "search_objective_3_cleared" ];
    var_a2cb6282 = 0;
    
    foreach ( clear in clear_flags )
    {
        if ( flag::get( clear ) )
        {
            var_a2cb6282++;
        }
    }
    
    return var_a2cb6282;
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 0, eflags: 0x0
// Checksum 0x89c61a3e, Offset: 0x748
// Size: 0x84
function function_95410ce0()
{
    combat_music = [ "infiltrate", "inside", "last_building", "chase" ];
    var_d885a2f8 = function_53e12236();
    var_b12adf3 = combat_music[ var_d885a2f8 ];
    return var_b12adf3;
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 0, eflags: 0x0
// Checksum 0xad6f528, Offset: 0x7d8
// Size: 0xd0
function function_eb09e7df()
{
    level notify( #"hash_891ea93a03b3ed7" );
    level endon( #"hash_891ea93a03b3ed7" );
    cleared = -1;
    
    while ( cleared < 3 )
    {
        var_6fd94a1c = function_53e12236();
        
        if ( cleared != var_6fd94a1c )
        {
            cleared = var_6fd94a1c;
            wait 3;
            var_b12adf3 = function_95410ce0();
            music( var_b12adf3 );
            
            if ( cleared >= 3 )
            {
                break;
            }
        }
        
        waitframe( 1 );
    }
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 0, eflags: 0x0
// Checksum 0xab16c294, Offset: 0x8b0
// Size: 0xbc
function intro()
{
    music( "intro" );
    missile = getent( "tundra_intro_missile", "targetname" );
    level waittill( #"hash_227caa557c6d6e99" );
    
    if ( isdefined( missile ) )
    {
        snd::client_targetname( missile, "missile" );
    }
    
    level waittill( #"hash_75e302a823ba736d" );
    wait 0.5;
    level thread function_eb09e7df();
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 0, eflags: 0x0
// Checksum 0x225c641f, Offset: 0x978
// Size: 0xbc
function breach()
{
    level waittill( #"hash_30f8c0265810bdb1" );
    snd::play( "evt_door_kick_plr" );
    wait 0.1;
    music( "breach" );
    assert( isdefined( level.vip ), "<dev string:x60>" );
    level.vip waittill( #"death" );
    wait 1;
    music( "kill_confirmed" );
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 0, eflags: 0x0
// Checksum 0xda136906, Offset: 0xa40
// Size: 0x34
function function_875ba096()
{
    level waittill( #"hash_6daf71d27b25e000" );
    level waittill( #"hash_4329d565ec8d390e" );
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 0, eflags: 0x0
// Checksum 0xf69c223e, Offset: 0xa80
// Size: 0x24
function function_ac85ea08()
{
    thread function_a089d999();
    thread function_241c95b4();
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 0, eflags: 0x0
// Checksum 0xf5543879, Offset: 0xab0
// Size: 0x36
function function_a089d999()
{
    wait 25;
    var_4687b77a = snd::play( "veh_evac_chopper_fake_dist_lp", level.var_7d23cf81 );
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 0, eflags: 0x0
// Checksum 0xa4ae8c88, Offset: 0xaf0
// Size: 0x74
function function_241c95b4()
{
    level waittill( #"hash_2f4020343cecc6f0" );
    thread function_c0f7776d();
    var_ec619483 = snd::play( "veh_evac_chopper_jetwhine_lp", level.vehicle_evac_heli );
    snd::function_f4f3a2a( var_ec619483, level.vehicle_evac_heli );
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 0, eflags: 0x0
// Checksum 0x4b6c3f6e, Offset: 0xb70
// Size: 0x3c
function function_c0f7776d()
{
    level waittill( #"evac_helicopter_board_trigger" );
    snd::client_msg( #"hash_5c7e1a43ba45c2b4" );
}

// Namespace namespace_c1cfab6c/namespace_c1cfab6c
// Params 0, eflags: 0x0
// Checksum 0x84112670, Offset: 0xbb8
// Size: 0x5c
function outro()
{
    wait 2;
    music( "defend" );
    level waittill( #"evac_helicopter_board_trigger" );
    wait 1;
    music( "exfil" );
}

