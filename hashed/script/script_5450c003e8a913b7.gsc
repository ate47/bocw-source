// Atian COD Tools GSC CW decompiler test
#using script_3819e7a1427df6d2;
#using script_3072532951b5b4ae;
#using scripts\core_common\stealth\debug.gsc;
#using scripts\core_common\stealth\threat_sight.gsc;
#using script_16a28d93ee216f6f;
#using scripts\core_common\stealth\event.gsc;
#using script_139ae0bb0a87141c;
#using scripts\core_common\stealth\utility.gsc;
#using script_3ad66e3076c279ab;
#using scripts\cp_common\util.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;

#namespace enemy;

// Namespace enemy/enemy
// Params 2, eflags: 0x0
// Checksum 0xd4f6b558, Offset: 0x4d8
// Size: 0x14
function scalevolume(*ent, *vol) {
    
}

#namespace namespace_f1f700ac;

// Namespace namespace_f1f700ac/enemy
// Params 0, eflags: 0x2 linked
// Checksum 0x128b2276, Offset: 0x4f8
// Size: 0x16c
function main() {
    self init_settings();
    self init_flags();
    stealth_group::addtogroup(self.script_stealthgroup, self);
    self setpatrolstyle_base();
    self stealth_event::event_init_entity();
    self thread monitor_damage_thread(level.stealth.damage_auto_range, level.stealth.damage_sight_range);
    self set_alert_level("reset");
    self bt_set_stealth_state("idle");
    self stealth_init_goal_radius();
    /#
        self thread stealth_debug::debug_enemy();
    #/
    if (isdefined(level.stealth.fninitenemygame)) {
        self thread [[ level.stealth.fninitenemygame ]]();
    }
    self thread function_2b1c382();
}

// Namespace namespace_f1f700ac/enemy
// Params 0, eflags: 0x2 linked
// Checksum 0x2386c914, Offset: 0x670
// Size: 0x1ac
function init_flags() {
    self flag::init("stealth_enabled");
    self flag::set("stealth_enabled");
    self flag::init("stealth_override_goal");
    self flag::init("stealth_hold_position");
    self flag::init("stealth_attack");
    self flag::init("stealth_cover_blown");
    self flag::init("stealth_local_investigation_only");
    self flag::init("stealth_disable_unresponsive_ai_check");
    self flag::init("stealth_non_player_combat");
    self.stealth.var_103386e8 = self namespace_979752dc::group_flag_init("stealth_spotted");
    self namespace_979752dc::group_flag_init("stealth_cover_blown");
    self namespace_979752dc::group_flag_init("stealth_combat_hunting");
    self namespace_979752dc::group_flag_init("stealth_disable_unresponsive_ai_check");
}

// Namespace namespace_f1f700ac/enemy
// Params 0, eflags: 0x2 linked
// Checksum 0x8091a5ab, Offset: 0x828
// Size: 0x84
function stealth_init_goal_radius() {
    if (isdefined(self.script_radius)) {
        self namespace_979752dc::set_goal_radius(self.script_radius);
        return;
    }
    if (!is_true(self.patroller) && !isdefined(self getgoalvolume())) {
        self namespace_979752dc::set_goal_radius(level.default_goalradius);
    }
}

// Namespace namespace_f1f700ac/enemy
// Params 0, eflags: 0x2 linked
// Checksum 0xb350fcf1, Offset: 0x8b8
// Size: 0x1cc
function init_settings() {
    self.stealth = spawnstruct();
    self namespace_979752dc::assign_unique_id();
    self.stealth.funcs = [];
    self.stealth.max_warnings = 2;
    self.stealth.reachedinvestigate = 0;
    /#
        self.stealth.ai_event = "patrol";
        self.stealth.var_29672bb5 = "patrol";
    #/
    self.newenemyreactiondistsq = sqr(400);
    self namespace_cc4354b9::corpse_init_entity();
    self.stealth.event_escalation_scalar = 0;
    if (!isdefined(level.stealth.damage_auto_range)) {
        level.stealth.damage_auto_range = 175;
    }
    if (!isdefined(level.stealth.damage_sight_range)) {
        level.stealth.damage_sight_range = 600;
    }
    self.var_13c8de0c = self.grenadeawareness;
    self.grenadeawareness = 0;
    self.canacquirenearbytacvisenemies = 0;
    self.stealth.bsmstate = -1;
    self.stealth.starttime = gettime();
    self namespace_979752dc::function_6a3b08d0();
    self namespace_77fd5d41::initstealthfunctions();
    self stealth_threat_sight::threat_sight_set_state("hidden");
}

