// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace zm_aoe;

// Namespace zm_aoe
// Method(s) 2 Total 2
class areaofeffect {

    var spawntime;
    var state;
    var var_be1913ae;

    // Namespace areaofeffect/zm_aoe
    // Params 0, eflags: 0xa linked
    // Checksum 0x5139b7bd, Offset: 0x170
    // Size: 0x2a
    constructor() {
        spawntime = gettime();
        state = 0;
        var_be1913ae = gettime() + 100;
    }

}

// Namespace zm_aoe
// Method(s) 2 Total 2
class class_698343df {

    var var_9a08bb02;

    // Namespace class_698343df/zm_aoe
    // Params 0, eflags: 0xa linked
    // Checksum 0x679170c9, Offset: 0x240
    // Size: 0xe
    constructor() {
        var_9a08bb02 = [];
    }

}

// Namespace zm_aoe/zm_aoe
// Params 0, eflags: 0x5
// Checksum 0x8dda802d, Offset: 0x118
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"zm_aoe", &preinit, &postinit, undefined, undefined);
}

// Namespace zm_aoe/zm_aoe
// Params 0, eflags: 0x6 linked
// Checksum 0xf64ba1d4, Offset: 0x2f0
// Size: 0x84
function private preinit() {
    clientfield::register("scriptmover", "aoe_state", 1, getminbitcountfornum(5), "int");
    clientfield::register("scriptmover", "aoe_id", 1, getminbitcountfornum(2), "int");
}

// Namespace zm_aoe/zm_aoe
// Params 0, eflags: 0x6 linked
// Checksum 0x87e598be, Offset: 0x380
// Size: 0x44
function private postinit() {
    function_15dea507(1, "zm_aoe_radiation_hazard", 10, 95000, 5000, 1, 1, 75, 175);
}

// Namespace zm_aoe/zm_aoe
// Params 1, eflags: 0x6 linked
// Checksum 0xf4543642, Offset: 0x3d0
// Size: 0x98
function private function_e969e75(type) {
    assert(isdefined(level.var_400ae143));
    arraykeys = getarraykeys(level.var_400ae143);
    if (isinarray(arraykeys, hash(type))) {
        return level.var_400ae143[hash(type)];
    }
    return undefined;
}

// Namespace zm_aoe/zm_aoe
// Params 9, eflags: 0x2 linked
// Checksum 0x2bf9130d, Offset: 0x470
// Size: 0x1c4
function function_15dea507(aoeid, type, var_3a11a165, lifetime, var_f2cd3aad, damagemin, damagemax, radius, height) {
    if (!isdefined(level.var_400ae143)) {
        level.var_400ae143 = [];
    }
    arraykeys = getarraykeys(level.var_400ae143);
    assert(!isinarray(arraykeys, hash(type)));
    var_508aaded = new class_698343df();
    level.var_400ae143[type] = var_508aaded;
    assert(damagemin <= damagemax, "<unknown string>");
    var_508aaded.type = type;
    var_508aaded.var_3a11a165 = var_3a11a165;
    var_508aaded.lifetime = lifetime;
    var_508aaded.damagemin = damagemin;
    var_508aaded.damagemax = damagemax;
    var_508aaded.var_f2cd3aad = var_f2cd3aad;
    var_508aaded.radius = radius;
    var_508aaded.height = height;
    var_508aaded.aoeid = aoeid;
    level thread function_60bb02f3(type);
    /#
        level thread function_e39c0be4(var_508aaded);
    #/
}

// Namespace zm_aoe/zm_aoe
// Params 6, eflags: 0x0
// Checksum 0x2ea5735b, Offset: 0x640
// Size: 0x1c2
function function_371b4147(aoeid, type, position, userdata, var_fb4d789f, var_6efc944c) {
    var_46f1b5eb = function_e969e75(type);
    assert(isdefined(var_46f1b5eb), "<unknown string>");
    if (var_46f1b5eb.var_9a08bb02.size >= var_46f1b5eb.var_3a11a165) {
        function_2c33d107(type);
    }
    assert(var_46f1b5eb.var_9a08bb02.size < var_46f1b5eb.var_3a11a165);
    aoe = new areaofeffect();
    aoe.position = position;
    aoe.endtime = gettime() + var_46f1b5eb.lifetime;
    aoe.entity = spawn("script_model", position);
    aoe.type = type;
    aoe.entity clientfield::set("aoe_id", aoeid);
    function_668a9b2d(aoe, type);
    if (isdefined(userdata)) {
        aoe.userdata = userdata;
    }
    if (isdefined(var_fb4d789f)) {
        aoe.var_fb4d789f = var_fb4d789f;
    }
    if (isdefined(var_6efc944c)) {
        aoe.var_6efc944c = var_6efc944c;
    }
}

