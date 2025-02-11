#using script_71527a5629b857da;
#using scripts\core_common\array_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\math_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\struct;
#using scripts\core_common\util_shared;

#namespace smart_bundle;

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0x9c4d2d8d, Offset: 0x2a8
// Size: 0x1c
function function_7b0cd269() {
    flag::init("sb_reset_all");
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0xbfff5369, Offset: 0x2d0
// Size: 0x2fc
function function_b904b36d() {
    /#
        self.var_60b8c535 = gettime();
    #/
    self.var_84410238 = struct::get_array("smart_bundle", "script_noteworthy");
    self.var_84410238 = arraycombine(self.var_84410238, struct::get_array("smart_bundle", "variantname"), 0, 0);
    /#
        level.smart_bundle.var_17715510 = getdvarint(#"hash_2df1d55877e98127", 0);
        if (is_true(level.smart_bundle.var_17715510)) {
            self.var_d4a6710d = [];
            self.var_d4a6710d[#"hash_4bb619fee6f7679e"] = [];
            for (i = 0; i < self.var_84410238.size; i++) {
                if (isdefined(self.var_84410238[i].targetname)) {
                    if (!isdefined(self.var_d4a6710d[self.var_84410238[i].targetname])) {
                        self.var_d4a6710d[self.var_84410238[i].targetname] = [];
                    }
                    self.var_d4a6710d[self.var_84410238[i].targetname][self.var_d4a6710d[self.var_84410238[i].targetname].size] = self.var_84410238[i];
                    continue;
                }
                self.var_d4a6710d[#"hash_4bb619fee6f7679e"][self.var_d4a6710d[#"hash_4bb619fee6f7679e"].size] = self.var_84410238[i];
            }
        }
    #/
    self.var_99772156 = [];
    self function_32f64450();
    for (i = 0; i < self.var_84410238.size; i++) {
        self.var_84410238[i] function_8eabba5();
        self.var_84410238[i] thread function_d199bc6b();
    }
    /#
        self.var_770cd5ec = gettime();
        self.var_4eb8c8f6 = (self.var_770cd5ec - self.var_60b8c535) / 1000;
    #/
    /#
        if (is_true(level.smart_bundle.var_17715510)) {
            self thread function_491e6cbe();
        }
    #/
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0xaff77cf3, Offset: 0x5d8
// Size: 0xae
function function_bda27289() {
    var_c210334b = [];
    for (i = 0; i < self.var_146f1420.size; i++) {
        if (isspawner(self.var_146f1420[i])) {
            self.var_49275033[self.var_49275033.size] = self.var_146f1420[i];
            continue;
        }
        var_c210334b[var_c210334b.size] = self.var_146f1420[i];
    }
    if (self.var_49275033.size) {
        self.var_146f1420 = var_c210334b;
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0xe8d055dd, Offset: 0x690
// Size: 0x482
function function_8eabba5() {
    self.var_39a8d200 = "initializing";
    self.var_146f1420 = self util::get_linked_ents();
    self.var_4cc5f984 = [];
    self.var_4961c57a = self function_7f8ba812();
    self.var_42ae3297 = [];
    self.var_1a682b0f = [];
    self.var_435fd319 = [];
    self.var_5df1a845 = [];
    self.var_49275033 = [];
    self.var_468b39b = 0;
    self function_459301ea();
    self function_7d6d474a();
    function_bda27289();
    function_9a3f951a(1);
    function_49ff1123();
    self.var_2b96e535 = 1;
    if (!(isdefined(self.variantname) && self.variantname == "smart_bundle")) {
        if (isdefined(self.script_parameters)) {
            values = strtok(self.script_parameters, " ");
            foreach (value in values) {
                switch (value) {
                case #"permanent":
                    self.permanent = 1;
                    break;
                case #"hash_35012437f689006a":
                    self.var_7f582284 = 1;
                    break;
                case #"hash_4ce8ffa2208104d1":
                    self.var_8c524d0b = 1;
                    break;
                case #"hash_6bc7f996db1c551e":
                    self.var_43db0d3e = 1;
                    break;
                default:
                    /#
                        iprintln("<dev string:x38>" + value);
                    #/
                    break;
                }
            }
        }
    }
    if (is_true(self.var_8c524d0b)) {
        if (isdefined(self.targetname)) {
            if (!isdefined(self.script_flag_true)) {
                self.script_flag_true = "";
            }
            self.script_flag_true = self.script_flag_true + " " + self.targetname + "_flag_true";
            self.var_38a97b32 = self.targetname + "_flag_true";
        } else {
            /#
                iprintln("<dev string:x5b>" + self.origin + "<dev string:x76>");
            #/
        }
    }
    if (isdefined(self.script_flag_true)) {
        self.var_12b42a5c = create_flags_and_return_tokens(self.script_flag_true);
    }
    if (isdefined(self.script_flag_false)) {
        self.var_67f376ee = create_flags_and_return_tokens(self.script_flag_false);
    }
    /#
        if (is_true(level.smart_bundle.var_17715510)) {
            self.var_a0bbcf82 = 0;
            foreach (ent in self.var_49275033) {
                if (!isdefined(ent.vehicletype)) {
                    self.var_a0bbcf82 = 1;
                    break;
                }
            }
        }
    #/
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0xbe52fa78, Offset: 0xb20
// Size: 0xb8
function function_7d6d474a() {
    a_s_targets = self.var_4961c57a;
    foreach (s_target in a_s_targets) {
        if (s_target scene::function_9503138e()) {
            self.var_468b39b = 1;
            self.scene_name = s_target.scriptbundlename;
            return;
        }
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0x67cf3d20, Offset: 0xbe0
// Size: 0x2a0
function function_d199bc6b() {
    self endon(#"death");
    self endon(#"hash_259aadae63b5fba0");
    if (!isdefined(self.script_flag_true) && !isdefined(self.script_flag_false)) {
        /#
            iprintlnbold("<dev string:x9e>" + self.origin + "<dev string:xb2>");
        #/
        return;
    }
    /#
        if (is_true(level.smart_bundle.var_17715510)) {
            self thread function_a6298abd();
        }
    #/
    while (true) {
        self.var_39a8d200 = "wait_activate";
        self notify(self.var_39a8d200);
        if (!is_true(function_c8d0e6e())) {
            self function_e4a02f4e();
        }
        self.var_39a8d200 = "constructing";
        self notify(self.var_39a8d200);
        if (!is_true(function_c8d0e6e())) {
            function_4cc8ffdb();
        }
        self.var_39a8d200 = "active";
        self notify(self.var_39a8d200);
        if (!is_true(function_c8d0e6e())) {
            self function_3fad8c3b();
        }
        if (is_true(self.permanent)) {
            break;
        }
        self.var_39a8d200 = "wait_deactivate";
        self notify(self.var_39a8d200);
        if (!is_true(function_c8d0e6e())) {
            function_7b8674fb();
        }
        self.var_39a8d200 = "destructing";
        self notify(self.var_39a8d200);
        if (!is_true(function_c8d0e6e())) {
            self function_cd166c09();
        }
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0x8f7790d5, Offset: 0xe88
// Size: 0x15e
function function_e4a02f4e() {
    if (is_true(self.var_7f582284)) {
        self.var_7f582284 = undefined;
        return;
    }
    self.var_b5f8363 = undefined;
    while (true) {
        time_check = gettime();
        if (isdefined(self.var_12b42a5c)) {
            self function_48b43844(self.var_12b42a5c, 1);
        }
        if (isdefined(self.var_67f376ee)) {
            self function_48b43844(self.var_67f376ee, 0);
        }
        if (isdefined(self.radius)) {
            dist = distance(self.origin, level.player getorigin()) - self.radius;
            if (dist > 0) {
                dist /= 320;
                dist = math::clamp(dist, 0.05, 2);
                /#
                    debug_radius(dist);
                #/
                wait dist;
            }
        }
        if (time_check == gettime()) {
            break;
        }
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0x683e7bf8, Offset: 0xff0
// Size: 0xc4
function function_4cc8ffdb() {
    if (isdefined(self.var_623ac581)) {
        if (!is_true([[ self.var_623ac581 ]]())) {
            return;
        }
    }
    function_30c324b5();
    function_f2f249d();
    function_12a6420e();
    function_3ccd66c3();
    if (self.var_468b39b) {
        thread function_bc78de5d();
    } else if (self.var_49275033.size) {
        function_30e5290f();
    }
    thread function_40af2aa3();
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0xac4b8cce, Offset: 0x10c0
// Size: 0x8
function function_3fad8c3b() {
    return true;
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0x126c8e7e, Offset: 0x10d0
// Size: 0x34
function function_7b8674fb() {
    self endon(#"despawn");
    self function_f3d46509(1);
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0x3db6753b, Offset: 0x1110
// Size: 0x15c
function function_cd166c09() {
    self notify(#"hash_740faf03c1eeca5b");
    function_1ae872f3();
    function_9a3f951a();
    function_729e9efe();
    function_2c8d3c01();
    if (isdefined(self.var_60efc9d0)) {
        for (i = self.var_60efc9d0.size - 1; i >= 0; i--) {
            if (isalive(self.var_60efc9d0[i])) {
                self.var_60efc9d0[i] delete();
            }
        }
        self.var_60efc9d0 = undefined;
    }
    if (self.var_42ae3297.size) {
        for (i = 0; i < self.var_42ae3297.size; i++) {
            if (isdefined(self.var_42ae3297[i])) {
                self.var_42ae3297[i] delete();
            }
        }
    }
    self.var_42ae3297 = [];
    function_389d0cb3();
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0x81ee780d, Offset: 0x1278
// Size: 0x1e6
function function_30c324b5() {
    if (self.var_4cc5f984.size == 0) {
        return;
    }
    self.var_454745b9 = [];
    foreach (sm in self.var_4cc5f984) {
        var_75026f76 = util::spawn_model(sm.model, sm.origin, sm.angles, 0, 1);
        if (isdefined(sm.linkname)) {
            var_75026f76.linkname = sm.linkname;
        }
        if (isdefined(sm.targetname)) {
            var_75026f76.targetname = sm.targetname;
        }
        if (isdefined(sm.script_noteworthy)) {
            var_75026f76.script_noteworthy = sm.script_noteworthy;
        }
        if (isdefined(sm.script_parameters)) {
            var_75026f76.script_parameters = sm.script_parameters;
        }
        if (isdefined(sm.modelscale)) {
            if (isstring(sm.modelscale)) {
                sm.modelscale = float(sm.modelscale);
            }
            var_75026f76 setscale(sm.modelscale);
        }
        self.var_454745b9[self.var_454745b9.size] = var_75026f76;
    }
    waittillframeend();
    self notify(#"hash_2c5cc8d3d6ed8b34");
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0x108937c0, Offset: 0x1468
// Size: 0x36
function function_1ae872f3() {
    if (isdefined(self.var_454745b9)) {
        array::delete_all(self.var_454745b9);
        self.var_454745b9 = undefined;
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 1, eflags: 0x0
// Checksum 0x4a62d990, Offset: 0x14a8
// Size: 0x15c
function function_9a3f951a(*first_init) {
    for (i = 0; i < self.var_146f1420.size; i++) {
        if (self.var_146f1420[i].classname == "script_model" || self.var_146f1420[i].classname == "script_brushmodel") {
            self function_dd63e599(self.var_146f1420[i]);
        } else if (strstartswith(self.var_146f1420[i].classname, "light")) {
            self function_dd3b5896(self.var_146f1420[i]);
        }
        if (!((i + 1) % 20)) {
            waitframe(1);
        }
    }
    /#
        if (i > 20) {
            name = "<dev string:x10f>";
            if (isdefined(self.targetname)) {
                name = self.targetname;
            }
            iprintln(i + "<dev string:x11a>" + name);
        }
    #/
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0x4192aade, Offset: 0x1610
// Size: 0x134
function function_f2f249d() {
    for (i = 0; i < self.var_146f1420.size; i++) {
        if (self.var_146f1420[i].classname == "script_model" || self.var_146f1420[i].classname == "script_brushmodel") {
            if (isdefined(self.var_146f1420[i].var_12b42a5c) || isdefined(self.var_146f1420[i].var_67f376ee)) {
                self thread function_46173073(self.var_146f1420[i]);
            } else {
                self function_f91a4fac(self.var_146f1420[i]);
            }
            continue;
        }
        if (strstartswith(self.var_146f1420[i].classname, "light")) {
            self function_7f992074(self.var_146f1420[i]);
        }
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 1, eflags: 0x0
// Checksum 0x3796ae58, Offset: 0x1750
// Size: 0x54
function function_dd63e599(script_model) {
    script_model hide_notsolid();
    if (script_model.classname == "script_brushmodel") {
        script_model connectpaths();
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 1, eflags: 0x0
// Checksum 0x734742ca, Offset: 0x17b0
// Size: 0x54
function function_f91a4fac(script_model) {
    script_model show_solid();
    if (script_model.classname == "script_brushmodel") {
        script_model disconnectpaths();
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0xffb23bf2, Offset: 0x1810
// Size: 0x34
function hide_notsolid() {
    self hide();
    self notsolid();
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0x3e3c8f0e, Offset: 0x1850
// Size: 0x34
function show_solid() {
    self show();
    self solid();
}

// Namespace smart_bundle/namespace_f93be06c
// Params 1, eflags: 0x0
// Checksum 0x4385206, Offset: 0x1890
// Size: 0x130
function function_46173073(script_model) {
    self endon(#"hash_740faf03c1eeca5b");
    script_model endon(#"death");
    while (true) {
        if (isdefined(script_model.var_67f376ee)) {
            script_model function_48b43844(script_model.var_67f376ee, 0);
        }
        if (isdefined(script_model.var_12b42a5c)) {
            script_model function_48b43844(script_model.var_12b42a5c, 1);
        }
        self function_f91a4fac(script_model);
        if (isdefined(script_model.var_67f376ee)) {
            script_model function_7022dcf2(script_model.var_67f376ee, 1);
        }
        if (isdefined(script_model.var_12b42a5c)) {
            script_model function_7022dcf2(script_model.var_12b42a5c, 0);
        }
        self function_dd63e599(script_model);
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 1, eflags: 0x0
// Checksum 0x6637a0d9, Offset: 0x19c8
// Size: 0x54
function function_dd3b5896(light) {
    if (!isdefined(light.var_2151803f)) {
        light.var_2151803f = light getlightintensity();
    }
    light setlightintensity(0);
}

// Namespace smart_bundle/namespace_f93be06c
// Params 1, eflags: 0x0
// Checksum 0x9819a6d, Offset: 0x1a28
// Size: 0x6c
function function_7f992074(light) {
    intensity = 2;
    if (isdefined(light.var_2151803f)) {
        intensity = light.var_2151803f;
    }
    if (isdefined(light.script_intensity)) {
        intensity = light.script_intensity;
    }
    light setlightintensity(intensity);
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0x4bbc0d71, Offset: 0x1aa0
// Size: 0x2c
function function_3ccd66c3() {
    if (isdefined(self.script_exploder_radiant)) {
        activateclientradiantexploder(self.script_exploder_radiant);
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0x414b2383, Offset: 0x1ad8
// Size: 0x2c
function function_2c8d3c01() {
    if (isdefined(self.script_exploder_radiant)) {
        deactivateclientradiantexploder(self.script_exploder_radiant);
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0x482faff2, Offset: 0x1b10
// Size: 0x194
function function_32f64450() {
    weapons = [];
    entities = getentarray();
    for (i = 0; i < entities.size; i++) {
        if (!isdefined(entities[i].classname)) {
            continue;
        }
        if (strstartswith(entities[i].classname, "weapon_") && isdefined(entities[i].targetname)) {
            if (!isdefined(self.var_99772156[entities[i].targetname])) {
                self.var_99772156[entities[i].targetname] = [];
            }
            self.var_99772156[entities[i].targetname][self.var_99772156[entities[i].targetname].size] = entities[i];
            /#
                if (isdefined(level.smart_bundle.var_d4a6710d[entities[i].targetname]) && level.smart_bundle.var_d4a6710d[entities[i].targetname].size > 1) {
                    iprintlnbold("<dev string:x144>" + entities[i].targetname + "<dev string:x1d6>");
                }
            #/
        }
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0x927f3ccf, Offset: 0x1cb0
// Size: 0x190
function function_49ff1123() {
    if (!isdefined(self.targetname)) {
        return;
    }
    if (isdefined(level.smart_bundle.var_99772156[self.targetname])) {
        foreach (weapon in level.smart_bundle.var_99772156[self.targetname]) {
            if (isdefined(weapon.script_noteworthy)) {
                weapon.script_flag_true = weapon.script_noteworthy;
                weapon.var_12b42a5c = create_flags_and_return_tokens(weapon.script_flag_true);
            }
            if (isdefined(weapon.script_parameters)) {
                weapon.script_flag_false = weapon.script_parameters;
                weapon.var_67f376ee = create_flags_and_return_tokens(weapon.script_flag_false);
            }
            weapon.origin -= (0, 0, 4096);
            weapon.var_9da55e9 = 1;
            weapon hide();
            self.var_1a682b0f[self.var_1a682b0f.size] = weapon;
        }
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0x43f80764, Offset: 0x1e48
// Size: 0x186
function function_729e9efe() {
    for (i = 0; i < self.var_435fd319.size; i++) {
        if (isdefined(self.var_435fd319[i])) {
            self.var_435fd319[i] delete();
            continue;
        }
        entities = getentitiesinradius(self.var_1a682b0f[i].origin + (0, 0, 4096), 18);
        if (isdefined(entities)) {
            foreach (ent in entities) {
                if (!isdefined(ent.classname)) {
                    continue;
                }
                if (strstartswith(ent.classname, "weapon_") && !isdefined(ent.targetname)) {
                    ent delete();
                    break;
                }
            }
        }
    }
    self.var_435fd319 = [];
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0x8dd20f71, Offset: 0x1fd8
// Size: 0x9c
function function_12a6420e() {
    for (i = 0; i < self.var_1a682b0f.size; i++) {
        if (!isdefined(self.var_1a682b0f[i])) {
            continue;
        }
        weap = self.var_1a682b0f[i];
        if (isdefined(weap.var_12b42a5c)) {
            self thread function_799d23e5(weap);
            continue;
        }
        self function_5ec2506f(weap);
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 1, eflags: 0x0
// Checksum 0x43e4bee6, Offset: 0x2080
// Size: 0xba
function function_5ec2506f(weap) {
    var_7d90ea5c = spawnweapon(weap.item, weap.origin + (0, 0, 4096), weap.angles, weap.spawnflags);
    var_7d90ea5c.angles = weap.angles;
    self.var_435fd319[self.var_435fd319.size] = var_7d90ea5c;
    if (isdefined(self.targetname)) {
        self.var_435fd319[self.var_435fd319.size - 1].targetname = self.targetname;
    }
    return var_7d90ea5c;
}

// Namespace smart_bundle/namespace_f93be06c
// Params 1, eflags: 0x0
// Checksum 0x843371dc, Offset: 0x2148
// Size: 0x140
function function_799d23e5(weapon) {
    self endon(#"hash_740faf03c1eeca5b");
    weapon endon(#"death");
    while (true) {
        if (isdefined(weapon.var_67f376ee)) {
            weapon function_48b43844(weapon.var_67f376ee, 0);
        }
        if (isdefined(weapon.var_12b42a5c)) {
            weapon function_48b43844(weapon.var_12b42a5c, 1);
        }
        var_7d90ea5c = self function_5ec2506f(weapon);
        if (isdefined(weapon.var_67f376ee)) {
            weapon function_7022dcf2(weapon.var_67f376ee, 1);
        }
        if (isdefined(weapon.var_12b42a5c)) {
            weapon function_7022dcf2(weapon.var_12b42a5c, 0);
        }
        if (isdefined(var_7d90ea5c)) {
            var_7d90ea5c delete();
        }
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0x6ca23de6, Offset: 0x2290
// Size: 0x34
function function_c8d0e6e() {
    if (isdefined(self.var_5df1a845[self.var_39a8d200])) {
        return [[ self.var_5df1a845[self.var_39a8d200] ]]();
    }
    return 0;
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0xe721bb1, Offset: 0x22d0
// Size: 0x148
function function_8ffa3a73() {
    level endon(#"hash_6c615e84f3905f49");
    while (true) {
        level flag::wait_till("sb_reset_all");
        /#
            iprintln("<dev string:x24f>");
        #/
        foreach (smart_bundle in self.var_84410238) {
            smart_bundle function_cd166c09();
            smart_bundle notify(#"hash_259aadae63b5fba0");
        }
        level flag::wait_till_clear("sb_reset_all");
        /#
            iprintln("<dev string:x26f>");
        #/
        function_ecd7b564();
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0x438db19b, Offset: 0x2420
// Size: 0x90
function function_ecd7b564() {
    foreach (smart_bundle in self.var_84410238) {
        if (isdefined(smart_bundle)) {
            smart_bundle thread function_d199bc6b();
        }
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 1, eflags: 0x0
// Checksum 0xd6e00148, Offset: 0x24b8
// Size: 0x304
function function_6410533e(obj_struct) {
    obj_struct.var_c3133e27 = 0;
    obj_struct.var_c8823e4e = 0;
    obj_struct.var_dffd37e7 = 0;
    obj_struct.var_262caa7f = 0;
    assert(isdefined(obj_struct.targetname), "<dev string:x292>");
    foreach (token in obj_struct.var_3803ef1e) {
        switch (token) {
        case #"hash_402cb792dab0a907":
            obj_struct.var_dffd37e7 = 1;
            if (isdefined(obj_struct.target)) {
                obj_struct.var_1a7348fd = getent(obj_struct.target, "targetname");
            } else if (!isdefined(obj_struct.radius)) {
                obj_struct.radius = 512;
                /#
                    iprintln(obj_struct.targetname + "<dev string:x2fb>");
                #/
            }
            break;
        case #"optional":
            obj_struct.var_c8823e4e = 1;
            break;
        case #"hash_462a859212260647":
            obj_struct.var_c3133e27 = 1;
            break;
        case #"hash_56311e749da142f":
            obj_struct.var_262caa7f = 1;
            break;
        case #"hash_20eaf775a905fbf1":
            obj_struct.var_cc91063d = 1;
            break;
        default:
            /#
                iprintln(obj_struct.targetname + "<dev string:x339>" + token);
            #/
            break;
        }
    }
    if (isdefined(obj_struct.targetname)) {
        if (!isdefined(obj_struct.script_flag_true)) {
            obj_struct.script_flag_true = "";
        }
        if (!isdefined(obj_struct.script_flag_false)) {
            obj_struct.script_flag_false = "";
        }
        obj_struct.script_flag_true = obj_struct.targetname + "_active " + obj_struct.script_flag_true;
        obj_struct.script_flag_false = obj_struct.targetname + "_complete " + obj_struct.script_flag_false;
    }
    obj_struct function_51029384();
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0x32a516f5, Offset: 0x27c8
// Size: 0x10c
function function_40af2aa3() {
    for (i = 0; i < self.var_4961c57a.size; i++) {
        if (isdefined(self.var_4961c57a[i].script_noteworthy) && self.var_4961c57a[i].script_noteworthy == "objective_info") {
            desc = self.var_4961c57a[i].targetname;
            if (isdefined(self.var_4961c57a[i].script_objective)) {
                desc = self.var_4961c57a[i].script_objective;
            }
            if (!isdefined(desc)) {
                desc = "Objective with no description";
            }
            /#
                iprintln("<dev string:x35b>" + desc);
            #/
            self thread function_74620370(self.var_4961c57a[i]);
        }
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 1, eflags: 0x0
// Checksum 0x8bf13fb1, Offset: 0x28e0
// Size: 0x21e
function function_74620370(obj_struct) {
    obj_struct endon(#"hash_511658d5f7f609e6");
    if (obj_struct.var_262caa7f) {
        foreach (flag in obj_struct.var_12b42a5c) {
            level flag::set(flag);
        }
    }
    while (true) {
        obj_struct function_9a0ffb73();
        if (obj_struct.var_c3133e27) {
            if (!function_d48a3aef(obj_struct)) {
                return;
            }
        } else {
            obj_struct.var_691af0d0 = 1;
            label = undefined;
            if (is_true(obj_struct.var_dffd37e7)) {
                label = "Search Area";
                thread function_74b3f574(obj_struct);
            }
            desc = obj_struct.targetname;
            if (isdefined(obj_struct.script_objective)) {
                desc = obj_struct.script_objective;
            }
            if (isdefined(level.var_ebad26ee)) {
                level flag::wait_till_clear(level.var_ebad26ee);
            }
        }
        obj_struct function_f3d46509();
        if (isdefined(level.var_ebad26ee)) {
            level flag::wait_till_clear(level.var_ebad26ee);
        }
        obj_struct notify(#"hash_9c87e8499427b2e");
        obj_struct.var_691af0d0 = undefined;
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 1, eflags: 0x0
// Checksum 0x2afa920, Offset: 0x2b08
// Size: 0x308
function function_d48a3aef(obj_struct) {
    assert(isdefined(obj_struct.target), "<dev string:x369>" + obj_struct.targetname);
    ents = getentarray(obj_struct.target, "targetname");
    if (ents.size == 0) {
        return false;
    }
    ais = [];
    spawners = [];
    foreach (ent in ents) {
        if (isspawner(ent)) {
            spawners[spawners.size] = ent;
        }
    }
    time_check = gettime() + 5000;
    while (spawners.size != ais.size && time_check > gettime()) {
        ents = getentarray(obj_struct.target, "targetname");
        ais = [];
        foreach (ent in spawners) {
            if (isdefined(ent.var_de1cdf28) && isalive(ent.var_de1cdf28)) {
                ais[ais.size] = ent.var_de1cdf28;
            }
        }
        waitframe(1);
    }
    if (ais.size == 0) {
        /#
            iprintln("<dev string:x3af>");
        #/
        return false;
    }
    desc = obj_struct.targetname;
    if (isdefined(obj_struct.script_objective)) {
        desc = obj_struct.script_objective;
    }
    label = "Talk To";
    obj_struct.var_691af0d0 = 1;
    var_40ea6044 = (0, 0, 78);
    if (isdefined(level.var_ebad26ee)) {
        level flag::wait_till_clear(level.var_ebad26ee);
    }
    return true;
}

// Namespace smart_bundle/namespace_f93be06c
// Params 1, eflags: 0x0
// Checksum 0x8b90c10d, Offset: 0x2e18
// Size: 0x1f0
function function_74b3f574(obj_struct) {
    obj_struct endon(#"hash_9c87e8499427b2e");
    wait 0.25;
    if (!isdefined(obj_struct.radius)) {
        return;
    }
    inside = 0;
    mul = 1;
    while (true) {
        if (isdefined(obj_struct.radius)) {
            var_ac82e005 = distance(obj_struct.origin, level.player getorigin());
            var_333a51b7 = var_ac82e005 * mul;
            dist = distance(obj_struct.origin, level.player getorigin()) - obj_struct.radius * mul;
            if (!inside) {
                if (dist > 0) {
                    dist /= 320;
                    dist = math::clamp(dist, 0.05, 2);
                    wait dist;
                } else {
                    mul = 1.2;
                    inside = 1;
                    /#
                        iprintln("<dev string:x3ce>");
                    #/
                    obj_struct.var_6d4da557 = 1;
                }
            } else if (inside) {
                if (dist > 0) {
                    mul = 1;
                    inside = 0;
                    /#
                        iprintln("<dev string:x3e5>");
                    #/
                    obj_struct.var_6d4da557 = undefined;
                }
            }
        }
        waitframe(1);
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0x62a804e, Offset: 0x3010
// Size: 0x8a
function function_389d0cb3() {
    for (i = 0; i < self.var_4961c57a.size; i++) {
        if (is_true(self.var_4961c57a[i].var_691af0d0)) {
            self thread function_b2e08f9(self.var_4961c57a[i]);
        }
        self.var_4961c57a[i] notify(#"hash_511658d5f7f609e6");
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 1, eflags: 0x0
// Checksum 0xfbee2ca3, Offset: 0x30a8
// Size: 0x82
function function_b2e08f9(obj_struct) {
    obj_struct notify(#"hash_9c87e8499427b2e");
    if (isdefined(level.var_ebad26ee)) {
        level flag::wait_till_clear(level.var_ebad26ee);
    }
    obj_struct.var_691af0d0 = undefined;
    if (is_true(obj_struct.var_6d4da557)) {
        obj_struct.var_6d4da557 = undefined;
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 1, eflags: 0x0
// Checksum 0xfc1c764a, Offset: 0x3138
// Size: 0xe
function function_981cea53(*obj_id) {
    return false;
}

// Namespace smart_bundle/namespace_f93be06c
// Params 14, eflags: 0x0
// Checksum 0x94f84a98, Offset: 0x3150
// Size: 0x76
function function_a55d27bf(*objectivename, *objstate, *var_41cd1475, *var_398ae04, *var_cbf633b9, *var_ab2ea29a, *var_acf2f0c5, *var_fb9adc05, *var_264b768b, *var_4aba5bae, *var_1444b216, *var_a5a362, *var_616ed336, *objtype) {
    return false;
}

// Namespace smart_bundle/namespace_f93be06c
// Params 14, eflags: 0x0
// Checksum 0x13f4042d, Offset: 0x31d0
// Size: 0x76
function function_945b8496(*objectivename, *objstate, *var_41cd1475, *var_398ae04, *var_cbf633b9, *var_ab2ea29a, *var_acf2f0c5, *var_fb9adc05, *var_264b768b, *var_4aba5bae, *var_1444b216, *var_a5a362, *var_616ed336, *objtype) {
    return false;
}

// Namespace smart_bundle/namespace_f93be06c
// Params 3, eflags: 0x0
// Checksum 0xa0a9b129, Offset: 0x3250
// Size: 0x1e
function function_cf7e280(*objectivename, *locationname, *var_d217f8fd) {
    return false;
}

// Namespace smart_bundle/namespace_f93be06c
// Params 3, eflags: 0x0
// Checksum 0xea9328da, Offset: 0x3278
// Size: 0x1e
function function_864ef3e9(*objectivename, *locationname, *var_fad25b37) {
    return false;
}

// Namespace smart_bundle/namespace_f93be06c
// Params 1, eflags: 0x0
// Checksum 0xe5958b7, Offset: 0x32a0
// Size: 0xe
function function_e0683aa4(*objectivename) {
    return false;
}

// Namespace smart_bundle/namespace_f93be06c
// Params 1, eflags: 0x0
// Checksum 0xcaca94a8, Offset: 0x32b8
// Size: 0xe
function function_cc12d55a(*objectivename) {
    return false;
}

// Namespace smart_bundle/namespace_f93be06c
// Params 1, eflags: 0x0
// Checksum 0x2ec1ddaf, Offset: 0x32d0
// Size: 0xe
function function_fc5d17bb(*objectivename) {
    return false;
}

// Namespace smart_bundle/namespace_f93be06c
// Params 1, eflags: 0x0
// Checksum 0x47cd1205, Offset: 0x32e8
// Size: 0x3a
function create_flags_and_return_tokens(flag_string) {
    var_8042aabd = strtok(flag_string, " ");
    return var_8042aabd;
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0x28d5dc19, Offset: 0x3330
// Size: 0x62
function function_51029384() {
    if (isdefined(self.script_flag_true)) {
        self.var_12b42a5c = create_flags_and_return_tokens(self.script_flag_true);
    }
    if (isdefined(self.script_flag_false)) {
        self.var_67f376ee = create_flags_and_return_tokens(self.script_flag_false);
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0xe0d43e6e, Offset: 0x33a0
// Size: 0x144
function function_459301ea() {
    for (i = 0; i < self.var_146f1420.size; i++) {
        self.var_146f1420[i] function_51029384();
    }
    for (i = 0; i < self.var_4961c57a.size; i++) {
        if (isdefined(self.var_4961c57a[i].script_parameters)) {
            self.var_4961c57a[i].var_3803ef1e = strtok(self.var_4961c57a[i].script_parameters, " ");
        }
        if (isdefined(self.var_4961c57a[i].script_noteworthy) && self.var_4961c57a[i].script_noteworthy == "objective_info") {
            self function_6410533e(self.var_4961c57a[i]);
        }
        self.var_4961c57a[i] function_51029384();
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0x385bc97, Offset: 0x34f0
// Size: 0x180
function function_7f8ba812() {
    array = [];
    var_feebff9c = "linkname";
    if (isdefined(self.script_linkto)) {
        /#
            iprintlnbold("<dev string:x3fa>");
        #/
        var_feebff9c = "script_linkName";
    }
    linknames = util::get_links();
    for (i = 0; i < linknames.size; i++) {
        structs = struct::get_array(linknames[i], var_feebff9c);
        if (structs.size > 0) {
            foreach (struct in structs) {
                if (struct.variantname === "smart_model") {
                    self.var_4cc5f984[self.var_4cc5f984.size] = struct;
                    continue;
                }
                array[array.size] = struct;
            }
        }
    }
    return array;
}

// Namespace smart_bundle/namespace_f93be06c
// Params 2, eflags: 0x0
// Checksum 0x495c57ac, Offset: 0x3678
// Size: 0x88
function function_48b43844(array, state) {
    self endon(#"death");
    for (i = 0; i < array.size; i++) {
        if (level flag::get(array[i]) != state) {
            level waittill(array[i]);
            i = -1;
        }
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 1, eflags: 0x0
// Checksum 0x463364c7, Offset: 0x3708
// Size: 0xb8
function function_879a654e(var_5e752bb5) {
    ent = spawnstruct();
    ent.var_b5f8363 = var_5e752bb5.size;
    for (i = 0; i < ent.var_b5f8363; i++) {
        self childthread function_212661b4(var_5e752bb5[i], ent);
    }
    while (ent.var_b5f8363 > 0) {
        ent waittill(#"hash_600eff9ce29513a0");
        waittillframeend();
    }
    ent notify(#"die");
}

// Namespace smart_bundle/namespace_f93be06c
// Params 2, eflags: 0x0
// Checksum 0xf239cc46, Offset: 0x37c8
// Size: 0x40
function function_212661b4(var_b4314daf, ent) {
    level waittill(var_b4314daf);
    ent.var_b5f8363--;
    ent notify(#"hash_600eff9ce29513a0");
}

// Namespace smart_bundle/namespace_f93be06c
// Params 2, eflags: 0x0
// Checksum 0xdcdd5257, Offset: 0x3810
// Size: 0x88
function function_7022dcf2(array, state) {
    self endon(#"death");
    while (true) {
        for (i = 0; i < array.size; i++) {
            if (level flag::get(array[i]) == state) {
                return;
            }
        }
        level waittill(array);
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 4, eflags: 0x0
// Checksum 0x10bb64f7, Offset: 0x38a0
// Size: 0x110
function function_78f5e495(array1, state1, array2, state2) {
    self endon(#"death");
    if (!isdefined(array1) && !isdefined(array2)) {
        return;
    }
    if (!isdefined(array1)) {
        array1 = [];
    }
    if (!isdefined(array2)) {
        array2 = [];
    }
    while (true) {
        for (i = 0; i < array1.size; i++) {
            if (level flag::get(array1[i]) == state1) {
                return;
            }
        }
        for (i = 0; i < array2.size; i++) {
            if (level flag::get(array2[i]) == state2) {
                return;
            }
        }
        level waittill(array1, array2);
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 1, eflags: 0x0
// Checksum 0xc02a7587, Offset: 0x39b8
// Size: 0x158
function function_9a0ffb73(var_71e24629) {
    self endon(#"death");
    while (true) {
        time_check = gettime();
        if (isdefined(self.var_12b42a5c)) {
            self function_48b43844(self.var_12b42a5c, 1);
        }
        if (isdefined(self.var_67f376ee)) {
            self function_48b43844(self.var_67f376ee, 0);
        }
        if (is_true(var_71e24629) && isdefined(self.radius)) {
            dist = distance(self.origin, level.player getorigin()) - self.radius;
            if (dist > 0) {
                dist /= 320;
                dist = math::clamp(dist, 0.05, 2);
                wait dist;
            }
        }
        if (time_check == gettime()) {
            break;
        }
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 1, eflags: 0x0
// Checksum 0x960c43ea, Offset: 0x3b18
// Size: 0x130
function function_f3d46509(var_71e24629) {
    self endon(#"death");
    while (true) {
        time_check = gettime();
        self function_78f5e495(self.var_12b42a5c, 0, self.var_67f376ee, 1);
        if (is_true(var_71e24629) && isdefined(self.radius)) {
            dist = distance(self.origin, level.player getorigin()) - self.radius * 1.2;
            if (dist < 0) {
                dist /= 320;
                dist = math::clamp(dist, 0.05, 2);
                wait dist;
            }
        }
        if (time_check == gettime()) {
            break;
        }
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0xdd1fb0ff, Offset: 0x3c50
// Size: 0x30
function function_58ca92b7() {
    level.smart_bundle.unique_id++;
    return "smart_bundleid_" + level.smart_bundle.unique_id;
}

/#

    // Namespace smart_bundle/namespace_f93be06c
    // Params 0, eflags: 0x0
    // Checksum 0x98a14aef, Offset: 0x3c88
    // Size: 0x104
    function function_491e6cbe() {
        if (!isdefined(getdvar(#"hash_33f2d0ac296c4d13"))) {
            setdvar(#"hash_33f2d0ac296c4d13", "<dev string:x454>");
        }
        mapname = util::get_map_name();
        adddebugcommand("<dev string:x459>" + mapname + "<dev string:x46a>");
        adddebugcommand("<dev string:x459>" + mapname + "<dev string:x4b4>");
        adddebugcommand("<dev string:x459>" + mapname + "<dev string:x4fc>");
        self thread function_b86b7747();
    }

#/

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0x183ac2bb, Offset: 0x3d98
// Size: 0x64
function function_3bd2188a() {
    wait 1;
    for (i = 0; i < level.smart_bundle.var_84410238.size; i++) {
        level.smart_bundle.var_84410238[i] function_3bb15d22();
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0x59789ae, Offset: 0x3e08
// Size: 0x16e
function function_3bb15d22() {
    /#
        if (!self.var_a0bbcf82) {
            return;
        }
        if (isdefined(self.var_38a97b32)) {
            self notify("<dev string:x547>" + self.var_38a97b32);
            self notify(#"hash_46a4872a3e5fa801");
            self endon("<dev string:x547>" + self.var_38a97b32);
        } else {
            self endon(#"hash_46a4872a3e5fa801");
        }
        while (true) {
            if (!getdvarint(#"hash_7cd0134a1e4d074c")) {
                wait 1;
                continue;
            }
            color = (1, 0, 0);
            if (isdefined(self.var_38a97b32)) {
                if (level flag::get(self.var_38a97b32)) {
                    color = (0, 0, 1);
                }
                print3d(self.origin, self.var_38a97b32, color, 1, 2, 1);
            } else {
                print3d(self.origin, "<dev string:x555>", color, 1, 3, 1);
            }
            waitframe(1);
        }
    #/
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0x5c29aae9, Offset: 0x3f80
// Size: 0x50
function function_595fd211() {
    level endon(#"hash_54aee3abfd596cec");
    while (true) {
        ai = getactorteamarray("axis");
        waitframe(1);
    }
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0xdea483f6, Offset: 0x3fd8
// Size: 0x1ae
function function_d2b6003e() {
    level endon(#"hash_54aee3abfd596cec");
    self endon(#"death");
    wait 2;
    if (isdefined(self.var_12b42a5c)) {
        foreach (flag in self.var_12b42a5c) {
            self thread debug_smart_bundle_flag(flag);
        }
    }
    if (isdefined(self.var_67f376ee)) {
        foreach (flag in self.var_67f376ee) {
            self thread debug_smart_bundle_flag(flag);
        }
    }
    while (true) {
        /#
            print3d(self.origin - (0, 0, 72), self.var_39a8d200, (0, 0, 1), 0.7, 1, 1);
        #/
        waitframe(1);
    }
}

/#

    // Namespace smart_bundle/namespace_f93be06c
    // Params 0, eflags: 0x0
    // Checksum 0x9b9b614b, Offset: 0x4190
    // Size: 0x5e2
    function function_a6298abd() {
        self notify(#"hash_29b1f6bea26892aa");
        self endon(#"hash_29b1f6bea26892aa");
        level endon(#"hash_54aee3abfd596cec");
        wait 1;
        col = [];
        col[0] = (1, 0, 0);
        col[1] = (0, 1, 0);
        dist_threshold = 1300;
        var_a942f5e3 = 1000;
        var_88351da = 4000;
        while (true) {
            var_5d749e51 = getdvarint(#"hash_33f2d0ac296c4d13");
            if (!var_5d749e51) {
                wait 1;
                continue;
            }
            waitframe(1);
            player = getplayers()[0];
            dist = distance(player.origin, self.origin);
            if (dist > var_88351da) {
                continue;
            }
            if (dist < dist_threshold / 4) {
                dist = dist_threshold / 4;
            }
            mid = 0;
            var_7e52b54a = 0.75;
            var_f2cb5101 = 18;
            flags = [];
            if (isdefined(self.var_12b42a5c)) {
                foreach (flag in self.var_12b42a5c) {
                    flags[flags.size] = {#name:flag, #col:level flag::get(flag)};
                }
            }
            mid = flags.size;
            if (isdefined(self.var_67f376ee)) {
                foreach (flag in self.var_67f376ee) {
                    flags[flags.size] = {#name:flag, #col:level flag::get(flag) == 0};
                }
            }
            var_7e52b54a = var_7e52b54a * dist / dist_threshold;
            var_f2cb5101 = var_f2cb5101 * dist / dist_threshold;
            zoff = (0, 0, (flags.size + 2) * var_f2cb5101);
            sub = (0, 0, var_f2cb5101 * -1);
            curr = self.origin + zoff;
            header = "<dev string:x590>" + self.origin;
            if (isdefined(self.targetname)) {
                header = self.targetname;
            }
            var_cd52cdc6 = (0.5, 0.5, 0.5);
            if (self.var_39a8d200 == "<dev string:x59f>" || self.var_39a8d200 == "<dev string:x5b2>") {
                var_cd52cdc6 = (0, 1, 0);
                header += "<dev string:x5bc>";
            } else {
                header += "<dev string:x5c3>";
            }
            if (var_5d749e51 == 1 && dist > var_a942f5e3) {
                print3d(curr, header, var_cd52cdc6, 1, 1.5 * var_7e52b54a, 1);
                continue;
            }
            print3d(curr, header, var_cd52cdc6, 1, var_7e52b54a * 1.5, 1);
            curr += sub;
            if (mid > 0) {
                print3d(curr, "<dev string:x5cb>", (1, 1, 1), 1, var_7e52b54a * 0.75, 1);
                curr += sub;
            }
            for (i = 0; i < flags.size; i++) {
                if (i == mid && mid != flags.size) {
                    print3d(curr, "<dev string:x5e3>", (1, 1, 1), 1, var_7e52b54a * 0.75, 1);
                    curr += sub;
                }
                print3d(curr, flags[i].name, col[flags[i].col], 1, var_7e52b54a, 1);
                curr += sub;
            }
        }
    }

#/

// Namespace smart_bundle/namespace_f93be06c
// Params 1, eflags: 0x0
// Checksum 0x56b69f49, Offset: 0x4780
// Size: 0xe0
function debug_smart_bundle_flag(flag) {
    level endon(#"hash_54aee3abfd596cec");
    level notify(flag + "debug_smart_bundle_flag");
    level endon(flag + "debug_smart_bundle_flag");
    self endon(#"death");
    while (true) {
        level flag::wait_till_clear(flag);
        iprintln(flag + " Clear");
        level flag::wait_till(flag);
        iprintln(flag + " Set");
    }
}

/#

    // Namespace smart_bundle/namespace_f93be06c
    // Params 1, eflags: 0x0
    // Checksum 0x622ea7ca, Offset: 0x4868
    // Size: 0xac
    function debug_radius(dist) {
        sphere(self.origin, self.radius, (0.5, 0.5, 0), 0, undefined, int(dist / 0.05));
        print3d(self.origin, dist, (1, 1, 1), 1, 2, int(dist / 0.05));
    }

#/

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0x576b698b, Offset: 0x4920
// Size: 0x64
function function_b86b7747() {
    level endon(#"hash_54aee3abfd596cec");
    structs = struct::get_array("signpost_struct", "script_noteworthy");
    array::thread_all(structs, &function_1589ded);
}

// Namespace smart_bundle/namespace_f93be06c
// Params 0, eflags: 0x0
// Checksum 0xba83d203, Offset: 0x4990
// Size: 0x54
function function_1589ded() {
    level endon(#"hash_54aee3abfd596cec");
    /#
        print3d(self.origin, self.script_parameters, (1, 1, 1), 1, 0.3, 99999);
    #/
}

// Namespace smart_bundle/namespace_f93be06c
// Params 1, eflags: 0x0
// Checksum 0x9b8252c3, Offset: 0x49f0
// Size: 0x338
function function_e646a263(weapon_index) {
    self endon(#"hash_55722f50e357be3d");
    org = self.var_435fd319[weapon_index].origin;
    while (isdefined(self.var_435fd319[weapon_index])) {
        /#
            sphere(self.var_435fd319[weapon_index].origin, 4, (0, 0, 1), 0, undefined, 1);
        #/
        waitframe(1);
    }
    entities = undefined;
    while (true) {
        waitframe(1);
        entities = getentitiesinradius(self.var_1a682b0f[weapon_index].origin + (0, 0, 4096), 64);
        if (!isdefined(entities)) {
            /#
                sphere(self.var_1a682b0f[weapon_index].origin + (0, 0, 4096), 12, (1, 0, 0), 0, undefined, 1);
            #/
            continue;
        }
        if (isdefined(entities)) {
            foreach (ent in entities) {
                if (!isdefined(ent.classname)) {
                    continue;
                }
                if (strstartswith(ent.classname, "weapon_") && !isdefined(ent.targetname)) {
                    /#
                        sphere(ent.origin, 16, (0, 1, 0), 0, undefined, 100);
                    #/
                    ent.targetname = self.targetname;
                    self.var_435fd319[weapon_index] = ent;
                    self thread function_e646a263(weapon_index);
                    return;
                }
            }
        }
        /#
            sphere(self.var_1a682b0f[weapon_index].origin + (0, 0, 4096), 8, (1, 0, 0), 0, undefined, 1);
        #/
        /#
            sphere(self.var_1a682b0f[weapon_index].origin + (0, 0, 4096), 24, (1, 0, 0), 0, undefined, 1);
        #/
        /#
            sphere(self.var_1a682b0f[weapon_index].origin + (0, 0, 4096), 32, (1, 0, 0), 0, undefined, 1);
        #/
    }
}

