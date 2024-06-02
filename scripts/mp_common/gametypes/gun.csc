// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\audio_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\util_shared.csc;

#namespace gun;

// Namespace gun/gun
// Params 0, eflags: 0x1
// Checksum 0xc0505651, Offset: 0xb0
// Size: 0x4c
function autoexec ignore_systems() {
    if (util::get_game_type() === #"hash_451623a99cfee5d9") {
        system::ignore(#"killstreaks");
    }
}

// Namespace gun/gametype_init
// Params 1, eflags: 0x20
// Checksum 0xa5ebfa9e, Offset: 0x108
// Size: 0x184
function event_handler[gametype_init] main(*eventstruct) {
    level.isgungame = 1;
    setdvar(#"hash_137c8b2b96ac6c72", 0.2);
    setdvar(#"compassradarpingfadetime", 0.75);
    if (util::get_game_type() === #"hash_451623a99cfee5d9") {
        function_11e3e877(#"hash_23815f34187640d9", #"hash_8d0717b4d7850b6");
        function_11e3e877(#"hash_6be5853fe57d01b0", #"hash_8d0717b4d7850b6");
        function_11e3e877(#"hash_6251d9bc015e4542", #"hash_8d0717b4d7850b6");
        function_11e3e877(#"hash_6a2ccf46147cb7d8", #"hash_8d0717b4d7850b6");
        level.var_87c6c648 = 1;
        setsoundcontext("ltm", "gungame");
    }
}