// Namespace zm_aoe/zm_aoe
// Params 2, eflags: 0x6 linked
// Checksum 0x15818f59, Offset: 0x810
// Size: 0xa4
function private function_668a9b2d(aoe, type) {
    var_46f1b5eb = function_e969e75(type);
    assert(isdefined(var_46f1b5eb), "<unknown string>");
    array::add(var_46f1b5eb.var_9a08bb02, aoe);
    assert(var_46f1b5eb.var_9a08bb02.size <= var_46f1b5eb.var_3a11a165);
}

// Namespace zm_aoe/zm_aoe
// Params 1, eflags: 0x6 linked
// Checksum 0x2a062cd9, Offset: 0x8c0
// Size: 0x108
function private function_87bbe4fc(type) {
    var_46f1b5eb = function_e969e75(type);
    assert(isdefined(var_46f1b5eb), "<unknown string>");
    if (var_46f1b5eb.var_9a08bb02.size) {
        oldest = var_46f1b5eb.var_9a08bb02[0];
        foreach (aoe in var_46f1b5eb.var_9a08bb02) {
            if (aoe.spawntime < oldest.spawntime) {
                oldest = aoe;
            }
        }
        return oldest;
    }
}

// Namespace zm_aoe/zm_aoe
// Params 2, eflags: 0x6 linked
// Checksum 0xaf79ebdb, Offset: 0x9d0
// Size: 0x12c
function private function_fa03204a(aoe, type) {
    var_46f1b5eb = function_e969e75(type);
    assert(isinarray(var_46f1b5eb.var_9a08bb02, aoe));
    if (isdefined(aoe.userdata)) {
        if (isdefined(level.var_6efc944c)) {
            [[ level.var_6efc944c ]](aoe);
        }
        if (isdefined(aoe.var_6efc944c)) {
            [[ aoe.var_6efc944c ]](aoe);
        }
    }
    arrayremovevalue(var_46f1b5eb.var_9a08bb02, aoe);
    assert(var_46f1b5eb.var_9a08bb02.size < var_46f1b5eb.var_3a11a165);
    thread function_4f0db8cf(aoe.entity);
}

// Namespace zm_aoe/zm_aoe
// Params 1, eflags: 0x6 linked
// Checksum 0x81d719e6, Offset: 0xb08
// Size: 0x24
function private function_4f0db8cf(entity) {
    waitframe(2);
    entity delete();
}

// Namespace zm_aoe/zm_aoe
// Params 1, eflags: 0x6 linked
// Checksum 0xb4d366c0, Offset: 0xb38
// Size: 0x84
function private function_2c33d107(type) {
    var_46f1b5eb = function_e969e75(type);
    var_528d5f55 = function_87bbe4fc(type);
    function_ccf8f659(var_528d5f55, 1);
    thread function_fa03204a(var_528d5f55, type);
}

// Namespace zm_aoe/zm_aoe
// Params 2, eflags: 0x6 linked
// Checksum 0x9bc9e56b, Offset: 0xbc8
// Size: 0x25a
function private function_ccf8f659(aoe, forceend = 0) {
    var_46f1b5eb = function_e969e75(aoe.type);
    assert(isdefined(var_46f1b5eb));
    if (aoe.state == 5) {
        return;
    }
    if (forceend || is_true(aoe.forceend)) {
        if (aoe.state != 3 && aoe.state != 4) {
            function_97d801ea(aoe, var_46f1b5eb, aoe.var_a0739fc1);
            return;
        }
    }
    if (gettime() < aoe.var_be1913ae) {
        return;
    }
    if (aoe.state == 0) {
        aoe.entity clientfield::set("aoe_state", 1);
        aoe.state = 1;
        aoe.var_be1913ae = gettime() + 100;
        return;
    }
    if (aoe.state == 1) {
        aoe.entity clientfield::set("aoe_state", 2);
        aoe.state = 2;
        aoe.var_be1913ae = aoe.endtime;
        if (isdefined(aoe.var_fb4d789f)) {
            [[ aoe.var_fb4d789f ]](aoe);
        }
        return;
    }
    if (aoe.state == 2) {
        function_97d801ea(aoe, var_46f1b5eb, 0);
        return;
    }
    if (aoe.state == 3 || aoe.state == 4) {
        aoe.entity clientfield::set("aoe_state", 5);
        aoe.state = 5;
    }
}

