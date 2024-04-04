// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\systems\animation_state_machine_mocomp.gsc;
#using script_455b9cb22d561924;
#using script_774302f762d76254;
#using script_2a5bf5b4a00cee0d;
#using script_164a456ce05c3483;
#using script_47851dbeea22fe66;
#using script_1ee011cd0961afd7;
#using script_5f20d3b434d24884;
#using script_1b0b07ff57d1dde3;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_17dcb1172e441bf6;
#using script_3819e7a1427df6d2;
#using scripts\core_common\ai\archetype_locomotion_utility.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\oob.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\ai\systems\ai_interface.gsc;
#using scripts\core_common\ai\systems\ai_blackboard.gsc;
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\core_common\ai\systems\behavior_tree_utility.gsc;
#using scripts\core_common\ai\systems\behavior_state_machine.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_utility.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_notetracks.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace namespace_53a8fe5e;

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 0, eflags: 0x2 linked
// Checksum 0xa9cacee5, Offset: 0x470
// Size: 0xd4
function init() {
    clientfield::register("actor", "hellhound_fx", 1, 1, "int");
    namespace_250e9486::function_252dff4d("wolf_ghosthound", 19, &function_3ba58018, &function_df18852, 45);
    namespace_250e9486::function_252dff4d("wolf_hellhound", 20, &function_ebb53c52, &function_df18852, 65);
    registerbehaviorscriptfunctions();
    function_8c1ad7f9();
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 0, eflags: 0x2 linked
// Checksum 0xe482a028, Offset: 0x550
// Size: 0x31c
function registerbehaviorscriptfunctions() {
    assert(isscriptfunctionptr(&function_52fd1aa8));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_347361909496bb67", &function_52fd1aa8);
    assert(isscriptfunctionptr(&function_ee68dfca));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_589814e7ae852fb7", &function_ee68dfca);
    assert(isscriptfunctionptr(&function_86104a92));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_2c51dac6b31ae16e", &function_86104a92);
    assert(isscriptfunctionptr(&function_cf98d4f7));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_4d690a74a315c5c3", &function_cf98d4f7);
    assert(isscriptfunctionptr(&function_ad163d5a));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_4c13ee431006ea01", &function_ad163d5a);
    assert(!isdefined(&wolfmeleeaction) || isscriptfunctionptr(&wolfmeleeaction));
    assert(!isdefined(undefined) || isscriptfunctionptr(undefined));
    assert(!isdefined(&function_8d42c979) || isscriptfunctionptr(&function_8d42c979));
    behaviortreenetworkutility::registerbehaviortreeaction("wolfMeleeAction", &wolfmeleeaction, undefined, &function_8d42c979);
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 0, eflags: 0x2 linked
// Checksum 0x2edf9659, Offset: 0x878
// Size: 0xcc
function function_8c1ad7f9() {
    ai::registermatchedinterface(#"zombie_dog", #"min_run_dist", 500);
    ai::registermatchedinterface(#"zombie_dog", #"sprint", 0, array(1, 0));
    ai::registermatchedinterface(#"zombie_dog", #"patrol", 0, array(1, 0));
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 0, eflags: 0x2 linked
// Checksum 0xf36528a3, Offset: 0x950
// Size: 0xa6
function function_3ba58018() {
    function_ebb53c52();
    self.doa.var_74e4ded8 = 1;
    self setavoidancemask("avoid none");
    self collidewithactors(0);
    self setplayercollision(0);
    self.health = 1500;
    self.var_af545843 = 1;
    self.var_abe67a20 = 1;
    self.var_bbdaef90 = 1;
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 0, eflags: 0x2 linked
// Checksum 0x3a57c67b, Offset: 0xa00
// Size: 0x19c
function function_ebb53c52() {
    self namespace_250e9486::function_25b2c8a9();
    self namespace_ec06fe4a::function_8c808737();
    self.shouldrun = 0;
    self.var_3b227abd = randomintrange(10, 30) * 1000;
    if (namespace_4dae815d::function_59a9cf1d() != 0) {
        self.var_717a48cb = 0;
        self.var_f506c5cd = 1200;
        self.var_32d07c96 = sqr(self.var_f506c5cd);
        self.var_c8b974fe = self.origin;
    }
    self.var_cc28f8dc = 80;
    self.showdelay = 2;
    self.health = 4000;
    self.var_1c8b76d3 = 1;
    self.no_gib = 1;
    self.var_27860c49 = 1;
    self.var_96cd28f6 = 0;
    self thread function_92312127();
    self thread function_47c86b9e(self);
    self thread function_b8558f62();
    self enableaimassist();
    aiutility::addaioverridedamagecallback(self, &function_da4ec7ea);
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 13, eflags: 0x6 linked
// Checksum 0x4dcdc71e, Offset: 0xba8
// Size: 0x212
function private function_da4ec7ea(*inflictor, *attacker, damage, *idflags, *meansofdeath, *weapon, *var_fd90b0bb, *point, *dir, *hitloc, *offsettime, *boneindex, *modelindex) {
    if (modelindex >= self.health) {
        self namespace_e32bb68::function_ae271c0b("zmb_doa_ai_ghosthound_vocal_sprint");
        self namespace_e32bb68::function_ae271c0b("zmb_doa_ai_hellhound_vocal_sprint");
        self namespace_ec06fe4a::function_8c808737();
        self notsolid();
        orb = namespace_ec06fe4a::spawnmodel(self.origin);
        if (!isdefined(orb)) {
            return modelindex;
        }
        orb thread namespace_ec06fe4a::function_52afe5df(0.4);
        profilestart();
        if (self.script_noteworthy === "wolf_ghosthound") {
            orb namespace_83eb6304::function_3ecfde67("ghosthound_death");
            orb namespace_83eb6304::function_3ecfde67("electrical_explo");
            orb namespace_e32bb68::function_3a59ec34("zmb_doa_ai_ghosthound_explode");
        } else if (self.script_noteworthy === "wolf_hellhound") {
            orb namespace_e32bb68::function_3a59ec34("zmb_doa_ai_hellhound_explode");
            orb namespace_83eb6304::function_3ecfde67("hellhound_death");
        }
        profilestop();
    }
    return modelindex;
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 1, eflags: 0x0
// Checksum 0xd2409d2b, Offset: 0xdc8
// Size: 0xec
function function_b4b1df9c(*params) {
    self namespace_e32bb68::function_ae271c0b("zmb_doa_ai_plaguehound_vocal_sprint");
    self namespace_e32bb68::function_3a59ec34("zmb_doa_ai_plaguehound_explode");
    self namespace_83eb6304::function_3ecfde67("nova_crawler_burst");
    trigger = namespace_ec06fe4a::spawntrigger("trigger_radius", self.origin, 2 | 1 | 512, 40, 50);
    if (isdefined(trigger)) {
        trigger thread namespace_ec06fe4a::function_52afe5df(3);
        trigger thread function_86555fba();
    }
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 0, eflags: 0x2 linked
// Checksum 0xd66d338b, Offset: 0xec0
// Size: 0x48
function function_1c24aba3() {
    self endon(#"death");
    while (true) {
        self namespace_83eb6304::function_3ecfde67("nova_crawler_burst");
        wait(0.25);
    }
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 0, eflags: 0x2 linked
// Checksum 0x155991d9, Offset: 0xf10
// Size: 0x128
function function_86555fba() {
    self endon(#"death");
    org = namespace_ec06fe4a::spawnmodel(self.origin);
    if (isdefined(org)) {
        org thread namespace_ec06fe4a::function_d55f042c(self, "death");
        org thread function_1c24aba3();
    }
    while (true) {
        result = self waittill(#"trigger");
        if (isdefined(org)) {
            org namespace_83eb6304::function_3ecfde67("nova_crawler_burst");
        }
        if (isdefined(result.activator) && !is_true(result.activator.boss)) {
            result.activator thread namespace_250e9486::function_b5feb0bf();
        }
    }
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 0, eflags: 0x2 linked
// Checksum 0x98e7e023, Offset: 0x1040
// Size: 0xd6
function damagewatch() {
    self notify("54541a049aceddf6");
    self endon("54541a049aceddf6");
    self endon(#"death");
    result = self waittill(#"damage");
    if (isdefined(result.attacker) && issentient(result.attacker)) {
        self.favoriteenemy = result.attacker;
        self.hasseenfavoriteenemy = 1;
        self namespace_250e9486::function_41354e51(get_locomotion_target(self), 1);
        self.var_717a48cb = 0;
    }
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 0, eflags: 0x2 linked
// Checksum 0xb1c913ce, Offset: 0x1120
// Size: 0x128
function function_df18852() {
    self endon(#"death");
    self thread damagewatch();
    self thread function_a47b7e79(1);
    self function_56bb65ac("WALK");
    self.var_84f9cc2e = gettime() + 1000;
    var_30d02a4c = 0;
    while (true) {
        self namespace_250e9486::function_89c95270();
        while (self function_ad163d5a()) {
            wait(0.5);
        }
        self.shouldrun = need_to_run();
        self function_56bb65ac(self.shouldrun ? "RUN" : "WALK");
        wait(self.doa.thinkrate);
    }
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 1, eflags: 0x2 linked
// Checksum 0x2479c464, Offset: 0x1250
// Size: 0x200
function function_47c86b9e(ai) {
    ai endon(#"death");
    ai namespace_ec06fe4a::function_8c808737();
    ai.takedamage = 0;
    ai setfreecameralockonallowed(0);
    if (isdefined(ai.favoriteenemy)) {
        angle = vectortoangles(ai.favoriteenemy.origin - ai.origin);
        angles = (ai.angles[0], angle[1], ai.angles[2]);
    } else {
        angles = ai.angles;
    }
    ai dontinterpolate();
    ai forceteleport(ai.origin, angles);
    if (ai.script_noteworthy === "wolf_plaguehound") {
        ai namespace_83eb6304::function_3ecfde67("nova_crawler_burst");
    } else {
        ai namespace_83eb6304::function_3ecfde67("lightningStrike");
    }
    ai.takedamage = 1;
    wait(0.4);
    ai namespace_ec06fe4a::function_4f72130c();
    ai setfreecameralockonallowed(1);
    if (ai.script_noteworthy === "wolf_hellhound") {
        ai clientfield::set("hellhound_fx", 1);
    }
    ai notify(#"hash_6f1cd023691af538");
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 0, eflags: 0x2 linked
// Checksum 0x383c37e5, Offset: 0x1458
// Size: 0xec
function function_b8558f62() {
    if (self.script_noteworthy === "wolf_plaguehound") {
        self namespace_e32bb68::function_3a59ec34("zmb_doa_ai_plaguehound_spawn");
        self namespace_e32bb68::function_3a59ec34("zmb_doa_ai_plaguehound_vocal_sprint");
        return;
    }
    if (self.script_noteworthy === "wolf_hellhound") {
        self namespace_e32bb68::function_3a59ec34("zmb_doa_ai_hellhound_spawn");
        self namespace_e32bb68::function_3a59ec34("zmb_doa_ai_hellhound_vocal_sprint");
        return;
    }
    self namespace_e32bb68::function_3a59ec34("zmb_doa_ai_ghosthound_spawn");
    self namespace_e32bb68::function_3a59ec34("zmb_doa_ai_ghosthound_vocal_sprint");
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 0, eflags: 0x0
// Checksum 0x83067aa, Offset: 0x1550
// Size: 0x32c
function function_2e6b2ca9() {
    namespace_250e9486::function_4b49bf0d();
    force = 0;
    if (isdefined(self.favoriteenemy) && level.doa.world_state == 0) {
        force = 1;
        self.hasseenfavoriteenemy = 1;
        self thread function_a47b7e79(1);
    } else if (!is_true(self.hasseenfavoriteenemy) && isdefined(self.favoriteenemy)) {
        infov = self util::point_in_fov(self.favoriteenemy.origin, 0.8, 1);
        cansee = infov && self cansee(self.favoriteenemy);
        /#
            if (isdefined(self.favoriteenemy) && isplayer(self.favoriteenemy) && self.favoriteenemy isinmovemode("<unknown string>", "<unknown string>")) {
                cansee = 0;
            }
        #/
        if (cansee) {
            force = 1;
            self.hasseenfavoriteenemy = 1;
            self thread function_a47b7e79(1);
        }
    }
    if (isdefined(self.favoriteenemy) && is_true(self.hasseenfavoriteenemy)) {
        self namespace_250e9486::function_8f172270(get_locomotion_target(self));
        self.var_717a48cb = 0;
        return;
    }
    if (!is_true(self.hasseenfavoriteenemy)) {
        time = gettime();
        if (self.var_717a48cb < time) {
            var_86faa86d = doa_enemy::function_4b2f19cb();
            self.var_717a48cb = time + randomintrange(12000, 24000);
            if (isdefined(var_86faa86d)) {
                self namespace_250e9486::function_41354e51(var_86faa86d);
                self.lasttargetposition = var_86faa86d;
            }
            return;
        }
        goalinfo = self function_4794d6a3();
        if (is_true(goalinfo.isatgoal)) {
            function_a47b7e79(randomint(100) > 80);
        }
    }
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 1, eflags: 0x2 linked
// Checksum 0xa6f4e0a6, Offset: 0x1888
// Size: 0x32
function get_locomotion_target(behaviortreeentity) {
    if (!isdefined(behaviortreeentity.favoriteenemy)) {
        return undefined;
    }
    return behaviortreeentity namespace_250e9486::function_bd5a9fa6();
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 0, eflags: 0x2 linked
// Checksum 0x3ff0073f, Offset: 0x18c8
// Size: 0x17a
function need_to_run() {
    run_yaw = 35;
    run_pitch = 30;
    run_height = 64;
    if (!isdefined(self.enemy)) {
        return false;
    }
    if (self.health < self.maxhealth) {
        return true;
    }
    if (isdefined(self.favoriteenemy) && !is_true(self.hasseenfavoriteenemy)) {
        return false;
    }
    height = self.origin[2] - self.enemy.origin[2];
    if (abs(height) > run_height) {
        return false;
    }
    yaw = self namespace_ec06fe4a::absyawtoenemy();
    if (yaw > run_yaw) {
        return false;
    }
    pitch = angleclamp180(vectortoangles(self.origin - self.enemy.origin)[0]);
    if (abs(pitch) > run_pitch) {
        return false;
    }
    return true;
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 1, eflags: 0x2 linked
// Checksum 0x12748fc7, Offset: 0x1a50
// Size: 0x3c
function function_56bb65ac(speed = "WALK") {
    self setblackboardattribute("_wolf_should_run", speed);
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 1, eflags: 0x2 linked
// Checksum 0x1d07e48a, Offset: 0x1a98
// Size: 0x34
function function_ad163d5a(*behaviortreeentity) {
    return self getblackboardattribute("_wolf_should_howl") === "HOWL";
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 1, eflags: 0x2 linked
// Checksum 0x6aeb5b36, Offset: 0x1ad8
// Size: 0x9c
function function_a47b7e79(howl = 1) {
    self endon(#"death");
    if (howl) {
        self setblackboardattribute("_wolf_should_howl", "HOWL");
        self waittilltimeout(2, #"damage");
    }
    self setblackboardattribute("_wolf_should_howl", "DONT_HOWL");
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 1, eflags: 0x0
// Checksum 0x657602ca, Offset: 0x1b80
// Size: 0xc
function get_last_valid_position(*bimmediate) {
    
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 2, eflags: 0x2 linked
// Checksum 0xd86225d, Offset: 0x1b98
// Size: 0xce
function is_target_valid(dog, target) {
    if (!isdefined(target)) {
        return false;
    }
    if (!isalive(target)) {
        return false;
    }
    if (dog.team == target.team) {
        return false;
    }
    if (isplayer(target) && !namespace_7f5aeb59::isplayervalid(target)) {
        return false;
    }
    if (is_true(target.ignoreme)) {
        return false;
    }
    if (target isnotarget()) {
        return false;
    }
    return true;
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 1, eflags: 0x2 linked
// Checksum 0x989a1787, Offset: 0x1c70
// Size: 0x34
function function_52fd1aa8(behaviortreeentity) {
    return behaviortreeentity getblackboardattribute("_wolf_should_run") === "WALK";
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 1, eflags: 0x2 linked
// Checksum 0x2115afda, Offset: 0x1cb0
// Size: 0x34
function function_ee68dfca(behaviortreeentity) {
    return behaviortreeentity getblackboardattribute("_wolf_should_run") === "RUN";
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 1, eflags: 0x2 linked
// Checksum 0x68e1b693, Offset: 0x1cf0
// Size: 0x34
function function_86104a92(behaviortreeentity) {
    return behaviortreeentity getblackboardattribute("_wolf_should_run") === "SPRINT";
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 1, eflags: 0x2 linked
// Checksum 0xaef75244, Offset: 0x1d30
// Size: 0xf0
function function_cf98d4f7(behaviortreeentity) {
    if (behaviortreeentity.ignoreall || !is_target_valid(behaviortreeentity, behaviortreeentity.favoriteenemy)) {
        return false;
    }
    time = gettime();
    if (isdefined(self.var_96cd28f6) && time - self.var_96cd28f6 < 1000) {
        return false;
    }
    meleedist = 72;
    if (distancesquared(behaviortreeentity.origin, behaviortreeentity.favoriteenemy.origin) < sqr(meleedist) && behaviortreeentity cansee(behaviortreeentity.favoriteenemy)) {
        return true;
    }
    return false;
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 1, eflags: 0x2 linked
// Checksum 0x7c27ae61, Offset: 0x1e28
// Size: 0x204
function function_a19ebce9(target) {
    if (!isdefined(target)) {
        return;
    }
    if (distancesquared(self.origin, target.origin) > sqr(36)) {
        return;
    }
    self.var_96cd28f6 = gettime();
    registernotice_walla = anglestoforward(self.angles);
    var_2f706708 = self gettagorigin("j_neck");
    var_c1324bcf = vectornormalize(target.origin - self.origin);
    var_aa74cdcb = vectordot(var_c1324bcf, registernotice_walla);
    if (var_aa74cdcb > 0.8) {
        var_1be3aa53 = 1;
    }
    if (!is_true(var_1be3aa53)) {
        return;
    }
    target_origin = (target.origin[0], target.origin[1], target.origin[2] + 32);
    if (bullettracepassed(var_2f706708, target_origin, 0, self)) {
        target dodamage(self.var_cc28f8dc, self.origin, self, self, "none", "MOD_MELEE");
        if (isplayer(target)) {
            target playrumbleonentity("damage_heavy");
        }
    }
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 0, eflags: 0x2 linked
// Checksum 0xc7371bcf, Offset: 0x2038
// Size: 0x88
function function_92312127() {
    self endon(#"death");
    while (true) {
        result = self waittill(#"dog_melee");
        self namespace_e32bb68::function_3a59ec34("zmb_doa_ai_hound_bite");
        self function_a19ebce9(self.enemy);
    }
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 0, eflags: 0x2 linked
// Checksum 0xaf30b7e, Offset: 0x20c8
// Size: 0x166
function use_low_attack() {
    if (!isdefined(self.enemy) || !isplayer(self.enemy)) {
        return false;
    }
    height_diff = self.enemy.origin[2] - self.origin[2];
    low_enough = 30;
    if (height_diff < low_enough && self.enemy getstance() == "prone") {
        return true;
    }
    melee_origin = (self.origin[0], self.origin[1], self.origin[2] + 65);
    enemy_origin = (self.enemy.origin[0], self.enemy.origin[1], self.enemy.origin[2] + 32);
    if (!bullettracepassed(melee_origin, enemy_origin, 0, self)) {
        return true;
    }
    return false;
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 2, eflags: 0x2 linked
// Checksum 0x787d52d6, Offset: 0x2238
// Size: 0xa0
function wolfmeleeaction(behaviortreeentity, asmstatename) {
    behaviortreeentity clearpath();
    context = "high";
    if (behaviortreeentity use_low_attack()) {
        context = "low";
    }
    behaviortreeentity setblackboardattribute("_context", context);
    animationstatenetworkutility::requeststate(behaviortreeentity, asmstatename);
    return 5;
}

// Namespace namespace_53a8fe5e/namespace_53a8fe5e
// Params 2, eflags: 0x2 linked
// Checksum 0x738bb923, Offset: 0x22e0
// Size: 0x38
function function_8d42c979(behaviortreeentity, *asmstatename) {
    asmstatename setblackboardattribute("_context", undefined);
    return 4;
}

