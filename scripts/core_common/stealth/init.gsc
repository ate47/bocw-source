#using scripts\core_common\stealth\manager;
#using scripts\core_common\stealth\player;
#using scripts\core_common\stealth\threat_sight;
#using scripts\core_common\stealth\utility;

#namespace stealth_init;

// Namespace stealth_init/init
// Params 0, eflags: 0x0
// Checksum 0xba62617e, Offset: 0xa0
// Size: 0x14
function main()
{
    stealth_manager::function_f9682fd();
}

// Namespace stealth_init/init
// Params 3, eflags: 0x0
// Checksum 0x6c0d9d4d, Offset: 0xc0
// Size: 0x1b0
function set_stealth_mode( enabled, musichidden, musicspotted )
{
    if ( enabled )
    {
        if ( isdefined( musichidden ) && isdefined( musicspotted ) )
        {
            level thread namespace_979752dc::stealth_music( musichidden, musicspotted );
        }
        
        level thread stealth_threat_sight::threat_sight_set_enabled( 1 );
        
        foreach ( player in getplayers() )
        {
            player thread stealth_player::main();
        }
        
        setsaveddvar( #"hash_3e8c4724c1db5fe7", 0 );
    }
    else
    {
        level thread namespace_979752dc::stealth_music_stop();
        level thread stealth_threat_sight::threat_sight_set_enabled( 0 );
        setsaveddvar( #"hash_3e8c4724c1db5fe7", 1 );
    }
    
    if ( isdefined( level.stealth.fnsetstealthmode ) )
    {
        level thread [[ level.stealth.fnsetstealthmode ]]( enabled, musichidden, musicspotted );
    }
}

