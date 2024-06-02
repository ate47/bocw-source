// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\dogtags.csc;
#using scripts\core_common\util_shared.csc;

#namespace conf;

// Namespace conf/gametype_init
// Params 1, eflags: 0x20
// Checksum 0xed613c05, Offset: 0x90
// Size: 0x1c
function event_handler[gametype_init] main(*eventstruct) {
    dogtags::init();
}

