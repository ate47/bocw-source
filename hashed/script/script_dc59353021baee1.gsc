// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\struct.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_f27a9d0d;

// Namespace namespace_f27a9d0d/createstruct
// Params 1, eflags: 0x26 linked
// Checksum 0xf32ace42, Offset: 0x3b0
// Size: 0x22c
function private event_handler[createstruct] function_e0a8e4ba(struct) {
    foreach (var_7b62a41a, k in [0:"rg_tag_type"]) {
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
// Checksum 0x8cc55ad4, Offset: 0x5e8
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
// Checksum 0x949ad29d, Offset: 0x6a8
// Size: 0x54
function private function_a06dcd8b(v) {
    return (round(v[0]), round(v[1]), round(v[2]));
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 1, eflags: 0x2 linked
// Checksum 0xa64348a6, Offset: 0x708
// Size: 0x230
function function_2ff463e2(name) {
    var_64f87a02 = getent(name, "targetname");
    /#
        assert(isdefined(var_64f87a02));
    #/
    level.var_a40e1682[name] = var_64f87a02;
    var_64f87a02 hide();
    var_64f87a02.var_d19720ad.var_64f87a02 = function_a06dcd8b(var_64f87a02.origin);
    var_64f87a02.var_66b667b0.var_64f87a02 = function_a06dcd8b(var_64f87a02.angles);
    var_64f87a02.tags.var_64f87a02 = [];
    var_e8da8fdb = struct::get_array(name, "rg_room");
    foreach (var_324df575 in var_e8da8fdb) {
        if (isdefined(var_324df575.var_d2d8fa92)) {
            var_4a14890d = spawnstruct();
            var_4a14890d.type.var_4a14890d = var_324df575.var_d2d8fa92;
            var_4a14890d.id.var_4a14890d = var_324df575.var_d0971441;
            var_4a14890d.origin.var_4a14890d = coordtransformtranspose(var_324df575.origin, var_64f87a02.var_d19720ad, var_64f87a02.var_66b667b0);
            var_4a14890d.angles.var_4a14890d = function_bdd10bae(var_324df575.angles, var_64f87a02.var_66b667b0);
            function_e667ba34(var_4a14890d, var_324df575);
            var_64f87a02.tags[var_64f87a02.tags.size] = var_4a14890d;
        }
    }
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 0, eflags: 0x4
// Checksum 0xf995c59f, Offset: 0x940
// Size: 0x3c
function private function_9a6b2309() {
    /#
        adddebugcommand("<unknown string>");
        adddebugcommand("<unknown string>");
    #/
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 3, eflags: 0x0
// Checksum 0x6f48cf5c, Offset: 0x988
// Size: 0x27c
function function_9ab553ff(org, ang, opcolor) {
    /#
        forward = anglestoforward(ang);
        forwardfar = vectorscale(forward, 50);
        forwardclose = vectorscale(forward, 50 * 0.8);
        right = anglestoright(ang);
        leftdraw = vectorscale(right, 50 * -0.2);
        rightdraw = vectorscale(right, 50 * 0.2);
        up = anglestoup(ang);
        right = vectorscale(right, 50);
        up = vectorscale(up, 50);
        red = (0.9, 0.2, 0.2);
        green = (0.2, 0.9, 0.2);
        blue = (0.2, 0.2, 0.9);
        if (isdefined(opcolor)) {
            red = opcolor;
            green = opcolor;
            blue = opcolor;
        }
        line(org, org + forwardfar, red, 0.9);
        line(org + forwardfar, org + forwardclose + rightdraw, red, 0.9);
        line(org + forwardfar, org + forwardclose + leftdraw, red, 0.9);
        line(org, org + right, blue, 0.9);
        line(org, org + up, green, 0.9);
    #/
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 0, eflags: 0x4
// Checksum 0x70f95b01, Offset: 0xc10
// Size: 0xae
function private function_b8cb1a36() {
    /#
        while (1) {
            if (getdvarint(#"hash_2a31ff63684161c2") > 0) {
                function_9ab553ff(level.var_49329074.origin, level.var_49329074.angles);
                print3d(level.var_49329074.origin + vectorscale((0, 0, 1), 12), "<unknown string>");
            }
            waitframe(1);
        }
    #/
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 0, eflags: 0x4
// Checksum 0x7a16ed60, Offset: 0xcc8
// Size: 0x13a
function private function_2b478463() {
    /#
        self endon(#"death");
        var_eebf1bb0 = self function_cee62dac("<unknown string>", "<unknown string>");
        while (1) {
            if (getdvarint(#"hash_2b815b1b53be7ca5") > 0) {
                foreach (var_29e30639 in var_eebf1bb0) {
                    function_9ab553ff(var_29e30639.origin, var_29e30639.angles);
                    print3d(var_29e30639.origin + vectorscale((0, 0, 1), 12), var_29e30639.id);
                }
            }
            waitframe(1);
        }
    #/
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 0, eflags: 0x6 linked
// Checksum 0x4a6d5382, Offset: 0xe10
// Size: 0x30
function private function_2f65cd89() {
    result = "rg_room_" + level.var_eb3397eb;
    level.var_eb3397eb++;
    return result;
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 0, eflags: 0x6 linked
// Checksum 0x7a247fb5, Offset: 0xe48
// Size: 0x30
function private function_b36a26fe() {
    result = "rg_node_" + level.var_c43edd0c;
    level.var_c43edd0c++;
    return result;
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 3, eflags: 0x6 linked
// Checksum 0x6a2e7ee, Offset: 0xe80
// Size: 0x260
function private function_8396377c(var_57617236, origin, angles) {
    /#
        assert(isdefined(var_57617236));
    #/
    door = var_57617236 spawnfromspawner();
    door.targetname.door = function_2f65cd89();
    door.origin = origin;
    door.angles = angles;
    door.var_d19720ad.door = function_a06dcd8b(origin);
    door.var_66b667b0.door = function_a06dcd8b(angles);
    door.var_a1152600 = var_57617236;
    door.neighbors.door = [];
    door.var_12650ad6.door = [];
    door.tags.door = [];
    foreach (var_5cf84433 in var_57617236.tags) {
        var_df2b5097 = spawnstruct();
        var_df2b5097.id.var_df2b5097 = var_5cf84433.id;
        var_df2b5097.owner = door;
        var_df2b5097.origin.var_df2b5097 = coordtransform(var_5cf84433.origin, door.var_d19720ad, door.var_66b667b0);
        var_df2b5097.angles.var_df2b5097 = combineangles(door.var_66b667b0, var_5cf84433.angles);
        var_df2b5097.type.var_df2b5097 = var_5cf84433.type;
        function_e667ba34(var_df2b5097, var_5cf84433);
        door.tags[door.tags.size] = var_df2b5097;
    }
    level.var_e5ed336c[door.targetname] = door;
    door show();
    return door;
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 3, eflags: 0x6 linked
// Checksum 0x2952c6ba, Offset: 0x10e8
// Size: 0x350
function private function_9a75d6e9(var_64f87a02, origin, angles) {
    /#
        assert(isdefined(var_64f87a02));
    #/
    room = var_64f87a02 spawnfromspawner();
    room.targetname.room = var_64f87a02.targetname;
    traversals = isdefined(level.var_f9c83ade) ? level.var_f9c83ade : 1;
    if (isdefined(var_64f87a02.script_int)) {
        traversals = var_64f87a02.script_int ? 1 : 0;
    }
    room setmovingplatformenabled(1, 1, traversals);
    room.targetname.room = function_2f65cd89();
    room.origin = origin;
    room.angles = angles;
    room.var_d19720ad.room = function_a06dcd8b(origin);
    room.var_66b667b0.room = function_a06dcd8b(angles);
    room.var_a1152600 = var_64f87a02;
    room.neighbors.room = [];
    room.var_12650ad6.room = [];
    room.tags.room = [];
    foreach (var_103a1f3b in var_64f87a02.tags) {
        var_4a14890d = spawnstruct();
        var_4a14890d.id.var_4a14890d = var_103a1f3b.id;
        var_4a14890d.owner = room;
        var_4a14890d.origin.var_4a14890d = coordtransform(var_103a1f3b.origin, room.var_d19720ad, room.var_66b667b0);
        var_4a14890d.angles.var_4a14890d = combineangles(room.var_66b667b0, var_103a1f3b.angles);
        var_4a14890d.type.var_4a14890d = var_103a1f3b.type;
        function_e667ba34(var_4a14890d, var_103a1f3b);
        room.tags[room.tags.size] = var_4a14890d;
        if (var_4a14890d.type === "room_center") {
            room.var_5f5fe462.room = var_4a14890d.origin;
        }
    }
    room.nodes.room = [];
    /#
        room thread function_2b478463();
    #/
    room show();
    if (isdefined(level.var_40450ea6)) {
        room [[ level.var_40450ea6 ]]();
    }
    level.var_c97eeeb4[room.targetname] = room;
    return room;
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 2, eflags: 0x6 linked
// Checksum 0x9221eb8f, Offset: 0x1440
// Size: 0x64
function private function_700ae446(var_c71df200, var_6a0a1cc4) {
    if (isdefined(self.var_12650ad6[var_c71df200])) {
        return 0;
    }
    self.var_12650ad6[var_c71df200] = var_6a0a1cc4;
    if (isdefined(var_6a0a1cc4.owner)) {
        self.neighbors[var_c71df200] = var_6a0a1cc4.owner;
    }
    return 1;
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 2, eflags: 0x6 linked
// Checksum 0x5641f049, Offset: 0x14b0
// Size: 0x268
function private function_71b94f8a(var_5e97bd10, var_9482a8a5) {
    if (isdefined(var_5e97bd10.owner)) {
        if (!var_5e97bd10.owner function_700ae446(var_5e97bd10.id, var_9482a8a5)) {
            return 0;
        }
    }
    if (isdefined(var_9482a8a5.owner)) {
        if (!var_9482a8a5.owner function_700ae446(var_9482a8a5.id, var_5e97bd10)) {
            return 0;
        }
    }
    var_c5d10328 = function_b36a26fe();
    var_7971e866 = function_b36a26fe();
    var_1141847d = var_5e97bd10.origin + anglestoforward(var_5e97bd10.angles) * -1 * 48 + (0, 0, 16);
    var_7b6a398d = spawnpathnode("node_negotiation_begin", var_1141847d, var_5e97bd10.angles, var_5e97bd10.owner, "targetname", var_c5d10328, "target", var_7971e866);
    var_e8160d55 = var_9482a8a5.origin + anglestoforward(var_9482a8a5.angles) * -1 * 48 + (0, 0, 16);
    var_ec449bd6 = spawnpathnode("node_negotiation_end", var_e8160d55, var_9482a8a5.angles, var_9482a8a5.owner, "targetname", var_7971e866, "target", var_c5d10328);
    var_5e97bd10.var_e86e150a = var_7b6a398d;
    var_9482a8a5.var_e86e150a = var_7b6a398d;
    linktraversal(var_7b6a398d);
    self.nodes[self.nodes.size] = var_ec449bd6;
    self.nodes[self.nodes.size] = var_7b6a398d;
    return 1;
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 0, eflags: 0x2 linked
// Checksum 0x38cee9ab, Offset: 0x1720
// Size: 0x438
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
            if (issubstr(room.var_a1152600.targetname, "<unknown string>")) {
                if (!isdefined(level.var_5d40e975)) {
                    level.var_5d40e975 = 0;
                }
                level.var_5d40e975++;
            }
            if (issubstr(room.var_a1152600.targetname, "<unknown string>")) {
                if (!isdefined(level.var_d5561d56)) {
                    level.var_d5561d56 = 0;
                }
                level.var_d5561d56++;
            }
        #/
        var_eebf1bb0 = room function_cee62dac("type", "room_connector");
        foreach (var_29e30639 in var_eebf1bb0) {
            var_ae433e22 = function_6dbc9ea5(var_29e30639.origin, array("start", "room_connector"), 4);
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
    foreach (door in level.var_e5ed336c) {
        setenablenode(door.var_8afc2ef3.var_e86e150a, 0);
        door.var_b9a09166.door = door.var_8afc2ef3.var_e86e150a;
    }
    if (!getdvarint(#"hash_55c78475b1ebf3de", 1)) {
        waitframe(1);
        level notify(#"hash_2afb084294b9f124");
    }
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 1, eflags: 0x6 linked
// Checksum 0x3d136cbb, Offset: 0x1b60
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
            } else {
                var_6a0a1cc4.owner function_28cdb1db(depth);
            }
        }
    }
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 1, eflags: 0x2 linked
// Checksum 0x4299aaf7, Offset: 0x1c60
// Size: 0x34
function function_f4b7f348(text) {
    /#
        println("<unknown string>" + text);
    #/
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 1, eflags: 0x2 linked
// Checksum 0x57f626f8, Offset: 0x1ca0
// Size: 0x274
function function_3a9f29b2(room) {
    if (!isdefined(room)) {
        return;
    }
    function_f4b7f348("Room Cleanup:" + room.targetname);
    if (isdefined(room.var_d8d445c4)) {
        room [[ room.var_d8d445c4 ]]();
    }
    function_f4b7f348("Room Cleanup:" + room.targetname + " clearning pathnodes");
    if (isdefined(room.nodes)) {
        foreach (node in room.nodes) {
            deletepathnode(node);
        }
        room.nodes.room = [];
    }
    function_f4b7f348("Room Cleanup:" + room.targetname + " clearning tags");
    room.owner = undefined;
    foreach (tag in room.tags) {
        tag.var_12650ad6 = undefined;
        tag.neighbors = undefined;
        tag.owner = undefined;
    }
    room.tags.room = [];
    room.neighbors.room = [];
    room.var_12650ad6.room = [];
    room.var_dbb4ff9a = undefined;
    room.var_a1152600 = undefined;
    function_f4b7f348("Room Cleanup:" + room.targetname + " done");
    room delete();
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 1, eflags: 0x2 linked
// Checksum 0x43719cf0, Offset: 0x1f20
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
// Checksum 0x76269ac2, Offset: 0x2188
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
// Checksum 0x2b64efd3, Offset: 0x22d0
// Size: 0x30e
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
        /#
            assert(isdefined(var_60f6aaec.size > 0));
        #/
        level.var_60f6aaec = [];
        foreach (start_tag in var_60f6aaec) {
            start_node = spawnstruct();
            start_node.origin.start_node = start_tag.origin;
            start_node.angles.start_node = start_tag.angles;
            start_node.type.start_node = start_tag.var_d2d8fa92;
            start_node.name.start_node = start_tag.targetname;
            start_node.target.start_node = start_tag.target;
            start_node.script_int.start_node = start_tag.script_int;
            start_node.script_string.start_node = start_tag.script_string;
            start_node.script_noteworthy.start_node = start_tag.script_noteworty;
            level.var_60f6aaec[level.var_60f6aaec.size] = start_node;
        }
        /#
            function_9a6b2309();
            level thread function_b8cb1a36();
        #/
    }
    level.var_c43edd0c = 0;
    level.var_eb3397eb = 0;
    function_c73d6f14(name);
    level.var_f98a5dcd = 1;
    return level.var_49329074;
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 1, eflags: 0x0
// Checksum 0xa0793a73, Offset: 0x25e8
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
// Checksum 0x72922480, Offset: 0x2688
// Size: 0x54
function function_c73d6f14(name) {
    cleanup(1);
    function_1648f5a1(name);
    function_30589a63(name);
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 1, eflags: 0x2 linked
// Checksum 0xb31dbc87, Offset: 0x26e8
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
// Checksum 0xd63b9825, Offset: 0x27d8
// Size: 0xc4
function function_363c84ff(name) {
    foreach (start_tag in level.var_60f6aaec) {
        if (start_tag.name === name) {
            return start_tag;
        }
    }
    /#
        assert(0, "<unknown string>" + name + "<unknown string>");
    #/
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 2, eflags: 0x2 linked
// Checksum 0x5b8599c1, Offset: 0x28a8
// Size: 0x2c
function function_e1842922(x, y) {
    return (x * 1024, y * 1024, 0);
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 1, eflags: 0x2 linked
// Checksum 0xf21522ab, Offset: 0x28e0
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
    case #"hash_defdefdefdefdef0":
        /#
            assertmsg("<unknown string>");
        #/
        break;
    }
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 2, eflags: 0x2 linked
// Checksum 0xd3990d0, Offset: 0x2990
// Size: 0xec
function function_cee62dac(key, value) {
    /#
        assert(isdefined(self.tags));
    #/
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
// Checksum 0x532463f4, Offset: 0x2a88
// Size: 0xcc
function function_5165998(key, value) {
    found = function_cee62dac(key, value);
    /#
        assert(found.size <= 1, "<unknown string>" + (isdefined(key) ? "<unknown string>" + key : "<unknown string>") + "<unknown string>" + (isdefined(value) ? "<unknown string>" + value : "<unknown string>") + "<unknown string>");
    #/
    return found.size < 0 ? found[0] : undefined;
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 3, eflags: 0x2 linked
// Checksum 0x20532a28, Offset: 0x2b60
// Size: 0x15a
function function_eaad15e2(var_8afc2ef3, var_da1a882e, var_c71df200) {
    var_64f87a02 = level.var_a40e1682[var_da1a882e];
    /#
        assert(isdefined(var_64f87a02));
    #/
    var_103a1f3b = var_64f87a02 function_5165998("id", var_c71df200);
    /#
        assert(isdefined(var_103a1f3b));
    #/
    var_cde36dad = vectortoangles(anglestoforward(var_8afc2ef3.angles) * -1);
    var_e3438a3b = function_bdd10bae(var_cde36dad, var_103a1f3b.angles);
    var_51d344d5 = var_8afc2ef3.origin + rotatepoint(var_103a1f3b.origin * -1, var_e3438a3b);
    return function_9a75d6e9(var_64f87a02, var_51d344d5, var_e3438a3b);
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 2, eflags: 0x0
// Checksum 0xa079a1ae, Offset: 0x2cc8
// Size: 0x176
function function_5b611d11(var_8afc2ef3, var_6a60dc03) {
    var_57617236 = level.var_a40e1682[var_6a60dc03];
    /#
        assert(isdefined(var_57617236));
    #/
    var_5cf84433 = var_57617236 function_5165998("type", "room_center");
    /#
        assert(isdefined(var_5cf84433));
    #/
    var_cde36dad = vectortoangles(anglestoforward(var_8afc2ef3.angles) * -1);
    var_edda8bbd = function_bdd10bae(var_cde36dad, var_5cf84433.angles);
    var_75f95cf7 = var_8afc2ef3.origin + rotatepoint(var_5cf84433.origin * -1, var_edda8bbd);
    door = function_8396377c(var_57617236, var_75f95cf7, var_edda8bbd);
    door.var_8afc2ef3 = var_8afc2ef3;
    return door;
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 4, eflags: 0x0
// Checksum 0xf7d32199, Offset: 0x2e48
// Size: 0x142
function function_40681754(var_da1a882e, x, y, var_603479c6) {
    var_64f87a02 = level.var_a40e1682[var_da1a882e];
    /#
        assert(isdefined(var_64f87a02));
    #/
    var_103a1f3b = var_64f87a02 function_5165998("type", "room_center");
    /#
        assert(isdefined(var_103a1f3b));
    #/
    var_e3438a3b = (0, function_a8d8b1ab(var_603479c6), 0);
    var_85f8c961 = function_e1842922(x, y);
    var_51d344d5 = var_85f8c961 + rotatepoint(var_103a1f3b.origin * -1, var_e3438a3b);
    return function_9a75d6e9(var_64f87a02, var_51d344d5, var_e3438a3b);
}

// Namespace namespace_f27a9d0d/namespace_f27a9d0d
// Params 3, eflags: 0x2 linked
// Checksum 0xc0d0347d, Offset: 0x2f98
// Size: 0x29a
function function_6dbc9ea5(origin, var_816442c9, var_272260e3) {
    if (!isarray(var_816442c9)) {
        var_816442c9 = array(var_816442c9);
    }
    result = [];
    foreach (var_7758b4f0 in var_816442c9) {
        var_21a0f66a = function_a3f6cdac(var_272260e3);
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
// Checksum 0x5a379a76, Offset: 0x3240
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
// Checksum 0x39c7e79e, Offset: 0x3460
// Size: 0xcc
function function_612d8b4e() {
    /#
        assert(isdefined(level.var_ee250665));
    #/
    foreach (room in level.var_c97eeeb4) {
        if (!isdefined(room)) {
            continue;
        }
        room.var_d51e68d = undefined;
    }
    level.var_ee250665 function_28cdb1db(0);
}
