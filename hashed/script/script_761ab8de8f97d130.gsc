// Atian COD Tools GSC CW decompiler test
#using script_60c9f7551ce6c823;
#using script_2a5bf5b4a00cee0d;
#using script_3faf478d5b0850fe;
#using script_47851dbeea22fe66;
#using script_164a456ce05c3483;
#using script_774302f762d76254;
#using script_1b0b07ff57d1dde3;
#using script_79315a6ccf4fce3d;
#using script_1ee011cd0961afd7;
#using script_5f20d3b434d24884;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_17dcb1172e441bf6;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\ai\zombie_eye_glow.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using script_2c5daa95f8fec03c;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\ai\systems\destructible_character.gsc;
#using scripts\core_common\ai\systems\blackboard.gsc;
#using script_3819e7a1427df6d2;
#using scripts\core_common\ai\systems\behavior_tree_utility.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace namespace_b5ca279a;

// Namespace namespace_b5ca279a/namespace_b5ca279a
// Params 0, eflags: 0x2 linked
// Checksum 0xeb1907c2, Offset: 0x3e8
// Size: 0x1e4
function init() {
    namespace_250e9486::function_252dff4d("basic_zombie", 21, &function_7f78da, undefined, 0);
    namespace_250e9486::function_252dff4d("barreler_zombie", 22, &function_ef2758f9, undefined, 9);
    namespace_250e9486::function_252dff4d("riser_zombie", 23, &function_a4b27d0e, undefined, 17);
    namespace_250e9486::function_252dff4d("smoke_zombie", 25, &function_83a2d68c, undefined, 21);
    namespace_250e9486::function_252dff4d("pole_zombie", 28, &function_38f9cf8c, undefined, 33, &function_56304f4a);
    namespace_250e9486::function_252dff4d("blood_riser", 24, &function_1eb8e7ef, undefined, 41, &function_c291edbd);
    registration = namespace_250e9486::function_3dd94c25("barreler_zombie");
    if (!isdefined(registration.var_71e54e3a)) {
        registration.var_71e54e3a = [];
    } else if (!isarray(registration.var_71e54e3a)) {
        registration.var_71e54e3a = array(registration.var_71e54e3a);
    }
    registration.var_71e54e3a[registration.var_71e54e3a.size] = "kgb";
    registerbehaviorscriptfunctions();
}

