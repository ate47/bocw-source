// Atian COD Tools GSC CW decompiler test
#namespace namespace_bf7415ae;

// Namespace namespace_bf7415ae/airsupport
// Params 5, eflags: 0x2 linked
// Checksum 0x48e3b4d4, Offset: 0x80
// Size: 0xd8
function function_fc85e1a(killstreaktype, var_68f473e3, var_5be6ed28, var_56d8a98d, var_d8860ecf) {
    var_512049f7 = {};
    if (!isdefined(var_512049f7.markers)) {
        var_512049f7.markers = [];
    } else if (!isarray(var_512049f7.markers)) {
        var_512049f7.markers = array(var_512049f7.markers);
    }
    var_512049f7.var_bcc0d9a6 = var_68f473e3;
    var_512049f7.var_20549f15 = var_5be6ed28;
    var_512049f7.var_d19a1a47 = var_56d8a98d;
    var_512049f7.var_51d53d4d = var_d8860ecf;
    level.var_872c2ff[killstreaktype] = var_512049f7;
}

// Namespace namespace_bf7415ae/airsupport
// Params 3, eflags: 0x2 linked
// Checksum 0xf1c80554, Offset: 0x160
// Size: 0xe4
function function_9cb260fd(localclientnum, killstreaktype, marker) {
    var_512049f7 = level.var_872c2ff[killstreaktype];
    if (!isdefined(var_512049f7)) {
        return false;
    }
    for (i = 0; i < 4; i++) {
        if (!isdefined(var_512049f7.markers[i])) {
            if (var_512049f7.markers.size == 0) {
                level [[ var_512049f7.var_bcc0d9a6 ]](localclientnum);
            }
            marker.var_595cc3a1 = i;
            var_512049f7.markers[i] = marker;
            level [[ var_512049f7.var_d19a1a47 ]](localclientnum, marker);
            return true;
        }
    }
    return false;
}

// Namespace namespace_bf7415ae/airsupport
// Params 3, eflags: 0x2 linked
// Checksum 0x87d566cc, Offset: 0x250
// Size: 0xb8
function function_f06fadf2(localclientnum, killstreaktype, marker) {
    var_512049f7 = level.var_872c2ff[killstreaktype];
    if (!isdefined(var_512049f7) || !isdefined(marker.var_595cc3a1)) {
        return;
    }
    level [[ var_512049f7.var_51d53d4d ]](localclientnum, marker);
    var_512049f7.markers[marker.var_595cc3a1] = undefined;
    marker.var_595cc3a1 = undefined;
    if (var_512049f7.markers.size == 0) {
        level [[ var_512049f7.var_20549f15 ]](localclientnum);
    }
}

