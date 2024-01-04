// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;

#namespace namespace_643f86fe;

// Namespace namespace_643f86fe/namespace_1ef8852a
// Params 1, eflags: 0x6 linked
// Checksum 0xb79b19a2, Offset: 0xb8
// Size: 0xca
function private function_10de102b(outcome = "failed") {
    foreach (player in getlocalplayers()) {
        player function_4877c948(level.var_643f86fe.mapname, outcome);
    }
    level.var_643f86fe = undefined;
}

// Namespace namespace_643f86fe/namespace_1ef8852a
// Params 0, eflags: 0x6 linked
// Checksum 0x1cfec173, Offset: 0x190
// Size: 0xd0
function private function_4c80102b() {
    foreach (player in getlocalplayers()) {
        player function_bbe3235(level.var_643f86fe.mapname, level.var_643f86fe.gametype, player getchrname(), level.var_643f86fe.difficulty);
    }
}

// Namespace namespace_643f86fe/namespace_1ef8852a
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x268
// Size: 0x4
function private function_be258f26() {
    
}

// Namespace namespace_643f86fe/namespace_1ef8852a
// Params 1, eflags: 0x6 linked
// Checksum 0xae84ca54, Offset: 0x278
// Size: 0xc0
function private function_1c01a227(task) {
    level.var_643f86fe.var_31ac96bc = task;
    foreach (player in getlocalplayers()) {
        player function_cb812d61(task, level.var_643f86fe.difficulty);
    }
}

// Namespace namespace_643f86fe/namespace_1ef8852a
// Params 1, eflags: 0x6 linked
// Checksum 0xe8a8670e, Offset: 0x340
// Size: 0xa8
function private function_2c46b6f9(outcome) {
    foreach (player in getlocalplayers()) {
        player function_7a093b3b(level.var_643f86fe.var_31ac96bc, outcome);
    }
}

// Namespace namespace_643f86fe/event_6ba27c50
// Params 1, eflags: 0x24
// Checksum 0xab92be91, Offset: 0x3f0
// Size: 0x54
function private event_handler[event_6ba27c50] function_83a031fd(*eventstruct) {
    if (isdefined(level.var_643f86fe)) {
        function_2c46b6f9("failed");
        function_1c01a227(level.var_643f86fe.var_31ac96bc);
    }
}

// Namespace namespace_643f86fe/systemstatechange
// Params 1, eflags: 0x24
// Checksum 0x70689c4f, Offset: 0x450
// Size: 0x2cc
function private event_handler[systemstatechange] function_406f0371(eventstruct) {
    if (eventstruct.system == "a:obj") {
        s = strtok(eventstruct.state, ",");
        switch (s[0]) {
        case #"0":
            var_bf26b910 = s[4];
        case #"1":
            task = s[1];
            world.var_d2257418 = int(s[2]);
            var_6dfed201 = int(s[3]);
            break;
        case #"hash_defdefdefdefdef0":
            return;
        }
        if (!isdefined(level.var_643f86fe)) {
            if (!isdefined(var_bf26b910)) {
                var_bf26b910 = util::get_map_name();
            }
            level.var_643f86fe = {#gametype:getdvar(#"g_gametype"), #mapname:var_bf26b910};
        }
        if (!isdefined(level.var_643f86fe.difficulty)) {
            level.var_643f86fe.difficulty = world.var_d2257418;
        } else if (world.var_d2257418 != level.var_643f86fe.difficulty) {
            level.var_643f86fe.difficulty = world.var_d2257418;
            function_2c46b6f9("failed");
            function_1c01a227(level.var_643f86fe.var_31ac96bc);
        }
        if (isdefined(level.var_643f86fe.var_31ac96bc)) {
            function_2c46b6f9("completed");
        } else if (var_6dfed201) {
            function_be258f26();
        } else {
            function_4c80102b();
        }
        if (task == "_exit") {
            function_10de102b("completed");
        } else {
            function_1c01a227(task);
        }
    }
}

