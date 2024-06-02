// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using script_3d703ef87a841fe4;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\status_effects\status_effect_util.gsc;
#using scripts\core_common\player\player_role.gsc;
#using scripts\core_common\map.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\bots\bot_traversals.gsc;
#using script_5e6a760c6f43dd12;
#using scripts\core_common\bots\bot_stance.gsc;
#using scripts\core_common\bots\bot_position.gsc;
#using script_79b47c663155f8bd;
#using scripts\core_common\bots\bot_orders.gsc;
#using script_34e162235fb08844;
#using script_74453936abc39adf;
#using script_55b445d561c4bd83;
#using script_4e44ad88a2b0f559;
#using scripts\core_common\bots\bot_action.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace bot;

// Namespace bot/bot
// Params 0, eflags: 0x5
// Checksum 0x19584ed1, Offset: 0x1f8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"bot", &preinit, undefined, undefined, undefined);
}

// Namespace bot/bot
// Params 0, eflags: 0x6 linked
// Checksum 0xa9c26442, Offset: 0x240
// Size: 0x320
function private preinit() {
    if (util::is_frontend_map()) {
        return;
    }
    if (currentsessionmode() == 4 || currentsessionmode() == 2) {
        return;
    }
    level.var_fa5cacde = getgametypesetting(#"hash_77b7734750cd75e9") || is_true(level.var_fa5cacde);
    /#
        if (getdvarint(#"hash_7140b31f7170f18b", 0)) {
            setdvar(#"scr_player_ammo", "<unknown string>");
        }
    #/
    if (is_true(level.var_fa5cacde)) {
        namespace_ffbf548b::preinit();
        callback::on_spawned(&function_abe38e0f);
        callback::on_player_killed(&function_96dddf6f);
        return;
    }
    namespace_87549638::preinit();
    bot_action::preinit();
    bot_difficulty::preinit();
    namespace_38ee089b::preinit();
    bot_orders::preinit();
    namespace_ffbf548b::preinit();
    bot_position::preinit();
    bot_stance::preinit();
    namespace_255a2b21::preinit();
    bot_traversals::preinit();
    callback::on_connect(&on_player_connect);
    callback::on_spawned(&on_player_spawned);
    callback::on_player_killed(&on_player_killed);
    callback::add_callback(#"hash_6efb8cec1ca372dc", &function_7291a729);
    callback::add_callback(#"hash_6280ac8ed281ce3c", &function_99a2ecf5);
    callback::add_callback(#"hash_730d00ef91d71acf", &function_8481733a);
    level.var_38c34301 = 500 / function_60d95f53();
}

// Namespace bot/bot
// Params 0, eflags: 0x2 linked
// Checksum 0x1290b7c1, Offset: 0x568
// Size: 0x6
function is_bot_ranked_match() {
    return false;
}

// Namespace bot/bot
// Params 3, eflags: 0x2 linked
// Checksum 0xe9645a31, Offset: 0x578
// Size: 0x15a
function add_bot(team, name = undefined, clanabbrev = undefined) {
    bot = addtestclient(name, clanabbrev);
    if (!isdefined(bot)) {
        return undefined;
    }
    bot init_bot();
    if (is_true(level.disableclassselection)) {
        bot.pers[#"class"] = level.defaultclass;
        bot.curclass = level.defaultclass;
    }
    if (level.teambased && isdefined(team) && isdefined(level.teams[team])) {
        bot.botteam = team;
    } else if (isdefined(team) && team == #"spectator") {
        bot.botteam = #"spectator";
    } else {
        bot.botteam = "autoassign";
    }
    return bot;
}

// Namespace bot/bot
// Params 2, eflags: 0x2 linked
// Checksum 0xefb722db, Offset: 0x6e0
// Size: 0x96
function add_bots(count = 1, team) {
    level endon(#"game_ended", #"remove_bot");
    for (i = 0; i < count; i++) {
        bot = add_bot(team);
        if (!isdefined(bot)) {
            return;
        }
        waitframe(1);
    }
}

// Namespace bot/bot
// Params 1, eflags: 0x0
// Checksum 0x37a88ae6, Offset: 0x780
// Size: 0xb0
function remove_bots(team) {
    bots = function_b16926ea(team);
    foreach (bot in bots) {
        remove_bot(bot);
    }
}

// Namespace bot/bot
// Params 0, eflags: 0x0
// Checksum 0xa416d068, Offset: 0x838
// Size: 0x5c
function remove_random_bot() {
    bots = function_b16926ea();
    if (bots.size) {
        bot = bots[randomint(bots.size)];
        remove_bot(bot);
    }
}

// Namespace bot/bot
// Params 1, eflags: 0x2 linked
// Checksum 0xd17d94a7, Offset: 0x8a0
// Size: 0x6c
function remove_bot(bot) {
    if (!isbot(bot) || isautocontrolledplayer(bot)) {
        return;
    }
    level notify(#"remove_bot");
    bot botdropclient();
}

// Namespace bot/bot
// Params 0, eflags: 0x6 linked
// Checksum 0xbbcc9ab5, Offset: 0x918
// Size: 0x4c
function private function_abe38e0f() {
    if (!isbot(self)) {
        return;
    }
    self thread fixed_spawn_override();
    waitframe(1);
    self bottakemanualcontrol();
}

// Namespace bot/bot
// Params 1, eflags: 0x6 linked
// Checksum 0x6e7baf47, Offset: 0x970
// Size: 0x3c
function private function_96dddf6f(*params) {
    if (!isbot(self)) {
        return;
    }
    self thread respawn();
}

// Namespace bot/bot
// Params 0, eflags: 0x6 linked
// Checksum 0x7a7d5ec7, Offset: 0x9b8
// Size: 0x178
function private on_player_connect() {
    if (!isbot(self)) {
        return;
    }
    self endon(#"disconnect");
    if (!isdefined(self.bot)) {
        self init_bot();
        self bot_difficulty::assign();
    }
    if (isdefined(self.var_29b433bd) && player_role::is_valid(self.var_29b433bd)) {
        player_role::set(self.var_29b433bd);
        self.var_29b433bd = undefined;
    } else if (isdefined(self.pers[#"characterindex"])) {
        self player_role::set(self.pers[#"characterindex"]);
    }
    if (!getdvarint(#"hash_1f80dbba75375e3d", 0)) {
        customloadoutindex = self.pers[#"loadoutindex"];
        if (isdefined(customloadoutindex)) {
            self [[ level.curclass ]]("custom" + customloadoutindex);
        }
    }
}

// Namespace bot/bot
// Params 0, eflags: 0x6 linked
// Checksum 0x377244ea, Offset: 0xb38
// Size: 0xdc
function private on_player_spawned() {
    if (!isbot(self)) {
        return;
    }
    self setgoal(self.origin);
    self forceupdategoalpos();
    self botreleasemanualcontrol();
    self thread function_b781f1e5();
    self thread fixed_spawn_override();
    if (is_true(self.bot.var_261b9ab3)) {
        waitframe(1);
        self bottakemanualcontrol();
    }
}

// Namespace bot/bot
// Params 1, eflags: 0x6 linked
// Checksum 0x54f1f0a3, Offset: 0xc20
// Size: 0x3c
function private on_player_killed(*params) {
    if (!isbot(self)) {
        return;
    }
    self thread respawn();
}

// Namespace bot/bot
// Params 0, eflags: 0x6 linked
// Checksum 0xfb7e6003, Offset: 0xc68
// Size: 0x108
function private respawn() {
    level endon(#"game_ended");
    self endon(#"disconnect", #"spawned", #"hash_3525e39d3694d0a9");
    self waittilltimeout(3, #"death_delay_finished");
    wait(0.1);
    if (is_true(getgametypesetting(#"hash_2b1f40bc711c41f3"))) {
        self thread squad_spawn(0.1);
        return;
    }
    while (true) {
        self bottapbutton(3);
        wait(0.1);
    }
}

// Namespace bot/bot
// Params 1, eflags: 0x6 linked
// Checksum 0xa0fce17f, Offset: 0xd78
// Size: 0x1f2
function private squad_spawn(respawninterval) {
    level endon(#"game_ended");
    self endon(#"death", #"disconnect", #"spawned");
    while (!isdefined(self.spawn.var_e8f87696) || self.spawn.var_e8f87696 <= 0) {
        wait(respawninterval);
    }
    aliveplayers = function_a1cff525(self.squad);
    var_f2cc505e = [];
    foreach (player in aliveplayers) {
        if (!isdefined(player.var_83de62a2) || player.var_83de62a2 != 0) {
            continue;
        }
        var_f2cc505e[var_f2cc505e.size] = player;
    }
    if (var_f2cc505e.size > 0) {
        targetplayer = var_f2cc505e[randomint(var_f2cc505e.size)];
        self.spawn.var_e8f87696 = 0;
        self.spawn.response = "spawnOnPlayer";
        self.var_d690fc0b = targetplayer;
        return;
    }
    self.spawn.var_e8f87696 = 0;
    self.spawn.response = "autoSpawn";
}

// Namespace bot/bot
// Params 0, eflags: 0x6 linked
// Checksum 0xdef9dada, Offset: 0xf78
// Size: 0xac
function private function_7291a729() {
    force = getdvarint(#"hash_5c4685215b35dda2", 0);
    self setgoal(self.origin, force);
    self forceupdategoalpos();
    self init_bot();
    self bot_difficulty::assign();
    self thread function_b781f1e5();
}

// Namespace bot/bot
// Params 0, eflags: 0x6 linked
// Checksum 0xf8cf6c11, Offset: 0x1030
// Size: 0x1e
function private function_99a2ecf5() {
    self notify(#"hash_3525e39d3694d0a9");
    self.bot = undefined;
}

// Namespace bot/bot
// Params 0, eflags: 0x6 linked
// Checksum 0xbb95dfcd, Offset: 0x1058
// Size: 0x84
function private function_8481733a() {
    if (!isdefined(self.bot.difficulty) || is_true(self.bot.difficulty.var_ea800f8)) {
        self function_3ca49c4e(0.8);
        return;
    }
    self function_3ca49c4e(0.1);
}

// Namespace bot/bot
// Params 0, eflags: 0x6 linked
// Checksum 0x6b074730, Offset: 0x10e8
// Size: 0x2d0
function private function_b781f1e5() {
    self endoncallback(&function_de8f0d0e, #"death", #"hash_3525e39d3694d0a9");
    level endon(#"game_ended");
    self thread function_ef59c9e();
    self thread bot_position::startup();
    while (game.state != #"playing") {
        waitframe(1);
    }
    while (true) {
        profileNamedStart(#"");
        /#
            self function_ef4e01f();
            self function_cf9ffac7();
            self function_f76a8ac4();
            self function_4c0124cd();
        #/
        self function_a9fd7b4b();
        self function_4fb21bb4();
        self function_7d5bb412();
        self function_47281162();
        self function_ca477c1f();
        self function_1f098eb();
        self.bot.tpoint = getclosesttacpoint(self.origin);
        self function_66749735();
        self function_1b14ddcf();
        self bot_orders::think();
        self namespace_87549638::think();
        self bot_action::think();
        self bot_stance::think();
        self bot_position::think();
        self namespace_94e44221::update();
        self.bot.lastenemy = self.enemy;
        self function_fc619485();
        self function_e4055765();
        profileNamedStop();
        waitframe(1);
    }
}

// Namespace bot/bot
// Params 1, eflags: 0x6 linked
// Checksum 0xebfc7c0d, Offset: 0x13c0
// Size: 0xc4
function private function_de8f0d0e(*notifyhash) {
    self.bot.lastenemy = undefined;
    self.bot.var_b73d5099 = undefined;
    self.bot.var_538135ed = undefined;
    self.bot.var_9d03fb75 = undefined;
    self.bot.var_fad934a1 = undefined;
    self.bot.var_36df6398 = undefined;
    self function_f9a34a68();
    self bot_action::shutdown();
    self bot_orders::shutdown();
    self bot_position::shutdown();
}

// Namespace bot/bot
// Params 0, eflags: 0x6 linked
// Checksum 0x182fa00d, Offset: 0x1490
// Size: 0x5e
function private function_a9fd7b4b() {
    self.bot.flashed = self getplayerresistance(1) <= 0 && isdefined(self.flashendtime) && self.flashendtime + 1500 > gettime();
}

// Namespace bot/bot
// Params 0, eflags: 0x6 linked
// Checksum 0x469361e2, Offset: 0x14f8
// Size: 0x586
function private function_4fb21bb4() {
    if (isdefined(self.enemy) && self.bot.lastenemy !== self.enemy) {
        self.bot.var_b73d5099 = undefined;
    }
    profileNamedStart(#"");
    if (self.combatstate == #"combat_state_idle" || !isdefined(self.enemy) || !isalive(self.enemy) || self.bot.flashed || self function_ce3dfcfc(self.enemy)) {
        self.bot.enemyvisible = 0;
        self.bot.var_e8c84f98 = 0;
    } else if (isplayer(self.enemy) && self.enemy isinvehicle() && !self.enemy isremotecontrolling()) {
        vehicle = self.enemy getvehicleoccupied();
        visible = self cansee(vehicle, 250);
        self.bot.enemyvisible = visible;
        self.bot.var_e8c84f98 = visible;
    } else if (isplayer(self.enemy) && isdefined(self.enemy.prop)) {
        prop = self.enemy.prop;
        visible = self cansee(prop, 250);
        self.bot.enemyvisible = visible;
        if (visible) {
            self.bot.var_b73d5099 = gettime() + 4500;
            self.bot.var_e8c84f98 = 1;
        } else {
            var_ae19a93d = self.bot.var_b73d5099;
            self.bot.var_e8c84f98 = isdefined(var_ae19a93d) && gettime() < var_ae19a93d;
        }
        self.bot.var_e8c84f98 = visible || self cansee(prop, 4500);
    } else if (self cansee(self.enemy, 250)) {
        self.bot.enemyvisible = 1;
        self.bot.var_e8c84f98 = 1;
    } else if (isdefined(self.enemylastseentime)) {
        self.bot.enemyvisible = 0;
        self.bot.var_e8c84f98 = self.enemylastseentime + 4500 >= gettime();
    } else {
        self.bot.enemyvisible = 0;
        self.bot.var_e8c84f98 = 0;
    }
    if (!self.bot.var_e8c84f98 || self.bot.enemyvisible || !isdefined(self.enemylastseenpos)) {
        self.bot.var_a0b6205e = undefined;
    } else if (self.bot.var_e8c84f98) {
        if (!isdefined(self.bot.var_a0b6205e) || isdefined(self.enemy) && self.bot.lastenemy !== self.enemy) {
            var_32bdb70 = self.origin - self.enemylastseenpos;
            normal = vectornormalize((var_32bdb70[0], var_32bdb70[1], 0));
            self.bot.var_a0b6205e = normal;
        }
    }
    /#
        if (self should_record(#"hash_44dd65804e74042e") && isdefined(self.bot.var_a0b6205e)) {
            function_af72dbc5(self.enemylastseenpos, (0, -96, -64), (0, 96, 64), vectortoangles(self.bot.var_a0b6205e)[1], (1, 1, 0), "<unknown string>", self);
            recordcircle(self.enemylastseenpos + (0, 0, -64), 96, (1, 1, 0), "<unknown string>", self);
        }
    #/
    profileNamedStop();
}

// Namespace bot/bot
// Params 1, eflags: 0x6 linked
// Checksum 0xa6096064, Offset: 0x1a88
// Size: 0x1e0
function private function_ce3dfcfc(enemy) {
    if (!isdefined(enemy.targetname)) {
        return false;
    }
    if (enemy.targetname != "uav" && enemy.targetname != "counteruav" && enemy.targetname != "recon_plane" && enemy.targetname != "chopper_gunner" && enemy.targetname != "ac130" && enemy.targetname != "hoverjet") {
        return false;
    }
    if (is_true(enemy.leaving)) {
        return true;
    }
    if (isdefined(enemy.incoming_missile) && enemy.incoming_missile > 1) {
        return true;
    }
    weapons = self getweaponslist();
    foreach (weapon in weapons) {
        if (weapon.lockontype == #"legacy single" && self getammocount(weapon) > 0) {
            return false;
        }
    }
    return true;
}

// Namespace bot/bot
// Params 0, eflags: 0x6 linked
// Checksum 0x198f3ed7, Offset: 0x1c70
// Size: 0xb2
function private function_7d5bb412() {
    if (self.bot.enemyvisible) {
        self.bot.enemydist = distance(self.origin, self.enemy.origin);
        return;
    }
    if (self.bot.var_e8c84f98) {
        self.bot.enemydist = distance(self.origin, self.enemylastseenpos);
        return;
    }
    self.bot.enemydist = 1000;
}

// Namespace bot/bot
// Params 0, eflags: 0x6 linked
// Checksum 0x799f691c, Offset: 0x1d30
// Size: 0x9e
function private function_47281162() {
    if (!isdefined(self.enemy)) {
        self.bot.var_e9ff4b76 = 0;
        return;
    }
    dir = self.enemy.origin - self.origin;
    var_dae7049a = anglestoforward(self.enemy.angles);
    self.bot.var_e9ff4b76 = vectordot(var_dae7049a, dir) > 0;
}

// Namespace bot/bot
// Params 0, eflags: 0x6 linked
// Checksum 0x30edc671, Offset: 0x1dd8
// Size: 0x9a
function private function_ca477c1f() {
    if (!isdefined(self.enemy) || !issentient(self.enemy)) {
        self.bot.var_faa25d47 = 0;
        return;
    }
    self.bot.var_faa25d47 = self attackedrecently(self.enemy, 10) || self.enemy attackedrecently(self, 10);
}

// Namespace bot/bot
// Params 0, eflags: 0x6 linked
// Checksum 0x10069e5c, Offset: 0x1e80
// Size: 0x56
function private function_1f098eb() {
    if (self.bot.var_e8c84f98) {
        self.bot.var_494658cd = getclosesttacpoint(self.enemy.origin);
        return;
    }
    self.bot.var_494658cd = undefined;
}

// Namespace bot/bot
// Params 0, eflags: 0x6 linked
// Checksum 0x3e450b17, Offset: 0x1ee0
// Size: 0x448
function private function_66749735() {
    profileNamedStart(#"");
    if (!isdefined(level.var_934fb97)) {
        profileNamedStop();
        return;
    }
    if (self.bot.var_e8c84f98 || self.bot.flashed || self function_e8e1d88e() > 0) {
        self.bot.var_538135ed = undefined;
        profileNamedStop();
        return;
    }
    if (!(!isdefined(self.bot.var_fad934a1) || self.bot.var_fad934a1 <= gettime()) && (!isdefined(self.bot.var_9d03fb75) || self.bot.var_9d03fb75 <= gettime())) {
        self.bot.var_538135ed = undefined;
        profileNamedStop();
        return;
    }
    var_23d5b7a6 = self.bot.var_538135ed;
    if (isdefined(var_23d5b7a6) && isdefined(var_23d5b7a6.gameobject) && !is_true(var_23d5b7a6.var_8d834202) && distance2dsquared(self.origin, var_23d5b7a6.origin) <= 600 * 600) {
        if (!isdefined(var_23d5b7a6.gameobject.canuseobject) || var_23d5b7a6.gameobject [[ var_23d5b7a6.gameobject.canuseobject ]](self)) {
            profileNamedStop();
            return;
        }
    }
    tpoint = self.bot.tpoint;
    if (!isdefined(tpoint)) {
        self.bot.var_538135ed = undefined;
        profileNamedStop();
        return;
    }
    pods = [];
    ents = getentitiesinradius(self.origin, 600, 6);
    weapon = level.var_934fb97.weapon;
    foreach (ent in ents) {
        if (!isdefined(ent.item) || !isdefined(ent.team) || ent.item != weapon || is_true(ent.var_9863caa6) || !isdefined(ent.gameobject)) {
            continue;
        }
        if (ent.team != self.team && distance2dsquared(self.origin, ent.origin) > 120 * 120) {
            continue;
        }
        if (!ent.gameobject gameobjects::can_interact_with(self)) {
            continue;
        }
        if (isdefined(ent.gameobject.canuseobject) && !ent.gameobject [[ ent.gameobject.canuseobject ]](self)) {
            continue;
        }
        pods[pods.size] = ent;
    }
    if (pods.size <= 0) {
        self.bot.var_538135ed = undefined;
        profileNamedStop();
        return;
    }
    self.bot.var_538135ed = pods[randomint(pods.size)];
    profileNamedStop();
}

// Namespace bot/bot
// Params 0, eflags: 0x6 linked
// Checksum 0x4ce5d0b0, Offset: 0x2330
// Size: 0x14e
function private function_1b14ddcf() {
    if (!isdefined(level.dogtags)) {
        return;
    }
    var_ab80d451 = self getentitiesinrange(level.dogtags, 500, self.origin);
    if (var_ab80d451.size <= 0) {
        self.bot.var_36df6398 = undefined;
        return;
    }
    var_2a981f95 = arraysortclosest(var_ab80d451, self.origin);
    foreach (tag in var_2a981f95) {
        if (isdefined(tag.interactteam) && tag gameobjects::can_interact_with(self)) {
            self.bot.var_36df6398 = tag;
            return;
        }
    }
    self.bot.var_36df6398 = undefined;
}

// Namespace bot/bot
// Params 0, eflags: 0x6 linked
// Checksum 0xa8e86da1, Offset: 0x2488
// Size: 0x42
function private function_f9a34a68() {
    self.bot.var_4208fe0e = undefined;
    self.bot.var_fc10153f = undefined;
    self.bot.var_ad331541 = undefined;
    self.bot.var_510b1057 = undefined;
}

// Namespace bot/bot
// Params 0, eflags: 0x6 linked
// Checksum 0xa0f664fc, Offset: 0x24d8
// Size: 0x84e
function private function_fc619485() {
    profileNamedStart(#"");
    movedir = self move_dir();
    if (length2dsquared(movedir) <= 0 || self status_effect::function_4617032e(2)) {
        self function_f9a34a68();
        profileNamedStop();
        return;
    }
    if (!isdefined(self.bot.var_383e17de)) {
        self.bot.var_383e17de = [];
    }
    history = self.bot.var_383e17de;
    history[history.size] = self.origin;
    if (history.size < level.var_38c34301) {
        profileNamedStop();
        return;
    } else if (history.size > level.var_38c34301) {
        arrayremoveindex(history, 0);
    }
    var_ed68443 = 0;
    foreach (point in history) {
        distsq = distancesquared(self.origin, point);
        if (distsq > var_ed68443) {
            var_ed68443 = distsq;
        }
    }
    if (var_ed68443 > 5 * 5) {
        profileNamedStop();
        return;
    }
    self notify(#"hash_72f42e7610533d49");
    /#
        record3dtext(function_9e72a96(#"stuck"), self.origin, (1, 0, 1), "<unknown string>", undefined, 5);
        function_af72dbc5(self.origin, self getmaxs(), self getmins(), self.angles[1], (1, 0, 1), "<unknown string>");
        function_af72dbc5(self.origin, (64, 64, 0), (64 * -1, 64 * -1, 0), 0, (1, 0, 1), "<unknown string>");
        recordline(self.origin, self.origin + movedir * 128, (1, 0, 1), "<unknown string>");
        foreach (point in history) {
            recordstar(point, (1, 0, 1), "<unknown string>", self);
        }
    #/
    ents = getentitiesinradius(self.origin, 64);
    ents = arraysortclosest(ents, self.origin);
    foreach (ent in ents) {
        if (ent == self || vectordot(ent.origin - self.origin, movedir) <= 0) {
            continue;
        }
        /#
            function_af72dbc5(ent.origin, ent getmins(), ent getmaxs(), ent.angles[1], (1, 0, 0), "<unknown string>");
            if (isdefined(ent.targetname)) {
                record3dtext(ent.targetname, ent.origin, (1, 0, 0), "<unknown string>");
            }
        #/
        if (isdefined(ent.targetname) && ent.targetname == #"smart_cover") {
            self.bot.var_ad331541 = ent;
            break;
        }
        if (isdefined(ent.script_noteworthy) && ent.script_noteworthy == #"care_package" && ent isusable()) {
            self.bot.var_510b1057 = ent;
            break;
        }
    }
    if (isdefined(self.bot.var_510b1057) || isdefined(self.bot.var_ad331541)) {
        profileNamedStop();
        return;
    }
    eye = self.origin + (0, 0, self getplayerviewheight());
    if (!isdefined(self.bot.var_8e60176d)) {
        self.bot.var_8e60176d = 0;
    }
    var_c40ef0b0 = anglestoforward(self getplayerangles() + (0, self.bot.var_8e60176d, 0));
    self.bot.var_8e60176d = (self.bot.var_8e60176d + 36) % 360;
    end = eye + var_c40ef0b0 * 20;
    trace = bullettrace(eye, end, 0, self);
    surfacetype = trace[#"surfacetype"];
    if (isdefined(surfacetype) && surfacetype == #"glass" && !isdefined(trace[#"entity"])) {
        self notify(#"glass", {#position:trace[#"position"]});
        profileNamedStop();
        return;
    }
    var_901218a3 = self.origin + (0, 0, 16);
    glassradiusdamage(var_901218a3, 64, 3000, 3000);
    /#
        recordcircle(var_901218a3, 64, (1, 0, 0), "<unknown string>", self);
    #/
    profileNamedStop();
}

// Namespace bot/bot
// Params 0, eflags: 0x6 linked
// Checksum 0x53ea56f5, Offset: 0x2d30
// Size: 0xba
function private function_ef59c9e() {
    self endon(#"death", #"hash_3525e39d3694d0a9");
    level endon(#"game_ended");
    self.bot.glasstouch = undefined;
    while (true) {
        result = self waittill(#"glass");
        self.bot.glasstouch = result.position;
        wait(0.2);
        self.bot.glasstouch = undefined;
    }
}

// Namespace bot/bot
// Params 0, eflags: 0x2 linked
// Checksum 0xd1e93633, Offset: 0x2df8
// Size: 0x122
function init_bot() {
    self.bot = {};
    self.bot.var_458ddbc0 = [];
    self.maxsightdistsqrd = 0 * 0;
    self.highlyawareradius = 96;
    self.fovcosine = fov_angle_to_cosine(179);
    self.fovcosinebusy = fov_angle_to_cosine(110);
    self botsetlooksensitivity(1, 1);
    self function_4f0b9564(7.5, 15);
    self function_3ca49c4e(1);
    self.goalradius = 512;
}

// Namespace bot/bot
// Params 1, eflags: 0x2 linked
// Checksum 0x5f0bcf52, Offset: 0x2f28
// Size: 0x42
function fov_angle_to_cosine(fovangle = 0) {
    if (fovangle >= 180) {
        return 0;
    }
    return cos(fovangle / 2);
}

// Namespace bot/bot
// Params 0, eflags: 0x2 linked
// Checksum 0x2de518a0, Offset: 0x2f78
// Size: 0x82
function move_dir() {
    move = self getnormalizedmovement();
    fwd = anglestoforward(self.angles);
    right = anglestoright(self.angles);
    return fwd * move[0] + right * move[1];
}

// Namespace bot/bot
// Params 1, eflags: 0x0
// Checksum 0x3daa762b, Offset: 0x3008
// Size: 0x112
function function_f0c35734(trigger) {
    assert(isbot(self));
    assert(isdefined(trigger));
    radius = self getpathfindingradius();
    height = self function_6a9ae71();
    heightoffset = (0, 0, height * -1 / 2);
    var_e790dc87 = (radius, radius, height / 2);
    obb = ai::function_470c0597(trigger.origin + heightoffset, trigger.maxs + var_e790dc87, trigger.angles);
    return obb;
}

// Namespace bot/bot
// Params 1, eflags: 0x0
// Checksum 0x3010326e, Offset: 0x3128
// Size: 0x142
function function_52947b70(trigger) {
    assert(isbot(self));
    assert(isstruct(trigger));
    radius = self getpathfindingradius();
    height = self function_6a9ae71();
    heightoffset = (0, 0, height * -1 / 2);
    var_e790dc87 = (radius, radius, height / 2);
    maxs = (trigger.script_width, trigger.script_length, trigger.script_height);
    obb = ai::function_470c0597(trigger.origin + heightoffset, maxs + var_e790dc87, trigger.angles);
    return obb;
}

// Namespace bot/bot
// Params 0, eflags: 0x6 linked
// Checksum 0x1e7a3ab5, Offset: 0x3278
// Size: 0x414
function private function_e4055765() {
    var_458ddbc0 = self.bot.var_458ddbc0;
    foreach (bit, val in var_458ddbc0) {
        self bottapbutton(bit);
        if (val > 1) {
            var_458ddbc0[bit] = undefined;
        }
    }
    if (isshipbuild()) {
        return;
    }
    if (getdvarint(#"bot_forcefire", 0)) {
        weapon = self getcurrentweapon();
        if (weapon.firetype == #"full auto" || weapon.firetype == #"auto burst" || weapon.firetype == #"minigun" || !self attackbuttonpressed()) {
            self bottapbutton(0);
            if (weapon.dualwieldweapon != level.weaponnone) {
                self bottapbutton(11);
            }
        } else {
            self botreleasebutton(0);
            if (weapon.dualwieldweapon != level.weaponnone) {
                self botreleasebutton(11);
            }
        }
    }
    if (getdvarint(#"bot_forcemelee", 0)) {
        if (!self ismeleeing()) {
            self bottapbutton(2);
        }
    }
    if (getdvarint(#"bot_forcestand", 0)) {
        self botreleasebutton(9);
        self botreleasebutton(8);
        return;
    }
    if (getdvarint(#"bot_forcecrouch", 0)) {
        self bottapbutton(9);
        self botreleasebutton(8);
        return;
    }
    if (getdvarint(#"bot_forceprone", 0)) {
        self botreleasebutton(9);
        self bottapbutton(8);
        return;
    }
    if (getdvarint(#"hash_3049c8687f66a426", 0)) {
        self botreleasebutton(9);
        self botreleasebutton(8);
        if (self isonground() && !self jumpbuttonpressed()) {
            self bottapbutton(10);
        }
    }
}

// Namespace bot/bot
// Params 4, eflags: 0x2 linked
// Checksum 0xdae165f6, Offset: 0x3698
// Size: 0xb0
function add_fixed_spawn_bot(team, origin, yaw, roleindex = undefined) {
    bot = add_bot(team);
    if (isdefined(bot)) {
        if (isdefined(roleindex) && roleindex >= 0) {
            bot.var_29b433bd = int(roleindex);
        }
        bot.ignoreall = 1;
        bot function_bab12815(origin, yaw);
    }
    return bot;
}

// Namespace bot/bot
// Params 2, eflags: 0x2 linked
// Checksum 0xa3070bb9, Offset: 0x3750
// Size: 0x7e
function function_bab12815(origin, yaw) {
    if (!isstruct(self.bot)) {
        return;
    }
    self.pers[#"hash_63201776738fc052"] = origin;
    self.pers[#"hash_777e40938cf10f50"] = (0, yaw, 0);
    self.bot.var_6af67fd1 = 1;
}

// Namespace bot/bot
// Params 1, eflags: 0x0
// Checksum 0xafff415, Offset: 0x37d8
// Size: 0x3a
function function_39d30bb6(forcegoal) {
    if (!isstruct(self.bot)) {
        return;
    }
    self.bot.var_7280cc1b = forcegoal;
}

// Namespace bot/bot
// Params 2, eflags: 0x2 linked
// Checksum 0x5e41c72b, Offset: 0x3820
// Size: 0x66
function function_bcc79b86(vehicle, seatindex = undefined) {
    if (!isstruct(self.bot)) {
        return;
    }
    self.bot.var_22989bf = vehicle;
    self.bot.var_a3d475e5 = seatindex;
}

// Namespace bot/bot
// Params 0, eflags: 0x6 linked
// Checksum 0x21df3191, Offset: 0x3890
// Size: 0x14c
function private fixed_spawn_override() {
    self endon(#"death", #"hash_6280ac8ed281ce3c");
    waittillframeend();
    if (!isstruct(self.bot)) {
        return;
    }
    origin = self.pers[#"hash_63201776738fc052"];
    angles = self.pers[#"hash_777e40938cf10f50"];
    forcegoal = isdefined(self.bot.var_7280cc1b) ? self.bot.var_7280cc1b : 1;
    if (isdefined(origin)) {
        self.ignoreall = 1;
        self dontinterpolate();
        self setorigin(origin);
        if (isdefined(angles)) {
            self setplayerangles(angles);
        }
        self setgoal(origin, forcegoal);
    }
    self function_50c012c9();
}

// Namespace bot/bot
// Params 0, eflags: 0x6 linked
// Checksum 0x93534128, Offset: 0x39e8
// Size: 0x170
function private function_50c012c9() {
    if (!isstruct(self.bot)) {
        return;
    }
    vehicle = self.bot.var_22989bf;
    seatindex = self.bot.var_a3d475e5;
    if (!isvehicle(vehicle)) {
        return;
    }
    if (isint(seatindex) && !vehicle isvehicleseatoccupied(seatindex)) {
        vehicle usevehicle(self, seatindex);
        return;
    }
    for (i = 0; i < 11; i++) {
        if (vehicle function_dcef0ba1(i)) {
            var_3693c73b = vehicle function_defc91b2(i);
            if (isdefined(var_3693c73b) && var_3693c73b >= 0 && !vehicle isvehicleseatoccupied(i)) {
                vehicle usevehicle(self, i);
                break;
            }
        }
    }
}

/#

    // Namespace bot/bot
    // Params 1, eflags: 0x0
    // Checksum 0x790a6061, Offset: 0x3b60
    // Size: 0xba
    function should_record(dvarstr) {
        if (getdvarint(#"recorder_enablerec", 0) < 1 || getdvarint(dvarstr, 0) <= 0) {
            return 0;
        }
        botnum = getdvarint(#"hash_457b3d0b71e0fd8a", 0);
        if (botnum < 0) {
            return 1;
        }
        return self getentitynumber() == botnum;
    }

    // Namespace bot/bot
    // Params 3, eflags: 0x0
    // Checksum 0x897307f1, Offset: 0x3c28
    // Size: 0x64
    function record_text(text, textcolor, dvarstr) {
        if (self should_record(dvarstr)) {
            record3dtext(text, self.origin, textcolor, "<unknown string>", self, 0.5);
        }
    }

    // Namespace bot/bot
    // Params 0, eflags: 0x4
    // Checksum 0x3c1e250a, Offset: 0x3c98
    // Size: 0xdc
    function private function_ef4e01f() {
        if (!self should_record(#"hash_1919da6e381816f7")) {
            return;
        }
        if (!isdefined(self.bot.difficulty)) {
            record3dtext(function_9e72a96(#"hash_34d3ed856dad1a43"), self.origin, (1, 1, 1), "<unknown string>", self, 0.5);
            return;
        }
        record3dtext(self.bot.difficulty.name, self.origin, (1, 1, 1), "<unknown string>", self, 0.5);
    }

    // Namespace bot/bot
    // Params 0, eflags: 0x4
    // Checksum 0x4590c393, Offset: 0x3d80
    // Size: 0xc4
    function private function_cf9ffac7() {
        if (!self should_record(#"hash_44dd65804e74042e") && !self should_record(#"hash_15e4429f6d6deb52")) {
            return;
        }
        color = function_5d55f3c9(self.combatstate);
        record3dtext(function_9e72a96(self.combatstate), self.origin, color, "<unknown string>", self, 0.5);
    }

    // Namespace bot/bot
    // Params 1, eflags: 0x4
    // Checksum 0xac66014, Offset: 0x3e50
    // Size: 0x90
    function private function_5d55f3c9(combatstate) {
        switch (combatstate) {
        case #"combat_state_in_combat":
            return (1, 0, 0);
        case #"combat_state_has_visible_enemy":
            return (1, 0.5, 0);
        case #"combat_state_aware_of_enemies":
            return (1, 1, 0);
        case #"combat_state_idle":
            return (0, 1, 0);
        }
        return (1, 1, 1);
    }

    // Namespace bot/bot
    // Params 0, eflags: 0x4
    // Checksum 0x5220672b, Offset: 0x3ee8
    // Size: 0xdc
    function private function_f76a8ac4() {
        if (!self should_record(#"bot_recordgoal") || !isdefined(self get_revive_target())) {
            return;
        }
        target = self get_revive_target().origin;
        recordline(self.origin, target, (0, 1, 1), "<unknown string>", self);
        recordcircle(target, 32, (0, 1, 1), "<unknown string>", self);
    }

    // Namespace bot/bot
    // Params 0, eflags: 0x4
    // Checksum 0x6c79b020, Offset: 0x3fd0
    // Size: 0x314
    function private function_4c0124cd() {
        if (!self should_record(#"hash_609739e47080f375")) {
            return;
        }
        sessionmode = currentsessionmode();
        characterindex = self getspecialistindex();
        assetname = function_ac0419ac(characterindex, sessionmode);
        displayname = makelocalizedstring(getcharacterdisplayname(characterindex, sessionmode));
        characterfields = getcharacterfields(characterindex, sessionmode);
        rolefields = getplayerrolefields(characterindex, sessionmode);
        var_270eb160 = is_true(rolefields.var_ae8ab113) ? (0, 1, 0) : (1, 0, 0);
        record3dtext(characterindex + "<unknown string>" + function_9e72a96(assetname) + "<unknown string>" + displayname, self.origin, var_270eb160, "<unknown string>", self);
        factioncolor = (1, 1, 1);
        var_99dffb44 = isdefined(characterfields.superfaction) ? characterfields.superfaction : "<unknown string>";
        teamfaction = undefined;
        var_501b8f06 = "<unknown string>";
        if (is_true(level.var_d1455682.var_67bfde2a)) {
            teamfaction = teams::function_20cfd8b5(self.team);
        }
        if (isdefined(teamfaction.superfaction)) {
            var_501b8f06 = teamfaction.superfaction;
            factioncolor = var_501b8f06 == var_99dffb44 ? (0, 1, 0) : (1, 0, 0);
        }
        record3dtext("<unknown string>" + function_9e72a96(var_99dffb44), self.origin, factioncolor, "<unknown string>", self);
        record3dtext(function_9e72a96(self.team) + "<unknown string>" + function_9e72a96(var_501b8f06), self.origin, factioncolor, "<unknown string>", self);
    }

    // Namespace bot/bot
    // Params 3, eflags: 0x40
    // Checksum 0xdd5f46cf, Offset: 0x42f0
    // Size: 0xdc
    function map_color(val, maxval, ...) {
        if (val <= 0) {
            return vararg[0];
        } else if (val >= maxval) {
            return vararg[vararg.size - 1];
        }
        var_c0dabf48 = val * vararg.size / maxval;
        var_c0dabf48 -= 1;
        colorindex = int(var_c0dabf48);
        colorfrac = var_c0dabf48 - colorindex;
        return vectorlerp(vararg[colorindex], vararg[colorindex + 1], colorfrac);
    }

#/

// Namespace bot/bot
// Params 0, eflags: 0x2 linked
// Checksum 0x52bd8812, Offset: 0x43d8
// Size: 0x32
function function_e5d7f472() {
    return isdefined(self.bot.revivetarget) && isdefined(self.bot.revivetarget.revivetrigger);
}

// Namespace bot/bot
// Params 0, eflags: 0x2 linked
// Checksum 0x75032ee8, Offset: 0x4418
// Size: 0x12
function get_revive_target() {
    return self.bot.revivetarget;
}

// Namespace bot/bot
// Params 0, eflags: 0x2 linked
// Checksum 0x2947b1ee, Offset: 0x4438
// Size: 0x32
function function_85bfe6d3() {
    if (isdefined(self.bot.revivetarget)) {
        return self.bot.revivetarget.revivetrigger;
    }
    return undefined;
}

// Namespace bot/bot
// Params 1, eflags: 0x2 linked
// Checksum 0x417903c8, Offset: 0x4478
// Size: 0x1e
function set_revive_target(target) {
    self.bot.revivetarget = target;
}

// Namespace bot/bot
// Params 0, eflags: 0x2 linked
// Checksum 0xa44fdc4f, Offset: 0x44a0
// Size: 0x12
function clear_revive_target() {
    self.bot.revivetarget = undefined;
}

