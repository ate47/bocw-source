// Atian COD Tools GSC CW decompiler test
#using script_7b1cd3908a825fdd;
#using script_4474799e52e84c59;
#using script_55d1d06aecbed9d9;
#using script_7d7ac1f663edcdc8;
#using scripts\zm_common\zm_utility.gsc;
#using script_1029986e2bc8ca8e;
#using script_5a525a75a8f1f7e4;
#using scripts\zm_common\zm_wallbuy.gsc;
#using scripts\zm_common\zm_magicbox.gsc;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\flag_shared.gsc;
#using script_7fc996fe8678852;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace zm_destination_manager;

// Namespace zm_destination_manager/zm_destination_manager
// Params 0, eflags: 0x5
// Checksum 0x42d7749c, Offset: 0x150
// Size: 0x54
function private autoexec __init__system__() {
    system::register(#"zm_destination_manager", &function_70a657d8, undefined, &function_5700f119, #"hash_f81b9dea74f0ee");
}

// Namespace zm_destination_manager/zm_destination_manager
// Params 0, eflags: 0x6 linked
// Checksum 0x4350b4b3, Offset: 0x1b0
// Size: 0x46
function private function_70a657d8() {
    level.var_7d45d0d4.var_70a657d8 = 0;
    level flag::init(#"hash_3c2081a03635c78", 0);
    level.var_7de6c9f = undefined;
}

// Namespace zm_destination_manager/zm_destination_manager
// Params 0, eflags: 0x6 linked
// Checksum 0x257420ce, Offset: 0x200
// Size: 0x2c
function private function_5700f119() {
    if (!zm_utility::function_c200446c()) {
        level thread function_1975f7db();
    }
}

// Namespace zm_destination_manager/zm_destination_manager
// Params 1, eflags: 0x2 linked
// Checksum 0x2c4024c5, Offset: 0x238
// Size: 0x7a
function function_123b048f(var_8a952bed) {
    /#
        assert(isdefined(var_8a952bed), "<unknown string>");
    #/
    /#
        assert(var_8a952bed.variantname == #"hash_313be7fccc870cdd", "<unknown string>");
    #/
    level.var_7d45d0d4.var_5f2429b1 = var_8a952bed;
}

// Namespace zm_destination_manager/zm_destination_manager
// Params 0, eflags: 0x2 linked
// Checksum 0xbed0a082, Offset: 0x2c0
// Size: 0x16
function function_2e165386() {
    return level.var_7d45d0d4.var_d60029a6;
}

// Namespace zm_destination_manager/zm_destination_manager
// Params 1, eflags: 0x2 linked
// Checksum 0x70fc6c9f, Offset: 0x2e0
// Size: 0x242
function function_f3be07d7(destination) {
    if (isdefined(level.var_490ade6)) {
        namespace_f3a74bbc::function_b06af8e3(destination, 1, level.var_490ade6, level.var_c73744cc);
    } else if (!isdefined(level.var_7d45d0d4.var_90d90456)) {
        namespace_f3a74bbc::function_a8ad6895(destination);
    }
    var_9200b8df = level.var_7d45d0d4.var_90d90456.spawn_list;
    if (isdefined(var_9200b8df)) {
        var_5f03e419 = strtok(var_9200b8df, ",");
        if (level.var_b48509f9 === 1 && var_5f03e419.size > 1 && util::get_map_name() === "mp_black_sea") {
            arrayremovevalue(var_5f03e419, "3");
        }
        var_f281f968 = array::random(var_5f03e419);
        var_58b02068 = function_e4254bac(destination, var_f281f968);
    }
    /#
        var_f281f968 = getdvarint(#"hash_445bd141a460ff3a", 0);
        if (var_f281f968) {
            var_58b02068 = function_e4254bac(destination, var_f281f968);
        }
    #/
    if (!isdefined(var_58b02068)) {
        var_58b02068 = namespace_8b6a9d79::function_31e8da78(destination, #"start_spawn");
    }
    level.var_7d45d0d4.var_994ca8b9 = var_58b02068;
    level flag::set(#"hash_10679ff0bf4d6c8d");
    var_842cdacd = namespace_8b6a9d79::function_f703a5a(var_58b02068);
    return array::randomize(var_842cdacd);
}

// Namespace zm_destination_manager/zm_destination_manager
// Params 2, eflags: 0x2 linked
// Checksum 0x60e7d8a7, Offset: 0x530
// Size: 0x1fc
function function_e4254bac(destination, var_f281f968) {
    locations = array::randomize(namespace_8b6a9d79::function_f703a5a(destination));
    for (i = 0; i < locations.size; i++) {
        if (locations[i].variantname !== #"hash_4807866fcc400c90") {
            arrayremoveindex(locations, i, 1);
        }
    }
    arrayremovevalue(locations, undefined);
    foreach (location in locations) {
        instances = array::randomize(namespace_8b6a9d79::function_f703a5a(location));
        foreach (instance in instances) {
            if (instance.content_script_name === #"start_spawn" && instance.script_int === var_f281f968) {
                return instance;
            }
        }
    }
}

// Namespace zm_destination_manager/zm_destination_manager
// Params 0, eflags: 0x6 linked
// Checksum 0x2563c6a8, Offset: 0x738
// Size: 0x114
function private function_6f9efb66() {
    var_4f146e5d = [];
    var_910d7951 = level.var_7d45d0d4.destinations;
    var_4f146e5d = [];
    foreach (var_8a952bed in var_910d7951) {
        if (is_true(var_8a952bed.var_8d629117)) {
            continue;
        }
        var_4f146e5d = function_f3be07d7(var_8a952bed);
        if (var_4f146e5d.size) {
            var_9b06d3e2 = var_8a952bed.targetname;
            break;
        }
    }
    if (isdefined(var_8a952bed)) {
        function_123b048f(var_8a952bed);
    }
}

// Namespace zm_destination_manager/zm_destination_manager
// Params 0, eflags: 0x6 linked
// Checksum 0x9589f4b6, Offset: 0x858
// Size: 0x3cc
function private function_1975f7db() {
    destinations = [];
    categories = [];
    namespace_f3a74bbc::function_ef3a1d04(destinations, categories);
    namespace_f3a74bbc::function_c700a68b(categories);
    callback::callback(#"hash_276921163232533");
    var_4191df0e = getdvarint(#"hash_688e3b3254c8a895", 0);
    if (!var_4191df0e) {
        function_6f9efb66();
    }
    if (isdefined(level.var_7d45d0d4.var_64a75da7)) {
        [[ level.var_7d45d0d4.var_64a75da7 ]]();
    }
    /#
        if (getdvarint(#"hash_33b0be96bf3cd69a", 0)) {
            return;
        }
    #/
    if (!isdefined(level.var_7d45d0d4.var_d60029a6)) {
        var_92a668db = getdvarint(#"hash_6c0d94ade91b07a8", 0);
        if (!var_92a668db || var_92a668db > level.var_7d45d0d4.destinations.size) {
            var_92a668db = level.var_7d45d0d4.destinations.size;
        }
        var_a3c51b07[0] = level.var_7d45d0d4.var_5f2429b1;
        arrayremovevalue(destinations, var_a3c51b07[0]);
        for (i = 1; i < var_92a668db; i++) {
            var_918869fb = var_a3c51b07[i - 1].var_d0d3add6;
            if (!isdefined(var_918869fb)) {
                var_918869fb = arraycopy(destinations);
            }
            while (destinations.size && var_918869fb.size) {
                var_c0335359 = array::random(var_918869fb);
                if (!isdefined(var_c0335359.var_e859e591) || !var_c0335359.var_e859e591.size || isinarray(var_a3c51b07, var_c0335359)) {
                    arrayremovevalue(var_918869fb, var_c0335359);
                    continue;
                } else {
                    break;
                }
            }
            if (!destinations.size) {
                break;
            }
            arrayremovevalue(destinations, var_c0335359);
            var_a3c51b07[i] = var_c0335359;
        }
        var_6067a19c = var_a3c51b07[i - 1];
        if (isdefined(var_6067a19c.var_e859e591[#"hash_401d37614277df42"])) {
            var_6067a19c.var_473c9869 = 1;
        }
        level.var_7d45d0d4.var_d60029a6 = var_a3c51b07;
        if (var_4191df0e) {
            function_6f9efb66();
        }
    }
    level thread function_786a9f4d(level.var_7d45d0d4.var_d60029a6);
    level flag::set(#"hash_7ace2c0d668c5128");
}

// Namespace zm_destination_manager/zm_destination_manager
// Params 1, eflags: 0x2 linked
// Checksum 0xb5fa4d2f, Offset: 0xc30
// Size: 0x38e
function function_786a9f4d(destinations) {
    level endon(#"game_ended");
    level.var_7d45d0d4.var_46849b1b = 0;
    while (destinations.size) {
        foreach (destination in destinations) {
            level thread activate(destination);
            s_result = undefined;
            s_result = level waittill(#"objective_ended");
            if (s_result.completed === 0) {
                if (isdefined(level.var_7d45d0d4.var_4824f1b9) && [[ level.var_7d45d0d4.var_4824f1b9 ]]()) {
                    return;
                }
            } else {
                level callback::callback(#"hash_4ce318cfe14b54e7");
            }
            if (isdefined(level.var_7d45d0d4.var_314d6e9b)) {
                [[ level.var_7d45d0d4.var_314d6e9b ]](destination);
            }
            level thread namespace_591b4396::function_7c05a985(destination);
            level.var_7d45d0d4.var_46849b1b++;
            if (level.var_7d45d0d4.var_46849b1b >= destinations.size) {
                level.var_7d45d0d4.var_46849b1b = 0;
            }
            level waittill(#"hash_345e9169ebba28fb");
            level callback::callback(#"hash_345e9169ebba28fb");
            locations = destination.locations;
            foreach (location in locations) {
                foreach (instance in location.instances) {
                    instance callback::callback(#"hash_345e9169ebba28fb");
                }
            }
            level callback::callback(#"hash_1c1f524243c91729");
            deactivate(destination);
            function_dafa6af4(destination);
            return;
        }
    }
}

// Namespace zm_destination_manager/zm_destination_manager
// Params 1, eflags: 0x2 linked
// Checksum 0x4145abbc, Offset: 0xfc8
// Size: 0x614
function function_dafa6af4(*destination) {
    /#
        if (!isdefined(level.var_3d1ef3ae) && isstring(getdvar(#"hash_2f8775fbdde23a15"))) {
            level.var_3d1ef3ae = getdvar(#"hash_2f8775fbdde23a15");
        }
    #/
    if (level.var_7d45d0d4.var_dc858a58.list[level.var_7d45d0d4.var_dc858a58.index] === level.script) {
        var_d4714efb = level.var_7d45d0d4.var_dc858a58.index;
        level.var_7d45d0d4.var_dc858a58.index = (level.var_7d45d0d4.var_dc858a58.index + 1) % level.var_7d45d0d4.var_dc858a58.list.size;
        if (level.var_7d45d0d4.var_dc858a58.index < var_d4714efb) {
            level.var_7d45d0d4.var_dc858a58.list = array::randomize(level.var_7d45d0d4.var_dc858a58.list);
            while (level.var_7d45d0d4.var_dc858a58.list[0] === level.script) {
                level.var_7d45d0d4.var_dc858a58.list = array::randomize(level.var_7d45d0d4.var_dc858a58.list);
            }
        }
    }
    if (isdefined(level.var_c73744cc)) {
        level.var_7d45d0d4.var_9614b1d2[level.var_490ade6].index = (level.var_7d45d0d4.var_9614b1d2[level.var_490ade6].index + 1) % level.var_7d45d0d4.var_9614b1d2[level.var_490ade6].list.size;
    }
    var_bed9ce19 = level.var_7d45d0d4.var_407236bf.list[level.var_7d45d0d4.var_407236bf.index];
    if (!level.var_7d45d0d4.var_691808e8.size) {
        var_d4714efb = level.var_7d45d0d4.var_407236bf.index;
        level.var_7d45d0d4.var_407236bf.index = (level.var_7d45d0d4.var_407236bf.index + 1) % level.var_7d45d0d4.var_407236bf.list.size;
        if (level.var_7d45d0d4.var_407236bf.index < var_d4714efb) {
            level.var_7d45d0d4.var_407236bf.list = array::randomize(level.var_7d45d0d4.var_407236bf.list);
            while (level.var_7d45d0d4.var_407236bf.list[0] === var_bed9ce19) {
                level.var_7d45d0d4.var_407236bf.list = array::randomize(level.var_7d45d0d4.var_407236bf.list);
            }
        }
    } else {
        var_691808e8 = array::randomize(level.var_7d45d0d4.var_691808e8);
        foreach (objective in var_691808e8) {
            arrayremovevalue(level.var_7d45d0d4.var_407236bf.list, objective);
        }
        level.var_7d45d0d4.var_407236bf.list = array::randomize(level.var_7d45d0d4.var_407236bf.list);
        level.var_7d45d0d4.var_407236bf.list = arraycombine(var_691808e8, level.var_7d45d0d4.var_407236bf.list, 0);
        level.var_7d45d0d4.var_407236bf.index = 0;
    }
    var_112acc94 = isdefined(level.var_3d1ef3ae) ? level.var_3d1ef3ae : level.var_7d45d0d4.var_dc858a58.list[level.var_7d45d0d4.var_dc858a58.index];
    if (isdefined(var_112acc94)) {
        namespace_553954de::function_1aa044d3(var_112acc94);
    }
}

// Namespace zm_destination_manager/zm_destination_manager
// Params 1, eflags: 0x6 linked
// Checksum 0xfaa0f127, Offset: 0x15e8
// Size: 0xa6
function private function_c62829da(destination) {
    if (function_d71c83a7()) {
        if (isdefined(destination.var_fe2612fe[#"hash_3460aae6bb799a99"])) {
            var_6c486d1a = destination.var_fe2612fe[#"hash_3460aae6bb799a99"][0];
            if (isdefined(var_6c486d1a)) {
                var_f6b2bc6f = getent(var_6c486d1a.targetname, "target");
                if (isdefined(var_f6b2bc6f)) {
                    return var_f6b2bc6f;
                }
            }
        }
    }
    return undefined;
}

// Namespace zm_destination_manager/zm_destination_manager
// Params 1, eflags: 0x2 linked
// Checksum 0x1742f074, Offset: 0x1698
// Size: 0x114
function function_ab94c270(destination) {
    if (level flag::get(#"hash_3c2081a03635c78")) {
        return;
    }
    ent = function_c62829da(destination);
    if (level.var_7de6c9f === ent) {
        return;
    }
    if (isdefined(ent)) {
        level flag::set(#"hash_3c2081a03635c78");
        level.var_7de6c9f = undefined;
        var_ada19974 = function_dbe9e22e(ent);
        while (var_ada19974.size > 0) {
            var_ada19974 = function_8abb2f1a(var_ada19974);
            waitframe(1);
        }
        level flag::clear(#"hash_3c2081a03635c78");
        level.var_7de6c9f = ent;
    }
}

// Namespace zm_destination_manager/zm_destination_manager
// Params 1, eflags: 0x2 linked
// Checksum 0x6ad5d0d0, Offset: 0x17b8
// Size: 0x2f4
function activate(destination) {
    level.var_7d45d0d4.var_49978223 = destination;
    level callback::callback(#"hash_4ac56c023c88537f", {#destination:destination});
    level thread function_ab94c270(destination);
    level flag::wait_till_clear(#"hash_3c2081a03635c78");
    if (isdefined(level.var_7d45d0d4.var_a3205267)) {
        [[ level.var_7d45d0d4.var_a3205267 ]](destination);
    }
    if (!getdvarint(#"hash_4fd21096bcb24e82", 0) && !getdvarint(#"hash_33b0be96bf3cd69a", 0)) {
        namespace_f3a74bbc::function_b15ba345();
    }
    if (isdefined(level.var_7d45d0d4.var_62a42ce)) {
        [[ level.var_7d45d0d4.var_62a42ce ]](destination);
    }
    level thread zm_magicbox::function_2dcb5cea(destination);
    if (zm_utility::is_survival()) {
        level thread zm_wallbuy::function_669a830(destination);
        level thread namespace_c09ae6c3::function_7b19802a(destination);
    }
    if (is_true(getgametypesetting(#"hash_7cc2f3e9453e060b"))) {
        showmiscmodels("fishing_setup");
        hidemiscmodels("fishing_no_use");
        level thread namespace_64b2e5a2::function_43eaec20(destination);
    } else {
        hidemiscmodels("fishing_setup");
    }
    if (zm_utility::is_survival() && is_true(getgametypesetting(#"hash_1aaf37c19b933d03"))) {
        level thread namespace_5b3a52eb::function_f5ccdd88(destination);
    }
    level callback::callback(#"hash_7cdee03c16eb684a", {#destination:destination});
}

// Namespace zm_destination_manager/zm_destination_manager
// Params 1, eflags: 0x2 linked
// Checksum 0xfbdad941, Offset: 0x1ab8
// Size: 0x68
function deactivate(destination) {
    level callback::callback(#"hash_565739346fc951ae", {#destination:destination});
    namespace_8b6a9d79::function_690c4abe();
    level notify(#"hash_3b28fcaa0b9b4489");
}

// Namespace zm_destination_manager/zm_destination_manager
// Params 2, eflags: 0x2 linked
// Checksum 0x60e0b701, Offset: 0x1b28
// Size: 0x21e
function function_506afb9e(destination, var_2371bf) {
    names = var_2371bf;
    if (isstring(var_2371bf) || ishash(var_2371bf)) {
        names = [0:var_2371bf];
    }
    var_526e473a = [];
    foreach (location in destination.locations) {
        foreach (name, instance in location.instances) {
            if (!isinarray(names, name)) {
                continue;
            }
            foreach (group in instance.var_fe2612fe) {
                var_526e473a = arraycombine(var_526e473a, function_66ec9032(group), 0, 0);
            }
        }
    }
    return var_526e473a;
}

// Namespace zm_destination_manager/zm_destination_manager
// Params 1, eflags: 0x2 linked
// Checksum 0xcfa83dc, Offset: 0x1d50
// Size: 0x156
function function_66ec9032(var_51d0492) {
    var_526e473a = [];
    if (!var_51d0492.size) {
        return var_526e473a;
    }
    foreach (struct in var_51d0492) {
        if (struct.var_fe2612fe.size) {
            foreach (group in struct.var_fe2612fe) {
                var_526e473a = arraycombine(var_526e473a, function_66ec9032(group), 0, 0);
            }
        }
        var_526e473a[var_526e473a.size] = struct;
    }
    return var_526e473a;
}

