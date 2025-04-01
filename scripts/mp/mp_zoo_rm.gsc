#using scripts\core_common\callbacks_shared;
#using scripts\core_common\challenges_shared;
#using scripts\core_common\compass;
#using scripts\core_common\flag_shared;
#using scripts\core_common\load_shared;
#using scripts\core_common\player\player_stats;
#using scripts\core_common\util_shared;

#namespace mp_zoo_rm;

// Namespace mp_zoo_rm/level_init
// Params 1, eflags: 0x20
// Checksum 0x73b0f0cb, Offset: 0x110
// Size: 0x6c
function event_handler[level_init] main( *eventstruct )
{
    callback::on_start_gametype( &start_gametype );
    load::main();
    compass::setupminimap( "" );
    level thread function_29584e41();
}

// Namespace mp_zoo_rm/mp_zoo_rm
// Params 0, eflags: 0x0
// Checksum 0x3584aff6, Offset: 0x188
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

// Namespace mp_zoo_rm/mp_zoo_rm
// Params 0, eflags: 0x0
// Checksum 0xf8e1f53b, Offset: 0x300
// Size: 0x44
function start_gametype()
{
    waittillframeend();
    
    if ( challenges::canprocesschallenges() )
    {
        challenges::registerchallengescallback( "gameEnd", &challengegameendmp );
    }
}

// Namespace mp_zoo_rm/mp_zoo_rm
// Params 1, eflags: 0x0
// Checksum 0x9796ab06, Offset: 0x350
// Size: 0x64
function challengegameendmp( data )
{
    if ( !isplayer( data.player ) )
    {
        return;
    }
    
    data.player stats::function_bcf9602( #"hash_5a970e436e734f6", 1, #"hash_6abe83944d701459" );
}

