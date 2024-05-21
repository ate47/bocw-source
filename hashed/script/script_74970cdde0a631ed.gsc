// Atian COD Tools GSC CW decompiler test
#using script_1a9763988299e68d;
#using script_2a5bf5b4a00cee0d;
#using script_40f967ad5d18ea74;
#using script_47851dbeea22fe66;
#using script_164a456ce05c3483;
#using script_4d748e58ce25b60c;
#using script_5f20d3b434d24884;
#using script_774302f762d76254;
#using script_1b0b07ff57d1dde3;
#using script_1ee011cd0961afd7;
#using script_350cffecd05ef6cf;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_17dcb1172e441bf6;
#using script_74a56359b7d02ab6;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\spawning_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_2889c797;

// Namespace namespace_2889c797/namespace_adb8d189
// Params 2, eflags: 0x2 linked
// Checksum 0x66a29167, Offset: 0x1b8
// Size: 0x524
function function_9c1c5551(origin, player) {
    if (!isdefined(player) || isdefined(player.doa.vehicle) || is_true(player.doa.var_36cc2d9a)) {
        return;
    }
    if (!is_true(level.doa.var_318aa67a)) {
        if (is_true(player.doa.infps)) {
            player notify(#"hash_7893364bd228d63e");
            waitframe(1);
            timeout = gettime() + 1000;
            while (is_true(player.doa.var_a5eb0385) && gettime() < timeout) {
                waitframe(1);
            }
        }
    }
    player endon(#"disconnect");
    player.doa.var_46b45756 = &function_9c1c5551;
    player.doa.var_36cc2d9a = 1;
    player namespace_7f5aeb59::function_77785447(1);
    player function_fee48e9e();
    level.doa.pickups.var_f20eb59f.origin = origin;
    tank = level.doa.pickups.var_f20eb59f spawner::spawn(1, "zombietron_tank_spawner", origin, player.angles);
    tank thread namespace_ec06fe4a::function_ae010bb4(player);
    player.doa.var_36cc2d9a = undefined;
    player.doa.vehicle = tank;
    tank.team = player.team;
    tank.owner = player;
    tank.playercontrolled = 1;
    tank.var_1bc57b69 = 1;
    tank.var_b9bb0656 = 1;
    tank setmodel("veh_t9_mil_ru_tank_t72_base_doa_" + player.doa.color);
    tank vehclearlookat();
    tank.var_7efce95 = 0;
    tank.var_3e742dc1 = 1;
    waitframe(1);
    tank usevehicle(player, 0);
    tank makeunusable();
    tank.health = 9999999;
    tank function_d733412a(0);
    timeout = player namespace_1c2a96f9::function_4808b985(30);
    if (isdefined(level.doa.var_a77e6349)) {
        timeout += 10;
    }
    tank thread function_c45d8312(player, timeout);
    player namespace_83eb6304::turnofffx("player_trail_" + player.doa.color);
    player waittill(#"hash_279998c5df86c04d");
    if (!is_true(self.doa.infps)) {
        player namespace_83eb6304::function_3ecfde67("player_trail_" + player.doa.color);
    }
    player namespace_7f5aeb59::function_77785447(0, 1);
    if (isdefined(tank)) {
        var_f3fd3234 = tank.origin;
        tank makeusable();
        if (isdefined(player)) {
            player function_9b3b2351(var_f3fd3234, tank);
        }
        if (isdefined(tank)) {
            tank namespace_ec06fe4a::function_52afe5df();
        }
    }
    player thread namespace_7f5aeb59::turnplayershieldon();
    player notify(#"hash_7893364bd228d63e");
    util::wait_network_frame();
    player clientfield::increment_to_player("controlBinding");
}

// Namespace namespace_2889c797/namespace_adb8d189
// Params 2, eflags: 0x2 linked
// Checksum 0x2d6fe4b, Offset: 0x6e8
// Size: 0x15c
function function_9b3b2351(*var_f3fd3234, vehicle) {
    if (!isdefined(vehicle)) {
        return;
    }
    self endon(#"disconnect");
    vehicle usevehicle(self, 0);
    if (namespace_4dae815d::function_59a9cf1d() == 0 && isdefined(level.doa.var_39e3fa99)) {
        spot = [[ level.doa.var_39e3fa99 ]]->function_70fb5745(vehicle.origin, 64, 1024, 1);
    }
    self.ignoreme = 0;
    self.doa.vehicle = undefined;
    self.doa.var_baad518e = undefined;
    self.doa.var_61c7a559 = gettime();
    self.doa.var_cfe0bf1b = self.doa.var_61c7a559 + 1000;
    if (isdefined(spot)) {
        self setorigin(spot.origin);
    }
    self clientfield::increment_to_player("controlBinding");
}

// Namespace namespace_2889c797/namespace_adb8d189
// Params 0, eflags: 0x2 linked
// Checksum 0x769f0dd5, Offset: 0x850
// Size: 0x5c
function function_fee48e9e() {
    if (!isdefined(self) || !isdefined(self.doa)) {
        return;
    }
    self notify(#"hash_77af89fb2b44942f");
    self notify(#"kill_chickens");
    util::wait_network_frame();
}

// Namespace namespace_2889c797/namespace_adb8d189
// Params 2, eflags: 0x2 linked
// Checksum 0x784bb876, Offset: 0x8b8
// Size: 0x80
function function_c45d8312(player, time) {
    self endon(#"death");
    player endon(#"disconnect", #"hash_279998c5df86c04d");
    while (!namespace_dfc652ee::function_f759a457()) {
        waitframe(1);
    }
    wait(time);
    player notify(#"hash_279998c5df86c04d");
}

