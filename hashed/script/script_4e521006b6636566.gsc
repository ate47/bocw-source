// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_stats.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_c46118a7;

// Namespace namespace_c46118a7/namespace_c46118a7
// Params 0, eflags: 0x5
// Checksum 0x3d2ca517, Offset: 0xa8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_125fc0c0065c7dea", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_c46118a7/namespace_c46118a7
// Params 0, eflags: 0x4
// Checksum 0x934150d5, Offset: 0xf0
// Size: 0x6c
function private preinit() {
    if (util::get_game_type() === #"hash_125fc0c0065c7dea") {
        callback::add_callback(#"hash_5118a91e667446ee", &function_9e216600);
        level.var_e35c191f = 1;
    }
}

// Namespace namespace_c46118a7/namespace_c46118a7
// Params 0, eflags: 0x0
// Checksum 0xaac48b0f, Offset: 0x168
// Size: 0xc0
function function_9e216600() {
    if (getdvarint(#"hash_3ec3a7252086be23", 0)) {
        foreach (player in getplayers()) {
            player zm_stats::increment_challenge_stat(#"hash_7aecddb420d2f602");
        }
    }
}

