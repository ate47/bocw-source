// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\zm\recon_car.gsc;
#using script_5f261a5d57de5f7c;
#using script_2c5daa95f8fec03c;
#using scripts\zm_common\ai\zm_ai_utility.gsc;
#using scripts\zm_common\zm_zonemgr.gsc;
#using script_3a88f428c6d8ef90;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_spawner.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_cleanup_mgr.gsc;
#using scripts\zm_common\zm_blockers.gsc;
#using scripts\zm_common\zm_behavior_utility.gsc;
#using scripts\zm_common\zm_attackables.gsc;
#using script_35b8a6927c851193;
#using scripts\zm_common\zm.gsc;
#using script_1940fc077a028a81;
#using script_3411bb48d41bd3b;
#using script_3357acf79ce92f4b;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\damagefeedback_shared.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\ai\zombie.gsc;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\ai\systems\destructible_character.gsc;
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\core_common\ai\systems\behavior_tree_utility.gsc;
#using scripts\core_common\ai\systems\behavior_state_machine.gsc;
#using scripts\core_common\ai\archetype_locomotion_utility.gsc;
#using scripts\core_common\ai\archetype_utility.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_mocomp.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_notetracks.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_utility.gsc;
#using scripts\core_common\weapons_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\ai_shared.gsc;
#using script_37aecc8eb906ed91;
#using scripts\abilities\gadgets\gadget_cymbal_monkey.gsc;

#namespace zm_behavior;

