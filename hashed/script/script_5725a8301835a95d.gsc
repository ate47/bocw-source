#using script_340a2e805e35f7a2;
#using scripts\core_common\array_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\content_manager;
#using scripts\core_common\flag_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;

#namespace namespace_1ab3fb7b;

// Namespace namespace_1ab3fb7b/namespace_1ab3fb7b
// Params 0, eflags: 0x5
// Checksum 0xb7b3acad, Offset: 0x100
// Size: 0x54
function private autoexec __init__system__() {
    system::register(#"hash_4e995bd55f8098d6", &preinit, undefined, &finalize, #"content_manager");
}

// Namespace namespace_1ab3fb7b/namespace_1ab3fb7b
// Params 0, eflags: 0x4
// Checksum 0x1a6ccf29, Offset: 0x160
// Size: 0x7c
function private preinit() {
    content_manager::register_script("harvest_essence", &function_a4cec352);
    content_manager::register_script("harvest_essence_small", &function_225965a4);
    content_manager::register_script("harvest_scrap", &function_7a918a3f);
}

// Namespace namespace_1ab3fb7b/namespace_1ab3fb7b
// Params 0, eflags: 0x4
// Checksum 0x863bc0fa, Offset: 0x1e8
// Size: 0x1c
function private finalize() {
    /#
        level thread init_devgui();
    #/
}

// Namespace namespace_1ab3fb7b/namespace_1ab3fb7b
// Params 1, eflags: 0x0
// Checksum 0xdafefb24, Offset: 0x210
// Size: 0x44
function function_a4cec352(instance) {
    function_871649b9(instance, #"hash_797f22647c9675c5", #"sr_harvesting_zombie_essence", 5);
}

// Namespace namespace_1ab3fb7b/namespace_1ab3fb7b
// Params 1, eflags: 0x0
// Checksum 0xb47422f5, Offset: 0x260
// Size: 0x4c
function function_225965a4(instance) {
    function_871649b9(instance, #"hash_1f16d05c9834eacd", #"sr_harvesting_zombie_essence_small", 25, (0, 0, -12));
}

// Namespace namespace_1ab3fb7b/namespace_1ab3fb7b
// Params 1, eflags: 0x0
// Checksum 0x698eca37, Offset: 0x2b8
// Size: 0x44
function function_7a918a3f(instance) {
    function_871649b9(instance, #"hash_773e201984b53b32", #"sr_harvesting_scrap", 5);
}

// Namespace namespace_1ab3fb7b/namespace_1ab3fb7b
// Params 5, eflags: 0x4
// Checksum 0xfe3250ad, Offset: 0x308
// Size: 0x384
function private function_871649b9(instance, var_eece1f6a, var_f8dfa2cf, n_spawns, v_offset = (0, 0, 0)) {
    level flag::wait_till(#"gameplay_started");
    instance flag::wait_till_clear(#"harvest_cleanup");
    a_spawns = array::randomize(isdefined(instance.contentgroups[var_eece1f6a]) ? instance.contentgroups[var_eece1f6a] : []);
    if (!a_spawns.size) {
        return;
    }
    /#
        if (getdvarint(#"hash_3a6e54c134a6a916", 0) || n_spawns == -1) {
            n_spawns = a_spawns.size;
        }
    #/
    a_items = [];
    for (i = 0; i < n_spawns; i++) {
        if (isdefined(a_spawns[i])) {
            var_7acb5180 = a_spawns[i] namespace_65181344::function_fd87c780(var_f8dfa2cf, 1);
            if (isdefined(var_7acb5180[0])) {
                var_1a517f12 = getscriptbundle(var_7acb5180[0].itementry.name);
                angleoffsetx = var_1a517f12.angleoffsetx;
                angleoffsety = var_1a517f12.angleoffsety;
                angleoffsetz = var_1a517f12.angleoffsetz;
                positionoffsetx = var_1a517f12.positionoffsetx;
                positionoffsety = var_1a517f12.positionoffsety;
                positionoffsetz = var_1a517f12.positionoffsetz;
                if (!isdefined(angleoffsetx)) {
                    angleoffsetx = 0;
                }
                if (!isdefined(angleoffsety)) {
                    angleoffsety = 0;
                }
                if (!isdefined(angleoffsetz)) {
                    angleoffsetz = 0;
                }
                if (!isdefined(positionoffsetx)) {
                    positionoffsetx = 0;
                }
                if (!isdefined(positionoffsety)) {
                    positionoffsety = 0;
                }
                if (!isdefined(positionoffsetz)) {
                    positionoffsetz = 0;
                }
                var_7acb5180[0].origin = a_spawns[i].origin + (positionoffsetx, positionoffsety, positionoffsetz) + v_offset;
                var_7acb5180[0].angles = a_spawns[i].angles + (angleoffsetx, angleoffsety, angleoffsetz);
                /#
                    a_spawns[i].var_b215c441 = 1;
                #/
                a_items = arraycombine(a_items, var_7acb5180);
            }
        }
    }
    instance.a_items = a_items;
    instance callback::function_d8abfc3d(#"portal_activated", &function_149da5dd);
    /#
        level util::delay(1, undefined, &function_95da1d88, instance, function_9e72a96(var_eece1f6a), var_f8dfa2cf);
    #/
}

// Namespace namespace_1ab3fb7b/namespace_1ab3fb7b
// Params 0, eflags: 0x4
// Checksum 0x289b3147, Offset: 0x698
// Size: 0x1cc
function private function_149da5dd() {
    self flag::set(#"harvest_cleanup");
    self callback::function_52ac9652(#"portal_activated", &function_149da5dd);
    /#
        a_spawns = struct::get_array(self.targetname, "<dev string:x38>");
        foreach (spawn in a_spawns) {
            spawn.var_b215c441 = undefined;
        }
    #/
    if (isdefined(self.a_items)) {
        foreach (item in self.a_items) {
            /#
                self.var_b215c441 = undefined;
            #/
            if (isdefined(item)) {
                item delete();
                waitframe(1);
            }
        }
        self.a_items = undefined;
    }
    self flag::clear(#"harvest_cleanup");
}

/#

    // Namespace namespace_1ab3fb7b/namespace_1ab3fb7b
    // Params 0, eflags: 0x4
    // Checksum 0xc7e09174, Offset: 0x870
    // Size: 0x13c
    function private init_devgui() {
        util::waittill_can_add_debug_command();
        util::add_devgui("<dev string:x42>", "<dev string:x74>");
        util::add_devgui("<dev string:x94>", "<dev string:xcc>");
        util::add_devgui("<dev string:xe7>", "<dev string:x110>");
        util::add_devgui("<dev string:x12b>", "<dev string:x15f>");
        util::add_devgui("<dev string:x181>", "<dev string:x1bd>");
        util::add_devgui("<dev string:x1da>", "<dev string:x207>");
        util::add_devgui("<dev string:x224>", "<dev string:x25e>");
        util::add_devgui("<dev string:x286>", "<dev string:x2c0>");
        util::add_devgui("<dev string:x2e3>", "<dev string:x31c>");
    }

    // Namespace namespace_1ab3fb7b/namespace_1ab3fb7b
    // Params 3, eflags: 0x4
    // Checksum 0xb9203fc9, Offset: 0x9b8
    // Size: 0x41e
    function private function_95da1d88(instance, var_eece1f6a, var_f8dfa2cf) {
        instance notify(#"hash_554bb5d130031f06");
        instance endon(#"hash_554bb5d130031f06");
        a_spawns = isdefined(instance.contentgroups[var_eece1f6a]) ? instance.contentgroups[var_eece1f6a] : [];
        if (!a_spawns.size) {
            return;
        }
        n_spawn = 0;
        var_9911be33 = "<dev string:x33f>" + var_eece1f6a;
        while (true) {
            var_794c9d5f = getdvarint(var_9911be33, 0);
            if (var_794c9d5f) {
                if (var_794c9d5f == 2) {
                    setdvar(var_9911be33, 1);
                    iprintlnbold("<dev string:x349>" + function_9e72a96(var_eece1f6a) + "<dev string:x35a>");
                    if (var_9911be33 == "<dev string:x36e>") {
                        v_offset = (0, 0, -12);
                    } else {
                        v_offset = (0, 0, 0);
                    }
                    instance function_149da5dd();
                    function_871649b9(instance, var_eece1f6a, var_f8dfa2cf, -1, v_offset);
                    iprintlnbold("<dev string:x38b>");
                }
                foreach (spawn in a_spawns) {
                    if (is_true(spawn.var_b215c441)) {
                        str_color = (1, 0.5, 0);
                    } else {
                        str_color = (0.75, 0.75, 0.75);
                    }
                    n_radius = 64;
                    n_dist = distance(spawn.origin, getplayers()[0].origin);
                    n_radius *= n_dist / 3000;
                    sphere(spawn.origin, n_radius, str_color, 1, 0, 7, 5);
                }
                if (var_794c9d5f == 3) {
                    setdvar(var_9911be33, 1);
                    if (n_spawn >= a_spawns.size - 1) {
                        n_spawn = 0;
                    }
                    s_spawn = a_spawns[n_spawn];
                    if (isdefined(s_spawn)) {
                        foreach (player in function_a1ef346b()) {
                            player setorigin(s_spawn.origin);
                        }
                        n_spawn++;
                    }
                }
            }
            waitframe(5);
        }
    }

#/
