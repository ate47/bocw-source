// Atian COD Tools GSC CW decompiler test
#using script_2a5bf5b4a00cee0d;
#using script_164a456ce05c3483;
#using script_47851dbeea22fe66;
#using script_1ee011cd0961afd7;
#using script_5f20d3b434d24884;
#using script_774302f762d76254;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_17dcb1172e441bf6;
#using scripts\core_common\vehicles\raps.gsc;
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

#namespace namespace_a0fa2b5;

// Namespace namespace_a0fa2b5/namespace_a0fa2b5
// Params 0, eflags: 0x2 linked
// Checksum 0x420cbd58, Offset: 0x328
// Size: 0xb4
function init() {
    namespace_250e9486::function_252dff4d("meatball_large", 9, &function_d240d5de, &function_41157a40, 41);
    namespace_250e9486::function_252dff4d("meatball_medium", 10, &function_d240d5de, &function_41157a40);
    namespace_250e9486::function_252dff4d("meatball_small", 11, &function_d240d5de, &function_41157a40);
}

// Namespace namespace_a0fa2b5/namespace_a0fa2b5
// Params 1, eflags: 0x2 linked
// Checksum 0xd4f28da1, Offset: 0x3e8
// Size: 0x3bc
function function_fd051611(*s_params) {
    if (level.var_8cff5775.var_358fbdc8 == 1) {
        return;
    }
    enemy = self.favoriteenemy;
    origin = self.origin;
    angles = self.angles;
    if (self.vehicletype == #"spawner_zombietron_veh_meatball") {
        self namespace_e32bb68::function_3a59ec34("zmb_doa_ai_meatball_lrg_death");
        if (!isdefined(level.var_8cff5775.var_e37e1100)) {
            level.var_8cff5775.var_e37e1100 = namespace_ff8b8430::function_d7c5adee("meatball_medium");
        }
        def = level.var_8cff5775.var_e37e1100;
    } else if (self.vehicletype == #"spawner_zombietron_veh_meatball_med") {
        self namespace_e32bb68::function_3a59ec34("zmb_doa_ai_meatball_med_death");
        if (!isdefined(level.var_8cff5775.var_77c6357f)) {
            level.var_8cff5775.var_77c6357f = namespace_ff8b8430::function_d7c5adee("meatball_small");
        }
        def = level.var_8cff5775.var_77c6357f;
    } else {
        self namespace_e32bb68::function_3a59ec34("zmb_doa_ai_meatball_sml_death");
    }
    if (isdefined(def)) {
        invul = gettime() + 1000;
        var_3dcc592c = namespace_ff8b8430::function_db55a448(def, origin + vectorscale((0, 0, 1), 8), enemy);
        var_5001fd97 = namespace_ff8b8430::function_db55a448(def, origin + vectorscale((0, 0, 1), 32), enemy);
        if (isdefined(var_3dcc592c)) {
            var_3dcc592c.var_9cb9d79f = invul;
            var_3dcc592c namespace_83eb6304::function_3ecfde67("demon_burst");
            if (is_true(self.shieldhit) || is_true(self.var_6dc6e670)) {
                var_3dcc592c launchvehicle((randomintrange(-10, 10), randomintrange(-10, 10), randomintrange(75, 120)));
            }
        }
        if (isdefined(var_5001fd97)) {
            var_5001fd97.var_9cb9d79f = invul;
            var_5001fd97 namespace_83eb6304::function_3ecfde67("demon_burst");
            if (is_true(self.shieldhit) || is_true(self.var_6dc6e670)) {
                var_5001fd97 launchvehicle((randomintrange(-10, 10), randomintrange(-10, 10), randomintrange(75, 120)));
            }
        }
    }
}