// Namespace zm_behavior/zm_behavior
// Params 0, eflags: 0x2 linked
// Checksum 0x924a0457, Offset: 0x740
// Size: 0x1f4
function preinit() {
    initzmbehaviorsandasm();
    if (!isdefined(level.zigzag_activation_distance)) {
        level.zigzag_activation_distance = 175;
    }
    if (!isdefined(level.zigzag_distance_min)) {
        level.zigzag_distance_min = 256;
    }
    if (!isdefined(level.zigzag_distance_max)) {
        level.zigzag_distance_max = 400;
    }
    if (!isdefined(level.inner_zigzag_radius)) {
        level.inner_zigzag_radius = 16;
    }
    if (!isdefined(level.outer_zigzag_radius)) {
        level.outer_zigzag_radius = 128;
    }
    zm_utility::function_d0f02e71(#"zombie");
    spawner::add_archetype_spawn_function(#"zombie", &function_c15c6e44);
    spawner::add_archetype_spawn_function(#"zombie", &zombiespawninit);
    spawner::function_89a2cd87(#"zombie", &function_823a8ebd);
    level.do_randomized_zigzag_path = 1;
    level.zombie_targets = [];
    zm::register_actor_damage_callback(&function_7994fd99, 1);
    zm::register_zombie_damage_override_callback(&function_95578a3c);
    level.var_56f626bc = &function_ac6dcd03;
    level.var_1b01acb4 = &function_c5a2dbe5;
}

// Namespace zm_behavior/zm_behavior
// Params 0, eflags: 0x6 linked
// Checksum 0x92c69a62, Offset: 0x940
// Size: 0x18c
function private zombiespawninit() {
    self pushplayer(0);
    self collidewithactors(0);
    self thread zm_utility::function_13cc9756();
    self.closest_player_override = &zm_utility::function_3d70ba7a;
    self.var_1731eda3 = 1;
    self.am_i_valid = 1;
    self.cant_move_cb = &zombiebehavior::function_22762653;
    self ai::set_behavior_attribute("use_attackable", 1);
    self callback::function_d8abfc3d(#"hash_1eda827ff5e6895b", &function_ff987791);
    self callback::function_d8abfc3d(#"hash_210adcf09e99fba1", &function_618ab591);
    self callback::function_d8abfc3d(#"hash_1518febf00439d5", &function_8b5bbd69);
    self callback::function_d8abfc3d(#"hash_34b65342cbfdadac", &function_c35ce53f);
    self zm_spawner::zombie_spawn_init();
}

// Namespace zm_behavior/zm_behavior
// Params 0, eflags: 0x6 linked
// Checksum 0x89615b40, Offset: 0xad8
// Size: 0x32
function private function_823a8ebd() {
    function_cea9ab47(self);
    self.var_318a0ac8 = &function_29c1ba76;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x5e982768, Offset: 0xb18
// Size: 0x64
function function_ff987791(*params) {
    if (isdefined(self.damageweapon) && self.damageweapon === getweapon(#"eq_slow_grenade")) {
        self clientfield::set("stunned_head_fx", 1);
    }
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xe46775dd, Offset: 0xb88
// Size: 0x2c
function function_618ab591(*params) {
    self clientfield::set("stunned_head_fx", 0);
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xcfcaa2dc, Offset: 0xbc0
// Size: 0x344
function function_8b5bbd69(*params) {
    self endon(#"hash_7aba28bf3e3cf9cd", #"death");
    traversalstartpos = self.traversalstartpos;
    traversalendpos = self.traversalendpos;
    traversalstartnode = self.traversestartnode;
    aitype = self.aitype;
    wait(10);
    if (isdefined(traversalendpos)) {
        self forceteleport(traversalendpos);
    }
    if (getdvarint(#"hash_704243ad84566af7", 1) && isdefined(traversalendpos) && isdefined(traversalstartpos) && isdefined(aitype)) {
        var_96c5333a = !isdefined(traversalstartnode);
        if (!var_96c5333a) {
            eventparams = {#spawner_name:hash(aitype), #var_83e229fa:traversalstartpos[0], #var_753e8ca7:traversalstartpos[1], #var_83cf29c8:traversalstartpos[2], #var_f774409e:traversalendpos[0], #var_40385225:traversalendpos[1], #var_340139b7:traversalendpos[2], #var_b5b65b52:traversalstartnode.origin[0], #var_3524da39:traversalstartnode.origin[1], #var_23deb7ad:traversalstartnode.origin[2]};
            function_92d1707f(#"hash_6ec90ea3ba426491", eventparams);
        } else {
            eventparams = {#spawner_name:hash(aitype), #var_83e229fa:traversalstartpos[0], #var_753e8ca7:traversalstartpos[1], #var_83cf29c8:traversalstartpos[2], #var_f774409e:traversalendpos[0], #var_40385225:traversalendpos[1], #var_340139b7:traversalendpos[2]};
            function_92d1707f(#"hash_1bf75b08b5ca39a9", eventparams);
        }
    }
    self finishtraversal();
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x986c3f5d, Offset: 0xf10
// Size: 0x54
function function_c35ce53f(params) {
    function_d42e5f5b(params);
    if (self function_dd070839()) {
        self clearpath();
    }
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xd9a2fcd5, Offset: 0xf70
// Size: 0x1e
function function_d42e5f5b(*params) {
    self notify(#"hash_7aba28bf3e3cf9cd");
}

// Namespace zm_behavior/zm_behavior
// Params 0, eflags: 0x6 linked
// Checksum 0xcf31c299, Offset: 0xf98
// Size: 0x56
function private function_c15c6e44() {
    self endon(#"death");
    self waittill(#"completed_emerging_into_playable_area");
    self.var_641025d6 = gettime() + self ai::function_9139c839().var_9c0ebe1e;
}

// Namespace zm_behavior/zm_behavior
// Params 0, eflags: 0x0
// Checksum 0x9d39bd28, Offset: 0xff8
// Size: 0x3c
function postinit() {
    array::thread_all(level.zombie_spawners, &spawner::add_spawn_function, &function_d63f6426);
}

// Namespace zm_behavior/zm_behavior
// Params 0, eflags: 0x2 linked
// Checksum 0x7714f463, Offset: 0x1040
// Size: 0x12e
function function_d63f6426() {
    if (!isdefined(self._starting_round_number)) {
        self zm_cleanup::function_aa5726f2();
    }
    self zm_utility::init_zombie_run_cycle();
    self thread zm_spawner::zombie_think();
    if (isdefined(level._zombie_custom_spawn_logic)) {
        if (isarray(level._zombie_custom_spawn_logic)) {
            for (i = 0; i < level._zombie_custom_spawn_logic.size; i++) {
                self thread [[ level._zombie_custom_spawn_logic[i] ]]();
            }
        } else {
            self thread [[ level._zombie_custom_spawn_logic ]]();
        }
    }
    if (isdefined(level.zombie_init_done)) {
        self [[ level.zombie_init_done ]]();
    }
    self.zombie_init_done = 1;
    self zm_score::function_82732ced();
    self notify(#"zombie_init_done");
}

// Namespace zm_behavior/zm_behavior
// Params 0, eflags: 0x6 linked
// Checksum 0xc980bcdf, Offset: 0x1178
// Size: 0x37d4
function private initzmbehaviorsandasm() {
    assert(iscodefunctionptr(&function_3227edfe));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_14f90f9369756366", &function_3227edfe);
    assert(isscriptfunctionptr(&shouldmovecondition));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombieshouldmove", &shouldmovecondition);
    assert(isscriptfunctionptr(&zombieshouldtearcondition));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombieshouldtear", &zombieshouldtearcondition);
    assert(isscriptfunctionptr(&zombieshouldattackthroughboardscondition));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombieshouldattackthroughboards", &zombieshouldattackthroughboardscondition);
    assert(isscriptfunctionptr(&zombieshouldattackthroughboardscondition));
    behaviorstatemachine::registerbsmscriptapiinternal(#"zombieshouldattackthroughboards", &zombieshouldattackthroughboardscondition);
    assert(isscriptfunctionptr(&zombieshouldtauntcondition));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombieshouldtaunt", &zombieshouldtauntcondition);
    assert(isscriptfunctionptr(&zombieshouldtauntcondition));
    behaviorstatemachine::registerbsmscriptapiinternal(#"zombieshouldtaunt", &zombieshouldtauntcondition);
    assert(isscriptfunctionptr(&zombiegottoentrancecondition));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombiegottoentrance", &zombiegottoentrancecondition);
    assert(isscriptfunctionptr(&zombiegottoattackspotcondition));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombiegottoattackspot", &zombiegottoattackspotcondition);
    assert(isscriptfunctionptr(&zombiehasattackspotalreadycondition));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombiehasattackspotalready", &zombiehasattackspotalreadycondition);
    assert(isscriptfunctionptr(&zombiehasattackspotalreadycondition));
    behaviorstatemachine::registerbsmscriptapiinternal(#"zombiehasattackspotalready", &zombiehasattackspotalreadycondition);
    assert(isscriptfunctionptr(&zombieshouldenterplayablecondition));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombieshouldenterplayable", &zombieshouldenterplayablecondition);
    assert(isscriptfunctionptr(&ischunkvalidcondition));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"ischunkvalid", &ischunkvalidcondition);
    assert(isscriptfunctionptr(&ischunkvalidcondition));
    behaviorstatemachine::registerbsmscriptapiinternal(#"ischunkvalid", &ischunkvalidcondition);
    assert(isscriptfunctionptr(&inplayablearea));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"inplayablearea", &inplayablearea);
    assert(isscriptfunctionptr(&shouldskipteardown));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"shouldskipteardown", &shouldskipteardown);
    assert(isscriptfunctionptr(&zombieisthinkdone));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombieisthinkdone", &zombieisthinkdone);
    assert(isscriptfunctionptr(&zombieisatgoal));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombieisatgoal", &zombieisatgoal);
    assert(isscriptfunctionptr(&zombieisatgoal));
    behaviorstatemachine::registerbsmscriptapiinternal(#"zombieisatgoal", &zombieisatgoal);
    assert(isscriptfunctionptr(&zombieisatentrance));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombieisatentrance", &zombieisatentrance);
    assert(isscriptfunctionptr(&function_4c12882b));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_626619641083db91", &function_4c12882b);
    assert(isscriptfunctionptr(&function_4c12882b));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_626619641083db91", &function_4c12882b);
    assert(isscriptfunctionptr(&function_b86a1b9d));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_150eeb42b488a14e", &function_b86a1b9d);
    assert(isscriptfunctionptr(&function_b86a1b9d));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_150eeb42b488a14e", &function_b86a1b9d);
    assert(isscriptfunctionptr(&function_e7f2e349));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_3f46416df5ad6e3e", &function_e7f2e349);
    assert(isscriptfunctionptr(&function_e7f2e349));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_3f46416df5ad6e3e", &function_e7f2e349);
    assert(isscriptfunctionptr(&function_45009145));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_2a86b9d29348a4df", &function_45009145);
    assert(isscriptfunctionptr(&function_a5a66d65));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_f8bf19d37668bca", &function_a5a66d65);
    assert(isscriptfunctionptr(&zombieshouldmoveawaycondition));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombieshouldmoveaway", &zombieshouldmoveawaycondition);
    assert(isscriptfunctionptr(&waskilledbyteslacondition));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"waskilledbytesla", &waskilledbyteslacondition);
    assert(isscriptfunctionptr(&function_a00b473a));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_3cf91e708d0422b", &function_a00b473a);
    assert(isscriptfunctionptr(&function_8396494f));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_176a3ec851460d73", &function_8396494f);
    assert(isscriptfunctionptr(&zombieshouldstun));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombieshouldstun", &zombieshouldstun);
    assert(isscriptfunctionptr(&zombieisbeinggrappled));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombieisbeinggrappled", &zombieisbeinggrappled);
    assert(isscriptfunctionptr(&zombieshouldknockdown));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombieshouldknockdown", &zombieshouldknockdown);
    assert(isscriptfunctionptr(&function_6a690c50));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_6a8d81f5eda48d2", &function_6a690c50);
    assert(isscriptfunctionptr(&zombieispushed));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombieispushed", &zombieispushed);
    assert(isscriptfunctionptr(&zombiekilledwhilegettingpulled));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombiekilledwhilegettingpulled", &zombiekilledwhilegettingpulled);
    assert(isscriptfunctionptr(&zombiekilledbyblackholebombcondition));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombiekilledbyblackholebombcondition", &zombiekilledbyblackholebombcondition);
    assert(isscriptfunctionptr(&function_38fec26f));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_18fea53546637859", &function_38fec26f);
    assert(isscriptfunctionptr(&function_e4d7303f));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_32d8ffc79910d80b", &function_e4d7303f);
    assert(isscriptfunctionptr(&function_17cd1b17));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_1da059a5800a95c5", &function_17cd1b17);
    assert(isscriptfunctionptr(&zmzombieshouldmelee));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zmzombieshouldmelee", &zmzombieshouldmelee);
    assert(isscriptfunctionptr(&function_d8b225ae));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_651ab332997a387f", &function_d8b225ae);
    assert(isscriptfunctionptr(&function_cbb1e2bb));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_389ee9c3a9dad550", &function_cbb1e2bb);
    assert(isscriptfunctionptr(&function_22d21726));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_78381576f7e7e507", &function_22d21726);
    assert(isscriptfunctionptr(&disablepowerups));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"disablepowerups", &disablepowerups);
    assert(isscriptfunctionptr(&enablepowerups));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"enablepowerups", &enablepowerups);
    assert(isscriptfunctionptr(&function_77a0b45d));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_7acebd497b8032d5", &function_77a0b45d);
    assert(isscriptfunctionptr(&function_fa2814ae));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_6f98de025a95b79a", &function_fa2814ae);
    assert(!isdefined(&zombiemovetoentranceaction) || isscriptfunctionptr(&zombiemovetoentranceaction));
    assert(!isdefined(undefined) || isscriptfunctionptr(undefined));
    assert(!isdefined(&zombiemovetoentranceactionterminate) || isscriptfunctionptr(&zombiemovetoentranceactionterminate));
    behaviortreenetworkutility::registerbehaviortreeaction(#"zombiemovetoentranceaction", &zombiemovetoentranceaction, undefined, &zombiemovetoentranceactionterminate);
    assert(!isdefined(&zombiemovetoattackspotaction) || isscriptfunctionptr(&zombiemovetoattackspotaction));
    assert(!isdefined(undefined) || isscriptfunctionptr(undefined));
    assert(!isdefined(&zombiemovetoattackspotactionterminate) || isscriptfunctionptr(&zombiemovetoattackspotactionterminate));
    behaviortreenetworkutility::registerbehaviortreeaction(#"zombiemovetoattackspotaction", &zombiemovetoattackspotaction, undefined, &zombiemovetoattackspotactionterminate);
    assert(isscriptfunctionptr(&function_6eb4f847));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_5a7ebfd6f2aaad7b", &function_6eb4f847);
    assert(isscriptfunctionptr(&function_547701ae));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_3006c33ad53fb0be", &function_547701ae);
    assert(!isdefined(undefined) || isscriptfunctionptr(undefined));
    assert(!isdefined(undefined) || isscriptfunctionptr(undefined));
    assert(!isdefined(undefined) || isscriptfunctionptr(undefined));
    behaviortreenetworkutility::registerbehaviortreeaction(#"zombieidleaction", undefined, undefined, undefined);
    assert(!isdefined(&zombiemoveaway) || isscriptfunctionptr(&zombiemoveaway));
    assert(!isdefined(undefined) || isscriptfunctionptr(undefined));
    assert(!isdefined(undefined) || isscriptfunctionptr(undefined));
    behaviortreenetworkutility::registerbehaviortreeaction(#"zombiemoveaway", &zombiemoveaway, undefined, undefined);
    assert(!isdefined(&zombietraverseaction) || isscriptfunctionptr(&zombietraverseaction));
    assert(!isdefined(undefined) || isscriptfunctionptr(undefined));
    assert(!isdefined(&zombietraverseactionterminate) || isscriptfunctionptr(&zombietraverseactionterminate));
    behaviortreenetworkutility::registerbehaviortreeaction(#"zombietraverseaction", &zombietraverseaction, undefined, &zombietraverseactionterminate);
    assert(isscriptfunctionptr(&function_35228e0b));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_650bbf762c6db9e5", &function_35228e0b);
    assert(isscriptfunctionptr(&function_ed33f941));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_461b5bd517dbe56", &function_ed33f941);
    assert(!isdefined(&zombieholdboardaction) || isscriptfunctionptr(&zombieholdboardaction));
    assert(!isdefined(undefined) || isscriptfunctionptr(undefined));
    assert(!isdefined(&zombieholdboardactionterminate) || isscriptfunctionptr(&zombieholdboardactionterminate));
    behaviortreenetworkutility::registerbehaviortreeaction(#"holdboardaction", &zombieholdboardaction, undefined, &zombieholdboardactionterminate);
    assert(!isdefined(&zombiegrabboardaction) || isscriptfunctionptr(&zombiegrabboardaction));
    assert(!isdefined(undefined) || isscriptfunctionptr(undefined));
    assert(!isdefined(&zombiegrabboardactionterminate) || isscriptfunctionptr(&zombiegrabboardactionterminate));
    behaviortreenetworkutility::registerbehaviortreeaction(#"grabboardaction", &zombiegrabboardaction, undefined, &zombiegrabboardactionterminate);
    assert(isscriptfunctionptr(&function_66a8aef2));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_2c6c8e7fbe32827d", &function_66a8aef2);
    assert(isscriptfunctionptr(&function_16251b30));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_7b8b6e4f20e7c65c", &function_16251b30);
    assert(!isdefined(&zombiepullboardaction) || isscriptfunctionptr(&zombiepullboardaction));
    assert(!isdefined(undefined) || isscriptfunctionptr(undefined));
    assert(!isdefined(&zombiepullboardactionterminate) || isscriptfunctionptr(&zombiepullboardactionterminate));
    behaviortreenetworkutility::registerbehaviortreeaction(#"pullboardaction", &zombiepullboardaction, undefined, &zombiepullboardactionterminate);
    assert(isscriptfunctionptr(&function_aa76355a));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_6e6a6ae6dbfda8b6", &function_aa76355a);
    assert(isscriptfunctionptr(&function_76d619c8));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_61d9bc9bf2de7261", &function_76d619c8);
    assert(isscriptfunctionptr(&barricadebreakterminate));
    behaviortreenetworkutility::registerbehaviortreescriptapi("barricadeBreakTerminate", &barricadebreakterminate);
    assert(!isdefined(&zombieattackthroughboardsaction) || isscriptfunctionptr(&zombieattackthroughboardsaction));
    assert(!isdefined(undefined) || isscriptfunctionptr(undefined));
    assert(!isdefined(&zombieattackthroughboardsactionterminate) || isscriptfunctionptr(&zombieattackthroughboardsactionterminate));
    behaviortreenetworkutility::registerbehaviortreeaction(#"zombieattackthroughboardsaction", &zombieattackthroughboardsaction, undefined, &zombieattackthroughboardsactionterminate);
    assert(isscriptfunctionptr(&function_ebba4d65));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_5cf57595a9a7f525", &function_ebba4d65);
    assert(isscriptfunctionptr(&function_28b47cc8));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_1b4d2e123def1564", &function_28b47cc8);
    assert(!isdefined(&zombietauntaction) || isscriptfunctionptr(&zombietauntaction));
    assert(!isdefined(undefined) || isscriptfunctionptr(undefined));
    assert(!isdefined(&zombietauntactionterminate) || isscriptfunctionptr(&zombietauntactionterminate));
    behaviortreenetworkutility::registerbehaviortreeaction(#"zombietauntaction", &zombietauntaction, undefined, &zombietauntactionterminate);
    assert(isscriptfunctionptr(&function_eb270aac));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_5d23aebf14e71bd5", &function_eb270aac);
    assert(isscriptfunctionptr(&function_ba06c8a0));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_5e8abe4da3ebfbd4", &function_ba06c8a0);
    assert(!isdefined(&zombiemantleaction) || isscriptfunctionptr(&zombiemantleaction));
    assert(!isdefined(undefined) || isscriptfunctionptr(undefined));
    assert(!isdefined(&zombiemantleactionterminate) || isscriptfunctionptr(&zombiemantleactionterminate));
    behaviortreenetworkutility::registerbehaviortreeaction(#"zombiemantleaction", &zombiemantleaction, undefined, &zombiemantleactionterminate);
    assert(!isdefined(&zombiestunactionstart) || isscriptfunctionptr(&zombiestunactionstart));
    assert(!isdefined(&function_4e52c07) || isscriptfunctionptr(&function_4e52c07));
    assert(!isdefined(&zombiestunactionend) || isscriptfunctionptr(&zombiestunactionend));
    behaviortreenetworkutility::registerbehaviortreeaction(#"zombiestunaction", &zombiestunactionstart, &function_4e52c07, &zombiestunactionend);
    assert(isscriptfunctionptr(&zombiestunstart));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombiestunstart", &zombiestunstart);
    assert(!isdefined(undefined) || isscriptfunctionptr(undefined));
    assert(!isdefined(&function_4e52c07) || isscriptfunctionptr(&function_4e52c07));
    assert(!isdefined(undefined) || isscriptfunctionptr(undefined));
    behaviortreenetworkutility::registerbehaviortreeaction(#"zombiestunactionloop", undefined, &function_4e52c07, undefined);
    assert(isscriptfunctionptr(&function_c377438f));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_5cae731c54d7a310", &function_c377438f);
    assert(isscriptfunctionptr(&function_7531db00));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_3ec08de422ecdfa7", &function_7531db00);
    assert(isscriptfunctionptr(&function_7531db00));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_3ec08de422ecdfa7", &function_7531db00);
    assert(isscriptfunctionptr(&function_1329e086));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_cf69ce67c8c33fc", &function_1329e086);
    assert(isscriptfunctionptr(&function_1329e086));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_cf69ce67c8c33fc", &function_1329e086);
    assert(isscriptfunctionptr(&zombiegrappleactionstart));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombiegrappleactionstart", &zombiegrappleactionstart);
    assert(isscriptfunctionptr(&zombieknockdownactionstart));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombieknockdownactionstart", &zombieknockdownactionstart);
    assert(isscriptfunctionptr(&function_c8939973));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_a6273a84b4237ce", &function_c8939973);
    assert(isscriptfunctionptr(&zombiepushedactionstart));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombiepushedactionstart", &zombiepushedactionstart);
    assert(isscriptfunctionptr(&zombiepushedactionterminate));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombiepushedactionterminate", &zombiepushedactionterminate);
    assert(isscriptfunctionptr(&function_289cdbab));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_28b48f7b24f5245b", &function_289cdbab);
    assert(isscriptfunctionptr(&function_6560f92b));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_75445a35d37e78e0", &function_6560f92b);
    assert(!isdefined(&zombieblackholebombpullstart) || isscriptfunctionptr(&zombieblackholebombpullstart));
    assert(!isdefined(&zombieblackholebombpullupdate) || isscriptfunctionptr(&zombieblackholebombpullupdate));
    assert(!isdefined(&zombieblackholebombpullend) || isscriptfunctionptr(&zombieblackholebombpullend));
    behaviortreenetworkutility::registerbehaviortreeaction(#"zombieblackholebombpullaction", &zombieblackholebombpullstart, &zombieblackholebombpullupdate, &zombieblackholebombpullend);
    assert(!isdefined(&zombiekilledbyblackholebombstart) || isscriptfunctionptr(&zombiekilledbyblackholebombstart));
    assert(!isdefined(undefined) || isscriptfunctionptr(undefined));
    assert(!isdefined(&zombiekilledbyblackholebombend) || isscriptfunctionptr(&zombiekilledbyblackholebombend));
    behaviortreenetworkutility::registerbehaviortreeaction(#"zombieblackholebombdeathaction", &zombiekilledbyblackholebombstart, undefined, &zombiekilledbyblackholebombend);
    assert(isscriptfunctionptr(&function_b654f4f5));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_2574c98f8c8e07ea", &function_b654f4f5);
    assert(isscriptfunctionptr(&function_36b3cb7d));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_65c425729831f505", &function_36b3cb7d);
    assert(isscriptfunctionptr(&getchunkservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"getchunkservice", &getchunkservice);
    assert(isscriptfunctionptr(&function_38237e30));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_4dde9e6bcca48bcb", &function_38237e30);
    assert(isscriptfunctionptr(&updatechunkservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"updatechunkservice", &updatechunkservice);
    assert(isscriptfunctionptr(&updateattackspotservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"updateattackspotservice", &updateattackspotservice);
    assert(isscriptfunctionptr(&function_b3311a1a));
    behaviorstatemachine::registerbsmscriptapiinternal(#"hash_24d32558bbe4dd3b", &function_b3311a1a);
    assert(isscriptfunctionptr(&findnodesservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"findnodesservice", &findnodesservice);
    assert(isscriptfunctionptr(&function_92d348e2));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_7f1ef64b934748c3", &function_92d348e2);
    assert(isscriptfunctionptr(&function_4180f67));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_74a2d8577b2cd1", &function_4180f67, 2);
    var_6f1f5692 = zm_utility::is_survival() ? 5 : 10;
    assert(isscriptfunctionptr(&function_754be649));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_5b9e89679b8c51f9", &function_754be649, var_6f1f5692);
    assert(isscriptfunctionptr(&function_fae6123));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_52ef96cc6c0bfb77", &function_fae6123, 20);
    assert(isscriptfunctionptr(&zombieattackableobjectservice));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombieattackableobjectservice", &zombieattackableobjectservice, 4);
    assert(isscriptfunctionptr(&function_fb814207));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombiefindfleshservice", &function_fb814207, 3);
    assert(isscriptfunctionptr(&function_f637b05d));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_712f0844b14c72fe", &function_f637b05d, 1);
    assert(isscriptfunctionptr(&function_483766be));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_3a0b725ea5525c8d", &function_483766be, 1);
    assert(isscriptfunctionptr(&zombieenteredplayable));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"zombieenteredplayableservice", &zombieenteredplayable);
    animationstatenetwork::registeranimationmocomp("mocomp_board_tear@zombie", &boardtearmocompstart, &boardtearmocompupdate, undefined);
    animationstatenetwork::registeranimationmocomp("mocomp_barricade_enter@zombie", &barricadeentermocompstart, &barricadeentermocompupdate, &barricadeentermocompterminate);
    animationstatenetwork::registeranimationmocomp("mocomp_barricade_enter_no_z@zombie", &barricadeentermocompnozstart, &barricadeentermocompnozupdate, &barricadeentermocompnozterminate);
    animationstatenetwork::registernotetrackhandlerfunction("destroy_piece", &notetrackboardtear);
    animationstatenetwork::registernotetrackhandlerfunction("zombie_window_melee", &notetrackboardmelee);
    animationstatenetwork::registernotetrackhandlerfunction("smash_board", &function_b37b8c0d);
    animationstatenetwork::registernotetrackhandlerfunction("bhb_burst", &zombiebhbburst);
    animationstatenetwork::registernotetrackhandlerfunction("freezegun_hide", &function_36b3cb7d);
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x86270b61, Offset: 0x4958
// Size: 0xba
function function_cbb1e2bb(entity) {
    if (!is_true(self.missinglegs) || !gibserverutils::isgibbed(entity, 128) && !gibserverutils::isgibbed(entity, 256) || !isdefined(self.var_177172b0) || gettime() - self.var_177172b0 < int(0.2 * 1000)) {
        return false;
    }
    return true;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xe529b8d7, Offset: 0x4a20
// Size: 0x106
function function_d8b225ae(entity) {
    if (!isdefined(entity.attackable)) {
        return false;
    }
    if (isdefined(entity.var_8a3828c6)) {
        return false;
    }
    radius = entity.goalradius;
    if (is_true(entity.allowoffnavmesh)) {
        radius = 16;
    }
    if (isdefined(entity.var_b238ef38) && distance2dsquared(entity.origin, entity.var_b238ef38.position) < sqr(radius) && abs(entity.origin[2] - entity.var_b238ef38.position[2]) < 50) {
        return true;
    }
    return false;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x55c09614, Offset: 0x4b30
// Size: 0xcc
function function_4180f67(entity) {
    entity.var_2d78e306 = 0;
    entity.var_b719e78 = 1;
    if (is_true(entity.var_4c85ebad)) {
        entity.var_2d78e306 = 1;
        return true;
    }
    if (isdefined(entity.enemy_override)) {
        entity.var_b719e78 = 0;
        return true;
    }
    if (function_d8b225ae(entity)) {
        entity.var_2d78e306 = 1;
        return true;
    }
    if (is_true(entity.ignoremelee)) {
        entity.var_b719e78 = 0;
        return true;
    }
    return true;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xfbb0283b, Offset: 0x4c08
// Size: 0x400
function function_754be649(entity) {
    entity.var_85cea06c = 0;
    entity.var_d1bb0ad = 1;
    if (!isdefined(entity.enemy)) {
        entity.var_d1bb0ad = 0;
        return true;
    }
    if (!namespace_85745671::is_player_valid(entity.enemy) && !namespace_85745671::function_1b9ed9b0(entity.enemy) && !namespace_85745671::function_65e1fbbe(entity.enemy) && entity.team === level.zombie_team) {
        entity.var_d1bb0ad = 0;
        return true;
    }
    entity.meleedistsq = zombiebehavior::function_997f1224(entity);
    entity.var_5a81324d = undefined;
    entity.var_b3538985 = entity.enemy.origin;
    if (isplayer(entity.enemy) || is_true(entity.enemy.var_d003d23c)) {
        if (!is_true(zm_utility::is_classic())) {
            if (namespace_85745671::function_142c3c86(entity.enemy)) {
                entity.var_5a81324d = entity.enemy getvehicleoccupied();
                entity.var_b3538985 = namespace_85745671::function_401070dd(entity.var_5a81324d, entity.enemy);
            } else if (isvehicle(entity.enemy getgroundent())) {
                entity.var_5a81324d = entity.enemy getgroundent();
                entity.var_b3538985 = isdefined(entity.enemy.last_valid_position) ? entity.enemy.last_valid_position : entity.enemy.origin;
            } else if (isvehicle(entity.enemy getmoverent())) {
                entity.var_5a81324d = entity.enemy getmoverent();
                entity.var_b3538985 = isdefined(entity.enemy.last_valid_position) ? entity.enemy.last_valid_position : entity.enemy.origin;
            }
        }
        if (isdefined(entity.var_5a81324d) && isdefined(entity.var_cbc65493)) {
            entity.meleedistsq *= entity.var_cbc65493;
        }
    }
    if (is_true(self.isonnavmesh) && !tracepassedonnavmesh(entity.origin, isdefined(entity.enemy.last_valid_position) ? entity.enemy.last_valid_position : entity.enemy.origin, entity.enemy getpathfindingradius())) {
        entity.var_d1bb0ad = 0;
        return true;
    }
    return true;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x8090e2a, Offset: 0x5010
// Size: 0x434
function function_fae6123(entity) {
    entity.var_2fe49a8a = 0;
    entity.var_e8e74caf = 1;
    if (isdefined(entity.zombie_poi)) {
        entity.var_e8e74caf = 0;
        return true;
    }
    if (isdefined(entity.enemy_override)) {
        entity.var_e8e74caf = 0;
        return true;
    }
    if (isdefined(entity.var_b3538985) && isdefined(entity.enemy)) {
        if (abs(entity.origin[2] - entity.var_b3538985[2]) > (isdefined(entity.var_737e8510) ? entity.var_737e8510 : 64)) {
            entity.var_e8e74caf = 0;
            return true;
        }
        if (distancesquared(entity.origin, entity.var_b3538985) > entity.meleedistsq) {
            entity.var_e8e74caf = 0;
            return true;
        }
        yawtoenemy = angleclamp180(entity.angles[1] - vectortoangles(entity.enemy.origin - entity.origin)[1]);
        if (abs(yawtoenemy) > (isdefined(entity.var_1c0eb62a) ? entity.var_1c0eb62a : 60)) {
            entity.var_e8e74caf = 0;
            return true;
        }
        if (isdefined(entity.var_5a81324d)) {
            if (isplayer(entity.enemy) && entity.enemy getvehicleoccupied() === entity.var_5a81324d && !entity namespace_85745671::function_98e73b11(entity.var_5a81324d)) {
                entity.var_e8e74caf = 0;
                return true;
            }
        }
        if (distancesquared(entity.origin, entity.var_b3538985) < sqr(40) && (!isplayer(entity.enemy) || !entity.enemy.ignoreme && !entity.enemy isnotarget())) {
            entity.var_2fe49a8a = 1;
            return true;
        }
        if (!isplayer(entity.enemy) || entity.enemy getstance() != #"prone") {
            if (!entity cansee(isdefined(entity.var_5a81324d) ? entity.var_5a81324d : entity.enemy)) {
                entity.var_e8e74caf = 0;
                return true;
            }
        }
        if (isdefined(entity.var_5a81324d)) {
            if (entity namespace_85745671::function_98e73b11(entity.var_5a81324d)) {
                entity.var_2fe49a8a = 1;
            }
            return true;
        }
    } else {
        entity.var_e8e74caf = 0;
        return true;
    }
    if (is_true(entity.var_1fa24724)) {
        entity.var_e8e74caf = 0;
        return true;
    }
    return true;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xac96a985, Offset: 0x5450
// Size: 0x10e
function zmzombieshouldmelee(entity) {
    if (entity function_dd070839()) {
        return false;
    }
    if (is_true(entity.var_b719e78) && is_true(entity.var_d1bb0ad) && is_true(entity.var_e8e74caf) || is_true(entity.var_2d78e306) || is_true(entity.var_85cea06c) || is_true(entity.var_2fe49a8a)) {
        entity.idletime = gettime();
        entity.idleorigin = entity.origin;
        return true;
    }
    return false;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xed41a598, Offset: 0x5568
// Size: 0x6c
function function_fb814207(behaviortreeentity) {
    if (is_true(behaviortreeentity.ai.var_870d0893)) {
        return;
    }
    if (isdefined(self.var_72411ccf)) {
        self [[ self.var_72411ccf ]](self);
        return;
    }
    self zombiefindflesh(self);
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x81ae8d9a, Offset: 0x55e0
// Size: 0xd9a
function zombiefindflesh(behaviortreeentity) {
    if (isdefined(behaviortreeentity.enablepushtime)) {
        if (gettime() >= behaviortreeentity.enablepushtime) {
            behaviortreeentity collidewithactors(1);
            behaviortreeentity.enablepushtime = undefined;
        }
    }
    if (getdvarint(#"scr_zm_use_code_enemy_selection", 0)) {
        zombiefindfleshcode(behaviortreeentity);
        return;
    }
    if (level.intermission) {
        if (isdefined(level.var_b813f909)) {
            [[ level.var_b813f909 ]](behaviortreeentity);
        }
        return;
    }
    if (is_true(behaviortreeentity.var_67faa700)) {
        return;
    }
    if (behaviortreeentity getpathmode() == "dont move") {
        return;
    }
    if (!isdefined(behaviortreeentity.ignore_player)) {
        behaviortreeentity.ignore_player = [];
    }
    behaviortreeentity.goalradius = 30;
    if (is_true(behaviortreeentity.ignore_find_flesh)) {
        return;
    }
    if (behaviortreeentity.team == #"allies") {
        behaviortreeentity findzombieenemy();
        return;
    }
    if (zombieshouldmoveawaycondition(behaviortreeentity)) {
        return;
    }
    if (!(self.var_6f84b820 === #"special") && !(self.var_6f84b820 === #"elite")) {
        decoy = nightingale::function_29fbe24f(behaviortreeentity);
        monkey = gadget_cymbal_monkey::function_4a5dff80(behaviortreeentity, 0);
        var_67372704 = [decoy, monkey];
        recon_car = recon_car::function_8030f1bd(behaviortreeentity);
        if (!isdefined(var_67372704)) {
            var_67372704 = [];
        } else if (!isarray(var_67372704)) {
            var_67372704 = array(var_67372704);
        }
        if (!isinarray(var_67372704, recon_car)) {
            var_67372704[var_67372704.size] = recon_car;
        }
        arrayremovevalue(var_67372704, undefined);
        enemy_override = arraygetclosest(behaviortreeentity.origin, var_67372704);
        if (isdefined(enemy_override)) {
            self.enemy_override = enemy_override;
        }
    }
    zombie_poi = behaviortreeentity zm_utility::get_zombie_point_of_interest(behaviortreeentity.origin);
    behaviortreeentity.zombie_poi = zombie_poi;
    players = getplayers();
    if (isdefined(level.zombie_targets) && level.zombie_targets.size > 0) {
        function_1eaaceab(level.zombie_targets);
        arrayremovevalue(level.zombie_targets, undefined);
        players = arraycombine(players, level.zombie_targets, 0, 0);
    }
    if (!isdefined(behaviortreeentity.ignore_player) || players.size == 1) {
        behaviortreeentity.ignore_player = [];
    } else if (!isdefined(level._should_skip_ignore_player_logic) || ![[ level._should_skip_ignore_player_logic ]]()) {
        for (i = 0; i < behaviortreeentity.ignore_player.size; i++) {
            if (isdefined(behaviortreeentity.ignore_player[i]) && isdefined(behaviortreeentity.ignore_player[i].ignore_counter) && behaviortreeentity.ignore_player[i].ignore_counter > 3) {
                behaviortreeentity.ignore_player[i].ignore_counter = 0;
                behaviortreeentity.ignore_player = arrayremovevalue(behaviortreeentity.ignore_player, behaviortreeentity.ignore_player[i]);
                if (!isdefined(behaviortreeentity.ignore_player)) {
                    behaviortreeentity.ignore_player = [];
                }
                i = 0;
                continue;
            }
        }
    }
    behaviortreeentity zombie_utility::run_ignore_player_handler();
    designated_target = 0;
    if (isdefined(behaviortreeentity.var_93a62fe) && is_true(behaviortreeentity.var_93a62fe.b_is_designated_target)) {
        designated_target = 1;
    }
    if (!isdefined(behaviortreeentity.var_93a62fe) && (!isdefined(self.enemy_override) && !isdefined(behaviortreeentity.attackable) || isdefined(behaviortreeentity.var_8a3828c6))) {
        if (isdefined(behaviortreeentity.ignore_player)) {
            if (isdefined(level._should_skip_ignore_player_logic) && [[ level._should_skip_ignore_player_logic ]]()) {
                return;
            }
            behaviortreeentity.ignore_player = [];
        }
        if (is_true(behaviortreeentity.interdimensional_gun_kill) && isdefined(behaviortreeentity.v_zombie_custom_goal_pos)) {
            goalpos = behaviortreeentity.v_zombie_custom_goal_pos;
            behaviortreeentity setgoal(goalpos);
            function_9d92b55a(behaviortreeentity);
            return;
        }
        /#
            if (is_true(behaviortreeentity.ispuppet)) {
                return;
            }
        #/
        if (isdefined(level.no_target_override)) {
            [[ level.no_target_override ]](behaviortreeentity);
        } else {
            behaviortreeentity setgoal(behaviortreeentity.origin);
        }
        function_9d92b55a(behaviortreeentity);
        return;
    } else if (isdefined(level.var_d22435d9)) {
        [[ level.var_d22435d9 ]](behaviortreeentity);
    }
    if (!isdefined(level.var_4bde8b8f) || ![[ level.var_4bde8b8f ]]()) {
        if (isdefined(zombie_poi)) {
            behaviortreeentity.enemy_override = zombie_poi.poi_ent;
            behaviortreeentity.enemy_override.var_dfa42180 = &zm_utility::function_49f80b6f;
        }
        behaviortreeentity.favoriteenemy = behaviortreeentity.var_93a62fe;
    }
    var_bd871069 = (!isdefined(behaviortreeentity.enemy_override) && !isdefined(behaviortreeentity.attackable) || isdefined(behaviortreeentity.var_8a3828c6)) && !isdefined(behaviortreeentity.v_zombie_custom_goal_pos);
    if (isdefined(behaviortreeentity.v_zombie_custom_goal_pos) && !var_bd871069) {
        goalpos = behaviortreeentity.v_zombie_custom_goal_pos;
        if (isdefined(behaviortreeentity.n_zombie_custom_goal_radius)) {
            behaviortreeentity.goalradius = behaviortreeentity.n_zombie_custom_goal_radius;
        }
        behaviortreeentity setgoal(goalpos);
        function_9d92b55a(behaviortreeentity);
    } else if (isdefined(behaviortreeentity.enemy_override) && !var_bd871069) {
        behaviortreeentity.has_exit_point = undefined;
        goalpos = behaviortreeentity.enemy_override.origin;
        if (isdefined(behaviortreeentity.enemy_override.var_dfa42180)) {
            goalpos = behaviortreeentity.enemy_override [[ behaviortreeentity.enemy_override.var_dfa42180 ]](self);
        }
        if (isdefined(goalpos)) {
            goalpos = getclosestpointonnavmesh(goalpos, 200, 0);
        }
        if (isdefined(goalpos)) {
            if (!isdefined(zombie_poi)) {
                aiprofile_beginentry("zombiefindflesh-enemyoverride");
                queryresult = positionquery_source_navigation(goalpos, 0, 48, 36, 4);
                aiprofile_endentry();
                foreach (point in queryresult.data) {
                    goalpos = point.origin;
                    break;
                }
            }
            behaviortreeentity setgoal(goalpos);
        }
        if (self isatgoal() || !isdefined(goalpos)) {
            self clearpath();
            behaviortreeentity.keep_moving = 0;
        }
        function_9d92b55a(behaviortreeentity);
    } else if (isdefined(behaviortreeentity.attackable) && !designated_target && !var_bd871069) {
        if (isdefined(behaviortreeentity.attackable_slot)) {
            if (isdefined(behaviortreeentity.attackable_goal_radius)) {
                behaviortreeentity.goalradius = behaviortreeentity.attackable_goal_radius;
            }
            nav_mesh = getclosestpointonnavmesh(behaviortreeentity.attackable_slot.origin, 64);
            if (isdefined(nav_mesh)) {
                behaviortreeentity setgoal(nav_mesh);
            } else {
                behaviortreeentity setgoal(behaviortreeentity.attackable_slot.origin);
            }
        } else if (isdefined(behaviortreeentity.var_b238ef38) && isdefined(behaviortreeentity.var_b238ef38.position)) {
            behaviortreeentity setgoal(behaviortreeentity.var_b238ef38.position);
        }
        function_9d92b55a(behaviortreeentity);
    } else if (isdefined(behaviortreeentity.favoriteenemy)) {
        behaviortreeentity.has_exit_point = undefined;
        behaviortreeentity val::reset(#"attack_properties", "ignoreall");
        if (isarray(behaviortreeentity.enemy.var_f904e440) && isinarray(behaviortreeentity.enemy.var_f904e440, behaviortreeentity)) {
            return;
        }
        if (isdefined(level.enemy_location_override_func)) {
            goalpos = [[ level.enemy_location_override_func ]](behaviortreeentity, behaviortreeentity.favoriteenemy);
            if (isdefined(goalpos)) {
                behaviortreeentity setgoal(goalpos);
            } else {
                behaviortreeentity zombieupdategoal();
            }
        } else if (is_true(behaviortreeentity.is_rat_test)) {
        } else if (zombieshouldmoveawaycondition(behaviortreeentity)) {
        } else {
            behaviortreeentity zombieupdategoal();
        }
    }
    if (players.size > 1) {
        for (i = 0; i < behaviortreeentity.ignore_player.size; i++) {
            if (isdefined(behaviortreeentity.ignore_player[i])) {
                if (!isdefined(behaviortreeentity.ignore_player[i].ignore_counter)) {
                    behaviortreeentity.ignore_player[i].ignore_counter = 0;
                    continue;
                }
                behaviortreeentity.ignore_player[i].ignore_counter = behaviortreeentity.ignore_player[i].ignore_counter + 1;
            }
        }
    }
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x1c2a77, Offset: 0x6388
// Size: 0x1ac
function function_483766be(entity) {
    if (is_true(entity.var_1fa24724) && !isdefined(entity.enemy_override) && !isdefined(entity.attackable) && isplayer(entity.enemy) && isdefined(entity.enemy.var_dbb28b34) && gettime() - entity.enemy.var_dbb28b34 > 2000) {
        if (isdefined(entity.enemy) && !is_true(entity.var_205ab08b) && (!isdefined(entity.var_42ecd9f3) || entity.var_42ecd9f3 <= gettime())) {
            function_e5f60f55(entity);
        }
        if (isarray(entity.enemy.var_f904e440) && isinarray(entity.enemy.var_f904e440, entity)) {
            return;
        }
        return;
    }
    if (isarray(entity.enemy.var_f904e440)) {
        arrayremovevalue(entity.enemy.var_f904e440, entity);
    }
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x6 linked
// Checksum 0x42706ce, Offset: 0x6540
// Size: 0x16
function private function_9d92b55a(behaviortreeentity) {
    behaviortreeentity.var_9e6e6645 = undefined;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xddf63469, Offset: 0x6560
// Size: 0x5a
function function_f637b05d(behaviortreeentity) {
    if (is_true(behaviortreeentity.ai.var_870d0893)) {
        return;
    }
    behaviortreeentity.var_93a62fe = zm_utility::get_closest_valid_player(behaviortreeentity.origin, behaviortreeentity.ignore_player);
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xb531c5d7, Offset: 0x65c8
// Size: 0x49c
function zombiefindfleshcode(behaviortreeentity) {
    aiprofile_beginentry("zombieFindFleshCode");
    if (level.intermission) {
        aiprofile_endentry();
        return;
    }
    behaviortreeentity.ignore_player = [];
    behaviortreeentity.goalradius = 30;
    if (behaviortreeentity.team == #"allies") {
        behaviortreeentity findzombieenemy();
        aiprofile_endentry();
        return;
    }
    if (level.wait_and_revive) {
        aiprofile_endentry();
        return;
    }
    monkey = gadget_cymbal_monkey::function_4a5dff80(behaviortreeentity, 0);
    if (isdefined(monkey)) {
        behaviortreeentity.enemy_override = monkey;
    }
    if (level.zombie_poi_array.size > 0) {
        zombie_poi = behaviortreeentity zm_utility::get_zombie_point_of_interest(behaviortreeentity.origin);
    }
    behaviortreeentity zombie_utility::run_ignore_player_handler();
    zm_utility::update_valid_players(behaviortreeentity.origin, behaviortreeentity.ignore_player);
    if (!isdefined(behaviortreeentity.enemy) && !isdefined(zombie_poi)) {
        /#
            if (is_true(behaviortreeentity.ispuppet)) {
                aiprofile_endentry();
                return;
            }
        #/
        if (isdefined(level.no_target_override)) {
            [[ level.no_target_override ]](behaviortreeentity);
        } else {
            behaviortreeentity setgoal(behaviortreeentity.origin);
        }
        aiprofile_endentry();
        return;
    }
    behaviortreeentity.zombie_poi = zombie_poi;
    if (isdefined(zombie_poi)) {
        behaviortreeentity.enemy_override = zombie_poi.poi_ent;
        behaviortreeentity.enemy_override.var_dfa42180 = &zm_utility::function_49f80b6f;
    }
    if (isdefined(behaviortreeentity.enemy_override)) {
        behaviortreeentity.has_exit_point = undefined;
        goalpos = behaviortreeentity.enemy_override.origin;
        if (isdefined(behaviortreeentity.enemy_override.var_dfa42180)) {
            goalpos = behaviortreeentity.enemy_override [[ behaviortreeentity.enemy_override.var_dfa42180 ]](behaviortreeentity);
        }
        if (isdefined(goalpos)) {
            queryresult = positionquery_source_navigation(goalpos, 0, 48, 36, 4);
            foreach (point in queryresult.data) {
                goalpos = point.origin;
                break;
            }
            behaviortreeentity setgoal(goalpos);
        }
    } else if (isdefined(behaviortreeentity.enemy)) {
        behaviortreeentity.has_exit_point = undefined;
        /#
            if (is_true(behaviortreeentity.is_rat_test)) {
                aiprofile_endentry();
                return;
            }
        #/
        if (isdefined(level.enemy_location_override_func)) {
            goalpos = [[ level.enemy_location_override_func ]](behaviortreeentity, behaviortreeentity.enemy);
            if (isdefined(goalpos)) {
                behaviortreeentity setgoal(goalpos);
            } else {
                behaviortreeentity zombieupdategoalcode();
            }
        } else if (isdefined(behaviortreeentity.enemy.last_valid_position)) {
            behaviortreeentity zombieupdategoalcode();
        }
    }
    aiprofile_endentry();
}

// Namespace zm_behavior/zm_behavior
// Params 0, eflags: 0x2 linked
// Checksum 0x49dfe45b, Offset: 0x6a70
// Size: 0x68c
function zombieupdategoal() {
    aiprofile_beginentry("zombieUpdateGoal");
    if (isplayer(self.favoriteenemy)) {
        targetent = zm_ai_utility::function_a2e8fd7b(self, self.favoriteenemy);
        if (isdefined(targetent.last_valid_position)) {
            targetpos = getclosestpointonnavmesh(targetent.last_valid_position, 64, 0);
            if (!isdefined(targetpos)) {
                targetpos = targetent.origin;
            }
        } else {
            targetpos = targetent.origin;
        }
    } else {
        targetpos = getclosestpointonnavmesh(self.favoriteenemy.origin, 64, 0);
        if (!isdefined(targetpos) && self.favoriteenemy function_dd070839() && isdefined(self.favoriteenemy.traversestartnode)) {
            targetpos = self.favoriteenemy.traversestartnode.origin;
        }
    }
    if (isentity(targetent)) {
        if (!is_true(self.var_1fa24724)) {
            self.var_1f1f2fcd = undefined;
        } else if (self isposinclaimedlocation(isdefined(self.var_1f1f2fcd) ? self.var_1f1f2fcd : targetpos)) {
            queryresult = positionquery_source_navigation(targetpos, self getpathfindingradius(), self getpathfindingradius() * 5, 64, 16, self);
            if (queryresult.data.size > 0) {
                positionquery_filter_inclaimedlocation(queryresult, self);
                queryresult.data = function_7b8e26b3(queryresult.data, 0, "inClaimedLocation");
                if (queryresult.data.size > 0) {
                    point = arraygetclosest(self.origin, queryresult.data);
                    self.var_1f1f2fcd = point.origin;
                    targetpos = point.origin;
                }
            }
        }
        targetpos = isdefined(self.var_1f1f2fcd) ? self.var_1f1f2fcd : targetpos;
    }
    if (!isdefined(targetpos)) {
        return;
    }
    var_75dd804d = length2dsquared(self.origin - targetpos);
    var_2b8b6d3f = sqr(175);
    shouldrepath = 0;
    if (isdefined(self.var_9e6e6645)) {
        if (isdefined(targetpos)) {
            if (is_true(self.var_4fe4e626)) {
                self.var_4fe4e626 = 0;
                shouldrepath = 1;
            } else if (distancesquared(self.var_9e6e6645, targetpos) > sqr(18)) {
                shouldrepath = 1;
            } else if (var_75dd804d < sqr(72) && (!isdefined(self.nextgoalupdate) || self.nextgoalupdate < gettime())) {
                shouldrepath = 1;
            } else if (is_true(self.var_d9a37fc4) && var_75dd804d <= var_2b8b6d3f) {
                shouldrepath = 1;
            }
        }
    } else {
        shouldrepath = 1;
    }
    if (self function_dd070839()) {
        shouldrepath = 0;
    }
    if (isactor(self) && self asmistransitionrunning() || self asmistransdecrunning()) {
        shouldrepath = 0;
    }
    if (shouldrepath) {
        goalpos = targetpos;
        self.var_d9a37fc4 = 0;
        if (var_75dd804d > var_2b8b6d3f && !is_false(self.should_zigzag)) {
            angle = randomfloatrange(-180, 180);
            distance = randomfloatrange(16, 128);
            if (isdefined(self.var_60d1126a)) {
                struct = [[ self.var_60d1126a ]](self, targetpos);
                if (isdefined(struct)) {
                    assert(isdefined(struct.angle) && isdefined(struct.dist), "special");
                    angle = struct.angle;
                    distance = struct.dist;
                }
            }
            goalpos = checknavmeshdirection(targetpos, function_ba142845(angle), distance, self getpathfindingradius() * 1.1);
            self.var_d9a37fc4 = 1;
        }
        self setgoal(goalpos, undefined, undefined, undefined, undefined, 1);
        self.var_9e6e6645 = targetpos;
        self.nextgoalupdate = gettime() + randomintrange(500, 1000);
    }
    aiprofile_endentry();
}

// Namespace zm_behavior/zm_behavior
// Params 0, eflags: 0x2 linked
// Checksum 0x8e87c629, Offset: 0x7108
// Size: 0x544
function zombieupdategoalcode() {
    aiprofile_beginentry("zombieUpdateGoalCode");
    shouldrepath = 0;
    if (isdefined(self.enemy)) {
        if (!isdefined(self.nextgoalupdate) || self.nextgoalupdate <= gettime()) {
            shouldrepath = 1;
        } else if (distancesquared(self.origin, self.enemy.origin) <= sqr(200)) {
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
        goalpos = self.enemy.origin;
        if (isdefined(self.enemy.last_valid_position)) {
            var_2a741504 = getclosestpointonnavmesh(self.enemy.last_valid_position, 64, 0);
            if (isdefined(var_2a741504)) {
                goalpos = var_2a741504;
            }
        }
        if (is_true(level.do_randomized_zigzag_path)) {
            if (distancesquared(self.origin, goalpos) > sqr(240)) {
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
                deviationdistance = randomintrange(240, 480);
                segmentlength = 0;
                for (index = 1; index < path.size; index++) {
                    currentseglength = distance(path[index - 1], path[index]);
                    if (segmentlength + currentseglength > deviationdistance) {
                        remaininglength = deviationdistance - segmentlength;
                        seedposition = path[index - 1] + vectornormalize(path[index] - path[index - 1]) * remaininglength;
                        /#
                            recordcircle(seedposition, 2, (1, 0.5, 0), "<unknown string>", self);
                        #/
                        innerzigzagradius = level.inner_zigzag_radius;
                        outerzigzagradius = level.outer_zigzag_radius;
                        queryresult = positionquery_source_navigation(seedposition, innerzigzagradius, outerzigzagradius, 36, 16, self, 16);
                        positionquery_filter_inclaimedlocation(queryresult, self);
                        if (queryresult.data.size > 0) {
                            point = queryresult.data[randomint(queryresult.data.size)];
                            if (tracepassedonnavmesh(seedposition, point.origin, 16)) {
                                goalpos = point.origin;
                            }
                        }
                        break;
                    }
                    segmentlength += currentseglength;
                }
            }
        }
        self setgoal(goalpos);
        self.nextgoalupdate = gettime() + randomintrange(500, 1000);
    }
    aiprofile_endentry();
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xc6b852e5, Offset: 0x7658
// Size: 0x26c
function zombieenteredplayable(behaviortreeentity) {
    if (is_true(behaviortreeentity.ai.var_870d0893)) {
        return;
    }
    if (is_true(behaviortreeentity.completed_emerging_into_playable_area)) {
        return;
    }
    if (zm_utility::function_c85ebbbc()) {
        if (!isdefined(level.playable_area)) {
            level.playable_area = getentarray("player_volume", "script_noteworthy");
        }
        var_12ed21a1 = function_72d3bca6(level.playable_area, behaviortreeentity.origin, undefined, undefined, level.var_603981f1);
        foreach (area in var_12ed21a1) {
            if (behaviortreeentity istouching(area)) {
                if (isdefined(behaviortreeentity.var_ee833cd6)) {
                    behaviortreeentity [[ behaviortreeentity.var_ee833cd6 ]]();
                } else {
                    behaviortreeentity zm_spawner::zombie_complete_emerging_into_playable_area();
                }
                return 1;
            }
        }
    }
    if (zm_utility::function_21f4ac36()) {
        if (!isdefined(level.var_a2a9b2de)) {
            level.var_a2a9b2de = getnodearray("player_region", "script_noteworthy");
        }
        node = function_52c1730(behaviortreeentity.origin, level.var_a2a9b2de, 500);
        if (isdefined(node)) {
            if (isdefined(behaviortreeentity.var_ee833cd6)) {
                behaviortreeentity [[ behaviortreeentity.var_ee833cd6 ]]();
            } else {
                behaviortreeentity zm_spawner::zombie_complete_emerging_into_playable_area();
            }
            return 1;
        }
    }
    return 0;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x3b0bd970, Offset: 0x78d0
// Size: 0x4e
function shouldmovecondition(behaviortreeentity) {
    if (behaviortreeentity haspath()) {
        return true;
    }
    if (is_true(behaviortreeentity.keep_moving)) {
        return true;
    }
    return false;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xe8654181, Offset: 0x7928
// Size: 0x16
function zombieshouldmoveawaycondition(*behaviortreeentity) {
    return level.wait_and_revive;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x5887f197, Offset: 0x7948
// Size: 0x2e
function waskilledbyteslacondition(behaviortreeentity) {
    if (is_true(behaviortreeentity.tesla_death)) {
        return true;
    }
    return false;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xb6dd17e3, Offset: 0x7980
// Size: 0x2e
function function_a00b473a(behaviortreeentity) {
    if (is_true(behaviortreeentity.var_49fdad6a)) {
        return true;
    }
    return false;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x6832ffd9, Offset: 0x79b8
// Size: 0x2e
function function_8396494f(behaviortreeentity) {
    if (is_true(behaviortreeentity.var_ebd66e27)) {
        return true;
    }
    return false;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x6c315769, Offset: 0x79f0
// Size: 0x1a
function function_77a0b45d(behaviortreeentity) {
    behaviortreeentity.var_98f1f37c = 1;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x36bacf88, Offset: 0x7a18
// Size: 0x1a
function disablepowerups(behaviortreeentity) {
    behaviortreeentity.no_powerups = 1;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x6f0d7f0d, Offset: 0x7a40
// Size: 0x16
function function_fa2814ae(behaviortreeentity) {
    behaviortreeentity.var_98f1f37c = 0;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x2b215f84, Offset: 0x7a60
// Size: 0x16
function enablepowerups(behaviortreeentity) {
    behaviortreeentity.no_powerups = 0;
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0xeed7a31d, Offset: 0x7a80
// Size: 0x2c8
function zombiemoveaway(behaviortreeentity, asmstatename) {
    player = util::gethostplayer();
    if (!isdefined(player)) {
        return 5;
    }
    queryresult = level.move_away_points;
    animationstatenetworkutility::requeststate(behaviortreeentity, asmstatename);
    if (!isdefined(queryresult)) {
        return 5;
    }
    self.keep_moving = 0;
    for (i = 0; i < queryresult.data.size; i++) {
        if (!zm_utility::check_point_in_playable_area(queryresult.data[i].origin)) {
            continue;
        }
        isbehind = vectordot(player.origin - behaviortreeentity.origin, queryresult.data[i].origin - behaviortreeentity.origin);
        if (isbehind < 0) {
            behaviortreeentity setgoal(queryresult.data[i].origin);
            arrayremoveindex(level.move_away_points.data, i, 0);
            i--;
            return 5;
        }
    }
    for (i = 0; i < queryresult.data.size; i++) {
        if (!zm_utility::check_point_in_playable_area(queryresult.data[i].origin)) {
            continue;
        }
        dist_zombie = distancesquared(queryresult.data[i].origin, behaviortreeentity.origin);
        dist_player = distancesquared(queryresult.data[i].origin, player.origin);
        if (dist_zombie < dist_player) {
            behaviortreeentity setgoal(queryresult.data[i].origin);
            arrayremoveindex(level.move_away_points.data, i, 0);
            i--;
            return 5;
        }
    }
    self zm::default_find_exit_point();
    return 5;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xceaded9f, Offset: 0x7d50
// Size: 0x2e
function zombieisbeinggrappled(behaviortreeentity) {
    if (is_true(behaviortreeentity.grapple_is_fatal)) {
        return true;
    }
    return false;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xec54c1f9, Offset: 0x7d88
// Size: 0x2e
function zombieshouldknockdown(behaviortreeentity) {
    if (is_true(behaviortreeentity.knockdown)) {
        return true;
    }
    return false;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xc46db6e0, Offset: 0x7dc0
// Size: 0x3c
function function_6a690c50(behaviortreeentity) {
    return zombieshouldknockdown(behaviortreeentity) && zombiebehavior::zombiehaslegs(behaviortreeentity);
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xc628d122, Offset: 0x7e08
// Size: 0x2e
function zombieispushed(behaviortreeentity) {
    if (is_true(behaviortreeentity.pushed)) {
        return true;
    }
    return false;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xb92bf6a4, Offset: 0x7e40
// Size: 0x2e
function function_22d21726(behaviortreeentity) {
    if (is_true(behaviortreeentity.var_687de2a9)) {
        return true;
    }
    return false;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x7ca0c140, Offset: 0x7e78
// Size: 0xa8
function function_7531db00(behaviortreeentity) {
    aiutility::traversesetup(behaviortreeentity);
    behaviortreeentity.old_powerups = behaviortreeentity.no_powerups;
    behaviortreeentity.var_9ed3cc11 = behaviortreeentity function_e827fc0e();
    behaviortreeentity pushplayer(1);
    behaviortreeentity callback::callback(#"hash_1518febf00439d5");
    behaviortreeentity setforcenocull();
    return true;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x85d82d41, Offset: 0x7f28
// Size: 0xd8
function function_1329e086(behaviortreeentity) {
    behaviortreeentity removeforcenocull();
    behaviortreeentity.no_powerups = behaviortreeentity.old_powerups;
    if (!is_true(behaviortreeentity.missinglegs)) {
        behaviortreeentity collidewithactors(0);
        behaviortreeentity.enablepushtime = gettime() + 1000;
    }
    if (isdefined(behaviortreeentity.var_9ed3cc11)) {
        behaviortreeentity pushplayer(behaviortreeentity.var_9ed3cc11);
        behaviortreeentity.var_9ed3cc11 = undefined;
    }
    behaviortreeentity callback::callback(#"hash_34b65342cbfdadac");
    return true;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x71796c0d, Offset: 0x8008
// Size: 0x34
function zombiegrappleactionstart(behaviortreeentity) {
    behaviortreeentity setblackboardattribute("_grapple_direction", self.grapple_direction);
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x2666dfa6, Offset: 0x8048
// Size: 0xaa
function zombieknockdownactionstart(behaviortreeentity) {
    behaviortreeentity setblackboardattribute("_knockdown_direction", behaviortreeentity.knockdown_direction);
    behaviortreeentity setblackboardattribute("_knockdown_type", behaviortreeentity.knockdown_type);
    behaviortreeentity setblackboardattribute("_getup_direction", behaviortreeentity.getup_direction);
    behaviortreeentity collidewithactors(0);
    behaviortreeentity.blockingpain = 1;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x6 linked
// Checksum 0x93bdbce0, Offset: 0x8100
// Size: 0x3e
function private function_c8939973(behaviortreeentity) {
    behaviortreeentity.knockdown = 0;
    behaviortreeentity collidewithactors(1);
    behaviortreeentity.blockingpain = 0;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x6 linked
// Checksum 0x3b237494, Offset: 0x8148
// Size: 0x4c
function private zombiepushedactionstart(behaviortreeentity) {
    behaviortreeentity collidewithactors(0);
    behaviortreeentity setblackboardattribute("_push_direction", behaviortreeentity.push_direction);
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x6 linked
// Checksum 0x531d426c, Offset: 0x81a0
// Size: 0x2e
function private zombiepushedactionterminate(behaviortreeentity) {
    behaviortreeentity collidewithactors(1);
    behaviortreeentity.pushed = 0;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x6 linked
// Checksum 0x1bf21166, Offset: 0x81d8
// Size: 0x24
function private function_289cdbab(behaviortreeentity) {
    behaviortreeentity ai::disable_pain();
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x6 linked
// Checksum 0x560ba105, Offset: 0x8208
// Size: 0x24
function private function_6560f92b(behaviortreeentity) {
    behaviortreeentity ai::enable_pain();
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x1c72764c, Offset: 0x8238
// Size: 0x52
function zombieshouldstun(behaviortreeentity) {
    if (behaviortreeentity ai::is_stunned() && !is_true(behaviortreeentity.tesla_death)) {
        return true;
    }
    return false;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x2c757770, Offset: 0x8298
// Size: 0x4c
function zombiestunstart(behaviortreeentity) {
    behaviortreeentity pathmode("dont move", 1);
    callback::callback(#"hash_1eda827ff5e6895b");
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x86bee437, Offset: 0x82f0
// Size: 0x4c
function function_c377438f(behaviortreeentity) {
    behaviortreeentity pathmode("move allowed");
    callback::callback(#"hash_210adcf09e99fba1");
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0x929d3baa, Offset: 0x8348
// Size: 0x88
function zombiestunactionstart(behaviortreeentity, asmstatename) {
    zombiestunstart(behaviortreeentity);
    behaviortreeentity.var_4034a31 = gibserverutils::isgibbed(behaviortreeentity, 256) || gibserverutils::isgibbed(behaviortreeentity, 128);
    animationstatenetworkutility::requeststate(behaviortreeentity, asmstatename);
    return 5;
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0xb34f277a, Offset: 0x83d8
// Size: 0x98
function function_4e52c07(behaviortreeentity, *asmstatename) {
    if (isdefined(asmstatename.var_4034a31) && asmstatename.var_4034a31 != (gibserverutils::isgibbed(asmstatename, 256) || gibserverutils::isgibbed(asmstatename, 128))) {
        return 4;
    }
    if (asmstatename ai::is_stunned()) {
        return 5;
    }
    return 4;
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0xf64e1484, Offset: 0x8478
// Size: 0x3a
function zombiestunactionend(behaviortreeentity, *asmstatename) {
    function_c377438f(asmstatename);
    asmstatename.var_4034a31 = undefined;
    return 4;
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0xf3bbc90e, Offset: 0x84c0
// Size: 0xc8
function zombietraverseaction(behaviortreeentity, asmstatename) {
    aiutility::traverseactionstart(behaviortreeentity, asmstatename);
    behaviortreeentity.old_powerups = behaviortreeentity.no_powerups;
    disablepowerups(behaviortreeentity);
    function_77a0b45d(behaviortreeentity);
    behaviortreeentity.var_9ed3cc11 = behaviortreeentity function_e827fc0e();
    behaviortreeentity pushplayer(1);
    behaviortreeentity callback::callback(#"hash_1518febf00439d5");
    return 5;
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0xe5fe7658, Offset: 0x8590
// Size: 0x100
function zombietraverseactionterminate(behaviortreeentity, asmstatename) {
    aiutility::wpn_debug_bot_joinleave(behaviortreeentity, asmstatename);
    if (behaviortreeentity asmgetstatus() == "asm_status_complete") {
        behaviortreeentity.no_powerups = behaviortreeentity.old_powerups;
        if (!is_true(behaviortreeentity.missinglegs)) {
            behaviortreeentity collidewithactors(0);
            behaviortreeentity.enablepushtime = gettime() + 1000;
        }
        if (isdefined(behaviortreeentity.var_9ed3cc11)) {
            behaviortreeentity pushplayer(behaviortreeentity.var_9ed3cc11);
            behaviortreeentity.var_9ed3cc11 = undefined;
        }
    }
    behaviortreeentity callback::callback(#"hash_34b65342cbfdadac");
    return 4;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x3cd06385, Offset: 0x8698
// Size: 0x2e
function zombiegottoentrancecondition(behaviortreeentity) {
    if (is_true(behaviortreeentity.got_to_entrance)) {
        return true;
    }
    return false;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xc9298612, Offset: 0x86d0
// Size: 0x2e
function zombiegottoattackspotcondition(behaviortreeentity) {
    if (is_true(behaviortreeentity.at_entrance_tear_spot)) {
        return true;
    }
    return false;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x55dbb70b, Offset: 0x8708
// Size: 0x38
function zombiehasattackspotalreadycondition(behaviortreeentity) {
    if (isdefined(behaviortreeentity.attacking_spot_index) && behaviortreeentity.attacking_spot_index >= 0) {
        return true;
    }
    return false;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x2f31b017, Offset: 0x8748
// Size: 0x7e
function zombieshouldtearcondition(behaviortreeentity) {
    if (isdefined(behaviortreeentity.first_node)) {
        if (isdefined(behaviortreeentity.first_node.zbarrier)) {
            if (isdefined(behaviortreeentity.first_node.barrier_chunks)) {
                if (!zm_utility::all_chunks_destroyed(behaviortreeentity.first_node, behaviortreeentity.first_node.barrier_chunks)) {
                    return true;
                }
            }
        }
    }
    return false;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xaa8c4874, Offset: 0x87d0
// Size: 0x282
function zombieshouldattackthroughboardscondition(behaviortreeentity) {
    if (is_true(behaviortreeentity.missinglegs)) {
        return false;
    }
    if (isdefined(behaviortreeentity.first_node.zbarrier)) {
        if (!behaviortreeentity.first_node.zbarrier zbarriersupportszombiereachthroughattacks()) {
            chunks = undefined;
            if (isdefined(behaviortreeentity.first_node)) {
                chunks = zm_utility::get_non_destroyed_chunks(behaviortreeentity.first_node, behaviortreeentity.first_node.barrier_chunks);
            }
            if (isdefined(chunks) && chunks.size > 0) {
                return false;
            }
        }
    }
    if (getdvarstring(#"zombie_reachin_freq") == "") {
        setdvar(#"zombie_reachin_freq", 50);
    }
    freq = getdvarint(#"zombie_reachin_freq", 0);
    players = getplayers();
    attack = 0;
    behaviortreeentity.player_targets = [];
    for (i = 0; i < players.size; i++) {
        if (isalive(players[i]) && !isdefined(players[i].revivetrigger) && distance2d(behaviortreeentity.origin, players[i].origin) <= 109.8 && !is_true(players[i].ignoreme)) {
            behaviortreeentity.player_targets[behaviortreeentity.player_targets.size] = players[i];
            attack = 1;
        }
    }
    if (!attack || freq < randomint(100)) {
        return false;
    }
    return true;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x2466c642, Offset: 0x8a60
// Size: 0x110
function zombieshouldtauntcondition(behaviortreeentity) {
    if (is_true(behaviortreeentity.missinglegs)) {
        return false;
    }
    if (!isdefined(behaviortreeentity.first_node.zbarrier)) {
        return false;
    }
    if (!behaviortreeentity.first_node.zbarrier zbarriersupportszombietaunts()) {
        return false;
    }
    if (getdvarstring(#"zombie_taunt_freq") == "") {
        setdvar(#"zombie_taunt_freq", 5);
    }
    freq = getdvarint(#"zombie_taunt_freq", 0);
    if (freq >= randomint(100)) {
        return true;
    }
    return false;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x5fefd046, Offset: 0x8b78
// Size: 0xc2
function zombieshouldenterplayablecondition(behaviortreeentity) {
    if (isdefined(behaviortreeentity.first_node) && isdefined(behaviortreeentity.first_node.barrier_chunks)) {
        if (zm_utility::all_chunks_destroyed(behaviortreeentity.first_node, behaviortreeentity.first_node.barrier_chunks)) {
            if ((!isdefined(behaviortreeentity.attacking_spot) || is_true(behaviortreeentity.at_entrance_tear_spot)) && !is_true(behaviortreeentity.completed_emerging_into_playable_area)) {
                return true;
            }
        }
    }
    return false;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xf905a8ac, Offset: 0x8c48
// Size: 0x24
function ischunkvalidcondition(behaviortreeentity) {
    if (isdefined(behaviortreeentity.chunk)) {
        return true;
    }
    return false;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x26d62a6f, Offset: 0x8c78
// Size: 0x2e
function inplayablearea(behaviortreeentity) {
    if (is_true(behaviortreeentity.completed_emerging_into_playable_area)) {
        return true;
    }
    return false;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xc2d7d30a, Offset: 0x8cb0
// Size: 0x36
function shouldskipteardown(behaviortreeentity) {
    if (behaviortreeentity zm_spawner::should_skip_teardown(behaviortreeentity.find_flesh_struct_string)) {
        return true;
    }
    return false;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x104b0216, Offset: 0x8cf0
// Size: 0x56
function zombieisthinkdone(behaviortreeentity) {
    /#
        if (is_true(behaviortreeentity.is_rat_test)) {
            return false;
        }
    #/
    if (is_true(behaviortreeentity.zombie_think_done)) {
        return true;
    }
    return false;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xca2d2d4a, Offset: 0x8d50
// Size: 0x10c
function zombieisatgoal(behaviortreeentity) {
    goalinfo = behaviortreeentity function_4794d6a3();
    isatscriptgoal = is_true(goalinfo.var_9e404264);
    if (is_true(level.var_21326085)) {
        if (!isatscriptgoal && isdefined(goalinfo.overridegoalpos)) {
            if (abs(goalinfo.overridegoalpos[2] - behaviortreeentity.origin[2]) < 17) {
                dist = distance2dsquared(goalinfo.overridegoalpos, behaviortreeentity.origin);
                if (dist < 289) {
                    return 1;
                }
            }
        }
    }
    return isatscriptgoal;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xb8ebce2b, Offset: 0x8e68
// Size: 0x7a
function zombieisatentrance(behaviortreeentity) {
    goalinfo = behaviortreeentity function_4794d6a3();
    isatscriptgoal = is_true(goalinfo.var_9e404264);
    isatentrance = isdefined(behaviortreeentity.first_node) && isatscriptgoal;
    return isatentrance;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xb93ee38d, Offset: 0x8ef0
// Size: 0x8a
function function_4c12882b(behaviortreeentity) {
    if (!is_true(behaviortreeentity.got_to_entrance)) {
        return false;
    }
    if (isdefined(behaviortreeentity.first_node)) {
        return true;
    }
    node = behaviortreeentity.var_a5add0c0;
    if (isdefined(node.var_597f08bf) && node.var_597f08bf.targetname === "barricade_window") {
        return true;
    }
    return false;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xd15da947, Offset: 0x8f88
// Size: 0x20a
function function_b86a1b9d(behaviortreeentity) {
    barricades = [isdefined(behaviortreeentity.var_a5add0c0.var_597f08bf) ? behaviortreeentity.var_a5add0c0.var_597f08bf : undefined, behaviortreeentity.first_node];
    foreach (barricade in barricades) {
        if (namespace_85745671::function_f4087909(barricade)) {
            /#
                if (getdvarint(#"hash_2f078c2224f40586", 0) && isdefined(barricade.zbarrier)) {
                    record3dtext("<unknown string>" + barricade.zbarrier getentnum(), behaviortreeentity.origin, (1, 0.5, 0), "<unknown string>", behaviortreeentity);
                }
            #/
            return true;
        }
        /#
            if (getdvarint(#"hash_2f078c2224f40586", 0) && isdefined(barricade.zbarrier)) {
                record3dtext("<unknown string>" + barricade.zbarrier getentnum(), behaviortreeentity.origin, (1, 0, 0), "<unknown string>", behaviortreeentity);
            }
        #/
    }
    return false;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xfc771145, Offset: 0x91a0
// Size: 0x3c
function function_e7f2e349(behaviortreeentity) {
    return function_4c12882b(behaviortreeentity) && function_b86a1b9d(behaviortreeentity);
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x6d34c072, Offset: 0x91e8
// Size: 0x3e
function function_45009145(behaviortreeentity) {
    ret = is_true(behaviortreeentity.var_348e5e19);
    behaviortreeentity.var_348e5e19 = undefined;
    return ret;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xaf4ff785, Offset: 0x9230
// Size: 0x14c
function getchunkservice(behaviortreeentity) {
    if (isdefined(behaviortreeentity.chunk) && isdefined(behaviortreeentity.first_node.zbarrier) && behaviortreeentity.first_node.zbarrier getzbarrierpiecestate(behaviortreeentity.chunk) === "targetted_by_zombie") {
        behaviortreeentity.first_node.zbarrier setzbarrierpiecestate(behaviortreeentity.chunk, "closed");
    }
    behaviortreeentity.chunk = zm_utility::get_closest_non_destroyed_chunk(behaviortreeentity.origin, behaviortreeentity.first_node, behaviortreeentity.first_node.barrier_chunks);
    if (isdefined(behaviortreeentity.chunk)) {
        behaviortreeentity.first_node.zbarrier setzbarrierpiecestate(behaviortreeentity.chunk, "targetted_by_zombie");
        behaviortreeentity.first_node thread zm_spawner::check_zbarrier_piece_for_zombie_death(behaviortreeentity.chunk, behaviortreeentity.first_node.zbarrier, behaviortreeentity);
    }
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0xf6f6bb1e, Offset: 0x9388
// Size: 0x2c
function function_38237e30(behaviortreeentity, *anim) {
    getchunkservice(anim);
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xd2e996c3, Offset: 0x93c0
// Size: 0x6a
function updatechunkservice(behaviortreeentity) {
    while (0 < behaviortreeentity.first_node.zbarrier.chunk_health[behaviortreeentity.chunk]) {
        behaviortreeentity.first_node.zbarrier.chunk_health[behaviortreeentity.chunk]--;
    }
    behaviortreeentity.lastchunk_destroy_time = gettime();
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x7349196d, Offset: 0x9438
// Size: 0xf2
function updateattackspotservice(behaviortreeentity) {
    if (is_true(behaviortreeentity.marked_for_death) || behaviortreeentity.health < 0) {
        return false;
    }
    if (!isdefined(behaviortreeentity.attacking_spot)) {
        if (!isdefined(behaviortreeentity.first_node) || !behaviortreeentity zm_spawner::get_attack_spot(behaviortreeentity.first_node)) {
            return false;
        }
    }
    if (isdefined(behaviortreeentity.attacking_spot)) {
        behaviortreeentity.goalradius = 17;
        behaviortreeentity function_a57c34b7(behaviortreeentity.attacking_spot);
        if (zombieisatgoal(behaviortreeentity)) {
            behaviortreeentity.at_entrance_tear_spot = 1;
        }
        return true;
    }
    return false;
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0xf512c773, Offset: 0x9538
// Size: 0x2a
function function_b3311a1a(behaviortreeentity, *anim) {
    return updateattackspotservice(anim);
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xe020193d, Offset: 0x9570
// Size: 0x230
function findnodesservice(behaviortreeentity) {
    node = undefined;
    behaviortreeentity.entrance_nodes = [];
    if (isdefined(behaviortreeentity.find_flesh_struct_string)) {
        if (behaviortreeentity.find_flesh_struct_string == "find_flesh") {
            return 0;
        }
        for (i = 0; i < level.exterior_goals.size; i++) {
            if (isdefined(level.exterior_goals[i].script_string) && level.exterior_goals[i].script_string == behaviortreeentity.find_flesh_struct_string) {
                node = level.exterior_goals[i];
                break;
            }
        }
        for (i = 0; i < level.barrier_align.size; i++) {
            if (isdefined(level.barrier_align[i].script_string) && level.barrier_align[i].script_string == behaviortreeentity.find_flesh_struct_string) {
                behaviortreeentity.barrier_align = level.barrier_align[i];
            }
        }
        behaviortreeentity.entrance_nodes[behaviortreeentity.entrance_nodes.size] = node;
        assert(isdefined(node), "<unknown string>" + behaviortreeentity.find_flesh_struct_string + "<unknown string>");
        behaviortreeentity.first_node = node;
        goal_pos = getclosestpointonnavmesh(node.origin, 128, self getpathfindingradius());
        if (isdefined(goal_pos)) {
            behaviortreeentity function_a57c34b7(goal_pos);
        }
        if (zombieisatentrance(behaviortreeentity)) {
            behaviortreeentity.got_to_entrance = 1;
        }
        return 1;
    }
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x7a631fe3, Offset: 0x97a8
// Size: 0x60
function function_92d348e2(behaviortreeentity) {
    node = behaviortreeentity.traversestartnode;
    if (isdefined(node.var_597f08bf)) {
        barricade = node.var_597f08bf;
        barricade notify(#"hash_5cfbbb6ee8378665");
        return true;
    }
    return false;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xac3d1c91, Offset: 0x9810
// Size: 0x1a2
function zombieattackableobjectservice(behaviortreeentity) {
    if (is_true(behaviortreeentity.ai.var_870d0893)) {
        return;
    }
    if (!behaviortreeentity ai::has_behavior_attribute("use_attackable") || !behaviortreeentity ai::get_behavior_attribute("use_attackable")) {
        namespace_85745671::function_2b925fa5(behaviortreeentity);
        return 0;
    }
    if (is_true(behaviortreeentity.missinglegs)) {
        namespace_85745671::function_2b925fa5(behaviortreeentity);
        return 0;
    }
    if (is_true(behaviortreeentity.aat_turned)) {
        namespace_85745671::function_2b925fa5(behaviortreeentity);
        return 0;
    }
    if (isdefined(behaviortreeentity.var_b238ef38) && !isdefined(behaviortreeentity.attackable)) {
        namespace_85745671::function_2b925fa5(behaviortreeentity);
        return;
    }
    if (!isdefined(behaviortreeentity.attackable)) {
        behaviortreeentity.attackable = namespace_85745671::get_attackable(behaviortreeentity, 1);
        return;
    }
    if (!is_true(behaviortreeentity.attackable.is_active)) {
        behaviortreeentity.attackable = undefined;
    }
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0xbd3c124b, Offset: 0x99c0
// Size: 0x38
function zombiemovetoentranceaction(behaviortreeentity, asmstatename) {
    behaviortreeentity.got_to_entrance = 0;
    animationstatenetworkutility::requeststate(behaviortreeentity, asmstatename);
    return 5;
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0x9db27d1c, Offset: 0x9a00
// Size: 0x3e
function zombiemovetoentranceactionterminate(behaviortreeentity, *asmstatename) {
    if (zombieisatentrance(asmstatename)) {
        asmstatename.got_to_entrance = 1;
    }
    return 4;
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0xb9193398, Offset: 0x9a48
// Size: 0x48
function zombiemovetoattackspotaction(behaviortreeentity, asmstatename) {
    function_6eb4f847(behaviortreeentity);
    animationstatenetworkutility::requeststate(behaviortreeentity, asmstatename);
    return 5;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xfe62f7ec, Offset: 0x9a98
// Size: 0x1a
function function_6eb4f847(behaviortreeentity) {
    behaviortreeentity.at_entrance_tear_spot = 0;
    return true;
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0x809410d4, Offset: 0x9ac0
// Size: 0x30
function zombiemovetoattackspotactionterminate(behaviortreeentity, *asmstatename) {
    function_547701ae(asmstatename);
    return 4;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xa9ea852b, Offset: 0x9af8
// Size: 0x1e
function function_547701ae(behaviortreeentity) {
    behaviortreeentity.at_entrance_tear_spot = 1;
    return true;
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0x8c72507c, Offset: 0x9b20
// Size: 0x98
function zombieholdboardaction(behaviortreeentity, asmstatename) {
    function_f83905d5(behaviortreeentity);
    boardactionast = behaviortreeentity astsearch(asmstatename);
    boardactionanimation = animationstatenetworkutility::searchanimationmap(behaviortreeentity, boardactionast[#"animation"]);
    animationstatenetworkutility::requeststate(behaviortreeentity, asmstatename);
    return 5;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x346748bb, Offset: 0x9bc0
// Size: 0x98
function function_f83905d5(behaviortreeentity) {
    aiutility::keepclaimnode(behaviortreeentity);
    behaviortreeentity setblackboardattribute("_which_board_pull", int(behaviortreeentity.chunk));
    behaviortreeentity setblackboardattribute("_board_attack_spot", float(behaviortreeentity.attacking_spot_index));
    return true;
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0xe5791e96, Offset: 0x9c60
// Size: 0x30
function zombieholdboardactionterminate(behaviortreeentity, *asmstatename) {
    function_7d0a2e12(asmstatename);
    return 4;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xa217a9ae, Offset: 0x9c98
// Size: 0x98
function function_7d0a2e12(behaviortreeentity) {
    aiutility::keepclaimnode(behaviortreeentity);
    behaviortreeentity setblackboardattribute("_which_board_pull", int(behaviortreeentity.chunk));
    behaviortreeentity setblackboardattribute("_board_attack_spot", float(behaviortreeentity.attacking_spot_index));
    return true;
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0xdae86d4d, Offset: 0x9d38
// Size: 0x98
function zombiegrabboardaction(behaviortreeentity, asmstatename) {
    function_66a8aef2(behaviortreeentity);
    boardactionast = behaviortreeentity astsearch(asmstatename);
    boardactionanimation = animationstatenetworkutility::searchanimationmap(behaviortreeentity, boardactionast[#"animation"]);
    animationstatenetworkutility::requeststate(behaviortreeentity, asmstatename);
    return 5;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xfd4d509c, Offset: 0x9dd8
// Size: 0xb8
function function_66a8aef2(behaviortreeentity) {
    aiutility::keepclaimnode(behaviortreeentity);
    behaviortreeentity pathmode("dont move");
    behaviortreeentity setblackboardattribute("_which_board_pull", int(behaviortreeentity.chunk));
    behaviortreeentity setblackboardattribute("_board_attack_spot", float(behaviortreeentity.attacking_spot_index));
    return true;
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0xa22c9156, Offset: 0x9e98
// Size: 0x30
function zombiegrabboardactionterminate(behaviortreeentity, *asmstatename) {
    function_16251b30(asmstatename);
    return 4;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xb37fdd61, Offset: 0x9ed0
// Size: 0x28
function function_16251b30(behaviortreeentity) {
    aiutility::releaseclaimnode(behaviortreeentity);
    return true;
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0x74c981ac, Offset: 0x9f00
// Size: 0x98
function zombiepullboardaction(behaviortreeentity, asmstatename) {
    function_aa76355a(behaviortreeentity);
    boardactionast = behaviortreeentity astsearch(asmstatename);
    boardactionanimation = animationstatenetworkutility::searchanimationmap(behaviortreeentity, boardactionast[#"animation"]);
    animationstatenetworkutility::requeststate(behaviortreeentity, asmstatename);
    return 5;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xece9b7a, Offset: 0x9fa0
// Size: 0x98
function function_aa76355a(behaviortreeentity) {
    aiutility::keepclaimnode(behaviortreeentity);
    behaviortreeentity setblackboardattribute("_which_board_pull", int(behaviortreeentity.chunk));
    behaviortreeentity setblackboardattribute("_board_attack_spot", float(behaviortreeentity.attacking_spot_index));
    return true;
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0x3e7c3d81, Offset: 0xa040
// Size: 0x30
function zombiepullboardactionterminate(behaviortreeentity, *asmstatename) {
    function_76d619c8(asmstatename);
    return 4;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x7a1ee1eb, Offset: 0xa078
// Size: 0x32
function function_76d619c8(behaviortreeentity) {
    aiutility::releaseclaimnode(behaviortreeentity);
    self.lastchunk_destroy_time = gettime();
    return true;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x8be2f83b, Offset: 0xa0b8
// Size: 0xe6
function barricadebreakterminate(behaviortreeentity) {
    behaviortreeentity.pushable = 1;
    behaviortreeentity.blockingpain = 0;
    behaviortreeentity pathmode("move allowed");
    behaviortreeentity clearpath();
    behaviortreeentity animmode("normal", 0);
    behaviortreeentity orientmode("face motion");
    if (zm_utility::is_survival()) {
        if (isdefined(behaviortreeentity.var_67ab7d45)) {
            behaviortreeentity setgoal(behaviortreeentity.var_67ab7d45);
            behaviortreeentity.var_67ab7d45 = undefined;
        }
    }
}

// Namespace zm_behavior/zm_behavior
// Params 0, eflags: 0x2 linked
// Checksum 0xd35958b5, Offset: 0xa1a8
// Size: 0x92
function function_a26fcba() {
    self.var_ffc6fe22 = undefined;
    callback::function_52ac9652(#"hash_34b65342cbfdadac", &function_a26fcba);
    self clearpath();
    self.first_node = undefined;
    self.barrier_align = undefined;
    self zombie_utility::reset_attack_spot();
    self.at_entrance_tear_spot = 0;
    self.got_to_entrance = 0;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x93bc6d6c, Offset: 0xa248
// Size: 0x1e
function function_a5a66d65(behaviortreeentity) {
    behaviortreeentity.var_348e5e19 = 1;
    return true;
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0x61e3cba8, Offset: 0xa270
// Size: 0x48
function zombieattackthroughboardsaction(behaviortreeentity, asmstatename) {
    function_ebba4d65(behaviortreeentity);
    animationstatenetworkutility::requeststate(behaviortreeentity, asmstatename);
    return 5;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x113d621a, Offset: 0xa2c0
// Size: 0x36
function function_ebba4d65(behaviortreeentity) {
    aiutility::keepclaimnode(behaviortreeentity);
    behaviortreeentity.boardattack = 1;
    return true;
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0x3412410a, Offset: 0xa300
// Size: 0x30
function zombieattackthroughboardsactionterminate(behaviortreeentity, *asmstatename) {
    function_28b47cc8(asmstatename);
    return 4;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x8ed92632, Offset: 0xa338
// Size: 0x32
function function_28b47cc8(behaviortreeentity) {
    aiutility::releaseclaimnode(behaviortreeentity);
    behaviortreeentity.boardattack = 0;
    return true;
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0x29d6f7fe, Offset: 0xa378
// Size: 0x48
function zombietauntaction(behaviortreeentity, asmstatename) {
    function_eb270aac(behaviortreeentity);
    animationstatenetworkutility::requeststate(behaviortreeentity, asmstatename);
    return 5;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xa5d5e7cc, Offset: 0xa3c8
// Size: 0x28
function function_eb270aac(behaviortreeentity) {
    aiutility::keepclaimnode(behaviortreeentity);
    return true;
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0x52cbd32d, Offset: 0xa3f8
// Size: 0x30
function zombietauntactionterminate(behaviortreeentity, *asmstatename) {
    function_ba06c8a0(asmstatename);
    return 4;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xd9f55c26, Offset: 0xa430
// Size: 0x28
function function_ba06c8a0(behaviortreeentity) {
    aiutility::releaseclaimnode(behaviortreeentity);
    return true;
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0x379c75f5, Offset: 0xa460
// Size: 0xe8
function zombiemantleaction(behaviortreeentity, asmstatename) {
    behaviortreeentity.clamptonavmesh = 0;
    if (isdefined(behaviortreeentity.attacking_spot_index)) {
        behaviortreeentity.saved_attacking_spot_index = behaviortreeentity.attacking_spot_index;
        behaviortreeentity setblackboardattribute("_board_attack_spot", float(behaviortreeentity.attacking_spot_index));
    }
    behaviortreeentity.var_9ed3cc11 = behaviortreeentity function_e827fc0e();
    behaviortreeentity pushplayer(1);
    behaviortreeentity.isinmantleaction = 1;
    behaviortreeentity zombie_utility::reset_attack_spot();
    animationstatenetworkutility::requeststate(behaviortreeentity, asmstatename);
    return 5;
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0x54c73231, Offset: 0xa550
// Size: 0x80
function zombiemantleactionterminate(behaviortreeentity, *asmstatename) {
    asmstatename.clamptonavmesh = 1;
    asmstatename.isinmantleaction = undefined;
    if (isdefined(asmstatename.var_9ed3cc11)) {
        asmstatename pushplayer(asmstatename.var_9ed3cc11);
        asmstatename.var_9ed3cc11 = undefined;
    }
    asmstatename zm_behavior_utility::enteredplayablearea();
    return 4;
}

// Namespace zm_behavior/zm_behavior
// Params 5, eflags: 0x2 linked
// Checksum 0x86fa9517, Offset: 0xa5d8
// Size: 0x1cc
function boardtearmocompstart(entity, mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    if (isdefined(mocompanimflag.barrier_align)) {
        origin = getstartorigin(mocompanimflag.barrier_align.origin, mocompanimflag.barrier_align.angles, mocompduration);
        angles = getstartangles(mocompanimflag.barrier_align.origin, mocompanimflag.barrier_align.angles, mocompduration);
    } else {
        origin = getstartorigin(mocompanimflag.first_node.zbarrier.origin, mocompanimflag.first_node.zbarrier.angles, mocompduration);
        angles = getstartangles(mocompanimflag.first_node.zbarrier.origin, mocompanimflag.first_node.zbarrier.angles, mocompduration);
    }
    mocompanimflag forceteleport(origin, angles, 1);
    mocompanimflag.pushable = 0;
    mocompanimflag.blockingpain = 1;
    mocompanimflag animmode("noclip", 1);
    mocompanimflag orientmode("face angle", angles[1]);
}

// Namespace zm_behavior/zm_behavior
// Params 5, eflags: 0x2 linked
// Checksum 0x22e84b6b, Offset: 0xa7b0
// Size: 0x62
function boardtearmocompupdate(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompduration animmode("noclip", 0);
    mocompduration.pushable = 0;
    mocompduration.blockingpain = 1;
}

// Namespace zm_behavior/zm_behavior
// Params 5, eflags: 0x2 linked
// Checksum 0x2e3d52dc, Offset: 0xa820
// Size: 0x272
function barricadeentermocompstart(entity, mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    if (isdefined(mocompanimflag.barrier_align)) {
        origin = getstartorigin(mocompanimflag.barrier_align.origin, mocompanimflag.barrier_align.angles, mocompduration);
        angles = getstartangles(mocompanimflag.barrier_align.origin, mocompanimflag.barrier_align.angles, mocompduration);
    } else {
        zbarrier_origin = isdefined(mocompanimflag.first_node.zbarrier) ? mocompanimflag.first_node.zbarrier.origin : mocompanimflag.first_node.zbarrier_origin;
        var_f4b27846 = isdefined(mocompanimflag.first_node.zbarrier) ? mocompanimflag.first_node.zbarrier.angles : mocompanimflag.first_node.var_f4b27846;
        origin = getstartorigin(zbarrier_origin, var_f4b27846, mocompduration);
        angles = getstartangles(zbarrier_origin, var_f4b27846, mocompduration);
    }
    if (isdefined(mocompanimflag.mocomp_barricade_offset)) {
        origin += anglestoforward(angles) * mocompanimflag.mocomp_barricade_offset;
    }
    mocompanimflag forceteleport(origin, angles, 1);
    mocompanimflag animmode("noclip", 0);
    mocompanimflag orientmode("face angle", angles[1]);
    mocompanimflag.pushable = 0;
    mocompanimflag.blockingpain = 1;
    mocompanimflag pathmode("dont move");
    mocompanimflag.usegoalanimweight = 1;
}

// Namespace zm_behavior/zm_behavior
// Params 5, eflags: 0x2 linked
// Checksum 0x99a27556, Offset: 0xaaa0
// Size: 0x56
function barricadeentermocompupdate(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompduration animmode("noclip", 0);
    mocompduration.pushable = 0;
}

// Namespace zm_behavior/zm_behavior
// Params 5, eflags: 0x2 linked
// Checksum 0x7c0a863e, Offset: 0xab00
// Size: 0x4e
function barricadeentermocompterminate(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    barricadebreakterminate(mocompduration);
    mocompduration.usegoalanimweight = 0;
}

// Namespace zm_behavior/zm_behavior
// Params 5, eflags: 0x2 linked
// Checksum 0x700703b3, Offset: 0xab58
// Size: 0x272
function barricadeentermocompnozstart(entity, mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    if (isdefined(mocompanimflag.barrier_align)) {
        origin = getstartorigin(mocompanimflag.barrier_align.origin, mocompanimflag.barrier_align.angles, mocompduration);
        angles = getstartangles(mocompanimflag.barrier_align.origin, mocompanimflag.barrier_align.angles, mocompduration);
    } else {
        zbarrier_origin = isdefined(mocompanimflag.first_node.zbarrier) ? mocompanimflag.first_node.zbarrier.origin : mocompanimflag.first_node.zbarrier_origin;
        var_f4b27846 = isdefined(mocompanimflag.first_node.zbarrier) ? mocompanimflag.first_node.zbarrier.angles : mocompanimflag.first_node.var_f4b27846;
        origin = getstartorigin(zbarrier_origin, var_f4b27846, mocompduration);
        angles = getstartangles(zbarrier_origin, var_f4b27846, mocompduration);
    }
    if (isdefined(mocompanimflag.mocomp_barricade_offset)) {
        origin += anglestoforward(angles) * mocompanimflag.mocomp_barricade_offset;
    }
    mocompanimflag forceteleport(origin, angles, 1);
    mocompanimflag animmode("noclip", 0);
    mocompanimflag orientmode("face angle", angles[1]);
    mocompanimflag.pushable = 0;
    mocompanimflag.blockingpain = 1;
    mocompanimflag pathmode("dont move");
    mocompanimflag.usegoalanimweight = 1;
}

// Namespace zm_behavior/zm_behavior
// Params 5, eflags: 0x2 linked
// Checksum 0x28f82ba3, Offset: 0xadd8
// Size: 0x56
function barricadeentermocompnozupdate(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompduration animmode("noclip", 0);
    mocompduration.pushable = 0;
}

// Namespace zm_behavior/zm_behavior
// Params 5, eflags: 0x2 linked
// Checksum 0x9704cece, Offset: 0xae38
// Size: 0xac
function barricadeentermocompnozterminate(entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration) {
    mocompduration.pushable = 1;
    mocompduration.blockingpain = 0;
    mocompduration pathmode("move allowed");
    mocompduration.usegoalanimweight = 0;
    mocompduration animmode("normal", 0);
    mocompduration orientmode("face motion");
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xc6aeafe9, Offset: 0xaef0
// Size: 0xac
function notetrackboardtear(animationentity) {
    if (isdefined(animationentity.chunk)) {
        animationentity.first_node.zbarrier setzbarrierpiecestate(animationentity.chunk, "opening");
        level notify(#"zombie_board_tear", {#ai_zombie:animationentity, #s_board:animationentity.first_node});
        animationentity.first_node notify(#"zombie_board_tear");
    }
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xa16b50a1, Offset: 0xafa8
// Size: 0x2d4
function notetrackboardmelee(animationentity) {
    assert(animationentity.meleeweapon != level.weaponnone, "<unknown string>");
    if (isdefined(animationentity.first_node)) {
        meleedistsq = 8100;
        if (isdefined(level.attack_player_thru_boards_range)) {
            meleedistsq = level.attack_player_thru_boards_range * level.attack_player_thru_boards_range;
        }
        triggerdistsq = 2601;
        for (i = 0; i < animationentity.player_targets.size; i++) {
            if (!isdefined(animationentity.player_targets[i])) {
                continue;
            }
            playerdistsq = distance2dsquared(animationentity.player_targets[i].origin, animationentity.origin);
            heightdiff = abs(animationentity.player_targets[i].origin[2] - animationentity.origin[2]);
            if (playerdistsq < meleedistsq && heightdiff * heightdiff < meleedistsq) {
                playertriggerdistsq = distance2dsquared(animationentity.player_targets[i].origin, animationentity.first_node.trigger_location.origin);
                heightdiff = abs(animationentity.player_targets[i].origin[2] - animationentity.first_node.trigger_location.origin[2]);
                if (playertriggerdistsq < triggerdistsq && heightdiff * heightdiff < triggerdistsq) {
                    animationentity.player_targets[i] playsoundtoplayer(#"hash_75318bcffca7ff06", animationentity.player_targets[i]);
                    animationentity.player_targets[i] dodamage(animationentity.meleeweapon.meleedamage, animationentity.origin, self, self, "none", "MOD_MELEE");
                    break;
                }
            }
        }
        return;
    }
    animationentity melee();
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x6fc80f1, Offset: 0xb288
// Size: 0x3c
function function_b37b8c0d(entity) {
    if (isdefined(entity.first_node)) {
        zm_blockers::open_zbarrier(entity.first_node, 1);
    }
}

// Namespace zm_behavior/zm_behavior
// Params 0, eflags: 0x2 linked
// Checksum 0x9ed9458c, Offset: 0xb2d0
// Size: 0x1fc
function findzombieenemy() {
    if (isdefined(self.var_8b59c468)) {
        self [[ self.var_8b59c468 ]]();
        return;
    }
    zombies = getaispeciesarray(level.zombie_team, "all");
    zombie_enemy = undefined;
    closest_dist = undefined;
    foreach (zombie in zombies) {
        if (isalive(zombie) && is_true(zombie.completed_emerging_into_playable_area) && !zm_utility::is_magic_bullet_shield_enabled(zombie) && is_true(zombie.canbetargetedbyturnedzombies)) {
            dist = distancesquared(self.origin, zombie.origin);
            if (!isdefined(closest_dist) || dist < closest_dist) {
                closest_dist = dist;
                zombie_enemy = zombie;
            }
        }
    }
    self.favoriteenemy = zombie_enemy;
    if (isdefined(self.favoriteenemy)) {
        self setgoal(self.favoriteenemy.origin);
        return;
    }
    self setgoal(self.origin);
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0x60637fa5, Offset: 0xb4d8
// Size: 0x8e
function zombieblackholebombpullstart(entity, asmstatename) {
    entity.pulltime = gettime();
    entity.pullorigin = entity.origin;
    animationstatenetworkutility::requeststate(entity, asmstatename);
    zombieupdateblackholebombpullstate(entity);
    if (isdefined(entity.damageorigin)) {
        entity.n_zombie_custom_goal_radius = 8;
        entity.v_zombie_custom_goal_pos = entity.damageorigin;
    }
    return 5;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xb3cc1c9, Offset: 0xb570
// Size: 0xe4
function zombieupdateblackholebombpullstate(entity) {
    dist_to_bomb = distancesquared(entity.origin, entity.damageorigin);
    entity setblackboardattribute("_blackholebomb_pull_state", isdefined(entity.var_db490292) ? entity.var_db490292 : "blackholebomb_pull_slow");
    if (dist_to_bomb < (isdefined(entity.var_92b78660) ? entity.var_92b78660 : 16384)) {
        entity._black_hole_bomb_collapse_death = 1;
        return;
    }
    if (dist_to_bomb < 1048576) {
        entity setblackboardattribute("_blackholebomb_pull_state", "blackholebomb_pull_fast");
    }
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0x1332497c, Offset: 0xb660
// Size: 0x186
function zombieblackholebombpullupdate(entity, *asmstatename) {
    if (!isdefined(asmstatename.interdimensional_gun_kill)) {
        return 4;
    }
    zombieupdateblackholebombpullstate(asmstatename);
    if (is_true(asmstatename._black_hole_bomb_collapse_death)) {
        return 4;
    }
    if (isdefined(asmstatename.damageorigin)) {
        asmstatename.v_zombie_custom_goal_pos = asmstatename.damageorigin;
    }
    if (!is_true(asmstatename.missinglegs) && gettime() - asmstatename.pulltime > 1000) {
        distsq = distance2dsquared(asmstatename.origin, asmstatename.pullorigin);
        if (distsq < 144) {
            asmstatename setavoidancemask("avoid all");
            asmstatename.cant_move = 1;
            if (isdefined(asmstatename.cant_move_cb)) {
                asmstatename thread [[ asmstatename.cant_move_cb ]]();
            }
        } else {
            asmstatename setavoidancemask("avoid none");
            asmstatename.cant_move = 0;
        }
        asmstatename.pulltime = gettime();
        asmstatename.pullorigin = asmstatename.origin;
    }
    return 5;
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0xe49b7df0, Offset: 0xb7f0
// Size: 0x46
function zombieblackholebombpullend(entity, *asmstatename) {
    asmstatename.v_zombie_custom_goal_pos = undefined;
    asmstatename.n_zombie_custom_goal_radius = undefined;
    asmstatename.pulltime = undefined;
    asmstatename.pullorigin = undefined;
    return 4;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x71f29c34, Offset: 0xb840
// Size: 0x72
function zombiekilledwhilegettingpulled(entity) {
    if (!is_true(self.missinglegs) && is_true(entity.interdimensional_gun_kill) && !is_true(entity._black_hole_bomb_collapse_death)) {
        return true;
    }
    return false;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xdb8abc5b, Offset: 0xb8c0
// Size: 0x2e
function zombiekilledbyblackholebombcondition(entity) {
    if (is_true(entity._black_hole_bomb_collapse_death)) {
        return true;
    }
    return false;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xafb9becf, Offset: 0xb8f8
// Size: 0x2e
function function_38fec26f(entity) {
    if (is_true(entity.freezegun_death)) {
        return true;
    }
    return false;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xc30659f0, Offset: 0xb930
// Size: 0x22
function function_e4d7303f(entity) {
    return is_true(entity.var_69a981e6);
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x304e620e, Offset: 0xb960
// Size: 0xd2
function function_17cd1b17(behaviortreeentity) {
    if (!isdefined(behaviortreeentity.enemy)) {
        return false;
    }
    meleedistsq = 4096;
    if (isdefined(behaviortreeentity.meleeweapon) && behaviortreeentity.meleeweapon !== level.weaponnone) {
        meleedistsq = behaviortreeentity.meleeweapon.aimeleerange * behaviortreeentity.meleeweapon.aimeleerange;
    }
    if (distancesquared(behaviortreeentity.origin, behaviortreeentity.enemy.origin) > meleedistsq) {
        return false;
    }
    return isdefined(behaviortreeentity.melee_cooldown) && gettime() < behaviortreeentity.melee_cooldown;
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0x4de11a8f, Offset: 0xba40
// Size: 0x64
function zombiekilledbyblackholebombstart(entity, asmstatename) {
    animationstatenetworkutility::requeststate(entity, asmstatename);
    if (isdefined(level.black_hole_bomb_death_start_func)) {
        entity thread [[ level.black_hole_bomb_death_start_func ]](entity.damageorigin, entity.interdimensional_gun_projectile);
    }
    return 5;
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0x2d5e5119, Offset: 0xbab0
// Size: 0xe0
function zombiekilledbyblackholebombend(entity, *asmstatename) {
    if (isdefined(level._effect) && isdefined(level._effect[#"black_hole_bomb_zombie_gib"])) {
        fxorigin = asmstatename gettagorigin("tag_origin");
        forward = anglestoforward(asmstatename.angles);
        playfx(level._effect[#"black_hole_bomb_zombie_gib"], fxorigin, forward, (0, 0, 1));
    }
    asmstatename hide();
    return 4;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xcb87a992, Offset: 0xbb98
// Size: 0xbc
function zombiebhbburst(entity) {
    if (isdefined(level._effect) && isdefined(level._effect[#"black_hole_bomb_zombie_destroy"])) {
        fxorigin = entity gettagorigin("tag_origin");
        playfx(level._effect[#"black_hole_bomb_zombie_destroy"], fxorigin);
    }
    if (isdefined(entity.interdimensional_gun_projectile)) {
        entity.interdimensional_gun_projectile notify(#"black_hole_bomb_kill");
    }
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xa278271c, Offset: 0xbc60
// Size: 0x34
function function_b654f4f5(entity) {
    if (isdefined(level.var_58e6238)) {
        entity [[ level.var_58e6238 ]]();
    }
    return 5;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x2dfa173a, Offset: 0xbca0
// Size: 0x30
function function_36b3cb7d(entity) {
    if (isdefined(level.var_f975b6ae)) {
        entity [[ level.var_f975b6ae ]]();
    }
}

// Namespace zm_behavior/zm_behavior
// Params 3, eflags: 0x2 linked
// Checksum 0x5516a0bc, Offset: 0xbcd8
// Size: 0x54
function function_e403e74e(damage, weapon, target) {
    var_2a3ef77c = weapons::function_74bbb3fa(damage, weapon, target);
    if (var_2a3ef77c > damage) {
        return 1.5;
    }
    return 1;
}

// Namespace zm_behavior/zm_behavior
// Params 4, eflags: 0x2 linked
// Checksum 0x3fd7f9af, Offset: 0xbd38
// Size: 0x164
function function_671249fb(weakpoint, eattacker, var_3cddb028, var_a8ea4441 = 1) {
    namespace_81245006::function_ef87b7e8(weakpoint, var_3cddb028);
    if (namespace_81245006::function_f29756fe(weakpoint) === 3 && isdefined(weakpoint.var_f371ebb0)) {
        destructserverutils::function_8475c53a(self, weakpoint.var_f371ebb0);
        if (isplayer(eattacker)) {
            eattacker zm_stats::increment_challenge_stat(#"hash_2805701e53ce32a1");
            if (var_a8ea4441) {
                level scoreevents::doscoreeventcallback("scoreEventZM", {#attacker:eattacker, #scoreevent:"destroyed_armor_zm"});
            }
        }
        self.var_426947c4 = 1;
        if (weakpoint.var_f371ebb0 === "body_armor") {
            callback::callback(#"hash_7d67d0e9046494fb");
        }
    }
}

// Namespace zm_behavior/zm_behavior
// Params 13, eflags: 0x2 linked
// Checksum 0x1cb9ca01, Offset: 0xbea8
// Size: 0x6ec
function function_29c1ba76(*einflictor, eattacker, idamage, *idflags, smeansofdeath, weapon, *var_fd90b0bb, *vpoint, *vdir, shitloc, *psoffsettime, *boneindex, *surfacetype) {
    self.var_426947c4 = undefined;
    var_ebcff177 = 1;
    if (namespace_81245006::hasarmor(self) && (psoffsettime === "MOD_PROJECTILE_SPLASH" || psoffsettime === "MOD_GRENADE_SPLASH" || psoffsettime == "MOD_EXPLOSIVE")) {
        var_3cddb028 = 0.5 * shitloc;
        var_31e96b81 = int(var_3cddb028);
        foreach (weakpoint in self.var_5ace757d) {
            if (weakpoint.type === #"armor" && weakpoint.currstate === 1) {
                self function_671249fb(weakpoint, vdir, var_3cddb028);
            }
        }
    }
    if (namespace_81245006::hasarmor(self) && psoffsettime === "MOD_CRUSH") {
        var_3cddb028 = 0.5 * shitloc;
        var_31e96b81 = int(var_3cddb028);
        foreach (weakpoint in self.var_5ace757d) {
            if (weakpoint.type === #"armor" && weakpoint.currstate === 1) {
                self function_671249fb(weakpoint, vdir, var_3cddb028, 0);
            }
        }
    }
    w_base = zm_weapons::get_base_weapon(boneindex);
    weapclass = level.zombie_weapons[w_base].weapon_classname;
    if ((weapclass === "special" || weapclass === "launcher") && surfacetype === "none") {
        var_3cddb028 = shitloc;
        var_93c42150 = namespace_81245006::function_fab3ee3e(self);
        foreach (weakpoint in var_93c42150) {
            if (weakpoint.type === #"armor") {
                if (isplayer(vdir)) {
                    n_tier = vdir namespace_b61a349a::function_998f8321(boneindex);
                    switch (weapclass) {
                    case #"launcher":
                    case #"special":
                        if (n_tier >= 2 && n_tier < 5) {
                            var_3cddb028 += var_3cddb028 * 0.1;
                        } else if (n_tier >= 5) {
                            var_3cddb028 += var_3cddb028 * 0.25;
                        }
                        break;
                    }
                    self function_671249fb(weakpoint, vdir, var_3cddb028);
                }
            }
        }
    }
    weakpoint = namespace_81245006::function_3131f5dd(self, surfacetype, 1);
    if (isdefined(weakpoint) && weakpoint.type === #"armor") {
        var_3cddb028 = shitloc * function_ac6dcd03(self, boneindex, vdir);
        var_3cddb028 = int(var_3cddb028);
        self function_671249fb(weakpoint, vdir, var_3cddb028);
        var_36d55c9c = function_c5a2dbe5(self, boneindex, vdir);
        if (isplayer(vdir)) {
            if (self.var_9fde8624 === #"hash_7a778318514578f7") {
                shitloc = int(shitloc * 0.35 * var_36d55c9c);
                vdir namespace_b61a349a::function_8a6ccd14(boneindex, n_tier, undefined, shitloc);
            } else if (self.var_9fde8624 === #"hash_622e7c9cc7c06c7") {
                shitloc = int(shitloc * 0.5 * var_36d55c9c);
                vdir namespace_b61a349a::function_8a6ccd14(boneindex, n_tier, undefined, shitloc);
            }
        }
        self.var_67f98db0 = 1;
        var_ebcff177 = 3;
        var_43f0e034 = function_f4e9bba4(self);
        self function_2d4173a8(var_43f0e034);
    }
    return {#damage:shitloc, #weakpoint:weakpoint, #var_ebcff177:var_ebcff177};
}

// Namespace zm_behavior/zm_behavior
// Params 3, eflags: 0x2 linked
// Checksum 0x8ae6cfd8, Offset: 0xc5a0
// Size: 0x5c
function function_ac6dcd03(entity, weapon, *eattacker) {
    damage_mod = 1;
    if (isdefined(eattacker)) {
        damage_mod *= function_e403e74e(1, eattacker, weapon);
    }
    return damage_mod;
}

// Namespace zm_behavior/zm_behavior
// Params 3, eflags: 0x2 linked
// Checksum 0x6eade01f, Offset: 0xc608
// Size: 0x1e4
function function_c5a2dbe5(*entity, weapon, eattacker) {
    damage_mod = 1;
    if (isdefined(weapon)) {
        w_base = zm_weapons::get_base_weapon(weapon);
        weapclass = level.zombie_weapons[w_base].weapon_classname;
    }
    if (isplayer(eattacker)) {
        if (isdefined(weapclass)) {
            n_tier = eattacker namespace_b61a349a::function_998f8321(weapon);
            switch (weapclass) {
            case #"lmg":
            case #"sniper":
            case #"launcher":
            case #"special":
                if (n_tier >= 2) {
                    damage_mod = n_tier >= 4 ? 1.25 : 1.1;
                }
                break;
            case #"pistol":
            case #"shotgun":
                if (n_tier >= 3) {
                    damage_mod = 1.1;
                }
                break;
            }
        }
        if (eattacker namespace_e86ffa8::function_7bf30775(2)) {
            damage_mod *= 1.5;
        }
        if (eattacker namespace_e86ffa8::function_cb561923(4)) {
            damage_mod *= 1.25;
        }
    }
    return damage_mod;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xfaa132db, Offset: 0xc7f8
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

// Namespace zm_behavior/zm_behavior
// Params 13, eflags: 0x2 linked
// Checksum 0xbd987b, Offset: 0xc930
// Size: 0x108
function function_7994fd99(inflictor, attacker, damage, flags, meansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, psoffsettime, boneindex, *surfacetype) {
    if (isdefined(damage) && isactor(damage) && self.team == damage.team) {
        return -1;
    }
    if (self.archetype == #"zombie" && !isdefined(self.var_9fde8624)) {
        self destructserverutils::handledamage(attacker, damage, flags, meansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, psoffsettime, boneindex, surfacetype);
    }
    return -1;
}

// Namespace zm_behavior/zm_behavior
// Params 14, eflags: 0x2 linked
// Checksum 0xe2a708f7, Offset: 0xca40
// Size: 0x11c
function function_95578a3c(*willbekilled, *inflictor, attacker, damage, *flags, *mod, *weapon, *var_fd90b0bb, *vpoint, *vdir, *shitloc, *psoffsettime, *boneindex, *surfacetype) {
    if (!isdefined(self.var_448aebc7)) {
        self.var_448aebc7 = [];
    }
    if (isdefined(boneindex) && isdefined(surfacetype)) {
        if (!isdefined(self.var_448aebc7[boneindex getentitynumber()])) {
            self.var_448aebc7[boneindex getentitynumber()] = 0;
        }
        self.var_448aebc7[boneindex getentitynumber()] = self.var_448aebc7[boneindex getentitynumber()] + surfacetype;
    }
}

// Namespace zm_behavior/zm_behavior
// Params 5, eflags: 0x2 linked
// Checksum 0xa36fb918, Offset: 0xcb68
// Size: 0x60e
function function_92dcde87(start_pos, end_pos, velocity, var_781a6f9a, enemy) {
    gravity = getdvarfloat(#"bg_lowgravity");
    if (velocity[2] > 0) {
        tapex = velocity[2] / gravity;
        tmidnear = tapex * 0.5;
        tdiscriminant = tapex * tapex + 2 * (start_pos[2] - end_pos[2]) / gravity;
        if (tdiscriminant <= 0) {
            return false;
        }
        var_3ebd279c = 0.5 * sqrt(tdiscriminant);
    } else {
        tapex = 0;
        tmidnear = 0;
        tdiscriminant = velocity[2] * velocity[2] + 2 * (start_pos[2] - end_pos[2]) * gravity;
        if (tdiscriminant <= 0) {
            return false;
        }
        var_3ebd279c = 0.5 * (velocity[2] + sqrt(tdiscriminant)) / gravity;
    }
    tmidfar = tapex + var_3ebd279c;
    if (!isdefined(var_781a6f9a)) {
        var_781a6f9a = tmidfar;
    }
    times = [tmidnear, tapex, tmidfar];
    points = [start_pos];
    for (i = 0; i < times.size; i++) {
        if (var_781a6f9a < times[i]) {
            break;
        }
        points[points.size] = (start_pos[0] + times[i] * velocity[0], start_pos[1] + times[i] * velocity[1], start_pos[2] + times[i] * (velocity[2] - 0.5 * gravity * times[i]));
    }
    if (var_781a6f9a != times[times.size - 1]) {
        var_7f856c1e = (start_pos[0] + var_781a6f9a * velocity[0], start_pos[1] + var_781a6f9a * velocity[1], start_pos[2] + var_781a6f9a * (velocity[2] - 0.5 * gravity * var_781a6f9a));
        if (points.size <= 1 && distancesquared(start_pos, end_pos) < distancesquared(start_pos, var_7f856c1e)) {
            points[points.size] = end_pos;
        } else {
            points[points.size] = var_7f856c1e;
        }
    }
    /#
        if (getdvarint(#"hash_2c509ee80b516880", 0)) {
            hit_something = 0;
            for (i = 0; i < points.size - 1; i++) {
                if (!hit_something) {
                    traceresults = bullettrace(points[i], points[i + 1], 0, self);
                    if (traceresults[#"fraction"] < 1) {
                        hit_point = vectorlerp(points[i], points[i + 1], traceresults[#"fraction"]);
                        recordline(points[i], hit_point, (0, 1, 0), "<unknown string>");
                        recordline(hit_point, points[i + 1], (1, 0, 0), "<unknown string>");
                        hit_something = 1;
                    } else {
                        recordline(points[i], points[i + 1], (0, 1, 0), "<unknown string>");
                    }
                    continue;
                }
                recordline(points[i], points[i + 1], (1, 0, 0), "<unknown string>");
            }
        }
    #/
    player_vehicle = undefined;
    if (isplayer(enemy) && enemy isinvehicle()) {
        player_vehicle = enemy getvehicleoccupied();
    }
    for (i = 0; i < points.size - 1; i++) {
        if (isdefined(self.var_f7c8ccf5) && ![[ self.var_f7c8ccf5 ]](self, points[i], points[i + 1])) {
            return false;
        }
        if (!bullettracepassed(points[i], points[i + 1], 0, self, player_vehicle)) {
            return false;
        }
    }
    return true;
}

// Namespace zm_behavior/zm_behavior
// Params 2, eflags: 0x2 linked
// Checksum 0xaae06116, Offset: 0xd180
// Size: 0x6a2
function function_4a99b560(entity, enemy) {
    /#
        if (getdvarint(#"hash_2c509ee80b516880", 0)) {
            if (isdefined(enemy)) {
                start_pos = entity.origin + (0, 0, entity function_6a9ae71());
                target_pos = enemy gettagorigin("<unknown string>");
                to_target = target_pos - start_pos;
                if (to_target === (0, 0, 0)) {
                    record3dtext("<unknown string>", entity.origin, false ? (0, 1, 0) : (1, 0, 0), "<unknown string>", entity);
                    return false;
                }
                time = max(length((to_target[0], to_target[1], 0)) / 700, 0.1);
                var_813d38fa = (0.5 * getdvarfloat(#"bg_lowgravity", 400) * sqr(time) + to_target[2]) / time;
                to_target = vectornormalize((to_target[0], to_target[1], 0)) * 700;
            }
            var_8a34a513 = isdefined(enemy) && isarray(enemy.var_f904e440);
            var_79637724 = var_8a34a513 && isinarray(enemy.var_f904e440, entity);
            var_b295b952 = !isdefined(enemy) || !zm_utility::is_classic() && distance2dsquared(entity.origin, enemy.origin) <= sqr(100);
            var_6c2051ca = !isdefined(enemy) || !entity function_92dcde87(start_pos, target_pos, (to_target[0], to_target[1], var_813d38fa), time, enemy);
            record3dtext("<unknown string>", entity.origin, var_8a34a513 ? (0, 1, 0) : (1, 0, 0), "<unknown string>", entity);
            record3dtext("<unknown string>", entity.origin, var_79637724 ? (0, 1, 0) : (1, 0, 0), "<unknown string>", entity);
            record3dtext("<unknown string>", entity.origin, var_b295b952 ? (1, 0, 0) : (0, 1, 0), "<unknown string>", entity);
            record3dtext("<unknown string>", entity.origin, var_6c2051ca ? (1, 0, 0) : (0, 1, 0), "<unknown string>", entity);
            return (var_8a34a513 && var_79637724 && !var_b295b952 && !var_6c2051ca);
        }
    #/
    if (!isdefined(enemy.var_f904e440)) {
        return false;
    }
    start_pos = entity.origin + (0, 0, entity function_6a9ae71());
    target_pos = enemy.origin + (0, 0, 46);
    to_target = target_pos - start_pos;
    if (to_target === (0, 0, 0)) {
        return false;
    }
    time = max(length((to_target[0], to_target[1], 0)) / 700, 0.1);
    var_64b12059 = enemy namespace_98decc78::function_be5f206(start_pos, target_pos, time);
    if (isdefined(var_64b12059) && var_64b12059 !== start_pos) {
        target_pos = var_64b12059;
        to_target = target_pos - start_pos;
    }
    var_813d38fa = (0.5 * getdvarfloat(#"bg_lowgravity", 400) * sqr(time) + to_target[2]) / time;
    to_target = vectornormalize((to_target[0], to_target[1], 0)) * 700;
    if (zm_utility::is_survival() && isdefined(entity.current_state) && entity.current_state.name !== #"chase" || zm_utility::is_survival() && distance2dsquared(entity.origin, enemy.origin) <= sqr(100) || !isinarray(enemy.var_f904e440, entity) || !entity function_92dcde87(start_pos, target_pos, (to_target[0], to_target[1], var_813d38fa), time, enemy)) {
        return false;
    }
    return true;
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x17991348, Offset: 0xd830
// Size: 0x544
function function_e5f60f55(entity) {
    enemy = zm_ai_utility::function_825317c(entity);
    if (!isdefined(enemy.var_f904e440)) {
        enemy.var_f904e440 = [];
    }
    arrayremovevalue(enemy.var_f904e440, undefined);
    var_a702ff0 = [];
    foreach (zombie in enemy.var_f904e440) {
        if (zombie.enemy !== enemy || zm_utility::is_survival() && isdefined(zombie.current_state) && zombie.current_state.name !== #"chase") {
            var_a702ff0[var_a702ff0.size] = zombie;
        }
    }
    foreach (zombie in var_a702ff0) {
        arrayremovevalue(enemy.var_f904e440, zombie);
    }
    if (!isinarray(enemy.var_f904e440, entity) && enemy.var_f904e440.size < (zm_utility::is_survival() ? 24 : 24)) {
        enemy.var_f904e440[enemy.var_f904e440.size] = entity;
    }
    if (isinarray(enemy.var_f904e440, entity)) {
        if (!isdefined(entity.var_6ca50f69)) {
            entity.var_6ca50f69 = 0;
        }
        if (function_4a99b560(entity, enemy)) {
            entity.var_8c4d3e5d = 1;
            entity.var_6ca50f69 = 0;
            entity setgoal(entity.origin);
            entity.var_95d1c014 = undefined;
            entity.keep_moving = 0;
            return;
        }
        step_size = max(100 - distance2d(entity.origin, entity.enemy.origin), 64 + entity.var_6ca50f69 * 64);
        if (zm_utility::is_classic() || zm_utility::function_c200446c()) {
            if (isdefined(enemy.last_valid_position)) {
                entity.var_6ca50f69 = 0;
                entity setgoal(enemy.last_valid_position);
                entity.var_95d1c014 = undefined;
                return;
            }
        }
        if (isdefined(entity.var_6bc9818) && is_true(entity [[ entity.var_6bc9818 ]]())) {
            return;
        }
        var_e737d2f1 = function_c41c61e8(step_size);
        if (isdefined(var_e737d2f1)) {
            entity.var_6ca50f69 = 0;
            entity setgoal(var_e737d2f1);
            entity.var_95d1c014 = undefined;
            return;
        }
        reacquirestep = entity reacquirestep(step_size, 1);
        if (isdefined(reacquirestep)) {
            entity.var_6ca50f69 = 0;
            entity setgoal(reacquirestep);
            entity.var_95d1c014 = undefined;
            return;
        }
        entity.var_6ca50f69++;
        if (entity.var_6ca50f69 > 4) {
            entity.var_6ca50f69 = undefined;
            if (isdefined(enemy) && isarray(enemy.var_f904e440)) {
                arrayremovevalue(enemy.var_f904e440, entity);
            }
            if (zm_utility::is_survival()) {
                awareness::set_state(entity, #"wander");
            }
        }
    }
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x6 linked
// Checksum 0xc9f0cab4, Offset: 0xdd80
// Size: 0x1dc
function private function_c41c61e8(step_size) {
    dir = self.origin - self.enemy.origin;
    dir = vectornormalize((dir[0], dir[1], 0));
    start_point = getclosestpointonnavmesh(self.origin);
    if (isdefined(start_point)) {
        point = checknavmeshdirection(start_point, dir, step_size, self getpathfindingradius() * 1.2);
        if (isdefined(point) && point != start_point && !self isposinclaimedlocation(point) && distancesquared(point, self.origin) > sqr(self.goalradius)) {
            var_18aea779 = self geteyeapprox() - self.origin;
            /#
                recordline(point + var_18aea779, self.enemy geteye(), (1, 0.5, 0), "<unknown string>", self);
            #/
            if (sighttracepassed(point + var_18aea779, self.enemy geteye(), 0, self)) {
                return point;
            }
        }
    }
}

// Namespace zm_behavior/zm_behavior
// Params 0, eflags: 0x2 linked
// Checksum 0xb54c23d0, Offset: 0xdf68
// Size: 0x3c
function function_8158e9a0() {
    if (namespace_81245006::hasarmor(self)) {
        destructserverutils::function_8475c53a(self, #"helmet");
    }
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x22151ca0, Offset: 0xdfb0
// Size: 0x264
function function_cea9ab47(entity) {
    namespace_81245006::initweakpoints(self);
    self callback::function_d8abfc3d(#"head_gibbed", &function_8158e9a0);
    if (!isdefined(entity.var_9fde8624)) {
        return;
    }
    self.no_powerups = zm_utility::is_survival();
    switch (entity.var_9fde8624) {
    case #"hash_622e7c9cc7c06c7":
        entity attach("c_t9_zmb_zombie_medium_helmet");
        entity attach("c_t9_zmb_zombie_medium_armor");
        self function_2d4173a8(1);
        break;
    case #"hash_7a778318514578f7":
        if (isdefined(level.var_eea9f85a)) {
            entity attach(level.var_eea9f85a);
        } else {
            entity attach("c_t9_zmb_zombie_heavy_torso_armor");
        }
        if (isdefined(level.var_9e513533)) {
            entity attach(level.var_9e513533);
        } else {
            entity attach("c_t9_zmb_zombie_heavy_helmet");
        }
        entity attach("c_t9_zmb_zombie_heavy_arm_armor_lt");
        entity attach("c_t9_zmb_zombie_heavy_arm_armor_rt");
        entity attach("c_t9_zmb_zombie_heavy_leg_armor_lt");
        entity attach("c_t9_zmb_zombie_heavy_leg_armor_rt");
        self function_2d4173a8(1);
        break;
    }
    entity destructserverutils::togglespawngibs(entity, 1);
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0xb75bde3d, Offset: 0xe220
// Size: 0x92
function function_35228e0b(entity) {
    entity.var_6c5c29fb = undefined;
    if (isplayer(entity.enemy) && entity.enemy isinvehicle()) {
        entity.var_6c5c29fb = namespace_85745671::function_401070dd(entity.enemy getvehicleoccupied(), entity.enemy);
    }
}

// Namespace zm_behavior/zm_behavior
// Params 1, eflags: 0x2 linked
// Checksum 0x24651643, Offset: 0xe2c0
// Size: 0x17e
function function_ed33f941(entity) {
    if (isdefined(entity.zombie_poi) || isdefined(entity.enemy_override)) {
        return false;
    }
    if (!isdefined(entity.var_b3538985) || !isdefined(entity.enemy)) {
        return false;
    }
    if (abs(entity.origin[2] - entity.var_b3538985[2]) > (isdefined(entity.var_737e8510) ? entity.var_737e8510 : 64)) {
        return false;
    }
    if (distancesquared(entity.origin, entity.var_b3538985) > entity.meleedistsq) {
        return false;
    }
    yawtoenemy = angleclamp180(entity.angles[1] - vectortoangles(entity.enemy.origin - entity.origin)[1]);
    if (abs(yawtoenemy) > (isdefined(entity.var_1c0eb62a) ? entity.var_1c0eb62a : 60)) {
        return true;
    }
    return false;
}

