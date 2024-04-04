// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_aoe.csc;
#using scripts\weapons\zm\weaponobjects.csc;
#using scripts\zm_common\zm_traps.csc;
#using scripts\zm_common\zm_score.csc;
#using scripts\zm_common\zm_magicbox.csc;
#using scripts\zm_common\zm_customgame.csc;
#using scripts\zm_common\zm_audio.csc;
#using scripts\zm_common\zm.csc;
#using scripts\zm_common\global_fx.csc;
#using scripts\zm_common\ambient.csc;
#using scripts\core_common\vehicles\driving_fx.csc;
#using script_26e61ae2e1d842a9;
#using script_727042a075af51b7;
#using scripts\core_common\item_supply_drop.csc;
#using script_6971dbf38c33bf47;
#using script_309ce7f5a9a023de;
#using scripts\core_common\item_world_cleanup.csc;
#using scripts\core_common\item_world.csc;
#using scripts\core_common\item_inventory.csc;
#using scripts\core_common\item_drop.csc;
#using script_644007a8c3885fc;
#using script_446b64250de153ef;
#using scripts\core_common\vehicle_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\turret_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\load_shared.csc;
#using scripts\core_common\footsteps_shared.csc;
#using scripts\core_common\fx_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\clientfaceanim_shared.csc;

#namespace load;

// Namespace load/load
// Params 0, eflags: 0x5
// Checksum 0x105e2130, Offset: 0x1b0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_5a13dbfcdb2f9b51", &function_aeb1baea, undefined, undefined, undefined);
}

// Namespace load/load
// Params 3, eflags: 0x2 linked
// Checksum 0x1e0158ed, Offset: 0x1f8
// Size: 0x3a
function levelnotifyhandler(clientnum, state, *oldstate) {
    if (oldstate != "") {
        level notify(oldstate, state);
    }
}

// Namespace load/load
// Params 2, eflags: 0x0
// Checksum 0x72eef915, Offset: 0x240
// Size: 0x14
function warnmissilelocking(*localclientnum, *set) {
    
}

// Namespace load/load
// Params 2, eflags: 0x0
// Checksum 0x7f0fbdc5, Offset: 0x260
// Size: 0x14
function warnmissilelocked(*localclientnum, *set) {
    
}

// Namespace load/load
// Params 2, eflags: 0x0
// Checksum 0x1fcfdbea, Offset: 0x280
// Size: 0x14
function warnmissilefired(*localclientnum, *set) {
    
}

// Namespace load/load
// Params 0, eflags: 0x2 linked
// Checksum 0xed3ab1bd, Offset: 0x2a0
// Size: 0x3c
function function_aeb1baea() {
    assert(!isdefined(level.var_f18a6bd6));
    level.var_f18a6bd6 = &function_5e443ed1;
}

// Namespace load/load
// Params 0, eflags: 0x2 linked
// Checksum 0x977bdf92, Offset: 0x2e8
// Size: 0x114
function function_5e443ed1() {
    assert(isdefined(level.first_frame), "<unknown string>");
    zm::init();
    level thread util::init_utility();
    util::register_system(#"levelnotify", &levelnotifyhandler);
    register_clientfields();
    level.createfx_disable_fx = getdvarint(#"disable_fx", 0) == 1;
    system::function_c11b0642();
    level thread art_review();
    level flag::set(#"load_main_complete");
}

// Namespace load/load
// Params 0, eflags: 0x2 linked
// Checksum 0x720566c6, Offset: 0x408
// Size: 0x4c
function register_clientfields() {
    clientfield::register("allplayers", "zmbLastStand", 1, 1, "int", &zm::laststand, 0, 1);
}

