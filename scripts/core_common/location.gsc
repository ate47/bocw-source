// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace location;

// Namespace location/location
// Params 0, eflags: 0x5
// Checksum 0x69964807, Offset: 0xa8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"location", &preinit, undefined, undefined, undefined);
}

// Namespace location/location
// Params 0, eflags: 0x6 linked
// Checksum 0xcf75d6e0, Offset: 0xf0
// Size: 0x24
function private preinit() {
    level.locations = [];
    function_d1b7504e();
}

// Namespace location/location
// Params 0, eflags: 0x2 linked
// Checksum 0xcedabe75, Offset: 0x120
// Size: 0x10c
function function_d1b7504e() {
    var_74fed7b1 = struct::get_array("map_location");
    foreach (var_d02f65ef in var_74fed7b1) {
        if (!isdefined(level.location)) {
            level.location = [];
        } else if (!isarray(level.location)) {
            level.location = array(level.location);
        }
        level.location[level.location.size] = var_d02f65ef;
    }
}

// Namespace location/location
// Params 4, eflags: 0x2 linked
// Checksum 0x845717ad, Offset: 0x238
// Size: 0xfc
function function_18dac968(origin, height, width, radius) {
    location = {#origin:origin, #height:height, #width:width, #radius:radius};
    if (!isdefined(level.location)) {
        level.location = [];
    } else if (!isarray(level.location)) {
        level.location = array(level.location);
    }
    level.location[level.location.size] = location;
    return location;
}

// Namespace location/location
// Params 0, eflags: 0x2 linked
// Checksum 0x57028c90, Offset: 0x340
// Size: 0x1a
function function_2e7ce8a0() {
    return array::random(level.location);
}

// Namespace location/location
// Params 1, eflags: 0x0
// Checksum 0x393346dc, Offset: 0x368
// Size: 0x108
function function_98eed213(location) {
    xoffset = 0;
    yoffset = 0;
    if (location.width > 0) {
        halfwidth = location.width / 2;
        xoffset = randomfloatrange(halfwidth * -1, halfwidth);
    }
    if (location.height > 0) {
        halfheight = location.height / 2;
        yoffset = randomfloatrange(halfheight * -1, halfheight);
    }
    origin = (location.origin[0] + xoffset, location.origin[1] + yoffset, location.origin[2]);
    return origin;
}

