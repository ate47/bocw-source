// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\territory_util.gsc;
#using scripts\core_common\oob.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\hud_shared.gsc;

#namespace oob;

// Namespace oob/oob
// Params 0, eflags: 0x2 linked
// Checksum 0x7b663a09, Offset: 0xc0
// Size: 0x1c
function init() {
    level.var_bde3d03 = &function_b777ff94;
}

// Namespace oob/oob
// Params 0, eflags: 0x6 linked
// Checksum 0x728f889d, Offset: 0xe8
// Size: 0x90
function private function_3c597e8d() {
    if (territory::function_c0de0601()) {
        return territory::get_center();
    }
    var_6024133d = getentarray("map_corner", "targetname");
    if (var_6024133d.size) {
        return math::find_box_center(var_6024133d[0].origin, var_6024133d[1].origin);
    }
    return (0, 0, 0);
}

// Namespace oob/oob
// Params 1, eflags: 0x6 linked
// Checksum 0xfb5b3649, Offset: 0x180
// Size: 0x12a
function private function_2a3d483d(start) {
    mapcenter = function_3c597e8d();
    jumpdistance = 600;
    tomapcenter = mapcenter - start;
    var_d80c8cde = length(tomapcenter);
    var_fa57b4b3 = vectornormalize(tomapcenter);
    steps = int(var_d80c8cde / jumpdistance);
    for (index = 1; index <= steps; index++) {
        newpoint = start + var_fa57b4b3 * index * jumpdistance;
        if (!chr_party(newpoint) && territory::is_inside(newpoint)) {
            return newpoint;
        }
    }
    return mapcenter;
}

// Namespace oob/oob
// Params 1, eflags: 0x6 linked
// Checksum 0x53294c62, Offset: 0x2b8
// Size: 0x10e
function private function_c1471c7c(point) {
    startpoint = (point[0], point[1], 10000);
    endpoint = (point[0], point[1], -10000);
    groundtrace = groundtrace(startpoint, endpoint, 0, undefined, 0, 0);
    physicstrace = physicstraceex(startpoint, endpoint, (-0.5, -0.5, -0.5), (0.5, 0.5, 0.5), undefined, 32);
    if (groundtrace[#"position"][2] > physicstrace[#"position"][2]) {
        return groundtrace[#"position"];
    }
    return physicstrace[#"position"];
}

// Namespace oob/oob
// Params 3, eflags: 0x6 linked
// Checksum 0x7addff82, Offset: 0x3d0
// Size: 0xfa
function private _teleport_player(origin, angles, *var_9914886a) {
    self endon(#"disconnect", #"insertion_starting");
    self.oobdisabled = 1;
    fadetime = 0.5;
    self thread hud::fade_to_black_for_x_sec(0, 1, fadetime, fadetime);
    wait(fadetime);
    self.var_63b63c2 = 1;
    self unlink();
    self setorigin(angles);
    self setplayerangles((0, var_9914886a[1], 0));
    self.oobdisabled = 0;
    self.var_63b63c2 = 0;
}

// Namespace oob/oob
// Params 1, eflags: 0x2 linked
// Checksum 0xcbeaddb, Offset: 0x4d8
// Size: 0x28c
function function_b777ff94(entity) {
    /#
        iprintlnbold("<unknown string>" + entity.origin[0] + "<unknown string>" + entity.origin[1] + "<unknown string>" + entity.origin[2] + "<unknown string>");
    #/
    if (!isdefined(entity)) {
        return;
    }
    players = [];
    var_9914886a = 0;
    if (isplayer(entity) && entity isinvehicle()) {
        vehicle = entity getvehicleoccupied();
        players = vehicle getvehoccupants();
        if (isdefined(vehicle.scriptvehicletype) && vehicle.scriptvehicletype == #"tactical_raft_wz") {
            var_9914886a = 1;
        }
    } else {
        players[players.size] = entity;
    }
    playeroffset = (0, 120, 0);
    mapcenter = function_3c597e8d();
    for (index = 0; index < players.size; index++) {
        player = players[index];
        startpoint = player.origin + playeroffset * index;
        validpoint = function_2a3d483d(startpoint);
        validpoint = function_c1471c7c(validpoint);
        toangles = vectortoangles(mapcenter - player.origin);
        if (!isplayer(player)) {
            player dodamage(player.health, player.origin);
            continue;
        }
        player thread _teleport_player(validpoint, toangles, var_9914886a);
    }
}

// Namespace oob/oob
// Params 1, eflags: 0x0
// Checksum 0xd96a703b, Offset: 0x770
// Size: 0x4a
function function_cabed683(startpoint) {
    validpoint = function_2a3d483d(startpoint);
    validpoint = function_c1471c7c(validpoint);
    return validpoint;
}

