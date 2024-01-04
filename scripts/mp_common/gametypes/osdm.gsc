// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\gametypes\dm.gsc;
#using scripts\mp_common\gametypes\os.gsc;
#using script_1cc417743d7c262d;

#namespace osdm;

// Namespace osdm/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x5adb89e0, Offset: 0xc0
// Size: 0x64
function event_handler[gametype_init] main(*eventstruct) {
    dm::main();
    os::turn_back_time("dm");
    globallogic_audio::set_leader_gametype_dialog("osStartFfa", "", "gameBoost", "gameBoost");
}

