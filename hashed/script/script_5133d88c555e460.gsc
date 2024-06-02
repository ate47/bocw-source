// Atian COD Tools GSC CW decompiler test
#using script_3bbf85ab4cb9f3c2;
#using script_47851dbeea22fe66;
#using script_3faf478d5b0850fe;
#using script_2a5bf5b4a00cee0d;
#using script_6b6510e124bad778;
#using script_164a456ce05c3483;
#using script_1ee011cd0961afd7;
#using script_5f20d3b434d24884;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_17dcb1172e441bf6;
#using scripts\core_common\ai\archetype_locomotion_utility.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_utility.gsc;
#using scripts\core_common\ai\systems\ai_blackboard.gsc;
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\core_common\ai\systems\behavior_tree_utility.gsc;
#using scripts\core_common\ai\systems\behavior_state_machine.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace namespace_58e19d6;

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 0, eflags: 0x2 linked
// Checksum 0x4ca35c3f, Offset: 0x610
// Size: 0xc4
function init() {
    level.doa.var_78fe553b = [];
    clientfield::register("actor", "silverback_spawn", 1, 1, "counter");
    namespace_250e9486::function_252dff4d("silverback", 29, &function_644621c0, &function_12462f60);
    namespace_250e9486::function_252dff4d("silverback_raygun", -1, &function_644621c0, &function_12462f60);
    registerbehaviorscriptfunctions();
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 0, eflags: 0x2 linked
// Checksum 0xdbaa4671, Offset: 0x6e0
// Size: 0x8b4
function registerbehaviorscriptfunctions() {
    assert(isscriptfunctionptr(&function_7ea2ce80));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_13a7c5f0e3443c41", &function_7ea2ce80);
    assert(isscriptfunctionptr(&function_5ea59a34));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_2e4df6a195ecfec9", &function_5ea59a34);
    assert(isscriptfunctionptr(&function_f23c95c0));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_5842fe16f70c7666", &function_f23c95c0);
    assert(isscriptfunctionptr(&function_57a2b7f5));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_4d98d9c9ffa44e4a", &function_57a2b7f5);
    assert(isscriptfunctionptr(&function_393e6415));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_5e697a4c27f75b89", &function_393e6415);
    assert(isscriptfunctionptr(&function_300bba8c));
    behaviortreenetworkutility::registerbehaviortreescriptapi(#"hash_54f2476b821b6122", &function_300bba8c);
    assert(!isdefined(&function_33d8ef00) || isscriptfunctionptr(&function_33d8ef00));
    assert(!isdefined(&function_3e4a0d4f) || isscriptfunctionptr(&function_3e4a0d4f));
    assert(!isdefined(&function_a0e76e3c) || isscriptfunctionptr(&function_a0e76e3c));
    behaviortreenetworkutility::registerbehaviortreeaction(#"hash_40d132fce22a5e1f", &function_33d8ef00, &function_3e4a0d4f, &function_a0e76e3c);
    assert(!isdefined(&function_6d8dd464) || isscriptfunctionptr(&function_6d8dd464));
    assert(!isdefined(&function_3eb8351a) || isscriptfunctionptr(&function_3eb8351a));
    assert(!isdefined(&function_fcbe1c10) || isscriptfunctionptr(&function_fcbe1c10));
    behaviortreenetworkutility::registerbehaviortreeaction(#"hash_2154c6eadedb4030", &function_6d8dd464, &function_3eb8351a, &function_fcbe1c10);
    assert(!isdefined(&function_a1f4593d) || isscriptfunctionptr(&function_a1f4593d));
    assert(!isdefined(&function_78e41d77) || isscriptfunctionptr(&function_78e41d77));
    assert(!isdefined(&function_aacc3221) || isscriptfunctionptr(&function_aacc3221));
    behaviortreenetworkutility::registerbehaviortreeaction(#"hash_3f09038802c74759", &function_a1f4593d, &function_78e41d77, &function_aacc3221);
    assert(!isdefined(&function_ea163d5b) || isscriptfunctionptr(&function_ea163d5b));
    assert(!isdefined(&function_cea06112) || isscriptfunctionptr(&function_cea06112));
    assert(!isdefined(&function_ebaf98e0) || isscriptfunctionptr(&function_ebaf98e0));
    behaviortreenetworkutility::registerbehaviortreeaction(#"hash_507d2a221b595a43", &function_ea163d5b, &function_cea06112, &function_ebaf98e0);
    assert(!isdefined(&function_77e73b0) || isscriptfunctionptr(&function_77e73b0));
    assert(!isdefined(&function_ae656597) || isscriptfunctionptr(&function_ae656597));
    assert(!isdefined(&function_3a5a0b29) || isscriptfunctionptr(&function_3a5a0b29));
    behaviortreenetworkutility::registerbehaviortreeaction(#"hash_32d2aabab53b4ba6", &function_77e73b0, &function_ae656597, &function_3a5a0b29);
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 0, eflags: 0x2 linked
// Checksum 0x62a1a807, Offset: 0xfa0
// Size: 0x53c
function function_644621c0() {
    self namespace_250e9486::function_25b2c8a9();
    self namespace_250e9486::function_db744d28(getdvarint(#"hash_6c6cccd30dfa33fc", 2500));
    self.var_f979e699 = 20000;
    self.animrate = 1;
    self.var_1077b9da = 0;
    self.var_9540e8e7 = 0;
    self.var_6e5b38d9 = 0;
    self.var_3b0b5ef8 = 0;
    self.var_434f2387 = 0;
    self.var_aff8ab1 = 0;
    self.var_131a202d = 0;
    self.var_1c8b76d3 = 1;
    self.health = 350000 + level.doa.var_6c58d51 * 1000000 + int(700000 * namespace_ec06fe4a::function_ef369bae());
    self.maxhealth = self.health;
    self.meleedistsq = sqr(80);
    self.var_b0f99546 = undefined;
    self setavoidancemask("avoid none");
    self.goalradius = 80;
    self.doa.var_ad888d1f = [];
    self.doa.var_6b4163f1 = 0;
    self setteam(#"neutral");
    self.no_gib = 1;
    self function_678d90a1(0.001001);
    self.var_5603780 = &function_ddfdaf41;
    self.overrideactordamage = &function_7ff8a49e;
    self callback::function_d8abfc3d(#"on_ai_killed", &function_31f5e5b);
    self thread namespace_ec06fe4a::function_d55f042c(level, "round_about_to_start");
    self notify(#"hash_2ca65c35156a24dc");
    self.var_febfd0 = namespace_ec06fe4a::spawnorigin(self.origin);
    if (isdefined(self.var_febfd0)) {
        self.var_febfd0.owner = self;
        self.var_febfd0 thread namespace_ec06fe4a::function_d55f042c(self, "death");
    }
    self.trigger = namespace_ec06fe4a::spawntrigger("trigger_radius", self.origin, 2 | 1 | 512, 50, 50);
    if (isdefined(self.trigger)) {
        self.trigger thread function_f87ac23b(self);
        self.trigger enablelinkto();
        self.trigger linkto(self);
        self.trigger thread namespace_ec06fe4a::function_d55f042c(self, "death");
        self.trigger thread namespace_ec06fe4a::function_d55f042c(self, "killTrigger");
    }
    self namespace_83eb6304::function_3ecfde67("player_trail_red");
    self thread function_fa03570e();
    self thread function_27adf2ff();
    self thread function_2fdfff05();
    self thread function_8ef296ea();
    self function_add8c81a();
    /#
        self thread function_d140ebbd();
    #/
    if (!isdefined(level.doa.var_5598fe58)) {
        level.doa.var_5598fe58 = [];
    }
    if (!isdefined(level.doa.var_5598fe58)) {
        level.doa.var_5598fe58 = [];
    } else if (!isarray(level.doa.var_5598fe58)) {
        level.doa.var_5598fe58 = array(level.doa.var_5598fe58);
    }
    level.doa.var_5598fe58[level.doa.var_5598fe58.size] = self;
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 0, eflags: 0x0
// Checksum 0xe803754d, Offset: 0x14e8
// Size: 0x44
function function_d140ebbd() {
    self endon(#"death");
    self waittill(#"hash_737e3431bf19a6aa");
    self function_27adf2ff(0, 0);
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 0, eflags: 0x2 linked
// Checksum 0x9c0295df, Offset: 0x1538
// Size: 0x20e
function function_8ef296ea() {
    if (!isdefined(level.doa.var_5598fe58)) {
        level.doa.var_5598fe58 = [];
    }
    self endon(#"death");
    while (true) {
        level waittill(#"hash_11f6c6a82650cca2");
        if (is_true(self.collector)) {
            return;
        }
        function_1eaaceab(level.doa.var_5598fe58);
        chance = 100 - level.doa.var_5598fe58.size * 25 + getplayers().size * 10;
        foreach (monkey in level.doa.var_5598fe58) {
            if (monkey.var_b0f99546 === #"hash_3dd480845ef2e135") {
                if (monkey == self) {
                    chance = 25;
                    break;
                }
                chance -= 15;
            }
        }
        chance = math::clamp(chance, 10, 95);
        if (randomint(100) < chance) {
            self.var_6e5b38d9 = 0;
            self.var_1077b9da = 1;
            self.var_b0f99546 = #"hash_3dd480845ef2e135";
        }
    }
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 0, eflags: 0x2 linked
// Checksum 0xa1e0707f, Offset: 0x1750
// Size: 0x118
function function_2fdfff05() {
    self endon(#"death");
    var_89586b31 = 0;
    while (true) {
        curhealth = self.health;
        wait(1);
        var_dc5a778a = curhealth - self.health;
        namespace_1e25ad94::debugmsg("this interval, Mamaback hit for " + var_dc5a778a + " damage, health left:" + self.health);
        if (var_dc5a778a > 65000) {
            time = gettime();
            if (time > var_89586b31) {
                self.var_6e5b38d9 = 0;
                self.var_1077b9da = 1;
                self.var_b0f99546 = #"hash_3dd480845ef2e135";
                self.evading = 1;
                var_89586b31 = time + 10000;
                self thread namespace_6e90e490::function_47e11416(1);
            }
        }
    }
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 0, eflags: 0x2 linked
// Checksum 0x4b08b530, Offset: 0x1870
// Size: 0x1b0
function function_12462f60() {
    self endon(#"death");
    if (!is_true(self.collector)) {
        self thread function_11e05208();
        self thread function_d1183a88();
    }
    self thread namespace_250e9486::function_8971bbb7();
    var_9a615a35 = 0;
    while (true) {
        if (var_9a615a35 < 200 && self.zombie_move_speed == "run" || self.zombie_move_speed == "walk") {
            var_9a615a35++;
        }
        if (var_9a615a35 > 0 && self.zombie_move_speed == "sprint") {
            var_9a615a35 -= 3;
            if (var_9a615a35 <= 0) {
                var_9a615a35 = 0;
                self function_add8c81a(self.var_993e6488);
            }
        }
        if (self.zombie_move_speed == "run" && var_9a615a35 >= 200) {
            self function_add8c81a("sprint");
        }
        self namespace_dfc652ee::function_d936944a();
        self namespace_dfc652ee::function_cbae9ca3();
        wait(0.2);
    }
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 0, eflags: 0x2 linked
// Checksum 0x6f13f05e, Offset: 0x1a28
// Size: 0x284
function function_d1183a88() {
    self notify("35693ccf110437e6");
    self endon("35693ccf110437e6");
    self endon(#"death");
    wait(8);
    while (true) {
        wait(1);
        if (isdefined(self.favoriteenemy)) {
            if (isdefined(self.favoriteenemy.doa) && isdefined(self.favoriteenemy.doa.vehicle)) {
                break;
            }
        }
    }
    var_4fb43dc5 = self.favoriteenemy;
    foreach (player in getplayers()) {
        if (!isalive(player) || is_true(player.laststand)) {
            continue;
        }
        if (isdefined(player.doa.vehicle)) {
            continue;
        }
        if (is_true(self.var_ae3a888) && is_true(player.var_c497caa3)) {
            continue;
        }
        if (player !== self.favoriteenemy) {
            self clearenemy();
            self clearpath();
            self setgoal(self.origin);
            var_4fb43dc5 = player;
            break;
        }
    }
    if (self.favoriteenemy !== var_4fb43dc5) {
        self.favoriteenemy = var_4fb43dc5;
        if (isdefined(self.favoriteenemy)) {
            self setentitytarget(self.favoriteenemy);
        }
    }
    self thread function_d1183a88();
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 0, eflags: 0x2 linked
// Checksum 0xf51ea4d, Offset: 0x1cb8
// Size: 0x2a4
function function_11e05208() {
    self notify("57574d220446d239");
    self endon("57574d220446d239");
    self endon(#"death");
    wait(3);
    var_a3750609 = 5;
    lastpos = self.origin;
    while (var_a3750609) {
        wait(1);
        deltasq = distancesquared(lastpos, self.origin);
        if (deltasq < sqr(12)) {
            var_a3750609--;
            continue;
        }
        self thread function_11e05208();
    }
    var_4fb43dc5 = self.favoriteenemy;
    foreach (player in getplayers()) {
        if (!isalive(player) || is_true(player.laststand)) {
            continue;
        }
        if (is_true(self.var_ae3a888) && is_true(player.var_c497caa3)) {
            continue;
        }
        if (player !== self.favoriteenemy) {
            self clearenemy();
            self clearpath();
            self setgoal(self.origin);
            var_4fb43dc5 = player;
            break;
        }
    }
    if (self.favoriteenemy !== var_4fb43dc5) {
        self.favoriteenemy = var_4fb43dc5;
        if (isdefined(self.favoriteenemy)) {
            self setentitytarget(self.favoriteenemy);
        }
    }
    self thread function_11e05208();
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 1, eflags: 0x2 linked
// Checksum 0x5993dc98, Offset: 0x1f68
// Size: 0x10e
function function_add8c81a(rate = "run") {
    if (rate == "next" && self.zombie_move_speed == "walk") {
        rate = "run";
    }
    if (rate == "next" && self.zombie_move_speed == "run") {
        rate = "sprint";
    }
    if (rate == "next" && self.zombie_move_speed == "sprint") {
        rate = "super_sprint";
    }
    if (rate == "walk") {
    } else if (rate == "run") {
    } else if (rate == "sprint") {
    }
    self.var_993e6488 = self.zombie_move_speed;
    self.zombie_move_speed = rate;
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 1, eflags: 0x2 linked
// Checksum 0x4e8f2ea2, Offset: 0x2080
// Size: 0xa4
function function_ca4a3a4f(position) {
    self.var_860a34b9 = getclosestpointonnavmesh(position, self.goalradius, self getpathfindingradius());
    if (!isdefined(self.var_860a34b9)) {
        self.var_860a34b9 = position;
    }
    self.ignoreall = 1;
    self namespace_250e9486::function_41354e51(self.var_860a34b9, 1, 1);
    /#
        self thread function_31f34cee();
    #/
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 0, eflags: 0x0
// Checksum 0xa2bd05e6, Offset: 0x2130
// Size: 0x76
function function_31f34cee() {
    self endon(#"death");
    self notify("48dc5908e0a8583f");
    self endon("48dc5908e0a8583f");
    while (isdefined(self.var_860a34b9)) {
        level thread namespace_1e25ad94::function_1d1f2c26(self.var_860a34b9, 0.05, 24, (1, 0, 0));
        waitframe(1);
    }
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 2, eflags: 0x2 linked
// Checksum 0xa5fe030b, Offset: 0x21b0
// Size: 0x17c
function function_27adf2ff(on = 1, var_a53a6d94 = 1) {
    assert(isdefined(self.trigger));
    if (isdefined(self.trigger)) {
        self.trigger endon(#"death");
    }
    if (on) {
        self namespace_83eb6304::function_3ecfde67("silverback_shield");
        self namespace_e32bb68::function_3a59ec34("evt_doa_player_shield_start");
        self namespace_e32bb68::function_3a59ec34("zmb_doa_ai_silverback_shield_lp");
        self.takedamage = 0;
    } else {
        self namespace_83eb6304::turnofffx("silverback_shield");
        self namespace_e32bb68::function_3a59ec34("evt_doa_player_shield_stop");
        self namespace_e32bb68::function_ae271c0b("zmb_doa_ai_silverback_shield_lp");
        self.takedamage = 1;
    }
    if (isdefined(self.trigger)) {
        self.trigger triggerenable(var_a53a6d94);
    }
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 1, eflags: 0x2 linked
// Checksum 0x26b05623, Offset: 0x2338
// Size: 0x136
function function_f87ac23b(owner) {
    self endon(#"death");
    while (true) {
        result = self waittill(#"trigger");
        if (isdefined(result.activator)) {
            if (result.activator.team == #"allies") {
                result.activator dodamage(result.activator.health, self.origin, owner, owner);
                continue;
            }
            if (result.activator.team == #"axis") {
                if (namespace_250e9486::function_3d752709(result.activator)) {
                    result.activator namespace_250e9486::setup_zombie_knockdown(owner);
                    result.activator.knockdown_type = "knockdown_shoved";
                }
            }
        }
    }
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 0, eflags: 0x2 linked
// Checksum 0x83e138d3, Offset: 0x2478
// Size: 0x32
function function_ddfdaf41() {
    self.var_6e5b38d9 = 0;
    self.var_1077b9da = 1;
    self.var_b0f99546 = #"hash_3dd480845ef2e135";
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 13, eflags: 0x2 linked
// Checksum 0x962f7ed7, Offset: 0x24b8
// Size: 0x108
function function_7ff8a49e(*inflictor, eattacker, idamage, *idflags, *smeansofdeath, *weapon, *var_fd90b0bb, vpoint, *vdir, *shitloc, *timeoffset, *boneindex, *modelindex) {
    if (is_false(self.takedamage) || is_true(self.collector)) {
        return 0;
    }
    var_799e18e5 = modelindex;
    var_5f32808d = 1;
    if (boneindex >= 1000) {
        var_5f32808d = 2;
    }
    self namespace_ec06fe4a::function_2f4b0f9(self.health - boneindex, timeoffset, var_799e18e5, boneindex, var_5f32808d);
    return boneindex;
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 0, eflags: 0x2 linked
// Checksum 0x25d469a8, Offset: 0x25c8
// Size: 0x60
function function_fa03570e() {
    self endon(#"death");
    while (true) {
        self waittill(#"hash_c7574e887244a9c");
        radiusdamage(self.origin, 100, 20000, 20000, self, "MOD_CRUSH");
    }
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 1, eflags: 0x2 linked
// Checksum 0xc66c07c8, Offset: 0x2630
// Size: 0x1e4
function function_31f5e5b(*params) {
    if (is_true(level.doa.var_41adf604)) {
        foreach (player in getplayers()) {
            player namespace_d2efac9a::function_3f112727();
        }
    }
    if (namespace_ec06fe4a::function_a8975c67()) {
        self playsound(#"hash_37a5a1ff99e806d");
    }
    if (isdefined(self.wig)) {
        self.wig delete();
    }
    if (isdefined(self.glasses)) {
        self.glasses delete();
    }
    if (isdefined(self.spoon)) {
        self.spoon delete();
    }
    if (isdefined(self.trigger)) {
        self.trigger delete();
    }
    if (isdefined(self.var_febfd0)) {
        self.var_febfd0 delete();
    }
    arrayremovevalue(level.doa.var_5598fe58, self);
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 1, eflags: 0x2 linked
// Checksum 0x1d1f297e, Offset: 0x2820
// Size: 0x20a
function function_7ea2ce80(entity) {
    if (entity.var_1077b9da) {
        entity.var_1077b9da = 0;
        return isdefined(entity.var_b0f99546);
    }
    if (is_true(entity.var_6ea9e4cf)) {
        return false;
    }
    if (is_true(entity.var_9540e8e7)) {
        return false;
    }
    if (isdefined(entity.var_b0f99546)) {
        return true;
    }
    if (!isdefined(entity.enemy)) {
        return false;
    }
    time = gettime();
    if (time < entity.var_6e5b38d9) {
        return false;
    }
    if (randomint(100) > 30) {
        entity.var_6e5b38d9 = time + 3000;
        return false;
    }
    var_92423047 = [];
    if (time > entity.var_aff8ab1 && randomint(100) < 30) {
        var_92423047[var_92423047.size] = #"hash_aea0ed21dcd8548";
    }
    if (time > entity.var_434f2387 && randomint(100) < 50) {
        var_92423047[var_92423047.size] = #"hash_3dd480845ef2e135";
    }
    if (time > entity.var_131a202d && randomint(100) < 30) {
        var_92423047[var_92423047.size] = #"hash_65e4e48a8b85b3ac";
    }
    if (var_92423047.size == 0) {
        return false;
    }
    entity.var_b0f99546 = var_92423047[randomint(var_92423047.size)];
    return true;
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 2, eflags: 0x2 linked
// Checksum 0xa9e581e8, Offset: 0x2a38
// Size: 0x1a0
function function_6ae08d6c(origin, raygun = 0) {
    if (raygun == 0) {
        silverback = doa_enemy::function_db55a448(doa_enemy::function_d7c5adee("silverback"), origin);
    } else {
        silverback = doa_enemy::function_db55a448(doa_enemy::function_d7c5adee("silverback_raygun"), origin);
    }
    if (isdefined(silverback)) {
        silverback.targetname = "silverback";
        silverback clientfield::increment("silverback_spawn", 1);
        function_1eaaceab(level.doa.var_5598fe58);
        if (!isdefined(level.doa.var_5598fe58)) {
            level.doa.var_5598fe58 = [];
        } else if (!isarray(level.doa.var_5598fe58)) {
            level.doa.var_5598fe58 = array(level.doa.var_5598fe58);
        }
        level.doa.var_5598fe58[level.doa.var_5598fe58.size] = silverback;
    }
    return silverback;
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 0, eflags: 0x2 linked
// Checksum 0x18aeb6a9, Offset: 0x2be0
// Size: 0x3b4
function function_571bb3ac() {
    assert(isdefined(level.doa.var_39e3fa99));
    sides = array("top", "bottom", "left", "right");
    center = [[ level.doa.var_39e3fa99 ]]->function_ffcf1d1();
    spot = [[ level.doa.var_39e3fa99 ]]->function_635991ca();
    silverback = function_6ae08d6c(spot.origin);
    if (isdefined(silverback)) {
        silverback endon(#"death");
        silverback function_add8c81a("walk");
        silverback.ignoreall = 1;
        silverback.var_6ea9e4cf = 1;
        silverback.goalradius = 16;
        silverback thread function_2c4249ed(sqr(28));
        result = level waittilltimeout(60, #"damage", #"doa_exit_taken", #"hash_72523790f36bd2a8", #"teleporter_taken", #"enter_the_wild", #"hash_7270a59e1f502d96");
        silverback notify(#"hash_72523790f36bd2a8");
        silverback.var_6ea9e4cf = undefined;
        if (result._notify == #"timeout" || result._notify == #"hash_72523790f36bd2a8" || result._notify == #"damage") {
            silverback.var_37f6ce66 = 0;
            silverback.var_860a34b9 = undefined;
            silverback.ignoreall = 0;
            silverback function_add8c81a("run");
            silverback thread namespace_6e90e490::function_47e11416(6);
            silverback.var_6e5b38d9 = gettime() + 11000;
            result = level waittilltimeout(10, #"doa_exit_taken", #"teleporter_taken", #"enter_the_wild", #"hash_7270a59e1f502d96", #"hash_72523790f36bd2a8");
        }
        silverback thread namespace_6e90e490::function_47e11416(6);
        silverback.var_1077b9da = 1;
        silverback.var_b0f99546 = #"hash_3dd480845ef2e135";
        level waittilltimeout(15, #"move_to_pos_downward_cycle", #"hash_1b322de3d2e3e781");
        silverback delete();
    }
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 1, eflags: 0x2 linked
// Checksum 0xc6322d9e, Offset: 0x2fa0
// Size: 0x98
function function_2c4249ed(distsq) {
    self notify("6152e7d8ce12e7fa");
    self endon("6152e7d8ce12e7fa");
    self endon(#"death");
    self endon(#"hash_726c573f1b22d654");
    while (true) {
        if (distancesquared(self.origin, self.goalpos) <= distsq) {
            self notify(#"near_goal");
        }
        waitframe(1);
    }
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 1, eflags: 0x2 linked
// Checksum 0x86689525, Offset: 0x3040
// Size: 0x22
function function_5ea59a34(entity) {
    return is_true(entity.var_6ea9e4cf);
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 2, eflags: 0x6 linked
// Checksum 0xb6e8e145, Offset: 0x3070
// Size: 0x78
function private function_77e73b0(entity, asmstatename) {
    animationstatenetworkutility::requeststate(entity, asmstatename);
    if (namespace_ec06fe4a::function_a8975c67()) {
        self playsound("zmb_simianaut_roar");
    }
    entity thread function_89406011();
    return 5;
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 2, eflags: 0x6 linked
// Checksum 0xa2c10bbc, Offset: 0x30f0
// Size: 0x38
function private function_ae656597(entity, *asmstatename) {
    if (is_true(asmstatename.var_6ea9e4cf)) {
        return 5;
    }
    return 4;
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 2, eflags: 0x6 linked
// Checksum 0xa639f4f8, Offset: 0x3130
// Size: 0x3a
function private function_3a5a0b29(entity, *asmstatename) {
    asmstatename.var_6ea9e4cf = undefined;
    asmstatename.ignoreall = 0;
    asmstatename.var_860a34b9 = undefined;
    return 4;
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 0, eflags: 0x2 linked
// Checksum 0x1646fb5e, Offset: 0x3178
// Size: 0x64
function function_e0c89bfe() {
    self notify("7e7d7c33d69b3c77");
    self endon("7e7d7c33d69b3c77");
    self endon(#"death", #"hash_72523790f36bd2a8");
    wait(20);
    self function_add8c81a("run");
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 0, eflags: 0x2 linked
// Checksum 0x3f10782f, Offset: 0x31e8
// Size: 0x506
function function_89406011() {
    self notify("3d337ae202752ba6");
    self endon("3d337ae202752ba6");
    self endon(#"death");
    self thread function_e0c89bfe();
    self.var_418c1493 = 1;
    currenttarget = undefined;
    var_8d48d5f2 = undefined;
    pickups = arraysortclosest(level.doa.var_cc831548, self.origin);
    self namespace_e32bb68::function_3a59ec34("zmb_doa_ai_silverback_gather_lp");
    while (is_true(self.var_6ea9e4cf)) {
        while (level.doa.var_cc831548.size) {
            pickups = arraysortclosest(level.doa.var_cc831548, self.origin, 12, 64);
            currenttarget = undefined;
            foreach (pickup in pickups) {
                if (is_true(pickup.var_23b495d)) {
                    continue;
                }
                currenttarget = pickup;
                break;
            }
            if (!isdefined(currenttarget)) {
                self notify(#"hash_72523790f36bd2a8");
                level notify(#"hash_72523790f36bd2a8");
                self.pacifist = 0;
                self.ignoreall = 0;
                self.var_860a34b9 = undefined;
                self.var_6ea9e4cf = undefined;
                self namespace_e32bb68::function_ae271c0b("zmb_doa_ai_silverback_gather_lp");
                return;
            }
            pos = namespace_ec06fe4a::function_65ee50ba(currenttarget.origin);
            self function_ca4a3a4f(pos);
            /#
                if (getdvarint(#"hash_267a8e5d4aab4191", 0) != 0) {
                    self thread function_bf037906(currenttarget.origin);
                }
            #/
            if (self haspath() == 0 && self.var_f95bc76f === 10) {
                currenttarget.var_23b495d = 1;
                continue;
            }
            timeout = 20;
            while (timeout > 0 && isdefined(currenttarget) && !is_true(currenttarget.pickedup)) {
                lastorigin = self.origin;
                result = self waittilltimeout(0.5, #"near_goal", #"picked_up");
                if (result._notify == #"timeout") {
                    timeout--;
                }
                if (isdefined(self.var_860a34b9) && distancesquared(self.var_860a34b9, self.origin) > sqr(12) && distancesquared(lastorigin, self.origin) < sqr(8)) {
                    if (isdefined(currenttarget)) {
                        currenttarget.var_23b495d = 1;
                    }
                    break;
                }
                if (!isdefined(currenttarget) || result.item === currenttarget || is_true(currenttarget.pickedup)) {
                    break;
                }
            }
        }
        break;
    }
    self namespace_e32bb68::function_ae271c0b("zmb_doa_ai_silverback_gather_lp");
    self notify(#"hash_72523790f36bd2a8");
    level notify(#"hash_72523790f36bd2a8");
    self.pacifist = 0;
    self.ignoreall = 0;
    self.var_860a34b9 = undefined;
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 1, eflags: 0x0
// Checksum 0x6b68cb35, Offset: 0x36f8
// Size: 0xf6
function function_bf037906(origin) {
    self endon(#"death");
    self endon(#"hash_72523790f36bd2a8");
    self notify("6437725e824ab0d3");
    self endon("6437725e824ab0d3");
    while (is_true(self.var_6ea9e4cf)) {
        level thread namespace_1e25ad94::debugcircle(origin + (0, 0, 20), 30, 0.05, (1, 0, 0));
        level thread namespace_1e25ad94::debugline(self.origin + (0, 0, 20), origin + (0, 0, 20), 0.05, (1, 0, 0));
        waitframe(1);
    }
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 1, eflags: 0x2 linked
// Checksum 0x83ee003e, Offset: 0x37f8
// Size: 0x80
function function_f23c95c0(entity) {
    if (is_true(entity.var_ba88972)) {
        return true;
    }
    if (gettime() < entity.var_3b0b5ef8) {
        return false;
    }
    entity.var_3b0b5ef8 += randomint(1000);
    return randomint(100) < 5;
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 2, eflags: 0x6 linked
// Checksum 0x847cf30e, Offset: 0x3880
// Size: 0x70
function private function_33d8ef00(entity, asmstatename) {
    entity.var_3b0b5ef8 = gettime() + 18000 + randomint(6000);
    animationstatenetworkutility::requeststate(entity, asmstatename);
    entity thread function_5dfb821d();
    return 5;
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 2, eflags: 0x6 linked
// Checksum 0xe4877188, Offset: 0x38f8
// Size: 0x38
function private function_3e4a0d4f(entity, *asmstatename) {
    if (is_true(asmstatename.var_ba88972)) {
        return 5;
    }
    return 4;
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 2, eflags: 0x6 linked
// Checksum 0x1806d409, Offset: 0x3938
// Size: 0x22
function private function_a0e76e3c(entity, *asmstatename) {
    asmstatename.var_ba88972 = undefined;
    return 4;
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 0, eflags: 0x2 linked
// Checksum 0xe2cfcbf4, Offset: 0x3968
// Size: 0x82
function function_5dfb821d() {
    self notify("d4299be5a7cb9e7");
    self endon("d4299be5a7cb9e7");
    self endon(#"death");
    self.var_ba88972 = 1;
    result = self waittilltimeout(2, #"hash_73d8763ded66b7c9", #"end");
    self.var_ba88972 = undefined;
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 1, eflags: 0x2 linked
// Checksum 0xf12cdb10, Offset: 0x39f8
// Size: 0x24
function function_393e6415(entity) {
    return entity.var_b0f99546 === #"hash_aea0ed21dcd8548";
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 2, eflags: 0x6 linked
// Checksum 0x6c9124ca, Offset: 0x3a28
// Size: 0x138
function private function_6d8dd464(entity, asmstatename) {
    animationstatenetworkutility::requeststate(entity, asmstatename);
    entity pathmode("dont move");
    entity.var_febfd0.angles = entity.angles;
    entity.var_febfd0.origin = entity.origin;
    entity linkto(entity.var_febfd0);
    entity.var_c4b93228 = randomint(3) + 2;
    entity thread namespace_6e90e490::function_47e11416(6);
    entity thread function_396fbf53(entity.var_febfd0, entity.var_c4b93228);
    if (isdefined(entity.trigger)) {
        entity.trigger triggerenable(1);
    }
    return 5;
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 2, eflags: 0x6 linked
// Checksum 0xbfca0d19, Offset: 0x3b68
// Size: 0x38
function private function_3eb8351a(entity, *asmstatename) {
    if (function_393e6415(asmstatename)) {
        return 5;
    }
    return 4;
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 2, eflags: 0x6 linked
// Checksum 0x851707b, Offset: 0x3ba8
// Size: 0xc6
function private function_fcbe1c10(entity, *asmstatename) {
    asmstatename pathmode("move allowed");
    asmstatename unlink();
    if (isdefined(asmstatename.trigger)) {
        asmstatename.trigger triggerenable(0);
    }
    asmstatename.var_aff8ab1 = gettime() + 5000;
    asmstatename.var_6e5b38d9 = gettime() + 3000 + randomint(3000);
    asmstatename.var_b0f99546 = undefined;
    return 4;
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 2, eflags: 0x2 linked
// Checksum 0xb1c8aa27, Offset: 0x3c78
// Size: 0x4c6
function function_396fbf53(var_febfd0, numattacks = 1) {
    if (!isdefined(self.enemy)) {
        return;
    }
    self endon(#"death");
    var_accea2d5 = sqr(64);
    anim_ang = vectortoangles(self.enemy.origin - self.origin);
    var_febfd0 rotateto((0, anim_ang[1], 0), 0.5);
    self waittill(#"hash_4effc2ad460c79a6");
    while (numattacks && isdefined(self.enemy)) {
        numattacks--;
        targetorigin = self.enemy.origin;
        anim_ang = vectortoangles(targetorigin - self.origin);
        var_febfd0 rotateto((0, anim_ang[1], 0), 0.5);
        var_febfd0 waittill(#"rotatedone");
        self namespace_e32bb68::function_3a59ec34("zmb_doa_ai_silverback_boost");
        playrumbleonposition("explosion_generic", self.origin);
        dist = distance(targetorigin, self.origin) + 256;
        forward = anglestoforward(var_febfd0.angles);
        var_49e4e4be = var_febfd0.origin + forward * dist;
        trace = groundtrace(var_febfd0.origin + (0, 0, 30), var_49e4e4be + (0, 0, 30), 0, self);
        var_49e4e4be = trace[#"position"] + forward * -64;
        distsq = distancesquared(var_febfd0.origin, var_49e4e4be);
        var_e1f43424 = math::clamp(int(distsq / var_accea2d5), 1, 9999);
        traveltime = math::clamp(var_e1f43424 * 0.005, 0, 0.7);
        if (getdvarint(#"hash_370090a969cdbc39", 0)) {
            level thread namespace_1e25ad94::debugcircle(var_49e4e4be + (0, 0, 20), 30, 3, (1, 0, 0));
            level thread namespace_1e25ad94::debugline(var_49e4e4be + (0, 0, 20), self.origin + (0, 0, 20), 3, (1, 0, 0));
            var_febfd0 thread namespace_1e25ad94::debugorigin(3, 20, (1, 0, 0));
        }
        var_febfd0 thread function_51226983(self.enemy);
        self.boosting = 1;
        var_febfd0 moveto(var_49e4e4be, traveltime);
        var_febfd0 waittilltimeout(traveltime + 2, #"movedone");
        self.boosting = undefined;
        var_febfd0 notify(#"hash_531e95963631c569");
        if (getdvarint(#"hash_370090a969cdbc39", 0)) {
            var_febfd0 notify(#"hash_60eabc6ae83239fe");
        }
    }
    self.var_b0f99546 = undefined;
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 1, eflags: 0x6 linked
// Checksum 0xadc97e1a, Offset: 0x4148
// Size: 0xee
function private function_51226983(target) {
    if (!isdefined(target)) {
        return;
    }
    self notify("3871cafa5cd4a172");
    self endon("3871cafa5cd4a172");
    self endon(#"death", #"hash_531e95963631c569");
    target endon(#"death", #"disconnect");
    while (isdefined(target)) {
        anim_ang = vectortoangles(target.origin - self.origin);
        self rotateto((0, anim_ang[1], 0), 0.5);
        self waittill(#"rotatedone");
    }
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 1, eflags: 0x2 linked
// Checksum 0xdfc34bf5, Offset: 0x4240
// Size: 0x24
function function_300bba8c(entity) {
    return entity.var_b0f99546 === #"hash_3dd480845ef2e135";
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 2, eflags: 0x6 linked
// Checksum 0x56ac98f, Offset: 0x4270
// Size: 0x120
function private function_a1f4593d(entity, asmstatename) {
    animationstatenetworkutility::requeststate(entity, asmstatename);
    entity pathmode("dont move");
    entity.var_febfd0.angles = entity.angles;
    entity.var_febfd0.origin = entity.origin;
    entity linkto(entity.var_febfd0);
    entity.var_66f5fb1a = randomint(3) + 1;
    entity thread function_de1c2fc3(entity.var_febfd0, entity.var_66f5fb1a);
    if (isdefined(entity.trigger)) {
        entity.trigger triggerenable(1);
    }
    return 5;
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 2, eflags: 0x6 linked
// Checksum 0x262d9baf, Offset: 0x4398
// Size: 0x38
function private function_78e41d77(entity, *asmstatename) {
    if (function_300bba8c(asmstatename)) {
        return 5;
    }
    return 4;
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 2, eflags: 0x6 linked
// Checksum 0xd5c47f34, Offset: 0x43d8
// Size: 0xc6
function private function_aacc3221(entity, *asmstatename) {
    asmstatename pathmode("move allowed");
    asmstatename unlink();
    if (isdefined(asmstatename.trigger)) {
        asmstatename.trigger triggerenable(0);
    }
    asmstatename.var_7d10766 = gettime() + 3000;
    asmstatename.var_6e5b38d9 = gettime() + 3000 + randomint(3000);
    asmstatename.var_b0f99546 = undefined;
    return 4;
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 2, eflags: 0x2 linked
// Checksum 0x9c0dc882, Offset: 0x44a8
// Size: 0x4e6
function function_de1c2fc3(var_febfd0, numattacks = 1) {
    self endon(#"death");
    self waittill(#"hash_3b8882dbdaef63bf");
    self notify(#"jumping");
    if (is_true(self.evading)) {
        numattacks = 4;
        self.evading = undefined;
        var_3aeed2b5 = 1;
    }
    while (numattacks) {
        numattacks--;
        targetpos = undefined;
        if (!is_true(var_3aeed2b5)) {
            players = namespace_7f5aeb59::function_23e1f90f();
            if (players.size == 0) {
                break;
            }
            if (players.size == 1) {
                self.favoriteenemy = players[0];
            } else {
                if (isdefined(self.enemy)) {
                    arrayremovevalue(players, self.enemy);
                }
                if (players.size > 0) {
                    if (players.size == 1) {
                        self.favoriteenemy = players[0];
                    } else {
                        self.favoriteenemy = players[randomint(players.size)];
                    }
                }
            }
            if (isdefined(self.favoriteenemy) && function_7d0161cb(self.favoriteenemy)) {
                targetpos = self.favoriteenemy.origin;
            }
        }
        if (!isdefined(targetpos)) {
            if (isdefined(level.doa.var_39e3fa99)) {
                spot = [[ level.doa.var_39e3fa99 ]]->function_70fb5745();
                targetpos = spot.origin;
            } else {
                targetpos = self.origin;
            }
        }
        self namespace_e32bb68::function_3a59ec34("zmb_doa_ai_silverback_jet_takeoff");
        self namespace_83eb6304::function_3ecfde67("silverback_launch");
        playrumbleonposition("explosion_generic", self.origin);
        height = 1000;
        timems = height / 1000 * 3000;
        var_febfd0.angles = self.angles;
        var_febfd0.origin = self.origin;
        self linkto(var_febfd0);
        if (getdvarint(#"hash_225943d24ee71d", 0)) {
            level thread namespace_1e25ad94::debugcircle(targetpos + (0, 0, 20), 30, 3, (1, 0, 0));
            var_febfd0 thread namespace_1e25ad94::debugorigin(3, 20, (1, 0, 0));
        }
        var_febfd0 thread function_51226983(self.enemy);
        self thread function_3a558b65("move_to_pos_downward_cycle");
        var_febfd0 function_36e94670(targetpos, timems, height);
        if (isdefined(self.var_617140d4)) {
            self.var_617140d4 unlink();
            self.var_617140d4 = undefined;
        }
        var_febfd0 notify(#"hash_531e95963631c569");
        if (getdvarint(#"hash_225943d24ee71d", 0)) {
            var_febfd0 notify(#"hash_60eabc6ae83239fe");
        }
        self namespace_83eb6304::function_3ecfde67("silverback_land");
        self namespace_e32bb68::function_3a59ec34("zmb_doa_ai_silverback_jet_land");
        physicsexplosionsphere(self.origin, 200, 128, 2);
        earthquake(0.6, 0.75, self.origin, 200);
        targetpos = undefined;
    }
    self.var_b0f99546 = undefined;
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 1, eflags: 0x6 linked
// Checksum 0xafeba4fe, Offset: 0x4998
// Size: 0x74
function private function_3a558b65(var_8767c017) {
    self notify("3bc44bd3b2c292ff");
    self endon("3bc44bd3b2c292ff");
    self endon(#"death");
    level waittill(var_8767c017);
    self thread function_bf9a2a1d(getplayers().size + 1);
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 1, eflags: 0x2 linked
// Checksum 0xa940c711, Offset: 0x4a18
// Size: 0xa2
function function_7d0161cb(ent) {
    if (!isdefined(ent)) {
        return false;
    }
    if (!isplayer(ent)) {
        return false;
    }
    if (isdefined(ent.doa) && isdefined(ent.doa.vehicle)) {
        return false;
    }
    if (!isdefined(level.doa.var_39e3fa99) || ![[ level.doa.var_39e3fa99 ]]->function_94e37da2(ent)) {
        return false;
    }
    return true;
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 3, eflags: 0x2 linked
// Checksum 0x99c57830, Offset: 0x4ac8
// Size: 0x2f0
function function_36e94670(destination, timems, var_fbe64ccb) {
    self endon(#"death");
    frames = timems / 50;
    delta = (destination - self.origin) / frames;
    stoptime = gettime() + timems;
    var_9843db1b = 0;
    if (isdefined(var_fbe64ccb)) {
        deltaz = var_fbe64ccb / frames / 2;
        var_aa3b6b10 = gettime() + timems / 2;
        while (true) {
            time = gettime();
            if (time > stoptime) {
                break;
            }
            if (time < var_aa3b6b10) {
                var_9b7b5074 = delta + (0, 0, deltaz);
                var_9843db1b = 1;
            } else {
                if (is_true(var_9843db1b)) {
                    level notify(#"move_to_pos_downward_cycle");
                    self notify(#"move_to_pos_downward_cycle");
                    /#
                        if (getdvarint(#"hash_4c32f1957a11eb6b", 0)) {
                            self.owner thread namespace_ec06fe4a::function_b4ff2191((0, 0, 1), 300);
                        }
                    #/
                }
                var_9843db1b = 0;
                var_9b7b5074 = delta - (0, 0, deltaz);
            }
            newspot = self.origin + var_9b7b5074;
            if (!var_9843db1b && newspot[2] < destination[2]) {
                newspot = (newspot[0], newspot[1], destination[2]);
                if (isai(self)) {
                    self forceteleport(newspot);
                    return;
                }
                self.origin = newspot;
                return;
            }
            if (isai(self)) {
                self forceteleport(newspot);
            } else {
                self.origin = newspot;
            }
            waitframe(1);
        }
        return;
    }
    while (gettime() < stoptime) {
        if (isai(self)) {
            self forceteleport(self.origin + delta);
        } else {
            self.origin += delta;
        }
        waitframe(1);
    }
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 1, eflags: 0x2 linked
// Checksum 0x19233807, Offset: 0x4dc0
// Size: 0x24
function function_57a2b7f5(entity) {
    return entity.var_b0f99546 === #"hash_65e4e48a8b85b3ac";
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 2, eflags: 0x6 linked
// Checksum 0x579e48e2, Offset: 0x4df0
// Size: 0x1e8
function private function_ea163d5b(entity, asmstatename) {
    animationstatenetworkutility::requeststate(entity, asmstatename);
    self thread function_36f40887();
    if (function_1d0310f4()) {
        banana1 = namespace_ec06fe4a::spawnmodel(self.origin, "zombietron_banana");
        if (isdefined(banana1)) {
            banana1.targetname = "banana1";
            banana1 setmodel("zombietron_banana");
            banana1 enablelinkto();
            banana1 linkto(self, "j_thumb_ri_3", (0, 0, 0), (0, 0, 0));
            banana1 thread function_bcfd19b2(self, "fire_banana_right");
        }
    }
    if (function_1d0310f4()) {
        banana2 = namespace_ec06fe4a::spawnmodel(self.origin, "zombietron_banana");
        if (isdefined(banana2)) {
            banana2.targetname = "banana2";
            banana2 setmodel("zombietron_banana");
            banana2 enablelinkto();
            banana2 linkto(self, "j_thumb_le_3", (0, 0, 0), (0, 0, 0));
            banana2 thread function_bcfd19b2(self, "fire_banana_left");
        }
    }
    return 5;
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 2, eflags: 0x6 linked
// Checksum 0xb0443548, Offset: 0x4fe0
// Size: 0x38
function private function_cea06112(entity, *asmstatename) {
    if (function_57a2b7f5(asmstatename)) {
        return 5;
    }
    return 4;
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 2, eflags: 0x6 linked
// Checksum 0xf925e73f, Offset: 0x5020
// Size: 0x5e
function private function_ebaf98e0(entity, *asmstatename) {
    asmstatename.var_131a202d = gettime() + 3000;
    asmstatename.var_6e5b38d9 = gettime() + 3000 + randomint(3000);
    asmstatename.var_b0f99546 = undefined;
    return 4;
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 0, eflags: 0x2 linked
// Checksum 0x13bd312f, Offset: 0x5088
// Size: 0x1e
function function_1d0310f4() {
    return level.doa.var_78fe553b.size <= 6;
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 0, eflags: 0x2 linked
// Checksum 0xaf52475, Offset: 0x50b0
// Size: 0x32
function function_36f40887() {
    self endon(#"death");
    self waittill(#"hash_25e58964d378516");
    self.var_b0f99546 = undefined;
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 1, eflags: 0x2 linked
// Checksum 0x2e8daf22, Offset: 0x50f0
// Size: 0xfe
function function_bf9a2a1d(number = 5) {
    self endon(#"death");
    baseangle = self.angles;
    increment = (0, 360 / (number + 1), 80);
    while (number) {
        banana1 = namespace_ec06fe4a::spawnmodel(self.origin, "zombietron_banana");
        if (isdefined(banana1)) {
            banana1.targetname = "banana1";
            banana1 setmodel("zombietron_banana");
            banana1 thread function_bcfd19b2(self, undefined, baseangle);
            baseangle += increment;
        }
        number--;
    }
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 3, eflags: 0x2 linked
// Checksum 0x58844191, Offset: 0x51f8
// Size: 0x3bc
function function_bcfd19b2(silverback, note, angles) {
    level.doa.var_78fe553b[level.doa.var_78fe553b.size] = self;
    if (isdefined(angles)) {
        forward = anglestoforward(angles);
    } else {
        forward = anglestoforward(silverback.angles);
    }
    target_point = silverback.origin + 64 * forward + (randomfloatrange(2 * -1, 2), randomfloatrange(2 * -1, 2), 130);
    dir = vectornormalize(target_point - silverback.origin);
    if (isdefined(note)) {
        silverback waittilltimeout(2, note, #"death");
        self unlink();
    }
    vel = mapfloat(sqr(32), sqr(1600), 1.8, 5.5, distancesquared(target_point, self.origin));
    throw = dir * vel;
    self notsolid();
    self physicslaunch(self.origin, throw);
    wait(0.2);
    self solid();
    self namespace_83eb6304::function_3ecfde67("explo_warning_light");
    self namespace_e32bb68::function_3a59ec34("evt_doa_hazard_redbarrel_warning");
    wait(5);
    self namespace_83eb6304::function_3ecfde67("silverback_banana_explo");
    self namespace_e32bb68::function_3a59ec34("zmb_doa_ai_silverback_banana_explo");
    waitframe(1);
    trigger = namespace_ec06fe4a::spawntrigger("trigger_radius", self.origin, 0, 128, 64);
    trigger thread namespace_ec06fe4a::function_52afe5df(5 + 0.1);
    arrayremovevalue(level.doa.var_78fe553b, self);
    self namespace_ec06fe4a::function_8c808737();
    self thread namespace_ec06fe4a::function_52afe5df(5 + 0.1);
    if (isdefined(trigger)) {
        trigger.targetname = "banana";
        trigger thread function_d70f65d0();
        wait(5);
        trigger delete();
    }
}

// Namespace namespace_58e19d6/namespace_58e19d6
// Params 0, eflags: 0x6 linked
// Checksum 0x7833439e, Offset: 0x55c0
// Size: 0xea
function private function_d70f65d0() {
    self endon(#"death");
    self playloopsound("zmb_doa_ai_silverback_banana_gas_lp");
    while (true) {
        result = self waittill(#"trigger");
        if (isplayer(result.activator)) {
            if (!isdefined(result.activator.var_76eebaf0) || gettime() > result.activator.var_76eebaf0) {
                result.activator thread namespace_250e9486::function_b5feb0bf();
                result.activator.var_76eebaf0 = gettime() + 1000;
            }
        }
    }
}

