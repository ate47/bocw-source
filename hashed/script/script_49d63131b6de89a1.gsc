// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\exploder_shared.csc;

#namespace namespace_cf4aa5f0;

// Namespace namespace_cf4aa5f0/namespace_879a3794
// Params 6, eflags: 0x2 linked
// Checksum 0xf280a8f1, Offset: 0x88
// Size: 0x174
function function_6dbaba52(name, var_36286198, var_2f7c44e9, stop_exploders, var_50c0eadc, var_82e50bac = undefined) {
    if (!isdefined(level.rule)) {
        level.rule = [];
    }
    if (isdefined(level.rule[name])) {
        var_65e2dd7c = level.rule[name];
    } else {
        var_65e2dd7c = {#var_74a7721:var_82e50bac, #play:[], #var_e4474fe9:[], #stop:[], #kill:[]};
    }
    profilestart();
    function_6e561a85(var_65e2dd7c.play, var_36286198);
    function_6e561a85(var_65e2dd7c.var_e4474fe9, var_2f7c44e9);
    function_6e561a85(var_65e2dd7c.stop, stop_exploders);
    function_6e561a85(var_65e2dd7c.kill, var_50c0eadc);
    profilestop();
    level.rule[name] = var_65e2dd7c;
}

// Namespace namespace_cf4aa5f0/namespace_879a3794
// Params 2, eflags: 0x6 linked
// Checksum 0x42de1743, Offset: 0x208
// Size: 0x1ca
function private function_6e561a85(&var_c4d527a6, exploders) {
    if (!isdefined(exploders)) {
        return;
    }
    if (isarray(exploders)) {
        foreach (exploder in exploders) {
            if (isstring(exploder) || ishash(exploder)) {
                if (!isdefined(var_c4d527a6)) {
                    var_c4d527a6 = [];
                } else if (!isarray(var_c4d527a6)) {
                    var_c4d527a6 = array(var_c4d527a6);
                }
                if (!isinarray(var_c4d527a6, exploder)) {
                    var_c4d527a6[var_c4d527a6.size] = exploder;
                }
            }
        }
        return;
    }
    if (isstring(exploders) || ishash(exploders)) {
        if (!isdefined(var_c4d527a6)) {
            var_c4d527a6 = [];
        } else if (!isarray(var_c4d527a6)) {
            var_c4d527a6 = array(var_c4d527a6);
        }
        if (!isinarray(var_c4d527a6, exploders)) {
            var_c4d527a6[var_c4d527a6.size] = exploders;
        }
    }
}

// Namespace namespace_cf4aa5f0/namespace_879a3794
// Params 1, eflags: 0x6 linked
// Checksum 0x3d8a6e7a, Offset: 0x3e0
// Size: 0x12e
function private function_fcfe0dbe(name) {
    level endon(#"end_game");
    var_65e2dd7c = level.rule[name];
    assert(isdefined(var_65e2dd7c));
    if (isdefined(level.rule[name].var_74a7721)) {
        [[ level.rule[name].var_74a7721 ]]();
    }
    profilestart();
    function_3c540c33(var_65e2dd7c.kill, &exploder::kill_exploder);
    function_3c540c33(var_65e2dd7c.stop, &exploder::stop_exploder);
    function_3c540c33(var_65e2dd7c.play, &exploder::exploder);
    function_3c540c33(var_65e2dd7c.var_e4474fe9, &exploder::function_993369d6);
    profilestop();
}

// Namespace namespace_cf4aa5f0/namespace_879a3794
// Params 1, eflags: 0x2 linked
// Checksum 0xc962e49c, Offset: 0x518
// Size: 0x24
function function_470d684a(name) {
    level thread function_fcfe0dbe(name);
}

// Namespace namespace_cf4aa5f0/namespace_879a3794
// Params 1, eflags: 0x6 linked
// Checksum 0x22a3aa55, Offset: 0x548
// Size: 0x46
function private function_169b8acc(name) {
    level endon(#"end_game");
    while (true) {
        function_fcfe0dbe(name);
        waitframe(1);
    }
}

// Namespace namespace_cf4aa5f0/namespace_879a3794
// Params 1, eflags: 0x0
// Checksum 0xac161581, Offset: 0x598
// Size: 0x24
function function_25002e3(name) {
    level thread function_169b8acc(name);
}

// Namespace namespace_cf4aa5f0/namespace_879a3794
// Params 2, eflags: 0x6 linked
// Checksum 0x3025abd, Offset: 0x5c8
// Size: 0x98
function private function_3c540c33(var_c4d527a6, var_d9470764) {
    if (!isdefined(var_c4d527a6)) {
        return;
    }
    foreach (exploder in var_c4d527a6) {
        [[ var_d9470764 ]](exploder);
    }
}

