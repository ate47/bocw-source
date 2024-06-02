// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\load_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace namespace_3983f538;

// Namespace namespace_3983f538/namespace_3983f538
// Params 0, eflags: 0x1
// Checksum 0xe6109e7f, Offset: 0xc0
// Size: 0x8c
function autoexec main() {
    level endon(#"end_game");
    clientfield::register("world", "" + #"hash_2e92282adde859ff", 1, 1, "int", &function_7d6a713b, 0, 0);
    callback::on_spawned(&on_player_spawned);
}

// Namespace namespace_3983f538/namespace_3983f538
// Params 7, eflags: 0x0
// Checksum 0x6a6ab318, Offset: 0x158
// Size: 0xbc
function function_7d6a713b(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    if (wasdemojump) {
        function_be93487f(fieldname, 2, 1, 1, 0, 0);
        return;
    }
    function_be93487f(fieldname, 1, 1, 1, 0, 0);
}

// Namespace namespace_3983f538/namespace_3983f538
// Params 1, eflags: 0x0
// Checksum 0xeda1ea89, Offset: 0x220
// Size: 0x24
function on_player_spawned(localclientnum) {
    function_f58e42ae(localclientnum, 3);
}

