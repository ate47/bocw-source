// Atian COD Tools GSC CW decompiler test
#using scripts\wz_common\wz_loadouts.gsc;
#using scripts\wz_common\hud.gsc;
#using script_5495f0bb06045dc7;
#using scripts\mp_common\player\player_loadout.gsc;
#using scripts\core_common\item_world.gsc;
#using scripts\core_common\util_shared.gsc;
#using script_335d0650ed05d36d;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\player\player_reinsertion.gsc;
#using scripts\core_common\player\player_insertion.gsc;
#using script_44b0b8420eabacad;
#using script_471b31bd963b388e;
#using scripts\core_common\item_drop.gsc;
#using scripts\core_common\death_circle.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace namespace_bc2b656d;

// Namespace namespace_bc2b656d/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x65cbb939, Offset: 0x120
// Size: 0x1ec
function event_handler[gametype_init] main(*eventstruct) {
    namespace_17baa64d::init();
    spawning::function_32b97d1b(&spawning::function_90dee50d);
    spawning::function_adbbb58a(&spawning::function_c24e290c);
    spawning::addsupportedspawnpointtype("fireteam");
    callback::add_callback(#"hash_1019ab4b81d07b35", &on_team_eliminated);
    callback::add_callback(#"hash_7912e21750e4010d", &function_b057aee2);
    callback::on_player_killed(&on_player_killed);
    callback::on_disconnect(&on_player_disconnect);
    level.alwaysusestartspawns = 1;
    level.onstartgametype = &namespace_17baa64d::on_start_game_type;
    level.givecustomloadout = &give_custom_loadout;
    level.var_894b9d74 = 1;
    level.var_405a6738 = 25000;
    level.var_c7f8ccf6 = 50;
    level.var_5c14d2e6 = &function_b82fbeb8;
    level.var_317fb13c = &function_b82fbeb8;
    level.var_5cb948b1 = &function_6de0bb32;
    player_reinsertion::function_b5ee47fa(&function_807b902);
}

// Namespace namespace_bc2b656d/level_init
// Params 1, eflags: 0x20
// Checksum 0xdeaecba7, Offset: 0x318
// Size: 0x94
function event_handler[level_init] level_init(*eventstruct) {
    if (!isstruct(level.territory) || !isstring(level.territory.var_bf5eb349)) {
        return;
    }
    settings = getscriptbundle(level.territory.var_bf5eb349);
    death_circle::function_5e412e4a(settings);
}

// Namespace namespace_bc2b656d/namespace_bc2b656d
// Params 1, eflags: 0x0
// Checksum 0x2e32e660, Offset: 0x3b8
// Size: 0x328
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
    return bare_hands;
}

// Namespace namespace_bc2b656d/namespace_bc2b656d
// Params 0, eflags: 0x0
// Checksum 0xbee7094, Offset: 0x6e8
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

// Namespace namespace_bc2b656d/namespace_bc2b656d
// Params 0, eflags: 0x0
// Checksum 0x9f13f1ad, Offset: 0x7d8
// Size: 0x2d8
function function_6de0bb32() {
    assert(isplayer(self));
    if (isdefined(self.inventory)) {
        var_cc6ff6a1 = function_4ba8fde(#"pistol_semiauto_t9_item").id;
        var_122bdb78 = function_4ba8fde(#"ammo_small_caliber_item_t9").id;
        var_dd8041ff = 0;
        var_348a5219 = 1;
        foreach (inventoryitem in self.inventory.items) {
            itemid = inventoryitem.id;
            if (itemid == 32767) {
                continue;
            }
            if (itemid != var_cc6ff6a1) {
                var_348a5219 = 0;
                break;
            }
        }
        foreach (ammoweapon, itemid in self.inventory.ammo) {
            if (!var_348a5219) {
                break;
            }
            weapon = getweapon(ammoweapon);
            ammostock = self getweaponammostock(weapon);
            if (itemid == var_122bdb78) {
                var_dd8041ff = ammostock;
                continue;
            }
            if (ammostock > 0) {
                var_348a5219 = 0;
                break;
            }
        }
        if (var_348a5219) {
            ammoitem = function_4ba8fde(#"ammo_small_caliber_item_t9");
            ammoweapon = item_world_util::function_f4a8d375(ammoitem.id);
            item_drop::drop_item(0, ammoweapon, 1, var_dd8041ff, ammoitem.id, self.origin);
        }
        return !var_348a5219;
    }
    return true;
}

// Namespace namespace_bc2b656d/namespace_bc2b656d
// Params 1, eflags: 0x0
// Checksum 0x46f0faf2, Offset: 0xab8
// Size: 0xc0
function on_team_eliminated(params) {
    players = getplayers(params.team);
    foreach (player in players) {
        if (isdefined(player.var_b88236d6)) {
            player.var_b88236d6 delete();
        }
    }
}

// Namespace namespace_bc2b656d/namespace_bc2b656d
// Params 1, eflags: 0x0
// Checksum 0x94a8fa6a, Offset: 0xb80
// Size: 0xd4
function on_player_killed(*params) {
    self.var_26074a5b = undefined;
    if (!isdefined(self.var_b88236d6)) {
        vehicle = spawnvehicle(#"hash_3effd1dd89ee3d36", (0, 0, 0), (0, 0, 0));
        if (isdefined(vehicle)) {
            vehicle.targetname = "reinsertionvehicle";
            vehicle ghost();
            vehicle notsolid();
            self.var_b88236d6 = vehicle;
        }
    }
    self thread function_855ba783();
    self thread function_c3144b08();
}

// Namespace namespace_bc2b656d/namespace_bc2b656d
// Params 0, eflags: 0x0
// Checksum 0x4c6db7cf, Offset: 0xc60
// Size: 0xb0
function function_b057aee2() {
    players = function_a1ef346b();
    foreach (player in players) {
        scoreevents::processscoreevent(#"hash_3f198e388e56ccf5", player);
    }
}

// Namespace namespace_bc2b656d/namespace_bc2b656d
// Params 0, eflags: 0x0
// Checksum 0xb475c0a0, Offset: 0xd18
// Size: 0x62
function function_855ba783() {
    self endon(#"disconnect");
    level endon(#"game_ended");
    self waittill(#"spawned");
    if (self.currentspectatingclient > -1) {
        self.var_26074a5b = self.currentspectatingclient;
    }
}

// Namespace namespace_bc2b656d/namespace_bc2b656d
// Params 0, eflags: 0x0
// Checksum 0x9f5fdf48, Offset: 0xd88
// Size: 0xbc
function function_c3144b08() {
    self endon(#"disconnect", #"spawned", #"force_spawn");
    level endon(#"game_ended");
    waitresult = self waittill(#"waitingtospawn");
    var_fa9f2461 = waitresult.timeuntilspawn + -0.5;
    if (var_fa9f2461 > 0) {
        wait(var_fa9f2461);
    }
    self luinotifyevent(#"hash_175f8739ed7a932", 0);
}

// Namespace namespace_bc2b656d/namespace_bc2b656d
// Params 0, eflags: 0x0
// Checksum 0xef76c799, Offset: 0xe50
// Size: 0x2c
function on_player_disconnect() {
    if (isdefined(self.var_b88236d6)) {
        self.var_b88236d6 delete();
    }
}

// Namespace namespace_bc2b656d/namespace_bc2b656d
// Params 0, eflags: 0x0
// Checksum 0x618dc996, Offset: 0xe88
// Size: 0x1d4
function function_807b902() {
    if (!isdefined(level.inprematchperiod) || level.inprematchperiod) {
        return;
    }
    self thread function_acdf637e();
    player = self function_70f1d702();
    if (isdefined(player)) {
        if (isdefined(level.deathcircle.var_5c54ab33)) {
            self function_2ec1bf5c(player.origin);
        } else {
            fwd = anglestoforward(player.angles);
            groundpt = player.origin - fwd * 1500;
            var_6b4313e9 = player.origin + fwd * 1500;
            self function_b74c009d(groundpt, var_6b4313e9);
        }
        return;
    }
    if (isdefined(level.deathcircle.var_5c54ab33)) {
        circle = level.deathcircle.var_5c54ab33;
        angle = randomint(360);
        origin = circle.origin + (cos(angle), sin(angle), 0);
        self function_2ec1bf5c(origin);
    }
}

// Namespace namespace_bc2b656d/namespace_bc2b656d
// Params 0, eflags: 0x0
// Checksum 0xb935002e, Offset: 0x1068
// Size: 0xba
function function_70f1d702() {
    if (isdefined(self.var_26074a5b)) {
        player = getentbynum(self.var_26074a5b);
        if (isalive(player) && player.team == self.team) {
            return player;
        }
    }
    players = function_a1cff525(self.squad);
    if (players.size > 0) {
        return players[randomint(players.size)];
    }
    return undefined;
}

// Namespace namespace_bc2b656d/namespace_bc2b656d
// Params 1, eflags: 0x0
// Checksum 0x5855ddd, Offset: 0x1130
// Size: 0x36c
function function_2ec1bf5c(origin) {
    circle = level.deathcircle.var_5c54ab33;
    var_bab1ee6b = {#origin:circle.origin, #radius:circle.radius - 1500};
    var_d9100e0 = isdefined(level.deathcircle.nextcircle) ? level.deathcircle.nextcircle.origin : circle.origin;
    dir = vectornormalize(origin - var_d9100e0);
    var_51c8b128 = death_circle::function_936b3f09(origin, dir, var_bab1ee6b);
    point = (var_51c8b128[0], var_51c8b128[1], 0);
    if (isdefined(level.territory) && isarray(level.territory.bounds) && level.territory.bounds.size > 0) {
        inbounds = 0;
        var_ddd29fdc = vectornormalize((var_d9100e0[0], var_d9100e0[1], 0) - point);
        while (!inbounds) {
            foreach (bound in level.territory.bounds) {
                testpoint = (point[0], point[1], bound.origin[2]);
                if (istouching(testpoint, bound)) {
                    inbounds = 1;
                    break;
                }
            }
            if (!inbounds) {
                point += var_ddd29fdc * 1000;
            }
        }
    }
    trace = groundtrace(point + (0, 0, 20000), point + (0, 0, -10000), 0, undefined);
    groundpoint = trace[#"position"];
    trace = groundtrace(var_d9100e0 + (0, 0, 20000), var_d9100e0 + (0, 0, -10000), 0, undefined);
    var_6b4313e9 = trace[#"position"];
    self function_b74c009d(groundpoint, var_6b4313e9);
}

// Namespace namespace_bc2b656d/namespace_bc2b656d
// Params 2, eflags: 0x0
// Checksum 0x66efe323, Offset: 0x14a8
// Size: 0x18c
function function_b74c009d(groundpoint, var_6b4313e9) {
    players = function_c65231e2(self.squad);
    if (players.size <= 0) {
        return;
    }
    for (squadindex = 0; squadindex < players.size; squadindex++) {
        if (self == players[squadindex]) {
            break;
        }
    }
    slice = 360 / players.size;
    angle = squadindex * slice;
    r = randomintrange(150, 200);
    xoffset = r * cos(angle);
    yoffset = r * sin(angle);
    zoffset = getdvarint(#"hash_1e5142ed6dd5c6a0", randomintrange(15000, 15100));
    origin = groundpoint + (xoffset, yoffset, zoffset);
    self thread function_2613549d(origin, var_6b4313e9);
}

// Namespace namespace_bc2b656d/namespace_bc2b656d
// Params 2, eflags: 0x0
// Checksum 0x65d22ee9, Offset: 0x1640
// Size: 0x23c
function function_2613549d(origin, var_6b4313e9) {
    level endon(#"game_ended");
    self endon(#"disconnect", #"end_respawn");
    self setorigin(origin);
    fwd = var_6b4313e9 - origin;
    var_7d48f39e = vectortoangles(fwd);
    launchvelocity = fwd;
    vehicle = self.var_b88236d6;
    if (isdefined(vehicle)) {
        vehicle.origin = origin;
        vehicle.angles = var_7d48f39e;
        self ghost();
        self notsolid();
        self dontinterpolate();
        self setclientthirdperson(1);
        self function_648c1f6(vehicle, undefined, 0, 180, 180, 180, 180, 0);
        self setplayerangles(var_7d48f39e);
        wait(0);
        self setclientthirdperson(0);
        self startcameratween(0);
        self show();
        self solid();
        self unlink();
        launchvelocity = anglestoforward(self getplayerangles());
    }
    self player_insertion::start_freefall(launchvelocity, 1);
}

// Namespace namespace_bc2b656d/namespace_bc2b656d
// Params 0, eflags: 0x4
// Checksum 0xab29793f, Offset: 0x1888
// Size: 0x28
function private function_acdf637e() {
    if (isdefined(level.var_317fb13c)) {
        self thread [[ level.var_317fb13c ]]();
    }
}

// Namespace namespace_bc2b656d/namespace_bc2b656d
// Params 0, eflags: 0x0
// Checksum 0xfbde484d, Offset: 0x18b8
// Size: 0x5c
function function_fd9dd4cc() {
    players = function_c65231e2(self.squad);
    for (i = 0; i < players.size; i++) {
        if (self == players[i]) {
            return i;
        }
    }
    return 0;
}