// Namespace namespace_b5ca279a/namespace_b5ca279a
// Params 0, eflags: 0x2 linked
// Checksum 0x1cddf43c, Offset: 0x5d8
// Size: 0x3b4
function registerbehaviorscriptfunctions() {
    assert(isscriptfunctionptr(&function_63e044e7));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_11f0b891a9d2e6c7", &function_63e044e7);
    assert(isscriptfunctionptr(&function_9e433573));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_2b2a4705912ffb22", &function_9e433573);
    assert(isscriptfunctionptr(&function_55b7ea22));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_7561185fb9f89048", &function_55b7ea22);
    assert(isscriptfunctionptr(&function_98b102d8));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_66d076094cefbdbb", &function_98b102d8);
    assert(isscriptfunctionptr(&function_4402c40a));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_530185ba74913077", &function_4402c40a);
    assert(isscriptfunctionptr(&function_6a3bcddc));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_545373e09d03a06c", &function_6a3bcddc);
    assert(isscriptfunctionptr(&function_b9b03294));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_1f70e1d883cae162", &function_b9b03294);
    assert(isscriptfunctionptr(&zombietraversalservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"doazombietraversalservice", &zombietraversalservice);
    assert(isscriptfunctionptr(&function_f637b05d));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_52efb6ed5d3a4220", &function_f637b05d, 1);
}

// Namespace namespace_b5ca279a/namespace_b5ca279a
// Params 0, eflags: 0x2 linked
// Checksum 0x7694d01a, Offset: 0x998
// Size: 0x1c4
function function_7f78da() {
    self namespace_250e9486::function_25b2c8a9();
    self.var_1038c5e0 = "ai_zombie_riser";
    self.var_596fb6ed = "ai_zombie_riser";
    animrate = 1 + level.doa.var_6c58d51 * 0.025;
    self asmsetanimationrate(animrate);
    self.ignorevortices = 0;
    self.basic = 1;
    self.var_c3ce559a = 0;
    self.var_bb68380c = namespace_4dae815d::function_59a9cf1d() == 0 && !isdefined(level.doa.var_6f3d327);
    self.shouldspawn = !self.var_bb68380c;
    self thread zombie_eye_glow::function_b43f92cd();
    if (self.var_bb68380c) {
        self thread function_e6634b0c();
        self thread function_a00c9d13();
    } else if (self.zombie_move_speed == "walk") {
        self.zombie_move_speed = math::cointoss() ? "sprint" : "run";
    }
    self thread namespace_9fc66ac::function_ba33d23d(#"hash_6298fe3f8c45ac9f", #"hash_8c6429df541c34c", #"hash_774f44ae3771ad84");
}

// Namespace namespace_b5ca279a/namespace_b5ca279a
// Params 0, eflags: 0x2 linked
// Checksum 0x9505a145, Offset: 0xb68
// Size: 0x4c
function function_c291edbd() {
    if (!isdefined(level.doa.var_39e3fa99)) {
        return false;
    }
    return [[ level.doa.var_39e3fa99 ]]->function_7856fdb6() == #"bloodlake";
}

// Namespace namespace_b5ca279a/namespace_b5ca279a
// Params 0, eflags: 0x2 linked
// Checksum 0x83241adb, Offset: 0xbc0
// Size: 0x32
function function_1eb8e7ef() {
    function_a4b27d0e();
    self.var_1038c5e0 = "ai_blood_riser";
    self.var_596fb6ed = "ai_blood_riser";
}

// Namespace namespace_b5ca279a/namespace_b5ca279a
// Params 0, eflags: 0x2 linked
// Checksum 0x9cc71be4, Offset: 0xc00
// Size: 0x15e
function function_a4b27d0e() {
    self function_7f78da();
    self.ignorevortices = 0;
    self.basic = undefined;
    self.shouldspawn = 1;
    self.ignorevortices = 0;
    self asmsetanimationrate(1.1);
    self.zombie_arms_position = randomint(100) < 50 ? "down" : "up";
    self.zombie_move_speed = isdefined(level.doa.var_13e8f9c9) ? level.doa.var_13e8f9c9 : "run";
    if (isdefined(level.doa.var_a598a835)) {
        self.spawnloc = [[ level.doa.var_a598a835 ]]();
        return;
    }
    assert(isdefined(level.doa.var_39e3fa99));
    self.spawnloc = [[ level.doa.var_39e3fa99 ]]->function_59fc184c();
}

// Namespace namespace_b5ca279a/namespace_b5ca279a
// Params 0, eflags: 0x2 linked
// Checksum 0xc6334bfe, Offset: 0xd68
// Size: 0x1c4
function function_ef2758f9() {
    self function_7f78da();
    self.ignorevortices = 0;
    self.basic = undefined;
    self.zombie_arms_position = "up";
    self setavoidancemask("avoid none");
    self.zombie_move_speed = isdefined(level.doa.var_13e8f9c9) ? level.doa.var_13e8f9c9 : "run";
    barrel = namespace_fb2125f::function_f1ca69a7("zombietron_explosive_barrel", undefined, self.origin, self.angles, 0);
    if (isdefined(barrel)) {
        barrel notsolid();
        barrel enablelinkto();
        self enablelinkto();
        barrel disableaimassist();
        barrel.carried = 1;
        barrel.takedamage = 1;
        barrel.health = 99999;
        barrel linkto(self, "j_head", (0, 0, 15), (90, 0, 0));
        barrel thread function_bd3de922(self);
        barrel thread namespace_ec06fe4a::function_52afe5df(120);
    }
}

// Namespace namespace_b5ca279a/namespace_b5ca279a
// Params 0, eflags: 0x2 linked
// Checksum 0xbf5a43a, Offset: 0xf38
// Size: 0x1e
function function_56304f4a() {
    return level.doa.var_8d14dcbf.size < 75;
}

// Namespace namespace_b5ca279a/namespace_b5ca279a
// Params 0, eflags: 0x2 linked
// Checksum 0x2d447e47, Offset: 0xf60
// Size: 0x154
function function_38f9cf8c() {
    self function_7f78da();
    self.ignorevortices = 0;
    self.basic = undefined;
    self.var_2b989b2e = 1;
    self.var_4dcf6637 = 1;
    self.zombie_arms_position = "up";
    self setavoidancemask("avoid none");
    self.zombie_move_speed = "sprint";
    self.maxhealth = int(5000 + 2500 * level.doa.var_6c58d51);
    self.health = self.maxhealth;
    self thread function_9bca3cb6();
    self.var_d415ee14 = 1;
    if (namespace_4dae815d::function_59a9cf1d() == 0 && level.doa.var_8d14dcbf.size > 38) {
        return;
    }
    if (randomint(100) > 45) {
        self thread function_7b1377e8();
    }
}

// Namespace namespace_b5ca279a/namespace_b5ca279a
// Params 0, eflags: 0x2 linked
// Checksum 0xc511dd3, Offset: 0x10c0
// Size: 0x68
function function_9bca3cb6() {
    self endon(#"death");
    while (true) {
        wait(randomfloatrange(0.3, 0.6));
        self namespace_83eb6304::function_3ecfde67("pole_zombie_elecBurst");
    }
}

// Namespace namespace_b5ca279a/namespace_b5ca279a
// Params 1, eflags: 0x2 linked
// Checksum 0xd318b9a0, Offset: 0x1130
// Size: 0x148
function function_711927a1(origin) {
    org = namespace_ec06fe4a::spawnmodel(origin);
    if (!isdefined(org)) {
        return;
    }
    org thread namespace_ec06fe4a::function_52afe5df(3.4);
    trap = {};
    trap.origin = origin + (0, 0, -100);
    trap.angles = (0, 0, 0);
    pole = namespace_53f73cda::function_28826539(trap, 0);
    if (!isdefined(pole)) {
        return;
    }
    level.doa.var_8d14dcbf[level.doa.var_8d14dcbf.size] = pole;
    pole moveto(origin, 2);
    while (isdefined(org)) {
        org namespace_83eb6304::function_3ecfde67("pole_blast");
        wait(randomfloatrange(0.5, 1.2));
    }
}

// Namespace namespace_b5ca279a/namespace_b5ca279a
// Params 0, eflags: 0x2 linked
// Checksum 0x4dc64dec, Offset: 0x1280
// Size: 0xbc
function function_7b1377e8() {
    self endon(#"death");
    wait(5);
    while (true) {
        wait(0.2);
        if (randomint(100) < 4) {
            break;
        }
    }
    self.ignoreall = 1;
    self.var_c0bd8c06 = 1;
    self thread namespace_ec06fe4a::function_570729f0(10);
    self waittilltimeout(4, #"hash_12b1eb419a23e3bd");
    level thread function_711927a1(self.origin);
}

// Namespace namespace_b5ca279a/namespace_b5ca279a
// Params 1, eflags: 0x2 linked
// Checksum 0x81a7451, Offset: 0x1348
// Size: 0xf4
function function_bd3de922(carrier) {
    self endon(#"death");
    carrier waittill(#"death");
    self unlink();
    self solid();
    impulse = anglestoforward(self.angles) + (0, 0, 5);
    impulse = vectorscale(impulse, 3);
    self physicslaunch(self.origin, impulse);
    self enableaimassist();
    self thread namespace_fb2125f::function_db4a8bad(1, self);
}

// Namespace namespace_b5ca279a/namespace_b5ca279a
// Params 0, eflags: 0x2 linked
// Checksum 0x64e28db7, Offset: 0x1448
// Size: 0x254
function function_83a2d68c() {
    self namespace_250e9486::function_25b2c8a9();
    self.var_1038c5e0 = "shadow_rez_in";
    self.var_596fb6ed = "shadow_appear";
    self.var_bb68380c = namespace_4dae815d::function_59a9cf1d() == 0;
    self.shouldspawn = 1;
    self.var_c5348ec8 = randomint(2) + 1;
    self.zombie_move_speed = isdefined(level.doa.var_13e8f9c9) ? level.doa.var_13e8f9c9 : "sprint";
    if (isdefined(level.doa.var_a598a835)) {
        self.spawnloc = [[ level.doa.var_a598a835 ]]();
    } else {
        assert(isdefined(level.doa.var_39e3fa99));
        self.spawnloc = [[ level.doa.var_39e3fa99 ]]->function_70fb5745();
    }
    self.org = namespace_ec06fe4a::spawnmodel(self.spawnloc.origin + (0, 0, 40), "tag_origin");
    if (isdefined(self.org)) {
        self.org.takedamage = 0;
        self.org.targetname = "shadowTeleportMeNow";
        self.org thread namespace_ec06fe4a::function_d55f042c(self, "death");
    }
    self.var_e66cd6fb = 1;
    self.var_66d5e435 = 1;
    self.var_4dcf6637 = 1;
    aiutility::addaioverridedamagecallback(self, &function_a86c6bf8);
    self thread shadowteleportmenow(1, self.spawnloc.origin);
}

// Namespace namespace_b5ca279a/namespace_b5ca279a
// Params 2, eflags: 0x2 linked
// Checksum 0xf87bf239, Offset: 0x16a8
// Size: 0x496
function shadowteleportmenow(initial = 0, origin = self.origin) {
    if (!isdefined(level.doa.var_39e3fa99)) {
        self thread namespace_ec06fe4a::function_570729f0();
        return;
    }
    self endon(#"death");
    if (is_true(self.var_6a59f093)) {
        return;
    }
    assert(self.var_c5348ec8 > 0);
    self.var_6a59f093 = 1;
    if (!initial) {
        self.var_c5348ec8--;
    }
    spot = [[ level.doa.var_39e3fa99 ]]->function_70fb5745(origin, 256, 1400).origin;
    self.ignoreall = 1;
    self.takedamage = 0;
    self namespace_83eb6304::function_3ecfde67("shadow_fade");
    self namespace_83eb6304::function_3ecfde67("spawnZombie");
    wait(0.1);
    if (isdefined(self.org)) {
        self.org.origin = self.origin + (0, 0, 40);
        util::wait_network_frame();
        self.org namespace_83eb6304::function_3ecfde67("shadow_move");
        self.org namespace_83eb6304::function_3ecfde67("shadow_glow");
        self namespace_e32bb68::function_ae271c0b("zmb_doa_ai_smokeman_lp");
        self.org namespace_e32bb68::function_3a59ec34("zmb_doa_ai_smokeman_teleport_out");
        wait(0.3);
        self namespace_ec06fe4a::function_8c808737();
        self notsolid();
        self setplayercollision(0);
        self linkto(self.org);
        self.org moveto(spot + (0, 0, 40), 2);
        self.org waittilltimeout(2.1, #"movedone");
        self.org namespace_83eb6304::function_3ecfde67("shadow_appear");
        self.org namespace_e32bb68::function_3a59ec34("zmb_doa_ai_smokeman_teleport_in_pre");
        wait(1.9);
        self namespace_e32bb68::function_3a59ec34("zmb_doa_ai_smokeman_teleport_in");
        self unlink();
        self forceteleport(spot);
        self namespace_ec06fe4a::function_4f72130c();
        self solid();
        self setplayercollision(1);
        self.org namespace_83eb6304::turnofffx("shadow_move");
        self.org namespace_83eb6304::turnofffx("shadow_glow");
        self namespace_e32bb68::function_3a59ec34("zmb_doa_ai_smokeman_lp");
    }
    self namespace_83eb6304::function_3ecfde67("spawnZombie");
    wait(1);
    self.ignoreall = 0;
    self.takedamage = 1;
    self.var_6a59f093 = undefined;
    self.var_72283e28 = 0;
}

// Namespace namespace_b5ca279a/namespace_b5ca279a
// Params 16, eflags: 0x2 linked
// Checksum 0x84fd6fc, Offset: 0x1b48
// Size: 0x1a8
function function_a86c6bf8(*einflictor, *eattacker, idamage, *idflags, *smeansofdeath, *weapon, *var_fd90b0bb, *vpoint, *vdir, *shitloc, *vdamageorigin, *timeoffset, *boneindex, *modelindex, *surfacetype, *surfacenormal) {
    if (self.var_c5348ec8 > 0) {
        if (surfacenormal >= self.health) {
            surfacenormal = self.health - 1;
        }
        self thread shadowteleportmenow();
    } else if (surfacenormal >= self.health) {
        self namespace_e32bb68::function_ae271c0b("zmb_doa_ai_smokeman_lp");
        self namespace_ec06fe4a::function_4f72130c();
        self.takedamage = 0;
        self.aioverridedamage = undefined;
        orb = namespace_ec06fe4a::spawnmodel(self.origin);
        if (isdefined(orb)) {
            orb thread namespace_ec06fe4a::function_52afe5df(0.4);
            orb namespace_83eb6304::function_3ecfde67("shadow_die");
            orb namespace_e32bb68::function_3a59ec34("zmb_doa_ai_smokeman_death");
        }
    }
    return surfacenormal;
}

// Namespace namespace_b5ca279a/namespace_b5ca279a
// Params 0, eflags: 0x2 linked
// Checksum 0x135f7eb6, Offset: 0x1cf8
// Size: 0x5c
function function_a00c9d13() {
    self endon(#"death");
    self waittill(#"speed_change");
    self.var_860a34b9 = undefined;
    self.var_72283e28 = 0;
    self thread function_e6634b0c(self.var_fe2082cc);
}

// Namespace namespace_b5ca279a/namespace_b5ca279a
// Params 1, eflags: 0x2 linked
// Checksum 0xbf1b62c9, Offset: 0x1d60
// Size: 0x204
function function_e6634b0c(var_11b86a4c = 45) {
    if (!isdefined(level.doa.var_39e3fa99)) {
        return;
    }
    self notify("760fbd4bb35afa69");
    self endon("760fbd4bb35afa69");
    self endon(#"death");
    if (self.zombie_move_speed != "walk") {
        self waittilltimeout(var_11b86a4c, #"wander");
        if (isdefined(self.var_ce1aa55f) && gettime() - self.var_ce1aa55f <= 10000) {
            self thread function_e6634b0c();
        }
        self.zombie_move_speed = namespace_250e9486::function_bb0817aa(self.zombie_move_speed);
    } else {
        self waittill(#"wander", #"speed_change");
    }
    spot = [[ level.doa.var_39e3fa99 ]]->function_70fb5745(self.origin, 300, 2048);
    if (isdefined(spot)) {
        self.var_860a34b9 = spot.origin;
    } else {
        self.var_860a34b9 = self.startposition;
    }
    self.oldradius = self.goalradius;
    self.goalradius = 256;
    self.var_72283e28 = 0;
    self namespace_250e9486::function_41354e51(self.var_860a34b9, 1, 1);
    self waittilltimeout(10, #"goal");
    self.var_860a34b9 = undefined;
    self.goalradius = self.oldradius;
    self thread function_e6634b0c(var_11b86a4c);
}

// Namespace namespace_b5ca279a/namespace_b5ca279a
// Params 1, eflags: 0x2 linked
// Checksum 0xf7d2f94d, Offset: 0x1f70
// Size: 0x32
function function_f637b05d(behaviortreeentity) {
    behaviortreeentity.var_93a62fe = namespace_7f5aeb59::function_7781556b(behaviortreeentity.origin, 1);
}

// Namespace namespace_b5ca279a/namespace_b5ca279a
// Params 1, eflags: 0x2 linked
// Checksum 0x1e8b3810, Offset: 0x1fb0
// Size: 0x3c
function zombietraversalservice(entity) {
    if (isdefined(entity.traversestartnode)) {
        entity collidewithactors(0);
        return true;
    }
    return false;
}

// Namespace namespace_b5ca279a/namespace_b5ca279a
// Params 1, eflags: 0x6 linked
// Checksum 0x987e953b, Offset: 0x1ff8
// Size: 0x72
function private function_b9b03294(entity) {
    if (self function_3c566724()) {
        return true;
    }
    startnode = entity.traversestartnode;
    if (!isdefined(startnode) || !isnodeenabled(startnode)) {
        return false;
    }
    return true;
}

// Namespace namespace_b5ca279a/namespace_b5ca279a
// Params 1, eflags: 0x6 linked
// Checksum 0x60bad70, Offset: 0x2078
// Size: 0xa0
function private function_4402c40a(entity) {
    if (!is_true(entity.var_e5ad72a0)) {
        if (isdefined(entity.var_1038c5e0)) {
            entity namespace_83eb6304::function_3ecfde67(entity.var_1038c5e0);
        }
        entity.var_c0bd8c06 = undefined;
        entity.var_e5ad72a0 = 1;
        entity disableaimassist();
        entity pathmode("dont move", 1);
    }
    return true;
}

// Namespace namespace_b5ca279a/namespace_b5ca279a
// Params 1, eflags: 0x6 linked
// Checksum 0x77ed9f24, Offset: 0x2120
// Size: 0x5e
function private function_6a3bcddc(entity) {
    entity namespace_ec06fe4a::function_8c808737();
    entity notsolid();
    entity notify(#"hash_12b1eb419a23e3bd");
    entity.var_e5ad72a0 = undefined;
    return true;
}

// Namespace namespace_b5ca279a/namespace_b5ca279a
// Params 1, eflags: 0x6 linked
// Checksum 0x7c7e556e, Offset: 0x2188
// Size: 0xbc
function private function_55b7ea22(entity) {
    if (!is_true(entity.var_1f2d0447)) {
        entity solid();
        if (isdefined(entity.var_596fb6ed)) {
            entity namespace_83eb6304::function_3ecfde67(entity.var_596fb6ed);
        }
        entity pathmode("dont move");
        entity.var_1f2d0447 = 1;
        entity.shouldspawn = undefined;
        entity disableaimassist();
    }
}

// Namespace namespace_b5ca279a/namespace_b5ca279a
// Params 1, eflags: 0x6 linked
// Checksum 0x5854a204, Offset: 0x2250
// Size: 0x76
function private function_98b102d8(entity) {
    entity.var_1f2d0447 = undefined;
    entity pathmode("move allowed");
    entity enableaimassist();
    entity notify(#"not_underground");
    entity.doa.original_origin = self.origin;
}

// Namespace namespace_b5ca279a/namespace_b5ca279a
// Params 1, eflags: 0x6 linked
// Checksum 0xe0c8af0, Offset: 0x22d0
// Size: 0x22
function private function_63e044e7(entity) {
    return is_true(entity.shouldspawn);
}

// Namespace namespace_b5ca279a/namespace_b5ca279a
// Params 1, eflags: 0x6 linked
// Checksum 0x63fa5098, Offset: 0x2300
// Size: 0x22
function private function_9e433573(entity) {
    return is_true(entity.var_c0bd8c06);
}

// Namespace namespace_b5ca279a/namespace_b5ca279a
// Params 12, eflags: 0x0
// Checksum 0x7c4abd08, Offset: 0x2330
// Size: 0x268
function function_d2fee26e(*einflictor, eattacker, idamage, *idflags, smeansofdeath, *weapon, *vpoint, *vdir, shitloc, *psoffsettime, *boneindex, *modelindex) {
    if (isdefined(shitloc) && shitloc.team === self.team) {
        return 0;
    }
    if (boneindex === #"mod_unknown") {
        return psoffsettime;
    }
    self.var_426947c4 = undefined;
    weakpoint = namespace_81245006::function_3131f5dd(self, modelindex, 1);
    if (isdefined(weakpoint) && weakpoint.type === #"armor") {
        namespace_81245006::function_ef87b7e8(weakpoint, psoffsettime);
        if (namespace_81245006::function_f29756fe(weakpoint) === 3 && isdefined(weakpoint.var_f371ebb0)) {
            destructserverutils::function_8475c53a(self, weakpoint.var_f371ebb0);
            self.var_426947c4 = 1;
            if (weakpoint.var_f371ebb0 === "body_armor") {
                callback::callback(#"hash_7d67d0e9046494fb");
            }
        }
        if (self.var_9fde8624 === #"hash_7a778318514578f7") {
            psoffsettime = int(psoffsettime * 0.25);
        } else if (self.var_9fde8624 === #"hash_622e7c9cc7c06c7") {
            psoffsettime = int(psoffsettime * 0.5);
        }
        self.var_67f98db0 = 1;
        var_43f0e034 = function_f4e9bba4(self);
        self function_2d4173a8(var_43f0e034);
    }
    return psoffsettime;
}

// Namespace namespace_b5ca279a/namespace_b5ca279a
// Params 1, eflags: 0x2 linked
// Checksum 0x672bb737, Offset: 0x25a0
// Size: 0x12a
function function_f4e9bba4(entity) {
    max_health = 0;
    var_765c0df4 = 0;
    weakpoints = namespace_81245006::function_fab3ee3e(entity);
    if (!isdefined(weakpoints)) {
        return 0;
    }
    foreach (weakpoint in weakpoints) {
        if (weakpoint.type === #"armor") {
            max_health += weakpoint.maxhealth;
            var_765c0df4 += max(weakpoint.health, 0);
        }
    }
    if (max_health == 0) {
        return 0;
    }
    return var_765c0df4 / max_health;
}

