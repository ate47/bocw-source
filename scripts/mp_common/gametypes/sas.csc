// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\struct.csc;

#namespace sas;

// Namespace sas/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x98363e64, Offset: 0x88
// Size: 0x54
function event_handler[gametype_init] main(*eventstruct) {
    level.var_207a1c9a = 1;
    if (getgametypesetting(#"hash_48670d9509071424")) {
        level.var_58253868 = #"hash_117d1cef613b8398";
    }
}

