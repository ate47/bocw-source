// Atian COD Tools GSC CW decompiler test
#using script_4ccd0c3512b52a10;
#using scripts\cp_common\objectives.gsc;
#using script_7d0013bbc05623b9;
#using script_35ae72be7b4fec10;
#using script_3626f1b2cf51a99c;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace interactive_map;

// Namespace interactive_map/interactive_map
// Params 0, eflags: 0x5
// Checksum 0x5cb2a6b3, Offset: 0x310
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"interactive_map", &preinit, undefined, undefined, undefined);
}

// Namespace interactive_map/interactive_map
// Params 0, eflags: 0x6 linked
// Checksum 0xa59ad030, Offset: 0x358
// Size: 0x34
function private preinit() {
    clientfield::register("toplayer", "toggle_interactive_map", 1, 1, "int");
}

// Namespace interactive_map/interactive_map
// Params 10, eflags: 0x2 linked
// Checksum 0x3c47994d, Offset: 0x398
// Size: 0x68c
function open(var_738a6265, top_left, bottom_right, var_879505e1 = 1, var_ff0f9714 = 1, var_3031d93b, var_3e6ff5b7, map_width, map_height, var_7ec0800f) {
    if (!namespace_61e6d095::exists(#"interactive_map")) {
        player = getplayers()[0];
        player actions::function_6c59e78f(0);
        player thread namespace_61e6d095::block_kbm_pause_menu("close_interactive_map");
        player val::set(#"hash_46ef83540c23a2f7", "freezecontrols", 1);
        namespace_61e6d095::create(#"interactive_map", var_738a6265);
        namespace_61e6d095::function_28027c42(#"interactive_map", [#"interactive_map", #"hint_tutorial", #"hash_72cc4740fa4d3da3"]);
        namespace_61e6d095::function_24e5fa63(#"interactive_map", [#"ui_confirm", #"hash_3c27402259e4c18e"], 1);
        if (!isdefined(top_left)) {
            top_left = getent("interactive_map_top_left", "targetname");
            if (!isdefined(top_left)) {
                top_left = struct::get("interactive_map_top_left", "targetname");
            }
        }
        if (!isdefined(bottom_right)) {
            bottom_right = getent("interactive_map_bottom_right", "targetname");
            if (!isdefined(bottom_right)) {
                bottom_right = struct::get("interactive_map_bottom_right", "targetname");
            }
        }
        if (isdefined(var_3031d93b)) {
            namespace_61e6d095::set_x(#"interactive_map", var_3031d93b);
        }
        if (isdefined(var_3e6ff5b7)) {
            namespace_61e6d095::set_y(#"interactive_map", var_3e6ff5b7);
        }
        if (isdefined(map_width)) {
            namespace_61e6d095::set_width(#"interactive_map", map_width);
        }
        if (isdefined(map_height)) {
            namespace_61e6d095::set_height(#"interactive_map", map_height);
        }
        if (is_true(var_7ec0800f) && isentity(top_left) && isentity(bottom_right)) {
            namespace_61e6d095::function_9ade1d9b(#"interactive_map", "topLeftEntNum", top_left getentitynumber());
            namespace_61e6d095::function_9ade1d9b(#"interactive_map", "bottomRightEntNum", bottom_right getentitynumber());
        }
        x_axis = anglestoright(top_left.angles) * -1;
        y_axis = anglestoforward(top_left.angles);
        var_2a5cff6e = bottom_right.origin - top_left.origin;
        width = vectordot(var_2a5cff6e, x_axis);
        height = vectordot(var_2a5cff6e, y_axis);
        if (!isdefined(level.interactive_map)) {
            level.interactive_map = {};
        }
        level.interactive_map.var_e1d2ab75 = {#top_left:top_left.origin, #width:width, #height:height, #x_axis:x_axis, #y_axis:y_axis};
        if (!isdefined(level.interactive_map.objects)) {
            level.interactive_map.objects = [];
        }
        if (!isdefined(level.interactive_map.var_147d40f0)) {
            level.interactive_map.var_147d40f0 = [];
        }
        function_9af7280f(level.interactive_map.objects);
        function_59b2a130(level.interactive_map.var_147d40f0);
        function_9af7280f(getentarray("interactive_map_object", "script_noteworthy"));
        function_59b2a130(getentarray("interactive_map_hotspot", "script_noteworthy"));
        if (is_true(var_879505e1)) {
            player function_879505e1(var_ff0f9714);
        }
        return;
    }
    assertmsg("<unknown string>");
}

// Namespace interactive_map/interactive_map
// Params 2, eflags: 0x2 linked
// Checksum 0xf271f729, Offset: 0xa30
// Size: 0x3c
function function_e0cc3b71(name, value) {
    namespace_61e6d095::function_9ade1d9b(#"interactive_map", name, value);
}

// Namespace interactive_map/interactive_map
// Params 3, eflags: 0x2 linked
// Checksum 0xb6ba3c59, Offset: 0xa78
// Size: 0x41c
function function_879505e1(var_ff0f9714 = 1, var_509b0860 = #"hash_780067c4596705d7", var_74ac68df = #"hash_71f8107215effa5b") {
    assert(namespace_61e6d095::exists(#"interactive_map"), "<unknown string>");
    function_23036faa(#"cursor", "uid", #"cursor");
    function_23036faa(#"cursor", "widgetName", var_509b0860);
    function_23036faa(#"cursor", "cursorImage", var_74ac68df);
    function_23036faa(#"cursor", "rightAligned", 0);
    function_23036faa(#"cursor", "bottomAligned", 0);
    namespace_61e6d095::function_9ade1d9b(#"interactive_map", "cursor" + "." + "update", 1, 1, 0, 0, 1);
    function_41d66375(#"cursor", "descriptionList");
    function_41d66375(#"cursor", "interactionList");
    function_8b43da33();
    function_e4d34e68(0);
    prompts::function_e79f51ec(#"cursor");
    level.interactive_map.var_1cd32747 = (0.5, 0.5, 0);
    if (isdefined(level.interactive_map.var_87c49d20)) {
        var_75576067 = level.interactive_map.var_87c49d20 - level.interactive_map.var_e1d2ab75.top_left;
        level.interactive_map.var_1cd32747 = (vectordot(var_75576067, level.interactive_map.var_e1d2ab75.x_axis) / level.interactive_map.var_e1d2ab75.width, vectordot(var_75576067, level.interactive_map.var_e1d2ab75.y_axis) / level.interactive_map.var_e1d2ab75.height, 0);
    }
    function_23036faa(#"cursor", "x", level.interactive_map.var_1cd32747[0]);
    function_23036faa(#"cursor", "y", level.interactive_map.var_1cd32747[1]);
    self clientfield::set_to_player("toggle_interactive_map", 1);
    thread update_cursor(var_ff0f9714);
}

// Namespace interactive_map/interactive_map
// Params 1, eflags: 0x0
// Checksum 0xd8d64bc8, Offset: 0xea0
// Size: 0x3e
function function_50121b9(position) {
    if (!isdefined(level.interactive_map)) {
        level.interactive_map = {};
    }
    level.interactive_map.var_87c49d20 = position;
}

// Namespace interactive_map/interactive_map
// Params 4, eflags: 0x2 linked
// Checksum 0x435cc780, Offset: 0xee8
// Size: 0x3b6
function function_9e8d4999(title = #"", descriptions, interactions, object) {
    if (!isdefined(descriptions)) {
        descriptions = [];
    } else if (!isarray(descriptions)) {
        descriptions = array(descriptions);
    }
    if (!isdefined(interactions)) {
        interactions = [];
    } else if (!isarray(interactions)) {
        interactions = array(interactions);
    }
    function_23036faa(#"cursor", "title", title);
    foreach (index, description in descriptions) {
        function_39d12272(#"cursor", index, "text", description, "descriptionList");
    }
    if (isdefined(level.interactive_map.var_2c15274b.descriptions)) {
        for (index = descriptions.size; index < level.interactive_map.var_2c15274b.descriptions.size; index++) {
            function_dcedf7f(#"cursor", index, "descriptionList");
        }
    }
    var_fadf668d = 0;
    player = getplayers()[0];
    player prompts::function_ee7adae5(#"cursor");
    foreach (prompt, interaction in interactions) {
        player prompts::function_c97a48c7(prompt, interaction);
        var_fadf668d = 1;
    }
    if (var_fadf668d) {
        player prompts::function_46f198(#"interactive_map", "cursor" + "." + "mapObjects" + "." + #"cursor" + "." + "interactionList");
    }
    level.interactive_map.var_2c15274b = {#title:title, #descriptions:descriptions, #interactions:interactions, #object:object};
}

// Namespace interactive_map/interactive_map
// Params 1, eflags: 0x2 linked
// Checksum 0x36575182, Offset: 0x12a8
// Size: 0x44
function function_e4d34e68(state = 0) {
    function_23036faa(#"cursor", "state", state);
}

// Namespace interactive_map/interactive_map
// Params 0, eflags: 0x2 linked
// Checksum 0xfd68cf9b, Offset: 0x12f8
// Size: 0x146
function function_8b43da33() {
    function_23036faa(#"cursor", "title", #"");
    if (isdefined(level.interactive_map.var_2c15274b)) {
        foreach (index, description in level.interactive_map.var_2c15274b.descriptions) {
            function_dcedf7f(#"cursor", index, "descriptionList");
        }
        getplayers()[0] prompts::function_ee7adae5(#"cursor");
        level.interactive_map.var_2c15274b = undefined;
    }
}

// Namespace interactive_map/interactive_map
// Params 0, eflags: 0x0
// Checksum 0x2ad97669, Offset: 0x1448
// Size: 0x156
function function_2fb5abd8() {
    level notify(#"hash_546b1fe54ba63887");
    player = getplayers()[0];
    player clientfield::set_to_player("toggle_interactive_map", 0);
    util::wait_network_frame(2);
    player prompts::function_ee7adae5(#"cursor");
    function_23036faa(#"cursor", "widgetName", #"");
    namespace_61e6d095::function_9ade1d9b(#"interactive_map", "cursor" + "." + "update", 1, 1, 0, 0, 1);
    namespace_61e6d095::function_43525bc6(#"interactive_map", #"cursor", 1);
    level.interactive_map.var_2c15274b = undefined;
}

// Namespace interactive_map/interactive_map
// Params 6, eflags: 0x2 linked
// Checksum 0xdf5a7ee3, Offset: 0x15a8
// Size: 0x444
function add_object(uid, image = #"hash_215b9409f9d7cc36", var_6d62c29c, angle_offset, title, scale) {
    if (!isdefined(self.interactive_map)) {
        self.interactive_map = {};
    }
    if (!isdefined(uid)) {
        uid = self.interactive_map.uid;
    }
    if (!isdefined(var_6d62c29c)) {
        var_6d62c29c = self.interactive_map.var_6d62c29c;
    }
    if (!isdefined(angle_offset)) {
        angle_offset = self.interactive_map.angle_offset;
    }
    if (!isdefined(title)) {
        title = self.interactive_map.title;
    }
    if (!isdefined(scale)) {
        scale = self.interactive_map.scale;
    }
    if (!isdefined(uid) && isentity(self)) {
        uid = self getentitynumber();
    }
    if (!isdefined(uid)) {
        return;
    }
    level.interactive_map.objects[uid] = self;
    if (isdefined(self.interactive_map.image) && image == #"hash_215b9409f9d7cc36") {
        image = self.interactive_map.image;
    }
    self.interactive_map.uid = uid;
    self.interactive_map.image = image;
    self.interactive_map.var_6d62c29c = var_6d62c29c;
    self.interactive_map.angle_offset = angle_offset;
    self.interactive_map.title = title;
    self.interactive_map.scale = scale;
    if (!namespace_61e6d095::exists(#"interactive_map")) {
        return;
    }
    function_db6cb581(uid, #"hash_21fb68e196ffe610");
    function_d0243e5b(uid, "image", image);
    function_d0243e5b(uid, "x", 0.5);
    function_d0243e5b(uid, "y", 0.5);
    if (is_true(var_6d62c29c)) {
        function_d0243e5b(uid, "angle", 0);
    }
    if (isdefined(title)) {
        function_d0243e5b(uid, "title", title);
    }
    if (isdefined(scale)) {
        function_d0243e5b(uid, "scale", scale);
    }
    function_d0243e5b(uid, "flags", 0);
    function_d0243e5b(uid, "state", 0);
    if (isdefined(self.var_62d718e2)) {
        foreach (var_55633c65 in self.var_62d718e2) {
            function_d0243e5b(uid, var_55633c65.name, var_55633c65.cur_value);
        }
    }
    self thread function_9dfe141f(uid, var_6d62c29c, angle_offset);
}

// Namespace interactive_map/interactive_map
// Params 2, eflags: 0x0
// Checksum 0xc0e21fdb, Offset: 0x19f8
// Size: 0x54
function function_d76aae9f(uid, state) {
    if (isdefined(level.interactive_map.objects[uid])) {
        function_d0243e5b(uid, "state", state);
    }
}

// Namespace interactive_map/interactive_map
// Params 2, eflags: 0x0
// Checksum 0x2b38f37d, Offset: 0x1a58
// Size: 0x15c
function function_c8d8772e(uid, flags) {
    if (isdefined(level.interactive_map.objects[uid])) {
        if (!isdefined(flags)) {
            flags = [];
        } else if (!isarray(flags)) {
            flags = array(flags);
        }
        var_c2e076fc = 0;
        foreach (flag in flags) {
            var_c2e076fc |= 1 << flag;
        }
        var_b89f8baa = function_dbf83dc4(uid, "flags");
        if (isdefined(var_b89f8baa)) {
            var_c2e076fc |= var_b89f8baa;
        }
        function_d0243e5b(uid, "flags", var_c2e076fc);
    }
}

// Namespace interactive_map/interactive_map
// Params 2, eflags: 0x0
// Checksum 0xf2fb9647, Offset: 0x1bc0
// Size: 0x158
function function_cc611397(uid, flags) {
    if (isdefined(level.interactive_map.objects[uid])) {
        var_c2e076fc = 0;
        var_b89f8baa = isdefined(function_dbf83dc4(uid, "flags")) ? function_dbf83dc4(uid, "flags") : 0;
        var_c2e076fc = var_b89f8baa;
        if (!isdefined(flags)) {
            flags = [];
        } else if (!isarray(flags)) {
            flags = array(flags);
        }
        foreach (flag in flags) {
            var_c2e076fc &= ~(1 << flag);
        }
    }
}

// Namespace interactive_map/interactive_map
// Params 1, eflags: 0x2 linked
// Checksum 0xa80503c8, Offset: 0x1d20
// Size: 0xb4
function remove_object(uid) {
    if (isdefined(level.interactive_map.objects[uid])) {
        level.interactive_map.objects[uid] notify(#"hash_7c1f9e1214f47b4e");
        if (namespace_61e6d095::exists(#"interactive_map")) {
            function_455d4424(uid);
        }
        arrayremoveindex(level.interactive_map.objects, uid, 1);
    }
}

// Namespace interactive_map/interactive_map
// Params 0, eflags: 0x0
// Checksum 0x27187758, Offset: 0x1de0
// Size: 0x102
function function_87f0056b() {
    if (namespace_61e6d095::exists(#"interactive_map")) {
        foreach (uid, object in level.interactive_map.objects) {
            level.interactive_map.objects[uid] notify(#"hash_7c1f9e1214f47b4e");
            function_455d4424(uid);
        }
    }
    if (isdefined(level.interactive_map.objects)) {
        level.interactive_map.objects = [];
    }
}

// Namespace interactive_map/interactive_map
// Params 3, eflags: 0x2 linked
// Checksum 0xd0711986, Offset: 0x1ef0
// Size: 0x64
function function_d0243e5b(uid, name, value) {
    namespace_61e6d095::set_data(#"interactive_map", "mapObjects" + "." + uid + "." + name, value);
}

// Namespace interactive_map/interactive_map
// Params 2, eflags: 0x2 linked
// Checksum 0x90d4a16a, Offset: 0x1f60
// Size: 0x5c
function function_dbf83dc4(uid, name) {
    namespace_61e6d095::get_data(#"interactive_map", "mapObjects" + "." + uid + "." + name);
}

// Namespace interactive_map/interactive_map
// Params 2, eflags: 0x0
// Checksum 0xbdee8adb, Offset: 0x1fc8
// Size: 0x34
function function_68ec091e(uid, scale) {
    function_d0243e5b(uid, "scale", scale);
}

// Namespace interactive_map/interactive_map
// Params 3, eflags: 0x2 linked
// Checksum 0x97e8af4b, Offset: 0x2008
// Size: 0x6c
function function_23036faa(uid, name, value) {
    namespace_61e6d095::function_9ade1d9b(#"interactive_map", "cursor." + "mapObjects" + "." + uid + "." + name, value);
}

// Namespace interactive_map/interactive_map
// Params 2, eflags: 0x2 linked
// Checksum 0xf3593af8, Offset: 0x2080
// Size: 0x62
function function_fce63823(uid, name) {
    return namespace_61e6d095::function_f7c4c669(#"interactive_map", "cursor." + "mapObjects" + "." + uid + "." + name);
}

// Namespace interactive_map/interactive_map
// Params 1, eflags: 0x2 linked
// Checksum 0x8a75026b, Offset: 0x20f0
// Size: 0x34
function function_835fb58e(scale) {
    function_23036faa(#"cursor", "scale", scale);
}

// Namespace interactive_map/interactive_map
// Params 2, eflags: 0x2 linked
// Checksum 0xef17c7c, Offset: 0x2130
// Size: 0x64
function function_41d66375(uid, list_name) {
    namespace_61e6d095::function_330981ed(#"interactive_map", "cursor." + "mapObjects" + "." + uid + "." + list_name);
}

// Namespace interactive_map/interactive_map
// Params 5, eflags: 0x2 linked
// Checksum 0x29ff7bc2, Offset: 0x21a0
// Size: 0x84
function function_39d12272(uid, index, name, value, list_name) {
    namespace_61e6d095::function_f2a9266(#"interactive_map", index, name, value, "cursor." + "mapObjects" + "." + uid + "." + list_name);
}

// Namespace interactive_map/interactive_map
// Params 3, eflags: 0x2 linked
// Checksum 0xaac03173, Offset: 0x2230
// Size: 0x74
function function_dcedf7f(uid, index, list_name) {
    namespace_61e6d095::function_7239e030(#"interactive_map", index, "cursor." + "mapObjects" + "." + uid + "." + list_name);
}

// Namespace interactive_map/interactive_map
// Params 3, eflags: 0x0
// Checksum 0x4ee077bd, Offset: 0x22b0
// Size: 0x62
function function_7793b318(uid, index, list_name) {
    return namespace_61e6d095::function_cd59371c(uid, index, "cursor." + "mapObjects" + "." + uid + "." + list_name);
}

// Namespace interactive_map/interactive_map
// Params 1, eflags: 0x2 linked
// Checksum 0xdbb8c7d4, Offset: 0x2320
// Size: 0xc0
function function_9af7280f(objects) {
    foreach (uid, object in objects) {
        if (ishash(uid)) {
            object add_object(uid);
            continue;
        }
        object add_object();
    }
}

// Namespace interactive_map/interactive_map
// Params 0, eflags: 0x2 linked
// Checksum 0x63088b7f, Offset: 0x23e8
// Size: 0x1b8
function function_6385c805() {
    array::add(level.interactive_map.var_147d40f0, self, 0);
    var_fe23d888 = self.origin - level.interactive_map.var_e1d2ab75.top_left;
    self.var_2ac0bdff = (vectordot(var_fe23d888, level.interactive_map.var_e1d2ab75.x_axis) / level.interactive_map.var_e1d2ab75.width, vectordot(var_fe23d888, level.interactive_map.var_e1d2ab75.y_axis) / level.interactive_map.var_e1d2ab75.height, 0);
    if (namespace_61e6d095::exists(#"interactive_map") && isdefined(self.var_62d718e2)) {
        foreach (var_55633c65 in self.var_62d718e2) {
            function_e0cc3b71(var_55633c65.name, var_55633c65.cur_value);
        }
    }
}

// Namespace interactive_map/interactive_map
// Params 1, eflags: 0x2 linked
// Checksum 0x373305b3, Offset: 0x25a8
// Size: 0x90
function function_59b2a130(triggers) {
    foreach (trigger in triggers) {
        trigger function_6385c805();
    }
}

// Namespace interactive_map/interactive_map
// Params 0, eflags: 0x0
// Checksum 0x9a180fb8, Offset: 0x2640
// Size: 0x2c
function function_5a9ea417() {
    arrayremovevalue(level.interactive_map.var_147d40f0, self);
}

// Namespace interactive_map/interactive_map
// Params 0, eflags: 0x0
// Checksum 0x1c4a69b6, Offset: 0x2678
// Size: 0x2e
function function_b2ece0a3() {
    if (isdefined(level.interactive_map.var_147d40f0)) {
        level.interactive_map.var_147d40f0 = [];
    }
}

// Namespace interactive_map/interactive_map
// Params 4, eflags: 0x0
// Checksum 0xb731d77c, Offset: 0x26b0
// Size: 0xb4
function function_9bc3d847(event, name, value, cur_value) {
    if (!isdefined(self.var_62d718e2)) {
        self.var_62d718e2 = [];
    } else if (!isarray(self.var_62d718e2)) {
        self.var_62d718e2 = array(self.var_62d718e2);
    }
    self.var_62d718e2[event] = {#name:name, #value:value, #cur_value:cur_value};
}

// Namespace interactive_map/interactive_map
// Params 2, eflags: 0x0
// Checksum 0x2e895136, Offset: 0x2770
// Size: 0xf4
function function_4692570b(event, value) {
    if (isdefined(self.var_62d718e2[event])) {
        self.var_62d718e2[event].cur_value = value;
        if (namespace_61e6d095::exists(#"interactive_map")) {
            if (isdefined(self.interactive_map.uid)) {
                function_d0243e5b(self.interactive_map.uid, self.var_62d718e2[event].name, self.var_62d718e2[event].cur_value);
                return;
            }
            function_e0cc3b71(self.var_62d718e2[event].name, self.var_62d718e2[event].cur_value);
        }
    }
}

// Namespace interactive_map/interactive_map
// Params 1, eflags: 0x0
// Checksum 0x334378d5, Offset: 0x2870
// Size: 0x74
function function_bd9c894c(description) {
    if (!isdefined(self.var_94ca2a30)) {
        self.var_94ca2a30 = [];
    } else if (!isarray(self.var_94ca2a30)) {
        self.var_94ca2a30 = array(self.var_94ca2a30);
    }
    self.var_94ca2a30[self.var_94ca2a30.size] = description;
}

// Namespace interactive_map/interactive_map
// Params 1, eflags: 0x0
// Checksum 0x87b057cb, Offset: 0x28f0
// Size: 0x34
function function_e2b5e638(description) {
    if (isdefined(self.var_94ca2a30)) {
        arrayremovevalue(self.var_94ca2a30, description, 0);
    }
}

// Namespace interactive_map/interactive_map
// Params 2, eflags: 0x2 linked
// Checksum 0x90fbc2ab, Offset: 0x2930
// Size: 0x144
function function_b5c2702b(prompt, var_248cbbcf) {
    var_248cbbcf = structcopy(var_248cbbcf);
    if (!isdefined(var_248cbbcf.groups)) {
        var_248cbbcf.groups = [];
    } else if (!isarray(var_248cbbcf.groups)) {
        var_248cbbcf.groups = array(var_248cbbcf.groups);
    }
    if (!isinarray(var_248cbbcf.groups, #"cursor")) {
        var_248cbbcf.groups[var_248cbbcf.groups.size] = #"cursor";
    }
    if (!isdefined(self.var_174e0272)) {
        self.var_174e0272 = [];
    } else if (!isarray(self.var_174e0272)) {
        self.var_174e0272 = array(self.var_174e0272);
    }
    var_248cbbcf.var_1df3804c = self;
    self.var_174e0272[prompt] = var_248cbbcf;
}

// Namespace interactive_map/interactive_map
// Params 1, eflags: 0x0
// Checksum 0x6264d305, Offset: 0x2a80
// Size: 0x3c
function function_4b1a5235(prompt) {
    if (isdefined(self.var_174e0272)) {
        arrayremoveindex(self.var_174e0272, prompt, 1);
    }
}

// Namespace interactive_map/interactive_map
// Params 1, eflags: 0x2 linked
// Checksum 0x12543637, Offset: 0x2ac8
// Size: 0x1d4
function close(cleanup) {
    level notify(#"close_interactive_map");
    player = getplayers()[0];
    player notify(#"close_interactive_map");
    player clientfield::set_to_player("toggle_interactive_map", 0);
    util::wait_network_frame(2);
    player prompts::function_ee7adae5(#"cursor");
    prompts::function_398ab9eb();
    namespace_61e6d095::function_9ade1d9b(#"interactive_map", "cursor.update", 0, 1);
    namespace_61e6d095::set_data(#"interactive_map", "update", 0, 1);
    namespace_61e6d095::remove(#"interactive_map");
    namespace_61e6d095::function_4279fd02(#"interactive_map");
    if (is_true(cleanup)) {
        level.interactive_map = undefined;
    } else {
        level.interactive_map.var_e1d2ab75 = undefined;
    }
    player val::reset(#"hash_46ef83540c23a2f7", "freezecontrols");
    player actions::function_6c59e78f(1);
}

// Namespace interactive_map/interactive_map
// Params 1, eflags: 0x0
// Checksum 0x2362ad61, Offset: 0x2ca8
// Size: 0x3b4
function function_fabe437a(var_248cbbcf) {
    waypoint = level.interactive_map.var_2c15274b.object;
    if (isdefined(waypoint.target)) {
        if (isstring(waypoint.target)) {
            if (isdefined(getent(waypoint.target, "targetname"))) {
                waypoint = getent(waypoint.target, "targetname");
            } else if (isdefined(struct::get(waypoint.target, "targetname"))) {
                waypoint = struct::get(waypoint.target, "targetname");
            }
        } else if (isstruct(waypoint.target) || isentity(waypoint.target)) {
            waypoint = waypoint.target;
        }
    }
    objectives::remove(#"map_waypoint");
    if (level.interactive_map.objects[#"map_waypoint"] === waypoint) {
        remove_object(#"map_waypoint");
        return;
    }
    objectives::goto(#"map_waypoint", waypoint.origin, undefined, 0, 0);
    if (isdefined(self.var_d9b5c896)) {
        thread namespace_96850e69::function_49dec5b(#"map_waypoint", undefined, self.var_d9b5c896);
    }
    if (isdefined(level.interactive_map.objects[#"map_waypoint"])) {
        level.interactive_map.objects[#"map_waypoint"] notify(#"hash_7c1f9e1214f47b4e");
        level.interactive_map.objects[#"map_waypoint"] = waypoint;
        waypoint thread function_9dfe141f(#"map_waypoint");
        function_d0243e5b(#"map_waypoint", "image", isdefined(waypoint.interactive_map.image) ? waypoint.interactive_map.image : #"hash_215b9409f9d7cc36");
    } else {
        waypoint add_object(#"map_waypoint", isdefined(waypoint.interactive_map.image) ? waypoint.interactive_map.image : #"hash_215b9409f9d7cc36", 0);
    }
    thread function_5cab7397();
    var_248cbbcf.player thread namespace_96850e69::show_objectives();
}

// Namespace interactive_map/interactive_map
// Params 0, eflags: 0x6 linked
// Checksum 0x3d307c6c, Offset: 0x3068
// Size: 0x9c
function private function_5cab7397() {
    level notify("f61ea4c2cf8a773");
    level endon(#"close_interactive_map", "6c5260e220bebf4", #"hash_64a3b02565bdf75f");
    level waittill(#"hash_5644658da7c85062");
    objectives::remove(#"map_waypoint");
    remove_object(#"map_waypoint");
}

// Namespace interactive_map/interactive_map
// Params 2, eflags: 0x6 linked
// Checksum 0xc15829b9, Offset: 0x3110
// Size: 0x7c
function private function_db6cb581(uid, widget_name = #"hash_21fb68e196ffe610") {
    function_d0243e5b(uid, "uid", uid);
    function_d0243e5b(uid, "widgetName", widget_name);
    thread function_fa8087e3();
}

// Namespace interactive_map/interactive_map
// Params 1, eflags: 0x6 linked
// Checksum 0x7673c73f, Offset: 0x3198
// Size: 0xec
function private function_455d4424(uid) {
    if (level.interactive_map.var_eb166cf5 === self || level.interactive_map.var_1896103a === self) {
        level.interactive_map.var_eb166cf5 = undefined;
        level.interactive_map.var_1896103a = undefined;
        function_8b43da33();
    }
    function_d0243e5b(uid, "widgetName", #"");
    namespace_61e6d095::function_6b97044d(#"interactive_map", "mapObjects" + "." + uid, 1);
    thread function_fa8087e3();
}

// Namespace interactive_map/interactive_map
// Params 3, eflags: 0x6 linked
// Checksum 0x4e781b7d, Offset: 0x3290
// Size: 0x266
function private function_9dfe141f(uid, var_6d62c29c, angle_offset = 0) {
    level endon(#"close_interactive_map", #"hash_64a3b02565bdf75f");
    self endon(#"death", #"hash_7c1f9e1214f47b4e");
    self thread function_8e91c74c(uid);
    while (true) {
        pos = self.origin;
        angles = self.angles;
        if (isentity(self)) {
            pos += rotatepoint(self getboundsmidpoint(), angles);
        }
        var_fe23d888 = pos - level.interactive_map.var_e1d2ab75.top_left;
        self.var_2ac0bdff = (vectordot(var_fe23d888, level.interactive_map.var_e1d2ab75.x_axis) / level.interactive_map.var_e1d2ab75.width, vectordot(var_fe23d888, level.interactive_map.var_e1d2ab75.y_axis) / level.interactive_map.var_e1d2ab75.height, 0);
        function_d0243e5b(uid, "x", self.var_2ac0bdff[0]);
        function_d0243e5b(uid, "y", self.var_2ac0bdff[1]);
        if (is_true(var_6d62c29c)) {
            function_d0243e5b(uid, "angle", angles[1] + angle_offset);
        }
        waitframe(1);
    }
}

// Namespace interactive_map/interactive_map
// Params 1, eflags: 0x6 linked
// Checksum 0x92e4ac19, Offset: 0x3500
// Size: 0x6c
function private function_8e91c74c(uid) {
    level endon(#"close_interactive_map", #"hash_64a3b02565bdf75f");
    self endon(#"hash_7c1f9e1214f47b4e");
    self waittill(#"death");
    thread remove_object(uid);
}

// Namespace interactive_map/interactive_map
// Params 1, eflags: 0x6 linked
// Checksum 0xd72055a1, Offset: 0x3578
// Size: 0x276
function private update_cursor(*var_ff0f9714) {
    level endon(#"hash_546b1fe54ba63887", #"close_interactive_map", #"hash_64a3b02565bdf75f");
    player = getplayers()[0];
    player endon(#"death");
    level.interactive_map.var_eb166cf5 = undefined;
    level.interactive_map.var_1896103a = undefined;
    var_eb166cf5 = undefined;
    while (true) {
        if (namespace_61e6d095::should_hide(#"interactive_map")) {
            waitframe(1);
            continue;
        }
        x = function_fce63823(#"cursor", "x");
        y = function_fce63823(#"cursor", "y");
        level.interactive_map.var_1cd32747 = (isdefined(x) ? x : 0.5, isdefined(y) ? y : 0.5, 0);
        level.interactive_map.var_87c49d20 = level.interactive_map.var_e1d2ab75.top_left + level.interactive_map.var_1cd32747[0] * level.interactive_map.var_e1d2ab75.width * level.interactive_map.var_e1d2ab75.x_axis + level.interactive_map.var_1cd32747[1] * level.interactive_map.var_e1d2ab75.height * level.interactive_map.var_e1d2ab75.y_axis;
        function_c9099483();
        function_393ad031();
        waitframe(1);
    }
}

// Namespace interactive_map/interactive_map
// Params 0, eflags: 0x6 linked
// Checksum 0x77601bd4, Offset: 0x37f8
// Size: 0x152
function private function_c9099483() {
    if (isdefined(level.interactive_map.var_eb166cf5) && !function_3fe61dc2(level.interactive_map.var_eb166cf5)) {
        thread function_11396e33(level.interactive_map.var_eb166cf5);
        level.interactive_map.var_eb166cf5 = undefined;
        return;
    }
    if (!isdefined(level.interactive_map.var_eb166cf5)) {
        foreach (object in level.interactive_map.objects) {
            if (function_3fe61dc2(object)) {
                thread function_7560d352(object);
                level.interactive_map.var_eb166cf5 = object;
                break;
            }
        }
    }
}

// Namespace interactive_map/interactive_map
// Params 1, eflags: 0x6 linked
// Checksum 0x590b2fd4, Offset: 0x3958
// Size: 0x118
function private function_3fe61dc2(object) {
    if (isdefined(object.var_2ac0bdff)) {
        delta = object.var_2ac0bdff - level.interactive_map.var_1cd32747;
        scale = isdefined(function_dbf83dc4(object.interactive_map.uid, "scale")) ? function_dbf83dc4(object.interactive_map.uid, "scale") : 1;
        if (abs(delta[0]) < 0.04 * scale && abs(delta[1]) < 0.04 * scale) {
            return true;
        }
    }
    return false;
}

// Namespace interactive_map/interactive_map
// Params 0, eflags: 0x6 linked
// Checksum 0x1f51ffaf, Offset: 0x3a78
// Size: 0x152
function private function_393ad031() {
    if (isdefined(level.interactive_map.var_1896103a) && !function_4c186262(level.interactive_map.var_1896103a)) {
        thread function_11396e33(level.interactive_map.var_1896103a);
        level.interactive_map.var_1896103a = undefined;
        return;
    }
    foreach (var_7188b3ba in level.interactive_map.var_147d40f0) {
        if (var_7188b3ba !== level.interactive_map.var_1896103a && function_4c186262(var_7188b3ba)) {
            thread function_7560d352(var_7188b3ba);
            level.interactive_map.var_1896103a = var_7188b3ba;
            break;
        }
    }
}

// Namespace interactive_map/interactive_map
// Params 1, eflags: 0x6 linked
// Checksum 0x93078834, Offset: 0x3bd8
// Size: 0x32
function private function_4c186262(var_7188b3ba) {
    return istouching(level.interactive_map.var_87c49d20, var_7188b3ba);
}

// Namespace interactive_map/interactive_map
// Params 1, eflags: 0x6 linked
// Checksum 0x54415d8c, Offset: 0x3c18
// Size: 0x254
function private function_7560d352(object) {
    object notify(#"hash_36f946ec36b9e18f");
    if (isdefined(object.var_f90e2591)) {
        object thread [[ object.var_f90e2591 ]]();
    }
    if (isdefined(object.var_62d718e2[#"hash_34d2747d17c812f9"])) {
        object.var_62d718e2[#"hash_34d2747d17c812f9"].cur_value = object.var_62d718e2[#"hash_34d2747d17c812f9"].value;
        if (isdefined(object.interactive_map.uid)) {
            function_d0243e5b(object.interactive_map.uid, object.var_62d718e2[#"hash_34d2747d17c812f9"].name, object.var_62d718e2[#"hash_34d2747d17c812f9"].cur_value);
        } else {
            function_e0cc3b71(object.var_62d718e2[#"hash_34d2747d17c812f9"].name, object.var_62d718e2[#"hash_34d2747d17c812f9"].cur_value);
        }
    }
    if (function_a246a802(object)) {
        function_23036faa(#"cursor", "rightAligned", object.var_2ac0bdff[0] < 0.5);
        function_23036faa(#"cursor", "bottomAligned", object.var_2ac0bdff[1] < 0.5);
        function_e4d34e68(1);
        function_9e8d4999(object.var_d9b5c896, object.var_94ca2a30, object.var_174e0272, object);
    }
}

// Namespace interactive_map/interactive_map
// Params 1, eflags: 0x6 linked
// Checksum 0x3aafee12, Offset: 0x3e78
// Size: 0x2ac
function private function_11396e33(object) {
    object notify(#"hash_c1b6fc0fc30a88a");
    if (isdefined(object.var_938b0e9b)) {
        object thread [[ object.var_938b0e9b ]]();
    }
    if (isdefined(object.var_62d718e2[#"hash_9ca7f8f691003b5"])) {
        object.var_62d718e2[#"hash_9ca7f8f691003b5"].cur_value = object.var_62d718e2[#"hash_9ca7f8f691003b5"].value;
        if (isdefined(object.interactive_map.uid)) {
            function_d0243e5b(object.interactive_map.uid, object.var_62d718e2[#"hash_9ca7f8f691003b5"].name, object.var_62d718e2[#"hash_9ca7f8f691003b5"].cur_value);
        } else {
            function_e0cc3b71(object.var_62d718e2[#"hash_9ca7f8f691003b5"].name, object.var_62d718e2[#"hash_9ca7f8f691003b5"].cur_value);
        }
    }
    if (level.interactive_map.var_2c15274b.object === object) {
        var_240f71c = object === level.interactive_map.var_1896103a;
        var_6d991c4e = level.interactive_map.var_1896103a;
        if (var_240f71c) {
            var_6d991c4e = level.interactive_map.var_eb166cf5;
        }
        if (function_a246a802(object) && !function_a246a802(var_6d991c4e)) {
            function_e4d34e68(0);
            function_8b43da33();
            return;
        }
        if (function_a246a802(object) && function_a246a802(var_6d991c4e)) {
            function_9e8d4999(var_6d991c4e.var_d9b5c896, var_6d991c4e.var_94ca2a30, var_6d991c4e.var_174e0272, var_6d991c4e);
        }
    }
}

// Namespace interactive_map/interactive_map
// Params 1, eflags: 0x6 linked
// Checksum 0x46e68b2f, Offset: 0x4130
// Size: 0x3a
function private function_a246a802(object) {
    return isdefined(object.var_d9b5c896) || isdefined(object.var_94ca2a30) || isdefined(object.var_174e0272);
}

// Namespace interactive_map/interactive_map
// Params 0, eflags: 0x6 linked
// Checksum 0x506640c1, Offset: 0x4178
// Size: 0x3c
function private function_fa8087e3() {
    namespace_61e6d095::set_data(#"interactive_map", "update", 1, 1, 0, 0, 1);
}

