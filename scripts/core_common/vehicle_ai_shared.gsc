// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\vehicle_death_shared.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\statemachine_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\animation_shared.gsc;

#namespace vehicle_ai;

// Namespace vehicle_ai/vehicle_ai_shared
// Params 0, eflags: 0x5
// Checksum 0xdf8f6aa0, Offset: 0x2d0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"vehicle_ai", &preinit, undefined, undefined, undefined);
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x9257266f, Offset: 0x318
// Size: 0x2c
function private preinit() {
    animation::add_notetrack_func("vehicle_ai::SetRotorSpeedCallback", &function_7ae52016);
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 2, eflags: 0x0
// Checksum 0x3c8db228, Offset: 0x350
// Size: 0xaa
function entityisarchetype(entity, archetype) {
    if (!isdefined(entity)) {
        return false;
    }
    if (isplayer(entity) && entity.usingvehicle && isdefined(entity.viewlockedentity) && entity.viewlockedentity.archetype === archetype) {
        return true;
    }
    if (isvehicle(entity) && entity.archetype === archetype) {
        return true;
    }
    return false;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x238498fd, Offset: 0x408
// Size: 0x52
function getenemytarget() {
    if (isdefined(self.enemy) && self cansee(self.enemy)) {
        return self.enemy;
    } else if (isdefined(self.enemylastseenpos)) {
        return self.enemylastseenpos;
    }
    return undefined;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x3b299683, Offset: 0x468
// Size: 0xf2
function gettargetpos(target, geteye) {
    pos = undefined;
    if (isdefined(target)) {
        if (isvec(target)) {
            pos = target;
        } else if (is_true(geteye) && issentient(target)) {
            pos = target geteye();
        } else if (isentity(target)) {
            pos = target.origin;
        } else if (isdefined(target.origin) && isvec(target.origin)) {
            pos = target.origin;
        }
    }
    return pos;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xdc16a0ad, Offset: 0x568
// Size: 0x64
function gettargeteyeoffset(target) {
    offset = (0, 0, 0);
    if (isdefined(target) && issentient(target)) {
        offset = target geteye() - target.origin;
    }
    return offset;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x2205be43, Offset: 0x5d8
// Size: 0x1b4
function fire_for_time(totalfiretime, turretidx, target, intervalscale = 1) {
    self endon(#"death", #"change_state");
    if (!isdefined(turretidx)) {
        turretidx = 0;
    }
    self notify("fire_stop" + turretidx);
    self endon("fire_stop" + turretidx);
    weapon = self seatgetweapon(turretidx);
    if (!isdefined(weapon) || weapon.name == #"none" || weapon.firetime <= 0) {
        println("<unknown string>" + turretidx + "<unknown string>" + self getentnum() + "<unknown string>" + self.model);
        return;
    }
    firetime = weapon.firetime * intervalscale;
    firecount = int(floor(totalfiretime / firetime)) + 1;
    __fire_for_rounds_internal(firecount, firetime, turretidx, target);
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x4d9539d9, Offset: 0x798
// Size: 0x134
function fire_for_rounds(firecount, turretidx, target) {
    self endon(#"death", #"fire_stop", #"change_state");
    if (!isdefined(turretidx)) {
        turretidx = 0;
    }
    weapon = self seatgetweapon(turretidx);
    if (!isdefined(weapon) || weapon.name == #"none" || weapon.firetime <= 0) {
        println("<unknown string>" + turretidx + "<unknown string>" + self getentnum() + "<unknown string>" + self.model);
        return;
    }
    __fire_for_rounds_internal(firecount, weapon.firetime, turretidx, target);
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x991e7192, Offset: 0x8d8
// Size: 0x102
function __fire_for_rounds_internal(firecount, fireinterval, turretidx, target) {
    self endon(#"death", #"fire_stop", #"change_state");
    assert(isdefined(turretidx));
    if (isdefined(target)) {
        target endon(#"death");
    }
    counter = 0;
    while (counter < firecount) {
        if (self.avoid_shooting_owner === 1 && self owner_in_line_of_fire()) {
            wait(fireinterval);
            continue;
        }
        self fireturret(turretidx, target);
        counter++;
        wait(fireinterval);
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x1f21990a, Offset: 0x9e8
// Size: 0x124
function owner_in_line_of_fire() {
    if (!isdefined(self.owner)) {
        return false;
    }
    dist_squared_to_owner = distancesquared(self.owner.origin, self.origin);
    line_of_fire_dot = dist_squared_to_owner > 9216 ? 0.9848 : 0.866;
    gun_angles = self gettagangles(isdefined(self.avoid_shooting_owner_ref_tag) ? self.avoid_shooting_owner_ref_tag : "tag_flash");
    if (!isdefined(gun_angles)) {
        return false;
    }
    gun_forward = anglestoforward(gun_angles);
    dot = vectordot(gun_forward, vectornormalize(self.owner.origin - self.origin));
    return dot > line_of_fire_dot;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 3, eflags: 0x0
// Checksum 0x3a3df7a2, Offset: 0xb18
// Size: 0x54
function setturrettarget(target, turretidx = 0, offset = (0, 0, 0)) {
    self turretsettarget(turretidx, target, offset);
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 3, eflags: 0x2 linked
// Checksum 0xca7b6b75, Offset: 0xb78
// Size: 0x4c
function fireturret(turretidx, target, offset = (0, 0, 0)) {
    self fireweapon(turretidx, target, offset, self);
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x0
// Checksum 0x51aed5aa, Offset: 0xbd0
// Size: 0x10c
function airfollow(target) {
    assert(isairborne(self));
    if (!isdefined(target)) {
        return;
    }
    if (isdefined(self.host)) {
        arrayremovevalue(self.host.airfollowers, self);
    }
    self.host = target;
    if (!isdefined(target.airfollowers)) {
        target.airfollowers = [];
    }
    if (!isdefined(target.airfollowers)) {
        target.airfollowers = [];
    } else if (!isarray(target.airfollowers)) {
        target.airfollowers = array(target.airfollowers);
    }
    target.airfollowers[target.airfollowers.size] = self;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x8b9133f5, Offset: 0xce8
// Size: 0x92
function getairfollowindex() {
    assert(isairborne(self));
    if (!isdefined(self.host)) {
        return undefined;
    }
    for (i = 0; i < self.host.airfollowers.size; i++) {
        if (self === self.host.airfollowers[i]) {
            return i;
        }
    }
    return undefined;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x0
// Checksum 0x288d5864, Offset: 0xd88
// Size: 0x1cc
function getairfollowingposition(userelativeangletohost) {
    assert(isairborne(self));
    index = self getairfollowindex();
    if (!isdefined(index)) {
        return undefined;
    }
    offset = getairfollowingoffset(self.host, index);
    if (!isdefined(offset)) {
        return undefined;
    }
    origin = getairfollowingorigin();
    if (!userelativeangletohost) {
        return (origin + offset);
    }
    angles = undefined;
    if (isdefined(self.host.airfollowconfig) && self.host.airfollowconfig.tag !== "") {
        angles = self.host gettagangles(self.host.airfollowconfig.tag);
    } else if (isplayer(self.host)) {
        angles = self.host getplayerangles();
    } else {
        angles = self.host.angles;
    }
    yawangles = (0, angles[1], 0);
    newoffset = rotatepoint(offset, yawangles);
    return origin + newoffset;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x9662681b, Offset: 0xf60
// Size: 0xda
function getairfollowingorigin() {
    assert(isairborne(self));
    origin = self.host.origin + self.host.mins + self.host.maxs;
    if (isdefined(self.host.airfollowconfig) && self.host.airfollowconfig.tag !== "") {
        origin = self.host gettagorigin(self.host.airfollowconfig.tag);
    }
    return origin;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x56d652d2, Offset: 0x1048
// Size: 0xb6
function getairfollowinglength(targetent) {
    distance = undefined;
    if (isdefined(targetent) && isdefined(targetent.airfollowconfig)) {
        distance = targetent.airfollowconfig.distance;
    } else {
        size = self.host.maxs - self.host.mins;
        distance = 0.5 * length(size);
        distance = 0.5 * (distance + size[2]);
    }
    return distance;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xbe70a8bd, Offset: 0x1108
// Size: 0xcc
function getairfollowingoffset(targetent, index) {
    numberofpoints = 8;
    pitchrange = 90;
    if (isdefined(targetent) && isdefined(targetent.airfollowconfig)) {
        numberofpoints = targetent.airfollowconfig.numberofpoints;
        pitchrange = targetent.airfollowconfig.pitchrange;
    }
    distance = getairfollowinglength(targetent);
    if (index >= numberofpoints) {
        return undefined;
    }
    dir = math::point_on_sphere_even_distribution(pitchrange, index, numberofpoints);
    return dir * distance;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 2, eflags: 0x0
// Checksum 0x2df85a9a, Offset: 0x11e0
// Size: 0x150
function javelin_losetargetatrighttime(target, gunnerindex) {
    self endon(#"death");
    if (isdefined(gunnerindex)) {
        firedgunnerindex = -1;
        while (firedgunnerindex != gunnerindex) {
            waitresult = self waittill(#"gunner_weapon_fired");
            firedgunnerindex = waitresult.gunner_index;
            projarray = waitresult.projectile;
        }
    } else {
        waitresult = self waittill(#"weapon_fired");
        projarray = waitresult.projectile;
    }
    if (!isdefined(projarray)) {
        return;
    }
    foreach (proj in projarray) {
        self thread javelin_losetargetatrighttimeprojectile(proj, target);
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x68a68694, Offset: 0x1338
// Size: 0x134
function javelin_losetargetatrighttimeprojectile(proj, target) {
    self endon(#"death");
    proj endon(#"death");
    wait(2);
    sound_played = undefined;
    while (isdefined(target)) {
        if (proj getvelocity()[2] < -150) {
            distsq = distancesquared(proj.origin, target.origin);
            if (!isdefined(sound_played) && distsq <= sqr(1400)) {
                proj playsound(#"prj_quadtank_javelin_incoming");
                sound_played = 1;
            }
            if (distsq < sqr(1200)) {
                proj missile_settarget(undefined);
                break;
            }
        }
        wait(0.1);
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xbc560bf5, Offset: 0x1478
// Size: 0x88
function waittill_pathing_done(maxtime = 15) {
    self endon(#"change_state");
    result = self waittilltimeout(maxtime, #"near_goal", #"force_goal", #"reached_end_node", #"pathfind_failed");
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x18d0f5ac, Offset: 0x1508
// Size: 0x9c
function waittill_pathresult(maxtime = 0.5) {
    self endon(#"change_state");
    result = self waittilltimeout(maxtime, #"pathfind_failed", #"pathfind_succeeded", #"change_state");
    succeeded = result._notify === "pathfind_succeeded";
    return succeeded;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xac990512, Offset: 0x15b0
// Size: 0x7e
function waittill_asm_terminated() {
    self endon(#"death");
    self notify(#"end_asm_terminated_thread");
    self endon(#"end_asm_terminated_thread");
    self waittill(#"asm_terminated");
    self notify(#"asm_complete", {#substate:"__terminated__"});
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xd25db8, Offset: 0x1638
// Size: 0x7e
function waittill_asm_timeout(timeout) {
    self endon(#"death");
    self notify(#"end_asm_timeout_thread");
    self endon(#"end_asm_timeout_thread");
    wait(timeout);
    self notify(#"asm_complete", {#substate:"__timeout__"});
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 2, eflags: 0x0
// Checksum 0xa78277cc, Offset: 0x16c0
// Size: 0x106
function waittill_asm_complete(substate_to_wait, timeout = 10) {
    self endon(#"death");
    self thread waittill_asm_terminated();
    self thread waittill_asm_timeout(timeout);
    for (substate = undefined; !isdefined(substate) || substate != substate_to_wait && substate != "__terminated__" && substate != "__timeout__"; substate = waitresult.substate) {
        waitresult = self waittill(#"asm_complete");
    }
    self notify(#"end_asm_terminated_thread");
    self notify(#"end_asm_timeout_thread");
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 4, eflags: 0x0
// Checksum 0xcdf6c30b, Offset: 0x17d0
// Size: 0x1dc
function throw_off_balance(damagetype, *hitpoint, hitdirection, *hitlocationinfo) {
    if (hitdirection == "MOD_EXPLOSIVE" || hitdirection == "MOD_GRENADE_SPLASH" || hitdirection == "MOD_PROJECTILE_SPLASH") {
        self setvehvelocity(self.velocity + vectornormalize(hitlocationinfo) * 300);
        ang_vel = self getangularvelocity();
        ang_vel += (randomfloatrange(-300, 300), randomfloatrange(-300, 300), randomfloatrange(-300, 300));
        self setangularvelocity(ang_vel);
        return;
    }
    ang_vel = self getangularvelocity();
    yaw_vel = randomfloatrange(-320, 320);
    yaw_vel += math::sign(yaw_vel) * 150;
    ang_vel += (randomfloatrange(-150, 150), yaw_vel, randomfloatrange(-150, 150));
    self setangularvelocity(ang_vel);
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 0, eflags: 0x0
// Checksum 0x2eb0e63f, Offset: 0x19b8
// Size: 0xb0
function predicted_collision() {
    self endon(#"crash_done", #"death");
    while (true) {
        waitresult = self waittill(#"veh_predictedcollision");
        if (waitresult.normal[2] >= 0.6) {
            self notify(#"veh_collision", waitresult);
            callback::callback(#"veh_collision", waitresult);
        }
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xf97e06ff, Offset: 0x1a70
// Size: 0x74
function collision_fx(normal) {
    tilted = normal[2] < 0.6;
    fx_origin = self.origin - normal * (tilted ? 28 : 10);
    self playsound(#"veh_wasp_wall_imp");
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xfb5edb75, Offset: 0x1af0
// Size: 0x422
function nudge_collision() {
    self endon(#"crash_done", #"power_off_done", #"death");
    self notify(#"end_nudge_collision");
    self endon(#"end_nudge_collision");
    if (self.notsolid === 1) {
        return;
    }
    while (true) {
        waitresult = self waittill(#"veh_collision");
        velocity = waitresult.velocity;
        normal = waitresult.normal;
        ang_vel = self getangularvelocity() * 0.5;
        self setangularvelocity(ang_vel);
        empedoroff = self get_current_state() === "emped" || self get_current_state() === "off";
        if (isalive(self) && (normal[2] < 0.6 || !empedoroff)) {
            self setvehvelocity(self.velocity + normal * 90);
            self collision_fx(normal);
            continue;
        }
        if (empedoroff) {
            if (isdefined(self.bounced)) {
                self playsound(#"veh_wasp_wall_imp");
                self setvehvelocity((0, 0, 0));
                self setangularvelocity((0, 0, 0));
                pitch = self.angles[0];
                pitch = math::sign(pitch) * math::clamp(abs(pitch), 10, 15);
                self.angles = (pitch, self.angles[1], self.angles[2]);
                self.bounced = undefined;
                self notify(#"landed");
                return;
            } else {
                self.bounced = 1;
                self setvehvelocity(self.velocity + normal * 30);
                self collision_fx(normal);
            }
            continue;
        }
        impact_vel = abs(vectordot(velocity, normal));
        if (normal[2] < 0.6 && impact_vel < 100) {
            self setvehvelocity(self.velocity + normal * 90);
            self collision_fx(normal);
            continue;
        }
        self playsound(#"veh_wasp_ground_death");
        self thread vehicle_death::death_fire_loop_audio();
        self notify(#"crash_done");
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 0, eflags: 0x0
// Checksum 0x4293bf90, Offset: 0x1f20
// Size: 0xfe
function level_out_for_landing() {
    self endon(#"death", #"change_state", #"landed");
    while (true) {
        velocity = self.velocity;
        self.angles = (self.angles[0] * 0.85, self.angles[1], self.angles[2] * 0.85);
        ang_vel = self getangularvelocity() * 0.85;
        self setangularvelocity(ang_vel);
        self setvehvelocity(velocity + (0, 0, -60));
        waitframe(1);
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x0
// Checksum 0x836370d2, Offset: 0x2028
// Size: 0x3c
function immolate(attacker) {
    self endon(#"death");
    self thread burning_thread(attacker, attacker);
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xbaf9ffb5, Offset: 0x2070
// Size: 0x28c
function burning_thread(attacker, inflictor) {
    self endon(#"death");
    self notify(#"end_immolating_thread");
    self endon(#"end_immolating_thread");
    damagepersecond = self.settings.burn_damagepersecond;
    if (!isdefined(damagepersecond) || damagepersecond <= 0) {
        return;
    }
    secondsperonedamage = 1 / float(damagepersecond);
    if (!isdefined(self.abnormal_status)) {
        self.abnormal_status = spawnstruct();
    }
    if (self.abnormal_status.burning !== 1) {
        self vehicle::toggle_burn_fx(1);
    }
    self.abnormal_status.burning = 1;
    self.abnormal_status.attacker = attacker;
    self.abnormal_status.inflictor = inflictor;
    lastingtime = self.settings.burn_lastingtime;
    if (!isdefined(lastingtime)) {
        lastingtime = 999999;
    }
    starttime = gettime();
    interval = max(secondsperonedamage, 0.5);
    for (damage = 0; util::timesince(starttime) < lastingtime; damage -= damageint) {
        previoustime = gettime();
        wait(interval);
        damage += util::timesince(previoustime) * damagepersecond;
        damageint = int(damage);
        self dodamage(damageint, self.origin, attacker, self, "none", "MOD_BURNED");
    }
    self.abnormal_status.burning = 0;
    self vehicle::toggle_burn_fx(0);
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x1feb9d6a, Offset: 0x2308
// Size: 0x36
function iff_notifymeinnsec(time, note) {
    self endon(#"death");
    wait(time);
    self notify(note);
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 2, eflags: 0x0
// Checksum 0xe6b1b997, Offset: 0x2348
// Size: 0x1e4
function iff_override(owner, time = 60) {
    self endon(#"death");
    self._iffoverride_oldteam = self.team;
    self iff_override_team_switch_behavior(owner.team);
    if (isdefined(self.iff_override_cb)) {
        self [[ self.iff_override_cb ]](1);
    }
    if (isdefined(self.settings) && !is_true(self.settings.iffshouldrevertteam)) {
        return;
    }
    timeout = isdefined(self.settings) ? self.settings.ifftimetillrevert : time;
    assert(timeout > 10);
    self thread iff_notifymeinnsec(timeout - 10, "iff_override_revert_warn");
    msg = self waittilltimeout(timeout, #"iff_override_reverted");
    if (msg == "timeout") {
        self notify(#"iff_override_reverted");
    }
    self playsound(#"gdt_iff_deactivate");
    self iff_override_team_switch_behavior(self._iffoverride_oldteam);
    if (isdefined(self.iff_override_cb)) {
        self [[ self.iff_override_cb ]](0);
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x717859f7, Offset: 0x2538
// Size: 0x104
function iff_override_team_switch_behavior(team) {
    self endon(#"death");
    self val::set(#"iff_override", "ignoreme", 1);
    self start_scripted();
    self vehicle::lights_off();
    wait(0.1);
    wait(1);
    self setteam(team);
    self blink_lights_for_time(1);
    self stop_scripted();
    wait(1);
    self val::reset(#"iff_override", "ignoreme");
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x9c348312, Offset: 0x2648
// Size: 0xcc
function blink_lights_for_time(time) {
    self endon(#"death");
    starttime = gettime();
    self vehicle::lights_off();
    wait(0.1);
    while (gettime() < starttime + int(time * 1000)) {
        self vehicle::lights_off();
        wait(0.2);
        self vehicle::lights_on();
        wait(0.2);
    }
    self vehicle::lights_on();
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 0, eflags: 0x0
// Checksum 0x6b935b83, Offset: 0x2720
// Size: 0x16
function turnoff() {
    self notify(#"shut_off");
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 0, eflags: 0x0
// Checksum 0x67fdd65b, Offset: 0x2740
// Size: 0x16
function turnon() {
    self notify(#"start_up");
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x55b0509d, Offset: 0x2760
// Size: 0xdc
function turnoffalllightsandlaser() {
    self laseroff();
    self vehicle::lights_off();
    self vehicle::toggle_lights_group(1, 0);
    self vehicle::toggle_lights_group(2, 0);
    self vehicle::toggle_lights_group(3, 0);
    self vehicle::toggle_lights_group(4, 0);
    self vehicle::toggle_force_driver_taillights(0);
    self vehicle::toggle_burn_fx(0);
    self vehicle::toggle_emp_fx(0);
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x27e0e026, Offset: 0x2848
// Size: 0x4c
function turnoffallambientanims() {
    self vehicle::toggle_ambient_anim_group(1, 0);
    self vehicle::toggle_ambient_anim_group(2, 0);
    self vehicle::toggle_ambient_anim_group(3, 0);
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x611714e9, Offset: 0x28a0
// Size: 0x94
function clearalllookingandtargeting() {
    self turretcleartarget(0);
    self turretcleartarget(1);
    self turretcleartarget(2);
    self turretcleartarget(3);
    self turretcleartarget(4);
    self vehclearlookat();
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x4981b8d7, Offset: 0x2940
// Size: 0xdc
function clearallmovement(zerooutspeed = 0) {
    self cancelaimove();
    self function_d4c687c9();
    self pathvariableoffsetclear();
    self pathfixedoffsetclear();
    if (zerooutspeed === 1) {
        self notify(#"landed");
        self setvehvelocity((0, 0, 0));
        self setphysacceleration((0, 0, 0));
        self setangularvelocity((0, 0, 0));
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xd999313d, Offset: 0x2a28
// Size: 0xc4
function update_damage_fx_level(idamage) {
    if (!isdefined(self.damagelevel)) {
        self.damagelevel = 0;
        self.newdamagelevel = self.damagelevel;
    }
    newdamagelevel = vehicle::should_update_damage_fx_level(self.health, idamage, self.healthdefault);
    if (newdamagelevel > self.damagelevel) {
        self.newdamagelevel = newdamagelevel;
    }
    if (self.newdamagelevel > self.damagelevel) {
        self.damagelevel = self.newdamagelevel;
        self notify(#"pain");
        vehicle::set_damage_fx_level(self.damagelevel);
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 15, eflags: 0x2 linked
// Checksum 0x742e2995, Offset: 0x2af8
// Size: 0x1d8
function shared_callback_damage(einflictor, eattacker, idamage, *idflags, smeansofdeath, weapon, *vpoint, *vdir, *shitloc, *vdamageorigin, *psoffsettime, *damagefromunderneath, *modelindex, *partname, *vsurfacenormal) {
    if (should_emp(self, vsurfacenormal, partname, psoffsettime, damagefromunderneath)) {
        minempdowntime = 0.8 * (isdefined(self.settings.empdowntime) ? self.settings.empdowntime : 0);
        maxempdowntime = 1.2 * (isdefined(self.settings.empdowntime) ? self.settings.empdowntime : 1);
        self notify(#"emped", {#param0:randomfloatrange(minempdowntime, maxempdowntime), #param1:damagefromunderneath, #param2:psoffsettime});
    }
    if (should_burn(self, vsurfacenormal, partname, psoffsettime, damagefromunderneath)) {
        self thread burning_thread(damagefromunderneath, psoffsettime);
    }
    self update_damage_fx_level(modelindex);
    return modelindex;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 5, eflags: 0x2 linked
// Checksum 0xd67eee9d, Offset: 0x2cd8
// Size: 0x142
function should_emp(vehicle, weapon, meansofdeath, einflictor, eattacker) {
    if (!isdefined(vehicle) || meansofdeath === "MOD_IMPACT" || vehicle.disableelectrodamage === 1) {
        return 0;
    }
    if (!(isdefined(weapon) && weapon.isemp || meansofdeath === "MOD_ELECTROCUTED")) {
        return 0;
    }
    causer = isdefined(eattacker) ? eattacker : einflictor;
    if (!isdefined(causer)) {
        return 1;
    }
    if (isai(causer) && isvehicle(causer)) {
        return 0;
    }
    if (level.teambased) {
        return (vehicle.team != causer.team);
    }
    if (isdefined(vehicle.owner)) {
        return (vehicle.owner != causer);
    }
    return vehicle != causer;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 5, eflags: 0x2 linked
// Checksum 0x5810f88b, Offset: 0x2e28
// Size: 0x13a
function should_burn(vehicle, *weapon, meansofdeath, einflictor, eattacker) {
    if (level.disablevehicleburndamage === 1 || weapon.disableburndamage === 1) {
        return 0;
    }
    if (!isdefined(weapon)) {
        return 0;
    }
    if (meansofdeath !== "MOD_BURNED") {
        return 0;
    }
    if (weapon === einflictor) {
        return 0;
    }
    causer = isdefined(eattacker) ? eattacker : einflictor;
    if (!isdefined(causer)) {
        return 1;
    }
    if (isai(causer) && isvehicle(causer)) {
        return 0;
    }
    if (level.teambased) {
        return (weapon.team != causer.team);
    }
    if (isdefined(weapon.owner)) {
        return (weapon.owner != causer);
    }
    return weapon != causer;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x4962ad85, Offset: 0x2f70
// Size: 0x94
function startinitialstate(defaultstate = "combat") {
    params = spawnstruct();
    params.isinitialstate = 1;
    if (isdefined(self.script_startstate)) {
        self set_state(self.script_startstate, params);
        return;
    }
    self set_state(defaultstate, params);
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x6acd60fd, Offset: 0x3010
// Size: 0x6a
function start_scripted(disable_death_state, no_clear_movement) {
    params = spawnstruct();
    params.no_clear_movement = no_clear_movement;
    self set_state("scripted", params);
    self._no_death_state = disable_death_state;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x3f06a886, Offset: 0x3088
// Size: 0x7c
function stop_scripted(statename) {
    if (isalive(self) && is_instate("scripted")) {
        if (isdefined(statename)) {
            self set_state(statename);
            return;
        }
        self set_state("combat");
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x472dfa9a, Offset: 0x3110
// Size: 0x1a
function set_role(rolename) {
    self.current_role = rolename;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x68fe0caf, Offset: 0x3138
// Size: 0x84
function has_state(name) {
    assert(isdefined(self), "<unknown string>");
    return isdefined(self.state_machines) && isdefined(self.current_role) && isdefined(self.state_machines[self.current_role]) && self.state_machines[self.current_role] statemachine::has_state(name);
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x384094fd, Offset: 0x31c8
// Size: 0x5c
function set_state(name, params) {
    if (isdefined(self.state_machines) && isdefined(self.current_role)) {
        self.state_machines[self.current_role] thread statemachine::set_state(name, params);
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xcae71057, Offset: 0x3230
// Size: 0x5c
function evaluate_connections(eval_func, params) {
    if (isdefined(self.state_machines) && isdefined(self.current_role)) {
        self.state_machines[self.current_role] statemachine::evaluate_connections(eval_func, params);
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x666c11a4, Offset: 0x3298
// Size: 0x64
function get_state_callbacks(statename) {
    rolename = "default";
    if (isdefined(self.current_role)) {
        rolename = self.current_role;
    }
    if (isdefined(self.state_machines[rolename])) {
        return self.state_machines[rolename].states[statename];
    }
    return undefined;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 2, eflags: 0x0
// Checksum 0xe1107361, Offset: 0x3308
// Size: 0x54
function get_state_callbacks_for_role(rolename = "default", statename) {
    if (isdefined(self.state_machines[rolename])) {
        return self.state_machines[rolename].states[statename];
    }
    return undefined;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x2fe2e819, Offset: 0x3368
// Size: 0x52
function get_current_state() {
    if (isdefined(self.current_role) && isdefined(self.state_machines[self.current_role].current_state)) {
        return self.state_machines[self.current_role].current_state.name;
    }
    return undefined;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xfbb69a98, Offset: 0x33c8
// Size: 0x52
function get_previous_state() {
    if (isdefined(self.current_role) && isdefined(self.state_machines[self.current_role].previous_state)) {
        return self.state_machines[self.current_role].previous_state.name;
    }
    return undefined;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xfa42907f, Offset: 0x3428
// Size: 0x52
function get_next_state() {
    if (isdefined(self.current_role) && isdefined(self.state_machines[self.current_role].next_state)) {
        return self.state_machines[self.current_role].next_state.name;
    }
    return undefined;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x2064c88f, Offset: 0x3488
// Size: 0x60
function is_instate(statename) {
    if (isdefined(self.current_role) && isdefined(self.state_machines[self.current_role].current_state)) {
        return (self.state_machines[self.current_role].current_state.name === statename);
    }
    return false;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x9f07b111, Offset: 0x34f0
// Size: 0x86
function add_state(name, enter_func, update_func, exit_func) {
    if (isdefined(self.current_role)) {
        statemachine = self.state_machines[self.current_role];
        if (isdefined(statemachine)) {
            state = statemachine statemachine::add_state(name, enter_func, update_func, exit_func);
            return state;
        }
    }
    return undefined;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 4, eflags: 0x2 linked
// Checksum 0xc2cc1342, Offset: 0x3580
// Size: 0x54
function add_interrupt_connection(from_state_name, to_state_name, on_notify, checkfunc) {
    self.state_machines[self.current_role] statemachine::add_interrupt_connection(from_state_name, to_state_name, on_notify, checkfunc);
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 4, eflags: 0x2 linked
// Checksum 0xdaabfa49, Offset: 0x35e0
// Size: 0x54
function add_utility_connection(from_state_name, to_state_name, checkfunc, defaultscore) {
    self.state_machines[self.current_role] statemachine::add_utility_connection(from_state_name, to_state_name, checkfunc, defaultscore);
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 2, eflags: 0x0
// Checksum 0xf7cdbde1, Offset: 0x3640
// Size: 0x3c
function function_b94a7666(from_state_name, on_notify) {
    self.state_machines[self.current_role] statemachine::function_b94a7666(from_state_name, on_notify);
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x2911b62a, Offset: 0x3688
// Size: 0x56
function function_6c17ee49() {
    if (isdefined(self.current_role)) {
        if (isdefined(self.state_machines[self.current_role])) {
            return self.state_machines[self.current_role] statemachine::has_state("death");
        }
    }
    return 0;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xec2f7f11, Offset: 0x36e8
// Size: 0x648
function init_state_machine_for_role(rolename = "default") {
    statemachine = statemachine::create(rolename, self);
    statemachine.isrole = 1;
    if (!isdefined(self.current_role)) {
        set_role(rolename);
    }
    statemachine statemachine::add_state("suspend", undefined, undefined, undefined);
    statemachine statemachine::add_state("death", &defaultstate_death_enter, &defaultstate_death_update, undefined);
    statemachine statemachine::add_state("scripted", &defaultstate_scripted_enter, undefined, &defaultstate_scripted_exit);
    statemachine statemachine::add_state("spline", undefined, undefined, &function_e0887c67);
    statemachine statemachine::add_state("combat", &defaultstate_combat_enter, undefined, &defaultstate_combat_exit);
    statemachine statemachine::add_state("emped", &defaultstate_emped_enter, &defaultstate_emped_update, &defaultstate_emped_exit, &defaultstate_emped_reenter);
    statemachine statemachine::add_state("off", &defaultstate_off_enter, undefined, &defaultstate_off_exit);
    statemachine statemachine::add_state("driving", &defaultstate_driving_enter, undefined, &defaultstate_driving_exit);
    statemachine statemachine::add_state("pain", &defaultstate_pain_enter, &function_97e9de18, &defaultstate_pain_exit);
    statemachine statemachine::add_interrupt_connection("off", "combat", "start_up");
    statemachine statemachine::add_interrupt_connection("driving", "combat", "exit_vehicle");
    statemachine statemachine::add_utility_connection("emped", "combat");
    statemachine statemachine::add_utility_connection("pain", "combat");
    statemachine statemachine::add_interrupt_connection("combat", "emped", "emped");
    statemachine statemachine::add_interrupt_connection("pain", "emped", "emped");
    statemachine statemachine::add_interrupt_connection("emped", "emped", "emped");
    statemachine statemachine::add_interrupt_connection("combat", "off", "shut_off");
    statemachine statemachine::add_interrupt_connection("emped", "off", "shut_off");
    statemachine statemachine::add_interrupt_connection("pain", "off", "shut_off");
    statemachine statemachine::add_interrupt_connection("combat", "driving", "enter_vehicle", &function_329f45a4);
    statemachine statemachine::add_interrupt_connection("emped", "driving", "enter_vehicle", &function_329f45a4);
    statemachine statemachine::add_interrupt_connection("off", "driving", "enter_vehicle", &function_329f45a4);
    statemachine statemachine::add_interrupt_connection("pain", "driving", "enter_vehicle", &function_329f45a4);
    statemachine statemachine::add_interrupt_connection("combat", "pain", "pain");
    statemachine statemachine::add_interrupt_connection("emped", "pain", "pain");
    statemachine statemachine::add_interrupt_connection("off", "pain", "pain");
    statemachine statemachine::add_interrupt_connection("driving", "pain", "pain");
    self.overridevehiclekilled = &callback_vehiclekilled;
    self.overridevehicledeathpostgame = &callback_vehiclekilled;
    statemachine thread statemachine::set_state("suspend");
    self thread on_death_cleanup();
    return statemachine;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x0
// Checksum 0x7ac35996, Offset: 0x3d38
// Size: 0x44
function register_custom_add_state_callback(func) {
    if (!isdefined(level.level_specific_add_state_callbacks)) {
        level.level_specific_add_state_callbacks = [];
    }
    level.level_specific_add_state_callbacks[level.level_specific_add_state_callbacks.size] = func;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x2b8ed6f5, Offset: 0x3d88
// Size: 0x56
function call_custom_add_state_callbacks() {
    if (isdefined(level.level_specific_add_state_callbacks)) {
        for (i = 0; i < level.level_specific_add_state_callbacks.size; i++) {
            self [[ level.level_specific_add_state_callbacks[i] ]]();
        }
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 8, eflags: 0x2 linked
// Checksum 0x2a1c5443, Offset: 0x3de8
// Size: 0xfc
function callback_vehiclekilled(einflictor, eattacker, idamage, smeansofdeath, weapon, vdir, shitloc, psoffsettime) {
    if (is_true(self._no_death_state)) {
        return;
    }
    death_info = spawnstruct();
    death_info.inflictor = einflictor;
    death_info.attacker = eattacker;
    death_info.damage = idamage;
    death_info.meansofdeath = smeansofdeath;
    death_info.weapon = weapon;
    death_info.dir = vdir;
    death_info.hitloc = shitloc;
    death_info.timeoffset = psoffsettime;
    self set_state("death", death_info);
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xc6247d0d, Offset: 0x3ef0
// Size: 0xb0
function on_death_cleanup() {
    state_machines = self.state_machines;
    self waittill(#"death");
    waittillframeend();
    foreach (statemachine in state_machines) {
        statemachine statemachine::clear();
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x9e809d35, Offset: 0x3fa8
// Size: 0x104
function defaultstate_death_enter(*params) {
    self vehicle::toggle_tread_fx(0);
    self vehicle::toggle_exhaust_fx(0);
    self vehicle::toggle_sounds(0);
    self disableaimassist();
    turnoffalllightsandlaser();
    turnoffallambientanims();
    clearalllookingandtargeting();
    clearallmovement();
    self cancelaimove();
    self val::set(#"defaultstate_death_enter", "takedamage", 0);
    self vehicle_death::death_cleanup_level_variables();
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x418dbfff, Offset: 0x40b8
// Size: 0x94
function burning_death_fx() {
    if (isdefined(self.settings.burn_death_fx_1) && isdefined(self.settings.burn_death_tag_1)) {
        playfxontag(self.settings.burn_death_fx_1, self, self.settings.burn_death_tag_1);
    }
    if (isdefined(self.settings.burn_death_sound_1)) {
        self playsound(self.settings.burn_death_sound_1);
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x65011e2e, Offset: 0x4158
// Size: 0x94
function emp_death_fx() {
    if (isdefined(self.settings.emp_death_fx_1) && isdefined(self.settings.emp_death_tag_1)) {
        playfxontag(self.settings.emp_death_fx_1, self, self.settings.emp_death_tag_1);
    }
    if (isdefined(self.settings.emp_death_sound_1)) {
        self playsound(self.settings.emp_death_sound_1);
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x861cebf5, Offset: 0x41f8
// Size: 0xfc
function death_radius_damage_special(radiusscale, meansofdamage) {
    self endon(#"death");
    if (!isdefined(self) || self.abandoned === 1 || self.damage_on_death === 0 || self.radiusdamageradius <= 0) {
        return;
    }
    position = self.origin + (0, 0, 15);
    radius = self.radiusdamageradius * radiusscale;
    damagemax = self.radiusdamagemax;
    damagemin = self.radiusdamagemin;
    waitframe(1);
    if (isdefined(self)) {
        self radiusdamage(position, radius, damagemax, damagemin, undefined, meansofdamage);
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xfd990f08, Offset: 0x4300
// Size: 0xbc
function burning_death(*params) {
    self endon(#"death");
    self burning_death_fx();
    self.skipfriendlyfirecheck = 1;
    self thread death_radius_damage_special(2, "MOD_BURNED");
    self vehicle_death::set_death_model(self.deathmodel, self.modelswapdelay);
    self vehicle::do_death_dynents(3);
    self vehicle_death::deletewhensafe(10);
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xd71c0360, Offset: 0x43c8
// Size: 0xbc
function emped_death(*params) {
    self endon(#"death");
    self emp_death_fx();
    self.skipfriendlyfirecheck = 1;
    self thread death_radius_damage_special(2, "MOD_ELECTROCUTED");
    self vehicle_death::set_death_model(self.deathmodel, self.modelswapdelay);
    self vehicle::do_death_dynents(2);
    self vehicle_death::deletewhensafe();
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x2d2111d3, Offset: 0x4490
// Size: 0xa4
function gibbed_death(*params) {
    self endon(#"death");
    self vehicle_death::death_fx();
    self thread vehicle_death::death_radius_damage();
    self vehicle_death::set_death_model(self.deathmodel, self.modelswapdelay);
    self vehicle::do_death_dynents();
    self vehicle_death::deletewhensafe();
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x13f43bf3, Offset: 0x4540
// Size: 0x16c
function default_death(*params) {
    self endon(#"death");
    self vehicle_death::death_fx();
    self thread vehicle_death::death_radius_damage();
    self vehicle_death::set_death_model(self.deathmodel, self.modelswapdelay);
    if (self.classname == "script_vehicle") {
        self thread vehicle_death::death_jolt(self.vehicletype);
    }
    if (isdefined(level.disable_thermal)) {
        [[ level.disable_thermal ]]();
    }
    waittime = isdefined(self.waittime_before_delete) ? self.waittime_before_delete : 0;
    owner = self getvehicleowner();
    if (isdefined(owner) && self isremotecontrol()) {
        waittime = max(waittime, 4);
    }
    util::waitfortime(waittime);
    vehicle_death::freewhensafe();
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xcd66dac7, Offset: 0x46b8
// Size: 0xfe
function get_death_type(params) {
    if (self.delete_on_death === 1) {
        death_type = "default";
    } else {
        death_type = self.death_type;
    }
    if (!isdefined(death_type)) {
        death_type = params.death_type;
    }
    if (!isdefined(death_type) && isdefined(self.abnormal_status) && self.abnormal_status.burning === 1) {
        death_type = "burning";
    }
    if (!isdefined(death_type) && isdefined(self.abnormal_status) && self.abnormal_status.emped === 1 || isdefined(params.weapon) && params.weapon.isemp) {
        death_type = "emped";
    }
    return death_type;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xc5247854, Offset: 0x47c0
// Size: 0x182
function defaultstate_death_update(params) {
    self endon(#"death");
    if (isdefined(level.vehicle_destructer_cb)) {
        [[ level.vehicle_destructer_cb ]](self);
    }
    if (self.delete_on_death === 1) {
        default_death(params);
        vehicle_death::deletewhensafe(0.25);
        return;
    }
    death_type = isdefined(get_death_type(params)) ? get_death_type(params) : "default";
    switch (death_type) {
    case #"burning":
        burning_death(params);
        break;
    case #"emped":
        emped_death(params);
        break;
    case #"gibbed":
        gibbed_death(params);
        break;
    default:
        default_death(params);
        break;
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x2aabacef, Offset: 0x4950
// Size: 0x94
function defaultstate_scripted_enter(params) {
    if (params.no_clear_movement !== 1) {
        clearalllookingandtargeting();
        clearallmovement();
        if (hasasm(self)) {
            self asmrequestsubstate(#"locomotion@movement");
        }
        self resumespeed();
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x575a8489, Offset: 0x49f0
// Size: 0x44
function defaultstate_scripted_exit(params) {
    if (params.no_clear_movement !== 1) {
        clearalllookingandtargeting();
        clearallmovement();
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x135561f5, Offset: 0x4a40
// Size: 0x26
function function_e0887c67(*params) {
    self notify(#"endpath");
    self.attachedpath = undefined;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x1d935cbe, Offset: 0x4a70
// Size: 0xc
function defaultstate_combat_enter(*params) {
    
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xd36a0c1f, Offset: 0x4a88
// Size: 0xc
function defaultstate_combat_exit(*params) {
    
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xc5a671d9, Offset: 0x4aa0
// Size: 0x18c
function defaultstate_emped_enter(params) {
    self vehicle::toggle_tread_fx(0);
    self vehicle::toggle_exhaust_fx(0);
    self vehicle::toggle_sounds(0);
    params.laseron = islaseron(self);
    self laseroff();
    self vehicle::lights_off();
    clearalllookingandtargeting();
    if (!is_true(self.var_94e2cf87)) {
        clearallmovement();
    }
    if (isairborne(self)) {
        self setrotorspeed(0);
    }
    if (!isdefined(self.abnormal_status)) {
        self.abnormal_status = spawnstruct();
    }
    self.abnormal_status.emped = 1;
    self.abnormal_status.attacker = params.param1;
    self.abnormal_status.inflictor = params.param2;
    self vehicle::toggle_emp_fx(1);
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xfdb61072, Offset: 0x4c38
// Size: 0x7c
function emp_startup_fx() {
    if (isdefined(self) && isdefined(self.settings) && isdefined(self.settings.emp_startup_fx_1) && isdefined(self.settings.emp_startup_tag_1)) {
        playfxontag(self.settings.emp_startup_fx_1, self, self.settings.emp_startup_tag_1);
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xfcd78e7e, Offset: 0x4cc0
// Size: 0x134
function defaultstate_emped_update(params) {
    self endon(#"death", #"change_state");
    time = params.param0;
    assert(isdefined(time));
    util::cooldown("emped_timer", time);
    while (!util::iscooldownready("emped_timer")) {
        timeleft = max(util::getcooldownleft("emped_timer"), 0.5);
        wait(timeleft);
    }
    self.abnormal_status.emped = 0;
    self vehicle::toggle_emp_fx(0);
    self emp_startup_fx();
    wait(1);
    self evaluate_connections();
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x6bef0b59, Offset: 0x4e00
// Size: 0x94
function defaultstate_emped_exit(params) {
    self vehicle::toggle_tread_fx(1);
    self vehicle::toggle_exhaust_fx(1);
    self vehicle::toggle_sounds(1);
    if (params.laseron === 1) {
        self laseron();
    }
    self vehicle::lights_on();
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xced87326, Offset: 0x4ea0
// Size: 0x10
function defaultstate_emped_reenter(*params) {
    return true;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x8477c0eb, Offset: 0x4eb8
// Size: 0x1d4
function defaultstate_off_enter(params) {
    self vehicle::toggle_tread_fx(0);
    self vehicle::toggle_exhaust_fx(0);
    self vehicle::toggle_sounds(0);
    self vehicle::function_bbc1d940(0);
    params.laseron = islaseron(self);
    turnoffalllightsandlaser();
    turnoffallambientanims();
    clearalllookingandtargeting();
    clearallmovement();
    if (isdefined(level.disable_thermal)) {
        [[ level.disable_thermal ]]();
    }
    if (isairborne(self)) {
        if (params.isinitialstate !== 1 && params.no_falling !== 1) {
            self setphysacceleration((0, 0, -300));
        }
        self setrotorspeed(0);
    }
    if (!is_true(params.isinitialstate) && (self get_previous_state() === "driving" || is_true(params.var_c1273f91))) {
        self vehicle::function_7f0bbde3();
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x5680b035, Offset: 0x5098
// Size: 0x1e4
function defaultstate_off_exit(params) {
    self vehicle::toggle_tread_fx(1);
    self vehicle::toggle_exhaust_fx(1);
    if (self get_next_state() === "driving" || is_true(params.var_da88902a)) {
        self thread vehicle::function_fa4236af(params);
    } else {
        self vehicle::toggle_sounds(1);
    }
    if (isairborne(self)) {
        self setphysacceleration((0, 0, 0));
        if (!is_true(params.var_1751c737)) {
            self thread nudge_collision();
        }
        self setrotorspeed(1);
    }
    if (params.laseron === 1) {
        self laseron();
    }
    if (isdefined(level.enable_thermal)) {
        if (self get_next_state() !== "death") {
            [[ level.enable_thermal ]]();
        }
    }
    if (!is_true(self.nolights)) {
        self vehicle::lights_on();
    }
    self vehicle::toggle_force_driver_taillights(0);
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 4, eflags: 0x2 linked
// Checksum 0xcad8b0da, Offset: 0x5288
// Size: 0xae
function function_329f45a4(*current_state, *to_state, *connection, *params) {
    if (!isdefined(self)) {
        return false;
    }
    if (is_true(self.emped) || is_true(self.jammed)) {
        return false;
    }
    driver = self getseatoccupant(0);
    if (isplayer(driver)) {
        return true;
    }
    return false;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x9b458d45, Offset: 0x5340
// Size: 0x6e
function function_6664e3af(*current_state, *to_state_name, *connection, *params) {
    if (isalive(self)) {
        driver = self getseatoccupant(0);
        if (!isdefined(driver)) {
            return true;
        }
    }
    return false;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xc0ef0080, Offset: 0x53b8
// Size: 0x17c
function defaultstate_driving_enter(params) {
    params.driver = self getseatoccupant(0);
    if (!isdefined(params.driver)) {
        if (isdefined(params.turn_off)) {
            self [[ params.turn_off ]]();
            return;
        }
    }
    assert(isdefined(params.driver));
    self.turretrotscale = 1;
    if (!is_true(params.var_c2e048f9)) {
        self.team = params.driver.team;
    }
    if (hasasm(self)) {
        self asmrequestsubstate(#"locomotion@movement");
    }
    clearalllookingandtargeting();
    clearallmovement();
    self cancelaimove();
    if (is_true(params.var_7dabdc1b)) {
        self returnplayercontrol();
    }
    self setheliheightcap(1);
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x10bacb7a, Offset: 0x5540
// Size: 0x6c
function defaultstate_driving_exit(*params) {
    self.turretrotscale = 1;
    self setheliheightcap(0);
    self takeplayercontrol();
    clearalllookingandtargeting();
    clearallmovement();
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x5d9887f3, Offset: 0x55b8
// Size: 0x2c
function defaultstate_pain_enter(*params) {
    clearalllookingandtargeting();
    clearallmovement();
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x67037644, Offset: 0x55f0
// Size: 0x2c
function defaultstate_pain_exit(*params) {
    clearalllookingandtargeting();
    clearallmovement();
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xc5ad5939, Offset: 0x5628
// Size: 0x4c
function function_97e9de18(*params) {
    self endon(#"death", #"change_state");
    wait(0.2);
    self evaluate_connections();
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 3, eflags: 0x0
// Checksum 0x8b06c3da, Offset: 0x5680
// Size: 0x62
function canseeenemyfromposition(position, enemy, sight_check_height) {
    sightcheckorigin = position + (0, 0, sight_check_height);
    return sighttracepassed(sightcheckorigin, enemy.origin + (0, 0, 30), 0, self);
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x591c4bb, Offset: 0x56f0
// Size: 0xf4
function positionquery_debugscores(queryresult) {
    if (!is_true(getdvarint(#"hkai_debugpositionquery", 0))) {
        return;
    }
    i = 1;
    foreach (point in queryresult.data) {
        point debugscore(self, i, queryresult.sorted);
        i++;
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x2ebb4f90, Offset: 0x57f0
// Size: 0x260
function debugscore(*entity, num, sorted) {
    /#
        if (!isdefined(self._scoredebug)) {
            return;
        }
        if (!is_true(getdvarint(#"hkai_debugpositionquery", 0))) {
            return;
        }
        count = 1;
        color = (1, 0, 0);
        if (self.score >= 0 || is_true(sorted) && num == 1) {
            color = (0, 1, 0);
        }
        recordstar(self.origin, color);
        if (is_true(sorted)) {
            record3dtext("<unknown string>" + num + "<unknown string>" + self.score + "<unknown string>", self.origin - (0, 0, 10 * count), color);
        } else {
            record3dtext("<unknown string>" + self.score + "<unknown string>", self.origin - (0, 0, 10 * count), color);
        }
        foreach (score in self._scoredebug) {
            count++;
            record3dtext(score.scorename + "<unknown string>" + score.score, self.origin - (0, 0, 10 * count), color);
        }
    #/
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xe48fc8d1, Offset: 0x5a58
// Size: 0x38
function _less_than_val(left, right) {
    if (!isdefined(left)) {
        return false;
    } else if (!isdefined(right)) {
        return true;
    }
    return left < right;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x43b436ec, Offset: 0x5a98
// Size: 0x5c
function _cmp_val(left, right, descending) {
    if (descending) {
        return _less_than_val(right, left);
    }
    return _less_than_val(left, right);
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x42b1cd2e, Offset: 0x5b00
// Size: 0x42
function _sort_by_score(left, right, descending) {
    return _cmp_val(left.score, right.score, descending);
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 3, eflags: 0x0
// Checksum 0x37432b13, Offset: 0x5b50
// Size: 0x17a
function positionquery_filter_random(queryresult, min, max) {
    foreach (point in queryresult.data) {
        score = randomfloatrange(min, max);
        /#
            if (!isdefined(point._scoredebug)) {
                point._scoredebug = [];
            }
            if (!isdefined(point._scoredebug[#"random"])) {
                point._scoredebug[#"random"] = spawnstruct();
            }
            point._scoredebug[#"random"].score = score;
            point._scoredebug[#"random"].scorename = "<unknown string>";
        #/
        point.score += score;
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x7283da6e, Offset: 0x5cd8
// Size: 0x6e
function positionquery_postprocess_sortscore(queryresult, descending = 1) {
    sorted = array::merge_sort(queryresult.data, &_sort_by_score, descending);
    queryresult.data = sorted;
    queryresult.sorted = 1;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xcbfc508, Offset: 0x5d50
// Size: 0x18a
function positionquery_filter_outofgoalanchor(queryresult, tolerance = 1) {
    foreach (point in queryresult.data) {
        if (point.disttogoal > tolerance) {
            score = -10000 - point.disttogoal * 10;
            /#
                if (!isdefined(point._scoredebug)) {
                    point._scoredebug = [];
                }
                if (!isdefined(point._scoredebug[#"outofgoalanchor"])) {
                    point._scoredebug[#"outofgoalanchor"] = spawnstruct();
                }
                point._scoredebug[#"outofgoalanchor"].score = score;
                point._scoredebug[#"outofgoalanchor"].scorename = "<unknown string>";
            #/
            point.score += score;
        }
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 5, eflags: 0x2 linked
// Checksum 0x1f6718ae, Offset: 0x5ee8
// Size: 0x2da
function positionquery_filter_engagementdist(queryresult, enemy, engagementdistancemin, engagementdistancemax, engagementdistance) {
    if (!isdefined(enemy)) {
        return;
    }
    if (!isdefined(engagementdistance)) {
        engagementdistance = (engagementdistancemin + engagementdistancemax) * 0.5;
    }
    half_engagement_width = abs(engagementdistancemax - engagementdistance);
    enemy_origin = (enemy.origin[0], enemy.origin[1], 0);
    vec_enemy_to_self = vectornormalize((self.origin[0], self.origin[1], 0) - enemy_origin);
    foreach (point in queryresult.data) {
        point.distawayfromengagementarea = 0;
        vec_enemy_to_point = (point.origin[0], point.origin[1], 0) - enemy_origin;
        dist_in_front_of_enemy = vectordot(vec_enemy_to_point, vec_enemy_to_self);
        if (abs(dist_in_front_of_enemy) < engagementdistancemin) {
            dist_in_front_of_enemy = engagementdistancemin * -1;
        }
        dist_away_from_sweet_line = abs(dist_in_front_of_enemy - engagementdistance);
        if (dist_away_from_sweet_line > half_engagement_width) {
            point.distawayfromengagementarea = dist_away_from_sweet_line - half_engagement_width;
        }
        too_far_dist = engagementdistancemax * 1.1;
        too_far_dist_sq = sqr(too_far_dist);
        dist_from_enemy_sq = distance2dsquared(point.origin, enemy_origin);
        if (dist_from_enemy_sq > too_far_dist_sq) {
            ratiosq = dist_from_enemy_sq / too_far_dist_sq;
            dist = ratiosq * too_far_dist;
            dist_outside = dist - too_far_dist;
            if (dist_outside > point.distawayfromengagementarea) {
                point.distawayfromengagementarea = dist_outside;
            }
        }
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 4, eflags: 0x0
// Checksum 0x4bf075bd, Offset: 0x61d0
// Size: 0x2da
function positionquery_filter_distawayfromtarget(queryresult, targetarray, distance, tooclosepenalty) {
    if (!isdefined(targetarray) || !isarray(targetarray)) {
        return;
    }
    foreach (point in queryresult.data) {
        tooclose = 0;
        foreach (target in targetarray) {
            origin = undefined;
            if (isvec(target)) {
                origin = target;
            } else if (issentient(target) && isalive(target)) {
                origin = target.origin;
            } else if (isentity(target)) {
                origin = target.origin;
            }
            if (isdefined(origin) && distance2dsquared(point.origin, origin) < sqr(distance)) {
                tooclose = 1;
                break;
            }
        }
        if (tooclose) {
            /#
                if (!isdefined(point._scoredebug)) {
                    point._scoredebug = [];
                }
                if (!isdefined(point._scoredebug[#"tooclosetoothers"])) {
                    point._scoredebug[#"tooclosetoothers"] = spawnstruct();
                }
                point._scoredebug[#"tooclosetoothers"].score = tooclosepenalty;
                point._scoredebug[#"tooclosetoothers"].scorename = "<unknown string>";
            #/
            point.score += tooclosepenalty;
        }
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 4, eflags: 0x0
// Checksum 0x6a46b289, Offset: 0x64b8
// Size: 0xfc
function distancepointtoengagementheight(origin, enemy, *engagementheightmin, engagementheightmax) {
    if (!isdefined(engagementheightmin)) {
        return undefined;
    }
    result = 0;
    engagementheight = 0.5 * (self.settings.engagementheightmin + self.settings.engagementheightmax);
    half_height = abs(engagementheightmax - engagementheight);
    targetheight = engagementheightmin.origin[2] + engagementheight;
    distfromengagementheight = abs(enemy[2] - targetheight);
    if (distfromengagementheight > half_height) {
        result = distfromengagementheight - half_height;
    }
    return result;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 4, eflags: 0x2 linked
// Checksum 0xfbcd101a, Offset: 0x65c0
// Size: 0x152
function positionquery_filter_engagementheight(queryresult, enemy, engagementheightmin, engagementheightmax) {
    if (!isdefined(enemy)) {
        return;
    }
    engagementheight = 0.5 * (engagementheightmin + engagementheightmax);
    half_height = abs(engagementheightmax - engagementheight);
    foreach (point in queryresult.data) {
        point.distengagementheight = 0;
        targetheight = enemy.origin[2] + engagementheight;
        distfromengagementheight = abs(point.origin[2] - targetheight);
        if (distfromengagementheight > half_height) {
            point.distengagementheight = distfromengagementheight - half_height;
        }
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 2, eflags: 0x0
// Checksum 0xa5507e56, Offset: 0x6720
// Size: 0x98
function positionquery_postprocess_removeoutofgoalradius(queryresult, tolerance = 1) {
    for (i = 0; i < queryresult.data.size; i++) {
        point = queryresult.data[i];
        if (point.disttogoal > tolerance) {
            arrayremoveindex(queryresult.data, i);
            i--;
        }
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 0, eflags: 0x0
// Checksum 0x4eb2357a, Offset: 0x67c0
// Size: 0xb8
function target_hijackers() {
    self endon(#"death");
    while (true) {
        waitresult = self waittill(#"ccom_lock_being_targeted");
        hijackingplayer = waitresult.hijacking_player;
        self getperfectinfo(hijackingplayer, 1);
        if (isplayer(hijackingplayer)) {
            self setpersonalthreatbias(hijackingplayer, 1500, 4);
        }
    }
}

// Namespace vehicle_ai/enter_vehicle
// Params 1, eflags: 0x20
// Checksum 0x9e101c49, Offset: 0x6880
// Size: 0x28
function event_handler[enter_vehicle] function_f2964e93(*eventstruct) {
    if (!isplayer(self)) {
        return;
    }
}

// Namespace vehicle_ai/exit_vehicle
// Params 1, eflags: 0x20
// Checksum 0xc701ae30, Offset: 0x68b0
// Size: 0x28
function event_handler[exit_vehicle] function_b7880090(*eventstruct) {
    if (!isplayer(self)) {
        return;
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xf3f1b79e, Offset: 0x68e0
// Size: 0x4c
function function_7ae52016(val) {
    if (isairborne(self)) {
        self setrotorspeed(float(val));
    }
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 3, eflags: 0x6 linked
// Checksum 0xae38782, Offset: 0x6938
// Size: 0x2e4
function private function_e057db25(var_2d1cbdd9, goalpos, vararg) {
    switch (vararg.size) {
    case 8:
        return tacticalquery(var_2d1cbdd9, goalpos, vararg[0], vararg[1], vararg[2], vararg[3], vararg[4], vararg[5], vararg[6], vararg[7]);
    case 7:
        return tacticalquery(var_2d1cbdd9, goalpos, vararg[0], vararg[1], vararg[2], vararg[3], vararg[4], vararg[5], vararg[6]);
    case 6:
        return tacticalquery(var_2d1cbdd9, goalpos, vararg[0], vararg[1], vararg[2], vararg[3], vararg[4], vararg[5]);
    case 5:
        return tacticalquery(var_2d1cbdd9, goalpos, vararg[0], vararg[1], vararg[2], vararg[3], vararg[4]);
    case 4:
        return tacticalquery(var_2d1cbdd9, goalpos, vararg[0], vararg[1], vararg[2], vararg[3]);
    case 3:
        return tacticalquery(var_2d1cbdd9, goalpos, vararg[0], vararg[1], vararg[2]);
    case 2:
        return tacticalquery(var_2d1cbdd9, goalpos, vararg[0], vararg[1]);
    case 1:
        return tacticalquery(var_2d1cbdd9, goalpos, vararg[0]);
    case 0:
        return tacticalquery(var_2d1cbdd9, goalpos);
    default:
        assertmsg("<unknown string>");
        break;
    }
    return undefined;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x40
// Checksum 0x42683b57, Offset: 0x6c28
// Size: 0x526
function function_1d436633(...) {
    assert(isdefined(self.ai));
    if (!isdefined(self.ai.var_88b0fd29)) {
        self.ai.var_88b0fd29 = gettime();
    }
    var_12cb92c6 = 0;
    goalinfo = self function_4794d6a3();
    newpos = undefined;
    forcedgoal = is_true(goalinfo.goalforced);
    isatgoal = is_true(goalinfo.isatgoal) || self isapproachinggoal() && isdefined(self.overridegoalpos);
    itsbeenawhile = is_true(goalinfo.isatgoal) && gettime() > self.ai.var_88b0fd29;
    var_48ea0381 = 0;
    var_2a8c95a5 = forcedgoal && isdefined(self.overridegoalpos) && distancesquared(self.overridegoalpos, goalinfo.goalpos) < sqr(self.radius);
    if (isdefined(self.enemy) && !self haspath()) {
        var_48ea0381 = !self seerecently(self.enemy, randomintrange(3, 5));
        if (issentient(self.enemy) || function_ffa5b184(self.enemy)) {
            var_48ea0381 = var_48ea0381 && !self attackedrecently(self.enemy, randomintrange(5, 7));
        }
    }
    var_12cb92c6 = !isatgoal || var_48ea0381 || itsbeenawhile;
    var_12cb92c6 = var_12cb92c6 && !var_2a8c95a5;
    if (var_12cb92c6) {
        if (forcedgoal) {
            newpos = getclosestpointonnavmesh(goalinfo.goalpos, self.radius * 2, self.radius);
        } else {
            assert(isdefined(self.settings.tacbundle) && self.settings.tacbundle != "<unknown string>", "<unknown string>");
            goalarray = function_e057db25(self.settings.tacbundle, goalinfo.goalpos, vararg);
            var_817e8fd0 = [];
            if (isdefined(goalarray) && goalarray.size) {
                foreach (goal in goalarray) {
                    if (!self isingoal(goal.origin)) {
                        continue;
                    }
                    if (isdefined(self.overridegoalpos) && distancesquared(self.overridegoalpos, goal.origin) < sqr(self.radius)) {
                        continue;
                    }
                    var_817e8fd0[var_817e8fd0.size] = goal;
                }
                if (var_817e8fd0.size) {
                    goal = array::random(var_817e8fd0);
                    newpos = goal.origin;
                }
            }
        }
        if (!isdefined(newpos)) {
            newpos = getclosestpointonnavmesh(goalinfo.goalpos, self.radius * 2, self.radius);
        }
        self.ai.var_88b0fd29 = gettime() + randomintrange(3500, 5000);
    }
    return newpos;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x23c21ef6, Offset: 0x7158
// Size: 0x49a
function private function_4ab1a63a(goal) {
    if (isdefined(self.settings.engagementheightmax) && isdefined(self.settings.engagementheightmin)) {
        var_20b5eeff = 0.5 * (self.settings.engagementheightmax + self.settings.engagementheightmin);
    } else {
        var_20b5eeff = 150;
    }
    var_3069c020 = isdefined(self.settings.var_2ade16ee) ? self.settings.var_2ade16ee : 450;
    maxradius = goal.goalradius;
    minradius = min(self.radius * 2, maxradius / 3);
    innerspacing = mapfloat(1000, 3000, self.radius, self.radius * 3, goal.goalradius);
    outerspacing = innerspacing * 1.5;
    queryresult = positionquery_source_navigation(goal.goalpos, minradius, maxradius, goal.goalheight, innerspacing, self, outerspacing);
    positionquery_filter_inclaimedlocation(queryresult, self);
    foreach (point in queryresult.data) {
        if (point.inclaimedlocation) {
            /#
                if (!isdefined(point._scoredebug)) {
                    point._scoredebug = [];
                }
                if (!isdefined(point._scoredebug[#"inclaimedlocation"])) {
                    point._scoredebug[#"inclaimedlocation"] = spawnstruct();
                }
                point._scoredebug[#"inclaimedlocation"].score = -5000;
                point._scoredebug[#"inclaimedlocation"].scorename = "<unknown string>";
            #/
            point.score += -5000;
        }
        score = randomfloatrange(0, 80);
        /#
            if (!isdefined(point._scoredebug)) {
                point._scoredebug = [];
            }
            if (!isdefined(point._scoredebug[#"random"])) {
                point._scoredebug[#"random"] = spawnstruct();
            }
            point._scoredebug[#"random"].score = score;
            point._scoredebug[#"random"].scorename = "<unknown string>";
        #/
        point.score += score;
    }
    if (queryresult.data.size > 0) {
        positionquery_postprocess_sortscore(queryresult);
        self positionquery_debugscores(queryresult);
        foreach (point in queryresult.data) {
            if (self isingoal(point.origin)) {
                return point;
            }
        }
    }
    return undefined;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x944d077, Offset: 0x7600
// Size: 0xc2a
function function_1e0d693b(goal, enemy) {
    prefereddistawayfromorigin = isdefined(self.settings.var_99955aeb) ? self.settings.var_99955aeb : 150;
    if (isdefined(self.settings.engagementheightmax) && isdefined(self.settings.engagementheightmin)) {
        var_20b5eeff = 0.5 * (self.settings.engagementheightmax + self.settings.engagementheightmin);
    } else {
        var_20b5eeff = 150;
    }
    var_3069c020 = isdefined(self.settings.var_2ade16ee) ? self.settings.var_2ade16ee : 450;
    enemypos = enemy.origin;
    if (function_ffa5b184(enemy)) {
        enemypos = enemy.var_88f8feeb;
    }
    var_caa2a43c = max(prefereddistawayfromorigin, goal.goalradius + distance2d(self.origin, goal.goalpos));
    var_a51de54a = goal.goalheight + abs(self.origin[2] - goal.goalpos[2]);
    closedist = 1.2 * self.var_ec0d66ce;
    fardist = 3 * self.var_ec0d66ce;
    selfdisttoenemy = distance2d(self.origin, enemypos);
    querymultiplier = mapfloat(closedist, fardist, 1, 3, selfdisttoenemy);
    maxsearchradius = min(var_caa2a43c, (isdefined(self.settings.var_3285f09a) ? self.settings.var_3285f09a : 1000) * querymultiplier);
    halfheight = min(var_a51de54a / 2, (isdefined(self.settings.var_e1d36c37) ? self.settings.var_e1d36c37 : 300) * querymultiplier);
    innerspacing = maxsearchradius / 10;
    outerspacing = innerspacing;
    queryresult = positionquery_source_navigation(self.origin, isdefined(self.settings.var_99955aeb) ? self.settings.var_99955aeb : 0, maxsearchradius, halfheight, innerspacing, self, outerspacing);
    positionquery_filter_distancetogoal(queryresult, self);
    positionquery_filter_inclaimedlocation(queryresult, self);
    positionquery_filter_sight(queryresult, enemypos, self geteye() - self.origin, self, 0, enemy);
    self positionquery_filter_engagementdist(queryresult, enemy, self.settings.engagementdistmin, self.settings.engagementdistmax, var_3069c020);
    goalheight = enemypos[2] + 0.5 * (self.settings.engagementheightmin + self.settings.engagementheightmax);
    foreach (point in queryresult.data) {
        if (point.disttogoal > 0) {
            score = -5000 - point.disttogoal * 2;
            /#
                if (!isdefined(point._scoredebug)) {
                    point._scoredebug = [];
                }
                if (!isdefined(point._scoredebug[#"outofgoalanchor"])) {
                    point._scoredebug[#"outofgoalanchor"] = spawnstruct();
                }
                point._scoredebug[#"outofgoalanchor"].score = score;
                point._scoredebug[#"outofgoalanchor"].scorename = "<unknown string>";
            #/
            point.score += score;
        }
        if (!point.visibility) {
            /#
                if (!isdefined(point._scoredebug)) {
                    point._scoredebug = [];
                }
                if (!isdefined(point._scoredebug[#"no visibility"])) {
                    point._scoredebug[#"no visibility"] = spawnstruct();
                }
                point._scoredebug[#"no visibility"].score = -5000;
                point._scoredebug[#"no visibility"].scorename = "<unknown string>";
            #/
            point.score += -5000;
        }
        /#
            if (!isdefined(point._scoredebug)) {
                point._scoredebug = [];
            }
            if (!isdefined(point._scoredebug[#"engagementdist"])) {
                point._scoredebug[#"engagementdist"] = spawnstruct();
            }
            point._scoredebug[#"engagementdist"].score = point.distawayfromengagementarea * -1;
            point._scoredebug[#"engagementdist"].scorename = "<unknown string>";
        #/
        point.score += point.distawayfromengagementarea * -1;
        /#
            if (!isdefined(point._scoredebug)) {
                point._scoredebug = [];
            }
            if (!isdefined(point._scoredebug[#"hash_6c444b535ec20313"])) {
                point._scoredebug[#"hash_6c444b535ec20313"] = spawnstruct();
            }
            point._scoredebug[#"hash_6c444b535ec20313"].score = mapfloat(0, prefereddistawayfromorigin, -5000, 0, point.disttoorigin2d);
            point._scoredebug[#"hash_6c444b535ec20313"].scorename = "<unknown string>";
        #/
        point.score += mapfloat(0, prefereddistawayfromorigin, -5000, 0, point.disttoorigin2d);
        if (point.inclaimedlocation) {
            /#
                if (!isdefined(point._scoredebug)) {
                    point._scoredebug = [];
                }
                if (!isdefined(point._scoredebug[#"inclaimedlocation"])) {
                    point._scoredebug[#"inclaimedlocation"] = spawnstruct();
                }
                point._scoredebug[#"inclaimedlocation"].score = -5000;
                point._scoredebug[#"inclaimedlocation"].scorename = "<unknown string>";
            #/
            point.score += -5000;
        }
        distfrompreferredheight = abs(point.origin[2] - goalheight);
        if (distfrompreferredheight > var_20b5eeff) {
            heightscore = mapfloat(var_20b5eeff, 10000, 0, 2500, distfrompreferredheight) * -1;
            /#
                if (!isdefined(point._scoredebug)) {
                    point._scoredebug = [];
                }
                if (!isdefined(point._scoredebug[#"height"])) {
                    point._scoredebug[#"height"] = spawnstruct();
                }
                point._scoredebug[#"height"].score = heightscore;
                point._scoredebug[#"height"].scorename = "<unknown string>";
            #/
            point.score += heightscore;
        }
        score = randomfloatrange(0, 80);
        /#
            if (!isdefined(point._scoredebug)) {
                point._scoredebug = [];
            }
            if (!isdefined(point._scoredebug[#"random"])) {
                point._scoredebug[#"random"] = spawnstruct();
            }
            point._scoredebug[#"random"].score = score;
            point._scoredebug[#"random"].scorename = "<unknown string>";
        #/
        point.score += score;
    }
    if (queryresult.data.size > 0) {
        positionquery_postprocess_sortscore(queryresult);
        self positionquery_debugscores(queryresult);
        foreach (point in queryresult.data) {
            if (self isingoal(point.origin)) {
                return point;
            }
        }
    }
    return undefined;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xac6577de, Offset: 0x8238
// Size: 0x4ea
function private function_4646fb11(goal) {
    minsearchradius = math::clamp(120, 0, goal.goalradius);
    maxsearchradius = math::clamp(800, 120, goal.goalradius);
    queryresult = positionquery_source_navigation(self.origin, minsearchradius, maxsearchradius, 400, 80, self, 50);
    positionquery_filter_distancetogoal(queryresult, self);
    positionquery_filter_inclaimedlocation(queryresult, self);
    foreach (point in queryresult.data) {
        if (point.disttogoal > 0) {
            score = -5000 - point.disttogoal * 2;
            /#
                if (!isdefined(point._scoredebug)) {
                    point._scoredebug = [];
                }
                if (!isdefined(point._scoredebug[#"outofgoalanchor"])) {
                    point._scoredebug[#"outofgoalanchor"] = spawnstruct();
                }
                point._scoredebug[#"outofgoalanchor"].score = score;
                point._scoredebug[#"outofgoalanchor"].scorename = "<unknown string>";
            #/
            point.score += score;
        }
        if (point.inclaimedlocation) {
            /#
                if (!isdefined(point._scoredebug)) {
                    point._scoredebug = [];
                }
                if (!isdefined(point._scoredebug[#"inclaimedlocation"])) {
                    point._scoredebug[#"inclaimedlocation"] = spawnstruct();
                }
                point._scoredebug[#"inclaimedlocation"].score = -5000;
                point._scoredebug[#"inclaimedlocation"].scorename = "<unknown string>";
            #/
            point.score += -5000;
        }
        score = randomfloatrange(0, 80);
        /#
            if (!isdefined(point._scoredebug)) {
                point._scoredebug = [];
            }
            if (!isdefined(point._scoredebug[#"random"])) {
                point._scoredebug[#"random"] = spawnstruct();
            }
            point._scoredebug[#"random"].score = score;
            point._scoredebug[#"random"].scorename = "<unknown string>";
        #/
        point.score += score;
    }
    if (queryresult.data.size > 0) {
        positionquery_postprocess_sortscore(queryresult);
        self positionquery_debugscores(queryresult);
        foreach (point in queryresult.data) {
            if (self isingoal(point.origin)) {
                return point;
            }
        }
    }
    return undefined;
}

// Namespace vehicle_ai/vehicle_ai_shared
// Params 0, eflags: 0x0
// Checksum 0x39b86e83, Offset: 0x8730
// Size: 0x680
function function_b1bd875a() {
    assert(isdefined(self.ai));
    if (!isdefined(self.ai.var_88b0fd29)) {
        self.ai.var_88b0fd29 = gettime() + 1000;
        return;
    }
    goalinfo = self function_4794d6a3();
    assert(isdefined(goalinfo.goalpos));
    var_12cb92c6 = 0;
    newpos = undefined;
    point = undefined;
    enemy = self.enemy;
    currenttime = gettime();
    forcedgoal = is_true(goalinfo.goalforced);
    isatgoal = is_true(goalinfo.isatgoal);
    haspath = self haspath();
    isapproachinggoal = !isatgoal && haspath && self isapproachinggoal();
    itsbeenawhile = currenttime >= self.ai.var_88b0fd29;
    var_ed3f071f = currenttime >= self.ai.var_88b0fd29 + 5000;
    var_48ea0381 = 0;
    if (issentient(enemy) && !haspath) {
        var_48ea0381 = !self seerecently(enemy, randomintrange(3, 5));
        if (var_48ea0381 && issentient(enemy)) {
            var_48ea0381 = !self attackedrecently(enemy, randomintrange(5, 7));
        }
    }
    var_3e782e85 = forcedgoal || goalinfo.goalradius < 2 * self.radius && goalinfo.goalheight < 2 * self.radius;
    var_f5ae7ee0 = isatgoal && !var_3e782e85 && (itsbeenawhile || var_48ea0381);
    var_633ff15a = !isatgoal && (!isapproachinggoal || var_ed3f071f);
    var_12cb92c6 = var_f5ae7ee0 || var_633ff15a;
    if (var_12cb92c6) {
        if (!isatgoal || !var_3e782e85) {
            if (var_3e782e85) {
                newpos = self getclosestpointonnavvolume(goalinfo.goalpos, self.radius * 2);
            } else if (!isatgoal) {
                point = function_4ab1a63a(goalinfo);
            } else if (isdefined(enemy)) {
                point = function_1e0d693b(goalinfo, enemy);
            } else {
                point = function_4646fb11(goalinfo);
            }
            if (isdefined(point)) {
                newpos = point.origin;
            }
            if (!isdefined(newpos)) {
                newpos = self getclosestpointonnavvolume(goalinfo.goalpos, self.radius * 2);
            }
            if (!isdefined(newpos)) {
                /#
                    record3dtext("<unknown string>" + goalinfo.goalpos + "<unknown string>" + goalinfo.goalradius + "<unknown string>" + goalinfo.goalheight, self.origin + (0, 0, 8), (1, 0, 0));
                    recordline(self.origin, goalinfo.goalpos, (1, 0, 0));
                #/
                newpos = goalinfo.goalpos;
            } else if (!self isingoal(newpos)) {
                /#
                    record3dtext("<unknown string>" + newpos + "<unknown string>" + goalinfo.goalpos + "<unknown string>" + goalinfo.goalradius + "<unknown string>" + goalinfo.goalheight, self.origin + (0, 0, 8), (1, 0, 0));
                    recordline(self.origin, newpos, (1, 0, 0));
                #/
                newpos = goalinfo.goalpos;
            }
            if (distancesquared(self.origin, newpos) < sqr(self.radius * 2)) {
                newpos = undefined;
            }
            self.ai.var_88b0fd29 = currenttime + randomintrange(1000, 2000);
        }
    } else if (isatgoal && var_3e782e85) {
        self setspeedimmediate(0);
        self setvehvelocity((0, 0, 0));
        self setphysacceleration((0, 0, 0));
    }
    return newpos;
}

