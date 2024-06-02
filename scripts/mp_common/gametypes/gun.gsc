// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\draft.gsc;
#using scripts\abilities\ability_util.gsc;
#using scripts\weapons\weapon_utils.gsc;
#using scripts\mp_common\util.gsc;
#using scripts\mp_common\player\player_utils.gsc;
#using scripts\mp_common\player\player_loadout.gsc;
#using scripts\mp_common\gametypes\round.gsc;
#using scripts\mp_common\gametypes\match.gsc;
#using scripts\mp_common\gametypes\globallogic_spawn.gsc;
#using scripts\mp_common\gametypes\globallogic_score.gsc;
#using script_1cc417743d7c262d;
#using scripts\mp_common\gametypes\globallogic.gsc;
#using scripts\core_common\system_shared.gsc;
#using script_7a8059ca02b7b09e;
#using scripts\core_common\player\player_loadout.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\sound_shared.gsc;
#using script_44b0b8420eabacad;
#using scripts\core_common\spawning_shared.gsc;
#using script_335d0650ed05d36d;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\rank_shared.gsc;
#using scripts\core_common\persistence_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace gun;

// Namespace gun/gun
// Params 0, eflags: 0x1
// Checksum 0xc0505651, Offset: 0x278
// Size: 0x4c
function autoexec ignore_systems() {
    if (util::get_game_type() === #"hash_451623a99cfee5d9") {
        system::ignore(#"killstreaks");
    }
}

// Namespace gun/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x231628de, Offset: 0x2d0
// Size: 0x27c
function event_handler[gametype_init] main(*eventstruct) {
    globallogic::init();
    level.onstartgametype = &onstartgametype;
    level.onspawnplayer = &onspawnplayer;
    player::function_cf3aa03d(&onplayerkilled);
    level.onendgame = &onendgame;
    level.var_a962eeb6 = &function_486a8395;
    callback::on_connect(&onconnect);
    level.givecustomloadout = &givecustomloadout;
    level.setbacksperdemotion = getgametypesetting(#"setbacks");
    level.inactivitykick = 120;
    level.var_f46d16f0 = 1;
    level.var_48ca10f7 = 1;
    level.var_ce802423 = 1;
    level.var_34842a14 = 1;
    level.var_be0e9c3e = "taco_music";
    if (level.gametype === #"hash_451623a99cfee5d9") {
        game.musicset = "_rgg";
        level.var_be0e9c3e += game.musicset;
    }
    setdvar(#"hash_137c8b2b96ac6c72", 0.2);
    setdvar(#"compassradarpingfadetime", 0.75);
    spawning::addsupportedspawnpointtype("ffa");
    level.gunprogression = [];
    gunlist = getgametypesetting(#"gunselection");
    function_9ffa772e(gunlist);
    /#
        level thread init_devgui();
    #/
}

// Namespace gun/gun
// Params 0, eflags: 0x0
// Checksum 0x75a71193, Offset: 0x558
// Size: 0x1c
function onconnect() {
    self function_cf465ad9(0);
}

// Namespace gun/gun
// Params 0, eflags: 0x0
// Checksum 0x15a62b5b, Offset: 0x580
// Size: 0x70
function onstartgametype() {
    level.gungamekillscore = rank::getscoreinfovalue("kill_gun");
    util::registerscorelimit(level.gunprogression.size * level.gungamekillscore, level.gunprogression.size * level.gungamekillscore);
    level.displayroundendtext = 0;
}

// Namespace gun/gun
// Params 0, eflags: 0x0
// Checksum 0x7ecac468, Offset: 0x5f8
// Size: 0x184
function inactivitykick() {
    self endon(#"disconnect", #"death");
    if (sessionmodeisprivate()) {
        return;
    }
    if (level.inactivitykick == 0) {
        return;
    }
    while (level.inactivitykick > self.timeplayed[#"total"]) {
        wait(1);
    }
    if (self.pers[#"participation"] == 0 && self.time_played_moving < 1) {
        globallogic::gamehistoryplayerkicked();
        kick(self getentitynumber(), "GAME/DROPPEDFORINACTIVITY");
    }
    if (self.pers[#"participation"] == 0 && self.timeplayed[#"total"] > 60) {
        globallogic::gamehistoryplayerkicked();
        kick(self getentitynumber(), "GAME/DROPPEDFORINACTIVITY");
    }
}

// Namespace gun/gun
// Params 1, eflags: 0x0
// Checksum 0x5b568916, Offset: 0x788
// Size: 0x74
function onspawnplayer(predictedspawn) {
    if (!level.inprematchperiod) {
        spawning::function_7a87efaa();
    }
    spawning::onspawnplayer(predictedspawn);
    self thread infiniteammo();
    self thread inactivitykick();
}

// Namespace gun/gun
// Params 9, eflags: 0x0
// Checksum 0xe4a24031, Offset: 0x808
// Size: 0x254
function onplayerkilled(*einflictor, attacker, *idamage, smeansofdeath, weapon, *vdir, *shitloc, *psoffsettime, *deathanimduration) {
    spawning::function_7a87efaa();
    if (psoffsettime == "MOD_SUICIDE" || psoffsettime == "MOD_TRIGGER_HURT") {
        self thread demoteplayer();
        return;
    }
    if (isdefined(shitloc) && isplayer(shitloc)) {
        if (shitloc == self) {
            self thread demoteplayer(shitloc);
            return;
        }
        if (isdefined(shitloc.lastpromotiontime) && shitloc.lastpromotiontime + 3000 > gettime()) {
            scoreevents::processscoreevent(#"kill_in_3_seconds_gun", shitloc, self, deathanimduration);
        }
        if (weapons::ismeleemod(psoffsettime) || psoffsettime === "MOD_EXECUTION") {
            scoreevents::processscoreevent(#"humiliation_gun", shitloc, self, deathanimduration);
            if (globallogic_score::gethighestscoringplayer() === self) {
                scoreevents::processscoreevent(#"melee_leader_gun", shitloc, self, deathanimduration);
            }
            self thread demoteplayer(shitloc);
        }
        attackerweapon = shitloc getcurrentweapon();
        if (psoffsettime != "MOD_MELEE_WEAPON_BUTT" && (psoffsettime != "MOD_EXECUTION" || attackerweapon.type === "melee")) {
            shitloc thread promoteplayer(deathanimduration);
        }
    }
}

// Namespace gun/gun
// Params 1, eflags: 0x0
// Checksum 0x383da4fb, Offset: 0xa68
// Size: 0x3c
function onendgame(*var_c1e98979) {
    player = round::function_b5f4c9d8();
    match::set_winner(player);
}

// Namespace gun/gun
// Params 1, eflags: 0x0
// Checksum 0x4b8dbcaf, Offset: 0xab0
// Size: 0x4d4
function function_9ffa772e(var_ad9f582e = 0) {
    loadouts = getscriptbundle(#"hash_64fc10899d9faf46");
    if (level.gametype === #"hash_451623a99cfee5d9") {
        loadouts = getscriptbundle(#"hash_2deaed5c3e4b941");
    }
    if (!isdefined(loadouts)) {
        assertmsg("<unknown string>");
        return;
    }
    var_4509f8e = isdefined(loadouts.var_4509f8e) ? loadouts.var_4509f8e : [];
    if (var_4509f8e.size == 0) {
        assertmsg("<unknown string>");
        return;
    }
    if (var_ad9f582e < 7) {
        weaponslist = var_4509f8e[var_ad9f582e];
    } else {
        var_ad9f582e = randomint(var_4509f8e.size);
        weaponslist = var_4509f8e[var_ad9f582e];
    }
    if (!isdefined(weaponslist)) {
        assertmsg("<unknown string>" + var_ad9f582e + "<unknown string>");
        return;
    }
    tiers = isdefined(weaponslist.tiers) ? weaponslist.tiers : [];
    foreach (i, tier in tiers) {
        if (!isdefined(tier.options)) {
            arrayremoveindex(tiers, i);
        }
    }
    if (tiers.size == 0) {
        assertmsg("<unknown string>" + var_ad9f582e + "<unknown string>");
        return;
    }
    foreach (tier in tiers) {
        options = isdefined(tier.options) ? tier.options : [];
        foreach (i, option in options) {
            if (!isdefined(option.weapon)) {
                arrayremoveindex(options, i);
            }
        }
        if (options.size == 0) {
            continue;
        }
        option = options[randomint(options.size)];
        if (!isdefined(option)) {
            continue;
        }
        weapon = option.weapon;
        if (!isdefined(weapon)) {
            continue;
        }
        attachments = isdefined(option.attachments) ? option.attachments : "";
        blueprintindex = option.var_b704d026 === 1 ? option.blueprintindex : -1;
        camoindex = option.var_b704d026 !== 1 ? option.camoindex : 0;
        addguntoprogression(weapon.name, attachments, blueprintindex, camoindex);
    }
    assert(level.gunprogression.size > 0, "<unknown string>" + var_ad9f582e + "<unknown string>");
}

// Namespace gun/gun
// Params 4, eflags: 0x0
// Checksum 0x2b057c54, Offset: 0xf90
// Size: 0x19c
function addguntoprogression(weaponname, var_45f60e0f, blueprintindex = 0, camoindex) {
    if (isdefined(blueprintindex) && blueprintindex > -1) {
        blueprintindex++;
        var_c4af33 = function_f62a996b(weaponname, blueprintindex);
        weapon = var_c4af33.weapon;
        var_e91aba42 = var_c4af33.var_fd90b0bb;
    } else {
        attachments = strtok(var_45f60e0f, " ");
        weapon = getweapon(weaponname, attachments);
        if (isdefined(camoindex) && camoindex > 0) {
            renderoptions = isdefined(function_ea647602("camo", weapon)) ? function_ea647602("camo", weapon) : [];
            camooption = renderoptions[camoindex].item_index;
        }
    }
    weaponstruct = {};
    weaponstruct.weapon = weapon;
    weaponstruct.var_f879230e = var_e91aba42;
    weaponstruct.camooption = camooption;
    level.gunprogression[level.gunprogression.size] = weaponstruct;
}

// Namespace gun/gun
// Params 1, eflags: 0x0
// Checksum 0x9825da84, Offset: 0x1138
// Size: 0x4c
function takeoldweapon(oldweapon) {
    self endon(#"death", #"disconnect");
    wait(1);
    self takeweapon(oldweapon);
}

// Namespace gun/gun
// Params 1, eflags: 0x0
// Checksum 0x24e3788a, Offset: 0x1190
// Size: 0x574
function givecustomloadout(takeoldweapon = 0) {
    self loadout::init_player(!takeoldweapon);
    self function_e6f9e3cd();
    self clearperks();
    if (level.gametype === #"hash_451623a99cfee5d9") {
        self function_b5feff95(#"talent_gungho" + level.game_mode_suffix);
    }
    perks = self getloadoutperks(0);
    foreach (perk in perks) {
        self setperk(perk);
    }
    if (takeoldweapon) {
        oldweapon = self getcurrentweapon();
        weapons = self getweaponslist();
        foreach (weapon in weapons) {
            if (weapon != oldweapon) {
                self takeweapon(weapon);
            }
        }
        self thread takeoldweapon(oldweapon);
    }
    if (!isdefined(self.gunprogress)) {
        self.gunprogress = 0;
    }
    currentweapon = level.gunprogression[self.gunprogress].weapon;
    var_40aa936b = level.gunprogression[self.gunprogress].var_f879230e;
    var_575718af = level.gunprogression[self.gunprogress].camooption;
    if (isdefined(var_575718af)) {
        var_5d2a9d35 = self function_6eff28b5(var_575718af, 0, 0);
    }
    self giveweapon(currentweapon, var_5d2a9d35, var_40aa936b);
    self shoulddoinitialweaponraise(currentweapon, 0);
    self switchtoweapon(currentweapon);
    self disableweaponcycling();
    if (self.firstspawn !== 0) {
        self setspawnweapon(currentweapon);
    }
    primaryoffhand = level.var_34d27b26;
    primaryoffhandcount = 0;
    self giveweapon(primaryoffhand);
    self setweaponammostock(primaryoffhand, primaryoffhandcount);
    self switchtooffhand(primaryoffhand);
    e_whippings = isdefined(getgametypesetting(#"hash_4ca06c610b5d53bd")) ? getgametypesetting(#"hash_4ca06c610b5d53bd") : 0;
    if (!e_whippings) {
        secondaryoffhand = getweapon(#"hash_364914e1708cb629");
        if (!isdefined(secondaryoffhand) || secondaryoffhand === level.weaponnone) {
            return;
        }
        self giveweapon(secondaryoffhand);
        self setweaponammoclip(secondaryoffhand, 1);
        self loadout::function_442539("secondarygrenade", secondaryoffhand);
        self ability_util::function_36a15b60(secondaryoffhand);
    }
    actionslot3 = getdvarint(#"hash_449fa75f87a4b5b4", 0) < 0 ? "flourish_callouts" : "ping_callouts";
    self setactionslot(3, actionslot3);
    self loadout::function_6573eeeb();
}

// Namespace gun/gun
// Params 1, eflags: 0x4
// Checksum 0x3e5b24ea, Offset: 0x1710
// Size: 0x11c
function private function_cf465ad9(weaponindex) {
    if (!isplayer(self) || !isdefined(weaponindex)) {
        return;
    }
    weapon = level.gunprogression[weaponindex].weapon;
    if (!isdefined(weapon) || self hasweapon(weapon)) {
        return;
    }
    var_f879230e = level.gunprogression[weaponindex].var_f879230e;
    camooption = level.gunprogression[weaponindex].camooption;
    if (isdefined(camooption)) {
        weaponoptions = self function_6eff28b5(camooption, 0, 0);
    }
    self giveweapon(weapon, weaponoptions, var_f879230e);
    self takeweapon(weapon);
}

// Namespace gun/gun
// Params 1, eflags: 0x0
// Checksum 0x2d69ee0a, Offset: 0x1838
// Size: 0x1c6
function promoteplayer(weaponused) {
    self endon(#"disconnect", #"cancel_promotion");
    level endon(#"game_ended");
    waitframe(1);
    weapon = level.gunprogression[self.gunprogress].weapon;
    if (weaponused.rootweapon == weapon.rootweapon || isdefined(weapon.dualwieldweapon) && weapon.dualwieldweapon.rootweapon == weaponused.rootweapon) {
        if (self.gunprogress < level.gunprogression.size - 1) {
            self.gunprogress++;
            if (isalive(self)) {
                self thread givecustomloadout(1);
                self thread function_5c23e4f5();
                self function_cf465ad9(self.gunprogress + 1);
            }
        }
        pointstowin = self.pers[#"pointstowin"];
        if (pointstowin < level.scorelimit) {
            scoreevents::processscoreevent(#"kill_gun", self, undefined, weaponused);
            self globallogic_score::givepointstowin(level.gungamekillscore);
        }
        self.lastpromotiontime = gettime();
    }
}

// Namespace gun/gun
// Params 1, eflags: 0x0
// Checksum 0xa264f912, Offset: 0x1a08
// Size: 0x2ec
function demoteplayer(attacker) {
    self endon(#"disconnect");
    self notify(#"cancel_promotion");
    currentgunprogress = self.gunprogress;
    for (i = 0; i < level.setbacksperdemotion; i++) {
        if (self.gunprogress <= 0) {
            break;
        }
        self globallogic_score::givepointstowin(level.gungamekillscore * -1);
        globallogic_score::_setplayerscore(self, self.score - level.gungamekillscore);
        self.gunprogress--;
        self thread function_5c23e4f5();
    }
    if (currentgunprogress != self.gunprogress && isalive(self)) {
        self thread givecustomloadout(1);
    }
    if (isdefined(attacker)) {
        self stats::function_bb7eedf0(#"humiliate_attacker", 1);
        attacker recordgameevent("capture");
        level thread telemetry::function_18135b72(#"hash_540cddd637f71a5e", {#player:attacker, #eventtype:#"capture"});
    }
    self stats::function_bb7eedf0(#"humiliate_victim", 1);
    self.pers[#"humiliated"]++;
    self.humiliated = self.pers[#"humiliated"];
    self recordgameevent("return");
    level thread telemetry::function_18135b72(#"hash_540cddd637f71a5e", {#player:self, #eventtype:#"return"});
    self playlocalsound(#"mpl_wager_humiliate");
    self globallogic_audio::leader_dialog_on_player("humiliated");
}

// Namespace gun/gun
// Params 0, eflags: 0x0
// Checksum 0x34694323, Offset: 0x1d00
// Size: 0x70
function infiniteammo() {
    self endon(#"death", #"disconnect");
    while (true) {
        wait(0.1);
        weapon = self getcurrentweapon();
        self givemaxammo(weapon);
    }
}

// Namespace gun/gun
// Params 0, eflags: 0x0
// Checksum 0xcbca8ac5, Offset: 0x1d78
// Size: 0x116
function function_486a8395() {
    ruleweaponsleft = 3;
    /#
    #/
    minweaponsleft = level.gunprogression.size;
    foreach (player in function_a1ef346b()) {
        if (!isdefined(player)) {
            continue;
        }
        if (!isdefined(player.gunprogress)) {
            continue;
        }
        weaponsleft = level.gunprogression.size - player.gunprogress;
        if (minweaponsleft > weaponsleft) {
            minweaponsleft = weaponsleft;
        }
        if (ruleweaponsleft >= minweaponsleft) {
            /#
            #/
            return false;
        }
    }
    /#
    #/
    return true;
}

// Namespace gun/gun
// Params 0, eflags: 0x0
// Checksum 0xb4b44e87, Offset: 0x1e98
// Size: 0xf4
function function_5c23e4f5() {
    if (is_true(level.var_2179a6bf)) {
        return;
    }
    var_5a4bc4d6 = 18;
    var_ee737733 = 15;
    if (level.gametype === #"hash_451623a99cfee5d9") {
        var_5a4bc4d6 = 19;
        var_ee737733 = 17;
    }
    if (self.gunprogress >= var_5a4bc4d6) {
        level thread globallogic_audio::set_music_global("timeout_loop");
        level.var_2179a6bf = 1;
        return;
    }
    if (self.gunprogress >= var_ee737733) {
        self function_130d4cfc();
        return;
    }
    self function_cfef3f4c();
}

// Namespace gun/gun
// Params 0, eflags: 0x0
// Checksum 0x759c97ac, Offset: 0x1f98
// Size: 0x62
function function_130d4cfc() {
    if (!isdefined(self.var_227573ea)) {
        self.var_227573ea = 0;
    }
    if (!is_true(self.var_227573ea)) {
        self thread globallogic_audio::function_c246758e(level.var_be0e9c3e);
        self.var_227573ea = 1;
    }
}

// Namespace gun/gun
// Params 0, eflags: 0x0
// Checksum 0x4dafe225, Offset: 0x2008
// Size: 0x5e
function function_cfef3f4c() {
    if (!isdefined(self.var_227573ea)) {
        self.var_227573ea = 0;
    }
    if (is_true(self.var_227573ea)) {
        self thread globallogic_audio::function_c246758e("none");
        self.var_227573ea = 0;
    }
}

/#

    // Namespace gun/gun
    // Params 0, eflags: 0x4
    // Checksum 0x101fa769, Offset: 0x2070
    // Size: 0xac
    function private init_devgui() {
        util::init_dvar(#"hash_30c63c4ab5be356f", 0, &function_9209a6f8);
        util::init_dvar(#"hash_62d3e4c605defe30", 0, &function_98c43bf8);
        util::waittill_can_add_debug_command();
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
    }

    // Namespace gun/gun
    // Params 1, eflags: 0x4
    // Checksum 0x74c5d2ab, Offset: 0x2128
    // Size: 0x4c
    function private function_9209a6f8(params) {
        level notify(#"hash_a1e5a52aeb09e3c");
        if (params.value) {
            thread function_7b2c84d4();
        }
    }

    // Namespace gun/gun
    // Params 0, eflags: 0x4
    // Checksum 0x89231b6c, Offset: 0x2180
    // Size: 0x2ec
    function private function_7b2c84d4() {
        player = getplayers()[0];
        if (!isdefined(player)) {
            return;
        }
        player endon(#"disconnect");
        level endon(#"game_ended");
        foreach (i, weaponstruct in level.gunprogression) {
            if (!isalive(player)) {
                break;
            }
            weapon = weaponstruct.weapon;
            var_f879230e = weaponstruct.var_f879230e;
            camooption = weaponstruct.camooption;
            if (isdefined(camooption)) {
                weaponoptions = player function_6eff28b5(camooption, 0, 0);
            }
            player takeweapon(player getcurrentweapon());
            player giveweapon(weapon, weaponoptions, var_f879230e);
            player switchtoweapon(weapon);
            player iprintlnbold("<unknown string>" + i + 1 + "<unknown string>" + level.gunprogression.size + "<unknown string>" + getweaponname(weapon));
            result = level waittilltimeout(3, #"hash_a1e5a52aeb09e3c");
            if (result._notify == "<unknown string>") {
                break;
            }
        }
        fakeweapon = player getcurrentweapon();
        var_b348ce28 = level.gunprogression[player.gunprogress].weapon;
        player thread givecustomloadout(fakeweapon !== var_b348ce28);
        setdvar(#"hash_30c63c4ab5be356f", 0);
    }

    // Namespace gun/gun
    // Params 1, eflags: 0x4
    // Checksum 0x984078b2, Offset: 0x2478
    // Size: 0x4c
    function private function_98c43bf8(params) {
        level notify(#"hash_1cab686e68228dff");
        if (params.value) {
            thread function_c13efc2d();
        }
    }

    // Namespace gun/gun
    // Params 0, eflags: 0x4
    // Checksum 0xd269080e, Offset: 0x24d0
    // Size: 0x1a2
    function private function_c13efc2d() {
        level endon(#"game_ended", #"hash_1cab686e68228dff");
        baseorigin = (350, 70, 0);
        var_e97558ce = (0, 25, 0);
        while (true) {
            debug2dtext(baseorigin, "<unknown string>", (0, 1, 1), 1, (0, 0, 0), 0.8);
            foreach (i, weaponstruct in level.gunprogression) {
                origin = baseorigin + (i + 1) * var_e97558ce;
                string = "<unknown string>" + i + 1 + "<unknown string>" + getweaponname(weaponstruct.weapon);
                debug2dtext(origin, string, (1, 1, 1), 1, (0, 0, 0), 0.8);
            }
            waitframe(1);
        }
    }

#/