// Namespace zm_aoe/zm_aoe
// Params 3, eflags: 0x6 linked
// Checksum 0x1f8aed2a, Offset: 0xe30
// Size: 0xe8
function private function_97d801ea(aoe, var_46f1b5eb, *var_a0739fc1) {
    var_46f1b5eb.var_be1913ae = gettime() + var_a0739fc1.var_f2cd3aad;
    if (is_true(var_46f1b5eb.var_a0739fc1)) {
        var_46f1b5eb.entity clientfield::set("aoe_state", 4);
        var_46f1b5eb.state = 4;
        var_46f1b5eb notify(#"hash_16055baf8d7c453a");
        return;
    }
    var_46f1b5eb.entity clientfield::set("aoe_state", 3);
    var_46f1b5eb.state = 3;
    var_46f1b5eb notify(#"hash_3913004963ca6fe4");
}

// Namespace zm_aoe/zm_aoe
// Params 0, eflags: 0x0
// Checksum 0x4ea963dc, Offset: 0xf20
// Size: 0x164
function function_3690781e() {
    foreach (var_eb93f0b0 in level.var_400ae143) {
        if (isarray(var_eb93f0b0.var_9a08bb02)) {
            var_4df07587 = arraycopy(var_eb93f0b0.var_9a08bb02);
            foreach (var_3e8795ff in var_4df07587) {
                function_ccf8f659(var_3e8795ff, 1);
                level thread function_fa03204a(var_3e8795ff, var_3e8795ff.type);
            }
        }
    }
}

// Namespace zm_aoe/zm_aoe
// Params 2, eflags: 0x0
// Checksum 0x2c292e54, Offset: 0x1090
// Size: 0x2e
function function_389bf7bf(aoe, var_a0739fc1) {
    aoe.forceend = 1;
    aoe.var_a0739fc1 = var_a0739fc1;
}

// Namespace zm_aoe/zm_aoe
// Params 1, eflags: 0x6 linked
// Checksum 0x1509c571, Offset: 0x10c8
// Size: 0x190
function private function_e5950b1e(type) {
    var_46f1b5eb = function_e969e75(type);
    assert(isdefined(var_46f1b5eb));
    var_2aad0cec = [];
    foreach (aoe in var_46f1b5eb.var_9a08bb02) {
        function_ccf8f659(aoe);
        if (aoe.state == 5) {
            array::add(var_2aad0cec, aoe, 0);
        }
    }
    foreach (aoe in var_2aad0cec) {
        function_fa03204a(aoe, aoe.type);
    }
}

// Namespace zm_aoe/zm_aoe
// Params 1, eflags: 0x6 linked
// Checksum 0x5e31ce, Offset: 0x1260
// Size: 0x2f0
function private function_bea2e288(type) {
    var_46f1b5eb = function_e969e75(type);
    assert(isdefined(var_46f1b5eb));
    players = getplayers();
    foreach (aoe in var_46f1b5eb.var_9a08bb02) {
        foreach (player in players) {
            assert(isdefined(aoe.entity));
            dist = distance(aoe.entity.origin, player.origin);
            withinrange = dist <= var_46f1b5eb.radius;
            var_c0af03ae = 0;
            if (!withinrange) {
                continue;
            }
            heightdiff = abs(aoe.entity.origin[2] - player.origin[2]);
            if (heightdiff <= var_46f1b5eb.height) {
                var_c0af03ae = 1;
            }
            if (withinrange && var_c0af03ae) {
                damage = mapfloat(0, var_46f1b5eb.radius, var_46f1b5eb.damagemin, var_46f1b5eb.damagemax, dist);
                player dodamage(damage, aoe.entity.origin);
                player notify(#"aoe_damage", {#var_159100b7:aoe.type, #origin:aoe.entity.origin});
            }
        }
    }
}

// Namespace zm_aoe/zm_aoe
// Params 1, eflags: 0x6 linked
// Checksum 0x16bbd6e3, Offset: 0x1558
// Size: 0xa6
function private function_60bb02f3(type) {
    var_46f1b5eb = function_e969e75(type);
    assert(isdefined(var_46f1b5eb));
    while (true) {
        if (!var_46f1b5eb.var_9a08bb02.size) {
            waitframe(1);
            continue;
        }
        function_e5950b1e(type);
        function_bea2e288(type);
        waitframe(1);
    }
}

/#

    // Namespace zm_aoe/zm_aoe
    // Params 1, eflags: 0x4
    // Checksum 0xd6bc24d1, Offset: 0x1608
    // Size: 0x2a6
    function private function_e39c0be4(var_46f1b5eb) {
        var_46f1b5eb endon(#"hash_343e166e4aa4288e");
        while (true) {
            if (getdvarint(#"zm_debug_aoe", 0)) {
                if (var_46f1b5eb.var_9a08bb02.size) {
                    var_87bbe4fc = function_87bbe4fc(var_46f1b5eb.type);
                    i = 0;
                    foreach (aoe in var_46f1b5eb.var_9a08bb02) {
                        circle(aoe.position, var_46f1b5eb.radius, (1, 0.5, 0), 1, 1);
                        circle(aoe.position + (0, 0, var_46f1b5eb.height), var_46f1b5eb.radius, (1, 0.5, 0), 1, 1);
                        line(aoe.position, aoe.position + (0, 0, var_46f1b5eb.height), (1, 0.5, 0));
                        if (aoe == var_87bbe4fc) {
                            print3d(aoe.position + (0, 0, var_46f1b5eb.height + 5), "<unknown string>" + var_46f1b5eb.type + "<unknown string>" + i + "<unknown string>", (1, 0, 0));
                        } else {
                            print3d(aoe.position + (0, 0, var_46f1b5eb.height + 5), "<unknown string>" + var_46f1b5eb.type + "<unknown string>" + i + "<unknown string>", (1, 0.5, 0));
                        }
                        i++;
                    }
                }
            }
            waitframe(1);
        }
    }

#/
