// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\archetype_zombie_interface.gsc;
#using scripts\core_common\ai\systems\ai_interface.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\core_common\ai\systems\ai_blackboard.gsc;
#using scripts\core_common\ai\systems\behavior_tree_utility.gsc;
#using scripts\core_common\ai\systems\behavior_state_machine.gsc;
#using scripts\core_common\ai\archetype_utility.gsc;
#using script_3819e7a1427df6d2;
#using scripts\core_common\ai\archetype_locomotion_utility.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_mocomp.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_notetracks.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_utility.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace zombiebehavior;

// Namespace zombiebehavior/zombie
// Params 0, eflags: 0x1
// Checksum 0x6a1cd841, Offset: 0x588
// Size: 0x1dc
function autoexec init() {
    initzombiebehaviorsandasm();
    spawner::add_archetype_spawn_function(#"zombie", &archetypezombieblackboardinit);
    spawner::add_archetype_spawn_function(#"zombie", &zombie_utility::zombiespawnsetup);
    spawner::add_archetype_spawn_function(#"zombie", &archetypezombiedeathoverrideinit);
    spawner::add_archetype_spawn_function(#"zombie", &function_eb55349f);
    spawner::function_89a2cd87(#"zombie", &function_9668f61f);
    /#
        spawner::add_archetype_spawn_function(#"zombie", &zombie_utility::updateanimationrate);
    #/
    clientfield::register("actor", "zombie", 1, 1, "int");
    clientfield::register("actor", "pustule_pulse_cf", 1, 2, "int");
    clientfield::register("actor", "stunned_head_fx", 1, 1, "int");
    zombieinterface::registerzombieinterfaceattributes();
}

// Namespace zombiebehavior/zombie
// Params 0, eflags: 0x6 linked
// Checksum 0xf68f86d9, Offset: 0x770
// Size: 0x16fc
function private initzombiebehaviorsandasm() {
    assert(!isdefined(&zombiemoveactionstart) || isscriptfunctionptr(&zombiemoveactionstart));
    assert(!isdefined(&zombiemoveactionupdate) || isscriptfunctionptr(&zombiemoveactionupdate));
    assert(!isdefined(undefined) || isscriptfunctionptr(undefined));
    behaviortreenetworkutility::registerbehaviortreeaction(#"zombiemoveaction", &zombiemoveactionstart, &zombiemoveactionupdate, undefined);
    assert(!isdefined(&function_9b6830c9) || isscriptfunctionptr(&function_9b6830c9));
    assert(!isdefined(undefined) || isscriptfunctionptr(undefined));
    assert(!isdefined(&function_fbdc2cc4) || isscriptfunctionptr(&function_fbdc2cc4));
    behaviortreenetworkutility::registerbehaviortreeaction(#"zombiemeleeaction", &function_9b6830c9, undefined, &function_fbdc2cc4);
    assert(isscriptfunctionptr(&zombietargetservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombietargetservice", &zombietargetservice);
    assert(isscriptfunctionptr(&zombiecrawlercollision));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombiecrawlercollisionservice", &zombiecrawlercollision);
    assert(isscriptfunctionptr(&zombietraversalservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombietraversalservice", &zombietraversalservice);
    assert(isscriptfunctionptr(&zombieisatattackobject));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombieisatattackobject", &zombieisatattackobject);
    assert(isscriptfunctionptr(&zombieshouldattackobject));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombieshouldattackobject", &zombieshouldattackobject);
    assert(isscriptfunctionptr(&zombieshouldmeleecondition));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombieshouldmelee", &zombieshouldmeleecondition);
    assert(isscriptfunctionptr(&zombieshouldjumpmeleecondition));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombieshouldjumpmelee", &zombieshouldjumpmeleecondition);
    assert(isscriptfunctionptr(&zombieshouldjumpunderwatermelee));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombieshouldjumpunderwatermelee", &zombieshouldjumpunderwatermelee);
    assert(isscriptfunctionptr(&zombiegiblegscondition));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombiegiblegscondition", &zombiegiblegscondition);
    assert(isscriptfunctionptr(&zombieshoulddisplaypain));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombieshoulddisplaypain", &zombieshoulddisplaypain);
    assert(isscriptfunctionptr(&iszombiewalking));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"iszombiewalking", &iszombiewalking);
    assert(isscriptfunctionptr(&zombieshouldmovelowg));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombieshouldmovelowg", &zombieshouldmovelowg);
    assert(isscriptfunctionptr(&zombieshouldturn));
    behaviorstatemachine::registerbsmscriptapiinternal(#"zombieshouldturn", &zombieshouldturn);
    assert(isscriptfunctionptr(&function_a716a3af));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_4ba5bc2aba9e7670", &function_a716a3af);
    assert(isscriptfunctionptr(&function_ce53cb2e));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_27d8ceabf090b1aa", &function_ce53cb2e);
    assert(isscriptfunctionptr(&function_30373e53));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_2d1a9c2809fc0d28", &function_30373e53);
    assert(isscriptfunctionptr(&function_1b8c9407));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_4136381d29600bc", &function_1b8c9407);
    assert(isscriptfunctionptr(&function_ecba5a44));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_1732367c7f780c76", &function_ecba5a44);
    assert(isscriptfunctionptr(&function_97aec83a));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_7e8590f0e7d32865", &function_97aec83a);
    assert(isscriptfunctionptr(&function_eb4b29ab));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_781acbf9eb317aa9", &function_eb4b29ab);
    assert(isscriptfunctionptr(&zombieshouldmeleesuicide));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombieshouldmeleesuicide", &zombieshouldmeleesuicide);
    assert(isscriptfunctionptr(&zombiemeleesuicidestart));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombiemeleesuicidestart", &zombiemeleesuicidestart);
    assert(isscriptfunctionptr(&zombiemeleesuicideupdate));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombiemeleesuicideupdate", &zombiemeleesuicideupdate);
    assert(isscriptfunctionptr(&zombiemeleesuicideterminate));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombiemeleesuicideterminate", &zombiemeleesuicideterminate);
    assert(isscriptfunctionptr(&zombieshouldjukecondition));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombieshouldjuke", &zombieshouldjukecondition);
    assert(isscriptfunctionptr(&zombiejukeactionstart));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombiejukeactionstart", &zombiejukeactionstart);
    assert(isscriptfunctionptr(&zombiejukeactionterminate));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombiejukeactionterminate", &zombiejukeactionterminate);
    assert(isscriptfunctionptr(&zombiedeathaction));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombiedeathaction", &zombiedeathaction);
    assert(isscriptfunctionptr(&zombiejuke));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombiejukeservice", &zombiejuke);
    assert(isscriptfunctionptr(&zombiestumble));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombiestumbleservice", &zombiestumble);
    assert(isscriptfunctionptr(&zombieshouldstumblecondition));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombiestumblecondition", &zombieshouldstumblecondition);
    assert(isscriptfunctionptr(&zombiestumbleactionstart));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombiestumbleactionstart", &zombiestumbleactionstart);
    assert(isscriptfunctionptr(&zombieattackobjectstart));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombieattackobjectstart", &zombieattackobjectstart);
    assert(isscriptfunctionptr(&zombieattackobjectterminate));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombieattackobjectterminate", &zombieattackobjectterminate);
    assert(isscriptfunctionptr(&waskilledbyinterdimensionalguncondition));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"waskilledbyinterdimensionalgun", &waskilledbyinterdimensionalguncondition);
    assert(isscriptfunctionptr(&wascrushedbyinterdimensionalgunblackholecondition));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"wascrushedbyinterdimensionalgunblackhole", &wascrushedbyinterdimensionalgunblackholecondition);
    assert(isscriptfunctionptr(&zombieidgundeathupdate));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombieidgundeathupdate", &zombieidgundeathupdate);
    assert(isscriptfunctionptr(&zombieidgundeathupdate));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombievortexpullupdate", &zombieidgundeathupdate);
    assert(isscriptfunctionptr(&zombiehaslegs));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombiehaslegs", &zombiehaslegs);
    assert(isscriptfunctionptr(&zombieshouldproceduraltraverse));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombieshouldproceduraltraverse", &zombieshouldproceduraltraverse);
    assert(isscriptfunctionptr(&zombiemissinglegs));
    behaviorstatemachine::registerbsmscriptapiinternal(#"zombiemissinglegs", &zombiemissinglegs);
    assert(isscriptfunctionptr(&function_f937377));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_31cc70f275702cf6", &function_f937377);
    assert(isscriptfunctionptr(&function_a82068d7));
    behaviorstatemachine::registerbsmscriptapiinternal(#"zombiemoveactionstart", &function_a82068d7);
    assert(isscriptfunctionptr(&function_626edd6b));
    behaviorstatemachine::registerbsmscriptapiinternal(#"zombiemoveactionupdate", &function_626edd6b);
    assert(isscriptfunctionptr(&function_71f7975f));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_5544244cbada6a61", &function_71f7975f);
    animationstatenetwork::registernotetrackhandlerfunction("explode", &function_85a1a8d4);
    animationstatenetwork::registernotetrackhandlerfunction("zombie_melee", &zombienotetrackmeleefire);
    animationstatenetwork::registernotetrackhandlerfunction("crushed", &zombienotetrackcrushfire);
    animationstatenetwork::registeranimationmocomp("mocomp_death_idgun@zombie", &zombieidgundeathmocompstart, undefined, undefined);
    animationstatenetwork::registeranimationmocomp("mocomp_vortex_pull@zombie", &zombieidgundeathmocompstart, undefined, undefined);
    animationstatenetwork::registeranimationmocomp("mocomp_death_idgun_hole@zombie", &zombieidgunholedeathmocompstart, undefined, &zombieidgunholedeathmocompterminate);
    animationstatenetwork::registeranimationmocomp("mocomp_turn@zombie", &zombieturnmocompstart, &zombieturnmocompupdate, &zombieturnmocompterminate);
    animationstatenetwork::registeranimationmocomp("mocomp_melee_jump@zombie", &zombiemeleejumpmocompstart, &zombiemeleejumpmocompupdate, &zombiemeleejumpmocompterminate);
    animationstatenetwork::registeranimationmocomp("mocomp_zombie_idle@zombie", &zombiezombieidlemocompstart, undefined, undefined);
    animationstatenetwork::registeranimationmocomp("mocomp_attack_object@zombie", &zombieattackobjectmocompstart, &zombieattackobjectmocompupdate, undefined);
    animationstatenetwork::registeranimationmocomp("mocomp_teleport_traversal@zombie", &function_cbbae5cb, undefined, undefined);
    animationstatenetwork::registeranimationmocomp("mocomp_zombie_melee@zombie", &function_54d75299, &function_d1474842, &function_b6d297bb);
}

// Namespace zombiebehavior/zombie
// Params 0, eflags: 0x2 linked
// Checksum 0x2778bf37, Offset: 0x1e78
// Size: 0x4a
function archetypezombieblackboardinit() {
    blackboard::createblackboardforentity(self);
    ai::createinterfaceforentity(self);
    self.___archetypeonanimscriptedcallback = &archetypezombieonanimscriptedcallback;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x6 linked
// Checksum 0x623b7efa, Offset: 0x1ed0
// Size: 0x2c
function private archetypezombieonanimscriptedcallback(entity) {
    entity.__blackboard = undefined;
    entity archetypezombieblackboardinit();
}

// Namespace zombiebehavior/zombie
// Params 0, eflags: 0x2 linked
// Checksum 0x8ac788d8, Offset: 0x1f08
// Size: 0x1b4
function function_eb55349f() {
    var_1690db4a = [#"hash_48eda005db2cbdcd", #"hash_16837b6c9b7a1881", #"hash_50fdc172aee097e6", #"hash_ef041655f01ad34", #"hash_502c60e0a94ba04b"];
    if (self.model === #"hash_6aa75847e285712b" || isdefined(self.model) && isinarray(var_1690db4a, self.model)) {
        self clientfield::set("pustule_pulse_cf", 1);
        self callback::function_d8abfc3d(#"on_ai_killed", &function_5b8201e0);
    }
    self callback::function_d8abfc3d(#"on_actor_damage", &function_f771a3f8);
    self callback::function_d8abfc3d(#"hash_7f690ab86160d4f6", &function_5d873c56);
    self callback::function_d8abfc3d(#"hash_40f6b51ae82126a4", &function_d8235fb0);
}

// Namespace zombiebehavior/zombie
// Params 0, eflags: 0x2 linked
// Checksum 0x41cc2c16, Offset: 0x20c8
// Size: 0x62
function function_9668f61f() {
    self.stumble = 0;
    self.var_b1c7a59d = gettime();
    self.var_eabe8c08 = gettime();
    self.var_4db55459 = 0;
    self.var_8198a38c = function_4a33fa36();
    self.var_b91eb4e5 = function_9ec512e6();
}

// Namespace zombiebehavior/zombie
// Params 0, eflags: 0x2 linked
// Checksum 0x703f939, Offset: 0x2138
// Size: 0x2c
function function_4a33fa36() {
    if (isdefined(self.health)) {
        return (0.15 * self.health);
    }
    return 30;
}

// Namespace zombiebehavior/zombie
// Params 0, eflags: 0x2 linked
// Checksum 0x4a19f4e2, Offset: 0x2170
// Size: 0x2c
function function_9ec512e6() {
    if (isdefined(self.health)) {
        return (0.075 * self.health);
    }
    return 15;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0xea91f292, Offset: 0x21a8
// Size: 0x2c
function function_5b8201e0(*params) {
    self clientfield::set("pustule_pulse_cf", 0);
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0xca22051b, Offset: 0x21e0
// Size: 0x2c
function function_5d873c56(*params) {
    self clientfield::set("pustule_pulse_cf", 2);
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0x48f4b06, Offset: 0x2218
// Size: 0x2c
function function_d8235fb0(*params) {
    self clientfield::set("pustule_pulse_cf", 1);
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0x5a8265f9, Offset: 0x2250
// Size: 0x2ec
function function_f771a3f8(params) {
    switch (params.smeansofdeath) {
    case #"mod_explosive":
    case #"mod_grenade":
    case #"mod_projectile":
    case #"mod_grenade_splash":
    case #"mod_projectile_splash":
        if (!is_true(params.weapon.dostun) && function_84b43711(params.weapon)) {
            self zombie_utility::setup_zombie_knockdown(params.vdamageorigin);
        }
        break;
    }
    if (isdefined(self.var_b1c7a59d) && !is_true(self.missinglegs)) {
        if (self.var_b1c7a59d < gettime()) {
            self.var_b1c7a59d = gettime() + 5000;
            self.var_4db55459 = 0;
            self.stumble = 0;
        }
        self.var_4db55459 += params.idamage;
        if (isdefined(params.shitloc)) {
            if (isinarray(array("helmet", "head", "neck"), params.shitloc)) {
                function_da30b556(self);
            } else if (isinarray(array("right_leg_upper", "left_leg_upper", "right_leg_lower", "left_leg_lower", "right_foot", "left_foot"), params.shitloc)) {
                if (self.var_4db55459 >= self.var_b91eb4e5 && self.var_eabe8c08 < gettime()) {
                    function_da30b556(self);
                }
            } else if (self.var_4db55459 >= self.var_8198a38c && self.var_eabe8c08 < gettime()) {
                function_da30b556(self);
            }
            return;
        }
        if (self.var_4db55459 >= self.var_8198a38c && self.var_eabe8c08 < gettime()) {
            function_da30b556(self);
        }
    }
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0xdc8673b0, Offset: 0x2548
// Size: 0x52
function function_84b43711(weapon) {
    if (weapon.name === #"ray_gun" || weapon.name === #"ray_gun_upgraded") {
        return false;
    }
    return true;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0xb2587444, Offset: 0x25a8
// Size: 0x46
function function_da30b556(entity) {
    entity.stumble = 1;
    entity.var_b1c7a59d = gettime() + 5000;
    entity.var_eabe8c08 = gettime() + 1000;
    entity.var_4db55459 = 0;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x6 linked
// Checksum 0xe312d819, Offset: 0x25f8
// Size: 0x4e
function private function_ce53cb2e(entity) {
    if (entity.stumble === 1 && is_false(entity.var_67f98db0)) {
        return 1;
    }
    return 0;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x6 linked
// Checksum 0xf9724cf4, Offset: 0x2650
// Size: 0x42
function private function_30373e53(entity) {
    entity.stumble = 0;
    entity.var_b1c7a59d = gettime() + 5000;
    entity.var_eabe8c08 = gettime() + 1000;
    entity.var_4db55459 = 0;
}

// Namespace zombiebehavior/zombie
// Params 0, eflags: 0x2 linked
// Checksum 0x8d6a18fb, Offset: 0x26a0
// Size: 0x1a
function bb_getvarianttype() {
    if (isdefined(self.variant_type)) {
        return self.variant_type;
    }
    return 0;
}

// Namespace zombiebehavior/zombie
// Params 0, eflags: 0x2 linked
// Checksum 0x48c66019, Offset: 0x26c8
// Size: 0x1a
function bb_getlowgravityvariant() {
    if (isdefined(self.low_gravity_variant)) {
        return self.low_gravity_variant;
    }
    return 0;
}

// Namespace zombiebehavior/zombie
// Params 0, eflags: 0x6 linked
// Checksum 0x89530641, Offset: 0x26f0
// Size: 0x5a
function private function_a95e9277() {
    assert(self.archetype == #"zombie");
    speed = self function_28e7d252();
    return speed;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0x55ca2afd, Offset: 0x2758
// Size: 0x24
function iszombiewalking(entity) {
    return !is_true(entity.missinglegs);
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0xa5a74478, Offset: 0x2788
// Size: 0x84
function zombieshoulddisplaypain(entity) {
    if (is_true(entity.suicidaldeath)) {
        return false;
    }
    if (!hasasm(entity) || entity function_ebbebf56() < 1) {
        return false;
    }
    return !is_true(entity.missinglegs);
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0x142d8363, Offset: 0x2818
// Size: 0x58
function zombieshouldjukecondition(entity) {
    if (isdefined(entity.juke) && (entity.juke == "left" || entity.juke == "right")) {
        return true;
    }
    return false;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0x40ccf9a9, Offset: 0x2878
// Size: 0x24
function zombieshouldstumblecondition(entity) {
    if (isdefined(entity.stumble)) {
        return true;
    }
    return false;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x6 linked
// Checksum 0x57768dd1, Offset: 0x28a8
// Size: 0xaa
function private zombiejukeactionstart(entity) {
    entity setblackboardattribute("_juke_direction", entity.juke);
    if (isdefined(entity.jukedistance)) {
        entity setblackboardattribute("_juke_distance", entity.jukedistance);
    } else {
        entity setblackboardattribute("_juke_distance", "short");
    }
    entity.jukedistance = undefined;
    entity.juke = undefined;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x6 linked
// Checksum 0xa1e24117, Offset: 0x2960
// Size: 0x24
function private zombiejukeactionterminate(entity) {
    entity clearpath();
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x6 linked
// Checksum 0x5e4b8f22, Offset: 0x2990
// Size: 0x16
function private zombiestumbleactionstart(entity) {
    entity.stumble = undefined;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x6 linked
// Checksum 0x4299b97e, Offset: 0x29b0
// Size: 0x1a
function private zombieattackobjectstart(entity) {
    entity.is_inert = 1;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x6 linked
// Checksum 0xd5ce86db, Offset: 0x29d8
// Size: 0x16
function private zombieattackobjectterminate(entity) {
    entity.is_inert = 0;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0x1c2490c2, Offset: 0x29f8
// Size: 0x44
function zombiegiblegscondition(entity) {
    return gibserverutils::isgibbed(entity, 256) || gibserverutils::isgibbed(entity, 128);
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0x45bbf03a, Offset: 0x2a48
// Size: 0x1e
function function_f937377(entity) {
    entity.ai.var_80045105 = gettime();
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0xfde83ae7, Offset: 0x2a70
// Size: 0x5cc
function zombienotetrackmeleefire(entity) {
    if (is_true(entity.marked_for_death)) {
        return;
    }
    entity.melee_cooldown = gettime() + getdvarfloat(#"scr_zombiemeleecooldown", 1) * 1000 * (isdefined(entity.var_ce2dd587) ? entity.var_ce2dd587 : 1);
    if (is_true(entity.aat_turned)) {
        if (isdefined(entity.enemy) && isalive(entity.enemy) && !isplayer(entity.enemy)) {
            if (isdefined(entity.melee_distance_check)) {
                if (!entity [[ entity.melee_distance_check ]](entity.enemy)) {
                    return;
                }
            }
            if (isdefined(entity.var_16d0eb06) && is_true(entity.enemy.var_6d23c054)) {
                if (isdefined(entity.var_443d78cc)) {
                    e_attacker = entity.var_443d78cc;
                } else {
                    e_attacker = entity;
                }
                entity.enemy dodamage(entity.var_16d0eb06, entity.origin, e_attacker, entity);
                if (!isalive(entity.enemy)) {
                    gibserverutils::gibhead(entity.enemy, 0);
                    entity.enemy zombie_utility::gib_random_parts();
                    entity.enemy.var_7105092c = 1;
                    entity.n_aat_turned_zombie_kills++;
                }
            } else if (is_true(entity.enemy.var_6d23c054) && is_true(entity.enemy.allowdeath)) {
                if (isdefined(entity.var_443d78cc)) {
                    e_attacker = entity.var_443d78cc;
                } else {
                    e_attacker = entity;
                }
                gibserverutils::gibhead(entity.enemy, 0);
                entity.enemy zombie_utility::gib_random_parts();
                entity.enemy.var_7105092c = 1;
                entity.enemy kill(entity.enemy.origin, e_attacker, entity, undefined, undefined, 1);
                entity.n_aat_turned_zombie_kills++;
            } else if (is_true(entity.enemy.canbetargetedbyturnedzombies)) {
                entity melee();
            }
            entity callback::callback(#"on_ai_melee");
        }
        return;
    }
    if (isdefined(entity.enemy) && is_true(entity.enemy.ignoreme) && !isdefined(entity.attackable)) {
        return;
    }
    if (isdefined(entity.ai.var_80045105)) {
        /#
            record3dtext("MOD_PROJECTILE_SPLASH" + gettime() - entity.ai.var_80045105, self.origin, (1, 0, 0), "<unknown string>", entity);
        #/
    }
    if (isdefined(entity.custom_melee_fire)) {
        entity [[ entity.custom_melee_fire ]]();
    } else if (isdefined(level.custom_melee_fire)) {
        entity [[ level.custom_melee_fire ]]();
    } else {
        entity melee();
    }
    /#
        record3dtext("<unknown string>", entity.origin, (1, 0, 0), "<unknown string>", entity);
        if (isdefined(entity.enemy)) {
            eyepos = entity geteye();
            record3dtext("<unknown string>" + distance2d(eyepos, entity.enemy.origin), entity.origin, (1, 0, 0), "<unknown string>", entity);
        }
    #/
    if (zombieshouldattackobject(entity)) {
        if (isdefined(level.attackablecallback)) {
            entity.attackable [[ level.attackablecallback ]](entity);
        }
    }
    entity callback::callback(#"on_ai_melee");
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0xc2e1e4ba, Offset: 0x3048
// Size: 0x24
function zombienotetrackcrushfire(entity) {
    entity delete();
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0xcd9e02f2, Offset: 0x3078
// Size: 0x250
function zombietargetservice(entity) {
    if (isdefined(entity.enablepushtime)) {
        if (gettime() >= entity.enablepushtime) {
            entity collidewithactors(1);
            entity.enablepushtime = undefined;
        }
    }
    if (is_true(entity.disabletargetservice)) {
        return 0;
    }
    if (is_true(entity.ignoreall)) {
        return 0;
    }
    specifictarget = undefined;
    if (isdefined(level.zombielevelspecifictargetcallback)) {
        specifictarget = [[ level.zombielevelspecifictargetcallback ]]();
    }
    if (isdefined(specifictarget)) {
        entity setgoal(specifictarget.origin);
        return;
    }
    player = zombie_utility::get_closest_valid_player(self.origin, self.ignore_player);
    if (!isdefined(player)) {
        if (isdefined(self.ignore_player)) {
            if (isdefined(level._should_skip_ignore_player_logic) && [[ level._should_skip_ignore_player_logic ]]()) {
                return 0;
            }
            self.ignore_player = [];
        }
        self setgoal(self.origin);
        return 0;
    }
    if (isdefined(player.last_valid_position)) {
        if (!is_true(self.zombie_do_not_update_goal)) {
            if (is_true(level.zombie_use_zigzag_path)) {
                entity zombieupdatezigzaggoal();
            } else {
                entity setgoal(player.last_valid_position);
            }
        }
        return 1;
    }
    if (!is_true(self.zombie_do_not_update_goal)) {
        entity setgoal(entity.origin);
    }
    return 0;
}

// Namespace zombiebehavior/zombie
// Params 0, eflags: 0x2 linked
// Checksum 0x86e7d15c, Offset: 0x32d0
// Size: 0x5bc
function zombieupdatezigzaggoal() {
    aiprofile_beginentry("zombieUpdateZigZagGoal");
    shouldrepath = 0;
    if (!shouldrepath && isdefined(self.favoriteenemy)) {
        if (!isdefined(self.nextgoalupdate) || self.nextgoalupdate <= gettime()) {
            shouldrepath = 1;
        } else if (distancesquared(self.origin, self.favoriteenemy.origin) <= sqr(250)) {
            shouldrepath = 1;
        } else if (isdefined(self.pathgoalpos)) {
            distancetogoalsqr = distancesquared(self.origin, self.pathgoalpos);
            shouldrepath = distancetogoalsqr < sqr(72);
        }
    }
    if (is_true(self.keep_moving)) {
        if (gettime() > self.keep_moving_time) {
            self.keep_moving = 0;
        }
    }
    if (shouldrepath) {
        goalpos = self.favoriteenemy.origin;
        if (isdefined(self.favoriteenemy.last_valid_position)) {
            goalpos = self.favoriteenemy.last_valid_position;
        }
        self setgoal(goalpos);
        if (distancesquared(self.origin, goalpos) > sqr(250)) {
            self.keep_moving = 1;
            self.keep_moving_time = gettime() + 250;
            path = self calcapproximatepathtoposition(goalpos, 0);
            /#
                if (getdvarint(#"ai_debugzigzag", 0)) {
                    for (index = 1; index < path.size; index++) {
                        recordline(path[index - 1], path[index], (1, 0.5, 0), "<unknown string>", self);
                    }
                }
            #/
            if (isdefined(level._zombiezigzagdistancemin) && isdefined(level._zombiezigzagdistancemax)) {
                min = level._zombiezigzagdistancemin;
                max = level._zombiezigzagdistancemax;
            } else {
                min = 240;
                max = 600;
            }
            deviationdistance = randomintrange(min, max);
            segmentlength = 0;
            for (index = 1; index < path.size; index++) {
                currentseglength = distance(path[index - 1], path[index]);
                if (segmentlength + currentseglength > deviationdistance) {
                    remaininglength = deviationdistance - segmentlength;
                    seedposition = path[index - 1] + vectornormalize(path[index] - path[index - 1]) * remaininglength;
                    /#
                        recordcircle(seedposition, 2, (1, 0.5, 0), "<unknown string>", self);
                    #/
                    innerzigzagradius = 0;
                    outerzigzagradius = 96;
                    queryresult = positionquery_source_navigation(seedposition, innerzigzagradius, outerzigzagradius, 0.5 * 72, 16, self, 16);
                    positionquery_filter_inclaimedlocation(queryresult, self);
                    if (queryresult.data.size > 0) {
                        point = queryresult.data[randomint(queryresult.data.size)];
                        self setgoal(point.origin);
                    }
                    break;
                }
                segmentlength += currentseglength;
            }
        }
        if (isdefined(level._zombiezigzagtimemin) && isdefined(level._zombiezigzagtimemax)) {
            mintime = level._zombiezigzagtimemin;
            maxtime = level._zombiezigzagtimemax;
        } else {
            mintime = 2500;
            maxtime = 3500;
        }
        self.nextgoalupdate = gettime() + randomintrange(mintime, maxtime);
    }
    aiprofile_endentry();
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0xf99760be, Offset: 0x3898
// Size: 0x1e6
function zombiecrawlercollision(entity) {
    if (!is_true(entity.missinglegs) && !is_true(entity.knockdown)) {
        return false;
    }
    if (isdefined(entity.dontpushtime)) {
        if (gettime() < entity.dontpushtime) {
            return true;
        }
    }
    if (!isdefined(level.zombie_team)) {
        return false;
    }
    zombies = getaiteamarray(level.zombie_team);
    foreach (zombie in zombies) {
        if (zombie == entity) {
            continue;
        }
        if (is_true(zombie.missinglegs) || is_true(zombie.knockdown)) {
            continue;
        }
        dist_sq = distancesquared(entity.origin, zombie.origin);
        if (dist_sq < 14400) {
            entity collidewithactors(0);
            entity.dontpushtime = gettime() + 2000;
            return true;
        }
    }
    entity collidewithactors(1);
    return false;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0x73da2704, Offset: 0x3a88
// Size: 0x3c
function zombietraversalservice(entity) {
    if (isdefined(entity.traversestartnode)) {
        entity collidewithactors(0);
        return true;
    }
    return false;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0x22ecdda9, Offset: 0x3ad0
// Size: 0x17e
function zombieisatattackobject(entity) {
    if (is_true(entity.missinglegs)) {
        return false;
    }
    if (isdefined(entity.enemy_override)) {
        return false;
    }
    if (isdefined(entity.favoriteenemy) && is_true(entity.favoriteenemy.b_is_designated_target)) {
        return false;
    }
    if (is_true(entity.aat_turned)) {
        return false;
    }
    if (isdefined(entity.attackable) && is_true(entity.attackable.is_active)) {
        if (!isdefined(entity.attackable_slot)) {
            return false;
        }
        dist = distance2dsquared(entity.origin, entity.attackable_slot.origin);
        if (dist < 256) {
            height_offset = abs(entity.origin[2] - entity.attackable_slot.origin[2]);
            if (height_offset < 32) {
                entity.is_at_attackable = 1;
                return true;
            }
        }
    }
    return false;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0x73e349bb, Offset: 0x3c58
// Size: 0xee
function zombieshouldattackobject(entity) {
    if (is_true(entity.missinglegs)) {
        return false;
    }
    if (isdefined(entity.enemy_override)) {
        return false;
    }
    if (isdefined(entity.favoriteenemy) && is_true(entity.favoriteenemy.b_is_designated_target)) {
        return false;
    }
    if (is_true(entity.aat_turned)) {
        return false;
    }
    if (isdefined(entity.attackable) && is_true(entity.attackable.is_active)) {
        if (is_true(entity.is_at_attackable)) {
            return true;
        }
    }
    return false;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0x59f07985, Offset: 0x3d50
// Size: 0x2c8
function function_997f1224(entity) {
    var_ac8727d2 = 0;
    var_b0027f10 = 0;
    var_565fd664 = 0;
    if (isdefined(entity.var_46fc9994.time) && gettime() - self.var_46fc9994.time < int(3 * 1000)) {
        var_ac8727d2 = !isdefined(entity.var_46fc9994.hit_ent);
        var_b0027f10 = isdefined(entity.var_46fc9994.var_7befcf25) && entity.var_46fc9994.var_7befcf25 > sqr(entity.meleeweapon.aimeleerange);
        var_565fd664 = isdefined(entity.var_46fc9994.position) && distance2dsquared(entity.origin, entity.var_46fc9994.position) < sqr(entity getpathfindingradius());
    }
    if (entity.archetype == #"zombie" && !isdefined(entity.var_9fde8624) && !is_true(self.missinglegs) && !(var_ac8727d2 && var_b0027f10 && var_565fd664)) {
        if (entity.zombie_move_speed == "walk") {
            return sqr(100);
        } else if (entity.zombie_move_speed == "run") {
            return sqr(120);
        }
        return sqr(90);
    }
    if (isdefined(entity.meleeweapon) && entity.meleeweapon !== level.weaponnone) {
        meleedistsq = entity.meleeweapon.aimeleerange * entity.meleeweapon.aimeleerange;
    }
    if (!isdefined(meleedistsq)) {
        return sqr(100);
    }
    return meleedistsq;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0x13b18199, Offset: 0x4020
// Size: 0x366
function zombieshouldmeleecondition(entity) {
    if (isdefined(entity.enemy_override)) {
        return false;
    }
    if (!isdefined(entity.enemy)) {
        return false;
    }
    if (is_true(entity.marked_for_death)) {
        return false;
    }
    if (is_true(entity.ignoremelee)) {
        return false;
    }
    if (abs(entity.origin[2] - entity.enemy.origin[2]) > (isdefined(entity.var_737e8510) ? entity.var_737e8510 : 64)) {
        return false;
    }
    meleedistsq = function_997f1224(entity);
    test_origin = entity.enemy.origin;
    if (isdefined(level.var_ee27c905) && isplayer(entity.enemy) && entity.enemy isinvehicle()) {
        enemy_vehicle = entity.enemy getvehicleoccupied();
        test_origin = [[ level.var_ee27c905 ]](enemy_vehicle, entity.enemy);
        if (!isdefined(test_origin)) {
            test_origin = entity.enemy.origin;
        }
    }
    if (distancesquared(entity.origin, test_origin) > meleedistsq) {
        return false;
    }
    yawtoenemy = angleclamp180(entity.angles[1] - vectortoangles(entity.enemy.origin - entity.origin)[1]);
    if (abs(yawtoenemy) > (isdefined(entity.var_1c0eb62a) ? entity.var_1c0eb62a : 60)) {
        return false;
    }
    if (!entity cansee(entity.enemy)) {
        return false;
    }
    if (distancesquared(entity.origin, entity.enemy.origin) < sqr(40)) {
        return true;
    }
    if (!tracepassedonnavmesh(entity.origin, isdefined(entity.enemy.last_valid_position) ? entity.enemy.last_valid_position : entity.enemy.origin, entity.enemy getpathfindingradius())) {
        return false;
    }
    return true;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0x6d9218a3, Offset: 0x4390
// Size: 0xc2
function function_1b8c9407(entity) {
    /#
        if (getdvarint(#"hash_1a5939d8c37a2e07", 0)) {
            return false;
        }
    #/
    var_9fce1294 = blackboard::getblackboardevents("zombie_full_pain");
    if (isdefined(var_9fce1294) && var_9fce1294.size) {
        return false;
    }
    if (is_true(self.var_67f98db0)) {
        return false;
    }
    if (isdefined(level.var_eeb66e64) && ![[ level.var_eeb66e64 ]](entity)) {
        return false;
    }
    return true;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x6 linked
// Checksum 0x5fddfb9c, Offset: 0x4460
// Size: 0x6c
function private function_ecba5a44(entity) {
    var_1e466fbb = spawnstruct();
    var_1e466fbb.enemy = entity.enemy;
    blackboard::addblackboardevent("zombie_full_pain", var_1e466fbb, randomintrange(6000, 9000));
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x6 linked
// Checksum 0xf825991c, Offset: 0x44d8
// Size: 0x3e
function private function_97aec83a(*entity) {
    /#
        if (getdvarint(#"hash_30c850c9bcd873bb", 0)) {
            return true;
        }
    #/
    return false;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x6 linked
// Checksum 0x2da9e83c, Offset: 0x4520
// Size: 0x3e
function private function_eb4b29ab(*entity) {
    if (getdvarint(#"hash_174d05033246950b", 1)) {
        return true;
    }
    return false;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x6 linked
// Checksum 0x55ef173b, Offset: 0x4568
// Size: 0x22
function private zombieshouldmovelowg(entity) {
    return is_true(entity.low_gravity);
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x6 linked
// Checksum 0x83ededc3, Offset: 0x4598
// Size: 0x2c
function private zombieshouldturn(entity) {
    return !isdefined(entity.turn_cooldown) || entity.turn_cooldown < gettime();
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x6 linked
// Checksum 0x6f8db770, Offset: 0x45d0
// Size: 0x22
function private function_a716a3af(entity) {
    entity.turn_cooldown = gettime() + 1000;
    return true;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0x32dc4407, Offset: 0x4600
// Size: 0x358
function zombieshouldjumpmeleecondition(entity) {
    if (!is_true(entity.low_gravity)) {
        return false;
    }
    if (isdefined(entity.enemy_override)) {
        return false;
    }
    if (!isdefined(entity.enemy)) {
        return false;
    }
    if (isdefined(entity.marked_for_death)) {
        return false;
    }
    if (is_true(entity.ignoremelee)) {
        return false;
    }
    if (entity.enemy isonground()) {
        if (isplayer(entity.enemy) && entity.enemy isplayerswimming()) {
            waterheight = getwaterheight(entity.enemy.origin);
            if (waterheight - entity.enemy.origin[2] < 24) {
                return false;
            }
        } else {
            return false;
        }
    }
    jumpchance = getdvarfloat(#"zmmeleejumpchance", 0.5);
    if (entity getentitynumber() % 10 / 10 > jumpchance) {
        return false;
    }
    predictedposition = entity.enemy.origin + entity.enemy getvelocity() * float(function_60d95f53()) / 1000 * 2;
    jumpdistancesq = pow(getdvarint(#"zmmeleejumpdistance", 180), 2);
    if (distance2dsquared(entity.origin, predictedposition) > jumpdistancesq) {
        return false;
    }
    yawtoenemy = angleclamp180(entity.angles[1] - vectortoangles(entity.enemy.origin - entity.origin)[1]);
    if (abs(yawtoenemy) > 60) {
        return false;
    }
    heighttoenemy = entity.enemy.origin[2] - entity.origin[2];
    if (heighttoenemy <= getdvarint(#"zmmeleejumpheightdifference", 60)) {
        return false;
    }
    return true;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0xf66d5864, Offset: 0x4960
// Size: 0x230
function zombieshouldjumpunderwatermelee(entity) {
    if (isdefined(entity.enemy_override)) {
        return false;
    }
    if (is_true(entity.ignoreall)) {
        return false;
    }
    if (!isdefined(entity.enemy)) {
        return false;
    }
    if (isdefined(entity.marked_for_death)) {
        return false;
    }
    if (is_true(entity.ignoremelee)) {
        return false;
    }
    if (entity.enemy isonground()) {
        return false;
    }
    if (entity depthinwater() < 48) {
        return false;
    }
    jumpdistancesq = pow(getdvarint(#"zmmeleewaterjumpdistance", 64), 2);
    if (distance2dsquared(entity.origin, entity.enemy.origin) > jumpdistancesq) {
        return false;
    }
    yawtoenemy = angleclamp180(entity.angles[1] - vectortoangles(entity.enemy.origin - entity.origin)[1]);
    if (abs(yawtoenemy) > 60) {
        return false;
    }
    heighttoenemy = entity.enemy.origin[2] - entity.origin[2];
    if (heighttoenemy <= getdvarint(#"zmmeleejumpunderwaterheightdifference", 48)) {
        return false;
    }
    return true;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0x2382d957, Offset: 0x4b98
// Size: 0x17a
function zombiestumble(entity) {
    if (is_true(entity.missinglegs)) {
        return false;
    }
    if (!is_true(entity.canstumble)) {
        return false;
    }
    if (!isdefined(entity.zombie_move_speed) || entity.zombie_move_speed != "sprint") {
        return false;
    }
    if (isdefined(entity.stumble)) {
        return false;
    }
    if (!isdefined(entity.next_stumble_time)) {
        entity.next_stumble_time = gettime() + randomintrange(9000, 12000);
    }
    if (gettime() > entity.next_stumble_time) {
        if (randomint(100) < 5) {
            closestplayer = arraygetclosest(entity.origin, level.players);
            if (distancesquared(closestplayer.origin, entity.origin) > 50000) {
                if (isdefined(entity.next_juke_time)) {
                    entity.next_juke_time = undefined;
                }
                entity.next_stumble_time = undefined;
                entity.stumble = 1;
                return true;
            }
        }
    }
    return false;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0x375a5d11, Offset: 0x4d20
// Size: 0x392
function zombiejuke(entity) {
    if (!entity ai::has_behavior_attribute("can_juke")) {
        return 0;
    }
    if (!entity ai::get_behavior_attribute("can_juke")) {
        return 0;
    }
    if (is_true(entity.missinglegs)) {
        return 0;
    }
    if (entity aiutility::function_cc26899f() != "locomotion_speed_walk") {
        if (entity ai::has_behavior_attribute("spark_behavior") && !entity ai::get_behavior_attribute("spark_behavior")) {
            return 0;
        }
    }
    if (isdefined(entity.juke)) {
        return 0;
    }
    if (!isdefined(entity.next_juke_time)) {
        entity.next_juke_time = gettime() + randomintrange(7500, 9500);
    }
    if (gettime() > entity.next_juke_time) {
        entity.next_juke_time = undefined;
        if (randomint(100) < 25 || entity ai::has_behavior_attribute("spark_behavior") && entity ai::get_behavior_attribute("spark_behavior")) {
            if (isdefined(entity.next_stumble_time)) {
                entity.next_stumble_time = undefined;
            }
            forwardoffset = 15;
            entity.ignorebackwardposition = 1;
            if (math::cointoss()) {
                jukedistance = 101;
                entity.jukedistance = "long";
                switch (entity aiutility::function_cc26899f()) {
                case #"locomotion_speed_run":
                case #"locomotion_speed_walk":
                    forwardoffset = 122;
                    break;
                case #"locomotion_speed_sprint":
                    forwardoffset = 129;
                    break;
                }
                entity.juke = aiutility::calculatejukedirection(entity, forwardoffset, jukedistance);
            }
            if (!isdefined(entity.juke) || entity.juke == "forward") {
                jukedistance = 69;
                entity.jukedistance = "short";
                switch (entity aiutility::function_cc26899f()) {
                case #"locomotion_speed_run":
                case #"locomotion_speed_walk":
                    forwardoffset = 127;
                    break;
                case #"locomotion_speed_sprint":
                    forwardoffset = 148;
                    break;
                }
                entity.juke = aiutility::calculatejukedirection(entity, forwardoffset, jukedistance);
                if (entity.juke == "forward") {
                    entity.juke = undefined;
                    entity.jukedistance = undefined;
                    return 0;
                }
            }
        }
    }
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0x9ee3f3e5, Offset: 0x50c0
// Size: 0xe
function zombiedeathaction(*entity) {
    return undefined;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0xc3a45059, Offset: 0x50d8
// Size: 0x50
function waskilledbyinterdimensionalguncondition(entity) {
    if (isdefined(entity.interdimensional_gun_kill) && !isdefined(entity.killby_interdimensional_gun_hole) && isalive(entity)) {
        return true;
    }
    return false;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0xdb01a9e4, Offset: 0x5130
// Size: 0x24
function wascrushedbyinterdimensionalgunblackholecondition(entity) {
    if (isdefined(entity.killby_interdimensional_gun_hole)) {
        return true;
    }
    return false;
}

// Namespace zombiebehavior/zombie
// Params 5, eflags: 0x2 linked
// Checksum 0x56ec5bb9, Offset: 0x5160
// Size: 0xae
function zombieidgundeathmocompstart(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompduration orientmode("face angle", mocompduration.angles[1]);
    mocompduration animmode("noclip");
    mocompduration.pushable = 0;
    mocompduration.blockingpain = 1;
    mocompduration pathmode("dont move");
    mocompduration.hole_pull_speed = 0;
}

// Namespace zombiebehavior/zombie
// Params 5, eflags: 0x2 linked
// Checksum 0x2c678467, Offset: 0x5218
// Size: 0xb6
function zombiemeleejumpmocompstart(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompduration orientmode("face enemy");
    mocompduration animmode("noclip", 0);
    mocompduration.pushable = 0;
    mocompduration.blockingpain = 1;
    mocompduration.clamptonavmesh = 0;
    mocompduration collidewithactors(0);
    mocompduration.jumpstartposition = mocompduration.origin;
}

// Namespace zombiebehavior/zombie
// Params 5, eflags: 0x2 linked
// Checksum 0xc0d4bad4, Offset: 0x52d8
// Size: 0x304
function zombiemeleejumpmocompupdate(entity, mocompanim, mocompanimblendouttime, *mocompanimflag, mocompduration) {
    normalizedtime = (mocompanim getanimtime(mocompanimblendouttime) * getanimlength(mocompanimblendouttime) + mocompanimflag) / mocompduration;
    if (normalizedtime > 0.5) {
        mocompanim orientmode("face angle", mocompanim.angles[1]);
    }
    speed = 5;
    if (isdefined(mocompanim.zombie_move_speed)) {
        switch (mocompanim.zombie_move_speed) {
        case #"walk":
            speed = 5;
            break;
        case #"run":
            speed = 6;
            break;
        case #"sprint":
            speed = 7;
            break;
        }
    }
    newposition = mocompanim.origin + anglestoforward(mocompanim.angles) * speed;
    newtestposition = (newposition[0], newposition[1], mocompanim.jumpstartposition[2]);
    newvalidposition = getclosestpointonnavmesh(newtestposition, 12, 20);
    if (isdefined(newvalidposition)) {
        newvalidposition = (newvalidposition[0], newvalidposition[1], mocompanim.origin[2]);
    } else {
        newvalidposition = mocompanim.origin;
    }
    if (!is_true(mocompanim.var_7c16e514)) {
        waterheight = getwaterheight(mocompanim.origin);
        if (newvalidposition[2] + mocompanim function_6a9ae71() > waterheight) {
            newvalidposition = (newvalidposition[0], newvalidposition[1], waterheight - mocompanim function_6a9ae71());
        }
    }
    groundpoint = getclosestpointonnavmesh(newvalidposition, 12, 20);
    if (isdefined(groundpoint) && groundpoint[2] > newvalidposition[2]) {
        newvalidposition = (newvalidposition[0], newvalidposition[1], groundpoint[2]);
    }
    mocompanim forceteleport(newvalidposition);
}

// Namespace zombiebehavior/zombie
// Params 5, eflags: 0x2 linked
// Checksum 0x87ed9dbe, Offset: 0x55e8
// Size: 0xb4
function zombiemeleejumpmocompterminate(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompduration.pushable = 1;
    mocompduration.blockingpain = 0;
    mocompduration.clamptonavmesh = 1;
    mocompduration collidewithactors(1);
    groundpoint = getclosestpointonnavmesh(mocompduration.origin, 12);
    if (isdefined(groundpoint)) {
        mocompduration forceteleport(groundpoint);
    }
}

// Namespace zombiebehavior/zombie
// Params 5, eflags: 0x2 linked
// Checksum 0x515421d7, Offset: 0x56a8
// Size: 0x254
function zombieidgundeathupdate(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    if (!isdefined(mocompduration.killby_interdimensional_gun_hole)) {
        entity_eye = mocompduration geteye();
        if (mocompduration.b_vortex_repositioned !== 1) {
            mocompduration.b_vortex_repositioned = 1;
            v_nearest_navmesh_point = getclosestpointonnavmesh(mocompduration.damageorigin, 36, 15);
            if (isdefined(v_nearest_navmesh_point)) {
                f_distance = distance(mocompduration.damageorigin, v_nearest_navmesh_point);
                if (f_distance < 41) {
                    mocompduration.damageorigin += (0, 0, 36);
                }
            }
        }
        entity_center = mocompduration.origin + (entity_eye - mocompduration.origin) / 2;
        flyingdir = mocompduration.damageorigin - entity_center;
        lengthfromhole = length(flyingdir);
        if (lengthfromhole < mocompduration.hole_pull_speed) {
            if (!is_true(mocompduration.var_6581b296)) {
                mocompduration thread function_1ad2970();
                mocompduration.var_6581b296 = 1;
            }
            return;
        }
        if (mocompduration.hole_pull_speed < 12) {
            mocompduration.hole_pull_speed += 0.5;
            if (mocompduration.hole_pull_speed > 12) {
                mocompduration.hole_pull_speed = 12;
            }
        }
        flyingdir = vectornormalize(flyingdir);
        mocompduration forceteleport(mocompduration.origin + flyingdir * mocompduration.hole_pull_speed);
    }
}

// Namespace zombiebehavior/zombie
// Params 0, eflags: 0x2 linked
// Checksum 0xcf509f9a, Offset: 0x5908
// Size: 0xe4
function function_1ad2970() {
    waitframe(1);
    if (!isdefined(self)) {
        return;
    }
    self.killby_interdimensional_gun_hole = 1;
    self.allowdeath = 1;
    self.takedamage = 1;
    self.aioverridedamage = undefined;
    self.magic_bullet_shield = 0;
    level notify(#"interdimensional_kill", {#entity:self});
    if (isdefined(self.interdimensional_gun_weapon) && isdefined(self.interdimensional_gun_attacker)) {
        self kill(self.origin, self.interdimensional_gun_attacker, self.interdimensional_gun_attacker, self.interdimensional_gun_weapon);
        return;
    }
    self kill(self.origin);
}

// Namespace zombiebehavior/zombie
// Params 5, eflags: 0x2 linked
// Checksum 0xcd2c5d11, Offset: 0x59f8
// Size: 0x7e
function zombieidgunholedeathmocompstart(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompduration orientmode("face angle", mocompduration.angles[1]);
    mocompduration animmode("noclip");
    mocompduration.pushable = 0;
}

// Namespace zombiebehavior/zombie
// Params 5, eflags: 0x2 linked
// Checksum 0x186b5786, Offset: 0x5a80
// Size: 0x5c
function zombieidgunholedeathmocompterminate(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    if (!is_true(mocompduration.interdimensional_gun_kill_vortex_explosion)) {
        mocompduration hide();
    }
}

// Namespace zombiebehavior/zombie
// Params 5, eflags: 0x6 linked
// Checksum 0x6cff1815, Offset: 0x5ae8
// Size: 0x74
function private zombieturnmocompstart(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompduration orientmode("face angle", mocompduration.angles[1]);
    mocompduration animmode("angle deltas", 0);
}

// Namespace zombiebehavior/zombie
// Params 5, eflags: 0x6 linked
// Checksum 0x7e18e7bd, Offset: 0x5b68
// Size: 0xa4
function private zombieturnmocompupdate(entity, mocompanim, mocompanimblendouttime, *mocompanimflag, mocompduration) {
    normalizedtime = (mocompanim getanimtime(mocompanimblendouttime) + mocompanimflag) / mocompduration;
    if (normalizedtime > 0.25) {
        mocompanim orientmode("face motion");
        mocompanim animmode("normal", 0);
    }
}

// Namespace zombiebehavior/zombie
// Params 5, eflags: 0x6 linked
// Checksum 0x4783763d, Offset: 0x5c18
// Size: 0x6c
function private zombieturnmocompterminate(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompduration orientmode("face motion");
    mocompduration animmode("normal", 0);
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0x793560c6, Offset: 0x5c90
// Size: 0x28
function zombiehaslegs(entity) {
    if (entity.missinglegs === 1) {
        return false;
    }
    return true;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0xb6a93319, Offset: 0x5cc0
// Size: 0x24
function zombiemissinglegs(entity) {
    return !zombiehaslegs(entity);
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0x951f3065, Offset: 0x5cf0
// Size: 0x62
function zombieshouldproceduraltraverse(entity) {
    return isdefined(entity.traversestartnode) && isdefined(entity.traverseendnode) && entity.traversestartnode.spawnflags & 1024 && entity.traverseendnode.spawnflags & 1024;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0x19a596b0, Offset: 0x5d60
// Size: 0xb2
function zombieshouldmeleesuicide(entity) {
    if (!entity ai::get_behavior_attribute("suicidal_behavior")) {
        return false;
    }
    if (is_true(entity.magic_bullet_shield)) {
        return false;
    }
    if (!isdefined(entity.enemy)) {
        return false;
    }
    if (isdefined(entity.marked_for_death)) {
        return false;
    }
    if (distancesquared(entity.origin, entity.enemy.origin) > 40000) {
        return false;
    }
    return true;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0x90dc7132, Offset: 0x5e20
// Size: 0x40
function zombiemeleesuicidestart(entity) {
    entity.blockingpain = 1;
    if (isdefined(level.zombiemeleesuicidecallback)) {
        entity thread [[ level.zombiemeleesuicidecallback ]](entity);
    }
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0x539f403f, Offset: 0x5e68
// Size: 0xc
function zombiemeleesuicideupdate(*entity) {
    
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0xa8f7c629, Offset: 0x5e80
// Size: 0x80
function zombiemeleesuicideterminate(entity) {
    if (isalive(entity) && zombieshouldmeleesuicide(entity)) {
        entity.takedamage = 1;
        entity.allowdeath = 1;
        if (isdefined(level.zombiemeleesuicidedonecallback)) {
            entity thread [[ level.zombiemeleesuicidedonecallback ]](entity);
        }
    }
}

// Namespace zombiebehavior/zombie
// Params 2, eflags: 0x2 linked
// Checksum 0xff6ff110, Offset: 0x5f08
// Size: 0x11a
function zombiemoveactionstart(entity, asmstatename) {
    function_ec25b529(entity);
    animationstatenetworkutility::requeststate(entity, asmstatename);
    if (is_true(entity.stumble) && !isdefined(entity.move_anim_end_time)) {
        stumbleactionresult = entity astsearch(asmstatename);
        stumbleactionanimation = animationstatenetworkutility::searchanimationmap(entity, stumbleactionresult[#"animation"]);
        entity.move_anim_end_time = entity.movetime + getanimlength(stumbleactionanimation);
    }
    entity.movetime = gettime();
    entity.moveorigin = entity.origin;
    entity.var_13138acf = 0;
    return 5;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0xea693329, Offset: 0x6030
// Size: 0x28
function function_a82068d7(entity) {
    function_ec25b529(entity);
    return true;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0x6f30f01a, Offset: 0x6060
// Size: 0x26
function function_ec25b529(entity) {
    entity.movetime = gettime();
    entity.moveorigin = entity.origin;
}

// Namespace zombiebehavior/zombie
// Params 2, eflags: 0x2 linked
// Checksum 0x1167bb88, Offset: 0x6090
// Size: 0xba
function zombiemoveactionupdate(entity, asmstatename) {
    if (isdefined(entity.move_anim_end_time) && gettime() >= entity.move_anim_end_time) {
        entity.move_anim_end_time = undefined;
        return 4;
    }
    function_26f9b8b1(entity);
    if (entity asmgetstatus() == "asm_status_complete") {
        if (entity iscurrentbtactionlooping()) {
            return zombiemoveactionstart(entity, asmstatename);
        } else {
            return 4;
        }
    }
    return 5;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0x9d0b437f, Offset: 0x6158
// Size: 0x28
function function_626edd6b(entity) {
    function_26f9b8b1(entity);
    return true;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0x2eea9182, Offset: 0x6188
// Size: 0x19a
function function_26f9b8b1(entity) {
    if (!is_true(entity.missinglegs) && gettime() - entity.movetime > 1000) {
        distsq = distance2dsquared(entity.origin, entity.moveorigin);
        if (distsq < 144 && !is_true(entity.cant_move)) {
            entity.cant_move = 1;
            entity setavoidancemask("avoid all");
            /#
                record3dtext("<unknown string>", entity.origin, (0, 0, 1), "<unknown string>", entity);
            #/
            if (isdefined(entity.cant_move_cb)) {
                entity thread [[ entity.cant_move_cb ]]();
            }
        } else if (is_true(entity.cant_move)) {
            entity.cant_move = 0;
            entity setavoidancemask("avoid none");
            if (isdefined(entity.var_63d2fce2)) {
                entity thread [[ entity.var_63d2fce2 ]]();
            }
        }
        entity.movetime = gettime();
        entity.moveorigin = entity.origin;
    }
}

// Namespace zombiebehavior/zombie
// Params 2, eflags: 0x0
// Checksum 0x61c309c2, Offset: 0x6330
// Size: 0x50
function zombiemoveactionterminate(entity, *asmstatename) {
    if (!is_true(asmstatename.missinglegs)) {
        asmstatename setavoidancemask("avoid none");
    }
    return 4;
}

// Namespace zombiebehavior/zombie
// Params 0, eflags: 0x2 linked
// Checksum 0xc20ce6c3, Offset: 0x6388
// Size: 0xae
function function_79fe956f() {
    self notify("333983529c7de063");
    self endon("333983529c7de063");
    self endon(#"death");
    if (!isdefined(self.var_9ed3cc11)) {
        self.var_9ed3cc11 = self function_e827fc0e();
    }
    self pushplayer(1);
    wait(2);
    if (isdefined(self.var_9ed3cc11)) {
        self pushplayer(self.var_9ed3cc11);
        self.var_9ed3cc11 = undefined;
    }
}

// Namespace zombiebehavior/zombie
// Params 0, eflags: 0x2 linked
// Checksum 0xf7091726, Offset: 0x6440
// Size: 0x2ee
function function_22762653() {
    self notify("607a97be6c5daf6d");
    self endon("607a97be6c5daf6d");
    self endon(#"death");
    if (isdefined(self.enemy_override)) {
        self.enemy_override callback::callback(#"cant_move", self);
        return;
    }
    if (util::get_game_type() === #"zsurvival" && getdvar(#"hash_fb0f3afcdafbdf3", 1)) {
        if (!isdefined(self.var_1f2c0ce1)) {
            self.var_1f2c0ce1 = self.origin;
        } else if (distancesquared(self.var_1f2c0ce1, self.origin) < sqr(self getpathfindingradius())) {
            self clearpath();
            self.var_1f2c0ce1 = undefined;
        } else {
            self.var_1f2c0ce1 = self.origin;
        }
    }
    var_159fa617 = 0;
    foreach (player in getplayers()) {
        if (player laststand::player_is_in_laststand()) {
            if (distancesquared(self.origin, player.origin) < 14400) {
                var_159fa617 = 1;
                break;
            }
        }
    }
    if (!var_159fa617) {
        self collidewithactors(0);
        wait(2);
        self collidewithactors(1);
        return;
    }
    if (!isdefined(self.var_9ed3cc11)) {
        self.var_9ed3cc11 = self function_e827fc0e();
    }
    self pushplayer(1);
    wait(2);
    if (isdefined(self.var_9ed3cc11)) {
        self pushplayer(self.var_9ed3cc11);
        self.var_9ed3cc11 = undefined;
    }
}

// Namespace zombiebehavior/zombie
// Params 2, eflags: 0x2 linked
// Checksum 0xd55e4f1a, Offset: 0x6738
// Size: 0x50
function function_9b6830c9(entity, asmstatename) {
    animationstatenetworkutility::requeststate(entity, asmstatename);
    entity pathmode("dont move");
    return 5;
}

// Namespace zombiebehavior/zombie
// Params 2, eflags: 0x2 linked
// Checksum 0x15256e1, Offset: 0x6790
// Size: 0x38
function function_fbdc2cc4(entity, *asmstatename) {
    asmstatename pathmode("move allowed");
    return 4;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0xd3b65a97, Offset: 0x67d0
// Size: 0x8e
function function_71f7975f(entity) {
    if (is_true(self.var_78f17f6b)) {
        if (isdefined(entity.favoriteenemy) && distance(entity.favoriteenemy.origin, entity.origin) < 64) {
            return true;
        } else if (!isalive(entity)) {
            return true;
        }
    }
    return false;
}

// Namespace zombiebehavior/zombie
// Params 1, eflags: 0x2 linked
// Checksum 0x1940129d, Offset: 0x6868
// Size: 0xdc
function function_85a1a8d4(entity) {
    radiusdamage(entity.origin, 128, 75, 75, entity, "MOD_EXPLOSIVE");
    entity hide();
    entity notsolid();
    if (isalive(entity)) {
        entity.allowdeath = 1;
        entity kill(undefined, entity, entity, undefined, 0, 1);
    }
    entity.takedamage = 0;
    entity thread util::delayed_delete(1);
}

// Namespace zombiebehavior/zombie
// Params 0, eflags: 0x2 linked
// Checksum 0x18d4c2ab, Offset: 0x6950
// Size: 0x24
function archetypezombiedeathoverrideinit() {
    aiutility::addaioverridekilledcallback(self, &zombiegibkilledanhilateoverride);
}

// Namespace zombiebehavior/zombie
// Params 9, eflags: 0x6 linked
// Checksum 0x1ace664a, Offset: 0x6980
// Size: 0x2f0
function private zombiegibkilledanhilateoverride(inflictor, attacker, damage, meansofdeath, weapon, *var_fd90b0bb, *dir, *hitloc, *offsettime) {
    if (!is_true(level.zombieanhilationenabled)) {
        return dir;
    }
    if (is_true(self.forceanhilateondeath)) {
        self zombie_utility::gib_random_parts();
        gibserverutils::annihilate(self);
        return dir;
    }
    if (isdefined(var_fd90b0bb) && isplayer(var_fd90b0bb) && (is_true(var_fd90b0bb.forceanhilateondeath) || is_true(level.forceanhilateondeath))) {
        self zombie_utility::gib_random_parts();
        gibserverutils::annihilate(self);
        return dir;
    }
    attackerdistance = 0;
    if (isdefined(var_fd90b0bb)) {
        attackerdistance = distancesquared(var_fd90b0bb.origin, self.origin);
    }
    isexplosive = isinarray(array("MOD_CRUSH", "MOD_GRENADE", "MOD_GRENADE_SPLASH", "MOD_PROJECTILE", "MOD_PROJECTILE_SPLASH", "MOD_EXPLOSIVE"), hitloc);
    if (isdefined(offsettime.weapclass) && offsettime.weapclass == "turret") {
        if (isdefined(weapon)) {
            isdirectexplosive = isinarray(array("MOD_GRENADE", "MOD_GRENADE_SPLASH", "MOD_PROJECTILE", "MOD_PROJECTILE_SPLASH", "MOD_EXPLOSIVE"), hitloc);
            iscloseexplosive = distancesquared(weapon.origin, self.origin) <= sqr(60);
            if (isdirectexplosive && iscloseexplosive) {
                self zombie_utility::gib_random_parts();
                gibserverutils::annihilate(self);
            }
        }
    }
    return dir;
}

// Namespace zombiebehavior/zombie
// Params 5, eflags: 0x6 linked
// Checksum 0x71c9306f, Offset: 0x6c78
// Size: 0xe4
function private zombiezombieidlemocompstart(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    if (isdefined(mocompduration.enemy_override) && mocompduration != mocompduration.enemy_override) {
        mocompduration orientmode("face direction", mocompduration.enemy_override.origin - mocompduration.origin);
        mocompduration animmode("zonly_physics", 0);
        return;
    }
    mocompduration orientmode("face current");
    mocompduration animmode("zonly_physics", 0);
}

// Namespace zombiebehavior/zombie
// Params 5, eflags: 0x6 linked
// Checksum 0xdf5a2779, Offset: 0x6d68
// Size: 0xcc
function private zombieattackobjectmocompstart(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    if (isdefined(mocompduration.attackable_slot)) {
        mocompduration orientmode("face angle", mocompduration.attackable_slot.angles[1]);
        mocompduration animmode("zonly_physics", 0);
        return;
    }
    mocompduration orientmode("face current");
    mocompduration animmode("zonly_physics", 0);
}

// Namespace zombiebehavior/zombie
// Params 5, eflags: 0x6 linked
// Checksum 0x8e7fc01e, Offset: 0x6e40
// Size: 0x64
function private zombieattackobjectmocompupdate(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    if (isdefined(mocompduration.attackable_slot)) {
        mocompduration forceteleport(mocompduration.attackable_slot.origin);
    }
}

// Namespace zombiebehavior/zombie
// Params 5, eflags: 0x6 linked
// Checksum 0x674476c4, Offset: 0x6eb0
// Size: 0x19c
function private function_54d75299(entity, mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    if (isdefined(mocompanimflag.enemy)) {
        mocompanimflag orientmode("face enemy");
    }
    mocompanimflag animmode("zonly_physics", 1);
    mocompanimflag pathmode("dont move");
    localdeltahalfvector = getmovedelta(mocompduration, 0, 0.9);
    endpoint = mocompanimflag localtoworldcoords(localdeltahalfvector);
    /#
        recordcircle(endpoint, 3, (1, 0, 0), "<unknown string>");
        recordline(mocompanimflag.origin, endpoint, (1, 0, 0), "<unknown string>");
        record3dtext("<unknown string>" + distance(mocompanimflag.origin, endpoint) + "<unknown string>" + function_9e72a96(mocompduration), endpoint, (1, 0, 0), "<unknown string>");
    #/
}

// Namespace zombiebehavior/zombie
// Params 5, eflags: 0x6 linked
// Checksum 0xa8bda13f, Offset: 0x7058
// Size: 0x4c
function private function_d1474842(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompduration pathmode("dont move");
}

// Namespace zombiebehavior/zombie
// Params 5, eflags: 0x6 linked
// Checksum 0x54661241, Offset: 0x70b0
// Size: 0x4c
function private function_b6d297bb(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompduration pathmode("move allowed");
}

// Namespace zombiebehavior/zombie
// Params 5, eflags: 0x6 linked
// Checksum 0xed1827dd, Offset: 0x7108
// Size: 0x174
function private function_cbbae5cb(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompduration orientmode("face angle", mocompduration.angles[1]);
    mocompduration animmode("normal");
    if (isdefined(mocompduration.traverseendnode)) {
        /#
            print3d(mocompduration.traversestartnode.origin, "<unknown string>", (1, 0, 0), 1, 1, 60);
            print3d(mocompduration.traverseendnode.origin, "<unknown string>", (0, 1, 0), 1, 1, 60);
            line(mocompduration.traversestartnode.origin, mocompduration.traverseendnode.origin, (0, 1, 0), 1, 0, 60);
        #/
        mocompduration forceteleport(mocompduration.traverseendnode.origin, mocompduration.traverseendnode.angles, 0);
    }
}

// Namespace zombiebehavior/zombie
// Params 4, eflags: 0x2 linked
// Checksum 0x4165216a, Offset: 0x7288
// Size: 0x11c
function function_db26137a(entity, *attribute, *oldvalue, value) {
    if (value == "low") {
        self.low_gravity = 1;
        if (!isdefined(self.low_gravity_variant) && isdefined(level.var_d9ffddf4)) {
            if (is_true(self.missinglegs)) {
                self.low_gravity_variant = randomint(level.var_d9ffddf4[#"crawl"]);
            } else {
                self.low_gravity_variant = randomint(level.var_d9ffddf4[self.zombie_move_speed]);
            }
        }
    } else if (value == "normal") {
        self.low_gravity = 0;
    }
    oldvalue setblackboardattribute("_low_gravity", value);
}

