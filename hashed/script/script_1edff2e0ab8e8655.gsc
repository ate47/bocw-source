// Atian COD Tools GSC CW decompiler test
#using script_3d6782a8c8c2377d;
#using script_1a9763988299e68d;
#using script_2a5bf5b4a00cee0d;
#using script_40f967ad5d18ea74;
#using script_47851dbeea22fe66;
#using script_164a456ce05c3483;
#using script_4d748e58ce25b60c;
#using script_5f20d3b434d24884;
#using script_1b0b07ff57d1dde3;
#using script_1ee011cd0961afd7;
#using script_350cffecd05ef6cf;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_774302f762d76254;
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

#namespace namespace_78792ce8;

// Namespace namespace_78792ce8/namespace_40af7eee
// Params 0, eflags: 0x2 linked
// Checksum 0x4d2b916c, Offset: 0x1b8
// Size: 0x86
function function_7980d69c() {
    self endon(#"death");
    self enableaimassist();
    while (true) {
        target = self turretgettarget(0);
        if (isdefined(target)) {
            self turretsettarget(1, target);
        }
        waitframe(1);
    }
}

// Namespace namespace_78792ce8/namespace_40af7eee
// Params 0, eflags: 0x2 linked
// Checksum 0x5f35d529, Offset: 0x248
// Size: 0xba
function function_ba7e9b89() {
    self endon(#"death", #"exit_vehicle");
    firetime = max(self seatgetweapon(1).firetime, self seatgetweapon(2).firetime);
    self fireweapon(1);
    self fireweapon(2);
    wait(firetime);
}

// Namespace namespace_78792ce8/namespace_40af7eee
// Params 2, eflags: 0x2 linked
// Checksum 0x9bd66b6c, Offset: 0x310
// Size: 0x59c
function function_b974aa72(origin, player) {
    if (!isdefined(player) || isdefined(player.doa.vehicle) || is_true(player.doa.var_36cc2d9a) || !isdefined(level.doa.pickups.var_92a02b26)) {
        return;
    }
    if (!is_true(level.var_7fcdba66)) {
        siegebot::function_5de06a3f();
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
    player notify(#"hash_df25520ab279dff");
    player endon(#"disconnect");
    level.doa.pickups.var_92a02b26.origin = origin;
    siegebot = level.doa.pickups.var_92a02b26 spawner::spawn(1, "zombietron_siegebot_spawner", origin, player.angles);
    if (!isdefined(siegebot)) {
        return;
    }
    player.doa.var_46b45756 = &function_b974aa72;
    player.doa.var_36cc2d9a = 1;
    player namespace_7f5aeb59::function_77785447(1);
    player function_fee48e9e();
    siegebot.var_8c05c51a = &function_ba7e9b89;
    siegebot thread namespace_ec06fe4a::function_ae010bb4(player);
    player.doa.var_36cc2d9a = undefined;
    player.doa.vehicle = siegebot;
    siegebot.team = player.team;
    siegebot.owner = player;
    siegebot.playercontrolled = 1;
    siegebot.var_7efce95 = 0;
    siegebot setmodel("zombietron_siegebot_mini_" + player.doa.color);
    siegebot usevehicle(player, 0);
    siegebot makeunusable();
    siegebot.health = 9999999;
    siegebot thread function_7980d69c();
    siegebot.var_b9bb0656 = 1;
    siegebot function_d733412a(0);
    timeout = player namespace_1c2a96f9::function_4808b985(40);
    if (isdefined(level.doa.var_a77e6349)) {
        timeout += 30;
    }
    siegebot thread function_c45d8312(player, timeout);
    player namespace_83eb6304::turnofffx("player_trail_" + player.doa.color);
    player waittill(#"hash_279998c5df86c04d");
    if (!is_true(self.doa.infps)) {
        player namespace_83eb6304::function_3ecfde67("player_trail_" + player.doa.color);
    }
    player namespace_7f5aeb59::function_77785447(0, 1);
    if (isdefined(siegebot)) {
        var_f3fd3234 = siegebot.origin;
        siegebot makeusable();
        if (isdefined(player)) {
            player function_9b3b2351(var_f3fd3234, siegebot);
        }
    }
    if (isdefined(siegebot)) {
        siegebot makeunusable();
        siegebot thread namespace_ec06fe4a::function_52afe5df();
    }
    player thread namespace_7f5aeb59::turnplayershieldon();
    player notify(#"hash_7893364bd228d63e");
    util::wait_network_frame();
    player clientfield::increment_to_player("controlBinding");
}

// Namespace namespace_78792ce8/namespace_40af7eee
// Params 2, eflags: 0x2 linked
// Checksum 0xdb8a18b1, Offset: 0x8b8
// Size: 0x16c
function function_9b3b2351(*var_f3fd3234, vehicle) {
    self endon(#"disconnect");
    if (isdefined(vehicle)) {
        vehicle.var_3e742dc1 = 1;
        vehicle usevehicle(self, 0);
    }
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

// Namespace namespace_78792ce8/namespace_40af7eee
// Params 0, eflags: 0x2 linked
// Checksum 0xacbb9369, Offset: 0xa30
// Size: 0x5c
function function_fee48e9e() {
    if (!isdefined(self) || !isdefined(self.doa)) {
        return;
    }
    self notify(#"hash_77af89fb2b44942f");
    self notify(#"kill_chickens");
    util::wait_network_frame();
}

// Namespace namespace_78792ce8/namespace_40af7eee
// Params 2, eflags: 0x2 linked
// Checksum 0xc8cd7a23, Offset: 0xa98
// Size: 0x108
function function_c45d8312(player, time) {
    player endon(#"disconnect", #"hash_279998c5df86c04d");
    while (!namespace_dfc652ee::function_f759a457()) {
        waitframe(1);
    }
    expiretime = gettime() + time * 1000;
    while (isdefined(self)) {
        result = self waittilltimeout(1, #"death", #"flipped", #"exit_vehicle");
        if (result._notify != #"timeout") {
            break;
        }
        if (gettime() > expiretime) {
            break;
        }
    }
    player notify(#"hash_279998c5df86c04d");
}

