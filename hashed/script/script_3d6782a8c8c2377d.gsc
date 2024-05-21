// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\throttle_shared.gsc;
#using scripts\core_common\ai\blackboard_vehicle.gsc;
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\weapons\heatseekingmissile.gsc;
#using scripts\core_common\vehicle_ai_shared.gsc;
#using scripts\core_common\vehicle_death_shared.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace siegebot;

// Namespace siegebot/siegebot
// Params 0, eflags: 0x5
// Checksum 0x7eea4ca4, Offset: 0x380
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"siegebot", &function_5de06a3f, undefined, undefined, undefined);
}

// Namespace siegebot/siegebot
// Params 0, eflags: 0x2 linked
// Checksum 0xe1438fd1, Offset: 0x3c8
// Size: 0xd4
function function_5de06a3f() {
    level.var_7fcdba66 = 1;
    vehicle::add_main_callback("siegebot", &function_28632638);
    vehicle::add_main_callback("xbot", &function_28632638);
    if (!isdefined(level.var_3d1b6323)) {
        level.var_3d1b6323 = new throttle();
        [[ level.var_3d1b6323 ]]->initialize(1, float(function_60d95f53()) / 1000);
    }
}

// Namespace siegebot/siegebot
// Params 0, eflags: 0x2 linked
// Checksum 0x6e31d9d9, Offset: 0x4a8
// Size: 0x45c
function function_28632638() {
    self useanimtree("generic");
    blackboard::createblackboardforentity(self);
    self blackboard::registervehicleblackboardattributes();
    self.health = self.healthdefault;
    self vehicle::friendly_fire_shield();
    vehicle::make_targetable(self, (0, 0, 0));
    self enableaimassist();
    self setneargoalnotifydist(40);
    self.fovcosine = 0.5;
    self.fovcosinebusy = 0.5;
    self.maxsightdistsqrd = sqr(10000);
    assert(isdefined(self.scriptbundlesettings));
    self.settings = getscriptbundle(self.scriptbundlesettings);
    self.goalradius = 9999999;
    self.goalheight = 5000;
    vehicle::function_ea56e00e(self);
    self.overridevehicledamage = &function_af52eeea;
    self turretsetontargettolerance(0, 5);
    if (self.scriptvehicletype == #"xbot") {
        self.var_5a6df386 = &function_409612d9;
        self.var_dc23ac4b = 1;
    }
    self function_fc796a05();
    self turretsetontargettolerance(0, self.settings.gunner_turret_on_target_range);
    self asmrequestsubstate(#"locomotion@movement");
    if (self.vehicletype === "spawner_enemy_boss_siegebot_zombietron") {
        self asmsetanimationrate(0.5);
        self hidepart("tag_turret_canopy_animate");
        self hidepart("tag_turret_panel_01_d0");
        self hidepart("tag_turret_panel_02_d0");
        self hidepart("tag_turret_panel_03_d0");
        self hidepart("tag_turret_panel_04_d0");
        self hidepart("tag_turret_panel_05_d0");
    } else if (self.vehicletype == #"hash_962ecc6fc2eca01") {
        self asmsetanimationrate(2);
    }
    self function_ce40686c();
    if (isdefined(level.vehicle_initializer_cb)) {
        [[ level.vehicle_initializer_cb ]](self);
    }
    self.airfollowconfig = spawnstruct();
    self.airfollowconfig.distance = 130;
    self.airfollowconfig.numberofpoints = 8;
    self.airfollowconfig.pitchrange = 90;
    self.airfollowconfig.tag = "tag_turret_null";
    self.disableburndamage = 1;
    self thread vehicle_ai::target_hijackers();
    self thread heatseekingmissile::missiletarget_proximitydetonateincomingmissile(undefined, "crashing", "death");
    defaultrole();
}

// Namespace siegebot/siegebot
// Params 5, eflags: 0x2 linked
// Checksum 0x1d13f4dd, Offset: 0x910
// Size: 0xb2
function function_409612d9(event, param1, *param2, *param3, *param4) {
    if (param3 == "broken") {
        message = param4;
        if (message == "left_arm_broken") {
            self.var_bb240734 = 1;
            return;
        }
        if (message == "right_arm_broken") {
            self.var_a13db918 = 1;
            return;
        }
        if (message == "javelin_broken") {
            self.var_2950a6c6 = 1;
        }
    }
}

// Namespace siegebot/siegebot
// Params 0, eflags: 0x2 linked
// Checksum 0x1cbbc754, Offset: 0x9d0
// Size: 0xbe
function function_fc796a05() {
    value = 1;
    if (isdefined(level.var_4b2a137e)) {
        value = [[ level.var_4b2a137e ]]();
    }
    var_556bcafd = mapfloat(0, 9, 0.8, 2, value);
    var_9c0b7757 = mapfloat(0, 9, 1, 0.5, value);
    self.var_3d0a9706 = var_556bcafd;
    self.var_dfc92f99 = var_9c0b7757;
}

// Namespace siegebot/siegebot
// Params 0, eflags: 0x2 linked
// Checksum 0xe8ae9b68, Offset: 0xa98
// Size: 0x284
function defaultrole() {
    self vehicle_ai::init_state_machine_for_role("default");
    self vehicle_ai::get_state_callbacks("combat").update_func = &state_combat_update;
    self vehicle_ai::get_state_callbacks("combat").exit_func = &state_combat_exit;
    self vehicle_ai::get_state_callbacks("driving").update_func = &function_ddee0896;
    self vehicle_ai::get_state_callbacks("death").update_func = &state_death_update;
    self vehicle_ai::get_state_callbacks("pain").update_func = &function_a3efd2ac;
    self vehicle_ai::get_state_callbacks("emped").enter_func = &function_74cc1d65;
    self vehicle_ai::get_state_callbacks("emped").update_func = &function_579b4bc2;
    self vehicle_ai::get_state_callbacks("emped").exit_func = &function_57e36aad;
    self vehicle_ai::get_state_callbacks("emped").reenter_func = &function_5be0fa52;
    self vehicle_ai::add_state("jump", &function_308a3c0e, &function_aa1e85d2, &function_288b2c07);
    vehicle_ai::add_utility_connection("combat", "jump", &function_9fedfa78);
    vehicle_ai::add_utility_connection("jump", "combat");
    vehicle_ai::startinitialstate("combat");
}

// Namespace siegebot/siegebot
// Params 1, eflags: 0x2 linked
// Checksum 0x2f590656, Offset: 0xd28
// Size: 0x32c
function state_death_update(params) {
    self endon(#"death", #"nodeath_thread");
    streamermodelhint(self.deathmodel, 6);
    death_type = vehicle_ai::get_death_type(params);
    if (!isdefined(death_type)) {
        params.death_type = "gibbed";
        death_type = params.death_type;
    }
    self function_6352daec();
    self setturretspinning(0);
    self function_2d43c374();
    badplace_box("", 0, self.origin, 50, "all");
    self vehicle::set_damage_fx_level(0);
    self playsound(#"hash_69ea4c3143042b15");
    if (self.vehicletype === "spawner_enemy_boss_siegebot_zombietron") {
        self asmsetanimationrate(1);
    }
    self.turretrotscale = 3;
    self turretsettargetangles(0, (0, 0, 0));
    self turretsettargetangles(1, (0, 0, 0));
    self turretsettargetangles(2, (0, 0, 0));
    self asmrequestsubstate(#"death@stationary");
    self waittill(#"model_swap");
    self vehicle_death::set_death_model(self.deathmodel, self.modelswapdelay);
    self vehicle::do_death_dynents();
    self vehicle_death::death_radius_damage();
    self waittilltimeout(3, #"bodyfall large");
    self radiusdamage(self.origin + (0, 0, 10), self.radius * 0.8, 150, 60, self, "MOD_CRUSH");
    vehicle_ai::waittill_asm_complete("death@stationary", 3);
    self disconnectpaths(1);
    self thread vehicle_death::cleanup();
    self vehicle_death::freewhensafe();
}

// Namespace siegebot/siegebot
// Params 1, eflags: 0x2 linked
// Checksum 0xa2509175, Offset: 0x1060
// Size: 0x84
function function_ddee0896(*params) {
    self thread function_a5d3ca57();
    self thread function_660b79d2();
    self turretcleartarget(0);
    self cancelaimove();
    self function_d4c687c9();
}

// Namespace siegebot/siegebot
// Params 0, eflags: 0x2 linked
// Checksum 0xe3ef9304, Offset: 0x10f0
// Size: 0x14e
function function_660b79d2() {
    self endon(#"death", #"exit_vehicle");
    tilecount = 0;
    while (true) {
        var_a95a42b4 = anglestoup(self.angles);
        worldup = (0, 0, 1);
        if (vectordot(var_a95a42b4, worldup) < 0.64) {
            tilecount += 1;
        } else {
            tilecount = 0;
        }
        if (tilecount > 20) {
            driver = self getseatoccupant(0);
            if (isdefined(driver)) {
                self usevehicle(driver, 0);
                self notify(#"flipped");
                util::wait_network_frame();
            }
            self kill(self.origin);
        }
        waitframe(1);
    }
}

// Namespace siegebot/siegebot
// Params 0, eflags: 0x2 linked
// Checksum 0x854b464b, Offset: 0x1248
// Size: 0x110
function function_a5d3ca57() {
    self endon(#"death", #"exit_vehicle");
    weapon = self seatgetweapon(2);
    firetime = weapon.firetime;
    driver = self getseatoccupant(0);
    self thread function_a7909b7e();
    while (true) {
        if (driver vehicleattackbuttonpressed()) {
            if (isdefined(self.var_8c05c51a)) {
                [[ self.var_8c05c51a ]]();
            } else {
                self fireweapon(2);
                wait(firetime);
            }
            continue;
        }
        waitframe(1);
    }
}

// Namespace siegebot/siegebot
// Params 0, eflags: 0x2 linked
// Checksum 0x655dc178, Offset: 0x1360
// Size: 0x86
function function_a7909b7e() {
    self endon(#"death", #"exit_vehicle");
    while (true) {
        target = self turretgettarget(1);
        if (isdefined(target)) {
            self turretsettarget(2, target);
        }
        waitframe(1);
    }
}

// Namespace siegebot/siegebot
// Params 1, eflags: 0x2 linked
// Checksum 0xa5222b31, Offset: 0x13f0
// Size: 0x8c
function function_74cc1d65(params) {
    if (!isdefined(self.abnormal_status)) {
        self.abnormal_status = spawnstruct();
    }
    self.abnormal_status.emped = 1;
    self.abnormal_status.attacker = params.param1;
    self.abnormal_status.inflictor = params.param2;
    self vehicle::toggle_emp_fx(1);
}

// Namespace siegebot/siegebot
// Params 1, eflags: 0x2 linked
// Checksum 0xb1f60c8f, Offset: 0x1488
// Size: 0xec
function function_579b4bc2(*params) {
    self endon(#"death", #"change_state");
    self function_2d43c374();
    if (self.vehicletype === "spawner_enemy_boss_siegebot_zombietron") {
        self asmsetanimationrate(1);
    }
    asmstate = "damage_2@pain";
    self asmrequestsubstate(asmstate);
    self vehicle_ai::waittill_asm_complete(asmstate, 3);
    self setbrake(0);
    self vehicle_ai::evaluate_connections();
}

// Namespace siegebot/siegebot
// Params 1, eflags: 0x2 linked
// Checksum 0xc1608736, Offset: 0x1580
// Size: 0xc
function function_57e36aad(*params) {
    
}

// Namespace siegebot/siegebot
// Params 1, eflags: 0x2 linked
// Checksum 0xdb578a5e, Offset: 0x1598
// Size: 0xe
function function_5be0fa52(*params) {
    return false;
}

// Namespace siegebot/siegebot
// Params 1, eflags: 0x2 linked
// Checksum 0xbe9622a0, Offset: 0x15b0
// Size: 0x1a
function function_f779b6d9(enabled) {
    self.var_3f81522c = enabled;
}

// Namespace siegebot/siegebot
// Params 1, eflags: 0x2 linked
// Checksum 0xfd9ed25e, Offset: 0x15d8
// Size: 0x10c
function function_a3efd2ac(*params) {
    self endon(#"death", #"change_state");
    self function_2d43c374();
    if (self.vehicletype === "spawner_enemy_boss_siegebot_zombietron") {
        self asmsetanimationrate(1);
    }
    if (self.newdamagelevel == 3) {
        asmstate = "damage_2@pain";
    } else {
        asmstate = "damage_1@pain";
    }
    self asmrequestsubstate(asmstate);
    self vehicle_ai::waittill_asm_complete(asmstate, 1.5);
    self setbrake(0);
    self vehicle_ai::evaluate_connections();
}

// Namespace siegebot/siegebot
// Params 0, eflags: 0x2 linked
// Checksum 0x9bbee34c, Offset: 0x16f0
// Size: 0x44
function function_6352daec() {
    if (isdefined(self.jump) && isdefined(self.jump.linkent)) {
        self.jump.linkent delete();
    }
}

// Namespace siegebot/siegebot
// Params 1, eflags: 0x2 linked
// Checksum 0x6781cf77, Offset: 0x1740
// Size: 0x4c
function function_fba89ed6(enttowatch) {
    self endon(#"death");
    enttowatch waittill(#"death");
    self delete();
}

// Namespace siegebot/siegebot
// Params 0, eflags: 0x2 linked
// Checksum 0x443c57eb, Offset: 0x1798
// Size: 0x122
function function_ce40686c() {
    if (isdefined(self.jump)) {
        self unlink();
        self.jump.linkent delete();
        self.jump delete();
    }
    self.jump = spawnstruct();
    self.jump.linkent = spawn("script_origin", self.origin);
    self.jump.linkent thread function_fba89ed6(self);
    self.jump.var_a3fc817e = 0;
    self.jump.var_f2204696 = struct::get_array("balcony_point");
    self.jump.groundpoints = struct::get_array("ground_point");
}

// Namespace siegebot/siegebot
// Params 3, eflags: 0x2 linked
// Checksum 0xab1f1c61, Offset: 0x18c8
// Size: 0x4c
function function_9fedfa78(*from_state, *to_state, *connection) {
    if (is_true(self.nojumping)) {
        return false;
    }
    return self.vehicletype === "spawner_enemy_boss_siegebot_zombietron";
}

// Namespace siegebot/siegebot
// Params 1, eflags: 0x2 linked
// Checksum 0xfc165bbc, Offset: 0x1920
// Size: 0x1c4
function function_308a3c0e(params) {
    goal = params.var_c93384f1;
    trace = physicstrace(goal + (0, 0, 500), goal - (0, 0, 10000), (-10, -10, -10), (10, 10, 10), self, 2);
    if (false) {
        /#
            debugstar(goal, 60000, (0, 1, 0));
        #/
        /#
            debugstar(trace[#"position"], 60000, (0, 1, 0));
        #/
        /#
            line(goal, trace[#"position"], (0, 1, 0), 1, 0, 60000);
        #/
    }
    if (trace[#"fraction"] < 1) {
        goal = trace[#"position"];
    }
    self.jump.goal = goal;
    params.var_faabd95e = 40;
    params.var_81456956 = (0, 0, -6);
    params.var_83ccad16 = 50;
    params.var_d49112b7 = "land@jump";
    self function_f779b6d9(0);
    self function_2d43c374();
}

// Namespace siegebot/siegebot
// Params 1, eflags: 0x2 linked
// Checksum 0x28ac898, Offset: 0x1af0
// Size: 0xb5c
function function_aa1e85d2(params) {
    self endon(#"change_state", #"death");
    goal = self.jump.goal;
    self face_target(goal);
    self.jump.linkent.origin = self.origin;
    self.jump.linkent.angles = self.angles;
    waitframe(1);
    self linkto(self.jump.linkent);
    self.jump.var_a3fc817e = 1;
    if (false) {
        /#
            debugstar(goal, 60000, (0, 1, 0));
        #/
        /#
            debugstar(goal + (0, 0, 100), 60000, (0, 1, 0));
        #/
        /#
            line(goal, goal + (0, 0, 100), (0, 1, 0), 1, 0, 60000);
        #/
    }
    totaldistance = distance2d(goal, self.jump.linkent.origin);
    forward = (((goal - self.jump.linkent.origin) / totaldistance)[0], ((goal - self.jump.linkent.origin) / totaldistance)[1], 0);
    var_c367134b = mapfloat(500, 2000, 46, 52, totaldistance);
    var_36e6a14e = 0;
    var_c6492813 = (0, 0, 1) * (var_c367134b + params.var_83ccad16);
    var_712641e2 = forward * params.var_faabd95e * mapfloat(500, 2000, 0.8, 1, totaldistance);
    velocity = var_c6492813 + var_712641e2;
    if (self.vehicletype === "spawner_enemy_boss_siegebot_zombietron") {
        self asmsetanimationrate(1);
    }
    self asmrequestsubstate(#"hash_513a4bf9337d7336");
    self waittill(#"hash_1917c9178ea6e08d");
    self vehicle::impact_fx(self.settings.var_a54fd5f5);
    self waittill(#"hash_6155f993349506c6");
    self vehicle::impact_fx(self.settings.var_a596f383);
    while (true) {
        distancetogoal = distance2d(self.jump.linkent.origin, goal);
        var_e985f88e = 1;
        var_bcf8dac0 = 1;
        var_b1a7dcb1 = (0, 0, 0);
        if (false) {
            /#
                line(self.jump.linkent.origin, self.jump.linkent.origin + var_b1a7dcb1, (0, 1, 0), 1, 0, 60000);
            #/
        }
        var_d15137d8 = mapfloat(self.radius * 1, self.radius * 4, 0.2, 1, distancetogoal);
        var_130db229 = var_712641e2 * var_d15137d8;
        if (false) {
            /#
                line(self.jump.linkent.origin, self.jump.linkent.origin + var_130db229, (0, 1, 0), 1, 0, 60000);
            #/
        }
        var_73b3a48 = velocity[2];
        velocity = (0, 0, velocity[2]);
        velocity += var_130db229 + params.var_81456956 + var_b1a7dcb1;
        if (var_73b3a48 > 0 && velocity[2] < 0) {
            self asmrequestsubstate(#"hash_7ed8f3dbe3df1eec");
        }
        if (velocity[2] < 0 && self.jump.linkent.origin[2] + velocity[2] < goal[2]) {
            break;
        }
        var_f3ba37c7 = goal[2] + 110;
        var_8157eba2 = self.jump.linkent.origin[2];
        self.jump.linkent.origin += velocity;
        if (self.jump.linkent.origin[2] < var_f3ba37c7 && (var_8157eba2 > var_f3ba37c7 || var_73b3a48 > 0 && velocity[2] < 0)) {
            self notify(#"hash_528b934eace9e5db");
            self asmrequestsubstate(params.var_d49112b7);
        }
        if (false) {
            /#
                debugstar(self.jump.linkent.origin, 60000, (1, 0, 0));
            #/
        }
        waitframe(1);
    }
    self.jump.linkent.origin = (self.jump.linkent.origin[0], self.jump.linkent.origin[1], 0) + (0, 0, goal[2]);
    self notify(#"hash_67349195c967de78");
    foreach (player in level.players) {
        player val::set(#"hash_1199035500d4ef6a", "takedamage", 0);
    }
    self radiusdamage(self.origin + (0, 0, 15), self.radiusdamageradius, self.radiusdamagemax, self.radiusdamagemin, self, "MOD_EXPLOSIVE");
    foreach (player in level.players) {
        player val::reset(#"hash_1199035500d4ef6a", "takedamage");
        if (distance2dsquared(self.origin, player.origin) < sqr(200)) {
            direction = ((player.origin - self.origin)[0], (player.origin - self.origin)[1], 0);
            if (abs(direction[0]) < 0.01 && abs(direction[1]) < 0.01) {
                direction = (randomfloatrange(1, 2), randomfloatrange(1, 2), 0);
            }
            direction = vectornormalize(direction);
            strength = 700;
            player setvelocity(player getvelocity() + direction * strength);
            if (player.health > 80) {
                player dodamage(player.health - 70, self.origin, self);
            }
        }
    }
    self vehicle::impact_fx(self.settings.var_77f937f0);
    self function_2d43c374();
    wait(0.3);
    self unlink();
    waitframe(1);
    self.jump.var_a3fc817e = 0;
    self notify(#"hash_6b8643aabeffe898");
    util::cooldown("jump", 7);
    self vehicle_ai::waittill_asm_complete(params.var_d49112b7, 3);
    self vehicle_ai::evaluate_connections();
}

// Namespace siegebot/siegebot
// Params 1, eflags: 0x2 linked
// Checksum 0xfcae0776, Offset: 0x2658
// Size: 0xc
function function_288b2c07(*params) {
    
}

// Namespace siegebot/siegebot
// Params 1, eflags: 0x2 linked
// Checksum 0x3942f1a4, Offset: 0x2670
// Size: 0xbc
function state_combat_update(*params) {
    self endon(#"death", #"change_state");
    self thread movement_thread();
    self thread function_e3489f4e();
    self thread function_20b4a129();
    if (is_true(self.var_dc23ac4b)) {
        self thread function_9bb8a3b9();
        self thread function_73fc60dc();
    }
}

// Namespace siegebot/siegebot
// Params 1, eflags: 0x2 linked
// Checksum 0xd2726a24, Offset: 0x2738
// Size: 0x3c
function state_combat_exit(*params) {
    self turretcleartarget(0);
    self setturretspinning(0);
}

// Namespace siegebot/siegebot
// Params 0, eflags: 0x2 linked
// Checksum 0x78c0f68, Offset: 0x2780
// Size: 0x54
function function_533f0e89() {
    if (self.vehicletype === "spawner_enemy_boss_siegebot_zombietron") {
        self asmsetanimationrate(0.5);
    }
    self asmrequestsubstate(#"locomotion@movement");
}

// Namespace siegebot/siegebot
// Params 2, eflags: 0x2 linked
// Checksum 0x952dd489, Offset: 0x27e0
// Size: 0x94
function function_7815c554(isopen, waittime = 0) {
    self endon(#"death");
    self notify(#"hash_6d82c41ff7554815");
    self endon(#"hash_6d82c41ff7554815");
    if (isdefined(waittime) && waittime > 0) {
        wait(waittime);
    }
    self vehicle::toggle_ambient_anim_group(1, isopen);
}

// Namespace siegebot/siegebot
// Params 1, eflags: 0x2 linked
// Checksum 0x6cc00378, Offset: 0x2880
// Size: 0xb8
function waittill_pathing_done(maxtime = 15) {
    self endon(#"change_state");
    self notify("6c6e5a29d1dadca5");
    self endon("6c6e5a29d1dadca5");
    result = self waittilltimeout(maxtime, #"enemy", #"near_goal", #"force_goal", #"reached_end_node", #"pathfind_failed");
}

// Namespace siegebot/siegebot
// Params 0, eflags: 0x2 linked
// Checksum 0x8e37429, Offset: 0x2940
// Size: 0x2fc
function movement_thread() {
    self endon(#"death", #"change_state");
    self notify(#"end_movement_thread");
    self endon(#"end_movement_thread");
    assert(isdefined(level.var_3d1b6323));
    while (true) {
        if (isdefined(self.owner)) {
            wait(1);
            continue;
        }
        [[ level.var_3d1b6323 ]]->waitinqueue(self);
        self.current_pathto_pos = self vehicle_ai::function_1d436633(self, self.enemy);
        if (!isdefined(self.current_pathto_pos)) {
            wait(1);
            continue;
        }
        foundpath = self function_a57c34b7(self.current_pathto_pos, 0, 1);
        if (foundpath) {
            if (isdefined(self.enemy) && self seerecently(self.enemy, 1)) {
                self vehlookat(self.enemy);
                self turretsettarget(0, self.enemy);
            }
            function_533f0e89();
            self waittill_pathing_done();
            self cancelaimove();
            self function_d4c687c9();
            if (isdefined(self.enemy) && self seerecently(self.enemy, 2)) {
                if (isdefined(self.var_dc23ac4b)) {
                    self vehlookat(self.enemy);
                    self turretsettarget(0, self.enemy);
                } else {
                    self face_target(self.enemy.origin);
                }
            }
        }
        wait(1);
        var_9e361489 = gettime();
        while (isdefined(self.enemy) && self cansee(self.enemy) && util::timesince(var_9e361489) < 1.5) {
            wait(0.4);
        }
    }
}

// Namespace siegebot/siegebot
// Params 0, eflags: 0x2 linked
// Checksum 0x6422d2a6, Offset: 0x2c48
// Size: 0x9c
function function_2d43c374() {
    self notify(#"end_movement_thread");
    self notify(#"near_goal");
    self cancelaimove();
    self function_d4c687c9();
    self turretcleartarget(0);
    self vehclearlookat();
    self setbrake(1);
}

// Namespace siegebot/siegebot
// Params 2, eflags: 0x2 linked
// Checksum 0x9642bf70, Offset: 0x2cf0
// Size: 0x1dc
function face_target(position, var_2fd0e338 = 30) {
    v_to_enemy = ((position - self.origin)[0], (position - self.origin)[1], 0);
    v_to_enemy = vectornormalize(v_to_enemy);
    goalangles = vectortoangles(v_to_enemy);
    anglediff = absangleclamp180(self.angles[1] - goalangles[1]);
    if (anglediff <= var_2fd0e338) {
        return;
    }
    self vehlookat(position);
    self turretsettarget(0, position);
    self function_533f0e89();
    var_29b2c7c7 = gettime();
    while (anglediff > var_2fd0e338 && util::timesince(var_29b2c7c7) < 4) {
        anglediff = absangleclamp180(self.angles[1] - goalangles[1]);
        waitframe(1);
    }
    self function_d4c687c9();
    self vehclearlookat();
    self turretcleartarget(0);
    self cancelaimove();
}

// Namespace siegebot/siegebot
// Params 0, eflags: 0x0
// Checksum 0xafdade33, Offset: 0x2ed8
// Size: 0x20c
function scan() {
    angles = self gettagangles("tag_barrel");
    angles = (0, angles[1], 0);
    rotate = 360;
    while (rotate > 0) {
        angles += (0, 30, 0);
        rotate -= 30;
        forward = anglestoforward(angles);
        aimpos = self.origin + forward * 1000;
        self turretsettarget(0, aimpos);
        self waittilltimeout(0.5, #"turret_on_target");
        wait(0.1);
        if (isdefined(self.enemy) && self cansee(self.enemy)) {
            self turretsettarget(0, self.enemy);
            self vehlookat(self.enemy);
            self face_target(self.enemy);
            return;
        }
    }
    forward = anglestoforward(self.angles);
    aimpos = self.origin + forward * 1000;
    self turretsettarget(0, aimpos);
    self waittilltimeout(3, #"turret_on_target");
    self turretcleartarget(0);
}

// Namespace siegebot/siegebot
// Params 0, eflags: 0x2 linked
// Checksum 0x8cd38025, Offset: 0x30f0
// Size: 0x2b8
function function_e3489f4e() {
    self endon(#"death", #"change_state", #"end_attack_thread");
    self notify(#"hash_a9b510b94d6597c");
    self endon(#"hash_a9b510b94d6597c");
    self.turretrotscale = 1 * self.var_3d0a9706;
    spinning = 0;
    while (!is_true(self.var_bb240734)) {
        enemy = self.enemy;
        if (is_true(self.var_dc23ac4b)) {
            enemy = self.gunner1enemy;
        }
        if (isdefined(enemy) && self cansee(enemy)) {
            self vehlookat(enemy);
            self turretsettarget(0, enemy);
            if (!spinning) {
                spinning = 1;
                self setturretspinning(1);
                wait(0.5);
                continue;
            }
            self turretsettarget(1, enemy, (0, 0, 0));
            self turretsettarget(2, enemy, (0, 0, 0));
            self vehicle_ai::fire_for_time(randomfloatrange(0.75, 1.5) * self.var_3d0a9706, 1, enemy);
            if (isdefined(enemy) && isai(enemy)) {
                wait(randomfloatrange(0.1, 0.2));
            } else {
                wait(randomfloatrange(0.2, 0.3) * self.var_dfc92f99);
            }
            continue;
        }
        spinning = 0;
        self setturretspinning(0);
        self turretcleartarget(1);
        self turretcleartarget(2);
        wait(0.4);
    }
}

// Namespace siegebot/siegebot
// Params 1, eflags: 0x2 linked
// Checksum 0xc6ea7812, Offset: 0x33b0
// Size: 0xac
function function_5786488b(target) {
    if (isdefined(target)) {
        self turretsettarget(0, target);
        self turretsettarget(3, target, (0, 0, -10));
        self waittilltimeout(1, #"turret_on_target");
        self fireweapon(2, target, (0, 0, -10));
        self turretcleartarget(2);
    }
}

// Namespace siegebot/siegebot
// Params 1, eflags: 0x2 linked
// Checksum 0x35ba411c, Offset: 0x3468
// Size: 0x144
function function_e177d7af(target) {
    if (isdefined(target)) {
        self turretsettarget(0, target);
        self turretsettarget(3, target, (0, 0, -10));
        self waittilltimeout(1, #"turret_on_target");
        var_628cb978 = getweapon(#"hash_2a42cf9b8d71ff7e");
        var_7f98edcc = target.origin;
        v_origin = self gettagorigin("tag_gunner_flash2");
        v_dir = vectornormalize(var_7f98edcc - v_origin);
        var_a64609fe = v_dir * 1000;
        self magicmissile(var_628cb978, v_origin, var_a64609fe, target);
        self turretcleartarget(2);
    }
}

// Namespace siegebot/siegebot
// Params 0, eflags: 0x2 linked
// Checksum 0x6dd4e6db, Offset: 0x35b8
// Size: 0x3c0
function function_20b4a129() {
    self endon(#"death", #"change_state", #"end_attack_thread");
    self notify(#"hash_693d2b630634835d");
    self endon(#"hash_693d2b630634835d");
    util::cooldown("rocket", 3);
    while (!is_true(self.var_a13db918)) {
        if (isdefined(self.gunner2enemy) && self seerecently(self.gunner2enemy, 3) && util::iscooldownready("rocket", 1.5) && !is_true(self.var_a8c60b0e)) {
            self turretsettarget(1, self.gunner2enemy, (0, 0, 0));
            self turretsettarget(3, self.gunner2enemy, (0, 0, -10));
            self thread function_7815c554(1);
            wait(1.5);
            if (isdefined(self.gunner2enemy) && self seerecently(self.gunner2enemy, 1)) {
                util::cooldown("rocket", 5);
                if (isdefined(self.gunner2enemy) && !is_true(self ai::function_63734291(self.gunner2enemy))) {
                    function_5786488b(self.gunner2enemy);
                } else if (isdefined(self.gunner2enemy) && is_true(self ai::function_63734291(self.gunner2enemy))) {
                    function_e177d7af(self.gunner2enemy);
                }
                wait(1);
                if (isdefined(self.gunner2enemy) && !is_true(self ai::function_63734291(self.gunner2enemy))) {
                    function_5786488b(self.gunner2enemy);
                } else if (isdefined(self.gunner2enemy) && is_true(self ai::function_63734291(self.gunner2enemy))) {
                    function_e177d7af(self.gunner2enemy);
                }
                self thread function_7815c554(0, 1);
            } else {
                self thread function_7815c554(0);
            }
            continue;
        }
        self turretcleartarget(1);
        self turretcleartarget(2);
        wait(0.4);
    }
}

// Namespace siegebot/siegebot
// Params 0, eflags: 0x2 linked
// Checksum 0x3efe5af6, Offset: 0x3980
// Size: 0xe0
function function_9bb8a3b9() {
    self endon(#"death", #"change_state", #"end_attack_thread");
    while (true) {
        if (isdefined(self.enemy) && self cansee(self.enemy) && self.turretontarget) {
            self vehicle_ai::fire_for_time(randomfloatrange(0.75, 1.5), 0, self.enemy);
        }
        wait(randomfloatrange(0.5, 1.5));
    }
}

// Namespace siegebot/siegebot
// Params 0, eflags: 0x2 linked
// Checksum 0x4d7d7222, Offset: 0x3a68
// Size: 0x280
function function_73fc60dc() {
    self endon(#"death", #"change_state", #"end_attack_thread");
    while (!is_true(self.var_2950a6c6)) {
        if (isdefined(self.enemy) && util::iscooldownready("javelin_rocket_launcher")) {
            fired = 0;
            for (i = 0; i < 3 && isdefined(self.enemy); i++) {
                enemy = self.enemy;
                if (i == 1 && isdefined(self.gunner3enemy)) {
                    enemy = self.gunner3enemy;
                    if (enemy == self.enemy) {
                        continue;
                    }
                }
                if (i == 2 && isdefined(self.gunner2enemy)) {
                    enemy = self.gunner2enemy;
                    if (enemy == self.enemy) {
                        continue;
                    }
                }
                if (distance2dsquared(self.origin, enemy.origin) < sqr(300)) {
                    continue;
                }
                self thread vehicle_ai::javelin_losetargetatrighttime(enemy, 2);
                self fireweapon(3, enemy);
                fired = 1;
                wait(0.8);
            }
            if (fired) {
                cooldown = 15;
                if (self.scriptvehicletype == #"xbot") {
                    if (is_true(self.var_bb240734)) {
                        cooldown -= 5;
                    }
                    if (is_true(self.var_a13db918)) {
                        cooldown -= 5;
                    }
                }
                util::cooldown("javelin_rocket_launcher", cooldown);
            }
        }
        wait(0.3);
    }
}

// Namespace siegebot/siegebot
// Params 15, eflags: 0x2 linked
// Checksum 0x8bf06a48, Offset: 0x3cf0
// Size: 0x270
function function_af52eeea(einflictor, eattacker, idamage, *idflags, smeansofdeath, weapon, *vpoint, *vdir, *shitloc, *vdamageorigin, *psoffsettime, *damagefromunderneath, *modelindex, *partname, *vsurfacenormal) {
    if (vehicle_ai::should_emp(self, vsurfacenormal, partname, psoffsettime, damagefromunderneath)) {
        minempdowntime = 0.8 * self.settings.empdowntime;
        maxempdowntime = 1.2 * self.settings.empdowntime;
        self notify(#"emped", {#param0:randomfloatrange(minempdowntime, maxempdowntime), #param1:damagefromunderneath, #param2:psoffsettime});
    }
    if (!isdefined(self.damagelevel)) {
        self.damagelevel = 0;
        self.newdamagelevel = self.damagelevel;
    }
    newdamagelevel = vehicle::should_update_damage_fx_level(self.health, modelindex, self.healthdefault);
    if (newdamagelevel > self.damagelevel) {
        self.newdamagelevel = newdamagelevel;
    }
    if (self.newdamagelevel > self.damagelevel) {
        self.damagelevel = self.newdamagelevel;
        driver = self getseatoccupant(0);
        if (!isdefined(driver)) {
            self notify(#"pain");
        }
        vehicle::set_damage_fx_level(self.damagelevel);
    }
    if (self.health - modelindex <= 0 && target_istarget(self)) {
        target_remove(self);
    }
    return modelindex;
}