// Namespace namespace_a0fa2b5/namespace_a0fa2b5
// Params 0, eflags: 0x2 linked
// Checksum 0xdc791232, Offset: 0x7b0
// Size: 0x4bc
function function_d240d5de() {
    self useanimtree("generic");
    self namespace_ec06fe4a::function_8c808737();
    self callback::function_d8abfc3d(#"on_vehicle_killed", &function_fd051611);
    namespace_250e9486::function_25b2c8a9();
    initblackboard();
    self.b_ignore_cleanup = 1;
    self.var_5dd07a80 = 1;
    self.var_232915af = 1;
    self.var_68139d12 = 1;
    self.nodamagefeedback = 1;
    self vehicle::friendly_fire_shield();
    self enableaimassist();
    self setneargoalnotifydist(60);
    self setdrawinfrared(1);
    self solid();
    self.fovcosine = 0;
    self.fovcosinebusy = 0;
    /#
        assert(isdefined(self.scriptbundlesettings));
    #/
    self.settings = getscriptbundle(self.scriptbundlesettings);
    self.goalradius = 512;
    self.goalheight = 100;
    self.var_ec0d66ce = 0.5 * (self.settings.engagementdistmin + self.settings.engagementdistmax);
    self.var_ff6d7c88 = function_a3f6cdac(self.var_ec0d66ce);
    self thread vehicle_ai::nudge_collision();
    self.health = 3000;
    self.maxhealth = 3000;
    self.var_f7f65924 = 5;
    self.damage_on_death = 0;
    target_set(self);
    var_64ae47e = "zmb_doa_ai_meatball_lrg_spawn";
    var_9c464736 = "zmb_doa_ai_meatball_lrg_lp";
    if (isdefined(self.script_noteworthy)) {
        switch (self.script_noteworthy) {
        case #"hash_290246ad6e24443":
            var_64ae47e = "zmb_doa_ai_meatball_lrg_spawn";
            var_9c464736 = "zmb_doa_ai_meatball_lrg_lp";
            self.var_8de8630 = function_a3f6cdac(50);
            break;
        case #"hash_308dd8f2a337f9fb":
            var_64ae47e = "zmb_doa_ai_meatball_med_spawn";
            var_9c464736 = "zmb_doa_ai_meatball_med_lp";
            self.var_8de8630 = function_a3f6cdac(40);
            break;
        case #"hash_26c9ae949e7b17bb":
            var_64ae47e = "zmb_doa_ai_meatball_sml_spawn";
            var_9c464736 = "zmb_doa_ai_meatball_sml_lp";
            self.var_8de8630 = function_a3f6cdac(30);
            break;
        }
    }
    self namespace_e32bb68::function_3a59ec34(var_64ae47e);
    self namespace_e32bb68::function_3a59ec34(var_9c464736);
    self thread function_5212ce3();
    if (isdefined(level.var_8cff5775.var_a598a835)) {
        self.spawnloc = [[ level.var_8cff5775.var_a598a835 ]]();
    }
    if (namespace_4dae815d::function_59a9cf1d() != 5) {
        if (self.vehicletype == #"spawner_zombietron_veh_meatball") {
            self thread namespace_250e9486::function_e10af211(isdefined(self.spawnloc) ? self.spawnloc.origin : undefined, "gem_trail_red", undefined, 1, 1);
        }
        self thread namespace_ec06fe4a::function_570729f0(60);
    }
    if (namespace_4dae815d::function_59a9cf1d() == 5) {
        /#
            self thread function_839fc28e();
        #/
    }
}

// Namespace namespace_a0fa2b5/namespace_a0fa2b5
// Params 0, eflags: 0x2 linked
// Checksum 0x2ae975a, Offset: 0xc78
// Size: 0xc8
function function_5212ce3() {
    self notify("13067ef87ae5514e");
    self endon("13067ef87ae5514e");
    self endon(#"death");
    while (1) {
        if (isdefined(self.favoriteenemy)) {
            distsq = distancesquared(self.origin, self.favoriteenemy.origin);
            if (distsq <= self.var_8de8630) {
                self.favoriteenemy dodamage(25, self.origin, self, undefined, "MOD_IMPACT");
            }
        }
        wait(0.5);
    }
}

// Namespace namespace_a0fa2b5/namespace_a0fa2b5
// Params 0, eflags: 0x0
// Checksum 0xc868920e, Offset: 0xd48
// Size: 0x66
function function_839fc28e() {
    /#
        self endon(#"death");
        while (1) {
            line(self.origin, self.origin + vectorscale((0, 0, 1), 1000), (1, 0, 0), 1, 0, 1);
            waitframe(1);
        }
    #/
}

// Namespace namespace_a0fa2b5/namespace_a0fa2b5
// Params 0, eflags: 0x2 linked
// Checksum 0x60e55e48, Offset: 0xdb8
// Size: 0x6c
function function_41157a40() {
    self endon(#"death");
    self thread updatetarget();
    while (!self.var_c0bd8c06) {
        wait(1);
        namespace_250e9486::function_c1f37cab();
    }
    self thread namespace_ec06fe4a::function_570729f0(0.1);
}

// Namespace namespace_a0fa2b5/namespace_a0fa2b5
// Params 0, eflags: 0x6 linked
// Checksum 0xaa14607d, Offset: 0xe30
// Size: 0x54
function private initblackboard() {
    self.__blackboard = undefined;
    blackboard::createblackboardforentity(self);
    self blackboard::registervehicleblackboardattributes();
    ai::createinterfaceforentity(self);
}

// Namespace namespace_a0fa2b5/namespace_a0fa2b5
// Params 0, eflags: 0x6 linked
// Checksum 0xc34a985e, Offset: 0xe90
// Size: 0x70
function private updatetarget() {
    self endon(#"death");
    while (1) {
        if (is_true(self.ignoreall)) {
            wait(0.5);
            continue;
        }
        self namespace_250e9486::function_4b49bf0d();
        wait(0.5);
    }
}
