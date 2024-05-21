// Atian COD Tools GSC CW decompiler test
#namespace blackboard;

/#

    // Namespace blackboard/blackboard_vehicle
    // Params 0, eflags: 0x0
    // Checksum 0xa1e91aee, Offset: 0x80
    // Size: 0x34
    function registervehicleblackboardattributes() {
        assert(isvehicle(self), "<unknown string>");
    }

#/

// Namespace blackboard/blackboard_vehicle
// Params 0, eflags: 0x2 linked
// Checksum 0xf28a4ff1, Offset: 0xc0
// Size: 0x3a
function bb_getspeed() {
    velocity = self getvelocity();
    return length(velocity);
}

// Namespace blackboard/blackboard_vehicle
// Params 0, eflags: 0x2 linked
// Checksum 0xb10cca97, Offset: 0x108
// Size: 0x4a
function bb_vehgetenemyyaw() {
    enemy = self.enemy;
    if (!isdefined(enemy)) {
        return 0;
    }
    toenemyyaw = vehgetpredictedyawtoenemy(self, 0.2);
    return toenemyyaw;
}

// Namespace blackboard/blackboard_vehicle
// Params 2, eflags: 0x2 linked
// Checksum 0x7cb68520, Offset: 0x160
// Size: 0x152
function vehgetpredictedyawtoenemy(entity, lookaheadtime) {
    if (isdefined(entity.predictedyawtoenemy) && isdefined(entity.predictedyawtoenemytime) && entity.predictedyawtoenemytime == gettime()) {
        return entity.predictedyawtoenemy;
    }
    selfpredictedpos = entity.origin;
    moveangle = entity.angles[1] + entity getmotionangle();
    selfpredictedpos += (cos(moveangle), sin(moveangle), 0) * 200 * lookaheadtime;
    yaw = vectortoangles(entity.enemy.origin - selfpredictedpos)[1] - entity.angles[1];
    yaw = absangleclamp360(yaw);
    entity.predictedyawtoenemy = yaw;
    entity.predictedyawtoenemytime = gettime();
    return yaw;
}

