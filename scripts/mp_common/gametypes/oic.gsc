// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\player\player_utils.gsc;
#using scripts\abilities\ability_util.gsc;
#using scripts\mp_common\gametypes\round.gsc;
#using scripts\mp_common\util.gsc;
#using scripts\mp_common\player\player_loadout.gsc;
#using scripts\mp_common\gametypes\globallogic_utils.gsc;
#using scripts\mp_common\gametypes\globallogic_score.gsc;
#using script_1cc417743d7c262d;
#using scripts\mp_common\gametypes\globallogic.gsc;
#using scripts\mp_common\gametypes\match.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\player\player_loadout.gsc;
#using script_44b0b8420eabacad;
#using scripts\core_common\spawning_shared.gsc;
#using script_335d0650ed05d36d;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\hostmigration_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace oic;

// Namespace oic/gametype_init
// Params 1, eflags: 0x20
// Checksum 0xe902c1ab, Offset: 0x2c8
// Size: 0x2cc
function event_handler[gametype_init] main(*eventstruct) {
    globallogic::init();
    level.pointsperweaponkill = getgametypesetting("pointsPerWeaponKill") * 10;
    level.pointspermeleekill = getgametypesetting("pointsPerMeleeKill") * 10;
    level.pointsforsurvivalbonus = getgametypesetting("pointsForSurvivalBonus") * 10;
    level.var_18823aed = 60;
    util::registerscorelimit(0, 50000);
    level.onstartgametype = &onstartgametype;
    level.onspawnplayer = &onspawnplayer;
    level.givecustomloadout = &givecustomloadout;
    level.onplayerdamage = &onplayerdamage;
    level.onendgame = &onendgame;
    player::function_cf3aa03d(&onplayerkilled);
    callback::on_connect(&function_1ccf32e3);
    callback::on_disconnect(&onplayerdisconnect);
    oic_perks = [];
    if (!isdefined(oic_perks)) {
        oic_perks = [];
    } else if (!isarray(oic_perks)) {
        oic_perks = array(oic_perks);
    }
    oic_perks[oic_perks.size] = "specialty_sprint";
    if (!isdefined(oic_perks)) {
        oic_perks = [];
    } else if (!isarray(oic_perks)) {
        oic_perks = array(oic_perks);
    }
    oic_perks[oic_perks.size] = "specialty_slide";
    level.oic_perks = oic_perks;
    spawning::addsupportedspawnpointtype("ffa");
    function_180dbd15();
    level.takelivesondeath = 1;
    clientfield::register_clientuimodel("hudItems.alivePlayerCount", 1, 4, "int", 1);
}

