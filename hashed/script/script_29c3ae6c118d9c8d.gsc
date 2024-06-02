// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\dogtags.csc;
#using script_78825cbb1ab9f493;
#using scripts\core_common\player\player_insertion.csc;

#namespace namespace_f2e23b4a;

// Namespace namespace_f2e23b4a/gametype_init
// Params 1, eflags: 0x20
// Checksum 0xa0b1f616, Offset: 0x98
// Size: 0x2c
function event_handler[gametype_init] main(*eventstruct) {
    namespace_17baa64d::init();
    dogtags::init();
}

