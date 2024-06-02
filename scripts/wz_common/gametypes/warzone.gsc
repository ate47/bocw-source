// Atian COD Tools GSC CW decompiler test
#using scripts\wz_common\wz_ignore_systems.gsc;
#using scripts\wz_common\wz_rat.gsc;
#using scripts\wz_common\player.gsc;
#using scripts\wz_common\vehicle.gsc;
#using scripts\wz_common\hud.gsc;
#using scripts\wz_common\wz_loadouts.gsc;
#using script_5495f0bb06045dc7;
#using scripts\core_common\item_inventory.gsc;
#using scripts\mp_common\player\player_loadout.gsc;
#using scripts\mp_common\gametypes\globallogic_score.gsc;
#using scripts\mp_common\gametypes\gametype.gsc;
#using scripts\core_common\player\player_free_fall.gsc;
#using script_335d0650ed05d36d;
#using scripts\core_common\item_world.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace warzone;

// Namespace warzone/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x947c0898, Offset: 0x100
// Size: 0xec
function event_handler[gametype_init] main(*eventstruct) {
    namespace_17baa64d::init();
    spawning::addsupportedspawnpointtype("tdm");
    callback::on_game_playing(&start_warzone);
    callback::on_spawned(&on_player_spawned);
    level.onstartgametype = &on_start_game_type;
    level.onroundswitch = &on_round_switch;
    level.givecustomloadout = &give_custom_loadout;
    level.var_c4dc9178 = &function_f81c3cc9;
    level.var_5c14d2e6 = &function_b82fbeb8;
}

