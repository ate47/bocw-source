// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_ee630e04;

// Namespace namespace_ee630e04
// Method(s) 7 Total 14
class class_c3742963 : cluielem {

    var var_bf9c8c95;
    var var_d5213cbb;

    // Namespace namespace_c3742963/namespace_ee630e04
    // Params 2, eflags: 0x0
    // Checksum 0x8eecb15, Offset: 0x5b0
    // Size: 0x3c
    function open(player, flags = 0) {
        cluielem::open_luielem(player, flags);
    }

    // Namespace namespace_c3742963/namespace_ee630e04
    // Params 1, eflags: 0x0
    // Checksum 0xbac7af83, Offset: 0x5f8
    // Size: 0x24
    function close(player) {
        cluielem::close_luielem(player);
    }

    // Namespace namespace_c3742963/namespace_ee630e04
    // Params 0, eflags: 0x0
    // Checksum 0xf7a57be7, Offset: 0x538
    // Size: 0x6c
    function setup_clientfields() {
        cluielem::setup_clientfields("consequences_notification");
        cluielem::add_clientfield("visible", 1, 1, "int");
        cluielem::add_clientfield("content_index", 1, 4, "int");
    }

    // Namespace namespace_c3742963/namespace_ee630e04
    // Params 2, eflags: 0x0
    // Checksum 0xa5ce69b1, Offset: 0x678
    // Size: 0x44
    function function_afdd9f65(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "content_index", value);
    }

    // Namespace namespace_c3742963/namespace_ee630e04
    // Params 2, eflags: 0x0
    // Checksum 0x146b6c8c, Offset: 0x628
    // Size: 0x44
    function set_visible(player, value) {
        player clientfield::function_9bf78ef8(var_d5213cbb, var_bf9c8c95, "visible", value);
    }

}

// Namespace namespace_ee630e04/namespace_ee630e04
// Params 2, eflags: 0x0
// Checksum 0xb108b3b9, Offset: 0x100
// Size: 0x64
function function_aa7a37a1(player, index) {
    if (![[ self ]]->function_7bfd10e6(player)) {
        [[ self ]]->open(player);
    }
    [[ self ]]->function_afdd9f65(player, index);
    [[ self ]]->set_visible(player, 1);
}

// Namespace namespace_ee630e04/namespace_ee630e04
// Params 2, eflags: 0x0
// Checksum 0x5c88224, Offset: 0x170
// Size: 0x88
function function_78a5981a(player, ref) {
    if (![[ self ]]->function_7bfd10e6(player)) {
        [[ self ]]->open(player);
    }
    var_445570c4 = [[ self ]]->function_cd2efd2d(player, ref);
    if (var_445570c4) {
        [[ self ]]->set_visible(player, 1);
        return;
    }
    [[ self ]]->close(player);
}

// Namespace namespace_ee630e04/namespace_ee630e04
// Params 1, eflags: 0x0
// Checksum 0xb0bf5a9d, Offset: 0x200
// Size: 0x44
function function_d27ad9da(player) {
    if ([[ self ]]->function_7bfd10e6(player)) {
        [[ self ]]->set_visible(player, 0);
        [[ self ]]->close(player);
    }
}

// Namespace namespace_ee630e04/namespace_ee630e04
// Params 2, eflags: 0x0
// Checksum 0xbba53bc9, Offset: 0x250
// Size: 0x10c
function function_cd2efd2d(player, ref) {
    field = getmapfields();
    if (isdefined(field) && isdefined(field.var_2f3c2756)) {
        index = 0;
        var_b7c59076 = getscriptbundlelist(field.var_2f3c2756);
        foreach (var_773e2a17 in var_b7c59076) {
            if (var_773e2a17 == ref) {
                [[ self ]]->function_afdd9f65(player, index);
                return true;
            }
            index++;
        }
    }
    return false;
}

// Namespace namespace_ee630e04/namespace_ee630e04
// Params 1, eflags: 0x0
// Checksum 0x20ee0bcc, Offset: 0x368
// Size: 0x78
function function_d9ee11d6(*player) {
    field = getmapfields();
    if (isdefined(field) && isdefined(field.var_2f3c2756)) {
        var_b7c59076 = getscriptbundlelist(field.var_2f3c2756);
        if (isdefined(var_b7c59076)) {
            return var_b7c59076.size;
        }
    }
    return undefined;
}

// Namespace namespace_ee630e04/namespace_ee630e04
// Params 0, eflags: 0x0
// Checksum 0xb18cb62, Offset: 0x3e8
// Size: 0x34
function register() {
    elem = new class_c3742963();
    [[ elem ]]->setup_clientfields();
    return elem;
}

// Namespace namespace_ee630e04/namespace_ee630e04
// Params 2, eflags: 0x0
// Checksum 0x17f07eba, Offset: 0x428
// Size: 0x38
function open(player, flags = 0) {
    [[ self ]]->open(player, flags);
}

// Namespace namespace_ee630e04/namespace_ee630e04
// Params 1, eflags: 0x0
// Checksum 0xda82b3c6, Offset: 0x468
// Size: 0x1c
function close(player) {
    [[ self ]]->close(player);
}

// Namespace namespace_ee630e04/namespace_ee630e04
// Params 1, eflags: 0x0
// Checksum 0x5eff225d, Offset: 0x490
// Size: 0x1a
function is_open(player) {
    return [[ self ]]->function_7bfd10e6(player);
}

// Namespace namespace_ee630e04/namespace_ee630e04
// Params 2, eflags: 0x0
// Checksum 0x93556e5d, Offset: 0x4b8
// Size: 0x28
function set_visible(player, value) {
    [[ self ]]->set_visible(player, value);
}

// Namespace namespace_ee630e04/namespace_ee630e04
// Params 2, eflags: 0x0
// Checksum 0xa02c802, Offset: 0x4e8
// Size: 0x28
function function_afdd9f65(player, value) {
    [[ self ]]->function_afdd9f65(player, value);
}

