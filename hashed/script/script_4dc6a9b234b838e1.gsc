// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_cc411409;

// Namespace namespace_cc411409/namespace_cc411409
// Params 0, eflags: 0x2 linked
// Checksum 0x6b27759e, Offset: 0x100
// Size: 0xe0
function preinit() {
    if (!isdefined(level.var_30858358)) {
        clientfield::register("scriptmover", "ragdoll_launcher_id", 1, getminbitcountfornum(7), "int");
        clientfield::register("scriptmover", "ragdoll_launcher_mag", 1, getminbitcountfornum(4), "int");
        clientfield::register("actor", "ragdoll_launcher_id", 1, getminbitcountfornum(7), "int");
        level.var_30858358 = [];
    }
}

// Namespace namespace_cc411409/namespace_cc411409
// Params 2, eflags: 0x2 linked
// Checksum 0x54abdf51, Offset: 0x1e8
// Size: 0x146
function function_9a7edbff(origin, magnitude) {
    for (i = 1; i < 7; i++) {
        if (!isentity(level.var_30858358[i])) {
            level.var_30858358[i] = util::spawn_model(#"tag_origin", origin);
            level.var_30858358[i] clientfield::set("ragdoll_launcher_id", i);
            level.var_30858358[i] clientfield::set("ragdoll_launcher_mag", magnitude);
            level.var_30858358[i].index = i;
            level.var_30858358[i].magnitude = magnitude;
            level.var_30858358[i] thread function_9cffb95a();
            return level.var_30858358[i];
        }
    }
}

// Namespace namespace_cc411409/namespace_cc411409
// Params 2, eflags: 0x2 linked
// Checksum 0x13b5a664, Offset: 0x338
// Size: 0x1f4
function ragdoll_launch(var_ed6db408, magnitude) {
    if (!(isdefined(self) && isdefined(magnitude)) || is_true(self.var_873d65bd)) {
        return;
    }
    assert(magnitude <= 3, "<unknown string>" + magnitude + "<unknown string>");
    if (isvec(var_ed6db408)) {
        var_218aaae3 = function_72d3bca6(level.var_30858358, var_ed6db408, undefined, 0, 32);
        foreach (var_887796fa in var_218aaae3) {
            if (var_887796fa.magnitude === magnitude) {
                launcher = var_887796fa;
                break;
            }
        }
        if (!isdefined(launcher)) {
            launcher = function_9a7edbff(var_ed6db408, magnitude);
        }
    } else if (isentity(var_ed6db408)) {
        launcher = var_ed6db408;
    }
    if (!isdefined(launcher)) {
        return;
    }
    launcher thread function_9cffb95a();
    self startragdoll();
    self clientfield::set("ragdoll_launcher_id", launcher.index);
}

// Namespace namespace_cc411409/namespace_cc411409
// Params 0, eflags: 0x6 linked
// Checksum 0xc57f8358, Offset: 0x538
// Size: 0x54
function private function_9cffb95a() {
    self endon(#"death");
    self notify("15629674c8c062da");
    self endon("15629674c8c062da");
    wait(0.5);
    function_12d36686(self.index);
}

// Namespace namespace_cc411409/namespace_cc411409
// Params 1, eflags: 0x6 linked
// Checksum 0x15b2f1fa, Offset: 0x598
// Size: 0x7c
function private function_12d36686(index) {
    assert(isentity(level.var_30858358[index]), "<unknown string>");
    level.var_30858358[index] deletedelay();
    level.var_30858358[index] = undefined;
}

