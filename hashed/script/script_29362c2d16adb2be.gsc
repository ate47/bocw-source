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

#namespace namespace_56b772a5;

// Namespace namespace_56b772a5/namespace_c995c40a
// Params 1, eflags: 0x2 linked
// Checksum 0xc0518871, Offset: 0x1a8
// Size: 0x94
function function_160c9deb(heli) {
    self endon(#"disconnect", #"hash_df25520ab279dff", #"hash_279998c5df86c04d");
    heli endon(#"death");
    while (isdefined(heli)) {
        self.doa.var_baad518e = namespace_ec06fe4a::function_65ee50ba(heli.origin, 128);
        waitframe(1);
    }
}

// Namespace namespace_56b772a5/namespace_c995c40a
// Params 2, eflags: 0x2 linked
// Checksum 0xca2f2d2f, Offset: 0x248
// Size: 0x58c
function function_ee81f2ca(origin, player) {
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
    player.doa.var_46b45756 = &function_ee81f2ca;
    player notify(#"hash_df25520ab279dff");
    player endon(#"disconnect");
    player.doa.var_36cc2d9a = 1;
    player namespace_7f5aeb59::function_77785447(1);
    player function_fee48e9e();
    level.doa.pickups.var_4480248f.origin = origin + (0, 0, 64);
    hind = level.doa.pickups.var_4480248f spawner::spawn(1, "zombietron_hind_spawner", origin + (0, 0, 64), player.angles);
    hind thread namespace_ec06fe4a::function_ae010bb4(player);
    player.doa.var_36cc2d9a = undefined;
    player.doa.vehicle = hind;
    hind.team = player.team;
    hind.owner = player;
    hind.isairborne = 1;
    hind.playercontrolled = 1;
    hind setmodel("zombietron_hind_" + player.doa.color);
    hind vehclearlookat();
    hind.var_7efce95 = 0;
    hind.var_3e742dc1 = 1;
    hind function_803e9bf3(1);
    hind.var_b9bb0656 = 1;
    waitframe(1);
    hind usevehicle(player, 0);
    hind makeunusable();
    hind.health = 9999999;
    hind setheliheightlock(1);
    hind.heliheightlockoffset = 0;
    player thread function_160c9deb(hind);
    timeout = player namespace_1c2a96f9::function_4808b985(40);
    if (isdefined(level.doa.var_a77e6349)) {
        timeout += 20;
    }
    hind thread function_c45d8312(player, timeout);
    player namespace_83eb6304::turnofffx("player_trail_" + player.doa.color);
    player waittill(#"hash_279998c5df86c04d");
    if (!is_true(self.doa.infps)) {
        player namespace_83eb6304::function_3ecfde67("player_trail_" + player.doa.color);
    }
    player namespace_7f5aeb59::function_77785447(0, 1);
    if (isdefined(hind)) {
        var_f3fd3234 = hind.origin;
        hind makeusable();
        if (isdefined(player)) {
            player thread function_9b3b2351(var_f3fd3234, hind);
        }
        hind namespace_ec06fe4a::function_52afe5df();
    }
    player thread namespace_7f5aeb59::turnplayershieldon();
    player notify(#"hash_7893364bd228d63e");
    util::wait_network_frame();
    player clientfield::increment_to_player("controlBinding");
}

// Namespace namespace_56b772a5/namespace_c995c40a
// Params 2, eflags: 0x2 linked
// Checksum 0x8b2b4a5c, Offset: 0x7e0
// Size: 0x164
function function_9b3b2351(*var_f3fd3234, vehicle) {
    if (!isdefined(vehicle)) {
        return;
    }
    self endon(#"disconnect");
    if (namespace_4dae815d::function_59a9cf1d() == 0 && isdefined(level.doa.var_39e3fa99)) {
        spot = [[ level.doa.var_39e3fa99 ]]->function_70fb5745(vehicle.origin, 64, 1024, 1);
    }
    vehicle usevehicle(self, 0);
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

// Namespace namespace_56b772a5/namespace_c995c40a
// Params 0, eflags: 0x2 linked
// Checksum 0x8260ada1, Offset: 0x950
// Size: 0x5c
function function_fee48e9e() {
    if (!isdefined(self) || !isdefined(self.doa)) {
        return;
    }
    self notify(#"hash_77af89fb2b44942f");
    self notify(#"kill_chickens");
    util::wait_network_frame();
}

// Namespace namespace_56b772a5/namespace_c995c40a
// Params 2, eflags: 0x2 linked
// Checksum 0x1d4ffba0, Offset: 0x9b8
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

