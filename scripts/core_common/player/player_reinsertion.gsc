// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using script_305d57cf0618009d;
#using script_6e9b46ba8331f1f;
#using scripts\core_common\player\player_insertion.gsc;
#using scripts\core_common\player\player_free_fall.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\death_circle.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\globallogic\globallogic_player.gsc;
#using scripts\core_common\bots\bot_insertion.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace player_reinsertion;

// Namespace player_reinsertion/player_reinsertion
// Params 0, eflags: 0x5
// Checksum 0xbf6f4d24, Offset: 0x240
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"player_reinsertion", &preinit, undefined, undefined, undefined);
}

// Namespace player_reinsertion/player_reinsertion
// Params 0, eflags: 0x6 linked
// Checksum 0xaa8fcf11, Offset: 0x288
// Size: 0x84
function private preinit() {
    if (level.var_f2814a96 !== 0) {
        return;
    }
    callback::add_callback(#"hash_6b7d26d34885b425", &function_4012c0ab);
    callback::on_game_playing(&on_game_playing);
    level.reinsertion = spawnstruct();
}

// Namespace player_reinsertion/player_reinsertion
// Params 0, eflags: 0x2 linked
// Checksum 0x7b2fb708, Offset: 0x318
// Size: 0x34
function on_game_playing() {
    level thread function_3d39c260();
    /#
        level thread function_a6eac3b7();
    #/
}

// Namespace player_reinsertion/player_reinsertion
// Params 0, eflags: 0x2 linked
// Checksum 0x4d0e6d33, Offset: 0x358
// Size: 0x1b4
function function_3d39c260() {
    if (level.numlives == 1) {
        return;
    }
    var_7eb8f61a = isdefined(getgametypesetting(#"wzplayerinsertiontypeindex")) ? getgametypesetting(#"wzplayerinsertiontypeindex") : 0;
    if (var_7eb8f61a != 0 && var_7eb8f61a != 3 || is_true(level.wave_spawn)) {
        return;
    }
    var_f8d960b2 = 0.6;
    height = 30000;
    center = (0, 0, height);
    radius = function_cf96c89c() * var_f8d960b2;
    vehicle = function_d5d96302(center, radius);
    if (!isdefined(vehicle)) {
        return;
    }
    level.reinsertion.vehicle = vehicle;
    vehicle thread function_14f79b33(center, radius, height, var_f8d960b2);
    level.reinsertion.cameraent = function_15e6e9ae(vehicle);
    level thread function_eb815c5();
}

// Namespace player_reinsertion/player_reinsertion
// Params 2, eflags: 0x2 linked
// Checksum 0xca8bc5fe, Offset: 0x518
// Size: 0x72
function function_a20b914d(circle_origin, circle_radius) {
    angles = (0, randomint(360), 0);
    direction = anglestoforward(angles);
    spawn_origin = circle_origin - direction * circle_radius;
    return spawn_origin;
}

// Namespace player_reinsertion/player_reinsertion
// Params 0, eflags: 0x2 linked
// Checksum 0x3f959147, Offset: 0x598
// Size: 0xde
function function_cf96c89c() {
    minimaporigins = getentarray("map_corner", "targetname");
    if (minimaporigins.size) {
        x = abs(minimaporigins[0].origin[0] - minimaporigins[1].origin[0]);
        y = abs(minimaporigins[0].origin[1] - minimaporigins[1].origin[1]);
        return min(x, y);
    }
    return 0;
}

// Namespace player_reinsertion/player_reinsertion
// Params 2, eflags: 0x2 linked
// Checksum 0x3aab9882, Offset: 0x680
// Size: 0x72
function function_93376ccd(center, origin) {
    left = vectornormalize(origin - center);
    forward = vectorcross(left, (0, 0, 1));
    return vectortoangles(forward);
}

// Namespace player_reinsertion/player_reinsertion
// Params 2, eflags: 0x2 linked
// Checksum 0x1c893d0c, Offset: 0x700
// Size: 0x130
function function_d5d96302(center, radius) {
    /#
        while (getplayers().size == 0) {
            wait(0.5);
        }
    #/
    origin = function_a20b914d(center, radius);
    angles = function_93376ccd(center, origin);
    vehicle = spawnvehicle("vehicle_t9_mil_helicopter_care_package", origin, angles);
    vehicle.takedamage = 0;
    vehicle setneargoalnotifydist(512);
    vehicle clientfield::set("infiltration_landing_gear", 1);
    vehicle setrotorspeed(1);
    vehicle setspeedimmediate(100);
    return vehicle;
}

// Namespace player_reinsertion/player_reinsertion
// Params 1, eflags: 0x2 linked
// Checksum 0xd85e27b8, Offset: 0x838
// Size: 0x70
function function_15e6e9ae(vehicle) {
    camera = player_insertion::function_57fe9b21(level.insertion, vehicle.origin);
    camera.origin = vehicle.origin;
    camera.angles = vehicle.angles;
    camera linkto(vehicle);
    return camera;
}

// Namespace player_reinsertion/player_reinsertion
// Params 3, eflags: 0x6 linked
// Checksum 0x449d81a, Offset: 0x8b0
// Size: 0x220
function private function_521bff14(center, goal, var_e294ac7d) {
    direction = goal - center;
    steps = int(length(direction) / 1000);
    direction = vectornormalize(direction);
    var_3d4c4e94 = player_insertion::function_f31cf3bb(center, direction, 1000, 0, steps);
    if (!isdefined(var_3d4c4e94)) {
        var_3d4c4e94 = center;
    }
    if (distance2dsquared(goal, var_3d4c4e94) > sqr(0.01)) {
        delta = var_3d4c4e94 - center;
        length = length(delta);
        direction = vectornormalize(delta);
        new_point = center + direction * length * var_e294ac7d;
        /#
            var_ced865d2 = center + direction * length;
            thread player_insertion::debug_line(center, new_point, (1, 0, 0), level.reinsertion.debug_duration);
            thread player_insertion::debug_line(new_point, var_ced865d2, (0, 1, 1), level.reinsertion.debug_duration);
            thread player_insertion::debug_line(var_ced865d2, goal, (1, 0, 1), level.reinsertion.debug_duration);
        #/
        return new_point;
    }
    /#
        thread player_insertion::debug_line(center, goal, (1, 0, 0), level.reinsertion.debug_duration);
    #/
    return goal;
}

// Namespace player_reinsertion/player_reinsertion
// Params 0, eflags: 0x2 linked
// Checksum 0x42e89629, Offset: 0xad8
// Size: 0x44
function function_8ea9be1c() {
    if (!isdefined(level.reinsertion.vehicle)) {
        return;
    }
    level.reinsertion.vehicle function_beba57b9(30000);
}

// Namespace player_reinsertion/player_reinsertion
// Params 1, eflags: 0x6 linked
// Checksum 0x73e67de8, Offset: 0xb28
// Size: 0xa4
function private function_beba57b9(height) {
    var_e8a39fb = function_cf96c89c();
    goal = rotatepoint((1, 0, 0), (0, randomint(360), 0)) * var_e8a39fb * 2;
    goal = (goal[0], goal[1], height);
    self function_a57c34b7(goal, 0, 0);
}

// Namespace player_reinsertion/player_reinsertion
// Params 4, eflags: 0x6 linked
// Checksum 0x7ba7ea8d, Offset: 0xbd8
// Size: 0x2f6
function private function_14f79b33(center, radius, height, var_e294ac7d) {
    self endon(#"death");
    var_5d59bc67 = 1760;
    time_step = 5;
    while (true) {
        if (!death_circle::is_active()) {
            circle_origin = center;
            circle_radius = radius;
        } else {
            circle_origin = death_circle::function_b980b4ca();
            circle_origin = (circle_origin[0], circle_origin[1], height);
            circle_radius = death_circle::function_f8dae197() * var_e294ac7d;
        }
        if (circle_radius < 0.01) {
            self function_beba57b9(height);
            return;
        }
        /#
            level.reinsertion.debug_duration = 1000;
            thread player_insertion::debug_line(circle_origin, level.reinsertion.vehicle.origin, (0, 0, 1), level.reinsertion.debug_duration);
        #/
        var_9c068ab1 = vectornormalize(level.reinsertion.vehicle.origin - circle_origin);
        var_c40f2e06 = vectortoangles(var_9c068ab1);
        current_yaw = var_c40f2e06[1];
        var_c5a2c1c9 = var_5d59bc67 / circle_radius * 57.2958;
        new_yaw = current_yaw + time_step * var_c5a2c1c9;
        new_angles = (0, new_yaw, 0);
        goal = circle_origin + anglestoforward(new_angles) * circle_radius;
        goal = function_521bff14(circle_origin, goal, var_e294ac7d);
        /#
            thread player_insertion::debug_line(level.reinsertion.vehicle.origin, goal, (0, 1, 0), level.reinsertion.debug_duration);
        #/
        self function_a57c34b7(goal, 0, 0);
        self waittill(#"goal", #"near_goal");
    }
}

// Namespace player_reinsertion/player_reinsertion
// Params 4, eflags: 0x4
// Checksum 0xe0f5869a, Offset: 0xed8
// Size: 0x192
function private function_4f356be(start, end, offset, var_3a5f8906) {
    self endon(#"death");
    self function_a57c34b7(end, 0, 0);
    distance = distance(end, start);
    var_27dfb385 = int(distance / 5000);
    remainingdist = int(distance) % 5000;
    for (i = 1; i <= var_27dfb385; i++) {
        self pathvariableoffset((offset, offset, offset) * (var_27dfb385 - i + 1), var_3a5f8906);
        self player_insertion::function_85635daf(start, distance, i * 5000 / distance);
    }
    if (remainingdist > 0) {
        self pathvariableoffset((offset, offset, offset), var_3a5f8906);
    }
    self waittill(#"goal", #"near_goal");
}

// Namespace player_reinsertion/player_reinsertion
// Params 3, eflags: 0x2 linked
// Checksum 0xaea3fa51, Offset: 0x1078
// Size: 0xf0
function function_b24f3a72(origin, radius, height) {
    point = self.origin;
    distance = distance2d(point, origin);
    if (distance == 0) {
        return origin;
    }
    angle = cos(radius / distance);
    vec = vectornormalize(point - origin);
    goal = rotatepoint(vec, (0, angle, 0)) * radius;
    return (goal[0], goal[1], height);
}

// Namespace player_reinsertion/player_reinsertion
// Params 2, eflags: 0x0
// Checksum 0x5e227ef0, Offset: 0x1170
// Size: 0xd2
function function_8655661f(radius_t, height) {
    if (!death_circle::is_active()) {
        return self function_b24f3a72((0, 0, height), 50000 * radius_t, height);
    }
    origin = death_circle::function_b980b4ca();
    origin = (origin[0], origin[1], height);
    radius = death_circle::function_f8dae197() * radius_t;
    goal = self function_b24f3a72(origin, radius, height);
    return goal;
}

// Namespace player_reinsertion/player_reinsertion
// Params 0, eflags: 0x2 linked
// Checksum 0x8ebac20, Offset: 0x1250
// Size: 0x24a
function function_b2df2693() {
    var_48bc2733 = [];
    foreach (team in level.teams) {
        if (function_a1ef346b(team).size > 0) {
            players = getplayers(team);
            /#
                player_alive = 0;
                foreach (player in players) {
                    if (isalive(player) && player.sessionstate == "<unknown string>") {
                        player_alive = 1;
                        break;
                    }
                }
                assert(player_alive, "<unknown string>");
                if (player_alive == 0) {
                    continue;
                }
            #/
            foreach (player in players) {
                if (!isalive(player) || player.sessionstate != "playing") {
                    var_48bc2733[var_48bc2733.size] = player;
                }
            }
        }
    }
    return var_48bc2733;
}

// Namespace player_reinsertion/player_reinsertion
// Params 0, eflags: 0x4
// Checksum 0xab76eac, Offset: 0x14a8
// Size: 0xb4
function private function_c3ab4925() {
    self.var_97b0977 = 0;
    self setclientuivisibilityflag("weapon_hud_visible", 0);
    self flag::clear(#"hash_224cb97b8f682317");
    self flag::clear(#"hash_287397edba8966f9");
    self function_c62b5591();
    if (isbot(self)) {
        self bot_insertion::function_d7ba3d0b();
    }
}

// Namespace player_reinsertion/player_reinsertion
// Params 0, eflags: 0x6 linked
// Checksum 0x4a811ff4, Offset: 0x1568
// Size: 0x94
function private function_564e0871() {
    self.var_97b0977 = 0;
    self flag::clear(#"hash_224cb97b8f682317");
    self flag::set(#"hash_287397edba8966f9");
    self function_c62b5591();
    if (isbot(self)) {
        self bot_insertion::function_d7ba3d0b();
    }
}

// Namespace player_reinsertion/player_reinsertion
// Params 0, eflags: 0x6 linked
// Checksum 0x5628aafa, Offset: 0x1608
// Size: 0x78
function private function_acdf637e() {
    if (isdefined(getgametypesetting(#"hash_4149d5d65eb07138")) ? getgametypesetting(#"hash_4149d5d65eb07138") : 0) {
        if (isdefined(level.var_317fb13c)) {
            self thread [[ level.var_317fb13c ]]();
        }
    }
}

// Namespace player_reinsertion/player_reinsertion
// Params 0, eflags: 0x6 linked
// Checksum 0xbb58d767, Offset: 0x1688
// Size: 0x10c
function private function_c62b5591() {
    if (isdefined(level.reinsertion) && isdefined(level.reinsertion.cameraent)) {
        level.reinsertion.cameraent clientfield::set("infiltration_plane", player_insertion::function_1e4302d0(1, level.insertion.index));
        level.reinsertion.cameraent clientfield::set("infiltration_ent", player_insertion::function_1e4302d0(1, level.insertion.index));
        level.reinsertion.cameraent setvisibletoplayer(self);
    }
    self player_insertion::show_postfx();
}

// Namespace player_reinsertion/player_reinsertion
// Params 0, eflags: 0x6 linked
// Checksum 0xf93f7670, Offset: 0x17a0
// Size: 0x6c
function private function_402101af() {
    if (isdefined(level.reinsertion) && isdefined(level.reinsertion.cameraent)) {
        level.reinsertion.cameraent setinvisibletoplayer(self);
    }
    self player_insertion::hide_postfx();
}

// Namespace player_reinsertion/player_reinsertion
// Params 0, eflags: 0x2 linked
// Checksum 0xa0d92e0b, Offset: 0x1818
// Size: 0xac
function function_eb815c5() {
    if (isdefined(level.reinsertion) && isdefined(level.reinsertion.cameraent)) {
        level.reinsertion.cameraent clientfield::set("infiltration_camera", player_insertion::function_1e4302d0(2, level.insertion.index));
    }
    level callback::add_callback(#"hash_74b19f5972b0ee52", &function_6198f712);
}

// Namespace player_reinsertion/player_reinsertion
// Params 1, eflags: 0x6 linked
// Checksum 0xce82a102, Offset: 0x18d0
// Size: 0x34
function private function_6198f712(eventstruct) {
    if (isdefined(eventstruct.player)) {
        eventstruct.player function_402101af();
    }
}

// Namespace player_reinsertion/player_reinsertion
// Params 0, eflags: 0x2 linked
// Checksum 0xe4d6b3c1, Offset: 0x1910
// Size: 0x24
function function_218283c4() {
    self luinotifyevent(#"hash_175f8739ed7a932", 0);
}

// Namespace player_reinsertion/player_reinsertion
// Params 0, eflags: 0x2 linked
// Checksum 0xca570696, Offset: 0x1940
// Size: 0xa8
function function_de24c569() {
    player_insertion::function_a5fd9aa8(level.insertion);
    foreach (player in level.insertion.players) {
        player function_218283c4();
    }
}

// Namespace player_reinsertion/player_reinsertion
// Params 0, eflags: 0x2 linked
// Checksum 0xe1f9b45d, Offset: 0x19f0
// Size: 0xaa
function function_f9348c1d() {
    circle_center = death_circle::function_b980b4ca();
    angles = (0, 0, 0);
    if (isdefined(level.reinsertion) && isdefined(level.reinsertion.vehicle)) {
        var_9c068ab1 = vectornormalize(circle_center - level.reinsertion.vehicle.origin);
        angles = vectortoangles(var_9c068ab1);
    }
    return angles;
}

// Namespace player_reinsertion/player_reinsertion
// Params 0, eflags: 0x2 linked
// Checksum 0xfbc87473, Offset: 0x1aa8
// Size: 0xdc
function function_39a51e47() {
    self endon(#"disconnect");
    if (!isdefined(level.warp_portal_vehicles)) {
        self thread player_insertion::function_77132caf();
        self function_acdf637e();
        return;
    }
    var_8c305d53 = self function_5425f45d();
    if (var_8c305d53) {
        self function_acdf637e();
        self thread namespace_b9471dc1::function_f2867466();
        return;
    }
    self thread player_insertion::function_77132caf();
    self function_acdf637e();
}

// Namespace player_reinsertion/player_reinsertion
// Params 1, eflags: 0x2 linked
// Checksum 0x8bfaf546, Offset: 0x1b90
// Size: 0x25c
function function_3c4884f1(*var_819e1b79) {
    self endon(#"disconnect");
    targetorigin = self.lastdeathpos;
    angles = undefined;
    players = [];
    foreach (player in getplayers(self.team)) {
        if (player != self && isalive(player)) {
            players[players.size] = player;
        }
    }
    if (players.size > 0) {
        targetplayer = players[randomint(players.size)];
        targetorigin = player.origin;
        targetangles = player.angles;
    } else if (isdefined(self.lastdeathpos)) {
        targetorigin = self.lastdeathpos;
        if (death_circle::is_active()) {
            targetangles = vectortoangles(death_circle::function_b980b4ca() - targetorigin);
        } else {
            targetangles = self.angles;
        }
    }
    if (isdefined(targetorigin)) {
        fwd = anglestoforward(targetangles);
        spawnorigin = targetorigin - fwd * 1000 + (0, 0, 500);
        self setorigin(spawnorigin);
        self player_insertion::start_freefall(fwd * 1000, 0);
    }
    self function_acdf637e();
}

// Namespace player_reinsertion/player_reinsertion
// Params 0, eflags: 0x2 linked
// Checksum 0x6150d241, Offset: 0x1df8
// Size: 0xe4
function function_584c9f1() {
    self endon(#"disconnect");
    if (!isdefined(level.reinsertion.vehicle)) {
        self thread player_insertion::function_77132caf();
        return;
    }
    var_c40f2e06 = function_f9348c1d();
    self function_564e0871();
    self player_insertion::function_f795bf83(level.insertion, level.reinsertion.vehicle, var_c40f2e06[1]);
    self setplayerangles(var_c40f2e06);
    self function_acdf637e();
}

// Namespace player_reinsertion/player_reinsertion
// Params 0, eflags: 0x2 linked
// Checksum 0x6d7f0a42, Offset: 0x1ee8
// Size: 0x64
function function_836fe662() {
    wait(1);
    if (isdefined(level.deathcircleindex)) {
        level clientfield::set_world_uimodel("hudItems.warzone.reinsertionIndex", level.deathcircleindex + 1);
        return;
    }
    level clientfield::set_world_uimodel("hudItems.warzone.reinsertionIndex", 0);
}

// Namespace player_reinsertion/player_reinsertion
// Params 0, eflags: 0x2 linked
// Checksum 0xec4b2310, Offset: 0x1f58
// Size: 0x5dc
function function_fec68e5c() {
    var_7eb8f61a = isdefined(getgametypesetting(#"wzplayerinsertiontypeindex")) ? getgametypesetting(#"wzplayerinsertiontypeindex") : 0;
    /#
        if (getdvarint(#"scr_disable_infiltration", 0)) {
            level.insertion.players = arraycopy(function_b2df2693());
            foreach (player in level.insertion.players) {
                player.var_c5134737 = 1;
                player thread [[ level.spawnclient ]]();
                if (isdefined(player.lastdeathpos)) {
                    player setorigin(player.lastdeathpos);
                }
            }
            return;
        }
    #/
    if (!isdefined(level.insertion) || !is_true(level.insertion.allowed)) {
        return;
    }
    level thread function_836fe662();
    player_insertion::function_a21d9dc(level.insertion);
    level.insertion.players = arraycopy(function_b2df2693());
    level thread function_de24c569();
    wait(0.5 + 0.1);
    player_insertion::function_a5fd9aa8(level.insertion);
    foreach (player in level.insertion.players) {
        player.var_c5134737 = 1;
        player thread [[ level.spawnclient ]]();
        player player_insertion::function_b9a53f50();
    }
    level.insertion flag::set(#"insertion_teleport_completed");
    level.insertion flag::wait_till_timeout(1 + 2.5 + 0.5, #"insertion_presentation_completed");
    level.reinsertion.vehicle player_insertion::function_bc16f3b4(level.insertion);
    assert(10 > 0);
    wait(10);
    foreach (player in level.insertion.players) {
        if (!isdefined(player) || is_true(player.var_97b0977)) {
            continue;
        }
        player clientfield::set_to_player("infiltration_final_warning", 1);
    }
    wait(5);
    player_insertion::function_a5fd9aa8(level.insertion);
    foreach (player in level.insertion.players) {
        if (!isdefined(player) || is_true(player.var_97b0977)) {
            continue;
        }
        player flag::set(#"hash_224cb97b8f682317");
        player flag::set(#"hash_287397edba8966f9");
    }
    wait(1);
    level.reinsertion.vehicle clientfield::set("infiltration_transport", 0);
}

// Namespace player_reinsertion/player_reinsertion
// Params 0, eflags: 0x2 linked
// Checksum 0xe6bbc069, Offset: 0x2540
// Size: 0x278
function function_5425f45d() {
    if (death_circle::is_active()) {
        var_d89a84b0 = level.deathcircles.size - 1;
        step_height = 20000 / var_d89a84b0;
        height_diff = level.deathcircleindex * step_height;
        center = death_circle::function_b980b4ca();
        radius = death_circle::function_f8dae197() * 0.5;
        angle = 0;
        var_180a7b48 = self namespace_b9471dc1::function_ec7cfdb();
        portal = level.warp_portal_vehicles[var_180a7b48];
        if (isdefined(portal) && isdefined(portal.angle_step)) {
            angle = isdefined(portal.angle_step) ? portal.angle_step : 0;
            x_pos = center[0] + radius * cos(angle);
            y_pos = center[1] + radius * sin(angle);
            height = 20000 - height_diff;
            z_pos = math::clamp(height, 12000, 20000);
            if (death_circle::function_9956f107()) {
                height = 12000;
            }
            portal.origin = (x_pos, y_pos, z_pos);
            target = death_circle::get_next_origin() - portal.origin;
            target = vectornormalize(target);
            angles = vectortoangles(target);
            portal.angles = angles;
            return 1;
        } else {
            return 0;
        }
        return;
    }
    return 0;
}

// Namespace player_reinsertion/player_reinsertion
// Params 1, eflags: 0x2 linked
// Checksum 0x6c3a77d1, Offset: 0x27c0
// Size: 0x44
function function_4012c0ab(*params) {
    count = function_c14f7557();
    level clientfield::set_world_uimodel("hudItems.warzone.reinsertionPassengerCount", count);
}

// Namespace player_reinsertion/player_reinsertion
// Params 0, eflags: 0x2 linked
// Checksum 0x7d5274bc, Offset: 0x2810
// Size: 0x270
function function_c14f7557() {
    if (game.state != #"pregame" && game.state != #"playing") {
        return 0;
    }
    if (is_true(level.spawnsystem.deathcirclerespawn) && death_circle::function_4dc40125()) {
        return 0;
    }
    if (is_true(level.wave_spawn) && death_circle::function_9956f107()) {
        return 0;
    }
    count = 0;
    foreach (team in level.teams) {
        players = getplayers(team);
        var_40073db2 = 0;
        var_ead60f69 = 0;
        foreach (player in players) {
            if (isalive(player)) {
                var_40073db2++;
                continue;
            }
            if (player.sessionstate != "playing" && player globallogic_player::function_38527849()) {
                var_ead60f69++;
            }
        }
        if (!level.spawnsystem.var_c2cc011f || var_40073db2 > 0) {
            count += var_ead60f69;
        }
    }
    return count;
}

/#

    // Namespace player_reinsertion/player_reinsertion
    // Params 0, eflags: 0x4
    // Checksum 0x2f42e965, Offset: 0x2a88
    // Size: 0x7e
    function private function_a6eac3b7() {
        while (true) {
            if (getdvar(#"hash_3fb4a63926f3fa15", 0) > 0) {
                function_9536aa3d();
                setdvar(#"hash_3fb4a63926f3fa15", "<unknown string>");
            }
            waitframe(1);
        }
    }

    // Namespace player_reinsertion/player_reinsertion
    // Params 0, eflags: 0x0
    // Checksum 0x5a8f45ba, Offset: 0x2b10
    // Size: 0x3b8
    function function_9536aa3d() {
        var_269add6e = [];
        var_ef4e0b0 = [];
        foreach (team in level.teams) {
            var_d3934390 = 0;
            players_on_team = array::randomize(getplayers(team));
            foreach (person in players_on_team) {
                if (!isalive(person) || person laststand::player_is_in_laststand()) {
                    continue;
                }
                if (var_d3934390 == 0) {
                    var_d3934390 = 1;
                    var_269add6e[var_269add6e.size] = person;
                    continue;
                }
                var_ef4e0b0[var_ef4e0b0.size] = person;
            }
        }
        foreach (not in var_ef4e0b0) {
            if (var_269add6e.size) {
                killer = var_269add6e[randomint(var_269add6e.size)];
            } else {
                killer = not;
            }
            not thread function_c833e81f(killer);
        }
        center = death_circle::function_b980b4ca();
        radius = death_circle::function_f8dae197() * 0.5;
        if (radius == 0) {
            radius = 500;
        }
        foreach (lucky in var_269add6e) {
            spawn_point = rotatepoint((radius, 0, 0), (0, randomint(360), 0));
            lucky setorigin(center + spawn_point + (0, 0, 20000));
            lucky player_free_fall::function_7705a7fc(2, 0);
        }
    }

    // Namespace player_reinsertion/player_reinsertion
    // Params 1, eflags: 0x4
    // Checksum 0x39aae757, Offset: 0x2ed0
    // Size: 0x84
    function private function_c833e81f(killer) {
        self endon(#"disconnect");
        self dodamage(self.health + 10000, self.origin + (0, 0, 1), killer);
        wait(1);
        self dodamage(self.health + 10000, self.origin + (0, 0, 1), killer);
    }

#/

// Namespace player_reinsertion/player_reinsertion
// Params 1, eflags: 0x0
// Checksum 0xb6f36186, Offset: 0x2f60
// Size: 0x1c
function function_b5ee47fa(func) {
    level.var_43341799 = func;
}

// Namespace player_reinsertion/player_reinsertion
// Params 0, eflags: 0x2 linked
// Checksum 0x4cb3c80d, Offset: 0x2f88
// Size: 0x10
function function_42a8e289() {
    return isdefined(level.var_43341799);
}

// Namespace player_reinsertion/player_reinsertion
// Params 0, eflags: 0x2 linked
// Checksum 0x20abab40, Offset: 0x2fa0
// Size: 0x18
function function_1579c63e() {
    self thread [[ level.var_43341799 ]]();
}

