// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using script_40fc784c60f9fa7b;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace player_tank;

// Namespace player_tank/player_tank
// Params 0, eflags: 0x5
// Checksum 0x5b761cf4, Offset: 0x1d0
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"player_tank", &preinit, undefined, undefined, #"player_vehicle");
}

// Namespace player_tank/player_tank
// Params 0, eflags: 0x6 linked
// Checksum 0x280fb573, Offset: 0x220
// Size: 0x8c
function private preinit() {
    vehicle::add_main_callback("player_tank", &function_c0f1d81b);
    clientfield::register("scriptmover", "tank_deathfx", 1, 1, "int");
    clientfield::register("vehicle", "tank_shellejectfx", 1, 1, "int");
}

// Namespace player_tank/player_tank
// Params 0, eflags: 0x6 linked
// Checksum 0x68b9ded, Offset: 0x2b8
// Size: 0x19c
function private function_c0f1d81b() {
    self setmovingplatformenabled(1, 0);
    self.var_84fed14b = 0;
    self.var_d6691161 = 0;
    self.var_5d662124 = 2;
    self.var_3daa0191 = &function_b61c27bb;
    callback::function_d8abfc3d(#"hash_666d48a558881a36", &function_96f5d31b);
    callback::function_d8abfc3d(#"hash_55f29e0747697500", &function_cd8db309);
    callback::function_d8abfc3d(#"hash_2c1cafe2a67dfef8", &function_b8458486);
    callback::function_d8abfc3d(#"hash_551381cffdc79048", &player_vehicle::function_948f0984);
    callback::function_d8abfc3d(#"on_vehicle_damage", &on_vehicle_damage);
    callback::function_d8abfc3d(#"on_vehicle_killed", &function_4366bf50);
    self thread player_vehicle::function_5bce3f3a(1, 100);
}

// Namespace player_tank/player_tank
// Params 15, eflags: 0x6 linked
// Checksum 0x31a2ddd, Offset: 0x460
// Size: 0x234
function private function_b61c27bb(einflictor, eattacker, idamage, *idflags, smeansofdeath, *weapon, *vpoint, vdir, *shitloc, *vdamageorigin, *psoffsettime, *damagefromunderneath, *modelindex, *partname, *vsurfacenormal) {
    occupants = self getvehoccupants();
    if (isdefined(occupants)) {
        foreach (occupant in occupants) {
            if (isplayer(occupant) && !isbot(occupant)) {
                damagepct = modelindex / self.maxhealth;
                damagepct = int(max(damagepct, 3));
                damagedirection = undefined;
                if (isdefined(damagefromunderneath) || isdefined(psoffsettime)) {
                    if (isdefined(psoffsettime) && (partname === "MOD_RIFLE_BULLET" || partname === "MOD_PISTOL_BULLET")) {
                        damagedirection = vectornormalize(occupant.origin - psoffsettime.origin);
                    } else {
                        damagedirection = vsurfacenormal;
                    }
                }
                occupant addtodamageindicator(damagepct, damagedirection);
                break;
            }
        }
    }
}

// Namespace player_tank/player_tank
// Params 1, eflags: 0x2 linked
// Checksum 0x1790fdfc, Offset: 0x6a0
// Size: 0x354
function function_4366bf50(params) {
    eattacker = params.eattacker;
    weapon = params.weapon;
    if (isdefined(self.team) && isdefined(eattacker.team) && self.team != #"neutral" && util::function_fbce7263(self.team, eattacker.team) && self getvehoccupants().size > 0) {
        scoreevents::processscoreevent(#"hash_218ad43ea7de500d", eattacker, undefined, weapon);
    }
    deathmodel = spawn("script_model", self.origin + (0, 0, 80));
    deathmodel setmodel(#"hash_311c24b6407eaa02");
    deathmodel.angles = self function_bc2f1cb8(0);
    side_offset = getdvarint(#"hash_2163abe439abdd44", 5);
    var_a460aef2 = randomintrange(side_offset * -1, side_offset);
    forward_offset = getdvarint(#"hash_3ad1ffe3739de420", 10);
    forward = anglestoforward(deathmodel.angles);
    right = anglestoright(deathmodel.angles);
    contact_point = deathmodel.origin;
    contact_point += forward * forward_offset;
    contact_point += right * var_a460aef2;
    var_f0436c8a = getdvarint(#"hash_7a9d06ee19067d4f", 150);
    var_da0636d8 = getdvarint(#"hash_7a81f4ee18ef9701", 180);
    up_force = randomintrange(var_f0436c8a, var_da0636d8);
    deathmodel physicslaunch(contact_point, (0, 0, up_force));
    deathmodel clientfield::set("tank_deathfx", 1);
    deathmodel waittilltimeout(20, #"death");
    if (isdefined(deathmodel)) {
        deathmodel deletedelay();
    }
}

// Namespace player_tank/player_tank
// Params 1, eflags: 0x6 linked
// Checksum 0xd2019b9f, Offset: 0xa00
// Size: 0x84
function private function_96f5d31b(params) {
    player = params.player;
    eventstruct = params.eventstruct;
    if (!isdefined(player)) {
        return;
    }
    if (eventstruct.seat_index === 0) {
        self function_11397df9(player);
    }
    self thread function_2014e301(player);
}

// Namespace player_tank/player_tank
// Params 1, eflags: 0x6 linked
// Checksum 0xdc986679, Offset: 0xa90
// Size: 0x5c
function private function_cd8db309(params) {
    eventstruct = params.eventstruct;
    player = params.player;
    if (eventstruct.seat_index === 0) {
        self function_eba4498a(player);
    }
}

// Namespace player_tank/player_tank
// Params 1, eflags: 0x2 linked
// Checksum 0xb53a468a, Offset: 0xaf8
// Size: 0x9c
function function_b8458486(params) {
    player = params.player;
    eventstruct = params.eventstruct;
    if (!isdefined(player)) {
        return;
    }
    if (eventstruct.seat_index === 0) {
        self function_11397df9(player);
        self thread function_2014e301(player);
        return;
    }
    self function_eba4498a(player);
}

// Namespace player_tank/player_tank
// Params 0, eflags: 0x6 linked
// Checksum 0x25ccf177, Offset: 0xba0
// Size: 0x104
function private function_44f6c97c() {
    self endon(#"death");
    self notify("65aa500f1592187f");
    self endon("65aa500f1592187f");
    wait(0.5);
    self vehicle::toggle_control_bone_group(1, 1);
    self playsound("veh_tank_shell_hatch_open");
    wait(0.5);
    self clientfield::set("tank_shellejectfx", 1);
    wait(1.25);
    self clientfield::set("tank_shellejectfx", 0);
    self vehicle::toggle_control_bone_group(1, 0);
    self playsound("veh_tank_shell_hatch_close");
}

// Namespace player_tank/player_tank
// Params 1, eflags: 0x6 linked
// Checksum 0xfb3f47ab, Offset: 0xcb0
// Size: 0x130
function private function_2014e301(player) {
    player endon(#"hash_27646c99772610b4", #"death", #"exit_vehicle");
    self endon(#"death");
    while (true) {
        self waittill(#"weapon_fired");
        if (!is_true(self.var_1bc57b69)) {
            self thread function_44f6c97c();
        }
        var_3212abd9 = self seatgetweapon(0);
        var_610cfafc = int(var_3212abd9.reloadtime * 1000);
        player setvehicleweaponwaitduration(var_610cfafc);
        player setvehicleweaponwaitendtime(gettime() + var_610cfafc);
    }
}

// Namespace player_tank/player_tank
// Params 1, eflags: 0x2 linked
// Checksum 0x1f0bf926, Offset: 0xde8
// Size: 0x5c
function function_11397df9(player) {
    if (!isdefined(self.var_9be5a571)) {
        self.var_9be5a571 = [];
    }
    player.overrideplayerdamage = &function_7daf5af2;
    player.var_9a9c6a96 = 1;
    self thread player_vehicle::function_53f7a11f(player);
}

// Namespace player_tank/player_tank
// Params 1, eflags: 0x2 linked
// Checksum 0x60cf9dec, Offset: 0xe50
// Size: 0x48
function function_eba4498a(player) {
    self.overridevehicledamage = undefined;
    if (isdefined(player)) {
        player.overrideplayerdamage = undefined;
        player.var_9a9c6a96 = undefined;
        player notify(#"hash_27646c99772610b4");
    }
}

// Namespace player_tank/player_tank
// Params 1, eflags: 0x6 linked
// Checksum 0x5c989f8f, Offset: 0xea0
// Size: 0x84
function private on_vehicle_damage(params) {
    if (isplayer(params.eattacker) && params.eattacker isinvehicle() && params.smeansofdeath === "MOD_PROJECTILE") {
        self playsound(#"hash_301ede6e928927f2");
    }
}

// Namespace player_tank/player_tank
// Params 16, eflags: 0x6 linked
// Checksum 0xd6a9c5b0, Offset: 0xf30
// Size: 0x128
function private function_7daf5af2(*einflictor, *eattacker, idamage, *idflags, smeansofdeath, *weapon, *var_fd90b0bb, *vpoint, *vdir, *shitloc, *vdamageorigin, *psoffsettime, *damagefromunderneath, *modelindex, *partname, *vsurfacenormal) {
    damage = partname;
    vehicle = self getvehicleoccupied();
    if (!isvehicle(vehicle) || !isalive(vehicle)) {
        return damage;
    }
    if (vsurfacenormal === "MOD_DEATH_CIRCLE") {
        return damage;
    }
    if (vsurfacenormal === "MOD_TRIGGER_HURT") {
        return damage;
    }
    damage = 0;
    return damage;
}

