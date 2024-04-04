// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\util.gsc;
#using scripts\cp_common\skipto.gsc;
#using scripts\core_common\oob.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\trigger_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace savegame;

// Namespace savegame/save
// Params 0, eflags: 0x5
// Checksum 0x3f228cfe, Offset: 0x210
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"save", &preinit, undefined, undefined, undefined);
}

// Namespace savegame/save
// Params 0, eflags: 0x6 linked
// Checksum 0xa91d8e39, Offset: 0x258
// Size: 0x334
function private preinit() {
    if (!isdefined(world.loadout)) {
        world.loadout = [];
    }
    if (!isdefined(world.mapdata)) {
        world.mapdata = [];
    }
    if (!isdefined(world.playerdata)) {
        world.playerdata = [];
    }
    level.var_9d48137b = &function_81534803;
    level.var_8fe8980a = &function_9797184c;
    missionid = function_8136eb5a();
    if (!isdefined(world.mapdata[missionid][#"persistent"])) {
        world.mapdata[missionid][#"persistent"] = spawnstruct();
    }
    if (!isdefined(world.mapdata[missionid][#"transient"])) {
        world.mapdata[missionid][#"transient"] = spawnstruct();
    }
    var_316f308b = savegame_getsavedmap();
    if (!isdefined(var_316f308b) || var_316f308b.size == 0 || getrootmapname(missionid) !== getrootmapname(var_316f308b)) {
        set_player_data("previous_mission", "");
        set_player_data("previous_safehouse", "");
    }
    sv_savegameskipto = getdvar(#"sv_savegameskipto", "");
    if (!isdefined(sv_savegameskipto) || sv_savegameskipto.size == 0 || sv_savegameskipto == skipto::function_5011fee2(missionid)) {
        function_81534803(#"transient");
    }
    foreach (trig in trigger::get_all()) {
        if (is_true(trig.var_544e29)) {
            trig thread checkpoint_trigger();
        }
    }
    level.var_a1cfeb5a = [];
}

// Namespace savegame/save
// Params 2, eflags: 0x2 linked
// Checksum 0x3295f763, Offset: 0x598
// Size: 0x27c
function save(var_116ab377, var_296c7056) {
    if (!function_7642d0c9()) {
        return;
    }
    if (!isdefined(var_116ab377)) {
        var_116ab377 = function_8136eb5a();
    }
    var_2466c81f = getmaporder() < 0;
    if (var_2466c81f) {
        return;
    }
    mapbundle = function_2717b55f(var_116ab377);
    if (!isdefined(var_296c7056) && isdefined(mapbundle) && is_true(mapbundle.issafehouse)) {
        transient = function_6440b06b(#"transient");
        if (is_true(transient.var_16e4161b)) {
            var_296c7056 = skipto::function_547ca7d2(var_116ab377);
        }
    }
    savegame_create(var_116ab377, var_296c7056);
    player = getplayers()[0];
    if (!isdefined(player)) {
        return;
    }
    missiondata = function_6440b06b(#"persistent", var_116ab377);
    missiondata.unlocked = 1;
    player stats::set_stat(#"mapdata", var_116ab377, #"unlocked", 1);
    var_116ab377 = function_8136eb5a();
    player stats::set_stat(#"hash_19d9ddd673699368", hash(var_116ab377));
    currentutctime = getutc();
    player stats::set_stat(#"hash_6addb0d6ea1de644", currentutctime);
    uploadstats(player);
}

// Namespace savegame/save
// Params 1, eflags: 0x2 linked
// Checksum 0xd75d31d6, Offset: 0x820
// Size: 0x52
function function_ac15668a(missionname) {
    missiondata = function_6440b06b(#"persistent", missionname);
    return is_true(missiondata.complete);
}

// Namespace savegame/save
// Params 1, eflags: 0x2 linked
// Checksum 0x6dcfc77c, Offset: 0x880
// Size: 0x52
function function_1b212e67(missionname) {
    missiondata = function_6440b06b(#"persistent", missionname);
    return is_true(missiondata.unlocked);
}

// Namespace savegame/save
// Params 0, eflags: 0x2 linked
// Checksum 0x91b2103f, Offset: 0x8e0
// Size: 0x34
function function_fa31c391() {
    level.var_593cdbb5 = 1;
    function_8d95e71c();
    function_a620739b();
}

// Namespace savegame/save
// Params 1, eflags: 0x2 linked
// Checksum 0x7edcc5de, Offset: 0x920
// Size: 0x9c
function function_87dafd45(name) {
    if (isdefined(level.var_3a8f95b4) && level.var_3a8f95b4 != name && level.script != "cp_ger_hub") {
        errormsg("<unknown string>" + level.var_3a8f95b4 + "<unknown string>" + name + "<unknown string>");
    }
    level.var_3a8f95b4 = name;
}

// Namespace savegame/save
// Params 0, eflags: 0x2 linked
// Checksum 0x42db15c3, Offset: 0x9c8
// Size: 0x36
function function_8136eb5a() {
    if (!isdefined(level.var_3a8f95b4)) {
        function_87dafd45(level.script);
    }
    return level.var_3a8f95b4;
}

// Namespace savegame/save
// Params 2, eflags: 0x2 linked
// Checksum 0x8196f2ac, Offset: 0xa08
// Size: 0xda
function function_6440b06b(dataname = #"transient", missionname = function_8136eb5a()) {
    if (!isdefined(world.mapdata)) {
        world.mapdata = [];
    }
    if (!isdefined(world.mapdata[missionname])) {
        world.mapdata[missionname] = [];
    }
    if (!isdefined(world.mapdata[missionname][dataname])) {
        world.mapdata[missionname][dataname] = spawnstruct();
    }
    return world.mapdata[missionname][dataname];
}

// Namespace savegame/save
// Params 2, eflags: 0x2 linked
// Checksum 0xb4f05cdc, Offset: 0xaf0
// Size: 0x126
function function_81534803(dataname, missionname = function_8136eb5a()) {
    if (isdefined(world.mapdata) && isdefined(world.mapdata[missionname])) {
        if (isdefined(dataname)) {
            if (isdefined(world.mapdata[missionname][dataname])) {
                world.mapdata[missionname][dataname] = spawnstruct();
            }
            return;
        }
        foreach (dataname, value in world.mapdata[missionname]) {
            world.mapdata[missionname][dataname] = spawnstruct();
        }
    }
}

// Namespace savegame/save
// Params 0, eflags: 0x2 linked
// Checksum 0xafe57e47, Offset: 0xc20
// Size: 0x20
function function_a620739b() {
    if (isdefined(world.mapdata)) {
        world.mapdata = [];
    }
}

// Namespace savegame/save
// Params 0, eflags: 0x2 linked
// Checksum 0x3a1bed97, Offset: 0xc48
// Size: 0xec
function function_7e0e735b() {
    missionname = function_8136eb5a();
    level.var_d6bcee66 = [];
    if (isdefined(world.mapdata[missionname])) {
        foreach (dataname, value in world.mapdata[missionname]) {
            level.var_d6bcee66[dataname] = structcopy(world.mapdata[missionname][dataname], 1);
        }
    }
}

// Namespace savegame/save
// Params 0, eflags: 0x2 linked
// Checksum 0xa56421e6, Offset: 0xd40
// Size: 0xd6
function function_9797184c() {
    missionname = function_8136eb5a();
    if (isdefined(level.var_d6bcee66)) {
        foreach (dataname, value in level.var_d6bcee66) {
            world.mapdata[missionname][dataname] = structcopy(level.var_d6bcee66[dataname], 1);
        }
    }
}

// Namespace savegame/save
// Params 0, eflags: 0x2 linked
// Checksum 0xdf6e64c4, Offset: 0xe20
// Size: 0x4de
function function_379f84b3() {
    missionid = function_8136eb5a();
    world.mapdata[missionid][#"transient"].var_2e7c022f = [];
    player = getplayers()[0];
    a_weapon_list = player getweaponslist();
    current_weapon = player getcurrentweapon();
    world.mapdata[missionid][#"transient"].var_37017d9 = current_weapon.name;
    foreach (weapon in a_weapon_list) {
        if (isdefined(weapon.name)) {
            if (!isdefined(world.mapdata[missionid][#"transient"].var_2e7c022f)) {
                world.mapdata[missionid][#"transient"].var_2e7c022f = [];
            } else if (!isarray(world.mapdata[missionid][#"transient"].var_2e7c022f)) {
                world.mapdata[missionid][#"transient"].var_2e7c022f = array(world.mapdata[missionid][#"transient"].var_2e7c022f);
            }
            world.mapdata[missionid][#"transient"].var_2e7c022f[world.mapdata[missionid][#"transient"].var_2e7c022f.size] = weapon.name;
            if (isdefined(weapon.attachments) && weapon.attachments.size > 0) {
                world.mapdata[missionid][#"transient"].var_ba4d1bad[weapon.name] = [];
                foreach (attachment in weapon.attachments) {
                    if (!isdefined(world.mapdata[missionid][#"transient"].var_ba4d1bad[weapon.name])) {
                        world.mapdata[missionid][#"transient"].var_ba4d1bad[weapon.name] = [];
                    } else if (!isarray(world.mapdata[missionid][#"transient"].var_ba4d1bad[weapon.name])) {
                        world.mapdata[missionid][#"transient"].var_ba4d1bad[weapon.name] = array(world.mapdata[missionid][#"transient"].var_ba4d1bad[weapon.name]);
                    }
                    world.mapdata[missionid][#"transient"].var_ba4d1bad[weapon.name][world.mapdata[missionid][#"transient"].var_ba4d1bad[weapon.name].size] = attachment;
                }
            }
        }
    }
}

// Namespace savegame/save
// Params 0, eflags: 0x2 linked
// Checksum 0x8f5515d1, Offset: 0x1308
// Size: 0x29c
function function_7396472d() {
    missionid = function_8136eb5a();
    player = getplayers()[0];
    if (isdefined(world.mapdata[missionid][#"transient"].var_2e7c022f)) {
        player takeallweapons();
        foreach (weapon_name in world.mapdata[missionid][#"transient"].var_2e7c022f) {
            if (isdefined(weapon_name)) {
                if (isdefined(world.mapdata[missionid][#"transient"].var_ba4d1bad[weapon_name])) {
                    weapon = getweapon(weapon_name, world.mapdata[missionid][#"transient"].var_ba4d1bad[weapon_name]);
                } else {
                    weapon = getweapon(weapon_name);
                }
                if (isdefined(weapon)) {
                    player giveweapon(weapon);
                }
            }
        }
        if (isdefined(world.mapdata[missionid][#"transient"].var_37017d9)) {
            current_weapon = player getcurrentweapon();
            var_fc1c4650 = getweapon(world.mapdata[missionid][#"transient"].var_37017d9);
            if (isdefined(current_weapon) && isdefined(var_fc1c4650) && current_weapon != var_fc1c4650) {
                if (player hasweapon(var_fc1c4650)) {
                    player switchtoweaponimmediate(var_fc1c4650);
                }
            }
        }
    }
}

// Namespace savegame/save
// Params 2, eflags: 0x2 linked
// Checksum 0x9da997bc, Offset: 0x15b0
// Size: 0x7e
function set_player_data(name, value) {
    campaignmode = "CP";
    if (!isdefined(world.playerdata)) {
        world.playerdata = [];
    }
    if (!isdefined(world.playerdata[campaignmode])) {
        world.playerdata[campaignmode] = [];
    }
    world.playerdata[campaignmode][name] = value;
}

// Namespace savegame/save
// Params 2, eflags: 0x2 linked
// Checksum 0xe7e785d, Offset: 0x1638
// Size: 0x54
function function_2ee66e93(name, defval) {
    campaignmode = "CP";
    if (isdefined(world.playerdata[campaignmode][name])) {
        return world.playerdata[campaignmode][name];
    }
    return defval;
}

// Namespace savegame/save
// Params 0, eflags: 0x2 linked
// Checksum 0x790d75c0, Offset: 0x1698
// Size: 0x4c
function function_8d95e71c() {
    campaignmode = "CP";
    if (isdefined(world.playerdata) && isdefined(world.playerdata[campaignmode])) {
        world.playerdata[campaignmode] = [];
    }
}

// Namespace savegame/save
// Params 0, eflags: 0x2 linked
// Checksum 0x941282d9, Offset: 0x16f0
// Size: 0x6e
function function_7642d0c9() {
    return getdvarint(#"ui_blocksaves", 1) == 0 && !is_true(level.gameended) && !is_true(level.var_593cdbb5);
}

// Namespace savegame/save
// Params 1, eflags: 0x2 linked
// Checksum 0x79518d61, Offset: 0x1768
// Size: 0x7c
function function_7790f03(var_62a2ec8e = 0) {
    if (is_true(level.var_815395f5) || getdvarint(#"hash_3a4333abc7abc233", 0)) {
        return;
    }
    level thread function_396464b(var_62a2ec8e);
}

// Namespace savegame/save
// Params 1, eflags: 0x6 linked
// Checksum 0xcdeecbc1, Offset: 0x17f0
// Size: 0x124
function private function_396464b(var_62a2ec8e = 0) {
    level notify(#"checkpoint_save");
    level endon(#"checkpoint_save", #"save_restore");
    level notify(#"hash_75b4a2cae07690ff");
    player = getplayers()[0];
    if (isplayer(player) && player util::function_a1d6293()) {
        return;
    }
    checkpointcreate();
    waitframe(1);
    waitframe(1);
    if (is_true(level.var_5be43b2d)) {
        return;
    }
    checkpointcommit();
    function_40f4c631(var_62a2ec8e);
}

// Namespace savegame/save
// Params 0, eflags: 0x2 linked
// Checksum 0x8806f3f3, Offset: 0x1920
// Size: 0x3c
function checkpoint_trigger() {
    self endon(#"death");
    self waittill(#"trigger");
    checkpoint_save();
}

// Namespace savegame/save
// Params 3, eflags: 0x2 linked
// Checksum 0x6092ca96, Offset: 0x1968
// Size: 0x44
function checkpoint_save(var_62a2ec8e = 0, var_a8976c31, stealth_check) {
    level thread function_655f1326(var_62a2ec8e, var_a8976c31, stealth_check);
}

// Namespace savegame/save
// Params 0, eflags: 0x6 linked
// Checksum 0x96f1fe29, Offset: 0x19b8
// Size: 0xb4
function private function_304c08c5() {
    if (function_7642d0c9()) {
        var_56528c9b = isdefined(skipto::function_5a61e21a()[0]) ? skipto::function_5a61e21a()[0] : "";
        var_1461c013 = isdefined(function_2ee66e93("last_saved_skipto")) ? function_2ee66e93("last_saved_skipto") : "";
        return (var_56528c9b != var_1461c013);
    }
    return false;
}

// Namespace savegame/save
// Params 1, eflags: 0x6 linked
// Checksum 0x467ac349, Offset: 0x1a78
// Size: 0x74
function private function_40f4c631(var_62a2ec8e) {
    var_b026e720 = function_304c08c5();
    level thread function_680b78aa(var_b026e720);
    if (!var_b026e720 && is_true(var_62a2ec8e)) {
        util::function_502198f3();
    }
}

// Namespace savegame/save
// Params 2, eflags: 0x6 linked
// Checksum 0xfa5127bd, Offset: 0x1af8
// Size: 0x34c
function private function_680b78aa(var_62a2ec8e = 1, delay = 1.5) {
    if (function_7642d0c9()) {
        wait(0.2);
        foreach (player in level.players) {
            player player::generate_weapon_data();
            player set_player_data("saved_weapon", player._generated_current_weapon.rootweapon.name);
            player set_player_data("saved_weapon_attachments", util::function_2146bd83(player._generated_current_weapon));
            player set_player_data("saved_weapondata", player._generated_weapons);
            player set_player_data("lives", player.lives);
            player._generated_current_weapon = undefined;
            player._generated_weapons = undefined;
        }
        player = util::gethostplayer();
        if (isdefined(player)) {
            player set_player_data("savegame_score", player.pers[#"score"]);
            player set_player_data("savegame_kills", player.pers[#"kills"]);
            player set_player_data("savegame_assists", player.pers[#"assists"]);
            player set_player_data("savegame_incaps", player.pers[#"incaps"]);
            player set_player_data("savegame_revives", player.pers[#"revives"]);
        }
        save();
        wait(delay);
        var_56528c9b = skipto::function_5a61e21a()[0];
        set_player_data("last_saved_skipto", var_56528c9b);
        if (isdefined(player) && is_true(var_62a2ec8e)) {
            player util::function_b9dfcfb7();
        }
    }
}

// Namespace savegame/save
// Params 0, eflags: 0x2 linked
// Checksum 0x40e7c380, Offset: 0x1e50
// Size: 0x16a
function function_68cfab84() {
    if (is_true(level.missionfailed)) {
        return 0;
    }
    foreach (player in level.players) {
        if (!isalive(player)) {
            return 0;
        }
        if (player clientfield::get("burn")) {
            return 0;
        }
        if (player util::function_a1d6293()) {
            return 0;
        }
        if (player.sessionstate == "spectator") {
            firstspawn = isdefined(self.firstspawn) ? self.firstspawn : 1;
            return firstspawn;
        }
        if (player oob::isoutofbounds()) {
            return 0;
        }
        if (is_true(player.burning)) {
            return 0;
        }
    }
    return 1;
}

// Namespace savegame/save
// Params 3, eflags: 0x6 linked
// Checksum 0xb279e4d3, Offset: 0x1fc8
// Size: 0x15c
function private function_655f1326(var_62a2ec8e, var_a8976c31, stealth_check) {
    level notify(#"hash_7608fe484d0bea80");
    level endon(#"hash_7608fe484d0bea80", #"hash_75b4a2cae07690ff", #"save_restore");
    wait(0.1);
    while (true) {
        if (function_51c242e9(var_a8976c31, stealth_check)) {
            wait(0.1);
            checkpointcreate();
            wait(6);
            for (check_count = 0; check_count < 5; check_count++) {
                if (function_68cfab84()) {
                    break;
                }
                wait(1);
            }
            if (check_count == 5) {
                continue;
            }
            if (is_true(level.var_5be43b2d)) {
                continue;
            }
            checkpointcommit();
            function_40f4c631(var_62a2ec8e);
            return;
        }
        wait(1);
    }
}

// Namespace savegame/save
// Params 2, eflags: 0x2 linked
// Checksum 0x84591d86, Offset: 0x2130
// Size: 0x272
function function_51c242e9(var_a8976c31 = 0, stealth_check = 1) {
    if (!var_a8976c31) {
        if (is_true(level.var_815395f5)) {
            return false;
        }
        if (getdvarint(#"hash_3a4333abc7abc233", 0)) {
            return false;
        }
    }
    if (is_true(level.missionfailed)) {
        return false;
    }
    var_e46695c4 = 0;
    foreach (player in level.players) {
        if (isdefined(player) && player function_172f4daa(var_a8976c31)) {
            var_e46695c4++;
        }
    }
    var_a9a7b3a2 = level.players.size;
    if (var_e46695c4 < var_a9a7b3a2) {
        return false;
    }
    if (!function_2ceb3570()) {
        return false;
    }
    if (!function_6dadecb9()) {
        return false;
    }
    if (isdefined(level.var_a1cfeb5a) && !var_a8976c31) {
        foreach (func in level.var_a1cfeb5a) {
            if (!level [[ func ]]()) {
                return false;
            }
        }
    }
    if (stealth_check && isdefined(level.var_8bca2033)) {
        if (![[ level.var_8bca2033 ]]()) {
            return false;
        }
    }
    return true;
}

// Namespace savegame/save
// Params 1, eflags: 0x6 linked
// Checksum 0x47dfa9b5, Offset: 0x23b0
// Size: 0x2ba
function private function_172f4daa(var_a8976c31 = 0) {
    var_e81ab8f5 = 1;
    if (isdefined(self.health) && isdefined(self.maxhealth) && self.maxhealth > 0) {
        var_e81ab8f5 = self.health / self.maxhealth;
    }
    if (self util::function_a1d6293()) {
        return 0;
    }
    if (var_e81ab8f5 < 0.7 && !var_a8976c31) {
        return 0;
    }
    if (isdefined(self.lastdamagetime) && self.lastdamagetime > gettime() - 1500) {
        return 0;
    }
    if (self clientfield::get("burn")) {
        return 0;
    }
    if (self ismeleeing()) {
        return 0;
    }
    if (self isthrowinggrenade()) {
        return 0;
    }
    if (self isfiring()) {
        return 0;
    }
    if (self util::isflashed()) {
        return 0;
    }
    if (self.sessionstate == "spectator") {
        firstspawn = isdefined(self.firstspawn) ? self.firstspawn : 1;
        return firstspawn;
    }
    if (self oob::isoutofbounds()) {
        return 0;
    }
    if (is_true(self.burning)) {
        return 0;
    }
    if (self flag::get(#"mobile_armory_in_use")) {
        return 0;
    }
    if (var_a8976c31) {
        return 1;
    }
    foreach (weapon in self getweaponslist()) {
        fraction = self getfractionmaxammo(weapon);
        if (fraction > 0.1) {
            return 1;
        }
    }
    return 0;
}

// Namespace savegame/save
// Params 0, eflags: 0x6 linked
// Checksum 0x85789f06, Offset: 0x2678
// Size: 0x170
function private function_6dadecb9() {
    if (!getdvarint(#"hash_3c20efa8bd1aa30", 1)) {
        return true;
    }
    ais = getaiteamarray(#"axis");
    foreach (ai in ais) {
        if (!isdefined(ai)) {
            continue;
        }
        if (!isalive(ai)) {
            continue;
        }
        if (isactor(ai) && ai isinscriptedstate()) {
            continue;
        }
        if (is_true(ai.ignoreall)) {
            continue;
        }
        var_1d8aaace = ai function_838fa3a9();
        if (var_1d8aaace <= 80) {
            return false;
        }
    }
    return true;
}

// Namespace savegame/save
// Params 0, eflags: 0x4
// Checksum 0x85079684, Offset: 0x27f0
// Size: 0x130
function private function_6f9ec10b() {
    if (!isdefined(self.enemy)) {
        return true;
    }
    if (!isplayer(self.enemy)) {
        return true;
    }
    if (isdefined(self.melee) && isdefined(self.melee.target) && isplayer(self.melee.target)) {
        return false;
    }
    var_1d8aaace = self function_838fa3a9();
    if (var_1d8aaace < 500) {
        return false;
    } else if (var_1d8aaace > 1000 || var_1d8aaace < 0) {
        return true;
    } else if (isactor(self) && self cansee(self.enemy) && self canshootenemy()) {
        return false;
    }
    return true;
}

// Namespace savegame/save
// Params 0, eflags: 0x2 linked
// Checksum 0xe8d88c35, Offset: 0x2928
// Size: 0xd6
function function_838fa3a9() {
    mindist = -1;
    foreach (player in function_a1ef346b()) {
        dist = distance(player.origin, self.origin);
        if (dist < mindist || mindist < 0) {
            mindist = dist;
        }
    }
    return mindist;
}

// Namespace savegame/save
// Params 0, eflags: 0x6 linked
// Checksum 0x86f59175, Offset: 0x2a08
// Size: 0x18c
function private function_2ceb3570() {
    var_e1a8a025 = 0;
    foreach (grenade in getentarray("grenade", "classname")) {
        foreach (player in function_a1ef346b()) {
            distsq = distancesquared(grenade.origin, player.origin);
            if (distsq < 90000) {
                var_e1a8a025++;
            }
        }
    }
    if (var_e1a8a025 > 0 && var_e1a8a025 >= function_a1ef346b().size) {
        return false;
    }
    return true;
}

