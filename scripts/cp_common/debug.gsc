// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai_puppeteer_shared.gsc;
#using scripts\cp_common\util.gsc;
#using scripts\cp_common\debug_menu.gsc;
#using scripts\core_common\ai\systems\weaponlist.gsc;
#using scripts\core_common\ai\archetype_utility.gsc;
#using scripts\core_common\ai\systems\init.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\hud_util_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\colors_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace debug;

// Namespace debug/debug
// Params 0, eflags: 0x5
// Checksum 0xf638f740, Offset: 0xf0
// Size: 0x3c
function private autoexec __init__system__() {
    /#
        register(#"hash_157baa9bc984206a", &function_70a657d8, undefined, undefined, undefined);
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x4
// Checksum 0xdfd613dc, Offset: 0x138
// Size: 0xa4
function private function_70a657d8() {
    /#
        level.var_7a31c7d = 14;
        level.var_99e12d63 = [];
        level.var_99e12d63[#"axis"] = (1, 0, 0);
        level.var_99e12d63[#"allies"] = (0, 1, 0);
        level.var_99e12d63[#"team3"] = (1, 1, 0);
        level.var_99e12d63[#"neutral"] = (1, 1, 1);
        thread debugdvars();
        thread engagement_distance_debug_toggle();
    #/
}

// Namespace debug/debug
// Params 1, eflags: 0x0
// Checksum 0x6c65ecfb, Offset: 0x1e8
// Size: 0xdc
function function_7b3f3b5f(num) {
    /#
        ai = getaiarray();
        for (i = 0; i < ai.size; i++) {
            if (ai[i] getentnum() != num) {
                continue;
            }
            ai[i] thread function_3496e019(getdvarstring(#"hash_511119641864ba93"));
        }
        /#
            setdvar(#"hash_4f53ce2aad8845e2", "<unknown string>");
        #/
    #/
}

// Namespace debug/debug
// Params 2, eflags: 0x0
// Checksum 0xde33971, Offset: 0x2d0
// Size: 0x6c
function function_219701e1(tag, opcolor) {
    /#
        org = self gettagorigin(tag);
        ang = self gettagangles(tag);
        function_e82f6faf(org, ang, opcolor);
    #/
}

// Namespace debug/debug
// Params 1, eflags: 0x0
// Checksum 0x5f335d46, Offset: 0x348
// Size: 0x3e
function function_73d54326(opcolor) {
    /#
        for (;;) {
            function_e82f6faf(self.origin, self.angles, opcolor);
            waitframe(1);
        }
    #/
}

// Namespace debug/debug
// Params 2, eflags: 0x0
// Checksum 0xa9408f47, Offset: 0x390
// Size: 0x3e
function function_cc26947c(org, ang) {
    /#
        for (;;) {
            function_e82f6faf(org, ang);
            waitframe(1);
        }
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0x427b3423, Offset: 0x3d8
// Size: 0x36
function function_9b38e79c() {
    /#
        for (;;) {
            function_e82f6faf(self.origin, self.angles);
            waitframe(1);
        }
    #/
}

// Namespace debug/debug
// Params 6, eflags: 0x0
// Checksum 0xa1b507b9, Offset: 0x418
// Size: 0x2dc
function function_e82f6faf(org, ang, opcolor, var_40dcdbad, var_6e4eeae5, var_5f9d71c2) {
    /#
        if (!isdefined(var_40dcdbad)) {
            var_40dcdbad = 1;
        }
        if (!isdefined(var_6e4eeae5)) {
            var_6e4eeae5 = 50;
        }
        if (!isdefined(var_5f9d71c2)) {
            var_5f9d71c2 = 1;
        }
        forward = anglestoforward(ang);
        forwardfar = vectorscale(forward, var_6e4eeae5);
        forwardclose = vectorscale(forward, var_6e4eeae5 * 0.8);
        right = anglestoright(ang);
        leftdraw = vectorscale(right, var_6e4eeae5 * -0.2);
        rightdraw = vectorscale(right, var_6e4eeae5 * 0.2);
        up = anglestoup(ang);
        right = vectorscale(right, var_6e4eeae5);
        up = vectorscale(up, var_6e4eeae5);
        red = (0.9, 0.2, 0.2);
        green = (0.2, 0.9, 0.2);
        blue = (0.2, 0.2, 0.9);
        if (isdefined(opcolor)) {
            red = opcolor;
            green = opcolor;
            blue = opcolor;
        }
        if (is_true(var_40dcdbad)) {
            line(org, org + forwardfar, red, 0.9);
        }
        line(org + forwardfar, org + forwardclose + rightdraw, red, 0.9);
        line(org + forwardfar, org + forwardclose + leftdraw, red, 0.9);
        if (is_true(var_5f9d71c2)) {
            line(org, org + right, blue, 0.9);
            line(org, org + up, green, 0.9);
        }
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0xc85885dd, Offset: 0x700
// Size: 0x56
function function_738cf60a() {
    /#
        for (;;) {
            function_e82f6faf(level.player.origin, level.player getplayerangles(), (1, 1, 1));
            waitframe(1);
        }
    #/
}

// Namespace debug/debug
// Params 2, eflags: 0x0
// Checksum 0xe76f7353, Offset: 0x760
// Size: 0x4e
function function_3242ab31(tag, opcolor) {
    /#
        self endon(#"death");
        for (;;) {
            function_219701e1(tag, opcolor);
            waitframe(1);
        }
    #/
}

// Namespace debug/debug
// Params 1, eflags: 0x0
// Checksum 0x12622944, Offset: 0x7b8
// Size: 0x3e
function function_3496e019(tag) {
    /#
        for (;;) {
            for (;;) {
                if (!isdefined(self.origin)) {
                    break;
                }
                function_219701e1(tag);
            }
        }
    #/
}

// Namespace debug/debug
// Params 2, eflags: 0x0
// Checksum 0xec0281fa, Offset: 0x800
// Size: 0xec
function function_4a3339df(type, tag) {
    /#
        if (type == "<unknown string>") {
            ai = getaiarray();
            for (i = 0; i < ai.size; i++) {
                ai[i] function_219701e1(tag);
            }
        } else {
            vehicle = getentarray("<unknown string>", "<unknown string>");
            for (i = 0; i < vehicle.size; i++) {
                vehicle[i] function_219701e1(tag);
            }
        }
    #/
}

// Namespace debug/debug
// Params 1, eflags: 0x0
// Checksum 0x5f9aef20, Offset: 0x8f8
// Size: 0x90
function function_2219efb7(spawner) {
    /#
        var_391a8d23 = [];
        for (p = 0; p < level.activenodes.size; p++) {
            if (level.activenodes[p] == spawner) {
                continue;
            }
            var_391a8d23[var_391a8d23.size] = level.activenodes[p];
        }
        level.activenodes = var_391a8d23;
    #/
}

// Namespace debug/debug
// Params 1, eflags: 0x0
// Checksum 0x9a0652ea, Offset: 0x990
// Size: 0x5e
function function_4475f113(org) {
    /#
        for (;;) {
            line(org + vectorscale((0, 0, 1), 35), org, (0.2, 0.5, 0.8), 0.5);
            waitframe(1);
        }
    #/
}

// Namespace debug/debug
// Params 1, eflags: 0x0
// Checksum 0xf480d9a5, Offset: 0x9f8
// Size: 0x9e
function function_e7587c68(ent) {
    /#
        org = undefined;
        while (isalive(ent)) {
            org = ent.origin;
            waitframe(1);
        }
        for (;;) {
            line(org + vectorscale((0, 0, 1), 35), org, (1, 0.2, 0.1), 0.5);
            waitframe(1);
        }
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0x736d7160, Offset: 0xaa0
// Size: 0x126
function function_8b6c0bba() {
    /#
        self notify(#"hash_5ec34db59fed84d9");
        self endon(#"hash_5ec34db59fed84d9", #"death");
        for (;;) {
            for (;;) {
                if (self.a.misstime <= 0) {
                    print3d(self gettagorigin("<unknown string>") + vectorscale((0, 0, 1), 15), "<unknown string>", (0.3, 1, 1), 1);
                } else {
                    print3d(self gettagorigin("<unknown string>") + vectorscale((0, 0, 1), 15), self.a.misstime / 20, (0.3, 1, 1), 1);
                }
            }
        }
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0x9b901963, Offset: 0xbd0
// Size: 0x1e
function function_1d418125() {
    /#
        self notify(#"hash_5ec34db59fed84d9");
    #/
}

// Namespace debug/debug
// Params 2, eflags: 0x0
// Checksum 0x6f67913b, Offset: 0xbf8
// Size: 0x5c
function function_24a0ab5e(dvar, setting) {
    /#
        /#
            if (getdvarstring(dvar) == "<unknown string>") {
                setdvar(dvar, setting);
            }
        #/
    #/
}

// Namespace debug/debug
// Params 1, eflags: 0x0
// Checksum 0x99f65b26, Offset: 0xc60
// Size: 0xd6
function function_9e26f269(num) {
    /#
        ai = getaiarray();
        for (i = 0; i < ai.size; i++) {
            if (ai[i] getentnum() != num) {
                continue;
            }
            players = getplayers();
            line(players[0].origin, ai[i].origin, (0.2, 0.3, 1));
            return;
        }
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0x1e341fe5, Offset: 0xd40
// Size: 0x153e
function debugdvars() {
    /#
        if (getdvarstring(#"hash_5f6154a37f067e0e") == "<unknown string>") {
            setdvar(#"hash_5f6154a37f067e0e", "<unknown string>");
        }
        if (getdvarstring(#"hash_392e0e2c79fbffac") == "<unknown string>") {
            setdvar(#"hash_392e0e2c79fbffac", "<unknown string>");
        }
        if (getdvarstring(#"hash_21b7a22ce9c6275b") == "<unknown string>") {
            setdvar(#"hash_21b7a22ce9c6275b", "<unknown string>");
        }
        function_24a0ab5e("<unknown string>", "<unknown string>");
        if (getdvarstring(#"hash_481d2a6e8d396b6d") == "<unknown string>") {
            setdvar(#"hash_481d2a6e8d396b6d", "<unknown string>");
        }
        if (getdvarstring(#"hash_4914e697f9fc2671") == "<unknown string>") {
            setdvar(#"hash_4914e697f9fc2671", "<unknown string>");
        }
        if (getdvarstring(#"hash_7cb3964103d64b39") == "<unknown string>") {
            setdvar(#"hash_7cb3964103d64b39", "<unknown string>");
        }
        if (getdvarstring(#"hash_3ff91657730a45a4") == "<unknown string>") {
            setdvar(#"hash_3ff91657730a45a4", "<unknown string>");
        }
        if (getdvarstring(#"hash_511119641864ba93") == "<unknown string>") {
            setdvar(#"hash_511119641864ba93", "<unknown string>");
        }
        if (getdvarstring(#"hash_4656023913ce3f58") == "<unknown string>") {
            setdvar(#"hash_4656023913ce3f58", "<unknown string>");
        }
        if (getdvarstring(#"hash_46799eb73d1021e5") == "<unknown string>") {
            setdvar(#"hash_46799eb73d1021e5", "<unknown string>");
        }
        if (getdvarstring(#"hash_3dbf8bc2b56584b4") == "<unknown string>") {
            setdvar(#"hash_3dbf8bc2b56584b4", "<unknown string>");
        }
        if (getdvarstring(#"hash_400262ff40d7af83") == "<unknown string>") {
            setdvar(#"hash_400262ff40d7af83", "<unknown string>");
        }
        if (getdvarstring(#"hash_6481fd27b3268aef") == "<unknown string>") {
            setdvar(#"hash_6481fd27b3268aef", "<unknown string>");
        }
        if (getdvarstring(#"hash_74ae4b4ffc749a52") == "<unknown string>") {
            setdvar(#"hash_74ae4b4ffc749a52", "<unknown string>");
        }
        if (getdvarstring(#"hash_294a430f19483cbb") == "<unknown string>") {
            setdvar(#"hash_294a430f19483cbb", "<unknown string>");
        }
        if (getdvarstring(#"hash_612c3c60b889819f") == "<unknown string>") {
            setdvar(#"hash_612c3c60b889819f", "<unknown string>");
        }
        if (getdvarstring(#"hash_15af95544805e487") == "<unknown string>") {
            setdvar(#"hash_15af95544805e487", "<unknown string>");
        }
        level.var_979b0066 = 0;
        if (getdvarstring(#"hash_1828e38c6e01052f") == "<unknown string>") {
            setdvar(#"hash_1828e38c6e01052f", "<unknown string>");
        }
        if (getdvarstring(#"hash_4bc852aa6aeb7bd8") == "<unknown string>") {
            setdvar(#"hash_37bed2af009035a0", "<unknown string>");
        }
        if (getdvarstring(#"hash_543b88a4a8d9f9a9") == "<unknown string>") {
            setdvar(#"hash_543b88a4a8d9f9a9", "<unknown string>");
        }
        if (getdvarstring(#"hash_50da86e5a64c8c00") == "<unknown string>") {
            setdvar(#"hash_50da86e5a64c8c00", "<unknown string>");
        }
        if (getdvarstring(#"hash_14cb1b9851034a23") == "<unknown string>") {
            setdvar(#"hash_14cb1b9851034a23", "<unknown string>");
        }
        if (getdvarstring(#"hash_36c3400463eaf6ed") == "<unknown string>") {
            setdvar(#"hash_36c3400463eaf6ed", "<unknown string>");
        }
        if (getdvarstring(#"hash_4ca849f27dafd218") == "<unknown string>") {
            setdvar(#"hash_4ca849f27dafd218", "<unknown string>");
        }
        if (getdvarstring(#"hash_7ac06724b86d8e1f") == "<unknown string>") {
            setdvar(#"hash_7ac06724b86d8e1f", "<unknown string>");
        }
        if (getdvarstring(#"tag") == "<unknown string>") {
            setdvar(#"tag", "<unknown string>");
        }
        for (i = 1; i <= level.var_7a31c7d; i++) {
            if (getdvarstring("<unknown string>" + i) == "<unknown string>") {
                setdvar("<unknown string>" + i, "<unknown string>");
            }
        }
        if (getdvarstring(#"hash_685827e90be8c03d") == "<unknown string>") {
            setdvar(#"hash_685827e90be8c03d", "<unknown string>");
        }
        if (getdvarstring(#"hash_67389e1a28a0f28a") == "<unknown string>") {
            setdvar(#"hash_67389e1a28a0f28a", "<unknown string>");
        }
        if (getdvarstring(#"hash_1a7527951f30d85d") == "<unknown string>") {
            setdvar(#"hash_1a7527951f30d85d", 0);
            setdvar(#"hash_457f0b340b899504", 0);
            setdvar(#"hash_5fb2bcff79d1e458", 0);
        }
        if (getdvarstring(#"debug_dynamic_ai_spawning") == "<unknown string>") {
            setdvar(#"debug_dynamic_ai_spawning", 0);
        }
        level.var_22f043c5 = -23430;
        if (getdvarstring(#"hash_3e6f543e092fe601") == "<unknown string>") {
            setdvar(#"hash_3e6f543e092fe601", "<unknown string>");
        }
        waittillframeend();
        if (getdvarstring(#"hash_6640160f6a7f20dc") == "<unknown string>") {
            setdvar(#"hash_6640160f6a7f20dc", "<unknown string>");
        }
        var_375b9d88 = getdvarstring(#"hash_3e63b96becc87615") == "<unknown string>";
        for (;;) {
            for (;;) {
                if (getdvarint(#"hash_328d096ed229649d", 0) == 1) {
                    level thread function_f48a99b9();
                }
                if (getdvarstring(#"hash_511119641864ba93") != "<unknown string>") {
                    thread function_4a3339df("<unknown string>", getdvarstring(#"hash_511119641864ba93"));
                    if (getdvarint(#"hash_4f53ce2aad8845e2", 0) > 0) {
                        thread function_7b3f3b5f(getdvarint(#"hash_4f53ce2aad8845e2", 0));
                    }
                }
                if (getdvarstring(#"hash_3dbf8bc2b56584b4") == "<unknown string>") {
                    level thread function_d2ddc8bc();
                }
                if (getdvarstring(#"hash_400262ff40d7af83") == "<unknown string>") {
                    level thread function_3a215729();
                }
                if (getdvarstring(#"hash_6481fd27b3268aef") == "<unknown string>") {
                    level thread function_6bad5940();
                }
                if (getdvarstring(#"hash_74ae4b4ffc749a52") == "<unknown string>") {
                    level thread function_feb182a2();
                }
                if (getdvarstring(#"hash_46799eb73d1021e5") != "<unknown string>") {
                    thread function_4a3339df("<unknown string>", getdvarstring(#"hash_46799eb73d1021e5"));
                }
                thread function_b03ecdf3();
                if (getdvarstring(#"tag") != "<unknown string>") {
                    thread function_3b9e49a3();
                }
                for (i = 1; i <= level.var_7a31c7d; i++) {
                    if (getdvarstring("<unknown string>" + i) != "<unknown string>") {
                        thread function_877bbda(i);
                    }
                }
                if (getdvarstring(#"hash_685827e90be8c03d") != "<unknown string>") {
                    thread function_119a2b9f();
                }
                if (getdvarstring(#"hash_50da86e5a64c8c00") != "<unknown string>") {
                    thread function_a9780776();
                }
                if (getdvarstring(#"hash_69129788c0aed850") == "<unknown string>") {
                    setdvar(#"hash_69129788c0aed850", "<unknown string>");
                    thread_all(getaiarray(), &function_8b6c0bba);
                } else if (getdvarstring(#"hash_69129788c0aed850") == "<unknown string>") {
                    setdvar(#"hash_69129788c0aed850", "<unknown string>");
                    thread_all(getaiarray(), &function_1d418125);
                }
                if (getdvarstring(#"hash_14cb1b9851034a23") == "<unknown string>") {
                    thread function_b3637bc5();
                }
                if (getdvarstring(#"hash_4ca849f27dafd218") == "<unknown string>") {
                    setdvar(#"hash_4ca849f27dafd218", "<unknown string>");
                    players = getplayers();
                    for (i = 0; i < players.size; i++) {
                        players[i] dodamage(50, (324234, 3423423, 2323));
                    }
                }
                if (getdvarstring(#"hash_4ca849f27dafd218") == "<unknown string>") {
                    setdvar(#"hash_4ca849f27dafd218", "<unknown string>");
                    players = getplayers();
                    for (i = 0; i < players.size; i++) {
                        players[i] dodamage(50, (324234, 3423423, 2323));
                    }
                }
                if (getdvarstring(#"hash_67389e1a28a0f28a") == "<unknown string>") {
                    thread function_fdfcc52();
                }
                if (getdvarstring(#"hash_3e6f543e092fe601") != "<unknown string>" && getdvarstring(#"hash_3e6f543e092fe601") != "<unknown string>") {
                    function_d8196c5d();
                }
                level.var_979b0066 = getdvarstring(#"hash_1828e38c6e01052f") == "<unknown string>";
                if (!var_375b9d88 && getdvarstring(#"hash_3e63b96becc87615") == "<unknown string>") {
                    var_375b9d88 = 1;
                }
                if (var_375b9d88 && getdvarstring(#"hash_3e63b96becc87615") == "<unknown string>") {
                    level.animation.var_c37ecb18 = &void;
                    level.animation notify(#"hash_1c96242baab724dd");
                    var_375b9d88 = 0;
                }
                if (getdvarint(#"debug_dynamic_ai_spawning", 0) == 1 && (!isdefined(level.var_5c403878) || level.var_5c403878 == 0)) {
                    level.var_5c403878 = 1;
                    thread function_2fcd7502();
                } else if (getdvarint(#"debug_dynamic_ai_spawning", 0) == 0 && isdefined(level.var_5c403878) && level.var_5c403878 == 1) {
                    level.var_5c403878 = 0;
                    level notify(#"hash_34e65f3c6ffc6a39");
                }
                function_d851fc3c();
            }
        }
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0x37b78c31, Offset: 0x2288
// Size: 0x190
function function_d851fc3c() {
    /#
        var_ec84444a = getdvarint(#"hash_1a7527951f30d85d", 0);
        if (!var_ec84444a) {
            return;
        }
        var_cb0c64e2 = getdvarint(#"hash_5fb2bcff79d1e458", 0);
        var_e429284b = getdvarint(#"hash_457f0b340b899504", 0);
        ais = getactorarray();
        foreach (ai in ais) {
            if (var_cb0c64e2) {
                ai.enableterrainik.ai = 1;
            } else {
                ai.enableterrainik.ai = 0;
            }
            if (var_e429284b) {
                ai lookatentity(level.players[0]);
            } else {
                ai lookatentity();
            }
        }
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0xa304be47, Offset: 0x2420
// Size: 0x168
function function_8d65633f() {
    /#
        var_7933c5bf = undefined;
        var_e4a81a27 = undefined;
        var_7933c5bf = (15.1859, -12.2822, 4.071);
        var_e4a81a27 = (947.2, -10918, 64.9514);
        /#
            assert(!isdefined(level.traceend));
        #/
        for (;;) {
            players = getplayers();
            waitframe(1);
            start = var_7933c5bf;
            end = var_e4a81a27;
            if (!isdefined(var_7933c5bf)) {
                start = level.tracestart;
            }
            if (!isdefined(var_e4a81a27)) {
                end = players[0] geteye();
            }
            trace = bullettrace(start, end, 0, undefined);
            line(start, trace[#"position"], (0.9, 0.5, 0.8), 0.5);
        }
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0x50a675a1, Offset: 0x2590
// Size: 0x1ae
function hatmodel() {
    /#
        for (;;) {
            for (;;) {
                if (getdvarstring(#"hash_612c3c60b889819f") == "<unknown string>") {
                    return;
                }
                var_3eea2550 = [];
                ai = getaiarray();
                for (i = 0; i < ai.size; i++) {
                    if (isdefined(ai[i].hatmodel)) {
                        continue;
                    }
                    var_b7d2e573 = 0;
                    for (p = 0; p < var_3eea2550.size; p++) {
                        if (var_3eea2550[p] != ai[i].classname) {
                            continue;
                        }
                        var_b7d2e573 = 1;
                        break;
                    }
                    if (!var_b7d2e573) {
                        var_3eea2550[var_3eea2550.size] = ai[i].classname;
                    }
                }
                if (var_3eea2550.size) {
                    println("<unknown string>");
                    println("<unknown string>");
                    for (i = 0; i < var_3eea2550.size; i++) {
                        println("<unknown string>", var_3eea2550[i]);
                    }
                    println("<unknown string>");
                }
            }
        }
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0x10aaf7e6, Offset: 0x2748
// Size: 0x2d4
function function_a9780776() {
    /#
        player = gethostplayer();
        dvar = getdvarstring(#"hash_50da86e5a64c8c00");
        if (dvar == "<unknown string>") {
            ai = getaiteamarray(get_enemy_team(player.team), #"team3");
            for (i = 0; i < ai.size; i++) {
                ignore = 0;
                classname = ai[i].classname;
                if (isdefined(classname) && (issubstr(classname, "<unknown string>") || issubstr(classname, "<unknown string>") || issubstr(classname, "<unknown string>"))) {
                    ignore = 1;
                }
                if (!ignore) {
                    ai[i] dodamage(ai[i].health, (0, 0, 0), player);
                }
            }
        } else if (dvar == "<unknown string>") {
            ai = getaiteamarray(get_enemy_team(player.team));
            for (i = 0; i < ai.size; i++) {
                ai[i] dodamage(ai[i].health, (0, 0, 0), player);
            }
        } else if (dvar == "<unknown string>") {
            ai = getaispeciesarray(get_enemy_team(player.team), "<unknown string>");
            for (i = 0; i < ai.size; i++) {
                ai[i] dodamage(ai[i].health, (0, 0, 0), player);
            }
        }
        setdvar(#"hash_50da86e5a64c8c00", "<unknown string>");
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0x820ccf8f, Offset: 0x2a28
// Size: 0x8
function function_36733cf6() {
    /#
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0x91011a70, Offset: 0x2a38
// Size: 0x2c
function function_a66b4232() {
    /#
        setdvar(#"hash_5aa2b9b0db0dfc6c", 0);
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0x7e2171a2, Offset: 0x2a70
// Size: 0x13c
function function_b3637bc5() {
    /#
        waittillframeend();
        for (i = 0; i < 50; i++) {
            if (!isdefined(level.var_fdd9c96a[i])) {
                continue;
            }
            array = level.var_fdd9c96a[i];
            for (p = 0; p < array.size; p++) {
                ent = array[p];
                if (isdefined(ent.var_85fce2f9)) {
                    print3d(ent.origin, i + "<unknown string>" + ent.var_85fce2f9, (0, 0.8, 0.6), 5);
                } else {
                    print3d(ent.origin, i + "<unknown string>" + "<unknown string>", (0, 0.8, 0.6), 5);
                }
            }
        }
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0x7de02c71, Offset: 0x2bb8
// Size: 0x8a
function function_a6a0d2ec() {
    /#
        var_a3d6bdf3 = [];
        var_a3d6bdf3 = getentarray("<unknown string>", "<unknown string>");
        array = [];
        for (i = 0; i < var_a3d6bdf3.size; i++) {
            array[i] = var_a3d6bdf3[i] function_3e976b0e();
        }
        return array;
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0xa03e8bd2, Offset: 0x2c50
// Size: 0xf6
function function_3e976b0e() {
    /#
        array = [];
        ent = self;
        while (isdefined(ent)) {
            array[array.size] = ent;
            if (!isdefined(ent) || !isdefined(ent.target)) {
                break;
            }
            ent = getent(ent.target, "<unknown string>");
            if (isdefined(ent) && ent == array[0]) {
                array[array.size] = ent;
                break;
            }
        }
        var_63f64a73 = [];
        for (i = 0; i < array.size; i++) {
            var_63f64a73[i] = array[i].origin;
        }
        return var_63f64a73;
    #/
}

// Namespace debug/debug
// Params 2, eflags: 0x0
// Checksum 0x642fd014, Offset: 0x2d50
// Size: 0x44
function vecscale(vec, scalar) {
    /#
        return (vec[0] * scalar, vec[1] * scalar, vec[2] * scalar);
    #/
}

// Namespace debug/debug
// Params 1, eflags: 0x0
// Checksum 0x92b83d4a, Offset: 0x2da0
// Size: 0x10c
function function_e05e43c3(origin) {
    /#
        var_1315834e = vectornormalize(origin - self getshootatpos());
        var_b9593434 = vectornormalize(origin - vectorscale((0, 0, 1), 24) - self getshootatpos());
        var_c2a09695 = vectordot(var_1315834e, var_b9593434);
        var_8194ae5a = anglestoforward(self getplayerangles());
        vectordot = vectordot(var_8194ae5a, var_1315834e);
        if (vectordot > var_c2a09695) {
            return 1;
        } else {
            return 0;
        }
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0x32ae73bf, Offset: 0x2eb8
// Size: 0x8c
function function_fdfcc52() {
    /#
        close = getdvarint(#"hash_6dc1aa818420a8b5", 0);
        far = getdvarint(#"hash_29dc7f9d45c3fc64", 1500);
        setexpfog(close, far, 1, 1, 1, 0);
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0x7ad4daec, Offset: 0x2f50
// Size: 0x24
function function_d8196c5d() {
    /#
        level.var_22f043c5 = gettime();
        thread function_8d1ffcb4();
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0xbf8380cd, Offset: 0x2f80
// Size: 0x15c
function function_8d1ffcb4() {
    /#
        ai = getaiarray();
        entnum = getdvarstring(#"hash_3e6f543e092fe601");
        entity = undefined;
        players = getplayers();
        if (entnum == 0) {
            entity = players[0];
        } else {
            for (i = 0; i < ai.size; i++) {
                if (entnum != ai[i] getentnum()) {
                    continue;
                }
                entity = ai[i];
                break;
            }
        }
        if (!isalive(entity)) {
            return;
        }
        var_d77f9c98 = entity getthreatbiasgroup();
        thread_all(ai, &function_13d34333, entity, var_d77f9c98);
        players[0] thread function_13d34333(entity, var_d77f9c98);
    #/
}

// Namespace debug/debug
// Params 2, eflags: 0x0
// Checksum 0xd7d1c4b1, Offset: 0x30e8
// Size: 0x37a
function function_13d34333(entity, var_d77f9c98) {
    /#
        self endon(#"death");
        if (self.team == entity.team) {
            return;
        }
        var_fa7d5fc3 = 0;
        var_fa7d5fc3 = var_fa7d5fc3 + self.threatbias;
        threat = 0;
        threat = threat + entity.threatbias;
        var_db2f9de8 = undefined;
        if (isdefined(var_d77f9c98)) {
            var_db2f9de8 = self getthreatbiasgroup();
            if (isdefined(var_db2f9de8)) {
                threat = threat + getthreatbias(var_d77f9c98, var_db2f9de8);
                var_fa7d5fc3 = var_fa7d5fc3 + getthreatbias(var_db2f9de8, var_d77f9c98);
            }
        }
        if (entity.ignoreme || threat < -900000) {
            threat = "<unknown string>";
        }
        if (self.ignoreme || var_fa7d5fc3 < -900000) {
            var_fa7d5fc3 = "<unknown string>";
        }
        players = getplayers();
        col = (1, 0.5, 0.2);
        col2 = (0.2, 0.5, 1);
        pacifist = self != players[0] && self.pacifist;
        for (i = 0; i <= 20; i++) {
            print3d(self.origin + vectorscale((0, 0, 1), 65), "<unknown string>", col, 3);
            print3d(self.origin + vectorscale((0, 0, 1), 50), threat, col, 5);
            if (isdefined(var_d77f9c98)) {
                print3d(self.origin + vectorscale((0, 0, 1), 35), var_d77f9c98, col, 2);
            }
            print3d(self.origin + vectorscale((0, 0, 1), 15), "<unknown string>", col2, 3);
            print3d(self.origin + (0, 0, 0), var_fa7d5fc3, col2, 5);
            if (isdefined(var_db2f9de8)) {
                print3d(self.origin + vectorscale((0, 0, -1), 15), var_db2f9de8, col2, 2);
            }
            if (pacifist) {
                print3d(self.origin + vectorscale((0, 0, 1), 25), "<unknown string>", col2, 5);
            }
            waitframe(1);
        }
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0x7a253be2, Offset: 0x3470
// Size: 0xc4
function function_745ba438() {
    /#
        level.var_15dfe17e = [];
        level.var_b64806bf = [];
        waittillframeend();
        waittillframeend();
        var_955de774 = getarraykeys(level.var_cb586b64);
        for (i = 0; i < var_955de774.size; i++) {
            function_f3405436(var_955de774[i]);
        }
        var_955de774 = getarraykeys(level.var_506f1d55);
        for (i = 0; i < var_955de774.size; i++) {
            function_38439dea(var_955de774[i]);
        }
    #/
}

// Namespace debug/debug
// Params 1, eflags: 0x0
// Checksum 0xa31202ce, Offset: 0x3540
// Size: 0x156
function function_f3405436(animname) {
    /#
        foreach (v in level.var_cb586b64[animname]) {
            soundalias = v[#"sound"];
            if (!isdefined(soundalias)) {
                continue;
            }
            var_6d60fb23 = v[#"hash_3abd06cd4bee108f"];
            notetrack = v[#"notetrack"];
            level.var_b64806bf[animname][var_6d60fb23][notetrack][#"soundalias"] = soundalias;
            if (isdefined(v[#"hash_3bcdf8e8541b5d4a"])) {
                level.var_b64806bf[animname][var_6d60fb23][notetrack][#"hash_3bcdf8e8541b5d4a"] = 1;
            }
        }
    #/
}

// Namespace debug/debug
// Params 1, eflags: 0x0
// Checksum 0x97b84a59, Offset: 0x36a0
// Size: 0xfe
function function_38439dea(animname) {
    /#
        var_60f23c42 = getarraykeys(level.var_506f1d55[animname]);
        for (i = 0; i < var_60f23c42.size; i++) {
            var_6d60fb23 = var_60f23c42[i];
            soundalias = level.var_506f1d55[animname][var_6d60fb23];
            level.var_b64806bf[animname][var_6d60fb23]["<unknown string>" + var_6d60fb23][#"soundalias"] = soundalias;
            level.var_b64806bf[animname][var_6d60fb23]["<unknown string>" + var_6d60fb23][#"hash_3bcdf8e8541b5d4a"] = 1;
        }
    #/
}

// Namespace debug/debug
// Params 3, eflags: 0x0
// Checksum 0x3256372, Offset: 0x37a8
// Size: 0xba
function function_90b2a0b0(x, y, msg) {
    /#
        var_5e39fc46 = newdebughudelem();
        var_5e39fc46.alignx.var_5e39fc46 = "<unknown string>";
        var_5e39fc46.aligny.var_5e39fc46 = "<unknown string>";
        var_5e39fc46.x = x;
        var_5e39fc46.y = y;
        var_5e39fc46.alpha.var_5e39fc46 = 1;
        var_5e39fc46.fontscale.var_5e39fc46 = 1;
        var_5e39fc46.label = msg;
        level.var_e8a7658[level.var_e8a7658.size] = var_5e39fc46;
        return var_5e39fc46;
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0xd3e20562, Offset: 0x3870
// Size: 0x8b4
function function_b03ecdf3() {
    /#
        enabled = getdvarstring(#"hash_7ac06724b86d8e1f") == "<unknown string>";
        if (!isdefined(level.var_100db28b)) {
            if (!enabled) {
                return;
            }
            level.var_d7c96297 = 0;
            level.var_7e2e9d77 = "<unknown string>";
            level.var_100db28b = [];
            level.var_eef171c = [];
            level.var_c22fdb8f = [];
            level.var_e8a7658 = [];
            level.var_969ba98a = 0;
            level.var_9c80d401 = 0;
            level.var_fe79cec = function_90b2a0b0(-30, 180, "<unknown string>");
            level.var_77ea7dca = function_90b2a0b0(100, 180, "<unknown string>");
            function_90b2a0b0(10, 190, "<unknown string>");
            function_90b2a0b0(-30, 190, "<unknown string>");
            function_90b2a0b0(-30, 160, "<unknown string>");
            function_90b2a0b0(-30, 150, "<unknown string>");
            function_90b2a0b0(-30, 140, "<unknown string>");
            level.var_bf8f879e = function_90b2a0b0(-30, 170, "<unknown string>");
            level.var_bf8f879e.alpha = 0;
            for (i = 0; i < level.var_7a31c7d; i++) {
                var_5e39fc46 = newdebughudelem();
                var_5e39fc46.alignx.var_5e39fc46 = "<unknown string>";
                var_5e39fc46.aligny.var_5e39fc46 = "<unknown string>";
                var_5e39fc46.x.var_5e39fc46 = 10;
                var_5e39fc46.y.var_5e39fc46 = 200 + i * 10;
                var_5e39fc46.alpha.var_5e39fc46 = 1;
                var_5e39fc46.fontscale.var_5e39fc46 = 1;
                var_5e39fc46.label.var_5e39fc46 = "<unknown string>";
                level.var_100db28b[level.var_100db28b.size] = var_5e39fc46;
                var_5e39fc46 = newdebughudelem();
                var_5e39fc46.alignx.var_5e39fc46 = "<unknown string>";
                var_5e39fc46.aligny.var_5e39fc46 = "<unknown string>";
                var_5e39fc46.x.var_5e39fc46 = -10;
                var_5e39fc46.y.var_5e39fc46 = 200 + i * 10;
                var_5e39fc46.alpha.var_5e39fc46 = 1;
                var_5e39fc46.fontscale.var_5e39fc46 = 1;
                var_5e39fc46.label.var_5e39fc46 = "<unknown string>";
                level.var_eef171c[level.var_eef171c.size] = var_5e39fc46;
                var_5e39fc46 = newdebughudelem();
                var_5e39fc46.alignx.var_5e39fc46 = "<unknown string>";
                var_5e39fc46.aligny.var_5e39fc46 = "<unknown string>";
                var_5e39fc46.x.var_5e39fc46 = 210;
                var_5e39fc46.y.var_5e39fc46 = 200 + i * 10;
                var_5e39fc46.alpha.var_5e39fc46 = 1;
                var_5e39fc46.fontscale.var_5e39fc46 = 1;
                var_5e39fc46.label.var_5e39fc46 = "<unknown string>";
                level.var_c22fdb8f[level.var_c22fdb8f.size] = var_5e39fc46;
            }
            level.var_100db28b[0].color = (1, 1, 0);
            level.var_eef171c[0].color = (1, 1, 0);
        } else if (!enabled) {
            for (i = 0; i < level.var_7a31c7d; i++) {
                level.var_100db28b[i] destroy();
                level.var_eef171c[i] destroy();
                level.var_c22fdb8f[i] destroy();
            }
            for (i = 0; i < level.var_e8a7658.size; i++) {
                level.var_e8a7658[i] destroy();
            }
            level.var_100db28b = undefined;
            level.var_eef171c = undefined;
            level.var_c22fdb8f = undefined;
            level.var_e8a7658 = undefined;
            level.var_15dfe17e = undefined;
            return;
        }
        if (!isdefined(level.var_972b7c53)) {
            level.var_969ba98a = 0;
        }
        if (level.var_969ba98a) {
            level.var_bf8f879e.alpha = 1;
        } else {
            level.var_bf8f879e.alpha = 0;
        }
        if (!isdefined(level.var_15dfe17e)) {
            function_745ba438();
        }
        level.var_b19c1dfd = [];
        arrayremovevalue(level.var_15dfe17e, undefined);
        thread_all(level.var_15dfe17e, &function_e5ad4202);
        players = getplayers();
        if (level.var_969ba98a) {
            for (i = 0; i < level.var_b19c1dfd.size; i++) {
                var_d357ff0e = level.var_b19c1dfd[i];
                var_d357ff0e.var_cdbf6838.var_d357ff0e = vectorscale((1, 1, 1), 0.5);
            }
        } else if (players.size > 0) {
            dot = 0.85;
            forward = anglestoforward(players[0] getplayerangles());
            for (i = 0; i < level.var_b19c1dfd.size; i++) {
                var_d357ff0e = level.var_b19c1dfd[i];
                var_d357ff0e.var_cdbf6838.var_d357ff0e = (0.25, 1, 0.5);
                difference = vectornormalize(var_d357ff0e.origin + vectorscale((0, 0, 1), 40) - players[0].origin + vectorscale((0, 0, 1), 55));
                var_a25004a9 = vectordot(forward, difference);
                if (var_a25004a9 < dot) {
                    continue;
                }
                dot = var_a25004a9;
                level.var_972b7c53 = var_d357ff0e;
            }
        }
        if (isdefined(level.var_972b7c53)) {
            level.var_972b7c53.var_cdbf6838 = (1, 1, 0);
        }
        var_86c85a76 = isdefined(level.var_972b7c53);
        for (i = 0; i < level.var_b19c1dfd.size; i++) {
            var_d357ff0e = level.var_b19c1dfd[i];
            msg = "<unknown string>";
            if (level.var_969ba98a) {
                msg = "<unknown string>";
            }
            print3d(var_d357ff0e.origin + vectorscale((0, 0, 1), 40), msg + var_d357ff0e.var_15dfe17e.size, var_d357ff0e.var_cdbf6838, 1, 1);
        }
        if (var_86c85a76) {
            function_21619947();
        }
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0x2c944a76, Offset: 0x4130
// Size: 0x62c
function function_21619947() {
    /#
        guy = level.var_972b7c53;
        var_15dfe17e = guy.var_15dfe17e;
        animname = "<unknown string>";
        if (isdefined(guy.animname)) {
            animname = guy.animname;
        }
        level.var_fe79cec.label = "<unknown string>" + animname;
        players = getplayers();
        if (players[0] buttonpressed("<unknown string>")) {
            if (!level.var_9c80d401) {
                level.var_969ba98a = !level.var_969ba98a;
                level.var_9c80d401 = 1;
            }
        } else {
            level.var_9c80d401 = 0;
        }
        if (players[0] buttonpressed("<unknown string>")) {
            if (level.var_7e2e9d77 != "<unknown string>") {
                level.var_d7c96297--;
            }
            level.var_7e2e9d77 = "<unknown string>";
        } else if (players[0] buttonpressed("<unknown string>")) {
            if (level.var_7e2e9d77 != "<unknown string>") {
                level.var_d7c96297++;
            }
            level.var_7e2e9d77 = "<unknown string>";
        } else {
            level.var_7e2e9d77 = "<unknown string>";
        }
        for (i = 0; i < level.var_7a31c7d; i++) {
            var_5e39fc46 = level.var_100db28b[i];
            var_5e39fc46.label.var_5e39fc46 = "<unknown string>";
            var_5e39fc46.color.var_5e39fc46 = (1, 1, 1);
            var_5e39fc46 = level.var_eef171c[i];
            var_5e39fc46.label.var_5e39fc46 = "<unknown string>";
            var_5e39fc46.color.var_5e39fc46 = (1, 1, 1);
            var_5e39fc46 = level.var_c22fdb8f[i];
            var_5e39fc46.label.var_5e39fc46 = "<unknown string>";
            var_5e39fc46.color.var_5e39fc46 = (1, 1, 1);
        }
        keys = getarraykeys(var_15dfe17e);
        highest = -1;
        for (i = 0; i < keys.size; i++) {
            if (keys[i] > highest) {
                highest = keys[i];
            }
        }
        if (highest == -1) {
            return;
        }
        if (level.var_d7c96297 > highest) {
            level.var_d7c96297 = highest;
        }
        if (level.var_d7c96297 < 0) {
            level.var_d7c96297 = 0;
        }
        for (;;) {
            for (;;) {
                if (isdefined(var_15dfe17e[level.var_d7c96297])) {
                    break;
                }
                level.var_d7c96297--;
                if (level.var_d7c96297 > 0) {
                    continue;
                };
            }
        }
        level.var_77ea7dca.label = "<unknown string>" + var_15dfe17e[level.var_d7c96297].var_6d60fb23;
        level.var_100db28b[level.var_d7c96297].color = (1, 1, 0);
        level.var_eef171c[level.var_d7c96297].color = (1, 1, 0);
        level.var_c22fdb8f[level.var_d7c96297].color = (1, 1, 0);
        time = gettime();
        for (i = 0; i < keys.size; i++) {
            key = keys[i];
            var_d357ff0e = var_15dfe17e[key];
            var_5e39fc46 = level.var_100db28b[key];
            soundalias = function_788f7656(var_d357ff0e);
            var_5e39fc46.label.var_5e39fc46 = key + 1 + "<unknown string>" + var_d357ff0e.notetrack;
            var_5e39fc46 = level.var_eef171c[key];
            var_5e39fc46.label.var_5e39fc46 = int((time - var_d357ff0e.end_time - 60000) * 0.001);
            if (isdefined(soundalias)) {
                var_5e39fc46 = level.var_c22fdb8f[key];
                var_5e39fc46.label = soundalias;
                if (!function_564b1bcf(var_d357ff0e.animname, var_d357ff0e.var_6d60fb23, var_d357ff0e.notetrack)) {
                    var_5e39fc46.color.var_5e39fc46 = vectorscale((1, 1, 1), 0.7);
                }
            }
        }
        players = getplayers();
        if (players[0] buttonpressed("<unknown string>")) {
            var_d357ff0e = var_15dfe17e[level.var_d7c96297];
            soundalias = function_788f7656(var_d357ff0e);
            if (!isdefined(soundalias)) {
                return;
            }
            if (!function_564b1bcf(var_d357ff0e.animname, var_d357ff0e.var_6d60fb23, var_d357ff0e.notetrack)) {
                return;
            }
            level.var_b64806bf[var_d357ff0e.animname][var_d357ff0e.var_6d60fb23][var_d357ff0e.notetrack] = undefined;
            function_119a2b9f();
        }
    #/
}

// Namespace debug/debug
// Params 1, eflags: 0x0
// Checksum 0x1ecec534, Offset: 0x4768
// Size: 0xb4
function function_788f7656(var_d357ff0e) {
    /#
        if (!isdefined(level.var_b64806bf[var_d357ff0e.animname])) {
            return;
        }
        if (!isdefined(level.var_b64806bf[var_d357ff0e.animname][var_d357ff0e.var_6d60fb23])) {
            return;
        }
        if (!isdefined(level.var_b64806bf[var_d357ff0e.animname][var_d357ff0e.var_6d60fb23][var_d357ff0e.notetrack])) {
            return;
        }
        return level.var_b64806bf[var_d357ff0e.animname][var_d357ff0e.var_6d60fb23][var_d357ff0e.notetrack][#"soundalias"];
    #/
}

// Namespace debug/debug
// Params 3, eflags: 0x0
// Checksum 0x6517e1e3, Offset: 0x4828
// Size: 0x46
function function_564b1bcf(animname, var_6d60fb23, notetrack) {
    /#
        return isdefined(level.var_b64806bf[animname][var_6d60fb23][notetrack][#"hash_3bcdf8e8541b5d4a"]);
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0x4bd0d348, Offset: 0x4878
// Size: 0x6c
function function_e5ad4202() {
    /#
        players = getplayers();
        if (distance(players[0].origin, self.origin) > 1500) {
            return;
        }
        level.var_b19c1dfd[level.var_b19c1dfd.size] = self;
    #/
}

// Namespace debug/debug
// Params 1, eflags: 0x0
// Checksum 0x3a7c762e, Offset: 0x48f0
// Size: 0xbc
function function_877bbda(var_ba7744bf) {
    /#
        tag = getdvarstring("<unknown string>" + var_ba7744bf);
        if (tag == "<unknown string>") {
            iprintlnbold("<unknown string>");
            return;
        }
        tag_sound(tag, var_ba7744bf - 1);
        setdvar(#"tag" + var_ba7744bf, "<unknown string>");
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0xecbe2f3c, Offset: 0x49b8
// Size: 0xac
function function_3b9e49a3() {
    /#
        tag = getdvarstring(#"tag");
        if (tag == "<unknown string>") {
            iprintlnbold("<unknown string>");
            return;
        }
        tag_sound(tag, level.var_d7c96297);
        setdvar(#"tag", "<unknown string>");
    #/
}

// Namespace debug/debug
// Params 2, eflags: 0x0
// Checksum 0xed123a82, Offset: 0x4a70
// Size: 0x14c
function tag_sound(tag, var_ba7744bf) {
    /#
        if (!isdefined(level.var_972b7c53)) {
            return;
        }
        if (!isdefined(level.var_972b7c53.var_15dfe17e[var_ba7744bf])) {
            return;
        }
        var_d357ff0e = level.var_972b7c53.var_15dfe17e[var_ba7744bf];
        soundalias = function_788f7656(var_d357ff0e);
        if (!isdefined(soundalias) || function_564b1bcf(var_d357ff0e.animname, var_d357ff0e.var_6d60fb23, var_d357ff0e.notetrack)) {
            level.var_b64806bf[var_d357ff0e.animname][var_d357ff0e.var_6d60fb23][var_d357ff0e.notetrack][#"soundalias"] = tag;
            level.var_b64806bf[var_d357ff0e.animname][var_d357ff0e.var_6d60fb23][var_d357ff0e.notetrack][#"hash_3bcdf8e8541b5d4a"] = 1;
            function_119a2b9f();
        }
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0x180c421f, Offset: 0x4bc8
// Size: 0x10c
function function_119a2b9f() {
    /#
        filename = "<unknown string>" + level.script + "<unknown string>";
        file = openfile(filename, "<unknown string>");
        if (file == -1) {
            iprintlnbold("<unknown string>" + filename + "<unknown string>");
            return;
        }
        iprintlnbold("<unknown string>" + filename);
        function_eaaa729a(file);
        saved = closefile(file);
        setdvar(#"hash_685827e90be8c03d", "<unknown string>");
    #/
}

// Namespace debug/debug
// Params 1, eflags: 0x0
// Checksum 0x4fec750a, Offset: 0x4ce0
// Size: 0x454
function function_eaaa729a(file) {
    /#
        tab = "<unknown string>";
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, tab + "<unknown string>");
        fprintln(file, tab + "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, "<unknown string>");
        fprintln(file, tab + "<unknown string>");
        var_955de774 = getarraykeys(level.var_b64806bf);
        for (i = 0; i < var_955de774.size; i++) {
            var_60f23c42 = getarraykeys(level.var_b64806bf[var_955de774[i]]);
            for (p = 0; p < var_60f23c42.size; p++) {
                var_6d60fb23 = var_60f23c42[p];
                notetracks = getarraykeys(level.var_b64806bf[var_955de774[i]][var_6d60fb23]);
                for (z = 0; z < notetracks.size; z++) {
                    notetrack = notetracks[z];
                    if (!function_564b1bcf(var_955de774[i], var_6d60fb23, notetrack)) {
                        continue;
                    }
                    alias = level.var_b64806bf[var_955de774[i]][var_6d60fb23][notetrack][#"soundalias"];
                    if (notetrack == "<unknown string>" + var_6d60fb23) {
                        fprintln(file, tab + "<unknown string>" + function_4414bb5a(var_955de774[i]) + "<unknown string>" + function_4414bb5a(var_6d60fb23) + "<unknown string>" + function_4414bb5a(alias) + "<unknown string>");
                    } else {
                        fprintln(file, tab + "<unknown string>" + function_4414bb5a(var_955de774[i]) + "<unknown string>" + function_4414bb5a(var_6d60fb23) + "<unknown string>" + function_4414bb5a(notetrack) + "<unknown string>" + function_4414bb5a(alias) + "<unknown string>");
                    }
                    println("<unknown string>" + alias + "<unknown string>" + notetrack);
                }
            }
        }
        fprintln(file, "<unknown string>");
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0x91c8f22f, Offset: 0x5140
// Size: 0x2fc
function function_f48a99b9() {
    /#
        setdvar(#"hash_328d096ed229649d", 0);
        if (!isdefined(level.var_31c87253) || getdvarint(#"hash_4357414cd411a0d0", 0) != 1) {
            return;
        }
        players = getplayers();
        filename = "<unknown string>" + level.var_3a8f95b4 + "<unknown string>" + players[0].playername + "<unknown string>";
        /#
            file = openfile(filename, "<unknown string>");
            if (file == -1) {
                iprintlnbold("<unknown string>" + filename + "<unknown string>");
                return;
            }
            if (isdefined(level.var_c2ccaeac)) {
                fprintln(file, "<unknown string>" + level.var_c2ccaeac + "<unknown string>");
            } else {
                fprintln(file, "<unknown string>");
            }
            if (level.var_31c87253.size <= 0) {
                fprintln(file, "<unknown string>");
            }
            foreach (var_1f53424f in level.var_31c87253) {
                fprintln(file, var_1f53424f.var_8c76324 + "<unknown string>" + var_1f53424f.var_f93778dc + "<unknown string>" + var_1f53424f.var_d8daf812 + "<unknown string>" + var_1f53424f.var_23ba749);
            }
            fprintln(file, "<unknown string>");
            iprintlnbold("<unknown string>" + filename);
            saved = closefile(file);
        #/
        level.var_31c87253 = [];
    #/
}

// Namespace debug/debug
// Params 1, eflags: 0x0
// Checksum 0xc4bd0071, Offset: 0x5448
// Size: 0x9e
function function_4414bb5a(str) {
    /#
        var_bd930832 = "<unknown string>";
        for (i = 0; i < str.size; i++) {
            if (str[i] == "<unknown string>") {
                var_bd930832 = var_bd930832 + "<unknown string>";
                var_bd930832 = var_bd930832 + "<unknown string>";
            } else {
                var_bd930832 = var_bd930832 + str[i];
            }
        }
        var_bd930832 = var_bd930832 + "<unknown string>";
        return var_bd930832;
    #/
}

// Namespace debug/debug
// Params 5, eflags: 0x0
// Checksum 0xba229db3, Offset: 0x54f0
// Size: 0xc4
function new_hud(hud_name, msg, x, y, scale) {
    /#
        if (!isdefined(level.hud_array)) {
            level.hud_array = [];
        }
        if (!isdefined(level.hud_array[hud_name])) {
            level.hud_array[hud_name] = [];
        }
        hud = set_hudelem(msg, x, y, scale);
        level.hud_array[hud_name][level.hud_array[hud_name].size] = hud;
        return hud;
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0xdc38cc91, Offset: 0x55c0
// Size: 0x464
function debug_show_viewpos() {
    /#
        var_1071292 = newdebughudelem();
        var_1071292.x.var_1071292 = 10;
        var_1071292.y.var_1071292 = 300;
        var_1071292.alpha.var_1071292 = 0;
        var_1071292.alignx.var_1071292 = "<unknown string>";
        var_1071292.fontscale.var_1071292 = 1.2;
        var_1071292 settext(#"hash_59d12e465ccbab9a");
        x_pos = var_1071292.x + 50;
        var_2a7875e1 = newdebughudelem();
        var_2a7875e1.x = x_pos;
        var_2a7875e1.y.var_2a7875e1 = 300;
        var_2a7875e1.alpha.var_2a7875e1 = 0;
        var_2a7875e1.alignx.var_2a7875e1 = "<unknown string>";
        var_2a7875e1.fontscale.var_2a7875e1 = 1.2;
        var_2a7875e1 setvalue(0);
        var_8ef03ed3 = newdebughudelem();
        var_8ef03ed3.x.var_8ef03ed3 = 10;
        var_8ef03ed3.y.var_8ef03ed3 = 300;
        var_8ef03ed3.alpha.var_8ef03ed3 = 0;
        var_8ef03ed3.alignx.var_8ef03ed3 = "<unknown string>";
        var_8ef03ed3.fontscale.var_8ef03ed3 = 1.2;
        var_8ef03ed3 setvalue(0);
        var_7125033d = newdebughudelem();
        var_7125033d.x.var_7125033d = 10;
        var_7125033d.y.var_7125033d = 300;
        var_7125033d.alpha.var_7125033d = 0;
        var_7125033d.alignx.var_7125033d = "<unknown string>";
        var_7125033d.fontscale.var_7125033d = 1.2;
        var_7125033d setvalue(0);
        setdvar(#"debug_show_viewpos", 0);
        players = getplayers();
        while (1) {
            if (getdvarint(#"debug_show_viewpos", 0) > 0) {
                var_1071292.alpha.var_1071292 = 1;
                var_2a7875e1.alpha.var_2a7875e1 = 1;
                var_8ef03ed3.alpha.var_8ef03ed3 = 1;
                var_7125033d.alpha.var_7125033d = 1;
                x = players[0].origin[0];
                y = players[0].origin[1];
                z = players[0].origin[2];
                var_41568b91 = (2 + function_d2d39ee5(x)) * 8 + 10;
                var_b2c0ee64 = (2 + function_d2d39ee5(y)) * 8 + 10;
                var_8ef03ed3.x.var_8ef03ed3 = x_pos + var_41568b91;
                var_7125033d.x.var_7125033d = x_pos + var_41568b91 + var_b2c0ee64;
                var_2a7875e1 setvalue(function_6334846f(x, 100));
                var_8ef03ed3 setvalue(function_6334846f(y, 100));
                var_7125033d setvalue(function_6334846f(z, 100));
            } else {
                var_1071292.alpha.var_1071292 = 0;
                var_2a7875e1.alpha.var_2a7875e1 = 0;
                var_8ef03ed3.alpha.var_8ef03ed3 = 0;
                var_7125033d.alpha.var_7125033d = 0;
            }
            wait(0.5);
        }
    #/
}

// Namespace debug/debug
// Params 1, eflags: 0x0
// Checksum 0xe0277241, Offset: 0x5a30
// Size: 0x78
function function_d2d39ee5(num) {
    /#
        var_dd9c91de = abs(num);
        count = 0;
        while (1) {
            var_dd9c91de = var_dd9c91de * 0.1;
            count = count + 1;
            if (var_dd9c91de < 1) {
                return count;
            }
        }
    #/
}

// Namespace debug/debug
// Params 2, eflags: 0x0
// Checksum 0x119e5348, Offset: 0x5ab0
// Size: 0x3a
function function_6334846f(val, num) {
    /#
        return int(val * num) / num;
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0xc4510e08, Offset: 0x5af8
// Size: 0x16
function function_1261f881() {
    /#
        return level.players[0];
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0xdfb2260, Offset: 0x5b18
// Size: 0x14c
function engagement_distance_debug_toggle() {
    /#
        level endon(#"kill_engage_dist_debug_toggle_watcher");
        laststate = getdvarint(#"debug_engage_dists", 0);
        while (1) {
            currentstate = getdvarint(#"debug_engage_dists", 0);
            if (dvar_turned_on(currentstate) && !dvar_turned_on(laststate)) {
                weapon_engage_dists_init();
                thread debug_realtime_engage_dist();
                thread function_16b58d7f();
                laststate = currentstate;
            } else if (!dvar_turned_on(currentstate) && dvar_turned_on(laststate)) {
                level notify(#"kill_all_engage_dist_debug");
                laststate = currentstate;
            }
            wait(0.3);
        }
    #/
}

// Namespace debug/debug
// Params 1, eflags: 0x0
// Checksum 0x51052030, Offset: 0x5c70
// Size: 0x2a
function dvar_turned_on(val) {
    /#
        if (val <= 0) {
            return 0;
        } else {
            return 1;
        }
    #/
}

// Namespace debug/debug
// Params 1, eflags: 0x0
// Checksum 0x3885cc43, Offset: 0x5ca8
// Size: 0x32a
function engagement_distance_debug_init(player) {
    /#
        level.realtimeengagedist = newdebughudelem(player);
        level.realtimeengagedist.alignx = "<unknown string>";
        level.realtimeengagedist.fontscale = 1.5;
        level.realtimeengagedist.x = -50;
        level.realtimeengagedist.y = 250;
        level.realtimeengagedist.color = (1, 1, 1);
        level.realtimeengagedist settext("<unknown string>");
        xpos = 157;
        level.realtimeengagedist_value = newdebughudelem(player);
        level.realtimeengagedist_value.alignx = "<unknown string>";
        level.realtimeengagedist_value.fontscale = 1.5;
        level.realtimeengagedist_value.x = xpos;
        level.realtimeengagedist_value.y = 250;
        level.realtimeengagedist_value.color = (1, 1, 1);
        level.realtimeengagedist_value setvalue(0);
        xpos = xpos + 37;
        level.realtimeengagedist_middle = newdebughudelem(player);
        level.realtimeengagedist_middle.alignx = "<unknown string>";
        level.realtimeengagedist_middle.fontscale = 1.5;
        level.realtimeengagedist_middle.x = xpos;
        level.realtimeengagedist_middle.y = 250;
        level.realtimeengagedist_middle.color = (1, 1, 1);
        level.realtimeengagedist_middle settext("<unknown string>");
        xpos = xpos + 105;
        level.realtimeengagedist_offvalue = newdebughudelem(player);
        level.realtimeengagedist_offvalue.alignx = "<unknown string>";
        level.realtimeengagedist_offvalue.fontscale = 1.5;
        level.realtimeengagedist_offvalue.x = xpos;
        level.realtimeengagedist_offvalue.y = 250;
        level.realtimeengagedist_offvalue.color = (1, 1, 1);
        level.realtimeengagedist_offvalue setvalue(0);
        hudobjarray = [];
        hudobjarray[0] = level.realtimeengagedist;
        hudobjarray[1] = level.realtimeengagedist_value;
        hudobjarray[2] = level.realtimeengagedist_middle;
        hudobjarray[3] = level.realtimeengagedist_offvalue;
        return hudobjarray;
    #/
}

// Namespace debug/debug
// Params 2, eflags: 0x0
// Checksum 0xe70b209f, Offset: 0x5fe0
// Size: 0x5c
function engage_dist_debug_hud_destroy(hudarray, killnotify) {
    /#
        level waittill(killnotify);
        for (i = 0; i < hudarray.size; i++) {
            hudarray[i] destroy();
        }
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0xd31e35e9, Offset: 0x6048
// Size: 0x284
function weapon_engage_dists_init() {
    /#
        level.engagedists = [];
        genericpistol = spawnstruct();
        genericpistol.engagedistmin.genericpistol = 125;
        genericpistol.engagedistoptimal.genericpistol = 400;
        genericpistol.engagedistmulligan.genericpistol = 100;
        genericpistol.engagedistmax.genericpistol = 600;
        shotty = spawnstruct();
        shotty.engagedistmin.shotty = 0;
        shotty.engagedistoptimal.shotty = 300;
        shotty.engagedistmulligan.shotty = 100;
        shotty.engagedistmax.shotty = 600;
        genericsmg = spawnstruct();
        genericsmg.engagedistmin.genericsmg = 100;
        genericsmg.engagedistoptimal.genericsmg = 500;
        genericsmg.engagedistmulligan.genericsmg = 150;
        genericsmg.engagedistmax.genericsmg = 1000;
        genericriflesa = spawnstruct();
        genericriflesa.engagedistmin.genericriflesa = 325;
        genericriflesa.engagedistoptimal.genericriflesa = 800;
        genericriflesa.engagedistmulligan.genericriflesa = 300;
        genericriflesa.engagedistmax.genericriflesa = 1600;
        generichmg = spawnstruct();
        generichmg.engagedistmin.generichmg = 500;
        generichmg.engagedistoptimal.generichmg = 700;
        generichmg.engagedistmulligan.generichmg = 300;
        generichmg.engagedistmax.generichmg = 1400;
        genericsniper = spawnstruct();
        genericsniper.engagedistmin.genericsniper = 950;
        genericsniper.engagedistoptimal.genericsniper = 2000;
        genericsniper.engagedistmulligan.genericsniper = 500;
        genericsniper.engagedistmax.genericsniper = 3000;
        engage_dists_add("<unknown string>", genericpistol);
        engage_dists_add("<unknown string>", genericsmg);
        engage_dists_add("<unknown string>", shotty);
        engage_dists_add("<unknown string>", generichmg);
        engage_dists_add("<unknown string>", genericriflesa);
        level thread engage_dists_watcher();
    #/
}

// Namespace debug/debug
// Params 2, eflags: 0x0
// Checksum 0xa6362f55, Offset: 0x62d8
// Size: 0x28
function engage_dists_add(weaponname, values) {
    /#
        level.engagedists[weaponname] = values;
    #/
}

// Namespace debug/debug
// Params 1, eflags: 0x0
// Checksum 0xdee91eb6, Offset: 0x6308
// Size: 0x3e
function get_engage_dists(weapon) {
    /#
        if (isdefined(level.engagedists[weapon])) {
            return level.engagedists[weapon];
        } else {
            return undefined;
        }
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0x9c5bbd18, Offset: 0x6350
// Size: 0x108
function engage_dists_watcher() {
    /#
        level endon(#"kill_all_engage_dist_debug", #"kill_engage_dists_watcher");
        while (1) {
            player = function_1261f881();
            playerweapon = player getcurrentweapon();
            if (!isdefined(player.lastweapon)) {
                player.lastweapon = playerweapon;
            } else if (player.lastweapon == playerweapon) {
                waitframe(1);
                continue;
            }
            values = get_engage_dists(playerweapon.weapclass);
            if (isdefined(values)) {
                level.weaponengagedistvalues = values;
            } else {
                level.weaponengagedistvalues = undefined;
            }
            player.lastweapon = playerweapon;
            waitframe(1);
        }
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0x94ec43c2, Offset: 0x6460
// Size: 0x42e
function debug_realtime_engage_dist() {
    /#
        level endon(#"kill_all_engage_dist_debug", #"kill_realtime_engagement_distance_debug");
        player = function_1261f881();
        hudobjarray = engagement_distance_debug_init(player);
        level thread engage_dist_debug_hud_destroy(hudobjarray, "<unknown string>");
        level.debugrtengagedistcolor = (0, 1, 0);
        while (1) {
            lasttracepos = (0, 0, 0);
            direction = player getplayerangles();
            direction_vec = anglestoforward(direction);
            eye = player geteye();
            trace = bullettrace(eye, eye + vectorscale(direction_vec, 10000), 1, player);
            tracepoint = trace[#"position"];
            tracenormal = trace[#"normal"];
            tracedist = int(distance(eye, tracepoint));
            if (tracepoint != lasttracepos) {
                lasttracepos = tracepoint;
                if (!isdefined(level.weaponengagedistvalues)) {
                    hudobj_changecolor(hudobjarray, (1, 1, 1));
                    hudobjarray engagedist_hud_changetext("<unknown string>", tracedist);
                } else {
                    engagedistmin = level.weaponengagedistvalues.engagedistmin;
                    engagedistoptimal = level.weaponengagedistvalues.engagedistoptimal;
                    engagedistmulligan = level.weaponengagedistvalues.engagedistmulligan;
                    engagedistmax = level.weaponengagedistvalues.engagedistmax;
                    if (tracedist >= engagedistmin && tracedist <= engagedistmax) {
                        if (tracedist >= engagedistoptimal - engagedistmulligan && tracedist <= engagedistoptimal + engagedistmulligan) {
                            hudobjarray engagedist_hud_changetext("<unknown string>", tracedist);
                            hudobj_changecolor(hudobjarray, (0, 1, 0));
                        } else {
                            hudobjarray engagedist_hud_changetext("<unknown string>", tracedist);
                            hudobj_changecolor(hudobjarray, (1, 1, 0));
                        }
                    } else if (tracedist < engagedistmin) {
                        hudobj_changecolor(hudobjarray, (1, 0, 0));
                        hudobjarray engagedist_hud_changetext("<unknown string>", tracedist);
                    } else if (tracedist > engagedistmax) {
                        hudobj_changecolor(hudobjarray, (1, 0, 0));
                        hudobjarray engagedist_hud_changetext("<unknown string>", tracedist);
                    }
                }
            }
            thread function_6844bea4(1, 5, 0.05, level.debugrtengagedistcolor, tracepoint, tracenormal);
            thread function_6844bea4(1, 1, 0.05, level.debugrtengagedistcolor, tracepoint, tracenormal);
            waitframe(1);
        }
    #/
}

// Namespace debug/debug
// Params 2, eflags: 0x0
// Checksum 0xc68db50f, Offset: 0x6898
// Size: 0x78
function hudobj_changecolor(hudobjarray, newcolor) {
    /#
        for (i = 0; i < hudobjarray.size; i++) {
            hudobj = hudobjarray[i];
            if (hudobj.color != newcolor) {
                hudobj.color = newcolor;
                level.debugrtengagedistcolor = newcolor;
            }
        }
    #/
}

// Namespace debug/debug
// Params 2, eflags: 0x0
// Checksum 0xc909b92e, Offset: 0x6918
// Size: 0x2ec
function engagedist_hud_changetext(engagedisttype, units) {
    /#
        if (!isdefined(level.lastdisttype)) {
            level.lastdisttype = "<unknown string>";
        }
        if (engagedisttype == "<unknown string>") {
            self[1] setvalue(units);
            self[2] settext("<unknown string>");
            self[3].alpha = 0;
        } else if (engagedisttype == "<unknown string>") {
            self[1] setvalue(units);
            self[2] settext("<unknown string>");
            self[3].alpha = 0;
        } else if (engagedisttype == "<unknown string>") {
            amountunder = level.weaponengagedistvalues.engagedistmin - units;
            self[1] setvalue(units);
            self[3] setvalue(amountunder);
            self[3].alpha = 1;
            if (level.lastdisttype != engagedisttype) {
                self[2] settext("<unknown string>");
            }
        } else if (engagedisttype == "<unknown string>") {
            amountover = units - level.weaponengagedistvalues.engagedistmax;
            self[1] setvalue(units);
            self[3] setvalue(amountover);
            self[3].alpha = 1;
            if (level.lastdisttype != engagedisttype) {
                self[2] settext("<unknown string>");
            }
        } else if (engagedisttype == "<unknown string>") {
            self[1] setvalue(units);
            self[2] settext("<unknown string>");
            self[3].alpha = 0;
        }
        level.lastdisttype = engagedisttype;
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0x8fc879e7, Offset: 0x6c10
// Size: 0x2f6
function function_16b58d7f() {
    /#
        level endon(#"kill_all_engage_dist_debug", #"hash_55d49f3fca6a3bdc");
        player = function_1261f881();
        while (1) {
            axis = getaiteamarray(#"axis");
            if (isdefined(axis) && axis.size > 0) {
                playereye = player geteye();
                for (i = 0; i < axis.size; i++) {
                    ai = axis[i];
                    var_a4e8803e = ai geteye();
                    if (sighttracepassed(playereye, var_a4e8803e, 0, player) && !isvehicle(ai)) {
                        dist = distance(playereye, var_a4e8803e);
                        var_69b566f3 = (1, 1, 1);
                        var_751b53d5 = "<unknown string>";
                        engagedistmin = ai.engagemindist;
                        var_686e2a66 = ai.engageminfalloffdist;
                        var_109383f6 = ai.engagemaxfalloffdist;
                        engagedistmax = ai.engagemaxdist;
                        if (dist >= engagedistmin && dist <= engagedistmax) {
                            var_69b566f3 = (0, 1, 0);
                            var_751b53d5 = "<unknown string>";
                        } else if (dist < engagedistmin && dist >= var_686e2a66) {
                            var_69b566f3 = (1, 1, 0);
                            var_751b53d5 = "<unknown string>";
                        } else if (dist > engagedistmax && dist <= var_109383f6) {
                            var_69b566f3 = (1, 1, 0);
                            var_751b53d5 = "<unknown string>";
                        } else if (dist > var_109383f6) {
                            var_69b566f3 = (1, 0, 0);
                            var_751b53d5 = "<unknown string>";
                        } else if (dist < var_686e2a66) {
                            var_69b566f3 = (1, 0, 0);
                            var_751b53d5 = "<unknown string>";
                        }
                        scale = dist / 1000;
                        print3d(ai.origin + vectorscale((0, 0, 1), 67), var_751b53d5 + "<unknown string>" + dist, var_69b566f3, 1, scale);
                    }
                }
            }
            waitframe(1);
        }
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0xbd9eec2f, Offset: 0x6f10
// Size: 0xcc
function function_2fcd7502() {
    /#
        if (!isdefined(level.var_4c576f0)) {
            function_3171027d();
            level.var_4c576f0 = 1;
        }
        getplayers()[0] thread function_90edec37();
        level waittill(#"hash_34e65f3c6ffc6a39");
        if (isdefined(level.dynamic_spawn_hud)) {
            level.dynamic_spawn_hud destroy();
        }
        if (isdefined(level.dynamic_spawn_dummy_model)) {
            level.dynamic_spawn_dummy_model delete();
        }
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0xd04e19a3, Offset: 0x6fe8
// Size: 0x1a8
function function_3171027d() {
    /#
        spawners = getspawnerarray();
        level.aitypes = [];
        level.var_9f54edf5 = 0;
        var_362d54a0 = [];
        foreach (spawner in spawners) {
            if (!isdefined(var_362d54a0[spawner.classname])) {
                var_362d54a0[spawner.classname] = 1;
                struct = spawnstruct();
                classname = spawner.classname;
                vehicletype = spawner.vehicletype;
                if (issubstr(classname, "<unknown string>")) {
                    struct.radius.struct = 64;
                    struct.isvehicle.struct = 0;
                    classname = getsubstr(classname, 6);
                } else {
                    continue;
                }
                struct.classname = classname;
                level.aitypes[level.aitypes.size] = struct;
            }
        }
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0xd22b68eb, Offset: 0x7198
// Size: 0x726
function function_90edec37() {
    /#
        level endon(#"hash_34e65f3c6ffc6a39");
        /#
            assert(isdefined(level.aitypes) && level.aitypes.size > 0, "<unknown string>");
        #/
        level.dynamic_spawn_hud = newdebughudelem(getplayers()[0]);
        level.dynamic_spawn_hud.alignx = "<unknown string>";
        level.dynamic_spawn_hud.x = 0;
        level.dynamic_spawn_hud.y = 245;
        level.dynamic_spawn_hud.fontscale = 1.5;
        level.dynamic_spawn_hud settext("<unknown string>");
        level.dynamic_spawn_dummy_model = spawn("<unknown string>", (0, 0, 0));
        wait(0.1);
        while (1) {
            direction = self getplayerangles();
            direction_vec = anglestoforward(direction);
            eye = self geteye();
            trace_dist = 4000;
            trace = bullettrace(eye, eye + vectorscale(direction_vec, trace_dist), 0, level.dynamic_spawn_dummy_model);
            dist = distance(eye, trace[#"position"]);
            position = eye + vectorscale(direction_vec, dist - level.aitypes[level.var_9f54edf5].radius);
            origin = position;
            angles = self.angles + vectorscale((0, 1, 0), 180);
            level.dynamic_spawn_dummy_model.origin = position;
            level.dynamic_spawn_dummy_model.angles = angles;
            level.dynamic_spawn_hud settext("<unknown string>" + level.var_9f54edf5 + 1 + "<unknown string>" + level.aitypes.size + "<unknown string>" + level.aitypes[level.var_9f54edf5].classname);
            level.dynamic_spawn_dummy_model detachall();
            level.dynamic_spawn_dummy_model setmodel(level.aitypes[level.var_9f54edf5].classname);
            level.dynamic_spawn_dummy_model show();
            level.dynamic_spawn_dummy_model notsolid();
            if (self usebuttonpressed() || self buttonpressed("<unknown string>")) {
                level.dynamic_spawn_dummy_model hide();
                if (level.aitypes[level.var_9f54edf5].isvehicle) {
                    spawn = spawnvehicle(level.aitypes[level.var_9f54edf5].classname, origin, angles, "<unknown string>");
                } else {
                    spawn = spawnactor(level.aitypes[level.var_9f54edf5].classname, origin, angles, "<unknown string>", 1);
                }
                var_ec8949ef = getdvarint(#"hash_3021082919420d0e", 0);
                var_a127c98a = getdvarint(#"hash_2db0e1d5ff98140b", 0);
                spawn.pacifist.spawn = getdvarint(#"hash_75bbef09faabea97", 0);
                spawn set(#"hash_624cb07df0cbb198", "<unknown string>", var_ec8949ef);
                spawn set(#"hash_624cb07df0cbb198", "<unknown string>", var_a127c98a);
                spawn.fixednode.spawn = 0;
                wait(0.3);
            } else if (self buttonpressed("<unknown string>") || self buttonpressed("<unknown string>")) {
                level.dynamic_spawn_dummy_model hide();
                level.var_9f54edf5++;
                if (level.var_9f54edf5 >= level.aitypes.size) {
                    level.var_9f54edf5 = 0;
                }
                wait(0.3);
            } else if (self buttonpressed("<unknown string>") || self buttonpressed("<unknown string>")) {
                level.dynamic_spawn_dummy_model hide();
                level.var_9f54edf5--;
                if (level.var_9f54edf5 < 0) {
                    level.var_9f54edf5 = level.aitypes.size - 1;
                }
                wait(0.3);
            } else if (self buttonpressed("<unknown string>") || self buttonpressed("<unknown string>")) {
                setdvar(#"debug_dynamic_ai_spawning", 0);
            }
            waitframe(1);
        }
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0x793d1a80, Offset: 0x78c8
// Size: 0x3c
function function_11228d34() {
    /#
        wait(1);
        iprintlnbold("<unknown string>" + level.script + "<unknown string>");
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0x75a9b7b, Offset: 0x7910
// Size: 0x1e4
function function_d2ddc8bc() {
    /#
        guys = getaiarray();
        for (i = 0; i < guys.size; i++) {
            if (guys[i].team == #"axis") {
                print3d(guys[i].origin + vectorscale((0, 0, 1), 70), isdefined(guys[i].goalradius) ? "<unknown string>" + guys[i].goalradius : "<unknown string>", (1, 0, 0), 1, 1, 1);
                record3dtext("<unknown string>" + guys[i].goalradius, guys[i].origin + vectorscale((0, 0, 1), 70), (1, 0, 0), "<unknown string>");
            } else {
                print3d(guys[i].origin + vectorscale((0, 0, 1), 70), isdefined(guys[i].goalradius) ? "<unknown string>" + guys[i].goalradius : "<unknown string>", (0, 1, 0), 1, 1, 1);
                record3dtext("<unknown string>" + guys[i].goalradius, guys[i].origin + vectorscale((0, 0, 1), 70), (0, 1, 0), "<unknown string>");
            }
        }
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0x435a1030, Offset: 0x7b00
// Size: 0x1c0
function function_3a215729() {
    /#
        guys = getaiarray();
        foreach (guy in guys) {
            recordcircle(guy.origin, sqrt(guy.maxsightdistsqrd), (1, 1, 0), "<unknown string>");
        }
        foreach (player in level.players) {
            record3dtext(isdefined(player.maxvisibledist) ? "<unknown string>" + player.maxvisibledist : "<unknown string>", player.origin, (1, 0, 0), "<unknown string>");
            recordcircle(player.origin, player.maxvisibledist, (1, 0, 0), "<unknown string>");
        }
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0x751afdb4, Offset: 0x7cc8
// Size: 0x2c4
function function_6bad5940() {
    /#
        var_d4d10882 = (0, 0, 0);
        guys = getaiarray();
        for (i = 0; i < guys.size; i++) {
            if (isdefined(guys[i] gettagorigin("<unknown string>"))) {
                var_d4d10882 = guys[i] gettagorigin("<unknown string>") + vectorscale((0, 0, 1), 15);
            } else {
                var_d4d10882 = guys[i] getorigin() + vectorscale((0, 0, 1), 70);
            }
            print3d(var_d4d10882, isdefined(guys[i].health) ? "<unknown string>" + guys[i].health : "<unknown string>", level.var_99e12d63[guys[i].team], 1, 0.5);
            recordenttext(isdefined(guys[i].health) ? "<unknown string>" + guys[i].health : "<unknown string>", guys[i], level.var_99e12d63[guys[i].team], "<unknown string>");
        }
        vehicles = getvehiclearray();
        for (i = 0; i < vehicles.size; i++) {
            recordenttext(isdefined(vehicles[i].health) ? "<unknown string>" + vehicles[i].health : "<unknown string>", vehicles[i], level.var_99e12d63[vehicles[i].team], "<unknown string>");
        }
        if (isdefined(level.player)) {
            recordenttext(isdefined(level.player.health) ? "<unknown string>" + level.player.health : "<unknown string>", level.player, level.var_99e12d63[#"allies"], "<unknown string>");
        }
    #/
}

// Namespace debug/debug
// Params 0, eflags: 0x0
// Checksum 0x7f7d8162, Offset: 0x7f98
// Size: 0xe4
function function_feb182a2() {
    /#
        guys = getaiarray();
        for (i = 0; i < guys.size; i++) {
            var_88da7656 = guys[i].engageminfalloffdist + "<unknown string>" + guys[i].engagemindist + "<unknown string>" + guys[i].engagemaxdist + "<unknown string>" + guys[i].engagemaxfalloffdist;
            recordenttext(var_88da7656, guys[i], level.var_99e12d63[guys[i].team], "<unknown string>");
        }
    #/
}

// Namespace debug/debug
// Params 5, eflags: 0x0
// Checksum 0xcd0db45, Offset: 0x8088
// Size: 0xb4
function debug_sphere(origin, radius, color, alpha, time) {
    /#
        if (!isdefined(time)) {
            time = 1000;
        }
        if (!isdefined(color)) {
            color = (1, 1, 1);
        }
        sides = int(10 * (1 + int(radius) % 100));
        sphere(origin, radius, color, alpha, 1, sides, time);
    #/
}