// Namespace oic/oic
// Params 0, eflags: 0x0
// Checksum 0x378746bb, Offset: 0x5a0
// Size: 0x28
function onplayerdisconnect() {
    function_1ccf32e3();
    level notify(#"player_disconnected");
}

// Namespace oic/oic
// Params 0, eflags: 0x4
// Checksum 0xaaff713b, Offset: 0x5d0
// Size: 0x110
function private function_1ccf32e3() {
    count = getplayersleft().size;
    players = getplayers();
    foreach (player in players) {
        if (!isdefined(player)) {
            continue;
        }
        if (isalive(player)) {
            player clientfield::set_player_uimodel("hudItems.alivePlayerCount", count - 1);
            continue;
        }
        player clientfield::set_player_uimodel("hudItems.alivePlayerCount", count);
    }
}

// Namespace oic/oic
// Params 0, eflags: 0x0
// Checksum 0x36c8c72c, Offset: 0x6e8
// Size: 0x246
function function_180dbd15() {
    loadouts = getscriptbundle(#"hash_70f762f93571635a");
    if (!isdefined(loadouts)) {
        assertmsg("<unknown string>");
        return;
    }
    var_c669d611 = isdefined(loadouts.var_4509f8e) ? loadouts.var_4509f8e : [];
    if (var_c669d611.size == 0) {
        assertmsg("<unknown string>");
        return;
    }
    tiers = isdefined(var_c669d611[0].tiers) ? var_c669d611[0].tiers : [];
    if (tiers.size == 0) {
        assertmsg("<unknown string>");
        return;
    }
    weaponoptions = isdefined(tiers[0].options) ? tiers[0].options : [];
    if (weaponoptions.size == 0) {
        assertmsg("<unknown string>");
        return;
    }
    weaponoptions = array::randomize(weaponoptions);
    foreach (weaponoption in weaponoptions) {
        if (isdefined(weaponoption.weapon)) {
            level.var_bf82f6b0 = weaponoption.weapon;
            break;
        }
    }
    if (!isdefined(level.var_bf82f6b0)) {
        assertmsg("<unknown string>");
        return;
    }
}

// Namespace oic/oic
// Params 10, eflags: 0x0
// Checksum 0xc1bb88e9, Offset: 0x938
// Size: 0xb4
function onplayerdamage(*einflictor, *eattacker, idamage, *idflags, smeansofdeath, *weapon, *vpoint, *vdir, *shitloc, *psoffsettime) {
    if (psoffsettime == "MOD_PISTOL_BULLET" || psoffsettime == "MOD_RIFLE_BULLET" || psoffsettime == "MOD_HEAD_SHOT" || psoffsettime == "MOD_MELEE_WEAPON_BUTT") {
        shitloc = self.maxhealth + 1;
    }
    return shitloc;
}

// Namespace oic/oic
// Params 0, eflags: 0x0
// Checksum 0x6c8b9c5, Offset: 0x9f8
// Size: 0x3d0
function givecustomloadout() {
    loadout::init_player(1);
    loadout::function_f436358b(self.curclass);
    actionslot3 = getdvarint(#"hash_449fa75f87a4b5b4", 0) < 0 ? "flourish_callouts" : "ping_callouts";
    self setactionslot(3, actionslot3);
    actionslot4 = getdvarint(#"hash_23270ec9008cb656", 0) < 0 ? "scorestreak_wheel" : "sprays_boasts";
    self setactionslot(4, actionslot4);
    weapon = level.var_bf82f6b0;
    weapon.var_a2e7031d = 1;
    self giveweapon(weapon);
    self switchtoweapon(weapon);
    clipammo = 1;
    if (isdefined(self.pers[#"clip_ammo"])) {
        clipammo = self.pers[#"clip_ammo"];
        self.pers[#"clip_ammo"] = undefined;
    }
    self setweaponammoclip(weapon, clipammo);
    stockammo = 0;
    if (isdefined(self.pers[#"stock_ammo"])) {
        stockammo = self.pers[#"stock_ammo"];
        self.pers[#"stock_ammo"] = undefined;
    }
    self setweaponammostock(weapon, stockammo);
    self setspawnweapon(weapon);
    self giveperks();
    e_whippings = isdefined(getgametypesetting(#"hash_4ca06c610b5d53bd")) ? getgametypesetting(#"hash_4ca06c610b5d53bd") : 0;
    if (!e_whippings) {
        secondaryoffhand = getweapon(#"gadget_health_regen");
        secondaryoffhandcount = 1;
        self giveweapon(secondaryoffhand);
        self setweaponammoclip(secondaryoffhand, secondaryoffhandcount);
        self switchtooffhand(secondaryoffhand);
        loadout = self loadout::get_loadout_slot("specialgrenade");
        loadout.weapon = secondaryoffhand;
        loadout.count = secondaryoffhandcount;
        self ability_util::function_36a15b60(secondaryoffhand);
    }
    self disableweaponpickup();
    self loadout::function_6573eeeb();
    return weapon;
}

// Namespace oic/oic
// Params 0, eflags: 0x0
// Checksum 0xad768720, Offset: 0xdd0
// Size: 0xc0
function giveperks() {
    self clearperks();
    foreach (perkname in level.oic_perks) {
        if (!self hasperk(perkname)) {
            self setperk(perkname);
        }
    }
}

// Namespace oic/oic
// Params 0, eflags: 0x0
// Checksum 0xf745648, Offset: 0xe98
// Size: 0x3c
function onstartgametype() {
    allowed[0] = "oic";
    level.displayroundendtext = 0;
    level thread watchelimination();
}

// Namespace oic/oic
// Params 1, eflags: 0x0
// Checksum 0x472d3de0, Offset: 0xee0
// Size: 0xb4
function onspawnplayer(predictedspawn) {
    if (!level.inprematchperiod) {
        spawning::function_7a87efaa();
    }
    spawning::onspawnplayer(predictedspawn);
    clientfield::set_player_uimodel("hudItems.playerLivesCount", level.numlives - self.var_a7d7e50a);
    if (self.pers[#"lives"] == 1) {
        self thread function_1929a66c();
    }
    function_1ccf32e3();
}

// Namespace oic/oic
// Params 0, eflags: 0x0
// Checksum 0xb435fee, Offset: 0xfa0
// Size: 0x7c
function function_1929a66c() {
    level endon(#"game_ended");
    wait(0.5);
    if (!isplayer(self) || !isalive(self)) {
        return;
    }
    self globallogic_audio::leader_dialog_on_player("oicLastLife");
}

// Namespace oic/oic
// Params 1, eflags: 0x0
// Checksum 0x216bc5fc, Offset: 0x1028
// Size: 0x3c
function onendgame(*var_c1e98979) {
    player = round::function_b5f4c9d8();
    match::set_winner(player);
}

// Namespace oic/oic
// Params 0, eflags: 0x0
// Checksum 0xa2dcd2df, Offset: 0x1070
// Size: 0xfc
function saveoffallplayersammo() {
    wait(1);
    for (playerindex = 0; playerindex < level.players.size; playerindex++) {
        player = level.players[playerindex];
        if (!isdefined(player)) {
            continue;
        }
        if (player.pers[#"lives"] == 0) {
            continue;
        }
        currentweapon = player getcurrentweapon();
        player.pers[#"clip_ammo"] = player getweaponammoclip(currentweapon);
        player.pers[#"stock_ammo"] = player getweaponammostock(currentweapon);
    }
}

// Namespace oic/oic
// Params 1, eflags: 0x0
// Checksum 0x776438bc, Offset: 0x1178
// Size: 0x4a
function isplayereliminated(player) {
    return isdefined(player.pers[#"lives"]) && player.pers[#"lives"] <= 0;
}

// Namespace oic/oic
// Params 1, eflags: 0x0
// Checksum 0xe578763f, Offset: 0x11d0
// Size: 0x22
function isplayerspectating(player) {
    return player util::is_spectating();
}

// Namespace oic/oic
// Params 0, eflags: 0x0
// Checksum 0x7f224cf8, Offset: 0x1200
// Size: 0xaa
function getplayersleft() {
    playersremaining = [];
    for (playerindex = 0; playerindex < level.players.size; playerindex++) {
        player = level.players[playerindex];
        if (!isdefined(player)) {
            continue;
        }
        if (!isplayereliminated(player) && !isplayerspectating(player)) {
            playersremaining[playersremaining.size] = player;
        }
    }
    return playersremaining;
}

// Namespace oic/oic
// Params 9, eflags: 0x0
// Checksum 0xcde51123, Offset: 0x12b8
// Size: 0x2a4
function onplayerkilled(*einflictor, attacker, *idamage, smeansofdeath, weapon, *vdir, *shitloc, *psoffsettime, *deathanimduration) {
    if (isdefined(shitloc) && isplayer(shitloc) && self != shitloc) {
        deathanimduration = level.var_bf82f6b0;
        attackerammo = shitloc getammocount(deathanimduration);
        victimammo = self getammocount(deathanimduration);
        if (attackerammo < 3) {
            shitloc giveammo(1);
        }
        shitloc playlocalsound("mpl_oic_bullet_pickup");
        if (psoffsettime == "MOD_MELEE" || psoffsettime == "MOD_MELEE_WEAPON_BUTT") {
            shitloc globallogic_score::givepointstowin(level.pointspermeleekill);
            if (attackerammo > 0) {
                scoreevents::processscoreevent(#"knife_with_ammo_oic", shitloc, self, deathanimduration);
            }
            if (victimammo > attackerammo) {
                scoreevents::processscoreevent(#"kill_enemy_with_more_ammo_oic", shitloc, self, deathanimduration);
            }
        } else {
            shitloc globallogic_score::givepointstowin(level.pointsperweaponkill);
            if (victimammo > attackerammo + 1) {
                scoreevents::processscoreevent(#"kill_enemy_with_more_ammo_oic", shitloc, self, deathanimduration);
            }
        }
        if (self.pers[#"lives"] == 0) {
            scoreevents::processscoreevent(#"eliminated_enemy", shitloc, self, deathanimduration);
        }
    }
    if (isdefined(self) && self.pers[#"lives"] == 0) {
        self thread function_864bcb5c();
    }
    function_1ccf32e3();
}

// Namespace oic/oic
// Params 0, eflags: 0x4
// Checksum 0x701b823e, Offset: 0x1568
// Size: 0x74
function private function_864bcb5c() {
    self luinotifyevent(#"hash_30d8b0d7b1498f03", 1, 1);
    self function_665f1a43();
    if (isdefined(self)) {
        self luinotifyevent(#"hash_30d8b0d7b1498f03", 1, 0);
    }
}

// Namespace oic/oic
// Params 0, eflags: 0x0
// Checksum 0x3756bc7e, Offset: 0x15e8
// Size: 0x5e
function function_665f1a43() {
    level endon(#"game_ended");
    if (!isdefined(self)) {
        return;
    }
    self waittilltimeout(5, #"begin_killcam", #"spawned", #"joined_spectator");
}

// Namespace oic/oic
// Params 1, eflags: 0x0
// Checksum 0xf111be3, Offset: 0x1650
// Size: 0x6c
function giveammo(amount) {
    currentweapon = self getcurrentweapon();
    clipammo = self getweaponammoclip(currentweapon);
    self setweaponammoclip(currentweapon, clipammo + amount);
}

// Namespace oic/oic
// Params 0, eflags: 0x0
// Checksum 0xffc2176, Offset: 0x16c8
// Size: 0x56
function shouldreceivesurvivorbonus() {
    if (isalive(self)) {
        return true;
    }
    if (self.hasspawned && self.pers[#"lives"] > 0) {
        return true;
    }
    return false;
}

// Namespace oic/oic
// Params 0, eflags: 0x0
// Checksum 0x380adb32, Offset: 0x1728
// Size: 0x1e8
function watchelimination() {
    level endon(#"game_ended");
    for (;;) {
        level waittill(#"player_eliminated", #"player_disconnected");
        players = level.players;
        for (i = 0; i < players.size; i++) {
            if (isdefined(players[i]) && players[i] shouldreceivesurvivorbonus()) {
                players[i].pers[#"survived"]++;
                players[i].survived = players[i].pers[#"survived"];
                scoreevents::processscoreevent(#"survivor", players[i]);
                players[i] globallogic_score::givepointstowin(level.pointsforsurvivalbonus);
            }
        }
        survivors = getplayersleft();
        if (survivors.size == 2) {
            level thread function_ce7ffccb();
            continue;
        }
        if (survivors.size < 2) {
            winner = globallogic_score::function_15683f39();
            round::set_winner(winner);
            match::set_winner(winner);
            thread globallogic::end_round(6);
        }
    }
}

// Namespace oic/oic
// Params 1, eflags: 0x4
// Checksum 0x289638ca, Offset: 0x1918
// Size: 0x134
function private function_ce7ffccb(winner) {
    if (globallogic_utils::gettimeremaining() <= int(level.var_18823aed * 1000)) {
        return;
    }
    if (level.var_18823aed > 0) {
        level.timelimitoverride = 1;
        setgameendtime(gettime() + int(level.var_18823aed * 1000));
        hostmigration::waitlongdurationwithgameendtimeupdate(level.var_18823aed);
        if (game.state != #"playing") {
            return;
        }
    }
    winner = globallogic_score::function_15683f39();
    round::set_winner(winner);
    match::set_winner(winner);
    thread globallogic::end_round(2);
}

