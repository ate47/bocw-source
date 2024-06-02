// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\territory.gsc;
#using scripts\core_common\match_record.gsc;

#namespace compass;

// Namespace compass/compass
// Params 2, eflags: 0x2 linked
// Checksum 0xa6a93201, Offset: 0x100
// Size: 0x14c
function setupminimap(material, *zone = "") {
    requiredmapaspectratio = getdvarfloat(#"scr_requiredmapaspectratio", 0);
    corners = territory::function_1f583d2e("minimap_corner", "targetname");
    if (corners.size == 0) {
        corners = territory::function_1deaf019("minimap_corner", "targetname", "");
    }
    if (corners.size != 2) {
        println("<unknown string>");
        return;
    }
    function_d6cba2e9(zone, corners[0].origin[0], corners[0].origin[1], corners[1].origin[0], corners[1].origin[1]);
}

// Namespace compass/compass
// Params 5, eflags: 0x2 linked
// Checksum 0xc8f4fa3, Offset: 0x258
// Size: 0x33c
function function_d6cba2e9(material = "", var_56a8cb79, var_47612cea, var_49fcbf2c, var_9815db69) {
    corner0 = (var_56a8cb79, var_47612cea, 0);
    corner1 = (var_49fcbf2c, var_9815db69, 0);
    if (!isplayer(self)) {
        match_record::function_7a93acec("compass_map_upper_left", corner0);
        match_record::function_7a93acec("compass_map_lower_right", corner1);
    }
    cornerdiff = corner1 - corner0;
    north = (cos(getnorthyaw()), sin(getnorthyaw()), 0);
    west = (0 - north[1], north[0], 0);
    if (vectordot(cornerdiff, west) > 0) {
        if (vectordot(cornerdiff, north) > 0) {
            northwest = corner1;
            southeast = corner0;
        } else {
            side = vecscale(north, vectordot(cornerdiff, north));
            northwest = corner1 - side;
            southeast = corner0 + side;
        }
    } else if (vectordot(cornerdiff, north) > 0) {
        side = vecscale(north, vectordot(cornerdiff, north));
        northwest = corner0 + side;
        southeast = corner1 - side;
    } else {
        northwest = corner0;
        southeast = corner1;
    }
    if (isplayer(self)) {
        self function_fbb89d0b(material, northwest[0], northwest[1], southeast[0], southeast[1]);
        self function_813fd4e7(northwest[0], northwest[1], southeast[0], southeast[1]);
        return;
    }
    setminimap(material, northwest[0], northwest[1], southeast[0], southeast[1]);
    setminimapzone(northwest[0], northwest[1], southeast[0], southeast[1]);
}

// Namespace compass/compass
// Params 1, eflags: 0x0
// Checksum 0x4ef8d1c1, Offset: 0x5a0
// Size: 0x2b4
function setupminimapzone(zone) {
    corners = getentarray("zone_0" + zone + "_corner", "targetname");
    if (corners.size != 2) {
        println("<unknown string>");
        return;
    }
    corner0 = (corners[0].origin[0], corners[0].origin[1], 0);
    corner1 = (corners[1].origin[0], corners[1].origin[1], 0);
    cornerdiff = corner1 - corner0;
    north = (cos(getnorthyaw()), sin(getnorthyaw()), 0);
    west = (0 - north[1], north[0], 0);
    if (vectordot(cornerdiff, west) > 0) {
        if (vectordot(cornerdiff, north) > 0) {
            northwest = corner1;
            southeast = corner0;
        } else {
            side = vecscale(north, vectordot(cornerdiff, north));
            northwest = corner1 - side;
            southeast = corner0 + side;
        }
    } else if (vectordot(cornerdiff, north) > 0) {
        side = vecscale(north, vectordot(cornerdiff, north));
        northwest = corner0 + side;
        southeast = corner1 - side;
    } else {
        northwest = corner0;
        southeast = corner1;
    }
    setminimapzone(northwest[0], northwest[1], southeast[0], southeast[1]);
}

// Namespace compass/compass
// Params 2, eflags: 0x2 linked
// Checksum 0xe353b544, Offset: 0x860
// Size: 0x3e
function vecscale(vec, scalar) {
    return (vec[0] * scalar, vec[1] * scalar, vec[2] * scalar);
}

