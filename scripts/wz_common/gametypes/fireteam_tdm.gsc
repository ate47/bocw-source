// Atian COD Tools GSC CW decompiler test
#using script_b9a55edd207e4ca;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using script_335d0650ed05d36d;
#using scripts\core_common\death_circle.gsc;

#namespace fireteam_tdm;

// Namespace fireteam_tdm/fireteam_tdm
// Params 0, eflags: 0x5
// Checksum 0x8d4f2efc, Offset: 0xb8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_112a74f076cda31", &function_62730899, undefined, undefined, #"territory");
}

// Namespace fireteam_tdm/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x8da42481, Offset: 0x108
// Size: 0x44
function event_handler[gametype_init] main(*eventstruct) {
    namespace_2938acdc::init();
    spawning::addsupportedspawnpointtype("tdm");
    level.var_61d4f517 = 1;
}

// Namespace fireteam_tdm/fireteam_tdm
// Params 0, eflags: 0x4
// Checksum 0xefb9a796, Offset: 0x158
// Size: 0x74
function private function_62730899() {
    /#
        if (getdvarint(#"hash_2609d7ba41b379e3", 0)) {
            return;
        }
    #/
    if (isdefined(level.territory) && level.territory.name != "zoo") {
        namespace_2938acdc::function_4212369d();
    }
}

