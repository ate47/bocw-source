// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;

#namespace activities;

// Namespace activities/activities_util
// Params 1, eflags: 0x6 linked
// Checksum 0xb79b19a2, Offset: 0xb8
// Size: 0xca
function private function_10de102b(outcome = "failed") {
    foreach (player in getlocalplayers()) {
        player function_4877c948(level.activities.mapname, outcome);
    }
    level.activities = undefined;
}

// Namespace activities/activities_util
// Params 0, eflags: 0x6 linked
// Checksum 0x1cfec173, Offset: 0x190
// Size: 0xd0
function private function_4c80102b() {
    foreach (player in getlocalplayers()) {
        player function_bbe3235(level.activities.mapname, level.activities.gametype, player getchrname(), level.activities.difficulty);
    }
}

// Namespace activities/activities_util
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x268
// Size: 0x4
function private function_be258f26() {
    
}

// Namespace activities/activities_util
// Params 1, eflags: 0x6 linked
// Checksum 0xae84ca54, Offset: 0x278
// Size: 0xc0
function private function_1c01a227(task) {
    level.activities.var_31ac96bc = task;
    foreach (player in getlocalplayers()) {
        player function_cb812d61(task, level.activities.difficulty);
    }
}

// Namespace activities/activities_util
// Params 1, eflags: 0x6 linked
// Checksum 0xe8a8670e, Offset: 0x340
// Size: 0xa8
function private function_2c46b6f9(outcome) {
    foreach (player in getlocalplayers()) {
        player function_7a093b3b(level.activities.var_31ac96bc, outcome);
    }
}

// Namespace activities/event_6ba27c50
// Params 1, eflags: 0x24
// Checksum 0xab92be91, Offset: 0x3f0
// Size: 0x54
function private event_handler[event_6ba27c50] function_83a031fd(*eventstruct) {
    if (isdefined(level.activities)) {
        function_2c46b6f9("failed");
        function_1c01a227(level.activities.var_31ac96bc);
    }
}

// Namespace activities/systemstatechange
// Params 1, eflags: 0x24
// Checksum 0x70689c4f, Offset: 0x450
// Size: 0x2cc
function private event_handler[systemstatechange] function_406f0371(eventstruct) {
    if (eventstruct.system == "a:obj") {
        s = strtok(eventstruct.state, ",");
        switch (s[0]) {
        case #"0":
            levelname = s[4];
        case #"1":
            task = s[1];
            world.gameskill = int(s[2]);
            var_6dfed201 = int(s[3]);
            break;
        default:
            return;
        }
        if (!isdefined(level.activities)) {
            if (!isdefined(levelname)) {
                levelname = util::get_map_name();
            }
            level.activities = {#mapname:levelname, #gametype:getdvar(#"g_gametype")};
        }
        if (!isdefined(level.activities.difficulty)) {
            level.activities.difficulty = world.gameskill;
        } else if (world.gameskill != level.activities.difficulty) {
            level.activities.difficulty = world.gameskill;
            function_2c46b6f9("failed");
            function_1c01a227(level.activities.var_31ac96bc);
        }
        if (isdefined(level.activities.var_31ac96bc)) {
            function_2c46b6f9("completed");
        } else if (var_6dfed201) {
            function_be258f26();
        } else {
            function_4c80102b();
        }
        if (task == "_exit") {
            function_10de102b("completed");
            return;
        }
        function_1c01a227(task);
    }
}