// Namespace namespace_f1f700ac/enemy
// Params 0, eflags: 0x2 linked
// Checksum 0x6a7784f6, Offset: 0xa90
// Size: 0x10c
function function_2b1c382() {
    self endon(#"death");
    while (true) {
        self flag::wait_till("stealth_enabled");
        level flag::wait_till_clear("stealth_spotted");
        self flag::wait_till_clear("in_action");
        self namespace_77fd5d41::stealth_enemy_updateeveryframe(self);
        switch (self.stealth.bsmstate) {
        case 0:
            break;
        case 1:
            self namespace_77fd5d41::investigate_updateeveryframe(self);
            break;
        case 2:
            break;
        }
        waitframe(1);
    }
}

// Namespace namespace_f1f700ac/enemy
// Params 0, eflags: 0x2 linked
// Checksum 0xe9855d76, Offset: 0xba8
// Size: 0x1fc
function death_cleanup() {
    if (isdefined(self)) {
        self stealth_threat_sight::threat_sight_set_state("death");
        aiutility::removeaioverridedamagecallback(self, &check_kill_damage);
    } else {
        foreach (player in getplayers()) {
            foreach (k, v in player.stealth.threat_entities) {
                if (!isdefined(v)) {
                    player.stealth.threat_entities[k] = undefined;
                }
            }
            foreach (k, v in player.stealth.threat_sighted) {
                if (!isdefined(v)) {
                    player.stealth.threat_sighted[k] = undefined;
                }
            }
        }
    }
    if (isdefined(self.stealth_vo_ent)) {
        self.stealth_vo_ent thread death_vo_cleanup();
    }
}

// Namespace namespace_f1f700ac/enemy
// Params 0, eflags: 0x2 linked
// Checksum 0xac274e4e, Offset: 0xdb0
// Size: 0x34
function death_vo_cleanup() {
    self stopsounds();
    waitframe(1);
    self delete();
}

// Namespace namespace_f1f700ac/enemy
// Params 1, eflags: 0x0
// Checksum 0x4a5237f8, Offset: 0xdf0
// Size: 0xa0
function add_active_sense_function(func) {
    assert(isdefined(self.stealth), "ALERT" + self getentitynumber() + "<unknown string>" + self.origin);
    if (!isdefined(self.stealth.active_sense_funcs)) {
        self.stealth.active_sense_funcs = [];
    }
    self.stealth.active_sense_funcs[self.stealth.active_sense_funcs.size] = func;
}

// Namespace namespace_f1f700ac/enemy
// Params 0, eflags: 0x2 linked
// Checksum 0x38025f3a, Offset: 0xe98
// Size: 0x57a
function proximity_check() {
    if (self.ignoreall) {
        return;
    }
    if (!isdefined(level.stealth)) {
        return;
    }
    var_c23cc9e4 = self geteyeapprox();
    var_bf444fb4 = (self.origin + var_c23cc9e4) / 2;
    playeroffset = (0, 0, 35);
    if (isdefined(self.proximity_bump_dist_sqr_override)) {
        var_4af2cd8d = self.proximity_bump_dist_sqr_override;
    } else {
        var_4af2cd8d = 1764;
    }
    var_9f447779 = 11025;
    var_2b2af503 = undefined;
    playereye = undefined;
    foreach (player in getplayers()) {
        donotify = 0;
        dotrace = 0;
        if (!isalive(player)) {
            continue;
        }
        if (issentient(player) && (player.ignoreme || player isnotarget())) {
            continue;
        }
        distsq = distancesquared(var_bf444fb4, player.origin + playeroffset);
        if (distance2dsquared(self.origin, player.origin) < var_4af2cd8d) {
            zdist = self.origin[2] - player.origin[2];
            if (zdist * zdist < 5184) {
                dotrace = 1;
                donotify = 1;
            }
        }
        if (!donotify && isdefined(level.stealth.proximity_combat_radius_fake_sight) && level.stealth.proximity_combat_radius_fake_sight > 0) {
            if (distsq < level.stealth.proximity_combat_radius_fake_sight * level.stealth.proximity_combat_radius_fake_sight) {
                if (!isdefined(self.stealth.blind)) {
                    var_14fc0a20 = player.origin - self.origin;
                    var_14fc0a20 = (var_14fc0a20[0], var_14fc0a20[1], 0);
                    meforward = anglestoforward((0, self.angles[1], 0));
                    if (vectordot(meforward, var_14fc0a20) > 0) {
                        dotrace = 1;
                        donotify = 1;
                    }
                }
            }
        }
        if (!donotify && isdefined(level.stealth.proximity_combat_radius_bump) && level.stealth.proximity_combat_radius_bump > 0) {
            if (distsq < level.stealth.proximity_combat_radius_bump * level.stealth.proximity_combat_radius_bump) {
                var_29751967 = lengthsquared((player getvelocity()[0], player getvelocity()[1], 0));
                if (var_29751967 > var_9f447779) {
                    dotrace = 1;
                    donotify = 1;
                }
            }
        }
        if (!donotify && isdefined(level.stealth.proximity_combat_radius_sight) && level.stealth.proximity_combat_radius_sight > 0) {
            if (distsq < level.stealth.proximity_combat_radius_sight * level.stealth.proximity_combat_radius_sight) {
                if (self cansee(player, 0)) {
                    donotify = 1;
                }
            }
        }
        if (donotify && dotrace) {
            donotify = sighttracepassed(self geteye(), player geteye(), 0, self, player);
        }
        if (donotify) {
            self function_a3fcf9e0("proximity", player, player.origin);
            self util::delay(0.05, undefined, &getenemyinfo, player);
            return;
        }
    }
}

// Namespace namespace_f1f700ac/enemy
// Params 2, eflags: 0x2 linked
// Checksum 0xe11bc337, Offset: 0x1420
// Size: 0x15c
function set_blind(blind, force) {
    if (!isdefined(self.stealth)) {
        return;
    }
    if (!blind && !isdefined(self.stealth.blind)) {
        return;
    }
    var_88ec3efd = isdefined(self.fnisinstealthcombat) && self [[ self.fnisinstealthcombat ]]();
    var_4d00933b = isdefined(self.fnisinstealthhunt) && self [[ self.fnisinstealthhunt ]]();
    iscombat = var_88ec3efd || var_4d00933b;
    if (blind && (!iscombat || is_true(force))) {
        self.stealth.blind = 1;
        set_sight_state("blind");
        return;
    }
    self.stealth.blind = undefined;
    if (iscombat) {
        set_sight_state("spotted");
        return;
    }
    set_sight_state("hidden");
}

// Namespace namespace_f1f700ac/enemy
// Params 1, eflags: 0x2 linked
// Checksum 0xf061e94c, Offset: 0x1588
// Size: 0x3c2
function set_sight_state(state) {
    switch (state) {
    case #"blind":
        self stealth_threat_sight::threat_sight_set_state("blind");
        self.fovcosine = 0.98;
        self.fovcosinebusy = 0.98;
        self.fovcosinez = 0;
        self.fovground = 0;
        self.fovcosineperiph = 0.99;
        self.fovcosineperiphmaxdistsq = 1;
        break;
    case #"idle":
    case #"hidden":
    case #"unaware":
        self stealth_threat_sight::threat_sight_set_state("hidden");
        self.fovcosine = 0.7;
        self.fovcosinebusy = 0.86;
        self.fovcosinez = 0.97;
        self.fovground = 1;
        self.fovcosineperiph = 0.34;
        self.fovcosineperiphmaxdistsq = 90000;
        break;
    case #"investigate":
        self stealth_threat_sight::threat_sight_set_state("investigate");
        self.fovcosine = 0.7;
        self.fovcosinebusy = 0.86;
        self.fovcosinez = 0.97;
        self.fovground = 1;
        self.fovcosineperiph = 0.34;
        self.fovcosineperiphmaxdistsq = 90000;
        break;
    case #"hunt":
    case #"combat_hunt":
        self stealth_threat_sight::threat_sight_set_state("combat_hunt");
        self.fovcosine = 0.7;
        self.fovcosinebusy = 0.86;
        self.fovcosinez = 0.97;
        self.fovground = 1;
        self.fovcosineperiph = 0.01;
        self.fovcosineperiphmaxdistsq = 90000;
        break;
    case #"combat":
    case #"spotted":
        self stealth_threat_sight::threat_sight_set_state("spotted");
        self.fovcosine = 0.01;
        self.fovcosinebusy = 0.574;
        self.fovcosinez = 0;
        self.fovground = 0;
        self.fovcosineperiph = 0.01;
        self.fovcosineperiphmaxdistsq = 16384;
        break;
    case #"hash_5689f41e8c0ad00":
        assertmsg("<unknown string>");
        break;
    case #"hash_2689c03316776ffb":
        assertmsg("<unknown string>");
        break;
    case #"elevated":
        assertmsg("<unknown string>");
        break;
    }
    if (isdefined(self.var_e6b70cdb)) {
        self.fovcosine = self.var_e6b70cdb;
    }
    if (isdefined(self.var_fcc58b22)) {
        self.fovcosineperiph = self.var_fcc58b22;
    }
}

// Namespace namespace_f1f700ac/enemy
// Params 2, eflags: 0x2 linked
// Checksum 0x14f6c22d, Offset: 0x1958
// Size: 0x2f2
function set_alert_level(type, event) {
    if (!self flag::get("stealth_enabled")) {
        return;
    }
    if (isdefined(self.alertlevelscript) && self.alertlevelscript == type) {
        return;
    }
    self endon(#"death");
    self notify(#"set_alert_level");
    self endon(#"set_alert_level");
    if (isdefined(event) && namespace_979752dc::function_7211414e(self.alertlevelscript) < namespace_979752dc::function_7211414e(type)) {
        self notify(#"hash_7943e96754003c55");
        event.var_c0659057 = namespace_979752dc::function_7211414e(type);
        players = getplayers();
        if (isdefined(players) && players.size > 0) {
            foreach (player in players) {
                player notify(#"hash_543e034b500f035d", event);
            }
        }
    }
    self.alertlevelscript = type;
    while (isdefined(self.syncedmeleetarget)) {
        wait(0.05);
    }
    /#
        self thread stealth_debug::function_690312e5(type);
    #/
    self namespace_979752dc::set_stealth_state(type);
    self notify(#"hash_1969930500784d9a", type);
    self.alertlevel = namespace_979752dc::alertlevel_script_to_exe(type);
    iscombat = self.alertlevelint >= level.stealth.alert_levels_exe[#"combat"];
    self stealth_event::event_entity_core_set_enabled(!iscombat);
    self.ignoreexplosionevents = !iscombat;
    if (self.awarenesslevelcurrent === "unaware" && self.awarenesslevelprevious !== "unaware" && self.awarenesslevelprevious !== "combat") {
        self.stealth.var_e39ea5e7 = 1;
    }
}

// Namespace namespace_f1f700ac/enemy
// Params 0, eflags: 0x2 linked
// Checksum 0xa664f67d, Offset: 0x1c58
// Size: 0xf4
function set_default_stealth_funcs() {
    level namespace_979752dc::set_stealth_func("set_patrol_style", &namespace_979752dc::set_patrol_style);
    level namespace_979752dc::set_stealth_func("trigger_cover_blown", &trigger_cover_blown);
    level namespace_979752dc::set_stealth_func("set_blind", &set_blind);
    level namespace_979752dc::set_stealth_func("investigate", &bt_event_handler_severity);
    level namespace_979752dc::set_stealth_func("cover_blown", &bt_event_handler_severity);
    level namespace_979752dc::set_stealth_func("combat", &bt_event_handler_severity);
}

// Namespace namespace_f1f700ac/enemy
// Params 2, eflags: 0x2 linked
// Checksum 0xda7d5b92, Offset: 0x1d58
// Size: 0x34c
function monitor_damage_thread(rangeauto, rangesight) {
    self endon(#"entitydeleted");
    other = undefined;
    team = self.team;
    aiutility::addaioverridedamagecallback(self, &check_kill_damage);
    while (true) {
        if (!isalive(self)) {
            return;
        }
        wait_result = self waittill(#"damage");
        event_spot = self.origin;
        if (isalive(self) && !self flag::get("stealth_enabled")) {
            continue;
        }
        if (isalive(wait_result.attacker)) {
            other = wait_result.attacker;
        }
        if (!isdefined(other)) {
            continue;
        }
        self function_a3fcf9e0("damage", other, other.origin);
        if (isplayer(other) || isdefined(other.team) && other.team != team) {
            break;
        }
        if (isdefined(other.classname) && other.classname == "script_model") {
            if (other.isbarrel) {
                break;
            }
        }
    }
    if (!isdefined(self)) {
        return;
    }
    aiutility::removeaioverridedamagecallback(self, &check_kill_damage);
    if (isdefined(self.stealth.override_damage_auto_range)) {
        rangeauto = self.stealth.override_damage_auto_range;
    } else if (isdefined(level.stealth.override_damage_auto_range)) {
        rangeauto = level.stealth.override_damage_auto_range;
    }
    if (isdefined(self.stealth.override_damage_sight_range)) {
        rangesight = self.stealth.override_damage_sight_range;
    } else if (isdefined(level.stealth.override_damage_sight_range)) {
        rangesight = level.stealth.override_damage_sight_range;
    }
    if (isalive(self) && self.health > 0) {
        self stealth_event::event_broadcast_axis("ally_damaged", "ally_hurt_peripheral", other, rangeauto, rangesight);
        return;
    }
    self stealth_event::event_broadcast_axis("ally_killed", "ally_hurt_peripheral", other, rangeauto, rangesight);
}

// Namespace namespace_f1f700ac/enemy
// Params 13, eflags: 0x2 linked
// Checksum 0x14bae7b8, Offset: 0x20b0
// Size: 0x1a8
function check_kill_damage(*inflictor, *attacker, damage, *flags, meansofdamage, weapon, *var_fd90b0bb, point, *dir, *hitloc, *offsettime, *boneindex, *modelindex) {
    if (isdefined(self.disableeasystealthheadshot)) {
        return hitloc;
    }
    if (isdefined(boneindex) && boneindex.weapclass == "grenade" && (boneindex.name == #"hash_5453c9b880261bcb" || offsettime == "MOD_IMPACT")) {
        return hitloc;
    }
    if (hitloc > 0 && offsettime != "MOD_MELEE" && hitloc < self.health && self.alertlevelscript != "attack" && self.alertlevelscript != "combat") {
        eyepos = self geteye();
        if (distancesquared(modelindex, eyepos) < sqr(level.stealth.head_shot_dist)) {
            self.var_27feb91e = hitloc;
            return self.health;
        }
    }
    return hitloc;
}

// Namespace namespace_f1f700ac/enemy
// Params 1, eflags: 0x2 linked
// Checksum 0x41409c65, Offset: 0x2260
// Size: 0xec
function headtrack_player_toggle(bool) {
    if (bool) {
        if (!isdefined(self.stealth.allowplayerheadtracking)) {
            self.stealth.allowplayerheadtracking = 1;
        } else if (!self.stealth.allowplayerheadtracking) {
            return;
        }
        if (!isdefined(self.stealth.looking_at_entity)) {
            self.stealth.looking_at_entity = getplayers()[0];
        }
        self lookatentity(getplayers()[0]);
        return;
    }
    if (isdefined(self.stealth.looking_at_entity)) {
        self.stealth.looking_at_entity = undefined;
        self lookatentity();
    }
}

// Namespace namespace_f1f700ac/enemy
// Params 1, eflags: 0x0
// Checksum 0x138f574, Offset: 0x2358
// Size: 0x74
function lock_player_headtracking_off(duration) {
    self endon(#"death");
    self notify(#"hash_602f82a12f43d586");
    self endon(#"hash_602f82a12f43d586");
    self disable_player_headtracking();
    wait(duration);
    self enable_player_headtracking();
}

// Namespace namespace_f1f700ac/enemy
// Params 0, eflags: 0x2 linked
// Checksum 0x1a508b63, Offset: 0x23d8
// Size: 0x2c
function disable_player_headtracking() {
    self.stealth.allowplayerheadtracking = 0;
    headtrack_player_toggle(0);
}

// Namespace namespace_f1f700ac/enemy
// Params 0, eflags: 0x2 linked
// Checksum 0xa4300639, Offset: 0x2410
// Size: 0x16
function enable_player_headtracking() {
    self.stealth.allowplayerheadtracking = 1;
}

// Namespace namespace_f1f700ac/enemy
// Params 1, eflags: 0x2 linked
// Checksum 0xfa13523a, Offset: 0x2430
// Size: 0x3d6
function event_handler_should_ignore(event) {
    event_severity_min = self.stealth.event_severity_min;
    if (!isdefined(event_severity_min)) {
        event_severity_min = level.stealth.event_severity_min;
    }
    if (event.type == "combat" && self namespace_77fd5d41::iscombating()) {
        return 1;
    }
    if (isdefined(event_severity_min)) {
        diff = stealth_event::event_severity_compare(event_severity_min, event.type);
        if (diff > 0) {
            return 1;
        }
    }
    if (is_true(level.stealth.disguised) && self event_override_disguise(event)) {
        return 1;
    }
    if (event.typeorig == "explode") {
        if (isdefined(event.entity) && isdefined(event.entity.team) && event.entity.team == self.team) {
            return 1;
        }
    }
    if (event.typeorig == "footstep_sprint" || event.typeorig == "footstep_run") {
        if (should_ignore_sprint_footstep(event)) {
            return 1;
        }
    }
    if (event.typeorig == "silenced_shot") {
        if (isplayer(event.entity) && distancesquared(event.entity geteye(), event.origin) > 1296) {
            return 1;
        }
    }
    if (event.typeorig == "gunshot" || event.typeorig == "gunshot_teammate" || event.typeorig == "bulletwhizby") {
        if (event.entity == self) {
            return 1;
        }
        if (isai(event.entity) && event.entity isinscriptedstate()) {
            return 1;
        }
    }
    if (event.typeorig == "grenade danger") {
        if (isdefined(event.entity.item.name) && event.entity.item.name == #"hatchet") {
            return 1;
        }
    }
    if (is_true(self namespace_b2b86d39::stealth_call("event_should_ignore", event))) {
        return 1;
    }
    var_9cb4da4 = self namespace_b2b86d39::stealth_get_func("event_" + event.type);
    if (isdefined(var_9cb4da4)) {
        return self namespace_b2b86d39::stealth_call("event_" + event.type, event);
    }
    return 0;
}

// Namespace namespace_f1f700ac/enemy
// Params 1, eflags: 0x2 linked
// Checksum 0x17751dae, Offset: 0x2810
// Size: 0x1e8
function should_ignore_sprint_footstep(event) {
    traceoffset = (0, 0, 18);
    ignoreents = getplayers();
    if (isdefined(self.stealth.cantracetoaiignoreents)) {
        ignoreents = arraycombine(ignoreents, self.stealth.cantracetoaiignoreents);
    }
    if (isplayer(event.entity) && util::can_see_ai(event.origin + traceoffset, self, 250, ignoreents[0], ignoreents[1])) {
        dist_sq = distancesquared(self.origin, event.origin);
        radius = 250;
        if (isdefined(self.sprintfootstepradius)) {
            radius = self.sprintfootstepradius;
        }
        if (dist_sq < sqr(radius)) {
            var_c1c8aacd = util::can_see_ai(event.origin + traceoffset, self, 250, ignoreents[0], ignoreents[1]);
            return false;
        }
        playervisible = self cansee(event.entity);
        if (!playervisible && event.entity stealth_threat_sight::player_is_sprinting_at_me(self)) {
            return false;
        }
    }
    return true;
}

// Namespace namespace_f1f700ac/enemy
// Params 1, eflags: 0x2 linked
// Checksum 0x8f053c9e, Offset: 0x2a00
// Size: 0xbc
function event_override_disguise(event) {
    if (issentient(event.entity)) {
        switch (event.typeorig) {
        case #"footstep_sprint":
        case #"footstep":
        case #"footstep_walk":
        case #"footstep_run":
        case #"proximity":
            self thread stealth_threat_sight::threat_sight_force_visible(event.entity, 1);
            return true;
        }
    }
    return false;
}

// Namespace namespace_f1f700ac/enemy
// Params 2, eflags: 0x2 linked
// Checksum 0xd53c6685, Offset: 0x2ac8
// Size: 0xe8
function event_anyone_within_radius(eventorigin, dist) {
    distsq = dist * dist;
    ais = getactorteamarray("axis", "team3");
    foreach (ai in ais) {
        if (distancesquared(eventorigin, ai.origin) <= distsq) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_f1f700ac/enemy
// Params 1, eflags: 0x2 linked
// Checksum 0xa893b9c3, Offset: 0x2bb8
// Size: 0x3d2
function event_handler_translate_severity(event) {
    if (!isdefined(event) || !isdefined(event.typeorig)) {
        return;
    }
    if (isdefined(self.fnisinstealthhunt) && self [[ self.fnisinstealthhunt ]]()) {
        if (event.type == "investigate") {
            event.type = "cover_blown";
        }
    }
    if (isdefined(self.fnisinstealthcombat) && self [[ self.fnisinstealthcombat ]]()) {
        event.type = "combat";
    }
    switch (event.typeorig) {
    case #"sight":
        if (self.species == "dog") {
            event.type = "investigate";
        } else if (self namespace_979752dc::function_d58e1c1c() && self.alertlevel == "low_alert") {
            event.type = "cover_blown";
        } else if (isdefined(self.stealth.threat_sight_lost) && self.stealth.threat_sight_lost == 0) {
            if (isdefined(event.entity) && issentient(event.entity)) {
                self getenemyinfo(event.entity);
            }
            event.type = "combat";
        } else if (distancesquared(self.origin, event.origin) < 62500) {
            if (isdefined(event.entity)) {
                threatsight = self getthreatsight(event.entity);
                if (threatsight >= 1) {
                    event.type = "combat";
                }
            }
        }
        break;
    case #"grenade danger":
        if (event_anyone_within_radius(event.origin, 128)) {
            event.type = "combat";
        }
        break;
    case #"explode":
        if (event_anyone_within_radius(event.origin, 192)) {
            event.type = "combat";
        } else if (distancesquared(event.origin, self.origin) <= 1048576) {
            event.type = "combat";
        }
        break;
    case #"gunshot":
        if (distancesquared(event.origin, self.origin) < 640000) {
            event.type = "combat";
        }
        break;
    case #"glass_destroyed":
        if (self util::has_tac_vis(event.origin, 0) && distance2dsquared(event.origin, self.origin) < 36864) {
            event.type = "combat";
        }
        break;
    }
}

// Namespace namespace_f1f700ac/enemy
// Params 2, eflags: 0x2 linked
// Checksum 0x6aad5940, Offset: 0x2f98
// Size: 0x4a
function trigger_cover_blown(*event, bdocoverblownreaction) {
    if (!isdefined(self.stealth)) {
        return;
    }
    self.stealth.bcoverhasbeenblown = 1;
    self.stealth.bdocoverblownreaction = bdocoverblownreaction;
}

// Namespace namespace_f1f700ac/enemy
// Params 1, eflags: 0x2 linked
// Checksum 0xe412336e, Offset: 0x2ff0
// Size: 0x2b4
function react_announce(event) {
    self endon(#"death");
    delaytime = randomfloatrange(0.5, 1.1);
    var_bed01a48 = hash(event.type);
    switch (var_bed01a48) {
    case #"investigate":
        self thread namespace_979752dc::function_f5f4416f("stealth", "announce", "investigate", delaytime);
        println("<unknown string>" + self getentitynumber() + "<unknown string>" + event.typeorig + "<unknown string>");
        /#
            stealth_debug::function_65b21ab8(self, "<unknown string>");
        #/
        return true;
    case #"cover_blown":
        self thread namespace_979752dc::function_f5f4416f("stealth", "announce", "coverblown", delaytime);
        println("<unknown string>" + self getentitynumber() + "<unknown string>" + event.typeorig + "<unknown string>");
        /#
            stealth_debug::function_65b21ab8(self, "<unknown string>");
        #/
        return true;
    case #"combat":
        self thread namespace_979752dc::function_f5f4416f("stealth", "announce", "combat", 1);
        println("<unknown string>" + self getentitynumber() + "<unknown string>" + event.typeorig + "<unknown string>");
        /#
            stealth_debug::function_65b21ab8(self, "<unknown string>");
        #/
        return true;
    }
    return false;
}

// Namespace namespace_f1f700ac/enemy
// Params 1, eflags: 0x2 linked
// Checksum 0x592f722c, Offset: 0x32b0
// Size: 0x49c
function react_announce_specific(event) {
    self endon(#"death");
    if (isdefined(event.typeorig)) {
        delaytime = randomfloatrange(0.5, 1);
        switch (event.typeorig) {
        case #"sight":
            self thread namespace_979752dc::function_f5f4416f("stealth", "announce", "sight", delaytime);
            return true;
        case #"explode":
            self thread namespace_979752dc::function_f5f4416f("stealth", "announce", "explosion", delaytime);
            return true;
        case #"grenade danger":
            self thread namespace_979752dc::function_f5f4416f("stealth", "announce", "grenade_danger", delaytime);
            return true;
        case #"seek_backup":
            self thread namespace_979752dc::function_f5f4416f("stealth", "announce", "seek_backup", randomfloatrange(2, 2.5), event);
            return true;
        case #"saw_corpse":
        case #"found_corpse":
            self thread namespace_979752dc::function_f5f4416f("stealth", "announce", event.typeorig, delaytime);
            /#
                stealth_debug::function_65b21ab8(self, "<unknown string>");
            #/
            return true;
        case #"bulletwhizby":
        case #"gunshot":
            self thread namespace_979752dc::function_f5f4416f("stealth", "announce", "gunshot", 0.2, event);
            /#
                stealth_debug::function_65b21ab8(self, "<unknown string>");
            #/
            return true;
        case #"ally_damaged":
        case #"gunshot_teammate":
            self thread namespace_979752dc::function_f5f4416f("stealth", "announce", "gunshot", randomfloatrange(0.8, 1.3), event);
            /#
                stealth_debug::function_65b21ab8(self, "<unknown string>");
            #/
            return true;
        case #"ally_killed":
            self thread namespace_979752dc::function_f5f4416f("stealth", "announce", "ally_killed", 0.5);
            /#
                stealth_debug::function_65b21ab8(self, "<unknown string>");
            #/
            return true;
        case #"proximity":
            self thread namespace_979752dc::function_f5f4416f("stealth", "announce", "proximity", 0.5);
            return true;
        case #"footstep_sprint":
        case #"footstep":
        case #"glass_destroyed":
        case #"footstep_run":
            self thread namespace_979752dc::function_f5f4416f("stealth", "announce", "investigate", delaytime);
            return true;
        default:
            println("<unknown string>" + event.typeorig + "<unknown string>");
            break;
        }
    }
    return false;
}

// Namespace namespace_f1f700ac/enemy
// Params 0, eflags: 0x2 linked
// Checksum 0xa2ccfdd0, Offset: 0x3758
// Size: 0x1cc
function setpatrolstyle_base() {
    var_237ae2e3 = namespace_979752dc::get_patrol_style_default();
    var_ef544d66 = isdefined(var_237ae2e3) && var_237ae2e3 != "unaware" && var_237ae2e3 != "patrol";
    groupdata = stealth_group::getgroup(self.script_stealthgroup);
    coverblown = self.awarenesslevelcurrent !== "unaware" && (isdefined(self.stealth.bcoverhasbeenblown) || isdefined(groupdata.bcoverhasbeenblown));
    if (var_ef544d66 || coverblown) {
        var_a0f0f6ed = isdefined(self.stealth.bdocoverblownreaction) && self.stealth.bdocoverblownreaction;
        var_ff42b0fb = namespace_979752dc::get_patrol_style() === "patrol" && var_a0f0f6ed;
        var_ff42b0fb = 0;
        self namespace_979752dc::set_patrol_style("alert", var_ff42b0fb, undefined, "small");
        return;
    }
    delay = self getblackboardattribute("_human_demeanor") === "ALERT" ? 0.05 : 0;
    self thread function_6935155f("patrol", delay);
}

// Namespace namespace_f1f700ac/enemy
// Params 2, eflags: 0x2 linked
// Checksum 0x4c7a9d7f, Offset: 0x3930
// Size: 0x4c
function function_6935155f(style, delay) {
    self endon(#"death");
    if (delay > 0) {
        wait(delay);
    }
    self namespace_979752dc::set_patrol_style(style);
}

// Namespace namespace_f1f700ac/enemy
// Params 2, eflags: 0x2 linked
// Checksum 0xb68c44ab, Offset: 0x3988
// Size: 0x4c
function bt_set_stealth_state(statename, event) {
    assert(isdefined(self.fnsetstealthstate));
    self [[ self.fnsetstealthstate ]](statename, event);
}

// Namespace namespace_f1f700ac/enemy
// Params 1, eflags: 0x2 linked
// Checksum 0x4fd57da3, Offset: 0x39e0
// Size: 0x28e
function bt_event_handler_severity(event) {
    event.investigate_pos = event.origin;
    if (isdefined(self.enemy) && isdefined(event.entity) && event.entity == self.enemy) {
        event.investigate_pos = self lastknownpos(self.enemy);
    } else if (isdefined(event.entity) && event.typeorig == "bulletwhizby") {
        event.investigate_pos = event.entity.origin;
    }
    self event_handler_translate_severity(event);
    if (self event_handler_should_ignore(event)) {
        return false;
    }
    self.stealth.last_severity_time = gettime();
    if (!namespace_979752dc::bcisincombat()) {
        if (!self react_announce_specific(event)) {
            self react_announce(event);
        }
    }
    var_bed01a48 = hash(event.type);
    switch (var_bed01a48) {
    case #"investigate":
        self thread bt_event_investigate(event);
        break;
    case #"cover_blown":
        self thread bt_event_cover_blown(event);
        break;
    case #"combat":
        self thread bt_event_combat(event);
        break;
    }
    level notify(#"stealth_event", {#event:event, #receiver:self});
    func = namespace_b2b86d39::stealth_get_func(event.typeorig);
    if (isdefined(func) && func != &bt_event_handler_severity) {
        self thread [[ func ]](event);
    }
    return true;
}

// Namespace namespace_f1f700ac/enemy
// Params 1, eflags: 0x2 linked
// Checksum 0x71c2bdb3, Offset: 0x3c78
// Size: 0x4c
function bt_event_investigate(event) {
    self set_alert_level("warning1", event);
    self bt_set_stealth_state("investigate", event);
}

// Namespace namespace_f1f700ac/enemy
// Params 1, eflags: 0x2 linked
// Checksum 0x8d5e0b26, Offset: 0x3cd0
// Size: 0x34c
function bt_event_cover_blown(event) {
    if (event.typeorig == "sight" && self.awarenesslevelcurrent == "unaware" && self namespace_979752dc::function_d58e1c1c()) {
        self set_alert_level("warning1", event);
    } else {
        if (event.typeorig == "sight" && self namespace_979752dc::function_d58e1c1c() && isdefined(event.entity)) {
            self stealth_threat_sight::function_7af4fa05(event.entity);
        }
        self set_alert_level("warning2", event);
    }
    if (isdefined(event.entity) && isdefined(event.entity.classname) && event.entity.classname == "script_vehicle_blackhornet") {
        return;
    }
    if (is_true(level.stealth.disguised)) {
        switch (event.typeorig) {
        case #"explode":
        case #"silenced_shot":
        case #"gunshot":
            namespace_979752dc::set_disguised(0);
            level util::delay(20, undefined, &namespace_979752dc::set_disguised, 1);
            break;
        }
    }
    if (event.typeorig == "light_killed") {
        event.look_pos = event.investigate_pos;
        event.investigate_pos = util::ground_position(event.investigate_pos);
    }
    if (isdefined(self.fnisinstealthcombat) && !self [[ self.fnisinstealthcombat ]]()) {
        if (isdefined(self.fnisinstealthhunt) && self [[ self.fnisinstealthhunt ]]()) {
            var_ffdc33b3 = stealth_group::group_updatepodhuntorigin(self, event.investigate_pos);
            if (!isdefined(self.pathgoalpos) || distancesquared(var_ffdc33b3, self.pathgoalpos) > 576) {
                self namespace_979752dc::function_2b21025e(event.investigate_pos);
                self namespace_979752dc::set_patrol_react(event.investigate_pos, "small");
            }
            return;
        }
        self bt_set_stealth_state("investigate", event);
    }
}

// Namespace namespace_f1f700ac/enemy
// Params 1, eflags: 0x2 linked
// Checksum 0x66b373e1, Offset: 0x4028
// Size: 0x11c
function bt_event_combat(event) {
    if (!isactor(self)) {
        return;
    }
    self endon(#"death");
    self notify(#"hash_543c5a6a505d931b");
    self notify(#"stop_going_to_node");
    self set_alert_level("attack", event);
    self bt_set_stealth_state("combat", event);
    if (isdefined(event) && issentient(event.entity)) {
        if (!isdefined(self.enemy)) {
            self resetthreatupdate();
        }
        self thread set_provide_cover_fire();
    }
    self flag::set("stealth_attack");
}

// Namespace namespace_f1f700ac/enemy
// Params 0, eflags: 0x2 linked
// Checksum 0x2e2b5396, Offset: 0x4150
// Size: 0x6a
function set_provide_cover_fire() {
    self.providecoveringfire = 1;
    self endon(#"death");
    self endon(#"stealth_investigate");
    self endon(#"stealth_hunt");
    self endon(#"stealth_combat");
    wait(5);
    self.providecoveringfire = 0;
}

