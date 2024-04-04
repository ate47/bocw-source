// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\throttle_shared.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\weapons\deployable.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\killstreaks\ultimate_turret_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using script_1cc417743d7c262d;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\battlechatter.gsc;

#namespace ultimate_turret;

// Namespace ultimate_turret/ultimate_turret
// Params 0, eflags: 0x5
// Checksum 0x6e9c99ef, Offset: 0x118
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"ultimate_turret", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace ultimate_turret/ultimate_turret
// Params 0, eflags: 0x6 linked
// Checksum 0xdadf6f7a, Offset: 0x168
// Size: 0x16c
function private preinit() {
    level.var_729a0937 = &function_4b645b3f;
    level.var_bbc796bf = &turret_destroyed;
    level.var_a3ec798a = &turretscanning;
    level.var_6f2028c7 = 0;
    level.var_11d9ab7c = new class_c6c0e94();
    [[ level.var_11d9ab7c ]]->initialize(#"ultimate_turret_zm", 1, float(function_60d95f53()) / 1000);
    init_shared();
    deployable::register_deployable(getweapon("ultimate_turret"), &function_53028023, undefined, #"mp/sentry_deploy", #"hash_37605398dce96965");
    callback::on_vehicle_spawned(&function_bf97d10);
    callback::on_deleted(&function_634677dd);
}

// Namespace ultimate_turret/ultimate_turret
// Params 0, eflags: 0x2 linked
// Checksum 0x398c238, Offset: 0x2e0
// Size: 0x54
function function_634677dd() {
    if (self.vehicletype === #"hash_d57fa1b1aacffc7") {
        level.var_6f2028c7--;
        level.var_6f2028c7 = math::clamp(level.var_6f2028c7, 0, 4);
    }
}

// Namespace ultimate_turret/ultimate_turret
// Params 1, eflags: 0x2 linked
// Checksum 0xa1091999, Offset: 0x340
// Size: 0x9c
function function_bf97d10(*params) {
    if (self.vehicletype === #"hash_d57fa1b1aacffc7") {
        self.var_4a64e878 = 1;
        val::set(#"ultimate_turret_zm", "takedamage", 0);
        level.var_6f2028c7++;
        level.var_6f2028c7 = math::clamp(level.var_6f2028c7, 0, 4);
    }
}

// Namespace ultimate_turret/ultimate_turret
// Params 1, eflags: 0x2 linked
// Checksum 0xf9d12146, Offset: 0x3e8
// Size: 0x2c
function function_4b645b3f(killstreaktype) {
    self globallogic_audio::play_taacom_dialog("timeout", killstreaktype);
}

// Namespace ultimate_turret/ultimate_turret
// Params 2, eflags: 0x2 linked
// Checksum 0x869e3056, Offset: 0x420
// Size: 0x66
function turret_destroyed(attacker, weapon) {
    profilestart();
    if (isdefined(attacker)) {
        attacker battlechatter::function_eebf94f6("ultimate_turret", weapon);
        attacker stats::function_e24eec31(weapon, #"hash_3f3d8a93c372c67d", 1);
    }
    profilestop();
}

// Namespace ultimate_turret/ultimate_turret
// Params 3, eflags: 0x2 linked
// Checksum 0x9595cda, Offset: 0x490
// Size: 0xa8
function function_53028023(v_origin, *v_angles, *player) {
    if (level.var_6f2028c7 < 4 && (!zm_utility::is_classic() || zm_utility::check_point_in_playable_area(player) && zm_utility::check_point_in_enabled_zone(player, 1)) && ispointonnavmesh(player)) {
        return true;
    }
    return false;
}

// Namespace ultimate_turret/ultimate_turret
// Params 0, eflags: 0x2 linked
// Checksum 0x97428d76, Offset: 0x540
// Size: 0x220
function turretscanning() {
    veh = self;
    veh endon(#"death", #"death_started", #"end_turret_scanning");
    wait(0.8);
    veh playsound(#"mpl_turret_startup");
    veh playloopsound(#"hash_69240c6db92da5bf");
    s_bundle = killstreaks::get_script_bundle("ultimate_turret");
    veh.maxsightdistsqrd = sqr(isdefined(s_bundle.var_2aeadfa0) ? s_bundle.var_2aeadfa0 : 3500);
    veh thread function_9d831b2f();
    while (true) {
        /#
            veh.maxsightdistsqrd = sqr(isdefined(s_bundle.var_2aeadfa0) ? s_bundle.var_2aeadfa0 : 3500);
        #/
        if (self.isjammed === 1 || self.isstunned === 1) {
            waitframe(1);
            continue;
        }
        if (is_valid_target(veh.e_current_target)) {
            function_16ccb771(veh.e_current_target);
        } else {
            function_d103a3d0();
        }
        aim_at_target(isdefined(veh.var_c27dadc8) ? veh.var_c27dadc8 : veh.e_current_target);
        self function_a76ab7f7();
    }
}

// Namespace ultimate_turret/ultimate_turret
// Params 0, eflags: 0x2 linked
// Checksum 0x4afc0448, Offset: 0x768
// Size: 0x1c
function function_a76ab7f7() {
    [[ level.var_11d9ab7c ]]->waitinqueue(self);
}

