// Atian COD Tools GSC CW decompiler test
#using scripts\zm\archetype\archetype_zod_companion.gsc;
#using script_ed50e9299d3e143;
#using scripts\zm_common\zm_spawner.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using scripts\zm_common\zm_player.gsc;
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\core_common\aat_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\ai\archetype_utility.gsc;
#using script_3819e7a1427df6d2;
#using scripts\core_common\ai_shared.gsc;

#namespace namespace_ca8676a3;

// Namespace namespace_ca8676a3/namespace_ca8676a3
// Params 0, eflags: 0x5
// Checksum 0x6762a12d, Offset: 0x248
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_217942543a3e669b", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_ca8676a3/namespace_ca8676a3
// Params 0, eflags: 0x4
// Checksum 0xba0e223f, Offset: 0x290
// Size: 0x4c
function private preinit() {
    spawner::add_archetype_spawn_function(#"zod_companion", &function_10c92445);
    /#
        function_851f409b();
    #/
}

// Namespace namespace_ca8676a3/namespace_ca8676a3
// Params 0, eflags: 0x4
// Checksum 0xbf0565ca, Offset: 0x2e8
// Size: 0x2dc
function private function_10c92445() {
    self.ignore_nuke = 1;
    self.ignore_all_poi = 1;
    self.is_inert = 1;
    self.instakill_func = &zm_powerups::function_16c2586a;
    self.var_69bfb00a = &function_188e5077;
    self.var_135f3e2e = &function_2abc1fe5;
    self.var_b98a92a2 = 1000;
    self.var_ab38d331 = 0;
    self val::set(#"mannequin_ally", "takedamage", 0);
    self.var_7c4488fd = 1;
    self.var_535fbaa3 = 1200;
    self namespace_47c5b560::function_904442b2();
    self.var_6d409ca1 = &function_6d409ca1;
    self.var_397796ce = 256;
    self.var_42918474 = 1;
    self.var_ce2dd587 = 10;
    self.var_fdd8e511 = 10;
    self.var_952959e1 = &function_a3b94da7;
    self.var_793f9f37 = &function_87d77748;
    self.noplayermeleeblood = 1;
    self.var_ba00404c = 1;
    self.var_674fb2e2 = 1;
    self val::set(#"klaus", "prioritize_target_near_leader", 1);
    self callback::function_d8abfc3d(#"hash_49bf4815e9501d2", &zodcompanionutility::function_ae69d4a5);
    self setblackboardattribute("_locomotion_speed", "locomotion_speed_walk");
    /#
        if (getdvarint(#"hash_63cafe6978c3b249", 0)) {
            if (!isdefined(level.var_777acf92)) {
                level.var_777acf92 = spawnstruct();
                level.var_777acf92.origin = self.origin;
                level.var_777acf92.angles = self.angles;
            }
        }
    #/
    if (isdefined(level.var_777acf92)) {
        self thread function_65ed0370(level.var_777acf92.origin, level.var_777acf92.angles);
    }
    self thread function_d37f3f18();
}

// Namespace namespace_ca8676a3/namespace_ca8676a3
// Params 1, eflags: 0x4
// Checksum 0x8bc1ef71, Offset: 0x5d0
// Size: 0x34
function private function_188e5077(angles) {
    self thread animation::play("ai_t9_zm_klaus_stn_exposed_revive", self, angles, 1);
}

// Namespace namespace_ca8676a3/namespace_ca8676a3
// Params 2, eflags: 0x0
// Checksum 0x123d4002, Offset: 0x610
// Size: 0x84
function function_65ed0370(origin, angles) {
    self endon(#"death");
    self forceteleport(origin, angles);
    self orientmode("face default");
    self animation::play("ai_t9_zm_klaus_intro");
}

// Namespace namespace_ca8676a3/namespace_ca8676a3
// Params 2, eflags: 0x4
// Checksum 0x5387c3a2, Offset: 0x6a0
// Size: 0x32
function private function_2abc1fe5(closestai, *closestplayer) {
    if (isdefined(closestplayer.entity)) {
        return closestplayer.entity;
    }
    return undefined;
}

// Namespace namespace_ca8676a3/namespace_ca8676a3
// Params 0, eflags: 0x4
// Checksum 0x15b384ca, Offset: 0x6e0
// Size: 0xa
function private function_6d409ca1() {
    return self.leader;
}

// Namespace namespace_ca8676a3/namespace_ca8676a3
// Params 1, eflags: 0x0
// Checksum 0xc2122099, Offset: 0x6f8
// Size: 0x94
function switch_weapon(weapon_name) {
    self ai::gun_remove();
    weapon = getweapon(weapon_name);
    self aiutility::setcurrentweapon(weapon);
    self aiutility::setprimaryweapon(weapon);
    self ai::gun_switchto(weapon, "right");
}

// Namespace namespace_ca8676a3/namespace_ca8676a3
// Params 0, eflags: 0x0
// Checksum 0x1a23401, Offset: 0x798
// Size: 0x42
function function_94fde0c0() {
    self.aat[aat::function_702fb333(self.weapon)] = "ammomod_deadwire";
    self.tesla_network_death_choke = 0;
    self.tesla_arc_count = 0;
}

// Namespace namespace_ca8676a3/namespace_ca8676a3
// Params 0, eflags: 0x0
// Checksum 0xbe2b2dd8, Offset: 0x7e8
// Size: 0x3e
function function_a3b94da7() {
    aiutility::releaseclaimnode(self);
    self clearforcedgoal();
    self.next_move_time = gettime();
}

// Namespace namespace_ca8676a3/namespace_ca8676a3
// Params 0, eflags: 0x0
// Checksum 0xa5e80fbb, Offset: 0x830
// Size: 0x34
function function_87d77748() {
    if (zodcompanionbehavior::zodcompanionhasdefendlocation(self)) {
        self zodcompanionutility::function_34179e9a();
    }
}

// Namespace namespace_ca8676a3/namespace_ca8676a3
// Params 2, eflags: 0x0
// Checksum 0xd8c753ae, Offset: 0x870
// Size: 0x24c
function function_8996b315(var_ac5f535, bomb_model) {
    self zodcompanionutility::function_34179e9a();
    self zodcompanionutility::function_60dcf99d(var_ac5f535);
    if (is_true(var_ac5f535)) {
        self val::reset(#"mannequin_ally", "takedamage");
        self val::set(#"zod_companion", "ignoreall", 1);
        level flag::set(#"hash_66eb1b5632f46da8");
        if (isdefined(self.weapon)) {
            self.last_weapon_name = self.weapon.name;
            self val::set(#"hash_12fe84721f8b0c30", "take_weapons", 1);
        }
        if (isdefined(bomb_model)) {
            self attach(bomb_model, "tag_weapon_right");
        }
        return;
    }
    self val::set(#"mannequin_ally", "takedamage", 0);
    self val::reset(#"zod_companion", "ignoreall");
    level flag::clear(#"hash_66eb1b5632f46da8");
    if (isdefined(self.last_weapon_name)) {
        self val::reset(#"hash_12fe84721f8b0c30", "take_weapons");
        self switch_weapon(self.last_weapon_name);
        self.last_weapon_name = undefined;
    }
    if (isdefined(bomb_model)) {
        self detach(bomb_model, "tag_weapon_right");
    }
}

// Namespace namespace_ca8676a3/namespace_ca8676a3
// Params 2, eflags: 0x0
// Checksum 0xef07b14d, Offset: 0xac8
// Size: 0x1f4
function function_92157e49(goal, move_speed = "walk") {
    navmeshpoint = getclosestpointonnavmesh(goal, self getpathfindingradius() * 2, self getpathfindingradius());
    if (isdefined(navmeshpoint)) {
        switch (move_speed) {
        case #"sprint":
            self ai::set_behavior_attribute("sprint", 1);
            self setblackboardattribute("_locomotion_speed", "locomotion_speed_sprint");
            break;
        case #"run":
            self ai::set_behavior_attribute("sprint", 0);
            self setblackboardattribute("_locomotion_speed", "locomotion_speed_run");
            break;
        case #"walk":
        default:
            self ai::set_behavior_attribute("sprint", 0);
            self setblackboardattribute("_locomotion_speed", "locomotion_speed_walk");
            break;
        }
        aiutility::releaseclaimnode(self);
        self clearforcedgoal();
        self setgoal(navmeshpoint, 1);
    }
}

// Namespace namespace_ca8676a3/namespace_ca8676a3
// Params 0, eflags: 0x4
// Checksum 0xd6f8aa88, Offset: 0xcc8
// Size: 0x16c
function private function_d37f3f18() {
    level endon(#"end_game");
    while (isalive(self)) {
        if (!isdefined(self.leader)) {
            waitframe(1);
            continue;
        }
        if (!level flag::get(#"hash_6d16c284cbb301d1")) {
            var_12001660 = is_true(self.leader.var_4db2872c);
            self.leader.var_4db2872c = 0;
            if (var_12001660 && self.leader laststand::player_is_in_laststand()) {
                zm_player::function_8ef51109();
            }
        } else {
            self.leader.var_4db2872c = 1;
        }
        waitframe(1);
    }
    if (isdefined(self.leader)) {
        var_12001660 = is_true(self.leader.var_4db2872c);
        self.leader.var_4db2872c = 0;
        if (var_12001660 && self.leader laststand::player_is_in_laststand()) {
            zm_player::function_8ef51109();
        }
    }
}

/#

    // Namespace namespace_ca8676a3/namespace_ca8676a3
    // Params 0, eflags: 0x4
    // Checksum 0x3d6f92aa, Offset: 0xe40
    // Size: 0x8c
    function private function_851f409b() {
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
        zm_devgui::add_custom_devgui_callback(&function_18227767);
    }

    // Namespace namespace_ca8676a3/namespace_ca8676a3
    // Params 1, eflags: 0x4
    // Checksum 0x92312446, Offset: 0xed8
    // Size: 0x162
    function private function_18227767(cmd) {
        switch (cmd) {
        case #"hash_31690de1b49c022a":
            ais = getaiarchetypearray(#"zod_companion");
            if (ais.size > 0) {
                ai = ais[0];
                var_49e9776e = !is_true(ai.var_fee1e0f4);
                ai function_8996b315(var_49e9776e);
            }
            break;
        case #"hash_dc11efc5ca22f74":
            function_e3e858b1(250, "<unknown string>");
            break;
        case #"hash_35381ef4960cf279":
            function_e3e858b1(250, "<unknown string>");
            break;
        case #"hash_22d1be7a17698c91":
            function_e3e858b1(250, "<unknown string>");
            break;
        default:
            break;
        }
    }

    // Namespace namespace_ca8676a3/namespace_ca8676a3
    // Params 2, eflags: 0x4
    // Checksum 0x60eac9c, Offset: 0x1048
    // Size: 0x194
    function private function_e3e858b1(dist, move_speed) {
        if (!isdefined(move_speed)) {
            move_speed = "<unknown string>";
        }
        ais = getaiarchetypearray(#"zod_companion");
        if (ais.size > 0) {
            ai = ais[0];
            fwd = vectorscale(vectornormalize(anglestoforward(ai.angles)), dist);
            eye = ai.origin + (0, 0, 80);
            trace = bullettrace(eye, eye + fwd, 0, ai);
            var_380c580a = positionquery_source_navigation(trace[#"position"], 128, 256, 128, 20);
            point = ai.origin;
            if (isdefined(var_380c580a) && var_380c580a.data.size > 0) {
                point = var_380c580a.data[0].origin;
            }
            ai function_92157e49(point, move_speed);
        }
    }

#/