// Namespace warzone/warzone
// Params 0, eflags: 0x0
// Checksum 0x39ca1141, Offset: 0x1f8
// Size: 0xe4
function function_b82fbeb8() {
    assert(isplayer(self));
    if (!isplayer(self) || !isalive(self)) {
        return;
    }
    item_world::function_1b11e73c();
    while (isdefined(self) && !isdefined(self.inventory)) {
        waitframe(1);
    }
    if (!isdefined(self)) {
        return;
    }
    self wz_loadouts::give_weapon(#"pistol_semiauto_t9_item");
    self wz_loadouts::give_item(#"ammo_small_caliber_item_t9");
}

// Namespace warzone/warzone
// Params 0, eflags: 0x0
// Checksum 0xdb2a9cba, Offset: 0x2e8
// Size: 0x14
function on_start_game_type() {
    namespace_17baa64d::on_start_game_type();
}

// Namespace warzone/warzone
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x308
// Size: 0x4
function start_warzone() {
    
}

// Namespace warzone/warzone
// Params 0, eflags: 0x0
// Checksum 0x4b366ffb, Offset: 0x318
// Size: 0x34
function on_player_spawned() {
    if (isdefined(self.var_b7cc4567)) {
        self.var_b7cc4567 = undefined;
        waitframe(1);
        self player_free_fall::function_7705a7fc(0);
    }
}

// Namespace warzone/warzone
// Params 1, eflags: 0x0
// Checksum 0xf1871eef, Offset: 0x358
// Size: 0x24
function on_spawn_player(predictedspawn) {
    namespace_17baa64d::on_spawn_player(predictedspawn);
}

// Namespace warzone/warzone
// Params 0, eflags: 0x0
// Checksum 0xd8888dcf, Offset: 0x388
// Size: 0x24
function on_round_switch() {
    gametype::on_round_switch();
    globallogic_score::function_9779ac61();
}

// Namespace warzone/warzone
// Params 1, eflags: 0x0
// Checksum 0x7e5c19fb, Offset: 0x3b8
// Size: 0x390
function give_custom_loadout(takeoldweapon = 0) {
    self loadout::init_player(!takeoldweapon);
    if (takeoldweapon) {
        oldweapon = self getcurrentweapon();
        weapons = self getweaponslist();
        foreach (weapon in weapons) {
            self takeweapon(weapon);
        }
    }
    nullprimary = getweapon(#"null_offhand_primary");
    self giveweapon(nullprimary);
    self setweaponammoclip(nullprimary, 0);
    self switchtooffhand(nullprimary);
    if (self.firstspawn !== 0) {
        hud::function_2f66bc37();
    }
    healthgadget = getweapon(#"hash_5a7fd1af4a1d5c9");
    self giveweapon(healthgadget);
    self setweaponammoclip(healthgadget, 0);
    self switchtooffhand(healthgadget);
    level.var_ef61b4b5 = healthgadget;
    var_fb6490c8 = self gadgetgetslot(healthgadget);
    self gadgetpowerset(var_fb6490c8, 0);
    bare_hands = getweapon(#"bare_hands");
    self giveweapon(bare_hands);
    self function_c9a111a(bare_hands);
    self switchtoweapon(bare_hands, 1);
    if (self.firstspawn !== 0) {
        self setspawnweapon(bare_hands);
    }
    self.specialty = self getloadoutperks(0);
    self loadout::register_perks();
    if (is_true(getdvarint(#"hash_702972cd357e76c9", 0))) {
        self thread function_fd19a11c();
    } else {
        self thread give_default_class();
    }
    return bare_hands;
}

// Namespace warzone/warzone
// Params 0, eflags: 0x0
// Checksum 0xdd1fe7a1, Offset: 0x750
// Size: 0x74
function give_default_class() {
    self endon(#"death");
    waitframe(1);
    item_world::function_1b11e73c();
    while (isdefined(self) && !isdefined(self.inventory)) {
        waitframe(1);
    }
    if (!isdefined(self)) {
        return;
    }
    item_inventory::reset_inventory(0);
}

// Namespace warzone/warzone
// Params 0, eflags: 0x0
// Checksum 0x7cf5e90b, Offset: 0x7d0
// Size: 0x15c
function function_fd19a11c() {
    self endon(#"death");
    waitframe(1);
    while (!isdefined(self.inventory)) {
        waitframe(1);
    }
    item_inventory::reset_inventory(0);
    var_3401351 = randomintrangeinclusive(1, 5);
    switch (var_3401351) {
    case 1:
        function_6541c917();
        break;
    case 2:
        function_ae5cdb4c();
        break;
    case 3:
        function_a0a43fdb();
        break;
    case 4:
        function_343266f9();
        break;
    case 5:
        function_2e725b79();
        break;
    }
    give_max_ammo();
}

// Namespace warzone/warzone
// Params 0, eflags: 0x0
// Checksum 0x64167ca, Offset: 0x938
// Size: 0x84
function function_6541c917() {
    wz_loadouts::give_weapon(#"pistol_semiauto_t9_item");
    wz_loadouts::give_weapon(#"smg_standard_t9_item");
    wz_loadouts::give_item(#"frag_t9_item");
    wz_loadouts::give_item(#"hash_37c187ff34a0dde1");
}

// Namespace warzone/warzone
// Params 0, eflags: 0x0
// Checksum 0x76da1a5c, Offset: 0x9c8
// Size: 0x84
function function_ae5cdb4c() {
    wz_loadouts::give_weapon(#"pistol_semiauto_t9_item");
    wz_loadouts::give_weapon(#"ar_accurate_t9_item");
    wz_loadouts::give_item(#"frag_t9_item");
    wz_loadouts::give_item(#"hash_37c187ff34a0dde1");
}

// Namespace warzone/warzone
// Params 0, eflags: 0x0
// Checksum 0xc78ca715, Offset: 0xa58
// Size: 0x84
function function_a0a43fdb() {
    wz_loadouts::give_weapon(#"pistol_semiauto_t9_item");
    wz_loadouts::give_weapon(#"lmg_accurate_t9_item");
    wz_loadouts::give_item(#"frag_t9_item");
    wz_loadouts::give_item(#"hash_37c187ff34a0dde1");
}

// Namespace warzone/warzone
// Params 0, eflags: 0x0
// Checksum 0x591f68db, Offset: 0xae8
// Size: 0x84
function function_343266f9() {
    wz_loadouts::give_weapon(#"pistol_semiauto_t9_item");
    wz_loadouts::give_weapon(#"tr_powerburst_t9_item");
    wz_loadouts::give_item(#"frag_t9_item");
    wz_loadouts::give_item(#"hash_37c187ff34a0dde1");
}

// Namespace warzone/warzone
// Params 0, eflags: 0x0
// Checksum 0xe0d6b23f, Offset: 0xb78
// Size: 0x84
function function_2e725b79() {
    wz_loadouts::give_weapon(#"pistol_semiauto_t9_item");
    wz_loadouts::give_weapon(#"sniper_quickscope_t9_item");
    wz_loadouts::give_item(#"frag_t9_item");
    wz_loadouts::give_item(#"hash_37c187ff34a0dde1");
}

// Namespace warzone/warzone
// Params 0, eflags: 0x0
// Checksum 0xf1b9d799, Offset: 0xc08
// Size: 0x108
function give_max_ammo() {
    ammoitems = array(#"ammo_small_caliber_item_t9", #"ammo_large_caliber_item_t9", #"ammo_ar_item_t9", #"ammo_sniper_item_t9", #"ammo_shotgun_item_t9", #"ammo_special_item_t9");
    foreach (item in ammoitems) {
        wz_loadouts::give_item(item, 4);
    }
}

// Namespace warzone/warzone
// Params 1, eflags: 0x0
// Checksum 0xac67c33d, Offset: 0xd18
// Size: 0x138
function function_f81c3cc9(player) {
    if (!is_true(level.droppedtagrespawn)) {
        return;
    }
    victim = self.victim;
    if (player.pers[#"team"] == self.victimteam) {
        player.pers[#"rescues"]++;
        player.rescues = player.pers[#"rescues"];
        if (isdefined(victim)) {
            if (!level.gameended) {
                victim.pers[#"lives"] = 1;
                victim.var_b7cc4567 = {#origin:player.origin + (0, 0, 10000), #angles:player.angles};
                victim thread [[ level.spawnclient ]]();
                victim notify(#"force_spawn");
            }
        }
    }
}

