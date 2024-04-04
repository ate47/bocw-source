// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_ping.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace namespace_3bb7295f;

// Namespace namespace_3bb7295f/namespace_3bb7295f
// Params 0, eflags: 0x5
// Checksum 0x443bbfea, Offset: 0xb8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_4e2289c68f35238d", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_3bb7295f/namespace_3bb7295f
// Params 0, eflags: 0x6 linked
// Checksum 0x841d7cf3, Offset: 0x100
// Size: 0x6c
function private preinit() {
    zm_ping::function_5ae4a10c(array(#"p8_wz_snowball_pile", #"p8_wz_snowball_pile_sml"), "snowball_pile", #"hash_34daeba184b6d103", undefined, #"ui_icon_inventory_snowball");
}

