// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_a208feb2;

// Namespace namespace_a208feb2/namespace_a208feb2
// Params 0, eflags: 0x1
// Checksum 0xd50da659, Offset: 0xc8
// Size: 0xb4
function autoexec __init__() {
    var_c34e1dc2 = strtok("war12v12", " ");
    gametype = util::get_game_type();
    if (!isinarray(var_c34e1dc2, gametype) || !getdvarint(#"hash_360035890f73b515", 0)) {
        return;
    }
    callback::on_spawned(&on_spawned);
}

// Namespace namespace_a208feb2/gametype_start
// Params 1, eflags: 0x20
// Checksum 0x4cb9740b, Offset: 0x188
// Size: 0xcc
function event_handler[gametype_start] main(*eventstruct) {
    var_c34e1dc2 = strtok("war12v12", " ");
    gametype = util::get_game_type();
    if (!isinarray(var_c34e1dc2, gametype) || !getdvarint(#"hash_360035890f73b515", 0)) {
        array::delete_all(getentarray("vehicle_oob", "targetname"));
    }
}

// Namespace namespace_a208feb2/namespace_a208feb2
// Params 0, eflags: 0x2 linked
// Checksum 0xcaa26ddf, Offset: 0x260
// Size: 0xd8
function on_spawned() {
    player = self;
    if (!isdefined(player.var_c41d6d5b)) {
        player.var_c41d6d5b = getentarray("vehicle_oob", "targetname");
    }
    foreach (var_3e5f1d0f in player.var_c41d6d5b) {
        var_3e5f1d0f setinvisibletoplayer(player, 1);
    }
}

// Namespace namespace_a208feb2/enter_vehicle
// Params 1, eflags: 0x20
// Checksum 0xdfbff9f6, Offset: 0x340
// Size: 0x168
function event_handler[enter_vehicle] codecallback_vehicleenter(eventstruct) {
    vehicle = eventstruct.vehicle;
    player = self;
    if (!isvehicle(vehicle)) {
        vehicle = self;
        player = eventstruct.player;
    }
    if (!isalive(player) || !isalive(vehicle) || vehicle.vehicletype !== #"hash_2c0e11a1e87bbcd5") {
        return;
    }
    if (!isdefined(player.var_c41d6d5b)) {
        player.var_c41d6d5b = getentarray("vehicle_oob", "targetname");
    }
    foreach (var_3e5f1d0f in player.var_c41d6d5b) {
        var_3e5f1d0f setinvisibletoplayer(player, 0);
    }
}

// Namespace namespace_a208feb2/exit_vehicle
// Params 1, eflags: 0x20
// Checksum 0x26340df, Offset: 0x4b0
// Size: 0x150
function event_handler[exit_vehicle] codecallback_vehicleexit(eventstruct) {
    vehicle = eventstruct.vehicle;
    player = self;
    if (!isvehicle(vehicle)) {
        vehicle = self;
        player = eventstruct.player;
    }
    if (!isalive(player) || !isalive(vehicle)) {
        return;
    }
    if (!isdefined(player.var_c41d6d5b)) {
        player.var_c41d6d5b = getentarray("vehicle_oob", "targetname");
    }
    foreach (var_3e5f1d0f in player.var_c41d6d5b) {
        var_3e5f1d0f setinvisibletoplayer(player, 1);
    }
}

