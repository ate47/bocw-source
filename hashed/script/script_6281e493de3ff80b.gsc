// Atian COD Tools GSC CW decompiler test
#using script_79cafc73107dd980;
#using script_47851dbeea22fe66;
#using script_3faf478d5b0850fe;
#using script_2a5bf5b4a00cee0d;
#using script_164a456ce05c3483;
#using script_1ee011cd0961afd7;
#using script_5f20d3b434d24884;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_17dcb1172e441bf6;
#using script_3819e7a1427df6d2;
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\core_common\ai\systems\behavior_tree_utility.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_mocomp.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_notetracks.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_utility.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\ai\systems\behavior_state_machine.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace namespace_a204c0f4;

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 0, eflags: 0x2 linked
// Checksum 0x313ddc95, Offset: 0x750
// Size: 0x36c
function init() {
    namespace_250e9486::function_252dff4d("margwa", 8, &function_e9608fd3);
    spawner::add_archetype_spawn_function(#"margwa", &function_a8751f9b);
    clientfield::register("actor", "margwa_head_left", 1, 2, "int");
    clientfield::register("actor", "margwa_head_mid", 1, 2, "int");
    clientfield::register("actor", "margwa_head_right", 1, 2, "int");
    clientfield::register("actor", "margwa_fx_in", 1, 1, "counter");
    clientfield::register("actor", "margwa_fx_out", 1, 1, "counter");
    clientfield::register("actor", "margwa_fx_spawn", 1, 1, "counter");
    clientfield::register("actor", "margwa_smash", 1, 1, "counter");
    clientfield::register("actor", "margwa_head_left_hit", 1, 1, "counter");
    clientfield::register("actor", "margwa_head_mid_hit", 1, 1, "counter");
    clientfield::register("actor", "margwa_head_right_hit", 1, 1, "counter");
    clientfield::register("actor", "margwa_head_killed", 1, 2, "int");
    clientfield::register("actor", "margwa_jaw", 1, 6, "int");
    clientfield::register("toplayer", "margwa_head_explosion", 1, 1, "counter");
    clientfield::register("scriptmover", "margwa_fx_travel", 1, 1, "int");
    clientfield::register("scriptmover", "margwa_fx_travel_tell", 1, 1, "int");
    clientfield::register("actor", "supermargwa", 1, 1, "int");
    registerbehaviorscriptfunctions();
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 0, eflags: 0x2 linked
// Checksum 0x8376ba45, Offset: 0xac8
// Size: 0x9c4
function registerbehaviorscriptfunctions() {
    assert(isscriptfunctionptr(&margwatargetservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi("margwaTargetService", &margwatargetservice);
    assert(isscriptfunctionptr(&margwashouldsmashattack));
    behaviortreenetworkutility::registerbehaviortreescriptapi("margwaShouldSmashAttack", &margwashouldsmashattack);
    assert(isscriptfunctionptr(&margwashouldswipeattack));
    behaviortreenetworkutility::registerbehaviortreescriptapi("margwaShouldSwipeAttack", &margwashouldswipeattack);
    assert(isscriptfunctionptr(&margwashouldshowpain));
    behaviortreenetworkutility::registerbehaviortreescriptapi("margwaShouldShowPain", &margwashouldshowpain);
    assert(isscriptfunctionptr(&margwashouldreactstun));
    behaviortreenetworkutility::registerbehaviortreescriptapi("margwaShouldReactStun", &margwashouldreactstun);
    assert(isscriptfunctionptr(&margwashouldspawn));
    behaviortreenetworkutility::registerbehaviortreescriptapi("margwaShouldSpawn", &margwashouldspawn);
    assert(isscriptfunctionptr(&margwashouldreset));
    behaviortreenetworkutility::registerbehaviortreescriptapi("margwaShouldReset", &margwashouldreset);
    assert(!isdefined(&margwareactstunaction) || isscriptfunctionptr(&margwareactstunaction));
    assert(!isdefined(undefined) || isscriptfunctionptr(undefined));
    assert(!isdefined(undefined) || isscriptfunctionptr(undefined));
    behaviortreenetworkutility::registerbehaviortreeaction("margwaReactStunAction", &margwareactstunaction, undefined, undefined);
    assert(!isdefined(&margwaswipeattackaction) || isscriptfunctionptr(&margwaswipeattackaction));
    assert(!isdefined(&function_12a0b652) || isscriptfunctionptr(&function_12a0b652));
    assert(!isdefined(&function_9f21d288) || isscriptfunctionptr(&function_9f21d288));
    behaviortreenetworkutility::registerbehaviortreeaction("margwaSwipeAttackAction", &margwaswipeattackaction, &function_12a0b652, &function_9f21d288);
    assert(isscriptfunctionptr(&margwaidlestart));
    behaviortreenetworkutility::registerbehaviortreescriptapi("margwaIdleStart", &margwaidlestart);
    assert(isscriptfunctionptr(&margwamovestart));
    behaviortreenetworkutility::registerbehaviortreescriptapi("margwaMoveStart", &margwamovestart);
    assert(isscriptfunctionptr(&margwatraverseactionstart));
    behaviortreenetworkutility::registerbehaviortreescriptapi("margwaTraverseActionStart", &margwatraverseactionstart);
    assert(isscriptfunctionptr(&margwapainstart));
    behaviortreenetworkutility::registerbehaviortreescriptapi("margwaPainStart", &margwapainstart);
    assert(isscriptfunctionptr(&margwapainterminate));
    behaviortreenetworkutility::registerbehaviortreescriptapi("margwaPainTerminate", &margwapainterminate);
    assert(isscriptfunctionptr(&margwareactstunstart));
    behaviortreenetworkutility::registerbehaviortreescriptapi("margwaReactStunStart", &margwareactstunstart);
    assert(isscriptfunctionptr(&margwareactstunterminate));
    behaviortreenetworkutility::registerbehaviortreescriptapi("margwaReactStunTerminate", &margwareactstunterminate);
    assert(isscriptfunctionptr(&margwaspawnstart));
    behaviortreenetworkutility::registerbehaviortreescriptapi("margwaSpawnStart", &margwaspawnstart);
    assert(isscriptfunctionptr(&margwasmashattackstart));
    behaviortreenetworkutility::registerbehaviortreescriptapi("margwaSmashAttackStart", &margwasmashattackstart);
    assert(isscriptfunctionptr(&margwasmashattackterminate));
    behaviortreenetworkutility::registerbehaviortreescriptapi("margwaSmashAttackTerminate", &margwasmashattackterminate);
    assert(isscriptfunctionptr(&margwaswipeattackstart));
    behaviortreenetworkutility::registerbehaviortreescriptapi("margwaSwipeAttackStart", &margwaswipeattackstart);
    assert(isscriptfunctionptr(&margwaswipeattackterminate));
    behaviortreenetworkutility::registerbehaviortreescriptapi("margwaSwipeAttackTerminate", &margwaswipeattackterminate);
    animationstatenetwork::registernotetrackhandlerfunction("margwa_smash_attack", &function_b4c86753);
    animationstatenetwork::registernotetrackhandlerfunction("margwa_bodyfall large", &function_11199ef4);
    animationstatenetwork::registernotetrackhandlerfunction("margwa_melee_fire", &function_badfb816);
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 0, eflags: 0x2 linked
// Checksum 0x6d46511e, Offset: 0x1498
// Size: 0x346
function function_e9608fd3() {
    profilestart();
    self namespace_250e9486::function_25b2c8a9();
    self namespace_250e9486::function_db744d28();
    self.maxhealth = 3 * (70000 + int(50000 * namespace_ec06fe4a::function_ef369bae()) + level.doa.var_6c58d51 * 150000);
    self.health = self.maxhealth;
    self collidewithactors(1);
    self function_11578581(70);
    self setavoidancemask("avoid none");
    self disableaimassist();
    self.goalradius = 60;
    self.animrate = 1.2;
    self.meleedistsq = sqr(100);
    self.var_3adc3f4a = 0;
    self.disableammodrop = 1;
    self.no_gib = 1;
    self.zombie_move_speed = "walk";
    self.var_1c8b76d3 = 1;
    self.overrideactordamage = &function_239ee36;
    self.candamage = 1;
    self.var_887aaf49 = 3;
    self.var_a5d387bf = 0;
    if (randomint(100) > 50) {
        self function_195ee8be("c_zom_margwa_chunks_le", "j_chunk_head_bone_le");
        self function_195ee8be("c_zom_margwa_chunks_ri", "j_chunk_head_bone_ri");
    } else {
        self function_195ee8be("c_zom_margwa_chunks_ri", "j_chunk_head_bone_ri");
        self function_195ee8be("c_zom_margwa_chunks_le", "j_chunk_head_bone_le");
    }
    self function_195ee8be("c_zom_margwa_chunks_mid", "j_chunk_head_bone");
    self.var_b3d3bd49 = 600;
    self function_b705860f();
    self thread function_ea39f784();
    self.updatesight = 0;
    self.var_cccb0ad2 = 1;
    self namespace_e32bb68::function_3a59ec34("zmb_doa_ai_margwa_spawn");
    self thread namespace_9fc66ac::function_ba33d23d(#"zmb_vocals_margwa_ambient", #"zmb_vocals_margwa_ambient", #"");
    profilestop();
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 0, eflags: 0x6 linked
// Checksum 0x52ec8b45, Offset: 0x17e8
// Size: 0x5a
function private function_a8751f9b() {
    blackboard::createblackboardforentity(self);
    self setblackboardattribute("_locomotion_speed", "locomotion_speed_walk");
    self.___archetypeonanimscriptedcallback = &function_46d5894d;
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x6 linked
// Checksum 0x796fcf00, Offset: 0x1850
// Size: 0x2c
function private function_46d5894d(entity) {
    entity.__blackboard = undefined;
    entity function_a8751f9b();
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x6 linked
// Checksum 0x489808f1, Offset: 0x1888
// Size: 0x2fc
function private function_b4c86753(entity) {
    players = getplayers();
    foreach (player in players) {
        var_9f06b4e9 = entity.origin + vectorscale(anglestoforward(self.angles), 60);
        distsq = distancesquared(var_9f06b4e9, player.origin);
        if (distsq < 20736) {
            if (!isgodmode(player)) {
                if (is_true(player.hasriotshield)) {
                    damageshield = 0;
                    attackdir = player.origin - self.origin;
                    if (is_true(player.hasriotshieldequipped)) {
                        if (player function_6337506a(attackdir, 0.2)) {
                            damageshield = 1;
                        }
                    } else if (player function_6337506a(attackdir, 0.2, 0)) {
                        damageshield = 1;
                    }
                    if (damageshield) {
                        self clientfield::increment("margwa_smash");
                        shield_damage = level.weaponriotshield.weaponstarthitpoints;
                        if (isdefined(player.weaponriotshield)) {
                            shield_damage = player.weaponriotshield.weaponstarthitpoints;
                        }
                        player [[ player.player_shield_apply_damage ]](shield_damage, 0);
                        continue;
                    }
                }
                if (isdefined(level.var_abc9fecd) && isfunctionptr(level.var_abc9fecd)) {
                    if (player [[ level.var_abc9fecd ]](self)) {
                        continue;
                    }
                }
                self clientfield::increment("margwa_smash");
                player dodamage(166, self.origin, self);
            }
        }
    }
    if (isdefined(self.var_a567e412)) {
        self [[ self.var_a567e412 ]]();
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x6 linked
// Checksum 0xeafcde04, Offset: 0x1b90
// Size: 0x58
function private function_11199ef4(entity) {
    if (self.archetype == #"margwa") {
        entity ghost();
        if (isdefined(self.var_5ba15acc)) {
            self [[ self.var_5ba15acc ]]();
        }
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x6 linked
// Checksum 0x4d937693, Offset: 0x1bf0
// Size: 0x24
function private function_badfb816(entity) {
    entity melee();
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x2 linked
// Checksum 0x6d3d7fa4, Offset: 0x1c20
// Size: 0x5c
function margwashouldsmashattack(entity) {
    if (self.zombie_move_speed != "walk") {
        return false;
    }
    if (!isdefined(self.enemy)) {
        return false;
    }
    if (!isdefined(entity.var_bec33427)) {
        entity.var_bec33427 = 0;
    }
    return gettime() > entity.var_bec33427;
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x2 linked
// Checksum 0x3775ac4, Offset: 0x1c88
// Size: 0xfc
function margwashouldswipeattack(entity) {
    if (!isdefined(entity.enemy)) {
        return false;
    }
    var_5065f112 = isdefined(entity.meleedistsq) ? entity.meleedistsq : 16384;
    if (distancesquared(entity.origin, entity.enemy.origin) > var_5065f112) {
        return false;
    }
    yaw = abs(namespace_ec06fe4a::getyawtoenemy());
    if (yaw > 45) {
        entity orientmode("face point", entity.enemy.origin);
        return false;
    }
    return true;
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x6 linked
// Checksum 0xc1e84bd2, Offset: 0x1d90
// Size: 0x10a
function private margwashouldshowpain(entity) {
    if (isdefined(entity.headdestroyed)) {
        headinfo = entity.head[entity.headdestroyed];
        switch (headinfo.cf) {
        case #"margwa_head_left":
            self setblackboardattribute("_margwa_head", "left");
            break;
        case #"margwa_head_mid":
            self setblackboardattribute("_margwa_head", "middle");
            break;
        case #"margwa_head_right":
            self setblackboardattribute("_margwa_head", "right");
            break;
        }
        return true;
    }
    return false;
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x6 linked
// Checksum 0x8617fa6d, Offset: 0x1ea8
// Size: 0x2e
function private margwashouldreactstun(entity) {
    if (is_true(entity.var_b8239c7b)) {
        return true;
    }
    return false;
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x6 linked
// Checksum 0xaefdb1dd, Offset: 0x1ee0
// Size: 0x2e
function private margwashouldspawn(entity) {
    if (is_true(entity.var_243b04fc)) {
        return true;
    }
    return false;
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x6 linked
// Checksum 0xe466fbb5, Offset: 0x1f18
// Size: 0x66
function private margwashouldreset(entity) {
    if (isdefined(entity.headdestroyed)) {
        return true;
    }
    if (is_true(entity.var_42b101a5)) {
        return true;
    }
    if (is_true(entity.var_b8239c7b)) {
        return true;
    }
    return false;
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 2, eflags: 0x6 linked
// Checksum 0x3d712659, Offset: 0x1f88
// Size: 0xe8
function private margwareactstunaction(entity, asmstatename) {
    animationstatenetworkutility::requeststate(entity, asmstatename);
    var_e369804c = entity astsearch(asmstatename);
    var_30358842 = animationstatenetworkutility::searchanimationmap(entity, var_e369804c[#"animation"]);
    closetime = int(getanimlength(var_30358842) * 1000);
    entity function_e146597a(closetime);
    margwareactstunstart(entity);
    return 5;
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 2, eflags: 0x6 linked
// Checksum 0x28d86fe7, Offset: 0x2078
// Size: 0xea
function private margwaswipeattackaction(entity, asmstatename) {
    animationstatenetworkutility::requeststate(entity, asmstatename);
    if (!isdefined(entity.var_514cf595)) {
        var_d44a2fd7 = entity astsearch(asmstatename);
        var_cb7794c3 = animationstatenetworkutility::searchanimationmap(entity, var_d44a2fd7[#"animation"]);
        entity.var_514cf595 = int(getanimlength(var_cb7794c3) * 1000);
    }
    if (!isdefined(entity.var_4a40767b)) {
        entity.var_4a40767b = gettime() + entity.var_514cf595;
    }
    return 5;
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 2, eflags: 0x6 linked
// Checksum 0x3e9b9201, Offset: 0x2170
// Size: 0x40
function private function_12a0b652(entity, *asmstatename) {
    if (isdefined(asmstatename.var_4a40767b) && gettime() > asmstatename.var_4a40767b) {
        return 4;
    }
    return 5;
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 2, eflags: 0x6 linked
// Checksum 0x4e64c7f0, Offset: 0x21b8
// Size: 0x22
function private function_9f21d288(entity, *asmstatename) {
    asmstatename.var_4a40767b = undefined;
    return 4;
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x6 linked
// Checksum 0x9fdf7b0a, Offset: 0x21e8
// Size: 0x64
function private margwaidlestart(entity) {
    entity orientmode("face enemy");
    if (entity function_b92d6daa()) {
        entity clientfield::set("margwa_jaw", 1);
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x6 linked
// Checksum 0x908f134d, Offset: 0x2258
// Size: 0xa4
function private margwamovestart(entity) {
    entity orientmode("face motion");
    if (entity function_b92d6daa()) {
        if (entity.zombie_move_speed == "run") {
            entity clientfield::set("margwa_jaw", 13);
            return;
        }
        entity clientfield::set("margwa_jaw", 7);
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x4
// Checksum 0xf1ea2af2, Offset: 0x2308
// Size: 0xc
function private function_fa5c3a61(*entity) {
    
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x6 linked
// Checksum 0xfa146233, Offset: 0x2320
// Size: 0x16a
function private margwatraverseactionstart(entity) {
    entity setblackboardattribute("_traversal_type", entity.traversestartnode.animscript);
    if (isdefined(entity.traversestartnode.animscript)) {
        if (entity function_b92d6daa()) {
            switch (entity.traversestartnode.animscript) {
            case #"hash_7df721eeb4b2a2e2":
                entity clientfield::set("margwa_jaw", 21);
                break;
            case #"hash_7e1931eeb4cfa478":
                entity clientfield::set("margwa_jaw", 22);
                break;
            case #"hash_539fe33dffe5b4f1":
                entity clientfield::set("margwa_jaw", 24);
                break;
            case #"hash_537de33dffc8ce8b":
                entity clientfield::set("margwa_jaw", 25);
                break;
            }
        }
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x6 linked
// Checksum 0xb7b60ecf, Offset: 0x2498
// Size: 0x13e
function private margwapainstart(entity) {
    entity notify(#"hash_28b17b286ff6e084");
    if (entity function_b92d6daa()) {
        head = self getblackboardattribute("_margwa_head");
        switch (head) {
        case #"left":
            entity clientfield::set("margwa_jaw", 3);
            break;
        case #"middle":
            entity clientfield::set("margwa_jaw", 4);
            break;
        case #"right":
            entity clientfield::set("margwa_jaw", 5);
            break;
        }
    }
    entity.headdestroyed = undefined;
    entity.var_aef14ab3 = 0;
    entity.candamage = 0;
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x6 linked
// Checksum 0x806981ee, Offset: 0x25e0
// Size: 0x64
function private margwapainterminate(entity) {
    entity.headdestroyed = undefined;
    entity.var_aef14ab3 = 1;
    entity.candamage = 1;
    entity function_e146597a(5000);
    entity clearpath();
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x6 linked
// Checksum 0xfab19f5d, Offset: 0x2650
// Size: 0x54
function private margwareactstunstart(entity) {
    entity.var_b8239c7b = undefined;
    entity.var_aef14ab3 = 0;
    if (entity function_b92d6daa()) {
        entity clientfield::set("margwa_jaw", 6);
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x2 linked
// Checksum 0x5f025dec, Offset: 0x26b0
// Size: 0x1a
function margwareactstunterminate(entity) {
    entity.var_aef14ab3 = 1;
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x6 linked
// Checksum 0xfa48a8f2, Offset: 0x26d8
// Size: 0x16
function private margwaspawnstart(entity) {
    entity.var_243b04fc = 0;
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 0, eflags: 0x2 linked
// Checksum 0x3dd742c0, Offset: 0x26f8
// Size: 0x3b4
function function_729da05c() {
    self notify("11ab4b546d040b17");
    self endon("11ab4b546d040b17");
    self endon(#"death");
    self endon(#"hash_2b106aceb73a448d");
    self waittill(#"margwa_smash_attack");
    zombies = arraysortclosest(getaiteamarray("axis"), self.origin, undefined, 0, 150);
    var_31a419e0 = [];
    foreach (zombie in zombies) {
        if (is_true(zombie.basic)) {
            if (!isdefined(var_31a419e0)) {
                var_31a419e0 = [];
            } else if (!isarray(var_31a419e0)) {
                var_31a419e0 = array(var_31a419e0);
            }
            var_31a419e0[var_31a419e0.size] = zombie;
        }
    }
    foreach (zombie in var_31a419e0) {
        zombie namespace_250e9486::setup_zombie_knockdown(self);
    }
    forward = anglestoforward(self.angles);
    right = anglestoright(self.angles);
    spot = self.origin + forward * 100;
    groundpos = namespace_ec06fe4a::function_65ee50ba(spot);
    self radiusdamage(groundpos, 55, 2000, 500, self, "MOD_MELEE");
    trigger = namespace_ec06fe4a::spawntrigger("trigger_radius", groundpos, 2 | 1 | 512, 72, 60);
    if (isdefined(trigger)) {
        trigger thread namespace_ec06fe4a::function_52afe5df(10);
        trigger thread namespace_f6712ec9::function_86555fba();
    }
    obj = namespace_ec06fe4a::spawnmodel(groundpos);
    if (isdefined(obj)) {
        obj thread namespace_ec06fe4a::function_52afe5df(10);
        obj namespace_83eb6304::function_3ecfde67("nova_crawler_burst");
        util::wait_network_frame();
        obj thread function_66a5466d(spot, 72);
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 2, eflags: 0x2 linked
// Checksum 0x563f8b3b, Offset: 0x2ab8
// Size: 0xc8
function function_66a5466d(origin, radius) {
    self endon(#"death");
    while (true) {
        currentangle = randomint(360);
        var_5ccd914d = rotatepointaroundaxis((randomintrange(12, radius), 0, 0), (0, 0, 1), currentangle);
        self.origin = origin + var_5ccd914d;
        self namespace_83eb6304::function_3ecfde67("nova_crawler_burst");
        wait(0.5);
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x6 linked
// Checksum 0x1162150e, Offset: 0x2b88
// Size: 0x9c
function private margwasmashattackstart(entity) {
    entity.var_bec33427 = gettime() + randomintrange(3000, 10000);
    entity function_59b4caf4();
    entity thread function_729da05c();
    if (entity function_b92d6daa()) {
        entity clientfield::set("margwa_jaw", 14);
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x2 linked
// Checksum 0xd77a6405, Offset: 0x2c30
// Size: 0x34
function margwasmashattackterminate(entity) {
    entity notify(#"hash_2b106aceb73a448d");
    entity function_e146597a();
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x2 linked
// Checksum 0xae05fe11, Offset: 0x2c70
// Size: 0x44
function margwaswipeattackstart(entity) {
    if (entity function_b92d6daa()) {
        entity clientfield::set("margwa_jaw", 16);
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x6 linked
// Checksum 0x9fbc98bf, Offset: 0x2cc0
// Size: 0x24
function private margwaswipeattackterminate(entity) {
    entity function_e146597a();
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 0, eflags: 0x6 linked
// Checksum 0x424653eb, Offset: 0x2cf0
// Size: 0x44
function private function_ea39f784() {
    self waittill(#"death");
    if (isdefined(self.var_f2bf0700)) {
        self.var_f2bf0700 notify(#"hash_36564ec0c02d71f9");
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 0, eflags: 0x0
// Checksum 0xeb6ca6b4, Offset: 0x2d40
// Size: 0x12
function function_c9bdb4b5() {
    self.var_aef14ab3 = 1;
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 0, eflags: 0x6 linked
// Checksum 0xfa09df63, Offset: 0x2d60
// Size: 0xe
function private function_b705860f() {
    self.var_aef14ab3 = 0;
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 2, eflags: 0x6 linked
// Checksum 0x5cea5a79, Offset: 0x2d78
// Size: 0x3ec
function private function_195ee8be(headmodel, var_755136c1) {
    model = headmodel;
    var_ac8fb879 = undefined;
    self attach(model);
    if (!isdefined(self.head)) {
        self.head = [];
    }
    self.head[model] = spawnstruct();
    self.head[model].model = model;
    self.head[model].tag = var_755136c1;
    self.head[model].health = 70000 + int(50000 * namespace_ec06fe4a::function_ef369bae()) + level.doa.var_6c58d51 * 150000;
    self.head[model].candamage = 0;
    self.head[model].open = 1;
    self.head[model].closed = 2;
    self.head[model].smash = 3;
    switch (headmodel) {
    case #"c_zom_margwa_chunks_le":
        self.head[model].cf = "margwa_head_left";
        self.head[model].var_2d048cdf = "margwa_head_left_hit";
        self.head[model].gore = "c_zom_margwa_gore_le";
        if (isdefined(var_ac8fb879)) {
            self.head[model].gore = var_ac8fb879;
        }
        self.head[model].var_d3879c8e = 1;
        self.var_94be3b8e = model;
        break;
    case #"c_zom_margwa_chunks_mid":
        self.head[model].cf = "margwa_head_mid";
        self.head[model].var_2d048cdf = "margwa_head_mid_hit";
        self.head[model].gore = "c_zom_margwa_gore_mid";
        if (isdefined(var_ac8fb879)) {
            self.head[model].gore = var_ac8fb879;
        }
        self.head[model].var_d3879c8e = 2;
        self.var_a0986652 = model;
        break;
    case #"c_zom_margwa_chunks_ri":
        self.head[model].cf = "margwa_head_right";
        self.head[model].var_2d048cdf = "margwa_head_right_hit";
        self.head[model].gore = "c_zom_margwa_gore_ri";
        if (isdefined(var_ac8fb879)) {
            self.head[model].gore = var_ac8fb879;
        }
        self.head[model].var_d3879c8e = 3;
        self.var_a285d7da = model;
        break;
    }
    self thread function_81b6b294(self.head[model]);
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x0
// Checksum 0xfa2d4e23, Offset: 0x3170
// Size: 0x96
function function_b847ce75(health) {
    self.var_b3d3bd49 = health;
    foreach (head in self.head) {
        head.health = health;
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 2, eflags: 0x6 linked
// Checksum 0xfb1fb345, Offset: 0x3210
// Size: 0x3c
function private function_4a60d0c7(min, max) {
    time = gettime() + randomintrange(min, max);
    return time;
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 0, eflags: 0x6 linked
// Checksum 0xfbf09687, Offset: 0x3258
// Size: 0x3e
function private function_d150bac6() {
    if (self.var_887aaf49 > 1) {
        if (self.var_a5d387bf < self.var_887aaf49 - 1) {
            return true;
        }
    } else {
        return true;
    }
    return false;
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x6 linked
// Checksum 0x305d2723, Offset: 0x32a0
// Size: 0x298
function private function_81b6b294(headinfo) {
    self endon(#"death", #"hash_28b17b286ff6e084");
    headinfo notify(#"hash_28b17b286ff6e084");
    headinfo endon(#"hash_28b17b286ff6e084");
    while (true) {
        if (self ispaused()) {
            util::wait_network_frame();
            continue;
        }
        if (!isdefined(headinfo.closetime)) {
            if (self.var_887aaf49 == 1) {
                headinfo.closetime = function_4a60d0c7(500, 1000);
            } else {
                headinfo.closetime = function_4a60d0c7(1500, 3500);
            }
        }
        if (gettime() > headinfo.closetime && self function_d150bac6()) {
            self.var_a5d387bf++;
            headinfo.closetime = undefined;
        } else {
            util::wait_network_frame();
            continue;
        }
        self function_efe04de1(headinfo, 1);
        self clientfield::set(headinfo.cf, headinfo.open);
        if (namespace_ec06fe4a::function_a8975c67()) {
            self playsoundontag("zmb_vocals_margwa_ambient", headinfo.tag);
        }
        while (true) {
            if (!isdefined(headinfo.opentime)) {
                headinfo.opentime = function_4a60d0c7(3000, 5000);
            }
            if (gettime() > headinfo.opentime) {
                self.var_a5d387bf--;
                headinfo.opentime = undefined;
                break;
            }
            util::wait_network_frame();
            continue;
        }
        self function_efe04de1(headinfo, 0);
        self clientfield::set(headinfo.cf, headinfo.closed);
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 2, eflags: 0x6 linked
// Checksum 0x10c8c881, Offset: 0x3540
// Size: 0x3e
function private function_efe04de1(headinfo, candamage) {
    self endon(#"death");
    wait(0.1);
    headinfo.candamage = candamage;
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 0, eflags: 0x6 linked
// Checksum 0xf03d6a17, Offset: 0x3588
// Size: 0x198
function private function_59b4caf4() {
    self notify(#"hash_28b17b286ff6e084");
    var_f04f8dd5 = [];
    foreach (head in self.head) {
        if (head.health > 0) {
            var_f04f8dd5[var_f04f8dd5.size] = head;
        }
    }
    var_f04f8dd5 = array::randomize(var_f04f8dd5);
    open = 0;
    foreach (head in var_f04f8dd5) {
        if (!open) {
            head.candamage = 1;
            self clientfield::set(head.cf, head.smash);
            open = 1;
            continue;
        }
        self function_c6899c2b(head);
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x6 linked
// Checksum 0x51c34429, Offset: 0x3728
// Size: 0x3c
function private function_c6899c2b(headinfo) {
    headinfo.candamage = 0;
    self clientfield::set(headinfo.cf, headinfo.closed);
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x6 linked
// Checksum 0x47452a1, Offset: 0x3770
// Size: 0x110
function private function_e146597a(closetime) {
    if (self ispaused()) {
        return;
    }
    foreach (head in self.head) {
        if (head.health > 0) {
            head.closetime = undefined;
            head.opentime = undefined;
            if (isdefined(closetime)) {
                head.closetime = gettime() + closetime;
            }
            self.var_a5d387bf = 0;
            self function_c6899c2b(head);
            self thread function_81b6b294(head);
        }
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 2, eflags: 0x2 linked
// Checksum 0x4933abce, Offset: 0x3888
// Size: 0x16c
function function_a6af900e(var_71938d68, attacker) {
    headinfo = self.head[var_71938d68];
    if (is_true(headinfo.killed)) {
        return;
    }
    headinfo.health = 0;
    headinfo.killed = 1;
    headinfo notify(#"hash_28b17b286ff6e084");
    if (is_true(headinfo.candamage)) {
        self function_c6899c2b(headinfo);
        self.var_a5d387bf--;
    }
    self function_e140363d();
    self clientfield::set("margwa_head_killed", headinfo.var_d3879c8e);
    self detach(headinfo.model);
    self attach(headinfo.gore);
    self.var_887aaf49--;
    if (self.var_887aaf49 <= 0) {
        self.var_f2bf0700 = attacker;
        return 1;
    } else {
        self.headdestroyed = var_71938d68;
    }
    return 0;
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 0, eflags: 0x0
// Checksum 0xac5436e8, Offset: 0x3a00
// Size: 0xb4
function function_71c049c4() {
    foreach (head in self.head) {
        if (isdefined(head) && head.health > 0 && is_true(head.candamage)) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 0, eflags: 0x0
// Checksum 0xa2250dbe, Offset: 0x3ac0
// Size: 0x40
function function_bbaf72a2() {
    if (isdefined(self) && self.health > 0 && is_true(self.candamage)) {
        return true;
    }
    return false;
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 13, eflags: 0x2 linked
// Checksum 0x623572bf, Offset: 0x3b08
// Size: 0x2d0
function function_239ee36(*inflictor, attacker, damage, *dflags, *mod, *weapon, *var_fd90b0bb, point, *dir, *hitloc, *offsettime, *boneindex, *modelindex) {
    if (is_true(self.marked_for_death)) {
        self namespace_ec06fe4a::function_2f4b0f9(self.health - boneindex);
        return boneindex;
    }
    var_f04f8dd5 = [];
    foreach (head in self.head) {
        if (head.health > 0) {
            var_f04f8dd5[var_f04f8dd5.size] = head;
        }
    }
    if (var_f04f8dd5.size) {
        var_fe17e856 = var_f04f8dd5[0];
        var_fe17e856.health -= boneindex;
        self clientfield::increment(var_fe17e856.var_2d048cdf);
        if (var_fe17e856.health <= 0) {
            if (self function_a6af900e(var_fe17e856.model, offsettime)) {
                return self.health;
            }
        }
    }
    if (boneindex > self.health) {
        foreach (head in self.head) {
            self function_a6af900e(head.model, offsettime);
        }
    }
    var_799e18e5 = modelindex;
    var_5f32808d = 1;
    if (boneindex >= 1000) {
        var_5f32808d = 2;
    }
    self namespace_ec06fe4a::function_2f4b0f9(self.health - boneindex, offsettime, var_799e18e5, boneindex, var_5f32808d);
    return boneindex;
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 2, eflags: 0x4
// Checksum 0x44bb4f58, Offset: 0x3de0
// Size: 0xa4
function private function_102d7140(*entity, partname) {
    switch (partname) {
    case #"j_chunk_head_bone_le":
    case #"hash_6b21848b3145d294":
        return self.var_94be3b8e;
    case #"hash_151bf92e805446aa":
    case #"j_chunk_head_bone":
        return self.var_a0986652;
    case #"j_chunk_head_bone_ri":
    case #"hash_6b7a648b3191c50a":
        return self.var_a285d7da;
    }
    return undefined;
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 0, eflags: 0x6 linked
// Checksum 0xe33caca8, Offset: 0x3e90
// Size: 0x94
function private function_e140363d() {
    if (self.zombie_move_speed == "walk") {
        self.zombie_move_speed = "run";
        self setblackboardattribute("_locomotion_speed", "locomotion_speed_run");
        return;
    }
    if (self.zombie_move_speed == "run") {
        self.zombie_move_speed = "sprint";
        self setblackboardattribute("_locomotion_speed", "locomotion_speed_sprint");
    }
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 0, eflags: 0x0
// Checksum 0xcb74d77b, Offset: 0x3f30
// Size: 0x34
function function_6c6b91ed() {
    self.zombie_move_speed = "sprint";
    self setblackboardattribute("_locomotion_speed", "locomotion_speed_sprint");
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x4
// Checksum 0xa284250, Offset: 0x3f70
// Size: 0xc
function private function_35709f56(*var_71938d68) {
    
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 0, eflags: 0x2 linked
// Checksum 0x8016a8ff, Offset: 0x3f88
// Size: 0x3a
function function_b92d6daa() {
    if (!is_true(self.var_180ce19e)) {
        return false;
    }
    if (self.var_887aaf49 < 3) {
        return true;
    }
    return false;
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 3, eflags: 0x2 linked
// Checksum 0xf7d18b91, Offset: 0x3fd0
// Size: 0x134
function function_6337506a(vdir, limit, front = 1) {
    orientation = self getplayerangles();
    forwardvec = anglestoforward(orientation);
    if (!front) {
        forwardvec *= -1;
    }
    forwardvec2d = (forwardvec[0], forwardvec[1], 0);
    unitforwardvec2d = vectornormalize(forwardvec2d);
    tofaceevec = vdir * -1;
    tofaceevec2d = (tofaceevec[0], tofaceevec[1], 0);
    unittofaceevec2d = vectornormalize(tofaceevec2d);
    dotproduct = vectordot(unitforwardvec2d, unittofaceevec2d);
    return dotproduct > limit;
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x4
// Checksum 0xb4e9a4f1, Offset: 0x4110
// Size: 0xb4
function private function_fe2eb01c(enemy) {
    var_9f06b4e9 = self.origin;
    heightoffset = abs(self.origin[2] - enemy.origin[2]);
    if (heightoffset > 48) {
        return false;
    }
    distsq = distancesquared(var_9f06b4e9, enemy.origin);
    if (distsq > 2500 && distsq < 10000) {
        return true;
    }
    return false;
}

// Namespace namespace_a204c0f4/namespace_a204c0f4
// Params 1, eflags: 0x6 linked
// Checksum 0xd867550, Offset: 0x41d0
// Size: 0xc
function private margwatargetservice(*entity) {
    
}

