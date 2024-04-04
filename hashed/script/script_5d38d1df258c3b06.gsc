// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\player\player_stats.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace namespace_7c1d0bac;

// Namespace namespace_7c1d0bac/namespace_7c1d0bac
// Params 0, eflags: 0x5
// Checksum 0xce0fba31, Offset: 0x100
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_5fe7a854b630ef02", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_7c1d0bac/namespace_7c1d0bac
// Params 0, eflags: 0x6 linked
// Checksum 0xf4a5b64b, Offset: 0x148
// Size: 0x94
function private preinit() {
    clientfield::register("toplayer", "player_hit_freezing_snowball", 9000, 1, "int", undefined, 0, 0);
    clientfield::register("toplayer", "player_hit_snowball_direction", 9000, 4, "int", undefined, 0, 0);
    callback::on_localclient_connect(&on_localclient_connect);
}

// Namespace namespace_7c1d0bac/namespace_7c1d0bac
// Params 1, eflags: 0x2 linked
// Checksum 0x67487cd9, Offset: 0x1e8
// Size: 0x74
function on_localclient_connect(localclientnum) {
    if (isdefined(getgametypesetting(#"hash_7e8e34cc69a77e0b")) ? getgametypesetting(#"hash_7e8e34cc69a77e0b") : 0) {
        level thread function_b6992be(localclientnum);
    }
}

// Namespace namespace_7c1d0bac/namespace_7c1d0bac
// Params 1, eflags: 0x2 linked
// Checksum 0x981fe978, Offset: 0x268
// Size: 0x5dc
function function_b6992be(localclientnum) {
    var_d5823792 = 0;
    while (true) {
        local_player = function_5c10bd79(localclientnum);
        if (isdefined(local_player)) {
            var_965f0bef = local_player clientfield::get_to_player("player_hit_freezing_snowball");
            if (var_965f0bef === 1 && !var_d5823792) {
                var_d5823792 = 1;
                local_player thread postfx::playpostfxbundle(#"pstfx_wz_snowball_hit");
                waitframe(1);
                if (!isdefined(local_player)) {
                    return;
                }
                var_494e2f9b = local_player clientfield::get_to_player("player_hit_snowball_direction");
                switch (var_494e2f9b) {
                case 1:
                    local_player postfx::function_c8b5f318(#"pstfx_wz_snowball_hit", #"screen position x", 0);
                    local_player postfx::function_c8b5f318(#"pstfx_wz_snowball_hit", #"screen position y", 0);
                    break;
                case 2:
                    local_player postfx::function_c8b5f318(#"pstfx_wz_snowball_hit", #"screen position x", -1);
                    local_player postfx::function_c8b5f318(#"pstfx_wz_snowball_hit", #"screen position y", 0);
                    break;
                case 3:
                    local_player postfx::function_c8b5f318(#"pstfx_wz_snowball_hit", #"screen position x", 1);
                    local_player postfx::function_c8b5f318(#"pstfx_wz_snowball_hit", #"screen position y", 0);
                    break;
                case 4:
                    local_player postfx::function_c8b5f318(#"pstfx_wz_snowball_hit", #"screen position x", 0);
                    local_player postfx::function_c8b5f318(#"pstfx_wz_snowball_hit", #"screen position y", -1);
                    break;
                case 5:
                    local_player postfx::function_c8b5f318(#"pstfx_wz_snowball_hit", #"screen position x", 0);
                    local_player postfx::function_c8b5f318(#"pstfx_wz_snowball_hit", #"screen position y", 1);
                    break;
                case 6:
                    local_player postfx::function_c8b5f318(#"pstfx_wz_snowball_hit", #"screen position x", -1);
                    local_player postfx::function_c8b5f318(#"pstfx_wz_snowball_hit", #"screen position y", -1);
                    break;
                case 8:
                    local_player postfx::function_c8b5f318(#"pstfx_wz_snowball_hit", #"screen position x", 1);
                    local_player postfx::function_c8b5f318(#"pstfx_wz_snowball_hit", #"screen position y", -1);
                    break;
                case 9:
                    local_player postfx::function_c8b5f318(#"pstfx_wz_snowball_hit", #"screen position x", -1);
                    local_player postfx::function_c8b5f318(#"pstfx_wz_snowball_hit", #"screen position y", 1);
                    break;
                case 10:
                    local_player postfx::function_c8b5f318(#"pstfx_wz_snowball_hit", #"screen position x", 1);
                    local_player postfx::function_c8b5f318(#"pstfx_wz_snowball_hit", #"screen position y", 1);
                    break;
                }
            } else if (var_965f0bef === 0 && var_d5823792) {
                var_d5823792 = 0;
                if (local_player postfx::function_556665f2(#"pstfx_wz_snowball_hit")) {
                    local_player thread postfx::exitpostfxbundle(#"pstfx_wz_snowball_hit");
                }
            }
        } else {
            return;
        }
        waitframe(1);
    }
}

