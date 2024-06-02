// Atian COD Tools GSC CW decompiler test
#using script_309ce7f5a9a023de;

#namespace warzone_fixup;

// Namespace warzone_fixup/warzone_fixup
// Params 0, eflags: 0x1
// Checksum 0xf01dbba, Offset: 0x88
// Size: 0x114
function autoexec __init__() {
    waitframe(1);
    maxteamplayers = isdefined(getgametypesetting(#"maxteamplayers")) ? getgametypesetting(#"maxteamplayers") : 1;
    switch (maxteamplayers) {
    case 1:
        function_d0dc6619();
        break;
    case 2:
        function_f16631fc();
        break;
    case 4:
    default:
        function_91d1fd09();
        break;
    }
    function_c94723bd();
}

// Namespace warzone_fixup/warzone_fixup
// Params 0, eflags: 0x6 linked
// Checksum 0xa3d4c812, Offset: 0x1a8
// Size: 0xe4
function private function_c94723bd() {
    var_d1d7eefb = isdefined(getgametypesetting(#"hash_50b1121aee76a7e4")) ? getgametypesetting(#"hash_50b1121aee76a7e4") : 0;
    if (!var_d1d7eefb) {
        function_9b8d4d02();
    }
    if (!(isdefined(getgametypesetting(#"hash_1d02e28ba907a343")) ? getgametypesetting(#"hash_1d02e28ba907a343") : 0)) {
        item_world_fixup::remove_item(#"perk_item_bloody_tracker");
    }
}

// Namespace warzone_fixup/warzone_fixup
// Params 1, eflags: 0x6 linked
// Checksum 0x82c8405f, Offset: 0x298
// Size: 0xd0
function private function_9b8d4d02(*prematch) {
    var_3a1737b4 = getscriptbundles(#"itemspawnentry");
    foreach (var_1461de43, var_28f8f6a9 in var_3a1737b4) {
        if (var_28f8f6a9.itemtype == #"quest") {
            item_world_fixup::remove_item(var_1461de43);
        }
    }
}

// Namespace warzone_fixup/warzone_fixup
// Params 0, eflags: 0x6 linked
// Checksum 0x38d19a0e, Offset: 0x370
// Size: 0x24
function private function_d0dc6619() {
    item_world_fixup::remove_item(#"perk_item_squadlink");
}

// Namespace warzone_fixup/warzone_fixup
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x3a0
// Size: 0x4
function private function_f16631fc() {
    
}

// Namespace warzone_fixup/warzone_fixup
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x3b0
// Size: 0x4
function private function_91d1fd09() {
    
}

