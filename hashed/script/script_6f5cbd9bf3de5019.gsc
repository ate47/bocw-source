// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\array_shared.gsc;
#using script_40fc784c60f9fa7b;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\vehicle_death_shared.gsc;
#using scripts\core_common\vehicleriders_shared.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\vehicle_ai_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace namespace_f36ad2eb;

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 0, eflags: 0x5
// Checksum 0x57763388, Offset: 0x330
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_2838d085012cb7f", &preinit, undefined, undefined, #"player_vehicle");
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 0, eflags: 0x6 linked
// Checksum 0x218d9fc5, Offset: 0x380
// Size: 0x74
function private preinit() {
    vehicle::add_main_callback("player_large_helicopter_armada", &function_38ae4287);
    clientfield::register("scriptmover", "armada_chopper_deathfx", 1, 1, "int");
    /#
        level thread function_52dc2b28();
    #/
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 0, eflags: 0x2 linked
// Checksum 0xe3740ce2, Offset: 0x400
// Size: 0x494
function function_38ae4287() {
    self.death_type = "gibbed";
    self disabledriverfiring(1);
    self callback::function_d8abfc3d(#"on_vehicle_spawned", &function_89c08ee4);
    self player_vehicle::function_bc79899e();
    if (!isdefined(self) || function_3132f113(self)) {
        return;
    }
    callback::function_d8abfc3d(#"hash_666d48a558881a36", &function_1b957284);
    callback::function_d8abfc3d(#"hash_55f29e0747697500", &function_a7401191);
    callback::function_d8abfc3d(#"hash_2c1cafe2a67dfef8", &function_e2d16bde);
    self vehicle_ai::get_state_callbacks("off").enter_func = &function_6d4df083;
    self vehicle_ai::get_state_callbacks("off").exit_func = &function_b488602f;
    self vehicle_ai::get_state_callbacks("death").enter_func = &function_d43d2b06;
    self vehicle_ai::get_state_callbacks("death").update_func = &function_6ed31d89;
    self vehicle_ai::get_state_callbacks("driving").enter_func = &function_c0745670;
    self vehicle_ai::get_state_callbacks("driving").update_func = &function_b51c1995;
    self vehicle_ai::get_state_callbacks("driving").exit_func = &function_a9ad737b;
    self vehicle_ai::get_state_callbacks("scripted").enter_func = &function_3a367b9a;
    self vehicle_ai::get_state_callbacks("scripted").update_func = undefined;
    self vehicle_ai::get_state_callbacks("scripted").exit_func = &function_bf42edb7;
    self vehicle_ai::add_state("landing", &function_200c3bd0, &function_3a7426cf, undefined);
    self vehicle_ai::add_state("landed", &function_d39845f, &function_b705c816, &function_7db28345);
    self vehicle_ai::function_b94a7666("driving", "exit_vehicle");
    self vehicle_ai::function_b94a7666("off", "enter_vehicle");
    self vehicle_ai::add_interrupt_connection("landing", "driving", "enter_vehicle", &function_329f45a4);
    self vehicle_ai::add_interrupt_connection("off", "landed", "enter_vehicle", &function_329f45a4);
    self vehicle_ai::add_interrupt_connection("landed", "off", "exit_vehicle", &function_a1fd6110);
    self callback::on_vehicle_collision(&function_4885ce1);
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 0, eflags: 0x6 linked
// Checksum 0xc835ebae, Offset: 0x8a0
// Size: 0x44
function private function_89c08ee4() {
    self.vehkilloccupantsondeath = 1;
    self.var_ffdf490c = 1;
    /#
        self thread player_vehicle::deletemeonnotify(level, "<unknown string>");
    #/
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 1, eflags: 0x6 linked
// Checksum 0xf8a815f8, Offset: 0x8f0
// Size: 0x94
function private function_b985a0f1(player) {
    self notify(#"pilot_enter");
    self.owner = player;
    self thread function_7516cdbc("pilot_exit", player);
    self thread function_fcc7ca52();
    self thread function_5904233e();
    self setheliheightcap(1);
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 0, eflags: 0x2 linked
// Checksum 0x3a01fce, Offset: 0x990
// Size: 0xc0
function function_fcc7ca52() {
    self endon(#"death", #"pilot_exit");
    while (true) {
        params = self waittill(#"gunner_weapon_fired");
        if (params.gunner_index == 3) {
            wait(0.05);
            self turretsettarget(4, self turretgettarget(0));
            self fireweapon(4);
        }
    }
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 0, eflags: 0x2 linked
// Checksum 0xc4274edb, Offset: 0xa58
// Size: 0x80
function function_5904233e() {
    self endon(#"death", #"pilot_exit");
    while (true) {
        waitframe(1);
        target = self turretgettarget(0);
        if (isdefined(target)) {
            self turretsettarget(4, target);
        }
    }
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 1, eflags: 0x6 linked
// Checksum 0x752d5a89, Offset: 0xae0
// Size: 0xe4
function private function_2205f6bf(*player) {
    self notify(#"hash_3c7ae83e462fe4e2");
    self notify(#"pilot_exit");
    self setheliheightcap(0);
    self setheliheightlock(0);
    if (isdefined(self.owner)) {
        self.owner = undefined;
    }
    state = self vehicle_ai::get_current_state();
    if (state === "landed" || state === "off" || state === "scripted") {
        return;
    }
    self function_d929b41();
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 1, eflags: 0x6 linked
// Checksum 0xbcde4c05, Offset: 0xbd0
// Size: 0xec
function private function_1b957284(params) {
    player = params.player;
    eventstruct = params.eventstruct;
    seatindex = eventstruct.seat_index;
    if (seatindex === 0) {
        self function_b985a0f1(player);
    }
    if (eventstruct.seat_index === 1 || eventstruct.seat_index === 2) {
        player thread function_5bce3f3a(self, eventstruct.seat_index);
        return;
    }
    if (eventstruct.seat_index === 0) {
        /#
            player thread function_cbc5f534(self);
        #/
    }
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 1, eflags: 0x6 linked
// Checksum 0x28cb72d6, Offset: 0xcc8
// Size: 0xac
function private function_a7401191(params) {
    player = params.player;
    eventstruct = params.eventstruct;
    seatindex = eventstruct.seat_index;
    if (seatindex === 0) {
        self function_2205f6bf(player);
    }
    player stoprumble("fallwind_loop_slow");
    player stoprumble("fallwind_loop_rapid");
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 1, eflags: 0x6 linked
// Checksum 0x8313d41d, Offset: 0xd80
// Size: 0x12c
function private function_e2d16bde(params) {
    player = params.player;
    eventstruct = params.eventstruct;
    seatindex = eventstruct.seat_index;
    oldseatindex = eventstruct.old_seat_index;
    if (oldseatindex === 0) {
        self function_2205f6bf(player);
    } else if (seatindex === 0) {
        self function_b985a0f1(player);
    }
    if (eventstruct.seat_index === 1 || eventstruct.seat_index === 2) {
        player thread function_5bce3f3a(self, eventstruct.seat_index);
        return;
    }
    if (eventstruct.seat_index === 0) {
        /#
            player thread function_cbc5f534(self);
        #/
    }
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 1, eflags: 0x6 linked
// Checksum 0xeda463aa, Offset: 0xeb8
// Size: 0xf8
function private function_c0745670(params) {
    params.driver = self getseatoccupant(0);
    if (isdefined(params.driver)) {
        self disableaimassist();
        self.turretrotscale = 1;
        if (hasasm(self)) {
            self asmrequestsubstate(#"locomotion@movement");
        }
        vehicle_ai::clearalllookingandtargeting();
        vehicle_ai::clearallmovement();
        self cancelaimove();
        self returnplayercontrol();
        self function_803e9bf3(1);
    }
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 1, eflags: 0x2 linked
// Checksum 0x98a88e34, Offset: 0xfb8
// Size: 0xc
function function_b51c1995(*params) {
    
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 1, eflags: 0x2 linked
// Checksum 0x313fb115, Offset: 0xfd0
// Size: 0x5c
function function_a9ad737b(*params) {
    self enableaimassist();
    self.turretrotscale = 1;
    self takeplayercontrol();
    self function_803e9bf3(0);
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 4, eflags: 0x2 linked
// Checksum 0x5f490b48, Offset: 0x1038
// Size: 0x6e
function function_329f45a4(*current_state, *to_state, *connection, *params) {
    if (!isdefined(self)) {
        return false;
    }
    driver = self getseatoccupant(0);
    if (isplayer(driver)) {
        return true;
    }
    return false;
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 4, eflags: 0x6 linked
// Checksum 0x907bf4cf, Offset: 0x10b0
// Size: 0x44
function private function_a1fd6110(current_state, to_state, connection, params) {
    return !function_329f45a4(current_state, to_state, connection, params);
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 1, eflags: 0x2 linked
// Checksum 0x4066f834, Offset: 0x1100
// Size: 0x13c
function function_3a367b9a(params) {
    if (params.no_clear_movement !== 1) {
        vehicle_ai::clearalllookingandtargeting();
        vehicle_ai::clearallmovement();
        if (hasasm(self)) {
            self asmrequestsubstate(#"locomotion@movement");
        }
        self resumespeed();
    }
    if (params.var_a22ee662 === 1) {
        self vehicle::toggle_tread_fx(1);
        self vehicle::toggle_exhaust_fx(1);
        self thread vehicle_ai::nudge_collision();
        self setrotorspeed(1);
        if (!is_true(self.nolights)) {
            self vehicle::lights_on();
        }
    }
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 1, eflags: 0x2 linked
// Checksum 0x7348a66e, Offset: 0x1248
// Size: 0x44
function function_bf42edb7(params) {
    if (params.no_clear_movement !== 1) {
        vehicle_ai::clearalllookingandtargeting();
        vehicle_ai::clearallmovement();
    }
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 1, eflags: 0x6 linked
// Checksum 0x42593926, Offset: 0x1298
// Size: 0x184
function private function_6d4df083(params) {
    self setvehvelocity((0, 0, 0));
    self setangularvelocity((0, 0, 0));
    self setphysacceleration((0, 0, 0));
    self sethoverparams(0);
    self setgoal(self.origin, 1, 0);
    self setrotorspeed(0);
    self vehicle::toggle_tread_fx(0);
    self vehicle::toggle_exhaust_fx(0);
    self vehicle::toggle_sounds(0);
    self vehicle::function_bbc1d940(0);
    self disableaimassist();
    vehicle_ai::turnoffallambientanims();
    vehicle_ai::clearalllookingandtargeting();
    vehicle_ai::clearallmovement();
    if (!is_true(params.isinitialstate)) {
        self vehicle::function_7f0bbde3();
    }
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 1, eflags: 0x6 linked
// Checksum 0xed6c9bcd, Offset: 0x1428
// Size: 0x15c
function private function_b488602f(params) {
    params.var_32a85fa1 = 2;
    params.var_1751c737 = 1;
    params.var_da88902a = 1;
    params.var_30a04b16 = 1;
    self vehicle::toggle_tread_fx(1);
    self vehicle::toggle_exhaust_fx(1);
    self thread vehicle::function_fa4236af(params);
    self enableaimassist();
    self setphysacceleration((0, 0, 0));
    self thread vehicle_ai::nudge_collision();
    self setrotorspeed(1);
    if (isdefined(level.enable_thermal)) {
        if (self vehicle_ai::get_next_state() !== "death") {
            [[ level.enable_thermal ]]();
        }
    }
    if (!is_true(self.nolights)) {
        self vehicle::lights_on();
    }
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 1, eflags: 0x6 linked
// Checksum 0xecfd5932, Offset: 0x1590
// Size: 0xc4
function private function_d43d2b06(params) {
    riders = self vehicle::function_86c7bebb();
    foreach (rider in riders) {
        rider util::stop_magic_bullet_shield();
    }
    self vehicle_ai::defaultstate_death_enter(params);
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 1, eflags: 0x6 linked
// Checksum 0xaf00bbee, Offset: 0x1660
// Size: 0x254
function private function_6ed31d89(params) {
    self endon(#"death");
    if (isdefined(level.vehicle_destructer_cb)) {
        [[ level.vehicle_destructer_cb ]](self);
    }
    self vehicle_death::death_fx();
    self thread vehicle_death::death_radius_damage("MOD_EXPLOSIVE", params.attacker);
    self vehicle::do_death_dynents();
    self notsolid();
    self ghost();
    if (isdefined(self.deathmodel)) {
        if (!isdefined(level.var_35182065)) {
            level.var_35182065 = [];
        }
        util::wait_network_frame();
        deathmodel = spawn("script_model", self.origin);
        deathmodel.targetname = "heli_deathmodel";
        deathmodel setmodel(self.deathmodel);
        deathmodel.angles = self.angles;
        deathmodel physicslaunch((0, 0, 0), self getvelocity() * 0.8);
        deathmodel clientfield::set("armada_chopper_deathfx", 1);
        if (!isdefined(level.var_35182065)) {
            level.var_35182065 = [];
        } else if (!isarray(level.var_35182065)) {
            level.var_35182065 = array(level.var_35182065);
        }
        level.var_35182065[level.var_35182065.size] = deathmodel;
    }
    vehicle_death::deletewhensafe();
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 1, eflags: 0x2 linked
// Checksum 0x5a787692, Offset: 0x18c0
// Size: 0x5c
function function_200c3bd0(*params) {
    self setvehvelocity((0, 0, 0));
    self setangularvelocity((0, 0, 0));
    self setphysacceleration((0, 0, -386));
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 1, eflags: 0x2 linked
// Checksum 0xd379a684, Offset: 0x1928
// Size: 0xe8
function function_3a7426cf(*params) {
    self endon(#"change_state", #"death");
    damagetime = gettime() + 15000;
    while (true) {
        wait(0.25);
        if (self function_479389f3()) {
            self vehicle_ai::set_state("landed");
            return;
        } else {
            function_3b841f4();
        }
        if (gettime() > damagetime) {
            self dodamage(250, self.origin, undefined, undefined, "", "MOD_IMPACT");
        }
    }
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 1, eflags: 0x2 linked
// Checksum 0xd7394293, Offset: 0x1a18
// Size: 0xdc
function function_d39845f(*params) {
    self takeplayercontrol();
    self setvehvelocity((0, 0, 0));
    self setangularvelocity((0, 0, 0));
    self setphysacceleration((0, 0, 0));
    self sethoverparams(0);
    self setgoal(self.origin, 1, 0);
    self thread function_6c8cff7e(self.var_67136cb0, self.helilandingorigin, self.var_6fac6f50);
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 1, eflags: 0x2 linked
// Checksum 0xb969a1a7, Offset: 0x1b00
// Size: 0x25a
function function_b705c816(params) {
    self endon(#"death", #"state_changed");
    if (!isdefined(params)) {
        params = spawnstruct();
    }
    if (is_true(self.jammed)) {
        params.var_c1273f91 = 1;
        self vehicle_ai::set_state("off", params);
        return;
    }
    if (self vehicle_ai::get_previous_state() === "off") {
        wait(2);
    }
    while (true) {
        if (is_true(self.jammed)) {
            params.var_c1273f91 = 1;
            self vehicle_ai::set_state("off", params);
            break;
        }
        if (is_true(self.var_b3e4af16)) {
            waitframe(1);
            continue;
        }
        player = self getseatoccupant(0);
        if (!isdefined(player)) {
            params.no_falling = 1;
            params.var_c1273f91 = 1;
            self vehicle_ai::set_state("off", params);
            break;
        }
        move = player getnormalizedmovement();
        if (player vehiclemoveupbuttonpressed() || isdefined(move) && (abs(move[0]) > 0.2 || abs(move[1]) > 0.2)) {
            self vehicle_ai::set_state("driving");
            break;
        }
        waitframe(1);
    }
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 1, eflags: 0x2 linked
// Checksum 0x81fc178c, Offset: 0x1d68
// Size: 0x8c
function function_7db28345(*params) {
    if (vehicle_ai::function_329f45a4()) {
        self notify(#"hash_7f30c56005fe2b32");
        self returnplayercontrol();
        if (isdefined(self.rotatemover)) {
            self.rotatemover delete();
            self.rotatemover = undefined;
        }
    }
    self function_f4d358df();
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 0, eflags: 0x6 linked
// Checksum 0x23e7f940, Offset: 0x1e00
// Size: 0x65a
function private function_479389f3() {
    height = self.height;
    assert(isdefined(self.radius));
    assert(isdefined(self.height));
    var_33a206d0 = [];
    var_33a206d0[#"leftrear"] = self gettagorigin("tag_ground_contact_left_rear");
    var_33a206d0[#"leftmiddle"] = self gettagorigin("tag_ground_contact_left_middle");
    var_33a206d0[#"leftfront"] = self gettagorigin("tag_ground_contact_left_front");
    var_8fc02d3b = [];
    var_8fc02d3b[#"rightrear"] = self gettagorigin("tag_ground_contact_right_rear");
    var_8fc02d3b[#"rightmiddle"] = self gettagorigin("tag_ground_contact_right_middle");
    var_8fc02d3b[#"rightfront"] = self gettagorigin("tag_ground_contact_right_front");
    var_df47b913 = [];
    foreach (tag, origin in var_33a206d0) {
        if (!isdefined(origin)) {
            return false;
        }
        var_df47b913[tag] = physicstrace(origin + (0, 0, 25), origin - (0, 0, 75), (0, 0, 0), (0, 0, 0), self, 2);
    }
    var_dc8469e2 = [];
    foreach (tag, origin in var_8fc02d3b) {
        if (!isdefined(origin)) {
            return false;
        }
        var_dc8469e2[tag] = physicstrace(origin + (0, 0, 25), origin - (0, 0, 75), (0, 0, 0), (0, 0, 0), self, 2);
    }
    var_d643c4fc = 0;
    var_e10b67f7 = [];
    var_b0e8278f = (0, 0, 0);
    avgnormal = (0, 0, 0);
    var_4c962569 = 0;
    foreach (tag, trace in var_df47b913) {
        if (isdefined(trace[#"entity"])) {
            var_d643c4fc = 1;
            continue;
        }
        if (trace[#"fraction"] < 1) {
            var_b0e8278f += var_33a206d0[tag];
            var_4c962569 += trace[#"position"][2] - var_33a206d0[tag][2];
            avgnormal += trace[#"normal"];
            var_e10b67f7[tag] = trace;
        }
    }
    var_d3532cfe = [];
    foreach (tag, trace in var_dc8469e2) {
        if (isdefined(trace[#"entity"])) {
            var_d643c4fc = 1;
            continue;
        }
        if (trace[#"fraction"] < 1) {
            var_b0e8278f += var_8fc02d3b[tag];
            var_4c962569 += trace[#"position"][2] - var_8fc02d3b[tag][2];
            avgnormal += trace[#"normal"];
            var_d3532cfe[tag] = trace;
        }
    }
    if (var_e10b67f7.size > 0 || var_d3532cfe.size > 0) {
        avgnormal /= var_d3532cfe.size + var_e10b67f7.size;
        self.var_eb4e4182 = avgnormal;
    }
    if (avgnormal[2] < 0.94) {
        return false;
    }
    if (var_e10b67f7.size == 0 || var_d3532cfe.size == 0 || var_d3532cfe.size + var_e10b67f7.size < 3) {
        return false;
    }
    if (var_d643c4fc) {
        return false;
    }
    var_4c962569 /= var_d3532cfe.size + var_e10b67f7.size + 1;
    if (var_4c962569 > 20) {
        return false;
    }
    var_b0e8278f /= var_d3532cfe.size + var_e10b67f7.size;
    self.helilandingorigin = var_b0e8278f;
    self.var_6fac6f50 = var_4c962569;
    self.var_67136cb0 = avgnormal;
    return true;
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 1, eflags: 0x6 linked
// Checksum 0x7b586975, Offset: 0x2468
// Size: 0x50c
function private function_4885ce1(params) {
    if (params.stype === "player") {
        return;
    }
    if (isdefined(params.entity) && isvehicle(params.entity) && params.entity function_dcef0ba1(0) && !params.entity isvehicleseatoccupied(0)) {
        force = vectornormalize(params.entity.origin - self.origin) * 1.2;
        params.entity launchvehicle(force);
    }
    if (is_true(self.var_4e76046a)) {
        self dodamage(self.health, self.origin, undefined, undefined, "", "MOD_IMPACT");
        return;
    }
    if (!is_true(self.var_4dab0a63)) {
        var_1fdf316c = 25;
        var_a7796a79 = 100;
        mindamage = 150;
        maxdamage = 5000;
        speed = self getspeedmph();
        if (isdefined(params.entity) && isvehicle(params.entity)) {
            var_b219fafb = params.entity getspeedmph();
            if (var_b219fafb > speed) {
                speed = var_b219fafb;
            }
        }
        if (speed > var_1fdf316c) {
            applydamage = mapfloat(var_1fdf316c, var_a7796a79, mindamage, maxdamage, speed);
            normal = params.normal;
            sourceposition = self.origin - 100 * normal;
            if (isdefined(params.entity) && isvehicle(params.entity)) {
                riders = params.entity getvehoccupants();
                if (isdefined(riders) && isdefined(riders[0])) {
                    attacker = riders[0];
                }
            }
            self dodamage(applydamage, sourceposition, attacker);
        }
    }
    state = self vehicle_ai::get_current_state();
    if (state === "driving") {
        player = self getseatoccupant(0);
        if (!isdefined(player) || !player function_6947dde2()) {
            return;
        }
        move = player getnormalizedmovement();
        if (isdefined(move) && (abs(move[0]) > 0.2 || abs(move[1]) > 0.2)) {
            return;
        }
        if (isdefined(params.entity)) {
            return;
        }
        if (self function_479389f3()) {
            self vehicle_ai::set_state("landed", params);
        } else {
            player clientfield::set_player_uimodel("vehicle.invalidLanding", 1);
        }
        return;
    }
    if (state === "landing") {
        self function_479389f3();
        if (isdefined(self.var_67136cb0)) {
            self vehicle_ai::set_state("landed");
            return;
        }
        if (isdefined(self.var_eb4e4182)) {
            self function_9dd58750();
        }
    }
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 0, eflags: 0x2 linked
// Checksum 0x2d4b1ad6, Offset: 0x2980
// Size: 0xac
function function_9dd58750() {
    if (!isdefined(self.var_eb4e4182)) {
        return;
    }
    if (self.var_eb4e4182[2] < 0.99) {
        verticalspeed = self getvelocity()[2];
        slidemove = (self.var_eb4e4182[0] * 300, self.var_eb4e4182[1] * 300, verticalspeed);
    } else {
        slidemove = (1, 0, 0) * 300;
    }
    self setvehvelocity(slidemove);
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 3, eflags: 0x2 linked
// Checksum 0x3a4e76cd, Offset: 0x2a38
// Size: 0x2b4
function function_6c8cff7e(normal, origin = self.origin, offset = 0) {
    self notify("c71750f7feb4c97");
    self endon("c71750f7feb4c97");
    self endon(#"death", #"hash_7f30c56005fe2b32");
    if (!isdefined(normal)) {
        return;
    }
    if (isdefined(self.rotatemover)) {
        self.rotatemover delete();
        self.rotatemover = undefined;
    }
    self.rotatemover = spawn("script_model", origin);
    self.rotatemover.targetname = "heli_rotatemover";
    if (isdefined(self.rotatemover)) {
        self.rotatemover thread player_vehicle::deletemeonnotify(self, "death");
        self.rotatemover.angles = self.angles;
        targetangles = function_c1fa62a2(self.rotatemover.angles, normal);
        self linkto(self.rotatemover);
        self.rotatemover rotateto(targetangles, 0.5, 0, 0.5);
        self.rotatemover moveto(origin + (0, 0, offset), 0.5, 0, 0.5);
        self.rotatemover waittill(#"rotatedone");
        self.rotatemover delete();
        self.rotatemover = undefined;
    }
    self setvehvelocity((0, 0, 0));
    self setangularvelocity((0, 0, 0));
    self setphysacceleration((0, 0, 0));
    self sethoverparams(0);
    self setgoal(self.origin, 1, 0);
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 0, eflags: 0x6 linked
// Checksum 0x2a2eb9ae, Offset: 0x2cf8
// Size: 0x2a
function private function_f4d358df() {
    self.var_c1764af8 = 0;
    self.var_4dab0a63 = 0;
    self.var_67136cb0 = undefined;
    self.var_6fac6f50 = undefined;
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 0, eflags: 0x6 linked
// Checksum 0x268c5123, Offset: 0x2d30
// Size: 0xdc
function private function_d929b41() {
    self.var_4dab0a63 = 0;
    speed = self getspeedmph();
    heighttrace = physicstrace(self.origin, self.origin - (0, 0, 1536), (0, 0, 0), (0, 0, 0), self, 2);
    if (speed < 15 && heighttrace[#"fraction"] < 0.260417) {
        self.var_4dab0a63 = 1;
        self.var_c1764af8 = 1;
        self vehicle_ai::set_state("landing");
    }
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x2e18
// Size: 0x4
function private function_3b841f4() {
    
}

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 2, eflags: 0x2 linked
// Checksum 0x748a3c50, Offset: 0x2e28
// Size: 0x15e
function function_5bce3f3a(vehicle, seat_index) {
    self endon(#"death", #"disconnect", #"exit_vehicle", #"change_seat");
    vehicle endon(#"death");
    while (true) {
        heatvalue = vehicle getturretheatvalue(seat_index);
        var_62e4ee3 = heatvalue / 100;
        if (var_62e4ee3 < 0) {
            var_62e4ee3 = 0;
        } else if (var_62e4ee3 > 1) {
            var_62e4ee3 = 1;
        }
        var_24139930 = vehicle isvehicleturretoverheating(seat_index);
        if (var_24139930) {
            vehicle clientfield::set("overheat_fx", 1);
        } else {
            vehicle clientfield::set("overheat_fx", 0);
        }
        waitframe(1);
    }
}

/#

    // Namespace namespace_f36ad2eb/namespace_f36ad2eb
    // Params 0, eflags: 0x4
    // Checksum 0x33953138, Offset: 0x2f90
    // Size: 0xc4
    function private function_52dc2b28() {
        while (!canadddebugcommand()) {
            waitframe(1);
        }
        mapname = util::get_map_name();
        var_a0acc8a4 = "<unknown string>" + mapname + "<unknown string>";
        var_497149a8 = "<unknown string>" + mapname + "<unknown string>";
        adddebugcommand("<unknown string>");
        adddebugcommand(var_497149a8 + "<unknown string>");
    }

    // Namespace namespace_f36ad2eb/namespace_f36ad2eb
    // Params 1, eflags: 0x4
    // Checksum 0x6460f5b2, Offset: 0x3060
    // Size: 0x35c
    function private function_cbc5f534(chopper) {
        self endon(#"death");
        chopper endon(#"death", #"disconnect", #"exit_vehicle", #"change_seat");
        chopper endon(#"pilot_exit");
        self notify("<unknown string>");
        self endon("<unknown string>");
        var_c3de1760 = [];
        var_db7f7f7c = function_951b4205();
        foreach (asset in var_db7f7f7c) {
            if (isdefined(asset.name)) {
                if (asset.name == "<unknown string>") {
                    array::add(var_c3de1760, "<unknown string>");
                    continue;
                }
                if (asset.name == "<unknown string>") {
                    array::add(var_c3de1760, "<unknown string>");
                    continue;
                }
                if (asset.name == "<unknown string>") {
                    array::add(var_c3de1760, "<unknown string>");
                }
            }
        }
        if (var_c3de1760.size < 3) {
            return;
        }
        var_b28808e = 0;
        while (true) {
            var_f9c2abdc = getdvarint(#"hash_161a6ec03efc35e9", 3);
            if (var_f9c2abdc != var_b28808e) {
                switch (var_f9c2abdc) {
                case 0:
                case 1:
                case 2:
                    if (chopper.vehicletype != "<unknown string>") {
                        chopper setvehicletype("<unknown string>");
                    }
                    break;
                case 3:
                    if (chopper.vehicletype != "<unknown string>") {
                        chopper setvehicletype("<unknown string>");
                    }
                    break;
                case 4:
                    if (chopper.vehicletype != "<unknown string>") {
                        chopper setvehicletype("<unknown string>");
                    }
                    break;
                }
                var_b28808e = var_f9c2abdc;
            }
            waitframe(1);
        }
    }

#/

// Namespace namespace_f36ad2eb/namespace_f36ad2eb
// Params 2, eflags: 0x2 linked
// Checksum 0xf570fd41, Offset: 0x33c8
// Size: 0x28e
function function_7516cdbc(var_72dc2794, e_player) {
    self endon(#"death", #"disconnect", #"exit_vehicle", #"change_seat");
    self endon(var_72dc2794);
    e_player endon(#"death");
    var_9e838eb2 = 0;
    var_95505aa4 = 30;
    var_83082aec = 120;
    var_77843477 = undefined;
    while (true) {
        var_867b0f45 = self getspeedmph();
        if (isdefined(var_77843477)) {
            if (var_867b0f45 > var_9e838eb2 && var_77843477 <= var_9e838eb2) {
                e_player playrumblelooponentity("fallwind_loop_slow");
            } else if (var_867b0f45 < var_95505aa4 && var_77843477 >= var_95505aa4) {
                e_player stoprumble("fallwind_loop_rapid");
                e_player playrumblelooponentity("fallwind_loop_slow");
            } else if (var_867b0f45 > var_95505aa4 && var_77843477 <= var_95505aa4) {
                e_player stoprumble("fallwind_loop_slow");
                e_player playrumblelooponentity("fallwind_loop_rapid");
            } else if (var_867b0f45 < var_83082aec && var_77843477 >= var_83082aec) {
                e_player stoprumble("fallwind_loop_slow");
                e_player playrumblelooponentity("fallwind_loop_rapid");
            } else if (var_867b0f45 > var_83082aec && var_77843477 <= var_83082aec) {
                e_player stoprumble("fallwind_loop_rapid");
                e_player playrumblelooponentity("fallwind_loop_slow");
            }
        }
        var_77843477 = var_867b0f45;
        waitframe(1);
    }
}

