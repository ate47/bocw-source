// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\item_world.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_33c196c8;

// Namespace namespace_33c196c8/namespace_33c196c8
// Params 0, eflags: 0x5
// Checksum 0x82ecc64b, Offset: 0x100
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_1555c697c02263a7", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_33c196c8/namespace_33c196c8
// Params 0, eflags: 0x6 linked
// Checksum 0x992def2b, Offset: 0x148
// Size: 0x74
function private preinit() {
    clientfield::register("scriptmover", "" + #"hash_547dd74a97b1fdba", 24000, 2, "int", &function_28f9f58c, 0, 0);
    level.var_75653eb2 = &function_288ebce4;
}

// Namespace namespace_33c196c8/namespace_33c196c8
// Params 2, eflags: 0x2 linked
// Checksum 0xfd0a76dd, Offset: 0x1c8
// Size: 0xb0
function function_288ebce4(localclientnum, itementry) {
    if (!(isdefined(itementry) && isdefined(itementry.weapon)) || !isdefined(localclientnum)) {
        return false;
    }
    data = item_world::function_a7e98a1a(localclientnum);
    tactical = data.inventory.items[13];
    if (tactical.itementry.name === #"hash_7ada82abc5dad90e") {
        return false;
    }
    return true;
}

// Namespace namespace_33c196c8/namespace_33c196c8
// Params 1, eflags: 0x6 linked
// Checksum 0xfd431e78, Offset: 0x280
// Size: 0x6c
function private function_133a8053(marker) {
    if (isdefined(marker.origin)) {
        viewpos = marker.origin;
        self function_116b95e5("pstfx_klaus_command_bundle", "Position 0", viewpos[0], viewpos[1], viewpos[2]);
    }
}

// Namespace namespace_33c196c8/namespace_33c196c8
// Params 1, eflags: 0x2 linked
// Checksum 0x2fbdeb4c, Offset: 0x2f8
// Size: 0xbe
function function_6a08eb03(localclientnum) {
    self notify("1eaded3e9f2b476c");
    self endon("1eaded3e9f2b476c");
    level endon(#"end_game");
    self endon(#"death", #"stop_update");
    while (true) {
        player = function_27673a7(localclientnum);
        if (isplayer(player)) {
            player function_133a8053(self);
        }
        waitframe(1);
    }
}

// Namespace namespace_33c196c8/namespace_33c196c8
// Params 7, eflags: 0x2 linked
// Checksum 0x235efd75, Offset: 0x3c0
// Size: 0x274
function function_28f9f58c(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    player = function_27673a7(fieldname);
    if (!isplayer(player)) {
        return;
    }
    if (bwastimejump > 0) {
        if (!player function_d2cb869e("pstfx_klaus_command_bundle")) {
            player codeplaypostfxbundle("pstfx_klaus_command_bundle");
            player postfx::function_c8b5f318("pstfx_klaus_command_bundle", #"hash_61d5689219a4985b", 16);
        }
        self thread function_6a08eb03(fieldname);
        switch (bwastimejump) {
        case 1:
            player postfx::function_c8b5f318("pstfx_klaus_command_bundle", #"hash_2717824cd4f6fc90", 4);
            break;
        case 2:
            player postfx::function_c8b5f318("pstfx_klaus_command_bundle", #"hash_2717824cd4f6fc90", 3);
            break;
        case 3:
            self notify(#"stop_update");
            player postfx::function_c8b5f318("pstfx_klaus_command_bundle", #"hash_2717824cd4f6fc90", 4);
            break;
        }
        return;
    }
    self notify(#"stop_update");
    if (player function_d2cb869e("pstfx_klaus_command_bundle")) {
        player postfx::function_c8b5f318("pstfx_klaus_command_bundle", #"hash_2717824cd4f6fc90", 0);
        player codestoppostfxbundle("pstfx_klaus_command_bundle");
    }
}

