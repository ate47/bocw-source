// Atian COD Tools GSC CW decompiler test
#using script_ab862743b3070a;
#using script_340a2e805e35f7a2;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using script_34ab99a4ca1a43d;
#using scripts\zm_common\zm_vo.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\flag_shared.gsc;

#namespace namespace_f0a1fe5c;

// Namespace namespace_f0a1fe5c/namespace_f0a1fe5c
// Params 0, eflags: 0x5
// Checksum 0x3f16378e, Offset: 0x230
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_520d565ef38560b8", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_f0a1fe5c/namespace_f0a1fe5c
// Params 0, eflags: 0x6 linked
// Checksum 0xcdce3836, Offset: 0x278
// Size: 0x2ac
function private preinit() {
    if (is_true(getgametypesetting(#"hash_7e8e34cc69a77e0b")) || getdvarint(#"hash_40bd34b35079cf2e", 0) > 0) {
        zombie_utility::set_zombie_var(#"hash_176c7387fb0b8e84", 0, 0, 1);
        zombie_utility::set_zombie_var(#"zombie_powerup_naughty_or_nice_on", 0, 0, 1);
        zombie_utility::set_zombie_var(#"zombie_powerup_naughty_or_nice_time", 30, 0, 1);
        zm_powerups::register_powerup("naughty_or_nice", &function_a19d471a);
        if (zm_powerups::function_cc33adc8()) {
            clientfield::register("scriptmover", "powerup_pickup_sequence", 1, 4, "int");
            zm_powerups::add_zombie_powerup("naughty_or_nice", #"hash_218ac2126792ad24", #"hash_c63a666160e5343", &zm_powerups::func_should_always_drop, 0, 0, 0, undefined, "powerup_naughty_or_nice", "zombie_powerup_naughty_or_nice_time", "zombie_powerup_naughty_or_nice_on");
            zm_vo::function_2cf4b07f(#"hash_488f781c3365038d", #"hash_1d3bccd799efe9e7");
            zm_vo::function_2cf4b07f(#"hash_1f61ea56f88705b0", #"hash_1d3bcbd799efe834");
            zm_vo::function_2cf4b07f(#"naughty_or_nice", #"hash_1d3bced799efed4d");
            zm_vo::function_2cf4b07f(#"hash_5832fe620991fcd1", #"hash_1d3bcdd799efeb9a");
            /#
                adddebugcommand("<unknown string>");
            #/
            /#
                adddebugcommand("<unknown string>");
            #/
        }
    }
}

// Namespace namespace_f0a1fe5c/namespace_f0a1fe5c
// Params 1, eflags: 0x2 linked
// Checksum 0x84bfb8c2, Offset: 0x530
// Size: 0x54
function function_a19d471a(player) {
    if (!isplayer(player)) {
        return;
    }
    level thread function_feb491ef(player, self.origin, self.hint);
}

// Namespace namespace_f0a1fe5c/namespace_f0a1fe5c
// Params 3, eflags: 0x2 linked
// Checksum 0xd0a94b1, Offset: 0x590
// Size: 0x3ec
function function_feb491ef(player, origin, hint) {
    var_203c496d = randomint(100);
    pickup_time = gettime();
    var_55bc7ca1 = 1;
    temp_ent = util::spawn_model("tag_origin", origin);
    temp_ent clientfield::set("powerup_pickup_sequence", 1);
    temp_ent playloopsound("zmb_powerup_stocking_cycle");
    while (pickup_time > gettime() - 3000) {
        if (var_55bc7ca1 === 1) {
            temp_ent clientfield::set("powerup_pickup_sequence", 1);
            var_55bc7ca1 = 0;
        } else {
            temp_ent clientfield::set("powerup_pickup_sequence", 2);
            var_55bc7ca1 = 1;
        }
        wait(0.3);
    }
    temp_ent stoploopsound(0.2);
    temp_ent clientfield::set("powerup_pickup_sequence", 0);
    if (var_203c496d >= 65) {
        team = player.team;
        level thread zm_powerups::show_on_hud(team, "naughty_or_nice");
    }
    players = getplayers();
    foreach (e_player in players) {
        if (isdefined(e_player) && isplayer(e_player) && isdefined(hint)) {
            if (var_203c496d < 65) {
                temp_ent playsound("zmb_powerup_stocking_nice");
                temp_ent clientfield::set("powerup_pickup_sequence", 3);
                e_player zm_utility::function_846eb7dd(#"hash_1d757d99eb407952", #"hash_2555e03c457dc083");
                continue;
            }
            temp_ent playsound("zmb_powerup_stocking_naughty");
            temp_ent clientfield::set("powerup_pickup_sequence", 4);
            e_player thread zm_powerups::function_5091b029("naughty_or_nice");
            e_player zm_utility::function_846eb7dd(#"hash_1d757d99eb407952", #"hash_2555e13c457dc236");
        }
    }
    if (var_203c496d < 65) {
        player function_c15a5f44(temp_ent);
    } else if (level.var_4be193f5 === 1) {
        level.var_d51e0708 = gettime();
    } else {
        level thread function_5928d77d();
    }
    wait(2);
    temp_ent delete();
}

// Namespace namespace_f0a1fe5c/namespace_f0a1fe5c
// Params 1, eflags: 0x6 linked
// Checksum 0x61b33749, Offset: 0x988
// Size: 0xac
function private function_c15a5f44(var_d13d4980) {
    self notify("3df22d237ca0a586");
    self endon("3df22d237ca0a586");
    level endon(#"end_game");
    self function_b1c6ca30(var_d13d4980);
    if (math::cointoss()) {
        level thread zm_vo::function_8abe0568(#"hash_488f781c3365038d");
        return;
    }
    level thread zm_vo::function_8abe0568(#"hash_5832fe620991fcd1");
}

// Namespace namespace_f0a1fe5c/namespace_f0a1fe5c
// Params 0, eflags: 0x6 linked
// Checksum 0xd6753c13, Offset: 0xa40
// Size: 0x208
function private function_5928d77d() {
    self notify("33e482bf3e7c3ca1");
    self endon("33e482bf3e7c3ca1");
    level endon(#"end_game");
    level.var_4be193f5 = 1;
    level thread zm_vo::function_8abe0568(#"hash_1f61ea56f88705b0");
    level.var_d51e0708 = gettime();
    var_d74055c4 = [];
    if (!isdefined(level.var_a5ab9bfb)) {
        level.var_a5ab9bfb = [];
    }
    players = getplayers();
    var_ef5ad4eb = players.size + 1;
    while (level.var_d51e0708 > gettime() - 30000) {
        if (zm_utility::function_c200446c()) {
            function_1eaaceab(level.var_a5ab9bfb);
            if (level.var_a5ab9bfb.size < var_ef5ad4eb) {
                level callback::callback(#"hash_4ad847c8f6c6405f");
            }
        } else {
            function_1eaaceab(var_d74055c4);
            if (var_d74055c4.size < var_ef5ad4eb) {
                ai = zombie_dog_util::function_62db7b1c();
                if (!isdefined(var_d74055c4)) {
                    var_d74055c4 = [];
                } else if (!isarray(var_d74055c4)) {
                    var_d74055c4 = array(var_d74055c4);
                }
                if (!isinarray(var_d74055c4, ai)) {
                    var_d74055c4[var_d74055c4.size] = ai;
                }
            }
        }
        wait(2);
    }
    level.var_4be193f5 = 0;
}

// Namespace namespace_f0a1fe5c/namespace_f0a1fe5c
// Params 1, eflags: 0x2 linked
// Checksum 0xd3e3bb59, Offset: 0xc50
// Size: 0x234
function function_b1c6ca30(var_d13d4980) {
    var_7580ce3e = spawnstruct();
    var_7580ce3e.angles = var_d13d4980.angles;
    var_7580ce3e.scriptmodel = self;
    var_a7bd1c53 = getclosestpointonnavmesh(var_d13d4980.origin, 32, 8);
    if (isdefined(var_a7bd1c53)) {
        var_7580ce3e.origin = var_a7bd1c53;
    } else {
        var_7580ce3e.origin = var_d13d4980.origin - (0, 0, 42);
    }
    scriptmodel = var_7580ce3e.scriptmodel;
    reward_origin = var_7580ce3e.origin;
    n_count = 1;
    players = getplayers();
    switch (players.size) {
    case 2:
        n_count = 2;
        break;
    case 3:
    case 4:
        n_count = 3;
        break;
    }
    dropstruct = {#origin:reward_origin, #angles:scriptmodel.angles, #var_738dfc81:n_count};
    a_items = dropstruct namespace_65181344::function_fd87c780(#"zm_ltm1_powerup_drop_list", n_count, 2);
    if (a_items.size > 1) {
        var_b7d0c0a8 = randomint(a_items.size);
    } else {
        var_b7d0c0a8 = 0;
    }
    a_items[var_b7d0c0a8].var_7b02ac6a = 1;
    var_7580ce3e struct::delete();
}

