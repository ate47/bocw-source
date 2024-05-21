// Atian COD Tools GSC CW decompiler test
#using scripts\zm\zm_platinum.gsc;
#using scripts\zm_common\zm_cleanup_mgr.gsc;
#using scripts\zm_common\zm_audio.gsc;
#using scripts\zm_common\zm_unitrigger.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\ai\zm_ai_utility.gsc;
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\zm_common\zm_sq.gsc;
#using script_5b190e6124417f5a;
#using script_744259b349d834c7;
#using script_3819e7a1427df6d2;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_bce659ef;

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 0, eflags: 0x2 linked
// Checksum 0xd15dc054, Offset: 0x3f0
// Size: 0x25c
function init() {
    clientfield::register("scriptmover", "" + #"hash_73d20572196ff3ab", 1, getminbitcountfornum(3), "int");
    clientfield::register("scriptmover", "" + #"hash_44cce9f2e2fd1c96", 1, getminbitcountfornum(2), "int");
    clientfield::register("world", "" + #"hash_2e8ad83a0edc8ab4", 1, 1, "int");
    clientfield::register("world", "" + #"pap_quest_beam_start", 1, getminbitcountfornum(10), "int");
    clientfield::register("world", "" + #"hash_3fb8ca8c017ba7ac", 1, getminbitcountfornum(10), "int");
    level thread function_cdc6589b();
    level thread function_3c35fb99();
    level thread function_9d367ce1();
    level thread function_c3996268();
    level thread function_bf1953a();
    level thread function_f8cbb582();
    level thread function_ca27bef9();
    level thread function_af722d1c();
    /#
        level thread function_37597f29();
    #/
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 0, eflags: 0x2 linked
// Checksum 0x77e0f2e7, Offset: 0x658
// Size: 0xec
function function_cdc6589b() {
    level endon(#"end_game");
    s_interact = struct::get("s_pap_quest_start_loc");
    if (!isdefined(s_interact)) {
        return;
    }
    var_b015a980 = s_interact zm_unitrigger::create(&function_fadb1cd3, 96, &function_bc741cdd);
    level flag::wait_till_any([#"hash_434bc775e67b7233", #"hash_20afa38b1f1c339e"]);
    zm_unitrigger::unregister_unitrigger(var_b015a980.stub);
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 1, eflags: 0x2 linked
// Checksum 0xf9fda19f, Offset: 0x750
// Size: 0xd2
function function_fadb1cd3(player) {
    if (level flag::get_any([#"hash_7b5643f5ecc16c8f", #"hash_434bc775e67b7233", #"hash_20afa38b1f1c339e"])) {
        self sethintstring("");
        return 0;
    }
    if (isplayer(player)) {
        self sethintstringforplayer(player, #"hash_117e2ba880722571");
        return 1;
    }
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 0, eflags: 0x2 linked
// Checksum 0x9e1e1a77, Offset: 0x830
// Size: 0x150
function function_bc741cdd() {
    level endon(#"end_game", #"death", #"hash_20afa38b1f1c339e");
    while (true) {
        waitresult = self waittill(#"trigger");
        activator = waitresult.activator;
        if (isplayer(activator) && !level flag::get(#"hash_7b5643f5ecc16c8f")) {
            s_pap_machine = struct::get("pap_machine_pos");
            playrumbleonposition(#"hash_37961ea533a765a2", s_pap_machine.origin);
            earthquake(0.25, 10, s_pap_machine.origin, 1200);
            level flag::set(#"hash_434bc775e67b7233");
        }
    }
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 0, eflags: 0x2 linked
// Checksum 0xa46be7b0, Offset: 0x988
// Size: 0x27c
function function_3c35fb99() {
    level endon(#"end_game");
    level flag::wait_till_any([#"hash_434bc775e67b7233", #"hash_20afa38b1f1c339e", #"hash_1040acad653a881f"]);
    level.no_powerups = 1;
    level flag::clear("spawn_zombies");
    level flag::clear("zombie_drop_powerups");
    level flag::clear(#"hash_21921ed511559aa3");
    level flag::set(#"pause_round_timeout");
    level flag::set("hold_round_end");
    level flag::clear(#"hash_25372b8b89ab540c");
    level flag::wait_till_any([#"hash_20afa38b1f1c339e", #"hash_1040acad653a881f"]);
    level flag::set("spawn_zombies");
    level flag::clear(#"pause_round_timeout");
    level flag::clear("hold_round_end");
    level flag::wait_till(#"hash_20afa38b1f1c339e");
    level.no_powerups = undefined;
    level flag::set("zombie_drop_powerups");
    level flag::set(#"hash_21921ed511559aa3");
    level flag::set(#"hash_25372b8b89ab540c");
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 0, eflags: 0x2 linked
// Checksum 0x9e05be1b, Offset: 0xc10
// Size: 0x1dc
function function_c3996268() {
    level endon(#"end_game");
    s_pap_machine_fx = struct::get("s_pap_machine_fx");
    level flag::wait_till("start_zombie_round_logic");
    var_748011b3 = util::spawn_model("tag_origin", s_pap_machine_fx.origin, s_pap_machine_fx.angles);
    var_748011b3 clientfield::set("" + #"hash_73d20572196ff3ab", 1);
    level flag::wait_till_any([#"hash_434bc775e67b7233", #"hash_20afa38b1f1c339e"]);
    var_748011b3 clientfield::set("" + #"hash_73d20572196ff3ab", 2);
    level flag::wait_till(#"hash_20afa38b1f1c339e");
    var_748011b3 clientfield::set("" + #"hash_73d20572196ff3ab", 3);
    util::wait_network_frame();
    var_748011b3 clientfield::set("" + #"hash_73d20572196ff3ab", 0);
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 0, eflags: 0x2 linked
// Checksum 0x45ee3b4, Offset: 0xdf8
// Size: 0x654
function function_bf1953a() {
    level endon(#"end_game", #"hash_20afa38b1f1c339e");
    level flag::wait_till("start_zombie_round_logic");
    n_count = 0;
    var_922a1dba = 0;
    var_eb801f6d = struct::get_script_bundle_instances("scene", ["scene_zombie_pap_float", "targetname"]);
    var_eb801f6d = array::sort_by_script_int(var_eb801f6d, 1);
    foreach (var_8a36246d in var_eb801f6d) {
        var_8a36246d thread scene::play("sleep");
        mdl_zombie = var_8a36246d.scene_ents[#"actor 1"];
        if (isdefined(mdl_zombie)) {
            mdl_zombie clientfield::set("" + #"hash_44cce9f2e2fd1c96", 1);
        }
        wait(randomfloatrange(0.25, 0.5));
    }
    level flag::wait_till(#"hash_6987b7a102755157");
    foreach (var_8a36246d in var_eb801f6d) {
        var_8a36246d thread scene::play("awake");
        var_922a1dba++;
        n_count++;
        level clientfield::set("" + #"pap_quest_beam_start", n_count);
        if (n_count == 9) {
            wait(0.15);
            level clientfield::set("" + #"pap_quest_beam_start", n_count + 1);
        }
        mdl_zombie = var_8a36246d.scene_ents[#"actor 1"];
        if (isdefined(mdl_zombie)) {
            mdl_zombie clientfield::set("" + #"hash_44cce9f2e2fd1c96", 2);
        }
        if (var_922a1dba == 2) {
            var_922a1dba = 0;
            wait(1);
        }
        wait(0.15);
    }
    wait(0.25);
    level clientfield::set("" + #"pap_quest_beam_start", 0);
    var_67a6506b = struct::get_script_bundle_instances("scene", ["scene_zombie_pap_land", "targetname"]);
    var_67a6506b = array::sort_by_script_int(var_67a6506b, 1);
    n_count = 0;
    level function_22ce4251();
    foreach (var_8a36246d in var_67a6506b) {
        level scene::add_scene_func(var_8a36246d.scriptbundlename, &function_96aac543, "play");
        level scene::add_scene_func(var_8a36246d.scriptbundlename, &function_bcc7802, "done");
        var_8a36246d thread scene::play("land");
        waitframe(1);
        var_eb801f6d[n_count] thread scene::stop(1);
        n_count++;
        if (n_count == 1 || n_count == 2) {
            level clientfield::set("" + #"hash_3fb8ca8c017ba7ac", n_count);
            util::wait_network_frame();
            wait(0.25);
        }
        level clientfield::set("" + #"hash_3fb8ca8c017ba7ac", n_count + 2);
        util::wait_network_frame();
        wait(randomfloatrange(0.15, 0.25));
    }
    level flag::set("flag_pap_quest_start_adds");
    level flag::set(#"hash_1040acad653a881f");
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 0, eflags: 0x2 linked
// Checksum 0xdeb4458, Offset: 0x1458
// Size: 0xb8
function function_22ce4251() {
    level endon(#"end_game", #"hash_20afa38b1f1c339e");
    n_max_zombies = zombie_utility::get_zombie_var(#"zombie_max_ai");
    while (true) {
        if (getaiteamarray(level.zombie_team).size < n_max_zombies - 11) {
            return;
        }
        function_904d21fd();
        util::wait_network_frame();
    }
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 0, eflags: 0x2 linked
// Checksum 0x4f4b25b4, Offset: 0x1518
// Size: 0x364
function function_904d21fd() {
    var_808239f1 = getaiarchetypearray(#"zombie");
    max_dist = 0;
    var_202d087b = undefined;
    foreach (i, actor in var_808239f1) {
        if (is_true(actor.var_921627ad) || is_true(actor.var_a950813d) || is_true(actor.var_4df707f6)) {
            var_808239f1[i] = -1;
        }
    }
    arrayremovevalue(var_808239f1, -1);
    players = getplayers();
    foreach (player in players) {
        if (player.sessionstate === "spectator") {
            continue;
        }
        while (true) {
            if (!isdefined(player)) {
                break;
            }
            var_3817a6b3 = arraygetfarthest(player.origin, var_808239f1);
            if (!isdefined(var_3817a6b3)) {
                return;
            }
            if (isalive(var_3817a6b3)) {
                break;
            }
            arrayremovevalue(var_808239f1, var_3817a6b3);
            if (!var_808239f1.size) {
                return;
            }
            waitframe(1);
        }
        if (isdefined(var_3817a6b3)) {
            closest_player = arraygetclosest(var_3817a6b3.origin, getplayers());
        }
        if (isdefined(closest_player) && isdefined(var_3817a6b3)) {
            dist = distancesquared(closest_player.origin, var_3817a6b3.origin);
            if (max_dist < dist) {
                max_dist = dist;
                var_202d087b = var_3817a6b3;
            }
        }
    }
    if (!isdefined(var_202d087b)) {
        var_202d087b = array::random(var_808239f1);
    }
    if (isdefined(var_202d087b)) {
        var_202d087b zm_cleanup::cleanup_zombie(1);
        if (isdefined(var_202d087b)) {
            gibserverutils::annihilate(var_202d087b);
        }
    }
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 1, eflags: 0x2 linked
// Checksum 0x1ec1e8c9, Offset: 0x1888
// Size: 0x7c
function function_96aac543(ents) {
    ai_zombie = ents[#"actor 1"];
    if (isalive(level.var_1ceed659) && isalive(ai_zombie)) {
        namespace_19c99142::function_e8a2d39a(level.var_1ceed659, ai_zombie);
    }
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 1, eflags: 0x2 linked
// Checksum 0x5f06788f, Offset: 0x1910
// Size: 0x10c
function function_bcc7802(ents) {
    ai_zombie = ents[#"actor 1"];
    if (!isalive(ai_zombie)) {
        return;
    }
    ai_zombie endon(#"death");
    ai_zombie.maxhealth = ai_zombie zm_ai_utility::function_b5fe98(level.round_number);
    ai_zombie.health = ai_zombie.maxhealth;
    ai_zombie.ignore_round_spawn_failsafe = 1;
    ai_zombie.ignore_enemy_count = 1;
    ai_zombie.no_powerups = 1;
    ai_zombie.script_string = "find_flesh";
    ai_zombie pathmode("move allowed");
    ai_zombie.ai_state = "zombie_think";
    ai_zombie.zombie_think_done = 1;
    ai_zombie thread function_6a8117ab();
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 0, eflags: 0x0
// Checksum 0x467ecdc5, Offset: 0x1a28
// Size: 0x300
function function_b1db8691() {
    level endon(#"end_game", #"hash_20afa38b1f1c339e");
    level flag::wait_till(#"flag_pap_quest_start_adds");
    wait(3);
    n_players = zm_utility::get_number_of_valid_players();
    var_95421a26 = 0;
    var_509132fd = arraycombine(struct::get_array("zone_no_mans_land_1_spawns"), struct::get_array("zone_no_mans_land_2_spawns"));
    var_509132fd = array::filter(var_509132fd, 0, &function_e01b301e);
    switch (n_players) {
    case 1:
    default:
        n_max_active_ai = 5;
        var_a77909d4 = 20;
        break;
    case 2:
        n_max_active_ai = 10;
        var_a77909d4 = 30;
        break;
    case 3:
        n_max_active_ai = 15;
        var_a77909d4 = 45;
        break;
    case 4:
        n_max_active_ai = 20;
        var_a77909d4 = 60;
        break;
    }
    while (var_95421a26 < var_a77909d4) {
        while (getaiarray("pap_quest_ai", "targetname").size >= n_max_active_ai) {
            util::wait_network_frame();
        }
        ai_zombie = undefined;
        spawner = zm_platinum::function_ddc13fd6();
        while (!isdefined(ai_zombie)) {
            ai_zombie = zombie_utility::spawn_zombie(spawner, "pap_quest_ai", array::random(var_509132fd), level.round_number);
            waitframe(1);
        }
        ai_zombie.maxhealth = ai_zombie zm_ai_utility::function_b5fe98(level.round_number);
        ai_zombie.health = ai_zombie.maxhealth;
        ai_zombie.no_powerups = 1;
        ai_zombie.script_string = "find_flesh";
        ai_zombie thread function_6a8117ab();
        var_95421a26++;
        wait(randomfloatrange(5, 8));
    }
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 1, eflags: 0x2 linked
// Checksum 0x8e0ef1ef, Offset: 0x1d30
// Size: 0x2c
function function_e01b301e(s_loc) {
    if (s_loc.script_noteworthy === "riser_location") {
        return true;
    }
    return false;
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 0, eflags: 0x2 linked
// Checksum 0x3fbcf886, Offset: 0x1d68
// Size: 0x13a
function function_6a8117ab() {
    self endon(#"death");
    e_trigger = getent("pap_quest_clear_enemy_trigger", "targetname");
    a_players = array::randomize(function_a1ef346b());
    foreach (player in a_players) {
        if (player istouching(e_trigger)) {
            self.favoriteenemy = player;
            return;
        }
    }
    e_player = arraygetclosest(e_trigger.origin, a_players);
    self.favoriteenemy = e_player;
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 0, eflags: 0x0
// Checksum 0x65e89705, Offset: 0x1eb0
// Size: 0x11e
function function_8ff08856() {
    level endon(#"end_game", #"hash_20afa38b1f1c339e");
    wait(randomintrange(8, 16));
    var_f490e876 = undefined;
    s_spawn_loc = struct::get("s_pap_quest_mechz_spawn");
    var_8a9b34b3 = getent("spawner_bo5_mechz_sr", "targetname");
    var_8a9b34b3.script_forcespawn = 1;
    while (!isdefined(var_f490e876)) {
        var_f490e876 = zombie_utility::spawn_zombie(var_8a9b34b3, "pap_quest_ai", s_spawn_loc);
        waitframe(1);
    }
    var_f490e876.var_126d7bef = 1;
    var_f490e876.ignore_round_spawn_failsafe = 1;
    var_f490e876.b_ignore_cleanup = 1;
    var_f490e876.ignore_enemy_count = 1;
    var_f490e876.no_powerups = 1;
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 0, eflags: 0x2 linked
// Checksum 0xf4873cf9, Offset: 0x1fd8
// Size: 0x644
function function_f8cbb582() {
    level endon(#"end_game", #"hash_20afa38b1f1c339e");
    level flag::wait_till(#"hash_434bc775e67b7233");
    level thread zm_audio::function_b36aeaf6("papevent");
    foreach (player in getplayers()) {
        player clientfield::set_to_player("" + #"hash_4be33f9c734f0cb9", 2);
    }
    level clientfield::set("" + #"hash_2e8ad83a0edc8ab4", 1);
    level.var_7ff7eaf9 = [];
    a_s_loc = array::sort_by_script_int(struct::get_array("s_pap_quest_boss_spawn"), 1);
    var_5e5e4c63 = getent("spawner_bo5_soa", "targetname");
    var_5e5e4c63.script_forcespawn = 1;
    level.var_1ceed659 = undefined;
    wait(0.5);
    var_84a3b2fc = 0;
    switch (getplayers().size) {
    case 1:
    default:
        n_max_active_ai = 2;
        var_37cdfca9 = 1;
        break;
    case 2:
        n_max_active_ai = 3;
        var_37cdfca9 = 1;
        break;
    case 3:
        n_max_active_ai = 4;
        var_37cdfca9 = 2;
        break;
    case 4:
        n_max_active_ai = 4;
        var_37cdfca9 = 2;
        break;
    }
    if (!isdefined(level.var_1ceed659)) {
        level scene::add_scene_func(#"hash_23646276d8565971", &function_5fc5de3e, "play");
        level scene::add_scene_func(#"hash_23646276d8565971", &function_ffe0f421, "done");
        level scene::play(#"hash_23646276d8565971");
        level flag::set(#"hash_6987b7a102755157");
        var_84a3b2fc++;
        wait(randomfloatrange(5, 6));
    }
    level scene::remove_scene_func(#"hash_23646276d8565971", &function_5fc5de3e, "play");
    level scene::remove_scene_func(#"hash_23646276d8565971", &function_ffe0f421, "done");
    while (var_84a3b2fc < var_37cdfca9) {
        while (getaiarray("pap_quest_ai_boss", "targetname").size >= n_max_active_ai) {
            util::wait_network_frame();
        }
        ai_boss = undefined;
        while (!isdefined(ai_boss)) {
            ai_boss = zombie_utility::spawn_zombie(var_5e5e4c63, "pap_quest_ai_boss", a_s_loc[0], level.round_number);
            waitframe(1);
        }
        ai_boss thread function_4df61aed(1);
        var_84a3b2fc++;
        if (var_84a3b2fc == var_37cdfca9) {
            break;
        }
        wait(randomfloatrange(5, 6));
    }
    array::wait_till(level.var_7ff7eaf9, "death");
    level clientfield::set("" + #"hash_2e8ad83a0edc8ab4", 0);
    level thread zm_audio::function_2354b945("papevent");
    foreach (player in getplayers()) {
        player clientfield::set_to_player("" + #"hash_4be33f9c734f0cb9", 3);
    }
    namespace_b574e135::function_8d857888(1);
    level flag::set(#"hash_20afa38b1f1c339e");
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 1, eflags: 0x2 linked
// Checksum 0xb0154ba2, Offset: 0x2628
// Size: 0x304
function function_4df61aed(var_e9710308) {
    self notify(#"hash_ccfc536e52dd075");
    a_s_loc = array::sort_by_script_int(struct::get_array("s_pap_quest_boss_spawn"), 1);
    if (is_true(var_e9710308)) {
        self forceteleport(a_s_loc[0].origin, a_s_loc[0].angles);
    }
    self clientfield::set("" + #"hash_3e4641a9ea00d061", 0);
    self val::reset(#"hash_2892ab448df38143", "allowdeath");
    self.var_306ee014 = undefined;
    aiutility::removeaioverridedamagecallback(self, &function_5d4aa7f8);
    if (getplayers().size < 3) {
        var_98a21198 = #"hash_4cc53090ca79c51a";
    } else {
        var_98a21198 = #"hash_6cd6ef080cea716b";
    }
    zm_sq::function_266d66eb(#"hash_1c556f45aa40ebef", self, undefined, var_98a21198, undefined, 96);
    self.maxhealth = self zm_ai_utility::function_b5fe98(level.round_number);
    self.var_2e38a54d = 100;
    self.health = self.maxhealth;
    self.var_126d7bef = 1;
    self.ignore_round_spawn_failsafe = 1;
    self.ignore_enemy_count = 1;
    self.no_powerups = 1;
    if (!isdefined(level.var_d1e5ed10)) {
        level.var_d1e5ed10 = 0;
    }
    var_1c583a11 = level.var_d1e5ed10 % 4 + 1;
    if (!isdefined(a_s_loc[var_1c583a11])) {
        var_1c583a11 = 1;
    }
    self namespace_19c99142::function_fc7356e3(self, a_s_loc[var_1c583a11].origin);
    level.var_d1e5ed10++;
    if (!isdefined(level.var_7ff7eaf9)) {
        level.var_7ff7eaf9 = [];
    } else if (!isarray(level.var_7ff7eaf9)) {
        level.var_7ff7eaf9 = array(level.var_7ff7eaf9);
    }
    level.var_7ff7eaf9[level.var_7ff7eaf9.size] = self;
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 1, eflags: 0x2 linked
// Checksum 0x2c3268e8, Offset: 0x2938
// Size: 0xe4
function function_5fc5de3e(ents) {
    var_e8cb6c46 = ents[#"actor 1"];
    if (!isalive(var_e8cb6c46)) {
        return;
    }
    level.var_1ceed659 = var_e8cb6c46;
    var_e8cb6c46 clientfield::set("" + #"hash_3e4641a9ea00d061", 1);
    var_e8cb6c46 val::set(#"hash_2892ab448df38143", "allowdeath", 0);
    var_e8cb6c46.var_306ee014 = &function_1a49126a;
    aiutility::addaioverridedamagecallback(var_e8cb6c46, &function_5d4aa7f8);
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 1, eflags: 0x2 linked
// Checksum 0xc8905926, Offset: 0x2a28
// Size: 0x10
function function_1a49126a(*entity) {
    return true;
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 13, eflags: 0x2 linked
// Checksum 0xcc9086a9, Offset: 0x2a40
// Size: 0x6e
function function_5d4aa7f8(*inflictor, *attacker, *damage, *dflags, *mod, *weapon, *var_fd90b0bb, *point, *dir, *hitloc, *offsettime, *boneindex, *modelindex) {
    return false;
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 1, eflags: 0x2 linked
// Checksum 0x35a3fccb, Offset: 0x2ab8
// Size: 0x54
function function_ffe0f421(ents) {
    var_e8cb6c46 = ents[#"actor 1"];
    if (!isalive(var_e8cb6c46)) {
        return;
    }
    var_e8cb6c46 thread function_4df61aed();
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 0, eflags: 0x2 linked
// Checksum 0xa03e1504, Offset: 0x2b18
// Size: 0x64
function function_ca27bef9() {
    level endon(#"end_game");
    level flag::wait_till(#"hash_20afa38b1f1c339e");
    wait(3);
    level zm_utility::function_9ad5aeb1(1, 1, 0, 0);
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 0, eflags: 0x2 linked
// Checksum 0xc12f2fa8, Offset: 0x2b88
// Size: 0x8c
function function_9d367ce1() {
    level endon(#"end_game");
    level flag::set(#"disable_weapon_machine");
    level flag::wait_till(#"hash_20afa38b1f1c339e");
    function_d18f9441();
    level flag::clear(#"disable_weapon_machine");
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 0, eflags: 0x6 linked
// Checksum 0xe9f61810, Offset: 0x2c20
// Size: 0x118
function private function_d18f9441() {
    var_63a065c3 = struct::get("pap_machine_pos", "targetname");
    a_players = function_a1ef346b();
    foreach (player in a_players) {
        if (distancesquared(var_63a065c3.origin, player.origin) < sqr(500)) {
            player function_bc82f900(#"hash_4daa78d98dde0b61");
        }
    }
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 2, eflags: 0x0
// Checksum 0x67f31f30, Offset: 0x2d40
// Size: 0x30
function function_79e92fb0(zombie_spawner, spawner_int) {
    if (zombie_spawner.script_int === spawner_int) {
        return true;
    }
    return false;
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 0, eflags: 0x2 linked
// Checksum 0x839bd283, Offset: 0x2d78
// Size: 0x28c
function function_af722d1c() {
    level endon(#"end_game");
    var_8b3ab8b4 = struct::get_array("pap_rappel_breadcrumb");
    s_pap_machine = struct::get("pap_machine_pos");
    level flag::wait_till_any(["power_on", #"hash_549c3c7bafb05150", #"hash_434bc775e67b7233", #"hash_20afa38b1f1c339e"]);
    wait(3.5);
    zm_sq::function_266d66eb(#"hash_5c597e863c8de1c8", var_8b3ab8b4, undefined, #"hash_466bc6bf903c0d79", undefined, 96);
    level flag::wait_till_any([#"hash_549c3c7bafb05150", #"hash_434bc775e67b7233", #"hash_20afa38b1f1c339e"]);
    zm_sq::objective_complete(#"hash_5c597e863c8de1c8");
    zm_sq::function_266d66eb(#"hash_512230df2dcdd311", s_pap_machine.origin + (0, 0, 40), undefined, #"hash_466bc6bf903c0d79", undefined, 96);
    level flag::wait_till_any([#"hash_434bc775e67b7233", #"hash_20afa38b1f1c339e"]);
    zm_sq::objective_complete(#"hash_512230df2dcdd311");
    level flag::wait_till(#"hash_20afa38b1f1c339e");
    zm_sq::objective_complete(#"hash_1c556f45aa40ebef");
}

/#

    // Namespace namespace_bce659ef/namespace_bce659ef
    // Params 0, eflags: 0x0
    // Checksum 0xd9424d45, Offset: 0x3010
    // Size: 0x44
    function function_37597f29() {
        util::add_debug_command("<unknown string>");
        zm_devgui::add_custom_devgui_callback(&cmd);
    }

    // Namespace namespace_bce659ef/namespace_bce659ef
    // Params 1, eflags: 0x0
    // Checksum 0x3106309f, Offset: 0x3060
    // Size: 0x2b2
    function cmd(cmd) {
        switch (cmd) {
        case #"hash_4f52dabbc7c7806b":
            level flag::set(#"hash_20afa38b1f1c339e");
            level clientfield::set("<unknown string>" + #"hash_2e8ad83a0edc8ab4", 0);
            var_b9deb373 = struct::get_script_bundle_instances("<unknown string>", ["<unknown string>", "<unknown string>"]);
            var_f501ee56 = struct::get_script_bundle_instances("<unknown string>", ["<unknown string>", "<unknown string>"]);
            var_bc5ea9bc = arraycombine(var_b9deb373, var_f501ee56, 0, 0);
            var_1a4d3aef = struct::get_script_bundle_instances("<unknown string>", ["<unknown string>", "<unknown string>"]);
            var_bc5ea9bc = arraycombine(var_bc5ea9bc, var_1a4d3aef, 0, 0);
            foreach (var_8a36246d in var_bc5ea9bc) {
                if (var_8a36246d scene::is_playing()) {
                    var_8a36246d scene::stop(1);
                }
            }
            for (i = 0; i <= 10; i++) {
                level clientfield::set("<unknown string>" + #"hash_3fb8ca8c017ba7ac", i);
                waitframe(1);
            }
            break;
        default:
            break;
        }
    }

#/
