#using scripts\core_common\globallogic\globallogic_audio;
#using scripts\mp_common\gametypes\os;
#using scripts\mp_common\gametypes\tdm;

#namespace ostdm;

// Namespace ostdm/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x34292b11, Offset: 0xc0
// Size: 0x64
function event_handler[gametype_init] main( *eventstruct )
{
    tdm::main();
    os::turn_back_time( "tdm" );
    globallogic_audio::set_leader_gametype_dialog( "osStartTdm", "", "gameBoost", "gameBoost" );
}

