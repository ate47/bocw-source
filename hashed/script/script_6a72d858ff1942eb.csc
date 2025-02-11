#using script_2b1dbe0f618068f7;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\system_shared;

#namespace namespace_234f0efc;

// Namespace namespace_234f0efc/namespace_234f0efc
// Params 0, eflags: 0x5
// Checksum 0xe95d20ce, Offset: 0xc8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_296b16535a22f50f", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_234f0efc/namespace_234f0efc
// Params 0, eflags: 0x4
// Checksum 0x49f8c18f, Offset: 0x110
// Size: 0x54
function private preinit() {
    clientfield::register_clientuimodel("hudItems.radiationVestHealth", #"hud_items", #"hash_347090a9ef988900", 1, 5, "float", undefined, 0, 0);
}

// Namespace namespace_234f0efc/namespace_234f0efc
// Params 0, eflags: 0x0
// Checksum 0x9247db27, Offset: 0x170
// Size: 0x50
function function_d1aaf7a4() {
    assert(isplayer(self));
    return self clientfield::get_player_uimodel("hudItems.radiationVestHealth") == 1;
}

