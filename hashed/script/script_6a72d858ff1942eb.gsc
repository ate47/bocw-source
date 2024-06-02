// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using script_2b1dbe0f618068f7;

#namespace namespace_234f0efc;

// Namespace namespace_234f0efc/namespace_234f0efc
// Params 0, eflags: 0x5
// Checksum 0xe95d20ce, Offset: 0xc8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_296b16535a22f50f", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_234f0efc/namespace_234f0efc
// Params 0, eflags: 0x6 linked
// Checksum 0x49f8c18f, Offset: 0x110
// Size: 0x54
function private preinit() {
    clientfield::register_clientuimodel("hudItems.radiationVestHealth", #"hash_6f4b11a0bee9b73d", #"hash_347090a9ef988900", 1, 5, "float", undefined, 0, 0);
}

// Namespace namespace_234f0efc/namespace_234f0efc
// Params 0, eflags: 0x2 linked
// Checksum 0x9247db27, Offset: 0x170
// Size: 0x50
function function_d1aaf7a4() {
    assert(isplayer(self));
    return self clientfield::get_player_uimodel("hudItems.radiationVestHealth") == 1;
}

