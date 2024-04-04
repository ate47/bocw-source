// Atian COD Tools GSC CW decompiler test
#using script_45af62df1bb6015d;
#using script_c22b8fa254e64a0;
#using scripts\weapons\spike_charge.csc;
#using scripts\weapons\cp\weaponobjects.csc;
#using scripts\cp_common\skipto.csc;
#using scripts\cp_common\rotating_object.csc;
#using scripts\cp_common\oed.csc;
#using scripts\cp_common\hazard.csc;
#using scripts\cp_common\global_fx.csc;
#using scripts\cp_common\ambient.csc;
#using scripts\core_common\vehicles\driving_fx.csc;
#using scripts\core_common\vehicle_shared.csc;
#using scripts\core_common\footsteps_shared.csc;
#using scripts\core_common\clientfaceanim_shared.csc;
#using scripts\core_common\audio_shared.csc;
#using script_31a4e84bd38b34e2;
#using scripts\core_common\status_effects\status_effects.csc;
#using scripts\weapons\antipersonnelguidance.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\traps_deployable.csc;
#using scripts\core_common\turret_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\scene_shared.csc;
#using script_1d4ca739cb476f50;
#using scripts\core_common\load_shared.csc;
#using scripts\core_common\helicopter_sounds_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace load;

// Namespace load/load
// Params 3, eflags: 0x2 linked
// Checksum 0xf5843fa7, Offset: 0x180
// Size: 0x4e
function levelnotifyhandler(clientnum, state, *oldstate) {
    if (oldstate != "") {
        level notify(oldstate, {#localclientnum:state});
    }
}

// Namespace load/load
// Params 0, eflags: 0x1
// Checksum 0xce9781c3, Offset: 0x1d8
// Size: 0x3c
function autoexec function_aeb1baea() {
    assert(!isdefined(level.var_f18a6bd6));
    level.var_f18a6bd6 = &function_5e443ed1;
}

// Namespace load/load
// Params 0, eflags: 0x2 linked
// Checksum 0xe8c3dc02, Offset: 0x220
// Size: 0x174
function function_5e443ed1() {
    assert(isdefined(level.first_frame), "<unknown string>");
    if (is_true(level._loadstarted)) {
        return;
    }
    level._loadstarted = 1;
    level thread util::init_utility();
    level thread register_clientfields();
    util::registersystem("levelNotify", &levelnotifyhandler);
    level.createfx_disable_fx = getdvarint(#"disable_fx", 0) == 1;
    callback::add_callback(#"on_localclient_connect", &basic_player_connect);
    callback::on_spawned(&on_player_spawned);
    system::function_c11b0642();
    art_review();
    level flag::set(#"load_main_complete");
}

// Namespace load/load
// Params 1, eflags: 0x2 linked
// Checksum 0xcfdacf2e, Offset: 0x3a0
// Size: 0x2c
function basic_player_connect(localclientnum) {
    forcegamemodemappings(localclientnum, "default");
}

// Namespace load/load
// Params 1, eflags: 0x2 linked
// Checksum 0xea359673, Offset: 0x3d8
// Size: 0x7c
function on_player_spawned(localclientnum) {
    level flag::set(#"hash_31f7d14ea61c9b88");
    level flag::clear(#"hash_31f7d14ea61c9b88");
    self thread force_update_player_clientfields(localclientnum);
    self function_b181fc06(localclientnum);
}

// Namespace load/load
// Params 1, eflags: 0x2 linked
// Checksum 0x52c24a9c, Offset: 0x460
// Size: 0x5c
function force_update_player_clientfields(localclientnum) {
    self endon(#"death");
    while (!clienthassnapshot(localclientnum)) {
        waitframe(1);
    }
    self processclientfieldsasifnew(1);
}

// Namespace load/load
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x4c8
// Size: 0x4
function register_clientfields() {
    
}

