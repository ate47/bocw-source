// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\struct.csc;
#using scripts\core_common\system_shared.csc;

#namespace namespace_f27a9d0d;

// Namespace namespace_f27a9d0d/createstruct
// Params 1, eflags: 0x26 linked
// Checksum 0x80b5d1eb, Offset: 0x380
// Size: 0x22c
function private event_handler[createstruct] function_e0a8e4ba(struct) {
    foreach (var_7b62a41a, k in ["rg_tag_type"]) {
        if (!isdefined(level.var_41204f29)) {
            level.var_41204f29 = [];
        } else if (!isarray(level.var_41204f29)) {
            level.var_41204f29 = array(level.var_41204f29);
        }
        if (!isinarray(level.var_41204f29, tolower(k))) {
            level.var_41204f29[level.var_41204f29.size] = tolower(k);
        }
    }
    level.var_5e990e96 = arraycopy(level.var_41204f29);
    if (isdefined(level.struct)) {
        temp = arraycopy(level.struct);
        level.struct = [];
        foreach (struct in temp) {
            struct::init(struct);
        }
    }
    function_6c07201b("CreateStruct", &function_e0a8e4ba);
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 2, eflags: 0x2 linked
// Checksum 0x29df4eda, Offset: 0x5b8
// Size: 0xb2
function function_e667ba34(to, from) {
    foreach (tag_name in level.var_4392df44) {
        if (isdefined(from.(tag_name))) {
            to.(tag_name) = from.(tag_name);
        }
    }
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 1, eflags: 0x6 linked
// Checksum 0x702255, Offset: 0x678
// Size: 0x54
function private function_a06dcd8b(v) {
    return (round(v[0]), round(v[1]), round(v[2]));
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 1, eflags: 0x2 linked
// Checksum 0x352a7724, Offset: 0x6d8
// Size: 0x230
function function_2ff463e2(name) {
    var_64f87a02 = getent(0, name, "targetname");
    assert(isdefined(var_64f87a02));
    level.var_a40e1682[name] = var_64f87a02;
    var_64f87a02 hide();
    var_64f87a02.var_d19720ad = function_a06dcd8b(var_64f87a02.origin);
    var_64f87a02.var_66b667b0 = function_a06dcd8b(var_64f87a02.angles);
    var_64f87a02.tags = [];
    var_e8da8fdb = struct::get_array(name, "rg_room");
    foreach (room_struct in var_e8da8fdb) {
        if (isdefined(room_struct.rg_tag_type)) {
            var_4a14890d = spawnstruct();
            var_4a14890d.type = room_struct.rg_tag_type;
            var_4a14890d.id = room_struct.var_d0971441;
            var_4a14890d.origin = coordtransformtranspose(room_struct.origin, var_64f87a02.var_d19720ad, var_64f87a02.var_66b667b0);
            var_4a14890d.angles = function_bdd10bae(room_struct.angles, var_64f87a02.var_66b667b0);
            function_e667ba34(var_4a14890d, room_struct);
            var_64f87a02.tags[var_64f87a02.tags.size] = var_4a14890d;
        }
    }
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 0, eflags: 0x6 linked
// Checksum 0xb3506d89, Offset: 0x910
// Size: 0x30
function private function_2f65cd89() {
    result = "rg_room_" + level.var_eb3397eb;
    level.var_eb3397eb++;
    return result;
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 0, eflags: 0x4
// Checksum 0xcf0e6ce, Offset: 0x948
// Size: 0x30
function private function_b36a26fe() {
    result = "rg_node_" + level.var_c43edd0c;
    level.var_c43edd0c++;
    return result;
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 3, eflags: 0x6 linked
// Checksum 0x4b786248, Offset: 0x980
// Size: 0x240
function private function_8396377c(var_57617236, origin, angles) {
    assert(isdefined(var_57617236));
    door = spawnstruct();
    door.targetname = function_2f65cd89();
    door.origin = origin;
    door.angles = angles;
    door.var_d19720ad = function_a06dcd8b(origin);
    door.var_66b667b0 = function_a06dcd8b(angles);
    door.template = var_57617236;
    door.neighbors = [];
    door.var_12650ad6 = [];
    door.tags = [];
    foreach (var_5cf84433 in var_57617236.tags) {
        var_df2b5097 = spawnstruct();
        var_df2b5097.id = var_5cf84433.id;
        var_df2b5097.owner = door;
        var_df2b5097.origin = coordtransform(var_5cf84433.origin, door.var_d19720ad, door.var_66b667b0);
        var_df2b5097.angles = combineangles(door.var_66b667b0, var_5cf84433.angles);
        var_df2b5097.type = var_5cf84433.type;
        function_e667ba34(var_df2b5097, var_5cf84433);
        door.tags[door.tags.size] = var_df2b5097;
    }
    level.var_e5ed336c[door.targetname] = door;
    return door;
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 3, eflags: 0x6 linked
// Checksum 0xfdfdb70c, Offset: 0xbc8
// Size: 0x28c
function private function_9a75d6e9(var_64f87a02, origin, angles) {
    assert(isdefined(var_64f87a02));
    room = spawnstruct();
    room.targetname = function_2f65cd89();
    room.origin = origin;
    room.angles = angles;
    room.var_d19720ad = function_a06dcd8b(origin);
    room.var_66b667b0 = function_a06dcd8b(angles);
    room.template = var_64f87a02;
    room.neighbors = [];
    room.var_12650ad6 = [];
    room.tags = [];
    foreach (var_103a1f3b in var_64f87a02.tags) {
        var_4a14890d = spawnstruct();
        var_4a14890d.id = var_103a1f3b.id;
        var_4a14890d.owner = room;
        var_4a14890d.origin = coordtransform(var_103a1f3b.origin, room.var_d19720ad, room.var_66b667b0);
        var_4a14890d.angles = combineangles(room.var_66b667b0, var_103a1f3b.angles);
        var_4a14890d.type = var_103a1f3b.type;
        function_e667ba34(var_4a14890d, var_103a1f3b);
        room.tags[room.tags.size] = var_4a14890d;
        if (var_4a14890d.type === "room_center") {
            room.var_5f5fe462 = var_4a14890d.origin;
        }
    }
    if (isdefined(level.var_40450ea6)) {
        room [[ level.var_40450ea6 ]]();
    }
    level.var_c97eeeb4[room.targetname] = room;
    return room;
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 2, eflags: 0x6 linked
// Checksum 0xc918535b, Offset: 0xe60
// Size: 0x64
function private function_700ae446(var_c71df200, var_6a0a1cc4) {
    if (isdefined(self.var_12650ad6[var_c71df200])) {
        return false;
    }
    self.var_12650ad6[var_c71df200] = var_6a0a1cc4;
    if (isdefined(var_6a0a1cc4.owner)) {
        self.neighbors[var_c71df200] = var_6a0a1cc4.owner;
    }
    return true;
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 2, eflags: 0x6 linked
// Checksum 0xce9fe3c8, Offset: 0xed0
// Size: 0x8e
function private function_71b94f8a(tag1, tag2) {
    if (isdefined(tag1.owner)) {
        if (!tag1.owner function_700ae446(tag1.id, tag2)) {
            return false;
        }
    }
    if (isdefined(tag2.owner)) {
        if (!tag2.owner function_700ae446(tag2.id, tag1)) {
            return false;
        }
    }
    return true;
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 0, eflags: 0x2 linked
// Checksum 0x906a9559, Offset: 0xf68
// Size: 0x388
function function_b3f5992c() {
    self notify("34fbc225b71f70d5");
    self endon("34fbc225b71f70d5");
    level endon(#"hash_186e943c1cd0db52");
    if (!isdefined(level.var_c97eeeb4) || level.var_c97eeeb4.size == 0) {
        return;
    }
    function_f4b7f348("connect_all_rooms initialized. level.rg_rooms.size : " + level.var_c97eeeb4.size);
    foreach (room in level.var_c97eeeb4) {
        if (!isdefined(room)) {
            continue;
        }
        /#
            if (issubstr(room.template.targetname, "<unknown string>")) {
                if (!isdefined(level.var_5d40e975)) {
                    level.var_5d40e975 = 0;
                }
                level.var_5d40e975++;
            }
            if (issubstr(room.template.targetname, "<unknown string>")) {
                if (!isdefined(level.var_d5561d56)) {
                    level.var_d5561d56 = 0;
                }
                level.var_d5561d56++;
            }
        #/
        var_eebf1bb0 = room function_cee62dac("type", "room_connector");
        foreach (var_29e30639 in var_eebf1bb0) {
            var_ae433e22 = c_t8_zmb_dlc0_zombie_male_body4_g_lowclean(var_29e30639.origin, array("start", "room_connector"), 4);
            foreach (var_194401e3 in var_ae433e22) {
                if (var_194401e3 != var_29e30639) {
                    room function_71b94f8a(var_29e30639, var_194401e3);
                }
            }
        }
        if (!getdvarint(#"hash_55c78475b1ebf3de", 1)) {
            waitframe(1);
        }
    }
    if (!getdvarint(#"hash_55c78475b1ebf3de", 1)) {
        waitframe(1);
        level notify(#"hash_2afb084294b9f124");
    }
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 1, eflags: 0x6 linked
// Checksum 0x2f9aae76, Offset: 0x12f8
// Size: 0xf8
function private function_28cdb1db(depth) {
    if (isdefined(self.var_d51e68d)) {
        return;
    }
    self.var_d51e68d = depth;
    foreach (var_6a0a1cc4 in self.var_12650ad6) {
        if (isdefined(var_6a0a1cc4.owner)) {
            if (isdefined(var_6a0a1cc4.door)) {
                var_6a0a1cc4.owner function_28cdb1db(depth + 1);
                continue;
            }
            var_6a0a1cc4.owner function_28cdb1db(depth);
        }
    }
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 1, eflags: 0x2 linked
// Checksum 0xa51bf83a, Offset: 0x13f8
// Size: 0x34
function function_f4b7f348(text) {
    println("<unknown string>" + text);
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 1, eflags: 0x2 linked
// Checksum 0xde1b648a, Offset: 0x1438
// Size: 0x1dc
function function_3a9f29b2(room) {
    if (!isdefined(room)) {
        return;
    }
    function_f4b7f348("Room Cleanup:" + room.targetname);
    if (isdefined(room.var_d8d445c4)) {
        room [[ room.var_d8d445c4 ]]();
    }
    function_f4b7f348("Room Cleanup:" + room.targetname + " clearning pathnodes");
    function_f4b7f348("Room Cleanup:" + room.targetname + " clearning tags");
    room.owner = undefined;
    foreach (tag in room.tags) {
        tag.var_12650ad6 = undefined;
        tag.neighbors = undefined;
        tag.owner = undefined;
    }
    room.tags = [];
    room.neighbors = [];
    room.var_12650ad6 = [];
    room.var_dbb4ff9a = undefined;
    room.template = undefined;
    function_f4b7f348("Room Cleanup:" + room.targetname + " done");
    room struct::delete();
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 1, eflags: 0x2 linked
// Checksum 0x8c26b972, Offset: 0x1620
// Size: 0x260
function cleanup(full = 0) {
    function_f4b7f348("ROGUE Cleanup - FULL=" + (full ? "true" : "false"));
    if (isdefined(level.var_c97eeeb4)) {
        foreach (room in level.var_c97eeeb4) {
            if (isdefined(room)) {
                function_3a9f29b2(room);
            }
            if (!getdvarint(#"hash_55c78475b1ebf3de", 1)) {
                waitframe(1);
            }
        }
    }
    level.var_c97eeeb4 = [];
    if (isdefined(level.var_e5ed336c)) {
        foreach (door in level.var_e5ed336c) {
            if (isdefined(door)) {
                function_3a9f29b2(door);
            }
            if (!getdvarint(#"hash_55c78475b1ebf3de", 1)) {
                waitframe(1);
            }
        }
    }
    level.var_e5ed336c = [];
    if (full) {
        function_f4b7f348("ROGUE cleaning room templates");
        level.var_a40e1682 = [];
    }
    function_f4b7f348("ROGUE Cleanup DONE!");
    level notify(#"hash_83fa90e9e007988");
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 1, eflags: 0x2 linked
// Checksum 0xfc5ad10a, Offset: 0x1888
// Size: 0x13c
function function_1648f5a1(name) {
    if (isdefined(level.var_21910540)) {
        [[ level.var_21910540 ]](name);
        return;
    }
    function_2ff463e2("room_1_exit_1024x1024");
    function_2ff463e2("room_2i_exit_1024x1024");
    function_2ff463e2("room_2l_exit_1024x1024");
    function_2ff463e2("room_3_exit_1024x1024");
    function_2ff463e2("room_4_exit_1024x1024");
    function_2ff463e2("hall_1_exit_1024x1024");
    function_2ff463e2("hall_2i_exit_1024x1024");
    function_2ff463e2("hall_2l_exit_1024x1024");
    function_2ff463e2("hall_3_exit_1024x1024");
    function_2ff463e2("hall_4_exit_1024x1024");
    function_2ff463e2("doorbuy_96x128");
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 1, eflags: 0x2 linked
// Checksum 0x462bade2, Offset: 0x19d0
// Size: 0x2de
function init(name) {
    if (!is_true(level.var_f98a5dcd)) {
        level.var_a40e1682 = [];
        level.var_c97eeeb4 = [];
        level.var_e5ed336c = [];
        level.var_4392df44 = [];
        level.var_4392df44[level.var_4392df44.size] = "targetname";
        level.var_4392df44[level.var_4392df44.size] = "target";
        level.var_4392df44[level.var_4392df44.size] = "script_noteworthy";
        level.var_4392df44[level.var_4392df44.size] = "script_string";
        level.var_4392df44[level.var_4392df44.size] = "script_team";
        level.var_4392df44[level.var_4392df44.size] = "script_int";
        level.var_4392df44[level.var_4392df44.size] = "script_parameters";
        var_60f6aaec = struct::get_array("start", "rg_tag_type");
        assert(isdefined(var_60f6aaec.size > 0));
        level.var_60f6aaec = [];
        foreach (start_tag in var_60f6aaec) {
            start_node = spawnstruct();
            start_node.origin = start_tag.origin;
            start_node.angles = start_tag.angles;
            start_node.type = start_tag.rg_tag_type;
            start_node.name = start_tag.targetname;
            start_node.target = start_tag.target;
            start_node.script_int = start_tag.script_int;
            start_node.script_string = start_tag.script_string;
            start_node.script_noteworthy = start_tag.script_noteworty;
            level.var_60f6aaec[level.var_60f6aaec.size] = start_node;
        }
    }
    level.var_c43edd0c = 0;
    level.var_eb3397eb = 0;
    function_c73d6f14(name);
    level.var_f98a5dcd = 1;
    return level.var_49329074;
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 1, eflags: 0x0
// Checksum 0x35bee12c, Offset: 0x1cb8
// Size: 0x96
function function_df3f8608(name) {
    foreach (node in level.var_60f6aaec) {
        if (node.name === name) {
            return node;
        }
    }
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 1, eflags: 0x2 linked
// Checksum 0xecf95e13, Offset: 0x1d58
// Size: 0x54
function function_c73d6f14(name) {
    cleanup(1);
    function_1648f5a1(name);
    function_30589a63(name);
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 1, eflags: 0x2 linked
// Checksum 0x53ed6333, Offset: 0x1db8
// Size: 0xe6
function function_30589a63(name) {
    if (isdefined(level.var_49329074)) {
        level.var_49329074 struct::delete();
        level.var_49329074 = undefined;
    }
    level.var_49329074 = spawnstruct();
    if (isdefined(name)) {
        start_tag = function_363c84ff(name);
    } else {
        start_tag = level.var_60f6aaec[0];
    }
    level.var_49329074.origin = start_tag.origin;
    level.var_49329074.angles = start_tag.angles;
    level.var_49329074.type = start_tag.type;
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 1, eflags: 0x2 linked
// Checksum 0x9644a0e5, Offset: 0x1ea8
// Size: 0xc4
function function_363c84ff(name) {
    foreach (start_tag in level.var_60f6aaec) {
        if (start_tag.name === name) {
            return start_tag;
        }
    }
    assert(0, "<unknown string>" + name + "<unknown string>");
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 2, eflags: 0x2 linked
// Checksum 0xde14d8ca, Offset: 0x1f78
// Size: 0x2c
function function_e1842922(x, y) {
    return (x * 1024, y * 1024, 0);
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 1, eflags: 0x2 linked
// Checksum 0xb17a2a20, Offset: 0x1fb0
// Size: 0xa2
function function_a8d8b1ab(var_603479c6) {
    switch (var_603479c6) {
    case 0:
        return 0;
    case 1:
        return 90;
    case 2:
        return 180;
    case 3:
        return 270;
    default:
        assertmsg("<unknown string>");
        break;
    }
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 2, eflags: 0x2 linked
// Checksum 0x17d1ab6d, Offset: 0x2060
// Size: 0xec
function function_cee62dac(key, value) {
    assert(isdefined(self.tags));
    result = [];
    foreach (tag in self.tags) {
        if (isdefined(tag.(key)) && tag.(key) === value) {
            result[result.size] = tag;
        }
    }
    return result;
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 2, eflags: 0x2 linked
// Checksum 0xb235a567, Offset: 0x2158
// Size: 0xcc
function function_5165998(key, value) {
    found = function_cee62dac(key, value);
    assert(found.size <= 1, "<unknown string>" + (isdefined(key) ? "<unknown string>" + key : "<unknown string>") + "<unknown string>" + (isdefined(value) ? "<unknown string>" + value : "<unknown string>") + "<unknown string>");
    return found.size < 0 ? undefined : found[0];
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 3, eflags: 0x2 linked
// Checksum 0x2243bf09, Offset: 0x2230
// Size: 0x15a
function function_eaad15e2(attach_tag, var_da1a882e, var_c71df200) {
    var_64f87a02 = level.var_a40e1682[var_da1a882e];
    assert(isdefined(var_64f87a02));
    var_103a1f3b = var_64f87a02 function_5165998("id", var_c71df200);
    assert(isdefined(var_103a1f3b));
    var_cde36dad = vectortoangles(anglestoforward(attach_tag.angles) * -1);
    var_e3438a3b = function_bdd10bae(var_cde36dad, var_103a1f3b.angles);
    var_51d344d5 = attach_tag.origin + rotatepoint(var_103a1f3b.origin * -1, var_e3438a3b);
    return function_9a75d6e9(var_64f87a02, var_51d344d5, var_e3438a3b);
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 2, eflags: 0x0
// Checksum 0xbd43480b, Offset: 0x2398
// Size: 0x176
function function_5b611d11(attach_tag, door_name) {
    var_57617236 = level.var_a40e1682[door_name];
    assert(isdefined(var_57617236));
    var_5cf84433 = var_57617236 function_5165998("type", "room_center");
    assert(isdefined(var_5cf84433));
    var_cde36dad = vectortoangles(anglestoforward(attach_tag.angles) * -1);
    var_edda8bbd = function_bdd10bae(var_cde36dad, var_5cf84433.angles);
    var_75f95cf7 = attach_tag.origin + rotatepoint(var_5cf84433.origin * -1, var_edda8bbd);
    door = function_8396377c(var_57617236, var_75f95cf7, var_edda8bbd);
    door.attach_tag = attach_tag;
    return door;
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 4, eflags: 0x0
// Checksum 0xb336aaf5, Offset: 0x2518
// Size: 0x142
function function_40681754(var_da1a882e, x, y, var_603479c6) {
    var_64f87a02 = level.var_a40e1682[var_da1a882e];
    assert(isdefined(var_64f87a02));
    var_103a1f3b = var_64f87a02 function_5165998("type", "room_center");
    assert(isdefined(var_103a1f3b));
    var_e3438a3b = (0, function_a8d8b1ab(var_603479c6), 0);
    var_85f8c961 = function_e1842922(x, y);
    var_51d344d5 = var_85f8c961 + rotatepoint(var_103a1f3b.origin * -1, var_e3438a3b);
    return function_9a75d6e9(var_64f87a02, var_51d344d5, var_e3438a3b);
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 3, eflags: 0x2 linked
// Checksum 0xf34ca591, Offset: 0x2668
// Size: 0x29a
function c_t8_zmb_dlc0_zombie_male_body4_g_lowclean(origin, var_816442c9, distancetolerance) {
    if (!isarray(var_816442c9)) {
        var_816442c9 = array(var_816442c9);
    }
    result = [];
    foreach (var_7758b4f0 in var_816442c9) {
        var_21a0f66a = sqr(distancetolerance);
        foreach (room in level.var_c97eeeb4) {
            if (!isdefined(room)) {
                continue;
            }
            var_c9780d2e = room function_cee62dac("type", var_7758b4f0);
            foreach (var_4a14890d in var_c9780d2e) {
                if (var_4a14890d.type == var_7758b4f0 && distancesquared(var_4a14890d.origin, origin) <= var_21a0f66a) {
                    result[result.size] = var_4a14890d;
                }
            }
        }
        if (var_7758b4f0 == "start" && distancesquared(level.var_49329074.origin, origin) <= var_21a0f66a) {
            result[result.size] = level.var_49329074;
        }
    }
    return result;
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 1, eflags: 0x0
// Checksum 0xb0e47f6f, Offset: 0x2910
// Size: 0x212
function function_39736661(var_816442c9) {
    if (!isarray(var_816442c9)) {
        var_816442c9 = array(var_816442c9);
    }
    result = [];
    foreach (var_7758b4f0 in var_816442c9) {
        foreach (room in level.var_c97eeeb4) {
            if (!isdefined(room)) {
                continue;
            }
            var_c9780d2e = room function_cee62dac("type", var_7758b4f0);
            foreach (var_4a14890d in var_c9780d2e) {
                if (var_4a14890d.type == var_7758b4f0) {
                    result[result.size] = var_4a14890d;
                }
            }
        }
        if (var_7758b4f0 == "start") {
            result[result.size] = level.var_49329074;
        }
    }
    return result;
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 0, eflags: 0x2 linked
// Checksum 0xcd9fdb35, Offset: 0x2b30
// Size: 0xcc
function function_612d8b4e() {
    assert(isdefined(level.var_ee250665));
    foreach (room in level.var_c97eeeb4) {
        if (!isdefined(room)) {
            continue;
        }
        room.var_d51e68d = undefined;
    }
    level.var_ee250665 function_28cdb1db(0);
}

