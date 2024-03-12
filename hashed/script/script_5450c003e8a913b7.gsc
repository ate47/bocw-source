// Atian COD Tools GSC CW decompiler test
#using script_3819e7a1427df6d2;
#using script_3072532951b5b4ae;
#using script_7e3221b6c80d8cc4;
#using script_912160eeb6a2d51;
#using script_16a28d93ee216f6f;
#using script_42310dfa1362069f;
#using script_139ae0bb0a87141c;
#using script_1883fa4e60abbf9f;
#using script_3ad66e3076c279ab;
#using scripts\cp_common\util.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;

#namespace enemy;

// Namespace enemy/enemy
// Params 2, eflags: 0x0
// Checksum 0xd4f6b558, Offset: 0x4d8
// Size: 0x14
function function_aec6058a(*ent, *vol) {
    
}

#namespace namespace_f1f700ac;

// Namespace namespace_f1f700ac/enemy
// Params 0, eflags: 0x2 linked
// Checksum 0x128b2276, Offset: 0x4f8
// Size: 0x16c
function main() {
    self function_43959107();
    self init_flags();
    namespace_3fc78cb6::function_573416a4(self.var_d6319e36, self);
    self function_2ce66982();
    self namespace_cf88f507::function_b1459a4();
    self thread function_cf839c4b(level.stealth.var_7e461f07, level.stealth.var_1e02c672);
    self function_b82b38b("reset");
    self function_52839330("idle");
    self function_c934ed8c();
    /#
        self thread function_8c76fdc5();
    #/
    if (isdefined(level.stealth.var_56593139)) {
        self thread [[ level.stealth.var_56593139 ]]();
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
    self.stealth.var_103386e8 = self namespace_979752dc::function_3c827c8f("stealth_spotted");
    self namespace_979752dc::function_3c827c8f("stealth_cover_blown");
    self namespace_979752dc::function_3c827c8f("stealth_combat_hunting");
    self namespace_979752dc::function_3c827c8f("stealth_disable_unresponsive_ai_check");
}

// Namespace namespace_f1f700ac/enemy
// Params 0, eflags: 0x2 linked
// Checksum 0x8091a5ab, Offset: 0x828
// Size: 0x84
function function_c934ed8c() {
    if (isdefined(self.script_radius)) {
        self namespace_979752dc::function_adf02a98(self.script_radius);
        return;
    }
    if (!is_true(self.patroller) && !isdefined(self getgoalvolume())) {
        self namespace_979752dc::function_adf02a98(level.var_999e1a2a);
    }
}

// Namespace namespace_f1f700ac/enemy
// Params 0, eflags: 0x2 linked
// Checksum 0xb350fcf1, Offset: 0x8b8
// Size: 0x1cc
function function_43959107() {
    self.stealth = spawnstruct();
    self namespace_979752dc::function_27ba0328();
    self.stealth.funcs = [];
    self.stealth.var_fcc71894 = 2;
    self.stealth.var_82666e3d = 0;
    /#
        self.stealth.var_8fb63790 = "patrol";
        self.stealth.var_29672bb5 = "patrol";
    #/
    self.newenemyreactiondistsq = function_a3f6cdac(400);
    self namespace_cc4354b9::function_6d3dfd1e();
    self.stealth.var_84534a73 = 0;
    if (!isdefined(level.stealth.var_7e461f07)) {
        level.stealth.var_7e461f07 = 175;
    }
    if (!isdefined(level.stealth.var_1e02c672)) {
        level.stealth.var_1e02c672 = 600;
    }
    self.var_13c8de0c = self.grenadeawareness;
    self.grenadeawareness = 0;
    self.var_f8a0e9e6 = 0;
    self.stealth.var_abf79234 = -1;
    self.stealth.starttime = gettime();
    self namespace_979752dc::function_6a3b08d0();
    self namespace_77fd5d41::function_5d397b07();
    self namespace_6c0cd084::function_13bd3fad("hidden");
}

// Namespace namespace_f1f700ac/enemy
// Params 0, eflags: 0x2 linked
// Checksum 0x6a7784f6, Offset: 0xa90
// Size: 0x10c
function function_2b1c382() {
    self endon(#"death");
    while (1) {
        self flag::wait_till("stealth_enabled");
        level flag::wait_till_clear("stealth_spotted");
        self flag::wait_till_clear("in_action");
        self namespace_77fd5d41::function_809e1001(self);
        switch (self.stealth.var_abf79234) {
        case 0:
            break;
        case 1:
            self namespace_77fd5d41::function_7bed8eb1(self);
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
function function_65da73e7() {
    if (isdefined(self)) {
        self namespace_6c0cd084::function_13bd3fad("death");
        aiutility::removeaioverridedamagecallback(self, &function_21e59acf);
    } else {
        foreach (player in getplayers()) {
            foreach (k, v in player.stealth.var_2818e780) {
                if (!isdefined(v)) {
                    player.stealth.var_2818e780[k] = undefined;
                }
            }
            foreach (k, v in player.stealth.var_a4965d8) {
                if (!isdefined(v)) {
                    player.stealth.var_a4965d8[k] = undefined;
                }
            }
        }
    }
    if (isdefined(self.var_865058c2)) {
        self.var_865058c2 thread function_1530aaad();
    }
}

// Namespace namespace_f1f700ac/enemy
// Params 0, eflags: 0x2 linked
// Checksum 0xac274e4e, Offset: 0xdb0
// Size: 0x34
function function_1530aaad() {
    self stopsounds();
    waitframe(1);
    self delete();
}

// Namespace namespace_f1f700ac/enemy
// Params 1, eflags: 0x0
// Checksum 0x4a5237f8, Offset: 0xdf0
// Size: 0xa0
function function_1daf9155(func) {
    /#
        assert(isdefined(self.stealth), "ALERT" + self getentitynumber() + "<unknown string>" + self.origin);
    #/
    if (!isdefined(self.stealth.var_9ed34e53)) {
        self.stealth.var_9ed34e53 = [];
    }
    self.stealth.var_9ed34e53[self.stealth.var_9ed34e53.size] = func;
}

// Namespace namespace_f1f700ac/enemy
// Params 0, eflags: 0x2 linked
// Checksum 0x38025f3a, Offset: 0xe98
// Size: 0x57a
function function_c1eaee11() {
    if (self.ignoreall) {
        return;
    }
    if (!isdefined(level.stealth)) {
        return;
    }
    var_c23cc9e4 = self geteyeapprox();
    var_bf444fb4 = (self.origin + var_c23cc9e4) / 2;
    playeroffset = vectorscale((0, 0, 1), 35);
    if (isdefined(self.var_7a09bb3c)) {
        var_4af2cd8d = self.var_7a09bb3c;
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
        if (!donotify && isdefined(level.stealth.var_94a6789e) && level.stealth.var_94a6789e > 0) {
            if (distsq < level.stealth.var_94a6789e * level.stealth.var_94a6789e) {
                if (!isdefined(self.stealth.blind)) {
                    var_14fc0a20 = player.origin - self.origin;
                    var_14fc0a20 = (var_14fc0a20[0], var_14fc0a20[1], 0);
                    var_a0e80ff2 = anglestoforward((0, self.angles[1], 0));
                    if (vectordot(var_a0e80ff2, var_14fc0a20) > 0) {
                        dotrace = 1;
                        donotify = 1;
                    }
                }
            }
        }
        if (!donotify && isdefined(level.stealth.var_3e20ebc9) && level.stealth.var_3e20ebc9 > 0) {
            if (distsq < level.stealth.var_3e20ebc9 * level.stealth.var_3e20ebc9) {
                var_29751967 = lengthsquared((player getvelocity()[0], player getvelocity()[1], 0));
                if (var_29751967 > var_9f447779) {
                    dotrace = 1;
                    donotify = 1;
                }
            }
        }
        if (!donotify && isdefined(level.stealth.var_428266cc) && level.stealth.var_428266cc > 0) {
            if (distsq < level.stealth.var_428266cc * level.stealth.var_428266cc) {
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
    var_88ec3efd = isdefined(self.var_1e36e368) && self [[ self.var_1e36e368 ]]();
    var_4d00933b = isdefined(self.var_678afc31) && self [[ self.var_678afc31 ]]();
    var_da41c771 = var_88ec3efd || var_4d00933b;
    if (blind && (!var_da41c771 || is_true(force))) {
        self.stealth.blind = 1;
        function_7e1ad4d4("blind");
        return;
    }
    self.stealth.blind = undefined;
    if (var_da41c771) {
        function_7e1ad4d4("spotted");
        return;
    }
    function_7e1ad4d4("hidden");
}

// Namespace namespace_f1f700ac/enemy
// Params 1, eflags: 0x2 linked
// Checksum 0xf061e94c, Offset: 0x1588
// Size: 0x3c2
function function_7e1ad4d4(state) {
    switch (state) {
    case #"blind":
        self namespace_6c0cd084::function_13bd3fad("blind");
        self.fovcosine = 0.98;
        self.fovcosinebusy = 0.98;
        self.fovcosinez = 0;
        self.var_17b41b07 = 0;
        self.var_6068813f = 0.99;
        self.var_c06e76e7 = 1;
        break;
    case #"idle":
    case #"hidden":
    case #"unaware":
        self namespace_6c0cd084::function_13bd3fad("hidden");
        self.fovcosine = 0.7;
        self.fovcosinebusy = 0.86;
        self.fovcosinez = 0.97;
        self.var_17b41b07 = 1;
        self.var_6068813f = 0.34;
        self.var_c06e76e7 = 90000;
        break;
    case #"investigate":
        self namespace_6c0cd084::function_13bd3fad("investigate");
        self.fovcosine = 0.7;
        self.fovcosinebusy = 0.86;
        self.fovcosinez = 0.97;
        self.var_17b41b07 = 1;
        self.var_6068813f = 0.34;
        self.var_c06e76e7 = 90000;
        break;
    case #"hunt":
    case #"combat_hunt":
        self namespace_6c0cd084::function_13bd3fad("combat_hunt");
        self.fovcosine = 0.7;
        self.fovcosinebusy = 0.86;
        self.fovcosinez = 0.97;
        self.var_17b41b07 = 1;
        self.var_6068813f = 0.01;
        self.var_c06e76e7 = 90000;
        break;
    case #"combat":
    case #"spotted":
        self namespace_6c0cd084::function_13bd3fad("spotted");
        self.fovcosine = 0.01;
        self.fovcosinebusy = 0.574;
        self.fovcosinez = 0;
        self.var_17b41b07 = 0;
        self.var_6068813f = 0.01;
        self.var_c06e76e7 = 16384;
        break;
    case #"hash_5689f41e8c0ad00":
        /#
            assertmsg("<unknown string>");
        #/
        break;
    case #"hash_2689c03316776ffb":
        /#
            assertmsg("<unknown string>");
        #/
        break;
    case #"hash_1eaaed171f35ac7b":
        /#
            assertmsg("<unknown string>");
        #/
        break;
    }
    if (isdefined(self.var_e6b70cdb)) {
        self.fovcosine = self.var_e6b70cdb;
    }
    if (isdefined(self.var_fcc58b22)) {
        self.var_6068813f = self.var_fcc58b22;
    }
}

// Namespace namespace_f1f700ac/enemy
// Params 2, eflags: 0x2 linked
// Checksum 0x14f6c22d, Offset: 0x1958
// Size: 0x2f2
function function_b82b38b(type, event) {
    if (!self flag::get("stealth_enabled")) {
        return;
    }
    if (isdefined(self.var_c872a2f) && self.var_c872a2f == type) {
        return;
    }
    self endon(#"death");
    self notify(#"hash_6d00272fddce1ee7");
    self endon(#"hash_6d00272fddce1ee7");
    if (isdefined(event) && namespace_979752dc::function_7211414e(self.var_c872a2f) < namespace_979752dc::function_7211414e(type)) {
        self notify(#"hash_7943e96754003c55");
        event.var_c0659057 = namespace_979752dc::function_7211414e(type);
        players = getplayers();
        if (isdefined(players) && players.size > 0) {
            foreach (player in players) {
                player notify(#"hash_543e034b500f035d", event);
            }
        }
    }
    self.var_c872a2f = type;
    while (isdefined(self.syncedmeleetarget)) {
        wait(0.05);
    }
    /#
        self thread function_690312e5(type);
    #/
    self namespace_979752dc::function_b33dc82f(type);
    self notify(#"hash_1969930500784d9a", type);
    self.alertlevel = namespace_979752dc::function_48d97da3(type);
    var_da41c771 = self.alertlevelint >= level.stealth.var_66f7fac9[#"combat"];
    self namespace_cf88f507::function_9ef595c3(!var_da41c771);
    self.ignoreexplosionevents = !var_da41c771;
    if (self.awarenesslevelcurrent === "unaware" && self.awarenesslevelprevious !== "unaware" && self.awarenesslevelprevious !== "combat") {
        self.stealth.var_e39ea5e7 = 1;
    }
}

// Namespace namespace_f1f700ac/enemy
// Params 0, eflags: 0x2 linked
// Checksum 0xa664f67d, Offset: 0x1c58
// Size: 0xf4
function function_96d43109() {
    level namespace_979752dc::function_16184343("set_patrol_style", &namespace_979752dc::set_patrol_style);
    level namespace_979752dc::function_16184343("trigger_cover_blown", &trigger_cover_blown);
    level namespace_979752dc::function_16184343("set_blind", &set_blind);
    level namespace_979752dc::function_16184343("investigate", &function_a76f0e02);
    level namespace_979752dc::function_16184343("cover_blown", &function_a76f0e02);
    level namespace_979752dc::function_16184343("combat", &function_a76f0e02);
}

// Namespace namespace_f1f700ac/enemy
// Params 2, eflags: 0x2 linked
// Checksum 0xda7d5b92, Offset: 0x1d58
// Size: 0x34c
function function_cf839c4b(var_b2a2de70, var_a3dc7b53) {
    self endon(#"hash_29b88049dcac8bb3");
    other = undefined;
    team = self.team;
    aiutility::addaioverridedamagecallback(self, &function_21e59acf);
    while (1) {
        if (!isalive(self)) {
            return;
        }
        var_7f729179 = undefined;
        var_7f729179 = self waittill(#"damage");
        var_2c9fbcbe = self.origin;
        if (isalive(self) && !self flag::get("stealth_enabled")) {
            continue;
        }
        if (isalive(var_7f729179.attacker)) {
            other = var_7f729179.attacker;
        }
        if (!isdefined(other)) {
            continue;
        }
        self function_a3fcf9e0("damage", other, other.origin);
        if (isplayer(other) || isdefined(other.team) && other.team != team) {
            break;
        }
        if (isdefined(other.classname) && other.classname == "script_model") {
            if (other.var_6b587f85) {
                break;
            }
        }
    }
    if (!isdefined(self)) {
        return;
    }
    aiutility::removeaioverridedamagecallback(self, &function_21e59acf);
    if (isdefined(self.stealth.var_5f31081e)) {
        var_b2a2de70 = self.stealth.var_5f31081e;
    } else if (isdefined(level.stealth.var_5f31081e)) {
        var_b2a2de70 = level.stealth.var_5f31081e;
    }
    if (isdefined(self.stealth.var_73946a24)) {
        var_a3dc7b53 = self.stealth.var_73946a24;
    } else if (isdefined(level.stealth.var_73946a24)) {
        var_a3dc7b53 = level.stealth.var_73946a24;
    }
    if (isalive(self) && self.health > 0) {
        self namespace_cf88f507::function_51e96563("ally_damaged", "ally_hurt_peripheral", other, var_b2a2de70, var_a3dc7b53);
        return;
    }
    self namespace_cf88f507::function_51e96563("ally_killed", "ally_hurt_peripheral", other, var_b2a2de70, var_a3dc7b53);
}

// Namespace namespace_f1f700ac/enemy
// Params 13, eflags: 0x2 linked
// Checksum 0x14bae7b8, Offset: 0x20b0
// Size: 0x1a8
function function_21e59acf(*inflictor, *attacker, damage, *flags, meansofdamage, weapon, *var_fd90b0bb, point, *dir, *hitloc, *offsettime, *boneindex, *modelindex) {
    if (isdefined(self.var_7cc76df0)) {
        return hitloc;
    }
    if (isdefined(boneindex) && boneindex.weapclass == "grenade" && (boneindex.name == #"hash_5453c9b880261bcb" || offsettime == "MOD_IMPACT")) {
        return hitloc;
    }
    if (hitloc > 0 && offsettime != "MOD_MELEE" && hitloc < self.health && self.var_c872a2f != "attack" && self.var_c872a2f != "combat") {
        eyepos = self geteye();
        if (distancesquared(modelindex, eyepos) < function_a3f6cdac(level.stealth.var_5a894436)) {
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
function function_32ea77f3(bool) {
    if (bool) {
        if (!isdefined(self.stealth.var_70478c8b)) {
            self.stealth.var_70478c8b = 1;
        } else if (!self.stealth.var_70478c8b) {
            return;
        }
        if (!isdefined(self.stealth.var_820f1207)) {
            self.stealth.var_820f1207 = getplayers()[0];
        }
        self lookatentity(getplayers()[0]);
        return;
    }
    if (isdefined(self.stealth.var_820f1207)) {
        self.stealth.var_820f1207 = undefined;
        self lookatentity();
    }
}

// Namespace namespace_f1f700ac/enemy
// Params 1, eflags: 0x0
// Checksum 0x138f574, Offset: 0x2358
// Size: 0x74
function function_5f269f0(duration) {
    self endon(#"death");
    self notify(#"hash_602f82a12f43d586");
    self endon(#"hash_602f82a12f43d586");
    self function_78d8ca09();
    wait(duration);
    self function_e20eab61();
}

// Namespace namespace_f1f700ac/enemy
// Params 0, eflags: 0x2 linked
// Checksum 0x1a508b63, Offset: 0x23d8
// Size: 0x2c
function function_78d8ca09() {
    self.stealth.var_70478c8b = 0;
    function_32ea77f3(0);
}

// Namespace namespace_f1f700ac/enemy
// Params 0, eflags: 0x2 linked
// Checksum 0xa4300639, Offset: 0x2410
// Size: 0x16
function function_e20eab61() {
    self.stealth.var_70478c8b = 1;
}

// Namespace namespace_f1f700ac/enemy
// Params 1, eflags: 0x2 linked
// Checksum 0xfa13523a, Offset: 0x2430
// Size: 0x3d6
function function_966c2411(event) {
    var_2bac7e84 = self.stealth.var_2bac7e84;
    if (!isdefined(var_2bac7e84)) {
        var_2bac7e84 = level.stealth.var_2bac7e84;
    }
    if (event.type == "combat" && self namespace_77fd5d41::function_e5113f65()) {
        return 1;
    }
    if (isdefined(var_2bac7e84)) {
        diff = namespace_cf88f507::function_8ad03874(var_2bac7e84, event.type);
        if (diff > 0) {
            return 1;
        }
    }
    if (is_true(level.stealth.var_efa6061f) && self function_d08280d7(event)) {
        return 1;
    }
    if (event.var_dd29a83a == "explode") {
        if (isdefined(event.entity) && isdefined(event.entity.team) && event.entity.team == self.team) {
            return 1;
        }
    }
    if (event.var_dd29a83a == "footstep_sprint" || event.var_dd29a83a == "footstep_run") {
        if (function_6b72945d(event)) {
            return 1;
        }
    }
    if (event.var_dd29a83a == "silenced_shot") {
        if (isplayer(event.entity) && distancesquared(event.entity geteye(), event.origin) > 1296) {
            return 1;
        }
    }
    if (event.var_dd29a83a == "gunshot" || event.var_dd29a83a == "gunshot_teammate" || event.var_dd29a83a == "bulletwhizby") {
        if (event.entity == self) {
            return 1;
        }
        if (isai(event.entity) && event.entity isinscriptedstate()) {
            return 1;
        }
    }
    if (event.var_dd29a83a == "grenade danger") {
        if (isdefined(event.entity.item.name) && event.entity.item.name == #"hatchet") {
            return 1;
        }
    }
    if (is_true(self namespace_b2b86d39::function_f96ed339("event_should_ignore", event))) {
        return 1;
    }
    var_9cb4da4 = self namespace_b2b86d39::function_1462981c("event_" + event.type);
    if (isdefined(var_9cb4da4)) {
        return self namespace_b2b86d39::function_f96ed339("event_" + event.type, event);
    }
    return 0;
}

// Namespace namespace_f1f700ac/enemy
// Params 1, eflags: 0x2 linked
// Checksum 0x17751dae, Offset: 0x2810
// Size: 0x1e8
function function_6b72945d(event) {
    traceoffset = vectorscale((0, 0, 1), 18);
    var_a5879569 = getplayers();
    if (isdefined(self.stealth.var_e6ad9589)) {
        var_a5879569 = arraycombine(var_a5879569, self.stealth.var_e6ad9589);
    }
    if (isplayer(event.entity) && util::can_see_ai(event.origin + traceoffset, self, 250, var_a5879569[0], var_a5879569[1])) {
        dist_sq = distancesquared(self.origin, event.origin);
        radius = 250;
        if (isdefined(self.var_dd3e3ba3)) {
            radius = self.var_dd3e3ba3;
        }
        if (dist_sq < function_a3f6cdac(radius)) {
            var_c1c8aacd = util::can_see_ai(event.origin + traceoffset, self, 250, var_a5879569[0], var_a5879569[1]);
            return 0;
        }
        var_1cc7bd2f = self cansee(event.entity);
        if (!var_1cc7bd2f && event.entity namespace_6c0cd084::function_911cdf32(self)) {
            return 0;
        }
    }
    return 1;
}

// Namespace namespace_f1f700ac/enemy
// Params 1, eflags: 0x2 linked
// Checksum 0x8f053c9e, Offset: 0x2a00
// Size: 0xbc
function function_d08280d7(event) {
    if (issentient(event.entity)) {
        switch (event.var_dd29a83a) {
        case #"footstep_sprint":
        case #"footstep":
        case #"footstep_walk":
        case #"footstep_run":
        case #"proximity":
            self thread namespace_6c0cd084::function_ac3ca2d7(event.entity, 1);
            return 1;
        }
    }
    return 0;
}

// Namespace namespace_f1f700ac/enemy
// Params 2, eflags: 0x2 linked
// Checksum 0xd53c6685, Offset: 0x2ac8
// Size: 0xe8
function function_46dfd025(eventorigin, dist) {
    distsq = dist * dist;
    ais = getactorteamarray("axis", "team3");
    foreach (ai in ais) {
        if (distancesquared(eventorigin, ai.origin) <= distsq) {
            return 1;
        }
    }
    return 0;
}

// Namespace namespace_f1f700ac/enemy
// Params 1, eflags: 0x2 linked
// Checksum 0xa893b9c3, Offset: 0x2bb8
// Size: 0x3d2
function function_ee9a5ec9(event) {
    if (!isdefined(event) || !isdefined(event.var_dd29a83a)) {
        return;
    }
    if (isdefined(self.var_678afc31) && self [[ self.var_678afc31 ]]()) {
        if (event.type == "investigate") {
            event.type = "cover_blown";
        }
    }
    if (isdefined(self.var_1e36e368) && self [[ self.var_1e36e368 ]]()) {
        event.type = "combat";
    }
    switch (event.var_dd29a83a) {
    case #"sight":
        if (self.species == "dog") {
            event.type = "investigate";
        } else if (self namespace_979752dc::function_d58e1c1c() && self.alertlevel == "low_alert") {
            event.type = "cover_blown";
        } else if (isdefined(self.stealth.var_2e86232e) && self.stealth.var_2e86232e == 0) {
            if (isdefined(event.entity) && issentient(event.entity)) {
                self getenemyinfo(event.entity);
            }
            event.type = "combat";
        } else if (distancesquared(self.origin, event.origin) < 62500) {
            if (isdefined(event.entity)) {
                threatsight = self function_a884a736(event.entity);
                if (threatsight >= 1) {
                    event.type = "combat";
                }
            }
        }
        return;
    case #"grenade danger":
        if (function_46dfd025(event.origin, 128)) {
            event.type = "combat";
        }
        return;
    case #"explode":
        if (function_46dfd025(event.origin, 192)) {
            event.type = "combat";
        } else if (distancesquared(event.origin, self.origin) <= 1048576) {
            event.type = "combat";
        }
        return;
    case #"gunshot":
        if (distancesquared(event.origin, self.origin) < 640000) {
            event.type = "combat";
        }
        return;
    case #"glass_destroyed":
        if (self util::function_748809fc(event.origin, 0) && distance2dsquared(event.origin, self.origin) < 36864) {
            event.type = "combat";
        }
        return;
    }
}

// Namespace namespace_f1f700ac/enemy
// Params 2, eflags: 0x2 linked
// Checksum 0x6aad5940, Offset: 0x2f98
// Size: 0x4a
function trigger_cover_blown(*event, var_cf54d717) {
    if (!isdefined(self.stealth)) {
        return;
    }
    self.stealth.var_bb6b3b67 = 1;
    self.stealth.var_cf54d717 = var_cf54d717;
}

// Namespace namespace_f1f700ac/enemy
// Params 1, eflags: 0x2 linked
// Checksum 0xe412336e, Offset: 0x2ff0
// Size: 0x2b4
function function_af982b1e(event) {
    self endon(#"death");
    delaytime = randomfloatrange(0.5, 1.1);
    var_bed01a48 = hash(event.type);
    switch (var_bed01a48) {
    case #"investigate":
        self thread namespace_979752dc::function_f5f4416f("stealth", "announce", "investigate", delaytime);
        /#
            println("<unknown string>" + self getentitynumber() + "<unknown string>" + event.var_dd29a83a + "<unknown string>");
        #/
        /#
            function_65b21ab8(self, "<unknown string>");
        #/
        return 1;
    case #"cover_blown":
        self thread namespace_979752dc::function_f5f4416f("stealth", "announce", "coverblown", delaytime);
        /#
            println("<unknown string>" + self getentitynumber() + "<unknown string>" + event.var_dd29a83a + "<unknown string>");
        #/
        /#
            function_65b21ab8(self, "<unknown string>");
        #/
        return 1;
    case #"combat":
        self thread namespace_979752dc::function_f5f4416f("stealth", "announce", "combat", 1);
        /#
            println("<unknown string>" + self getentitynumber() + "<unknown string>" + event.var_dd29a83a + "<unknown string>");
        #/
        /#
            function_65b21ab8(self, "<unknown string>");
        #/
        return 1;
    }
    return 0;
}

// Namespace namespace_f1f700ac/enemy
// Params 1, eflags: 0x2 linked
// Checksum 0x592f722c, Offset: 0x32b0
// Size: 0x49c
function function_63ac72da(event) {
    self endon(#"death");
    if (isdefined(event.var_dd29a83a)) {
        delaytime = randomfloatrange(0.5, 1);
        switch (event.var_dd29a83a) {
        case #"sight":
            self thread namespace_979752dc::function_f5f4416f("stealth", "announce", "sight", delaytime);
            return 1;
        case #"explode":
            self thread namespace_979752dc::function_f5f4416f("stealth", "announce", "explosion", delaytime);
            return 1;
        case #"grenade danger":
            self thread namespace_979752dc::function_f5f4416f("stealth", "announce", "grenade_danger", delaytime);
            return 1;
        case #"seek_backup":
            self thread namespace_979752dc::function_f5f4416f("stealth", "announce", "seek_backup", randomfloatrange(2, 2.5), event);
            return 1;
        case #"saw_corpse":
        case #"found_corpse":
            self thread namespace_979752dc::function_f5f4416f("stealth", "announce", event.var_dd29a83a, delaytime);
            /#
                function_65b21ab8(self, "<unknown string>");
            #/
            return 1;
        case #"bulletwhizby":
        case #"gunshot":
            self thread namespace_979752dc::function_f5f4416f("stealth", "announce", "gunshot", 0.2, event);
            /#
                function_65b21ab8(self, "<unknown string>");
            #/
            return 1;
        case #"ally_damaged":
        case #"gunshot_teammate":
            self thread namespace_979752dc::function_f5f4416f("stealth", "announce", "gunshot", randomfloatrange(0.8, 1.3), event);
            /#
                function_65b21ab8(self, "<unknown string>");
            #/
            return 1;
        case #"ally_killed":
            self thread namespace_979752dc::function_f5f4416f("stealth", "announce", "ally_killed", 0.5);
            /#
                function_65b21ab8(self, "<unknown string>");
            #/
            return 1;
        case #"proximity":
            self thread namespace_979752dc::function_f5f4416f("stealth", "announce", "proximity", 0.5);
            return 1;
        case #"footstep_sprint":
        case #"footstep":
        case #"glass_destroyed":
        case #"footstep_run":
            self thread namespace_979752dc::function_f5f4416f("stealth", "announce", "investigate", delaytime);
            return 1;
        default:
            /#
                println("<unknown string>" + event.var_dd29a83a + "<unknown string>");
            #/
            break;
        }
    }
    return 0;
}

// Namespace namespace_f1f700ac/enemy
// Params 0, eflags: 0x2 linked
// Checksum 0xa2ccfdd0, Offset: 0x3758
// Size: 0x1cc
function function_2ce66982() {
    var_237ae2e3 = namespace_979752dc::function_f358588a();
    var_ef544d66 = isdefined(var_237ae2e3) && var_237ae2e3 != "unaware" && var_237ae2e3 != "patrol";
    var_9bd7a27 = namespace_3fc78cb6::getgroup(self.var_d6319e36);
    coverblown = self.awarenesslevelcurrent !== "unaware" && (isdefined(self.stealth.var_bb6b3b67) || isdefined(var_9bd7a27.var_bb6b3b67));
    if (var_ef544d66 || coverblown) {
        var_a0f0f6ed = isdefined(self.stealth.var_cf54d717) && self.stealth.var_cf54d717;
        var_ff42b0fb = namespace_979752dc::function_f66c4255() === "patrol" && var_a0f0f6ed;
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
function function_52839330(statename, event) {
    /#
        assert(isdefined(self.var_c92102aa));
    #/
    self [[ self.var_c92102aa ]](statename, event);
}

// Namespace namespace_f1f700ac/enemy
// Params 1, eflags: 0x2 linked
// Checksum 0x4fd57da3, Offset: 0x39e0
// Size: 0x28e
function function_a76f0e02(event) {
    event.var_ce3a18c7 = event.origin;
    if (isdefined(self.enemy) && isdefined(event.entity) && event.entity == self.enemy) {
        event.var_ce3a18c7 = self lastknownpos(self.enemy);
    } else if (isdefined(event.entity) && event.var_dd29a83a == "bulletwhizby") {
        event.var_ce3a18c7 = event.entity.origin;
    }
    self function_ee9a5ec9(event);
    if (self function_966c2411(event)) {
        return 0;
    }
    self.stealth.var_fc47e73b = gettime();
    if (!namespace_979752dc::function_3a157fbf()) {
        if (!self function_63ac72da(event)) {
            self function_af982b1e(event);
        }
    }
    var_bed01a48 = hash(event.type);
    switch (var_bed01a48) {
    case #"investigate":
        self thread function_fd3ddded(event);
        break;
    case #"cover_blown":
        self thread function_669161(event);
        break;
    case #"combat":
        self thread function_a7c8e249(event);
        break;
    }
    level notify(#"hash_733d7b56ac978e53", {#receiver:self, #event:event});
    func = namespace_b2b86d39::function_1462981c(event.var_dd29a83a);
    if (isdefined(func) && func != &function_a76f0e02) {
        self thread [[ func ]](event);
    }
    return 1;
}

// Namespace namespace_f1f700ac/enemy
// Params 1, eflags: 0x2 linked
// Checksum 0x71c2bdb3, Offset: 0x3c78
// Size: 0x4c
function function_fd3ddded(event) {
    self function_b82b38b("warning1", event);
    self function_52839330("investigate", event);
}

// Namespace namespace_f1f700ac/enemy
// Params 1, eflags: 0x2 linked
// Checksum 0x8d5e0b26, Offset: 0x3cd0
// Size: 0x34c
function function_669161(event) {
    if (event.var_dd29a83a == "sight" && self.awarenesslevelcurrent == "unaware" && self namespace_979752dc::function_d58e1c1c()) {
        self function_b82b38b("warning1", event);
    } else {
        if (event.var_dd29a83a == "sight" && self namespace_979752dc::function_d58e1c1c() && isdefined(event.entity)) {
            self namespace_6c0cd084::function_7af4fa05(event.entity);
        }
        self function_b82b38b("warning2", event);
    }
    if (isdefined(event.entity) && isdefined(event.entity.classname) && event.entity.classname == "script_vehicle_blackhornet") {
        return;
    }
    if (is_true(level.stealth.var_efa6061f)) {
        switch (event.var_dd29a83a) {
        case #"explode":
        case #"silenced_shot":
        case #"gunshot":
            namespace_979752dc::function_38a8c85d(0);
            level util::delay(20, undefined, &namespace_979752dc::function_38a8c85d, 1);
            break;
        }
    }
    if (event.var_dd29a83a == "light_killed") {
        event.var_199a4f52 = event.var_ce3a18c7;
        event.var_ce3a18c7 = util::ground_position(event.var_ce3a18c7);
    }
    if (isdefined(self.var_1e36e368) && !self [[ self.var_1e36e368 ]]()) {
        if (isdefined(self.var_678afc31) && self [[ self.var_678afc31 ]]()) {
            var_ffdc33b3 = namespace_3fc78cb6::function_e6ae3581(self, event.var_ce3a18c7);
            if (!isdefined(self.pathgoalpos) || distancesquared(var_ffdc33b3, self.pathgoalpos) > 576) {
                self namespace_979752dc::function_2b21025e(event.var_ce3a18c7);
                self namespace_979752dc::function_4c1d52fd(event.var_ce3a18c7, "small");
            }
            return;
        }
        self function_52839330("investigate", event);
    }
}

// Namespace namespace_f1f700ac/enemy
// Params 1, eflags: 0x2 linked
// Checksum 0x66b373e1, Offset: 0x4028
// Size: 0x11c
function function_a7c8e249(event) {
    if (!isactor(self)) {
        return;
    }
    self endon(#"death");
    self notify(#"hash_543c5a6a505d931b");
    self notify(#"stop_going_to_node");
    self function_b82b38b("attack", event);
    self function_52839330("combat", event);
    if (isdefined(event) && issentient(event.entity)) {
        if (!isdefined(self.enemy)) {
            self resetthreatupdate();
        }
        self thread function_d10545ff();
    }
    self flag::set("stealth_attack");
}

// Namespace namespace_f1f700ac/enemy
// Params 0, eflags: 0x2 linked
// Checksum 0x2e2b5396, Offset: 0x4150
// Size: 0x6a
function function_d10545ff() {
    self.var_1aae7506 = 1;
    self endon(#"death");
    self endon(#"stealth_investigate");
    self endon(#"stealth_hunt");
    self endon(#"stealth_combat");
    wait(5);
    self.var_1aae7506 = 0;
}

