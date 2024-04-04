// Atian COD Tools GSC CW decompiler test
#using script_193d6fcd3b319d05;
#using script_34e9dd62fc371077;
#using script_6196bd4e1ff26cc0;
#using scripts\zm_common\aats\zm_aat.gsc;
#using scripts\zm_common\objective_manager.gsc;
#using scripts\zm_common\zm_vo.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\core_common\values_shared.gsc;
#using script_340a2e805e35f7a2;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\item_drop.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_9be1ab53;

// Namespace namespace_9be1ab53/namespace_9be1ab53
// Params 0, eflags: 0x5
// Checksum 0x3f51e8aa, Offset: 0x128
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_5aa4949e75ab9d9c", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_9be1ab53/namespace_9be1ab53
// Params 0, eflags: 0x4
// Checksum 0x7408f29f, Offset: 0x170
// Size: 0x1a4
function private preinit() {
    if (util::get_game_type() === #"hash_5aa4949e75ab9d9c") {
        level.var_2d41db66 = 1;
        level.var_3d9229ee = 1000;
        level.var_f35ad8f3 = 250;
        if ((is_true(level.var_2d41db66) || util::get_game_type() === #"hash_5aa4949e75ab9d9c") && getdvarint(#"hash_d3df2c834aa1010", 1)) {
            level.var_aa36d14e = (level.var_3d9229ee - 1) / 75;
        } else {
            level.var_aa36d14e = (level.var_3d9229ee - level.var_f35ad8f3) / 60;
        }
        callback::add_callback(#"hash_5118a91e667446ee", &function_9e216600);
        callback::add_callback(#"hash_c41074e4c29158a", &function_504e44da);
        callback::add_callback(#"hash_75d9baf9eed8610b", &function_4e9f972a);
    }
}

// Namespace namespace_9be1ab53/namespace_9be1ab53
// Params 0, eflags: 0x0
// Checksum 0x9d05c0ca, Offset: 0x320
// Size: 0x2c
function function_4e9f972a() {
    wait(4);
    level flag::clear(#"hash_2c0ce601824acdf5");
}

// Namespace namespace_9be1ab53/namespace_9be1ab53
// Params 0, eflags: 0x0
// Checksum 0x3007c2a2, Offset: 0x358
// Size: 0x24
function function_504e44da() {
    level flag::set(#"hash_2c0ce601824acdf5");
}

// Namespace namespace_9be1ab53/namespace_9be1ab53
// Params 0, eflags: 0x0
// Checksum 0x83fd1d03, Offset: 0x388
// Size: 0xc0
function function_9e216600() {
    if (getdvarint(#"hash_6d9eda83aac99122", 0)) {
        foreach (player in getplayers()) {
            player zm_stats::increment_challenge_stat(#"hash_5a234b7c00ae1ae4");
        }
    }
}

