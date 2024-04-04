// Atian COD Tools GSC CW decompiler test
#using script_193d6fcd3b319d05;
#using script_34e9dd62fc371077;
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

#namespace namespace_89fd9b3e;

// Namespace namespace_89fd9b3e/namespace_89fd9b3e
// Params 0, eflags: 0x5
// Checksum 0xb96a6957, Offset: 0x120
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_75aa82b3ae89f54e", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_89fd9b3e/namespace_89fd9b3e
// Params 0, eflags: 0x4
// Checksum 0xc61323a2, Offset: 0x168
// Size: 0x9c
function private preinit() {
    if (util::get_game_type() === #"hash_75aa82b3ae89f54e") {
        level.var_612d6a21 = 1;
        level.var_51514f45 = 0.25;
        level.var_e2fec446 = 0.25;
        level.var_12f3d2fc = 0.5;
        callback::add_callback(#"hash_7852c3cae4d4082a", &function_2d9abf0f);
    }
}

// Namespace namespace_89fd9b3e/namespace_89fd9b3e
// Params 0, eflags: 0x0
// Checksum 0xb085fa4c, Offset: 0x210
// Size: 0xc0
function function_2d9abf0f() {
    if (getdvarint(#"hash_505f9e51193386d9", 0)) {
        foreach (player in getplayers()) {
            player zm_stats::increment_challenge_stat(#"hash_3551fbb8f9272df6");
        }
    }
}

