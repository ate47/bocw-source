// Atian COD Tools GSC CW decompiler test
#using scripts\zm\zm_tungsten_vo.gsc;
#using scripts\zm_common\zm_intel.gsc;
#using scripts\zm_common\zm_vo.gsc;
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\zm\ai\zm_ai_mimic.gsc;
#using scripts\zm\ai\zm_ai_avogadro.gsc;
#using script_ab862743b3070a;
#using scripts\zm_common\zm_loadout.gsc;
#using scripts\zm_common\zm_cleanup_mgr.gsc;
#using scripts\zm_common\zm_unitrigger.gsc;
#using script_3411bb48d41bd3b;
#using scripts\zm_common\zm_sq.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\ai\zm_ai_utility.gsc;
#using scripts\zm_common\aats\zm_aat.gsc;
#using scripts\zm_common\zm_ui_inventory.gsc;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\aat_shared.gsc;
#using scripts\core_common\item_drop.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\ai\zombie_death.gsc;
#using scripts\core_common\ai\archetype_avogadro.gsc;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_8a08914c;

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 0, eflags: 0x2 linked
// Checksum 0xd92d4bda, Offset: 0x368
// Size: 0x23c
function init() {
    clientfield::register("scriptmover", "" + #"hash_76ffee0aa9eae3ce", 28000, 1, "int");
    clientfield::register("world", "" + #"hash_45b04d88564a1cd", 28000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_4fcb640ca703e121", 28000, 1, "int");
    clientfield::register("world", "" + #"hash_22d24ba0bcf94c3f", 28000, getminbitcountfornum(2), "int");
    clientfield::register("world", "" + #"hash_2d4fdf69e826bcc4", 28000, getminbitcountfornum(2), "int");
    clientfield::register("actor", "" + #"hash_5342c00e940ad12b", 28000, 1, "int");
    clientfield::register("world", "" + #"ww_crystalaxe_glow", 28000, 1, "int");
    hidemiscmodels("dn_rf_coverage_dmg");
    if (!zm_utility::is_ee_enabled()) {
        return;
    }
    level thread function_1b65b01d();
    /#
        level thread function_cd7a3de4();
    #/
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 0, eflags: 0x2 linked
// Checksum 0x87de40c5, Offset: 0x5b0
// Size: 0x1cc
function function_1b65b01d() {
    level zm_sq::register(#"ww_quest", #"hash_79fb0b9d5540e0ac", #"hash_3cfd69dc67bdcf69", &function_c6de5d3d, &function_863fc0f1);
    level zm_sq::register(#"ww_quest", #"hash_38a2a9adaab1cc19", #"hash_3cfd66dc67bdca50", &function_1168e497, &function_4320379c);
    level zm_sq::register(#"ww_quest", #"hash_41bf4422496d516a", #"hash_3cfd66dc67bdca50", &function_38b4568d, &function_2f221d1c);
    level zm_sq::register(#"ww_quest", #"hash_7a62c3c8a237162c", #"hash_3cfd66dc67bdca50", &function_af92e3a4, &function_40fcf197);
    level flag::wait_till(#"start_zombie_round_logic");
    level thread zm_sq::start(#"ww_quest", 1);
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 1, eflags: 0x2 linked
// Checksum 0x85c0c894, Offset: 0x788
// Size: 0xe4
function function_c6de5d3d(b_skipped) {
    level endon(#"end_game");
    callback::on_item_pickup(&on_item_pickup);
    if (b_skipped) {
        return;
    }
    callback::on_ai_killed(&function_c24ab28e);
    level thread function_defedffe();
    level flag::wait_till_all([#"hash_3b34b6b1b8c07116", #"hash_377409bcba0102a7", #"hash_6eaa2d1db393bd70"]);
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 2, eflags: 0x2 linked
// Checksum 0xc4119aeb, Offset: 0x878
// Size: 0x27c
function function_863fc0f1(b_skipped, var_19e802fa) {
    if (b_skipped || var_19e802fa) {
        level flag::set(#"hash_3b34b6b1b8c07116");
        level flag::set(#"hash_377409bcba0102a7");
        level flag::set(#"hash_6eaa2d1db393bd70");
        level flag::set(#"hash_6e04e3a3a814cc4b");
        level zm_ui_inventory::function_7df6bb60(#"hash_2d5a3bb1a97e6bcc", 1);
        level zm_ui_inventory::function_7df6bb60(#"hash_2d5a3eb1a97e70e5", 1);
        level zm_ui_inventory::function_7df6bb60(#"hash_2d5a3db1a97e6f32", 1);
        var_3bc263c7 = struct::get("wwq_part_a_start");
        var_1f3c6d19 = struct::get(var_3bc263c7.target);
        if (isdefined(var_3bc263c7.var_f0d7b908)) {
            var_3bc263c7.var_f0d7b908 delete();
        }
        if (isdefined(var_1f3c6d19.var_f863218)) {
            var_1f3c6d19.var_f863218 delete();
        }
        if (isdefined(var_1f3c6d19.var_cc27998f)) {
            var_1f3c6d19.var_cc27998f delete();
        }
        level thread function_53454d1f();
        level clientfield::set("" + #"hash_2d4fdf69e826bcc4", 1);
        level clientfield::set("" + #"hash_45b04d88564a1cd", 0);
    }
    callback::remove_on_ai_killed(&function_c24ab28e);
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 0, eflags: 0x2 linked
// Checksum 0xba24c5f, Offset: 0xb00
// Size: 0x53c
function function_defedffe() {
    level endon(#"hash_3b34b6b1b8c07116");
    var_3bc263c7 = struct::get("wwq_part_a_start");
    var_1f3c6d19 = struct::get(var_3bc263c7.target);
    level flag::wait_till(#"hash_264e763f3fa44810");
    level clientfield::set("" + #"hash_2d4fdf69e826bcc4", 1);
    var_5bef7e74 = level.round_number + 2;
    while (level.round_number < var_5bef7e74) {
        level waittill(#"start_of_round");
    }
    v_ang = vectortoangles(var_1f3c6d19.origin - var_3bc263c7.origin);
    var_3bc263c7.var_f0d7b908 = util::spawn_model("tag_origin", var_3bc263c7.origin, v_ang);
    var_3bc263c7.var_f0d7b908 clientfield::set("" + #"hash_76ffee0aa9eae3ce", 1);
    var_3bc263c7.var_f0d7b908 moveto(var_1f3c6d19.origin, 6, 0.5, 0.5);
    level thread zm_tungsten_vo::function_752b5c36(#"hash_4c1e29c044712f9a", undefined);
    level thread function_b6a4293d();
    var_3bc263c7.var_f0d7b908 waittill(#"movedone");
    level flag::set(#"hash_6e04e3a3a814cc4b");
    playrumbleonposition(#"hash_44a2d15c073da877", var_1f3c6d19.origin);
    earthquake(0.5, 2, var_1f3c6d19.origin, 10000);
    level thread function_cdea4abe(var_1f3c6d19.origin, 500);
    var_1f3c6d19.var_f863218 = util::spawn_model(#"hash_403bde95dde45534", var_1f3c6d19.origin + (0, 0, 10), var_1f3c6d19.angles);
    var_1f3c6d19.var_f863218 clientfield::set("" + #"hash_4fcb640ca703e121", 1);
    var_1f3c6d19.var_f863218 thread function_a64f8c66();
    var_3bc263c7.var_f0d7b908 clientfield::set("" + #"hash_76ffee0aa9eae3ce", 0);
    level thread zm_vo::function_7622cb70(#"hash_36079fc8ccf8a4d9", 1);
    var_1f3c6d19.var_cc27998f = spawn("trigger_radius", var_1f3c6d19.origin, 0, var_1f3c6d19.radius, var_1f3c6d19.height);
    var_1f3c6d19.var_cc27998f function_42b23f00();
    wait(1);
    level clientfield::set("" + #"hash_22d24ba0bcf94c3f", 1);
    playrumbleonposition(#"hash_6ecdc679dac14937", var_1f3c6d19.origin);
    earthquake(0.3, 0.8, var_1f3c6d19.origin, 1000);
    level thread function_3db48fdd(#"item_zmquest_tungsten_ww_quest_part_a", var_1f3c6d19.origin + (0, 0, 10), var_1f3c6d19.angles);
    if (isdefined(var_3bc263c7.var_f0d7b908)) {
        var_3bc263c7.var_f0d7b908 delete();
    }
    if (isdefined(var_1f3c6d19.var_f863218)) {
        var_1f3c6d19.var_f863218 delete();
    }
    if (isdefined(var_1f3c6d19.var_cc27998f)) {
        var_1f3c6d19.var_cc27998f delete();
    }
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 0, eflags: 0x2 linked
// Checksum 0xacd78b0, Offset: 0x1048
// Size: 0x10c
function function_a64f8c66() {
    level endon(#"hash_3b34b6b1b8c07116");
    self endon(#"death");
    while (true) {
        a_players = array::get_all_closest(self.origin, function_a1ef346b(), undefined, undefined, 150);
        foreach (player in a_players) {
            player function_bc82f900(#"damage_light");
        }
        wait(0.25);
    }
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 0, eflags: 0x2 linked
// Checksum 0x20a11719, Offset: 0x1160
// Size: 0x8c
function function_b6a4293d() {
    level endon(#"hash_3b34b6b1b8c07116");
    wait(5.8);
    level clientfield::set("" + #"hash_45b04d88564a1cd", 1);
    hidemiscmodels("dn_rf_coverage");
    showmiscmodels("dn_rf_coverage_dmg");
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 2, eflags: 0x2 linked
// Checksum 0xe651dba8, Offset: 0x11f8
// Size: 0x2fc
function function_cdea4abe(v_origin, n_radius) {
    a_zombies = array::get_all_closest(v_origin, getaiteamarray(level.zombie_team), undefined, undefined, n_radius);
    a_players = array::get_all_closest(v_origin, function_a1ef346b(), undefined, undefined, n_radius);
    foreach (player in a_players) {
        if (isalive(player)) {
            if (distance2dsquared(v_origin, player.origin) <= sqr(200)) {
                player dodamage(player.health + 666, v_origin);
            }
        }
    }
    foreach (ai_zombie in a_zombies) {
        if (isalive(ai_zombie)) {
            if (ai_zombie.var_6f84b820 === #"normal") {
                v_dir = vectornormalize(ai_zombie.origin - v_origin);
                v_launch = v_dir * randomintrange(80, 100) + (0, 0, 150);
                ai_zombie zm_utility::function_ffc279(v_launch, undefined, ai_zombie.health, undefined);
                continue;
            }
            ai_zombie thread ai::stun();
        }
    }
    glassradiusdamage(v_origin, n_radius, 250, 100);
    radiusdamage(v_origin, n_radius, 250, 100);
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 0, eflags: 0x2 linked
// Checksum 0x13e05f2a, Offset: 0x1500
// Size: 0x14e
function function_42b23f00() {
    level endon(#"hash_3b34b6b1b8c07116");
    self endon(#"death");
    var_71e5d64 = 0;
    while (true) {
        waitresult = self waittill(#"trigger");
        if (zm_utility::is_player_valid(waitresult.activator)) {
            var_71e5d64++;
            switch (var_71e5d64) {
            case 1:
                level thread function_45c2bb18(waitresult.activator);
                self function_4d67771c(1);
                break;
            case 2:
                self function_4d67771c(2);
                break;
            case 3:
                self function_4d67771c(3);
                return;
            }
        }
    }
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 1, eflags: 0x2 linked
// Checksum 0x10aea214, Offset: 0x1658
// Size: 0x4c
function function_45c2bb18(e_player) {
    e_player zm_tungsten_vo::function_d137d6a0(#"hash_3b3761bba99968b1", #"hash_3b3771bba99983e1", #"hash_3b3775bba9998aad");
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 1, eflags: 0x2 linked
// Checksum 0x5130dc34, Offset: 0x16b0
// Size: 0x4a4
function function_4d67771c(n_wave) {
    level endon(#"hash_3b34b6b1b8c07116");
    var_95421a26 = 0;
    var_9d375553 = struct::get_array("s_ww_part_a_dog_spawn");
    var_dc32aa86 = struct::get_array("s_ww_part_a_tempest_spawn");
    var_4fce32be = struct::get_array("s_ww_part_a_mimic_spawn");
    if (getplayers().size < 2) {
        var_4e06036b = 2;
        var_d18f896 = 4;
    } else {
        var_4e06036b = 0.5;
        var_d18f896 = 1.5;
    }
    switch (n_wave) {
    case 1:
    default:
        n_ai_count = 4 + getplayers().size * 2;
        break;
    case 2:
        n_ai_count = 2 + getplayers().size;
        break;
    case 3:
        n_ai_count = getplayers().size * 2;
        break;
    }
    while (var_95421a26 < n_ai_count) {
        while (getaiteamarray(level.zombie_team).size >= level.zombie_ai_limit) {
            function_904d21fd();
            util::wait_network_frame();
        }
        ai = undefined;
        while (!isdefined(ai)) {
            switch (n_wave) {
            case 1:
            default:
                s_spawn_loc = array::random(var_9d375553);
                ai = zombie_dog_util::function_62db7b1c(1, s_spawn_loc);
                break;
            case 2:
                s_spawn_loc = array::random(var_dc32aa86);
                ai = zm_ai_avogadro::spawn_single(1, s_spawn_loc);
                break;
            case 3:
                s_spawn_loc = array::random(var_4fce32be);
                ai = zm_ai_mimic::spawn_single(s_spawn_loc);
                break;
            }
            wait(0.5);
        }
        var_95421a26++;
        ai.targetname = "ww_quest_ai";
        ai.var_126d7bef = 1;
        ai.ignore_round_spawn_failsafe = 1;
        ai.b_ignore_cleanup = 1;
        ai.ignore_enemy_count = 1;
        ai.no_powerups = 1;
        if (ai.aitype === #"spawner_bo5_avogadro_sr") {
            archetype_avogadro::function_33237109(ai, self.origin, 600);
        } else if (ai.aitype === #"spawner_bo5_mimic") {
            ai clientfield::increment("" + #"hash_54e2a4e02a26cc62", 1);
        }
        wait(randomfloatrange(var_4e06036b, var_d18f896));
    }
    timer = gettime() + int(90 * 1000);
    while (getaiarray("ww_quest_ai", "targetname").size > 0 && gettime() < timer) {
        waitframe(1);
    }
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 1, eflags: 0x2 linked
// Checksum 0xa8b6c581, Offset: 0x1b60
// Size: 0xdc
function function_b49b76d4(eventstruct) {
    if (level flag::get(#"hash_7239f34e436d2b72") || level flag::get(#"hash_377409bcba0102a7")) {
        return;
    }
    dynent = eventstruct.ent;
    attacker = eventstruct.attacker;
    if (isdefined(dynent) && dynent.health > 0) {
        return;
    }
    if (isdefined(attacker) && attacker.archetype === #"abom") {
        level thread function_844cd1f6(dynent.origin);
    }
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 1, eflags: 0x2 linked
// Checksum 0x375bda62, Offset: 0x1c48
// Size: 0x5c
function function_844cd1f6(var_a53bb2cc) {
    level flag::set(#"hash_7239f34e436d2b72");
    level function_3db48fdd(#"item_zmquest_tungsten_ww_quest_part_b", var_a53bb2cc + (0, 0, 20));
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 1, eflags: 0x2 linked
// Checksum 0xe6b678d9, Offset: 0x1cb0
// Size: 0x17c
function function_c24ab28e(s_params) {
    if (level flag::get(#"hash_1d1c8f35328c066d") || level flag::get(#"hash_6eaa2d1db393bd70")) {
        return;
    }
    attacker = s_params.eattacker;
    weapon = s_params.weapon;
    means_of_death = s_params.smeansofdeath;
    if (isplayer(attacker) && self.archetype === #"tormentor" && isdefined(weapon)) {
        if (means_of_death === "MOD_BURNED" && weapon.name === #"hero_flamethrower" || means_of_death === "MOD_EXPLOSIVE" && weapon.name === #"napalm_strike" || function_313be247(attacker, weapon, means_of_death) || function_1c058bc5(weapon, means_of_death)) {
            self thread function_4f49262c();
        }
    }
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 0, eflags: 0x2 linked
// Checksum 0x4cae7b51, Offset: 0x1e38
// Size: 0xa4
function function_4f49262c() {
    self notify("1cf338d3a8a442ea");
    self endon("1cf338d3a8a442ea");
    if (level flag::get(#"hash_1d1c8f35328c066d") || level flag::get(#"hash_6eaa2d1db393bd70")) {
        return;
    }
    wait(1);
    if (isdefined(self) && isdefined(self.origin)) {
        level thread function_99f5fd48(self.origin);
    }
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 2, eflags: 0x2 linked
// Checksum 0x6a03bd55, Offset: 0x1ee8
// Size: 0xea
function function_1c058bc5(weapon, means_of_death) {
    if (!isdefined(weapon) || !isdefined(weapon.name) || !isdefined(means_of_death)) {
        return 0;
    }
    if (means_of_death != "MOD_BURNED") {
        return 0;
    }
    switch (weapon.name) {
    case #"hash_6319e23758cd25e":
    case #"hash_6319f23758cd411":
    case #"hash_631a023758cd5c4":
    case #"hash_631a123758cd777":
    case #"hash_631a223758cd92a":
    case #"hash_1d9cb9dbd298acba":
        return 1;
    default:
        return 0;
    }
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 3, eflags: 0x2 linked
// Checksum 0x3ddd26d4, Offset: 0x1fe0
// Size: 0xc0
function function_313be247(attacker, weapon, means_of_death) {
    if (!isdefined(attacker) || !isdefined(weapon) || !isdefined(means_of_death)) {
        return false;
    }
    if (means_of_death != "MOD_AAT") {
        return false;
    }
    aat_name = attacker aat::getaatonweapon(weapon, 1);
    if (!isdefined(aat_name)) {
        return false;
    }
    var_4f0c684c = zm_aat::function_296cde87(aat_name);
    if (var_4f0c684c !== "ammomod_napalmburst") {
        return false;
    }
    return true;
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 1, eflags: 0x2 linked
// Checksum 0xd73659a6, Offset: 0x20a8
// Size: 0xa4
function function_99f5fd48(var_a53bb2cc) {
    if (!zm_utility::check_point_in_playable_area(var_a53bb2cc) || level flag::get(#"hash_1d1c8f35328c066d")) {
        return;
    }
    level flag::set(#"hash_1d1c8f35328c066d");
    level function_3db48fdd(#"item_zmquest_tungsten_ww_quest_part_c", var_a53bb2cc + (0, 0, 10));
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 1, eflags: 0x2 linked
// Checksum 0x3028c347, Offset: 0x2158
// Size: 0x362
function on_item_pickup(params) {
    if (isdefined(params.item) && isdefined(params.item.itementry)) {
        name = params.item.itementry.name;
    }
    if (!isdefined(name) || !isplayer(self)) {
        return;
    }
    switch (name) {
    case #"item_zmquest_tungsten_ww_quest_part_a":
        level flag::set(#"hash_3b34b6b1b8c07116");
        level zm_ui_inventory::function_7df6bb60(#"hash_2d5a3bb1a97e6bcc", 1);
        level thread function_f9447d48(self);
        level clientfield::set("" + #"hash_45b04d88564a1cd", 0);
        array::thread_all(function_a1ef346b(), &zm_intel::collect_intel, #"zmintel_tungsten_darkaether_artifact_1");
        break;
    case #"item_zmquest_tungsten_ww_quest_part_b":
        level flag::set(#"hash_377409bcba0102a7");
        level zm_ui_inventory::function_7df6bb60(#"hash_2d5a3eb1a97e70e5", 1);
        level thread function_75bec488(self);
        array::thread_all(function_a1ef346b(), &zm_intel::collect_intel, #"zmintel_tungsten_darkaether_artifact_2");
        break;
    case #"item_zmquest_tungsten_ww_quest_part_c":
        level flag::set(#"hash_6eaa2d1db393bd70");
        level zm_ui_inventory::function_7df6bb60(#"hash_2d5a3db1a97e6f32", 1);
        level thread function_da57dd7c(self);
        array::thread_all(function_a1ef346b(), &zm_intel::collect_intel, #"zmintel_tungsten_darkaether_artifact_3");
        break;
    case #"ww_axe_gun_melee_t9_item_sr":
        level thread ww_pickup_vo(params.item, self);
        array::thread_all(function_a1ef346b(), &zm_intel::collect_intel, #"zmintel_tungsten_requiem_artifact_1");
        break;
    }
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 1, eflags: 0x2 linked
// Checksum 0xee212ae2, Offset: 0x24c8
// Size: 0xfc
function function_f9447d48(e_player) {
    var_821062d8 = array::random([#"hash_47179111bb9d8055", #"hash_47178e11bb9d7b3c", #"hash_47178f11bb9d7cef"]);
    var_6eb9bbff = array::random([#"hash_47250911bba8d699", #"hash_47250611bba8d180", #"hash_47250711bba8d333"]);
    e_player zm_tungsten_vo::function_d137d6a0(#"hash_787c36ae3d0c3d16", var_821062d8, var_6eb9bbff);
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 1, eflags: 0x2 linked
// Checksum 0xc0fafe61, Offset: 0x25d0
// Size: 0x15c
function function_75bec488(e_player) {
    var_2e53b027 = array::random([#"hash_482d93184a860794", #"hash_482d96184a860cad", #"hash_482d95184a860afa"]);
    var_35703e80 = array::random([#"hash_47f713184a579ea4", #"hash_47f716184a57a3bd", #"hash_47f715184a57a20a"]);
    var_daf58964 = array::random([#"hash_47e97b184a4c1200", #"hash_47e97e184a4c1719", #"hash_47e97d184a4c1566"]);
    e_player zm_tungsten_vo::function_d137d6a0(var_2e53b027, var_35703e80, var_daf58964);
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 1, eflags: 0x2 linked
// Checksum 0xf855d446, Offset: 0x2738
// Size: 0xfc
function function_da57dd7c(e_player) {
    var_991f2885 = array::random([#"hash_57a2842b7e534a6d", #"hash_57a2812b7e534554", #"hash_57a2822b7e534707"]);
    var_fe5272ea = array::random([#"hash_5779fc2b7e311141", #"hash_5779f92b7e310c28", #"hash_5779fa2b7e310ddb"]);
    e_player zm_tungsten_vo::function_d137d6a0(var_991f2885, #"hash_369770613414183e", var_fe5272ea);
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 3, eflags: 0x6 linked
// Checksum 0xd92f989d, Offset: 0x2840
// Size: 0x138
function private function_3db48fdd(str_item_name, var_a53bb2cc, var_55ab02db = (0, 0, 0)) {
    point = function_4ba8fde(str_item_name);
    var_60687c46 = item_drop::drop_item(0, undefined, 1, 0, point.id, var_a53bb2cc, var_55ab02db, 0);
    var_60687c46.var_dd21aec2 = 1 | 16;
    var_60687c46 playloopsound(#"hash_21d80fb4d9a84575");
    if (!isdefined(level.var_ddc67fdb)) {
        level.var_ddc67fdb = [];
    } else if (!isarray(level.var_ddc67fdb)) {
        level.var_ddc67fdb = array(level.var_ddc67fdb);
    }
    level.var_ddc67fdb[level.var_ddc67fdb.size] = var_60687c46;
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 0, eflags: 0x6 linked
// Checksum 0xdc068e34, Offset: 0x2980
// Size: 0xb8
function private function_53454d1f() {
    if (isarray(level.var_ddc67fdb) && level.var_ddc67fdb.size) {
        foreach (var_60687c46 in level.var_ddc67fdb) {
            if (isdefined(var_60687c46)) {
                var_60687c46 delete();
            }
        }
    }
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 1, eflags: 0x2 linked
// Checksum 0x6413eed9, Offset: 0x2a40
// Size: 0x64
function function_1168e497(b_skipped) {
    if (b_skipped) {
        return;
    }
    level thread function_4a34b4ed();
    level thread function_499de9e();
    level flag::wait_till(#"hash_799c465b8328df15");
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 2, eflags: 0x2 linked
// Checksum 0xd08362ab, Offset: 0x2ab0
// Size: 0x6c
function function_4320379c(b_skipped, var_19e802fa) {
    if (b_skipped || var_19e802fa) {
        level flag::set(#"hash_799c465b8328df15");
    }
    function_69f39621();
    level thread function_1512480e();
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 0, eflags: 0x2 linked
// Checksum 0x88bd4948, Offset: 0x2b28
// Size: 0x7c
function function_4a34b4ed() {
    level endon(#"hash_799c465b8328df15");
    s_interact = struct::get("ww_pool_interact");
    s_interact zm_unitrigger::function_fac87205("", 96);
    level flag::set(#"hash_799c465b8328df15");
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 0, eflags: 0x2 linked
// Checksum 0x83a2760a, Offset: 0x2bb0
// Size: 0x64
function function_499de9e() {
    level endon(#"hash_799c465b8328df15");
    wait(15);
    level zm_tungsten_vo::function_d137d6a0(#"hash_31ea5809a935154e", #"hash_31ea4809a934fa1e", #"hash_31ea4c09a93500ea");
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 0, eflags: 0x2 linked
// Checksum 0xfbefba5b, Offset: 0x2c20
// Size: 0x1dc
function function_69f39621() {
    level.var_d52e24c5 = [];
    s_interact = struct::get("ww_pool_interact");
    var_d56fdb6 = struct::get_array(s_interact.target);
    foreach (var_d2ee34ea in var_d56fdb6) {
        mdl_crystal = util::spawn_model(var_d2ee34ea.model, var_d2ee34ea.origin, var_d2ee34ea.angles);
        if (!isdefined(level.var_d52e24c5)) {
            level.var_d52e24c5 = [];
        } else if (!isarray(level.var_d52e24c5)) {
            level.var_d52e24c5 = array(level.var_d52e24c5);
        }
        level.var_d52e24c5[level.var_d52e24c5.size] = mdl_crystal;
    }
    level.var_d52e24c5[1] playsound(#"hash_16ed1f8ba3be3b37");
    level.var_d52e24c5[1] playloopsound(#"hash_7b219cc350a3dd43");
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 1, eflags: 0x2 linked
// Checksum 0x4f135dae, Offset: 0x2e08
// Size: 0x74
function function_38b4568d(b_skipped) {
    if (b_skipped) {
        return;
    }
    if (!isdefined(level.var_c390e613)) {
        level.var_c390e613 = 0;
    }
    callback::on_ai_killed(&function_cf6cdaa5);
    level flag::wait_till(#"hash_65cb00631d191193");
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 2, eflags: 0x2 linked
// Checksum 0xe3f3c070, Offset: 0x2e88
// Size: 0x18c
function function_2f221d1c(b_skipped, var_19e802fa) {
    if (b_skipped || var_19e802fa) {
        level flag::set(#"hash_65cb00631d191193");
    }
    level thread function_fa6cc1f2();
    if (isdefined(level.var_d52e24c5)) {
        foreach (var_8ac08196 in level.var_d52e24c5) {
            if (isdefined(var_8ac08196)) {
                var_8ac08196 delete();
            }
        }
    }
    callback::remove_on_ai_killed(&function_cf6cdaa5);
    level.var_c390e613 = undefined;
    level clientfield::set("" + #"hash_2d4fdf69e826bcc4", 0);
    level clientfield::set("" + #"ww_crystalaxe_glow", 0);
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 1, eflags: 0x2 linked
// Checksum 0xa9637e45, Offset: 0x3020
// Size: 0x27c
function function_cf6cdaa5(s_params) {
    attacker = s_params.eattacker;
    weapon = s_params.weapon;
    means_of_death = s_params.smeansofdeath;
    if (!isplayer(attacker) || level flag::get(#"hash_65cb00631d191193")) {
        return;
    }
    if (weapon.name === #"hatchet" && means_of_death === "MOD_IMPACT" || means_of_death === "MOD_MELEE") {
        var_29eb5284 = struct::get("ww_soul_charge");
        if (distance2dsquared(self.origin, var_29eb5284.origin) <= sqr(500)) {
            self clientfield::set("" + #"hash_5342c00e940ad12b", 1);
            level.var_c390e613++;
            if (level.var_c390e613 == 1) {
                level clientfield::set("" + #"ww_crystalaxe_glow", 1);
            }
            if (level.var_c390e613 == 5) {
                level clientfield::set("" + #"hash_2d4fdf69e826bcc4", 2);
            }
            if (level.var_c390e613 >= 10) {
                n_time = distance(self.origin, var_29eb5284.origin) / 400;
                wait(n_time + 1);
                level flag::set(#"hash_65cb00631d191193");
            }
        }
    }
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 0, eflags: 0x2 linked
// Checksum 0x1ca73e71, Offset: 0x32a8
// Size: 0x9c
function function_1512480e() {
    var_5aa94770 = array::random([#"hash_26446cb367cecf30", #"hash_26446db367ced0e3", #"hash_26446eb367ced296"]);
    level zm_vo::function_d6f8bbd9(var_5aa94770, 1.5, getplayers());
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 0, eflags: 0x2 linked
// Checksum 0x7d6e8e78, Offset: 0x3350
// Size: 0x264
function function_fa6cc1f2() {
    s_loc = struct::get("ww_soul_charge");
    level.no_powerups = 1;
    level flag::clear("spawn_zombies");
    level flag::clear("zombie_drop_powerups");
    level flag::clear(#"hash_21921ed511559aa3");
    level flag::set(#"pause_round_timeout");
    level flag::set("hold_round_end");
    level clientfield::set("" + #"hash_22d24ba0bcf94c3f", 2);
    playrumbleonposition(#"hash_6c2e11718d838a2b", s_loc.origin);
    earthquake(0.4, 2, s_loc.origin, 1500);
    level function_3d1e19ec(s_loc.origin, 1500);
    timer = gettime() + int(5 * 1000);
    while (gettime() < timer) {
        waitframe(1);
    }
    level.no_powerups = undefined;
    level flag::set("spawn_zombies");
    level flag::set("zombie_drop_powerups");
    level flag::set(#"hash_21921ed511559aa3");
    level flag::clear(#"pause_round_timeout");
    level flag::clear("hold_round_end");
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 6, eflags: 0x2 linked
// Checksum 0x62db3df0, Offset: 0x35c0
// Size: 0x416
function function_3d1e19ec(v_origin, n_radius, var_a8d0b313 = 1, var_82ea43f2 = 1, b_hide_body = 0, var_b0e62e21 = 0) {
    var_4b9821e4 = 0;
    if (var_b0e62e21) {
        a_players = function_72d3bca6(function_a1ef346b(), v_origin, undefined, undefined, n_radius);
        foreach (player in a_players) {
            player thread lui::screen_flash(1, 1, 0.5, 1, (1, 1, 1));
        }
    }
    a_enemies = function_72d3bca6(getaiteamarray(level.zombie_team), v_origin, undefined, undefined, n_radius);
    foreach (ai in a_enemies) {
        if (isalive(ai) && !is_true(ai.var_d45ca662) && !is_true(ai.marked_for_death)) {
            if (var_a8d0b313) {
                ai zm_cleanup::function_23621259(0);
            }
            if (var_82ea43f2 || ai.var_6f84b820 !== #"normal") {
                if (zm_utility::is_magic_bullet_shield_enabled(ai)) {
                    ai util::stop_magic_bullet_shield();
                }
                ai.allowdeath = 1;
                ai.no_powerups = 1;
                ai.deathpoints_already_given = 1;
                ai.marked_for_death = 1;
                if (!b_hide_body && ai.var_6f84b820 === #"normal" && var_4b9821e4 < 6) {
                    var_4b9821e4++;
                    ai thread zombie_death::flame_death_fx();
                    if (!is_true(ai.no_gib)) {
                        ai zombie_utility::zombie_head_gib();
                    }
                }
                ai dodamage(ai.health + 666, ai.origin);
                if (b_hide_body) {
                    ai hide();
                    ai notsolid();
                }
            } else {
                ai delete();
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 1, eflags: 0x2 linked
// Checksum 0x27f22258, Offset: 0x39e0
// Size: 0x34
function function_af92e3a4(b_skipped) {
    if (b_skipped) {
    }
    wait(1.5);
    level thread function_ea86330e();
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 2, eflags: 0x2 linked
// Checksum 0x78d3c3ec, Offset: 0x3a20
// Size: 0x26
function function_40fcf197(b_skipped, var_19e802fa) {
    if (b_skipped || var_19e802fa) {
    }
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 0, eflags: 0x2 linked
// Checksum 0x2e10249a, Offset: 0x3a50
// Size: 0x15c
function function_ea86330e() {
    var_222825ae = struct::get("ww_crystalaxe_spawn");
    point = function_4ba8fde(#"ww_axe_gun_melee_t9_item_sr");
    item_ww = item_drop::drop_item(0, getweapon(#"ww_axe_gun_melee_t9"), 1, 0, point.id, var_222825ae.origin, var_222825ae.angles, 0);
    item_ww.var_dd21aec2 = 1 | 16;
    item_ww.var_19920dbe = 1;
    item_ww.itementry.var_fa988b4b = undefined;
    item_ww playsound(#"hash_250f39946d7f6289");
    item_ww playloopsound(#"hash_3297d5eea6cd1217");
    item_ww moveto(item_ww.origin + (0, 0, 32), 5, 0.05, 0.05);
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 2, eflags: 0x2 linked
// Checksum 0xc3d12e47, Offset: 0x3bb8
// Size: 0x174
function ww_pickup_vo(item, e_player) {
    if (!is_true(item.var_19920dbe)) {
        return;
    }
    wait(2);
    if (isalive(e_player)) {
        var_5e0eaa1f = array::random([#"hash_7ad1feed766524b6", #"hash_7ad1fded76652303", #"hash_7ad1fced76652150"]);
        var_b3f1d5e4 = array::random([#"hash_7adf96ed7670b15a", #"hash_7adf95ed7670afa7", #"hash_7adf94ed7670adf4"]);
        e_player thread zm_tungsten_vo::function_d137d6a0(#"hash_56e0e52471da7613", var_5e0eaa1f, var_b3f1d5e4);
    }
    callback::remove_callback(#"on_item_pickup", &on_item_pickup);
}

// Namespace namespace_8a08914c/namespace_cc6c4729
// Params 0, eflags: 0x2 linked
// Checksum 0x5261cf2, Offset: 0x3d38
// Size: 0x37c
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
    if (isdefined(var_202d087b) && var_202d087b.targetname !== "ww_quest_ai") {
        var_202d087b zm_cleanup::cleanup_zombie(1);
        if (isdefined(var_202d087b)) {
            gibserverutils::annihilate(var_202d087b);
        }
    }
}

/#

    // Namespace namespace_8a08914c/namespace_cc6c4729
    // Params 0, eflags: 0x0
    // Checksum 0xe33e73e0, Offset: 0x40c0
    // Size: 0x74
    function function_cd7a3de4() {
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        zm_devgui::add_custom_devgui_callback(&cmd);
    }

    // Namespace namespace_8a08914c/namespace_cc6c4729
    // Params 1, eflags: 0x0
    // Checksum 0x8bfa4af5, Offset: 0x4140
    // Size: 0x22a
    function cmd(cmd) {
        switch (cmd) {
        case #"hash_649635ef22bf36d8":
            level flag::set(#"hash_3b34b6b1b8c07116");
            level zm_ui_inventory::function_7df6bb60(#"hash_2d5a3bb1a97e6bcc", 1);
            level thread function_f9447d48(self);
            level clientfield::set("<unknown string>" + #"hash_45b04d88564a1cd", 0);
            var_3bc263c7 = struct::get("<unknown string>");
            var_1f3c6d19 = struct::get(var_3bc263c7.target);
            if (isdefined(var_1f3c6d19.var_f863218)) {
                var_1f3c6d19.var_f863218 delete();
            }
            break;
        case #"hash_649638ef22bf3bf1":
            level flag::set(#"hash_377409bcba0102a7");
            level zm_ui_inventory::function_7df6bb60(#"hash_2d5a3eb1a97e70e5", 1);
            level thread function_75bec488(self);
            break;
        case #"hash_649637ef22bf3a3e":
            level flag::set(#"hash_6eaa2d1db393bd70");
            level zm_ui_inventory::function_7df6bb60(#"hash_2d5a3db1a97e6f32", 1);
            level thread function_da57dd7c(self);
            break;
        }
    }

#/
