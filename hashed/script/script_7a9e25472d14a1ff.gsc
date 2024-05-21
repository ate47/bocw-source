// Atian COD Tools GSC CW decompiler test
#using script_164a456ce05c3483;
#using script_47851dbeea22fe66;
#using script_1ee011cd0961afd7;
#using script_5f20d3b434d24884;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_2a5bf5b4a00cee0d;
#using script_17dcb1172e441bf6;
#using scripts\core_common\ai\systems\animation_state_machine_notetracks.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\ai\blackboard_vehicle.gsc;
#using scripts\core_common\vehicle_ai_shared.gsc;
#using scripts\core_common\vehicle_death_shared.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\statemachine_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\ai\systems\ai_interface.gsc;
#using scripts\core_common\ai\systems\ai_blackboard.gsc;
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\core_common\ai\systems\behavior_tree_utility.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace namespace_8c89a9e9;

// Namespace namespace_8c89a9e9/namespace_8c89a9e9
// Params 0, eflags: 0x2 linked
// Checksum 0x460fac2d, Offset: 0x278
// Size: 0x34
function init() {
    namespace_250e9486::function_252dff4d("ghost_zombie", 5, &function_5836955d, undefined, 25);
}

// Namespace namespace_8c89a9e9/namespace_8c89a9e9
// Params 0, eflags: 0x2 linked
// Checksum 0x6044e9d8, Offset: 0x2b8
// Size: 0x1ac
function function_5836955d() {
    namespace_250e9486::function_25b2c8a9();
    self.zombie_move_speed = "sprint";
    self.doa.var_74e4ded8 = 1;
    self setblackboardattribute("_locomotion_speed", "locomotion_speed_sprint");
    self.maxhealth = 100;
    self.health = self.maxhealth;
    self.animrate = 1.15;
    self asmsetanimationrate(self.animrate);
    self.var_e66cd6fb = 1;
    self.var_1c8b76d3 = 1;
    self.no_gib = 1;
    self.var_af545843 = 1;
    self.var_abe67a20 = 1;
    self.var_bbdaef90 = 1;
    self.var_5112b4b1 = 1;
    self setavoidancemask("avoid none");
    self collidewithactors(0);
    self setplayercollision(0);
    self.overrideactordamage = &function_b8c581fb;
    self thread function_d8e8920a();
    self namespace_e32bb68::function_3a59ec34("zmb_doa_ai_ghost_spawn");
    self namespace_e32bb68::function_3a59ec34("zmb_doa_ai_ghost_lp");
}

// Namespace namespace_8c89a9e9/namespace_8c89a9e9
// Params 13, eflags: 0x6 linked
// Checksum 0x4c2c2ecd, Offset: 0x470
// Size: 0x150
function private function_b8c581fb(*inflictor, *attacker, damage, *flags, *meansofdamage, *weapon, *var_fd90b0bb, *point, *dir, *hitloc, *offsettime, *boneindex, *modelindex) {
    if (modelindex >= self.health) {
        self.takedamage = 0;
        self namespace_ec06fe4a::function_8c808737();
        self notsolid();
        orb = namespace_ec06fe4a::spawnmodel(self.origin + (0, 0, 40));
        if (isdefined(orb)) {
            orb thread namespace_ec06fe4a::function_52afe5df(1);
            orb namespace_83eb6304::function_3ecfde67("electrical_explo");
            orb namespace_e32bb68::function_3a59ec34("zmb_doa_ai_ghost_explo");
        }
    }
    return modelindex;
}

// Namespace namespace_8c89a9e9/namespace_8c89a9e9
// Params 0, eflags: 0x2 linked
// Checksum 0x6cc123d9, Offset: 0x5c8
// Size: 0x2e2
function function_d8e8920a() {
    self endon(#"death");
    if (!isdefined(level.doa.var_39e3fa99)) {
        return;
    }
    wait(randomint(6) + 1);
    while (true) {
        wait(1);
        if (isdefined(self.enemy)) {
            var_6e3ad56b = self.enemy.origin;
            if (isplayer(self.enemy)) {
                velocity = self.enemy getvelocity();
                velocity = (velocity[0], velocity[1], 0);
                if (length(velocity) >= 0) {
                    var_6e3ad56b += vectorscale(velocity, 1.8);
                }
            }
            dest = getrandomnavpoint(var_6e3ad56b, 20, self getpathfindingradius());
            if (isdefined(dest)) {
                spot = dest;
            } else {
                continue;
            }
            self namespace_e32bb68::function_3a59ec34("zmb_doa_ai_ghost_warp_out");
            self namespace_83eb6304::function_3ecfde67("ethereal_vapors");
            self.ignoreall = 1;
            self setgoal(self.origin);
            angles = self.enemy.angles + (0, 180, 0);
            self clearenemy();
            self.takedamage = 0;
            self namespace_ec06fe4a::function_8c808737();
            self forceteleport(spot, angles);
            wait(0.3);
            self.takedamage = 1;
            self namespace_ec06fe4a::function_4f72130c();
            self namespace_83eb6304::function_3ecfde67("ethereal_vapors");
            self namespace_e32bb68::function_3a59ec34("zmb_doa_ai_ghost_warp_in");
            wait(0.5);
            self.ignoreall = 0;
            wait(1 + randomint(8));
        }
    }
}

