// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_d0eacb0d;

// Namespace namespace_d0eacb0d/namespace_d0eacb0d
// Params 0, eflags: 0x5
// Checksum 0x4b8a22e0, Offset: 0xb8
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_dd05779fff7e75f", &preinit, &postinit, undefined, undefined);
}

// Namespace namespace_d0eacb0d/namespace_d0eacb0d
// Params 0, eflags: 0x6 linked
// Checksum 0x4cc742ba, Offset: 0x110
// Size: 0xdc
function private preinit() {
    if (currentsessionmode() != 4 && getgametypesetting(#"hash_435c853b64e3175e") === 1) {
        level.var_9fd4b8f = spawnstruct();
        level.var_9fd4b8f.vehicles = [];
        level.var_10e55912 = getgametypesetting(#"hash_3cc3acd830a8eef") === 1;
        callback::on_vehicle_killed(&on_vehicle_killed);
        level thread function_7955100c();
    }
}

// Namespace namespace_d0eacb0d/namespace_d0eacb0d
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x1f8
// Size: 0x4
function private postinit() {
    
}

// Namespace namespace_d0eacb0d/namespace_d0eacb0d
// Params 1, eflags: 0x2 linked
// Checksum 0x2fbf6d19, Offset: 0x208
// Size: 0x62
function on_vehicle_killed(*params) {
    if (isdefined(self.spawnindex)) {
        level.var_9fd4b8f.vehicles[self.spawnindex].alive = 0;
        level.var_9fd4b8f.vehicles[self.spawnindex].killedtime = gettime();
    }
}

// Namespace namespace_d0eacb0d/namespace_d0eacb0d
// Params 6, eflags: 0x6 linked
// Checksum 0x5781c246, Offset: 0x278
// Size: 0xf8
function private function_b604ec09(vehicletype, spawnpos, spawnangles, spawncallback, params, count) {
    var_1957bf22 = spawnstruct();
    var_1957bf22.var_e7f51a60 = count;
    var_1957bf22.spawncount = 0;
    var_1957bf22.spawnpos = spawnpos;
    var_1957bf22.spawnangles = spawnangles;
    var_1957bf22.vehicletype = vehicletype;
    var_1957bf22.spawncallback = spawncallback;
    var_1957bf22.params = params;
    var_1957bf22.index = level.var_9fd4b8f.vehicles.size;
    var_1957bf22.alive = 1;
    level.var_9fd4b8f.vehicles[level.var_9fd4b8f.vehicles.size] = var_1957bf22;
    return var_1957bf22;
}

// Namespace namespace_d0eacb0d/namespace_d0eacb0d
// Params 2, eflags: 0x6 linked
// Checksum 0xab847e70, Offset: 0x378
// Size: 0xaa
function private function_f7bb1527(var_1957bf22, vehicle) {
    var_1957bf22.respawntime = function_f77a9b1b(vehicle);
    var_1957bf22.timeouttime = function_e674d71a(vehicle);
    var_1957bf22.radius = vehicle.radius;
    var_1957bf22.origin = vehicle.origin;
    var_1957bf22.angles = vehicle.angles;
    var_1957bf22.center = vehicle getboundsmidpoint();
    var_1957bf22.halfsize = vehicle getboundshalfsize();
}

// Namespace namespace_d0eacb0d/namespace_d0eacb0d
// Params 0, eflags: 0x2 linked
// Checksum 0xedd52727, Offset: 0x430
// Size: 0x6a
function function_585a895b() {
    count = 0;
    infinitespawn = 0;
    spawnflags = self.spawnflags;
    if (isdefined(spawnflags)) {
        infinitespawn = spawnflags & 64;
    }
    if (self.count && !infinitespawn) {
        count = self.count;
    }
}

// Namespace namespace_d0eacb0d/namespace_d0eacb0d
// Params 5, eflags: 0x2 linked
// Checksum 0x729cf316, Offset: 0x4a8
// Size: 0xf6
function function_711f53df(vehicletype, spawnpos, spawnangles, spawncallback, params) {
    self endon(#"death");
    if (isdefined(level.var_9fd4b8f.vehicles)) {
        wait(1);
        if (!isdefined(self.spawnindex)) {
            count = self function_585a895b();
            var_1957bf22 = function_b604ec09(vehicletype, spawnpos, spawnangles, spawncallback, params, count);
            var_1957bf22.vehicle = self;
            function_f7bb1527(var_1957bf22, var_1957bf22.vehicle);
            self.spawnindex = var_1957bf22.index;
        }
    }
}

// Namespace namespace_d0eacb0d/namespace_d0eacb0d
// Params 5, eflags: 0x2 linked
// Checksum 0xf21fb242, Offset: 0x5a8
// Size: 0x114
function function_f863c07e(vehicletype, spawnpos, spawnangles, spawncallback, params) {
    if (isdefined(level.var_9fd4b8f.vehicles)) {
        count = self function_585a895b();
        var_1957bf22 = function_b604ec09(vehicletype, spawnpos, spawnangles, spawncallback, params, count);
        var_1957bf22.vehicle = spawn_vehicle(vehicletype, spawnpos, spawnangles, var_1957bf22.index, spawncallback, params);
        var_1957bf22.spawncount++;
        function_f7bb1527(var_1957bf22, var_1957bf22.vehicle);
        return var_1957bf22.vehicle;
    }
    return spawn_vehicle(vehicletype, spawnpos, spawnangles, undefined, spawncallback, params);
}

// Namespace namespace_d0eacb0d/namespace_d0eacb0d
// Params 6, eflags: 0x6 linked
// Checksum 0x583c779f, Offset: 0x6c8
// Size: 0x13a
function private spawn_vehicle(vehicletype, spawnpos, spawnangles, index, callback, params) {
    if (isdefined(params.var_45e1ab0)) {
        presetname = params.var_45e1ab0.presetname;
        var_389eb4d4 = params.var_45e1ab0.var_389eb4d4;
        var_6900386f = params.var_45e1ab0.var_6900386f;
        vehicle = spawnvehicle(vehicletype, spawnpos, spawnangles, undefined, 0, undefined, presetname, var_389eb4d4, var_6900386f);
    } else {
        vehicle = spawnvehicle(vehicletype, spawnpos, spawnangles);
    }
    assert(isdefined(vehicle));
    if (isdefined(vehicle)) {
        if (isdefined(callback)) {
            [[ callback ]](vehicle, params);
        }
        vehicle.spawnindex = index;
    }
    return vehicle;
}

// Namespace namespace_d0eacb0d/namespace_d0eacb0d
// Params 1, eflags: 0x6 linked
// Checksum 0x91bbad6a, Offset: 0x810
// Size: 0x310
function private function_a20b03ed(vs) {
    if (vs.alive) {
        return false;
    }
    if (!vs.respawntime) {
        return false;
    }
    if (isdefined(vs.var_e7f51a60) && vs.spawncount >= vs.var_e7f51a60) {
        return false;
    }
    time = gettime();
    if (time < vs.killedtime + vs.respawntime) {
        return false;
    }
    if (isdefined(vs.vehicle)) {
        vs.vehicle delete();
    }
    ents = getentitiesinradius(vs.origin, vs.radius);
    if (ents.size > 0) {
        /#
            if (getdvarint(#"hash_67f18c2de587c7d3", 0)) {
            }
        #/
        foreach (ent in ents) {
            if (!isdefined(ent.model)) {
                continue;
            }
            if (ent.model == #"") {
                continue;
            }
            var_84c67202 = ent getboundsmidpoint();
            enthalfsize = ent getboundshalfsize();
            if (function_ecdf9b24(vs.origin + vs.center, vs.angles, vs.halfsize, ent.origin + var_84c67202, ent.angles, enthalfsize)) {
                /#
                    if (getdvarint(#"hash_67f18c2de587c7d3", 0)) {
                        box(vs.origin + vs.center, vs.halfsize * -1, vs.halfsize, vs.angles, (1, 0, 0), 1, 0, 25);
                        box(ent.origin + var_84c67202, enthalfsize * -1, enthalfsize, ent.angles, (1, 0, 0), 1, 0, 25);
                    }
                #/
                return false;
            }
        }
    }
    return true;
}

// Namespace namespace_d0eacb0d/namespace_d0eacb0d
// Params 1, eflags: 0x2 linked
// Checksum 0x968755c3, Offset: 0xb28
// Size: 0x44
function function_6b4b0313(vs) {
    time = gettime();
    if (function_a20b03ed(vs)) {
        thread function_af758179(vs);
    }
}

// Namespace namespace_d0eacb0d/namespace_d0eacb0d
// Params 1, eflags: 0x2 linked
// Checksum 0x7d634f9a, Offset: 0xb78
// Size: 0x7c
function function_af758179(vs) {
    vs.alive = 1;
    util::wait_network_frame();
    vs.vehicle = spawn_vehicle(vs.vehicletype, vs.spawnpos, vs.spawnangles, vs.index, vs.spawncallback, vs.params);
    vs.spawncount++;
}

// Namespace namespace_d0eacb0d/namespace_d0eacb0d
// Params 1, eflags: 0x2 linked
// Checksum 0xb9141861, Offset: 0xc00
// Size: 0x1a6
function function_ef4c0e24(vehicle) {
    profileNamedStart(#"");
    players = vehicle getvehoccupants();
    if (players.size > 0) {
        profileNamedStop();
        return true;
    }
    players = getentitiesinradius(vehicle.origin, 150, 1);
    if (players.size > 0) {
        profileNamedStop();
        return true;
    }
    players = getentitiesinradius(vehicle.origin, 1000, 1);
    foreach (player in players) {
        direction = vehicle.origin - player.origin;
        dir = vectornormalize(direction);
        forward = anglestoforward(player.angles);
        if (vectordot(forward, dir) > 0.707) {
            profileNamedStop();
            return true;
        }
    }
    profileNamedStop();
    return false;
}

// Namespace namespace_d0eacb0d/namespace_d0eacb0d
// Params 1, eflags: 0x2 linked
// Checksum 0xad8b9d97, Offset: 0xdb8
// Size: 0x158
function function_ef45a8f4(vs) {
    if (!level.var_10e55912) {
        return false;
    }
    if (!vs.alive) {
        return false;
    }
    if (!vs.timeouttime) {
        return false;
    }
    vehicle = vs.vehicle;
    if (!isdefined(vehicle)) {
        return false;
    }
    if (!isvehicle(vehicle)) {
        return false;
    }
    if (!isdefined(vehicle.last_enter)) {
        return false;
    }
    if (distancesquared(vehicle.origin, vs.spawnpos) < 36864) {
        return false;
    }
    time = gettime();
    if (!isdefined(vehicle.var_70ad8a9e) || function_ef4c0e24(vehicle)) {
        vehicle.var_70ad8a9e = time;
    }
    occupants = vehicle getvehoccupants();
    if (isdefined(occupants) && occupants.size) {
        return false;
    }
    if (vs.timeouttime + vehicle.var_70ad8a9e > time) {
        return false;
    }
    return true;
}

// Namespace namespace_d0eacb0d/namespace_d0eacb0d
// Params 1, eflags: 0x2 linked
// Checksum 0xf66d11fd, Offset: 0xf18
// Size: 0x5c
function function_6ecd8f13(vs) {
    if (function_ef45a8f4(vs)) {
        vs.vehicle on_vehicle_killed();
        vs.vehicle delete();
    }
}

// Namespace namespace_d0eacb0d/namespace_d0eacb0d
// Params 0, eflags: 0x2 linked
// Checksum 0xc7596ed2, Offset: 0xf80
// Size: 0x182
function function_7955100c() {
    while (true) {
        if (isdefined(level.var_9fd4b8f) && isdefined(level.var_9fd4b8f.vehicles)) {
            vehiclecount = level.var_9fd4b8f.vehicles.size;
            var_cefe19ce = int(vehiclecount * float(function_60d95f53()) / 1000);
            count = 0;
            foreach (vs in level.var_9fd4b8f.vehicles) {
                count++;
                function_6b4b0313(vs);
                function_6ecd8f13(vs);
                if (var_cefe19ce > 0 && !(count % var_cefe19ce)) {
                    waitframe(1);
                }
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_d0eacb0d/namespace_d0eacb0d
// Params 1, eflags: 0x0
// Checksum 0xe76ee4fb, Offset: 0x1110
// Size: 0xca
function function_2265d46b(deathmodel) {
    if (isdefined(self.spawnindex)) {
        assert(isdefined(level.var_9fd4b8f));
        assert(isdefined(level.var_9fd4b8f.vehicles));
        assert(isdefined(level.var_9fd4b8f.vehicles[self.spawnindex]));
        deathmodel.spawnindex = self.spawnindex;
        level.var_9fd4b8f.vehicles[self.spawnindex].vehicle = deathmodel;
    }
}

// Namespace namespace_d0eacb0d/namespace_d0eacb0d
// Params 1, eflags: 0x6 linked
// Checksum 0x6fea60c7, Offset: 0x11e8
// Size: 0x4a2
function private function_e674d71a(vehicle) {
    respawntime = 60;
    if (isdefined(vehicle.scriptvehicletype)) {
        switch (vehicle.scriptvehicletype) {
        case #"player_atv":
            respawntime = getgametypesetting(#"hash_25d72112144c5ea0");
            break;
        case #"player_tank":
            respawntime = getgametypesetting(#"hash_4725de6afe873b87");
            break;
        case #"helicopter_light":
            respawntime = getgametypesetting(#"hash_7f190c8839d3f05c");
            break;
        case #"helicopter_heavy":
            respawntime = getgametypesetting(#"hash_4f00f3f568c284af");
            break;
        case #"hash_2212824fabcc986c":
            respawntime = getgametypesetting(#"hash_7d53c8bab3db8122");
            break;
        case #"player_motorcycle_2wd":
        case #"player_motorcycle":
            respawntime = getgametypesetting(#"hash_b30022a9302a5a6");
            break;
        case #"player_fav":
            respawntime = getgametypesetting(#"hash_28005bb885acabc3");
            break;
        case #"player_btr40":
            respawntime = getgametypesetting(#"hash_3eeb8cb5c84b1939");
            break;
        case #"player_fav_light":
            respawntime = getgametypesetting(#"hash_3d5a87878a3bef28");
            break;
        case #"cargo_truck_wz":
            respawntime = getgametypesetting(#"hash_4201d2890785fb14");
            break;
        case #"hash_5b215c4eff8f5759":
            respawntime = getgametypesetting(#"hash_22c53ddb2cb67f13");
            break;
        case #"player_pbr":
            respawntime = getgametypesetting(#"hash_39cfd81268504039");
            break;
        case #"tactical_raft_wz":
        case #"player_tactical_raft":
            respawntime = getgametypesetting(#"hash_53fd9a3e9a0e78e1");
            break;
        case #"player_muscle":
            respawntime = getgametypesetting(#"hash_5f116b8cfbdbc3fe");
            break;
        case #"player_suv":
            respawntime = getgametypesetting(#"hash_208071125a2b0b0b");
            break;
        case #"player_uaz":
            respawntime = getgametypesetting(#"hash_52ef5b12764c8139");
            break;
        case #"player_jetski":
            respawntime = getgametypesetting(#"hash_76f686986e1a58b");
            break;
        case #"player_sedan":
            respawntime = getgametypesetting(#"hash_9c266bdf9cad7fa");
            break;
        default:
            break;
        }
    }
    assert(isdefined(respawntime));
    return int(respawntime * 1000);
}

// Namespace namespace_d0eacb0d/namespace_d0eacb0d
// Params 1, eflags: 0x6 linked
// Checksum 0x614b5ca0, Offset: 0x1698
// Size: 0x4f2
function private function_f77a9b1b(vehicle) {
    /#
        if (getdvarint(#"hash_91ed3579d86e71", 0) > 0) {
            return int(1 * 1000);
        }
    #/
    respawntime = 0;
    if (isdefined(vehicle.scriptvehicletype)) {
        switch (vehicle.scriptvehicletype) {
        case #"player_atv":
            respawntime = getgametypesetting(#"hash_42b840c668fd2c85");
            break;
        case #"player_tank":
            respawntime = getgametypesetting(#"hash_46f0ae82f5c2f7d4");
            break;
        case #"helicopter_light":
            respawntime = getgametypesetting(#"hash_2a02614601829003");
            break;
        case #"helicopter_heavy":
            respawntime = getgametypesetting(#"hash_5598d36d6b224c9a");
            break;
        case #"hash_2212824fabcc986c":
            respawntime = getgametypesetting(#"hash_7353bbc24d72ec59");
            break;
        case #"player_motorcycle_2wd":
        case #"player_motorcycle":
            respawntime = getgametypesetting(#"hash_5a4fde688cbf1a01");
            break;
        case #"player_fav":
            respawntime = getgametypesetting(#"hash_6b2754246df1bc7c");
            break;
        case #"player_btr40":
            respawntime = getgametypesetting(#"hash_6773166f56896564");
            break;
        case #"player_fav_light":
            respawntime = getgametypesetting(#"hash_54d908d6273c8893");
            break;
        case #"cargo_truck_wz":
            respawntime = getgametypesetting(#"hash_1974892bc7266bab");
            break;
        case #"hash_5b215c4eff8f5759":
            respawntime = getgametypesetting(#"hash_273d049136c76afa");
            break;
        case #"player_pbr":
            respawntime = getgametypesetting(#"hash_44f0b1c6b2d3b6f8");
            break;
        case #"tactical_raft_wz":
        case #"player_tactical_raft":
            respawntime = getgametypesetting(#"hash_56f6d77da3124af2");
            break;
        case #"player_muscle":
            respawntime = getgametypesetting(#"hash_7c33e5bebaf05afb");
            break;
        case #"player_suv":
            respawntime = getgametypesetting(#"hash_5dc620c6c0919d82");
            break;
        case #"player_uaz":
            respawntime = getgametypesetting(#"hash_2aea36c6a4135574");
            break;
        case #"player_jetski":
            respawntime = getgametypesetting(#"hash_38a8f601ab8388d0");
            break;
        case #"player_sedan":
            respawntime = getgametypesetting(#"hash_9c266bdf9cad7fa");
            break;
        default:
            break;
        }
    }
    assert(isdefined(respawntime));
    return int(respawntime * 1000);
}

