// Atian COD Tools GSC CW decompiler test
#using script_139ae0bb0a87141c;
#using script_1883fa4e60abbf9f;
#using script_7b68dad851540de;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;

#namespace debug;

// Namespace debug/debug
// Params 2, eflags: 0x0
// Checksum 0xb928678a, Offset: 0xb0
// Size: 0x14
function function_aec6058a(*ent, *vol) {
    
}

#namespace namespace_b0df45a;

// Namespace namespace_b0df45a/debug
// Params 0, eflags: 0x0
// Checksum 0x8f50faab, Offset: 0xd0
// Size: 0x210
function function_4334ac55() {
    /#
        function_5ac4dc99("<unknown string>", "<unknown string>");
        function_5ac4dc99("<unknown string>", "<unknown string>");
        function_5ac4dc99("<unknown string>", "<unknown string>");
        function_5ac4dc99("<unknown string>", -1);
        function_5ac4dc99("<unknown string>", "<unknown string>");
        function_5ac4dc99("<unknown string>", "<unknown string>");
        function_5ac4dc99("<unknown string>", "<unknown string>");
        thread function_f5dd6400();
        while (true) {
            waitframe(1);
            function_613009e2();
            if (!function_852e4bbb()) {
                continue;
            }
            function_84811192("<unknown string>", "<unknown string>");
            function_84811192("<unknown string>", "<unknown string>" + level get("<unknown string>"));
            function_84811192("<unknown string>", "<unknown string>" + level get("<unknown string>"));
            function_ea707af9("<unknown string>");
            function_6a467cff();
            function_5a47b49c();
        }
    #/
}

// Namespace namespace_b0df45a/debug
// Params 0, eflags: 0x0
// Checksum 0x6e4916a2, Offset: 0x2e8
// Size: 0x550
function debug_player() {
    /#
        self endon(#"death");
        hudelem = newdebughudelem(self);
        hudelem.x = -50;
        hudelem.y = 450;
        hudelem.color = (0.5, 1, 0.5);
        hudelem settext("<unknown string>");
        z = 0;
        space = 10;
        tab = "<unknown string>";
        while (true) {
            if (function_852e4bbb() && getplayers().size > 0) {
                player = getplayers()[0];
                if (!isdefined(player.stealth) || !player get("<unknown string>")) {
                    hudelem.alpha = 0;
                } else {
                    hudelem.alpha = 1;
                }
                function_84811192("<unknown string>", "<unknown string>");
                function_84811192("<unknown string>", "<unknown string>" + self.var_d6319e36);
                function_84811192("<unknown string>", tab + "<unknown string>");
                keys = getarraykeys(self.stealth.var_2055753);
                ais = level.stealth.enemies[#"allies"];
                foreach (ai in ais) {
                    if (!isalive(ai)) {
                        continue;
                    }
                    foreach (key in keys) {
                        if (ai.unique_id == key) {
                            msg = tab + "<unknown string>" + self getentitynumber() + "<unknown string>" + self.stealth.var_2055753[key];
                            function_84811192("<unknown string>", msg);
                        }
                    }
                }
                function_84811192("<unknown string>", "<unknown string>" + player.maxvisibledist);
                if (getplayers()[0] get("<unknown string>")) {
                    function_84811192("<unknown string>", "<unknown string>");
                }
                if (getplayers()[0] isnotarget()) {
                    function_84811192("<unknown string>", "<unknown string>");
                }
                if (is_true(getplayers()[0].ignoreme)) {
                    function_84811192("<unknown string>", "<unknown string>");
                }
                if (isdefined(getplayers()[0].stealth.var_f6c2537d) && getplayers()[0].stealth.var_f6c2537d.size > 0) {
                    function_84811192("<unknown string>", "<unknown string>");
                }
            } else {
                hudelem.alpha = 0;
            }
            function_ea707af9("<unknown string>");
            wait(0.05);
        }
    #/
}

// Namespace namespace_b0df45a/debug
// Params 0, eflags: 0x0
// Checksum 0x60ddebea, Offset: 0x840
// Size: 0x118
function function_b4d10409() {
    /#
        self endon(#"death");
        function_5ac4dc99("<unknown string>", "<unknown string>");
        while (true) {
            if (function_852e4bbb()) {
                space = 10;
                count = 0;
                if (self get("<unknown string>")) {
                    print3d(self.origin + (0, 0, count * space * -1), "<unknown string>", (0.2, 1, 0.2), 1, 0.5);
                }
                count++;
                self function_5e5487bf("<unknown string>");
            }
            wait(0.05);
        }
    #/
}

// Namespace namespace_b0df45a/debug
// Params 0, eflags: 0x0
// Checksum 0x5fd5a2a9, Offset: 0x960
// Size: 0x100
function function_8c76fdc5() {
    /#
        self endon(#"death");
        function_5ac4dc99("<unknown string>", "<unknown string>");
        function_5ac4dc99("<unknown string>", "<unknown string>");
        while (true) {
            if (is_true(self.var_fb9a2c03)) {
                return;
            }
            if (function_852e4bbb()) {
                function_d0c3b413();
            }
            num = function_f7282bd9();
            if (num == self getentitynumber()) {
                function_48f1fd1c();
            }
            wait(0.05);
        }
    #/
}

// Namespace namespace_b0df45a/debug
// Params 0, eflags: 0x0
// Checksum 0xe8c682fa, Offset: 0xa68
// Size: 0x54
function function_852e4bbb() {
    /#
        dvar = getdvarstring(#"hash_4bda603314a2d6dc", "<unknown string>");
        return int(dvar);
    #/
}

// Namespace namespace_b0df45a/debug
// Params 0, eflags: 0x0
// Checksum 0x7c40719c, Offset: 0xac8
// Size: 0x54
function function_f7282bd9() {
    /#
        dvar = getdvarstring(#"hash_1d243583f36b0230", "<unknown string>");
        return int(dvar);
    #/
}

// Namespace namespace_b0df45a/debug
// Params 0, eflags: 0x0
// Checksum 0x1799361a, Offset: 0xb28
// Size: 0x54
function function_579409ff() {
    /#
        dvar = getdvarstring(#"hash_447f76d8e8bca45a", "<unknown string>");
        return int(dvar);
    #/
}

// Namespace namespace_b0df45a/debug
// Params 0, eflags: 0x0
// Checksum 0x56d0ee37, Offset: 0xb88
// Size: 0x54
function function_467590e0() {
    /#
        dvar = getdvarstring(#"hash_41f17bf6a4d5df10", "<unknown string>");
        return int(dvar);
    #/
}

// Namespace namespace_b0df45a/debug
// Params 0, eflags: 0x0
// Checksum 0x2efec3b9, Offset: 0xbe8
// Size: 0x54
function function_bc93e0c7() {
    /#
        dvar = getdvarstring(#"hash_5edfe6f0786c6c47", "<unknown string>");
        return int(dvar);
    #/
}

// Namespace namespace_b0df45a/debug
// Params 0, eflags: 0x0
// Checksum 0xea6175d8, Offset: 0xc48
// Size: 0x54
function function_5c17f559() {
    /#
        dvar = getdvarstring(#"hash_6ec105f47827e22a", "<unknown string>");
        return int(dvar);
    #/
}

// Namespace namespace_b0df45a/debug
// Params 0, eflags: 0x0
// Checksum 0xc279354e, Offset: 0xca8
// Size: 0x54
function function_57295e02() {
    /#
        dvar = getdvarstring(#"hash_85ac7cbf1863d36", "<unknown string>");
        return int(dvar);
    #/
}

// Namespace namespace_b0df45a/debug
// Params 0, eflags: 0x0
// Checksum 0x3b77fb39, Offset: 0xd08
// Size: 0x54
function function_9570f40e() {
    /#
        dvar = getdvarstring(#"hash_7a5dba75329d3032", "<unknown string>");
        return int(dvar);
    #/
}

// Namespace namespace_b0df45a/debug
// Params 0, eflags: 0x0
// Checksum 0xedf3badb, Offset: 0xd68
// Size: 0x34
function function_ce9fa82d() {
    /#
        return getdvarstring(#"hash_7f779674ec8b206d", "<unknown string>");
    #/
}

// Namespace namespace_b0df45a/debug
// Params 3, eflags: 0x0
// Checksum 0x93b6b0bf, Offset: 0xda8
// Size: 0x9c
function function_27daaa5f(start, end, color) {
    /#
        num = 3;
        for (i = 0; i < num; i++) {
            start = start + (0, 0, num * 0.05);
            end = end + (0, 0, num * 0.05);
            line(start, end, color);
        }
    #/
}

// Namespace namespace_b0df45a/debug
// Params 4, eflags: 0x0
// Checksum 0x9cac5a48, Offset: 0xe50
// Size: 0xc4
function function_13f746ef(start, end, radius, color) {
    /#
        num = 3;
        for (i = 0; i < num; i++) {
            start = start + (0, 0, num * 0.05);
            end = end + (0, 0, num * 0.05);
            drawcylinder(start, radius, abs(end[2] - start[2]), 1, undefined, color);
        }
    #/
}

// Namespace namespace_b0df45a/debug
// Params 1, eflags: 0x0
// Checksum 0x3dd24649, Offset: 0xf20
// Size: 0x184
function function_a8d5dec6(msg) {
    /#
        if (!level get("<unknown string>")) {
            return;
        }
        type = undefined;
        name = undefined;
        if (isdefined(self.script_noteworthy)) {
            type = "<unknown string>";
            name = self.script_noteworthy;
        } else if (isdefined(self.targetname)) {
            type = "<unknown string>";
            name = self.targetname;
        }
        actor = "<unknown string>" + self getentitynumber() + "<unknown string>" + self.unique_id + "<unknown string>" + self.export;
        if (isdefined(type)) {
            actor = actor + "<unknown string>" + type + "<unknown string>" + name;
        }
        var_4e2d590d = "<unknown string>" + actor + "<unknown string>" + msg;
        println(var_4e2d590d);
        if (getdvarint(#"hash_24e197c870156a5d", 0) == 1) {
            self thread function_bd9767df(msg);
        }
    #/
}

// Namespace namespace_b0df45a/debug
// Params 2, eflags: 0x0
// Checksum 0xa3b78146, Offset: 0x10b0
// Size: 0x14e
function function_84811192(type, msg) {
    /#
        if (!isdefined(level.stealth.debug.screen[type])) {
            level.stealth.debug.screen[type] = 0;
        }
        x = 10;
        if (type == "<unknown string>") {
            y = 50;
        } else if (type == "<unknown string>") {
            y = 150;
        } else if (type == "<unknown string>") {
            y = 250;
        } else {
            y = 350;
        }
        y = y + level.stealth.debug.screen[type] * 15;
        debug2dtext((x, y, 0), msg, (1, 1, 1), 1.25);
        level.stealth.debug.screen[type]++;
    #/
}

// Namespace namespace_b0df45a/debug
// Params 1, eflags: 0x0
// Checksum 0xb31b7898, Offset: 0x1208
// Size: 0x30
function function_ea707af9(type) {
    /#
        level.stealth.debug.screen[type] = 0;
    #/
}

// Namespace namespace_b0df45a/debug
// Params 2, eflags: 0x0
// Checksum 0xea239e25, Offset: 0x1240
// Size: 0x124
function debug_points(points, endonevent) {
    /#
        if (!function_852e4bbb()) {
            return;
        }
        self endon(#"death");
        self endon(endonevent);
        while (true) {
            foreach (point in points) {
                if (isdefined(point.var_9415f2bd)) {
                    print3d(point.origin, "<unknown string>" + point.var_9415f2bd);
                    line(point.origin, self.origin);
                }
            }
            wait(0.05);
        }
    #/
}

// Namespace namespace_b0df45a/debug
// Params 1, eflags: 0x0
// Checksum 0x179c4481, Offset: 0x1370
// Size: 0x1a0
function function_690312e5(type) {
    /#
        if (!function_852e4bbb()) {
            return;
        }
        self endon(#"death");
        self notify(#"hash_4a838a1d085f0c60");
        self endon(#"hash_4a838a1d085f0c60");
        color = (0.2, 1, 0.2);
        msg = "<unknown string>";
        if (type == "<unknown string>") {
            color = (1, 1, 0);
            msg = "<unknown string>";
        } else if (type == "<unknown string>") {
            color = (1, 0.5, 0.25);
            msg = "<unknown string>";
        } else if (type == "<unknown string>") {
            color = (1, 0, 0);
            msg = "<unknown string>";
        } else if (type == "<unknown string>") {
            color = (1, 0, 0);
            msg = "<unknown string>";
        }
        timer = gettime() + 5000;
        while (gettime() < timer) {
            wait(0.05);
            print3d(self.origin + vectorscale((0, 0, 1), 72), msg, color, 1, 3);
        }
    #/
}

// Namespace namespace_b0df45a/debug
// Params 4, eflags: 0x0
// Checksum 0x80489d06, Offset: 0x1518
// Size: 0x5c
function function_7a968b6a(msg, offset, scale, color) {
    /#
        if (!isdefined(color)) {
            color = (1, 1, 1);
        }
        function_314b7255(msg, color, 1, scale, offset);
    #/
}

// Namespace namespace_b0df45a/debug
// Params 6, eflags: 0x0
// Checksum 0x8424bf0e, Offset: 0x1580
// Size: 0x4b0
function function_314b7255(text, color, alpha, scale, offset, life) {
    /#
        if (!function_852e4bbb()) {
            return;
        }
        if (!isdefined(text)) {
            return;
        }
        if (!isdefined(offset)) {
            offset = vectorscale((0, 0, 1), 92);
        }
        if (!isdefined(scale)) {
            scale = 0.5;
        }
        if (!isdefined(life)) {
            life = 3;
        }
        spacing = 10 * scale;
        var_9be0c8ae = 0;
        start = gettime();
        if (!isdefined(self.stealth.var_81c53854)) {
            self.stealth.var_81c53854 = [];
            self.stealth.var_7555e1a1 = -1;
        }
        self.stealth.var_7555e1a1++;
        var_bd61e087 = self.stealth.var_7555e1a1;
        self.stealth.var_81c53854[var_bd61e087] = offset;
        for (previd = var_bd61e087 - 1; isdefined(self.stealth.var_81c53854[previd]); previd = previd - 1) {
            delta = self.stealth.var_81c53854[previd][2] - self.stealth.var_81c53854[previd + 1][2];
            if (delta >= spacing) {
                break;
            }
            self.stealth.var_81c53854[previd] = (self.stealth.var_81c53854[previd][0], self.stealth.var_81c53854[previd][1], self.stealth.var_81c53854[previd + 1][2] + spacing + delta);
        }
        draworigin = self.stealth.var_81c53854[var_bd61e087];
        while (gettime() - start < life * 1000) {
            wait(0.05);
            if (isdefined(self) && isalive(self) && isdefined(self.stealth) && isdefined(self.stealth.var_81c53854) && isdefined(self.stealth.var_81c53854[var_bd61e087])) {
                draworigin = self.origin + self.stealth.var_81c53854[var_bd61e087];
            }
            print3d(draworigin, text, color, alpha, scale, 1);
            draworigin = (draworigin[0], draworigin[1], draworigin[2] + var_9be0c8ae);
            if (isdefined(self) && isalive(self) && isdefined(self.stealth) && isdefined(self.stealth.var_81c53854) && isdefined(self.stealth.var_81c53854[var_bd61e087])) {
                self.stealth.var_81c53854[var_bd61e087] = (self.stealth.var_81c53854[var_bd61e087][0], self.stealth.var_81c53854[var_bd61e087][1], self.stealth.var_81c53854[var_bd61e087][2] + var_9be0c8ae);
            }
        }
        if (isdefined(self) && isalive(self) && isdefined(self.stealth) && isdefined(self.stealth.var_81c53854) && isdefined(self.stealth.var_81c53854[var_bd61e087])) {
            self.stealth.var_81c53854[var_bd61e087] = undefined;
        }
    #/
}

// Namespace namespace_b0df45a/debug
// Params 2, eflags: 0x0
// Checksum 0xc69b1d14, Offset: 0x1a38
// Size: 0x1e0
function function_5e5487bf(team, *offset) {
    /#
        enemies = getactorteamarray(offset);
        if (offset == "<unknown string>") {
            enemies[enemies.size] = getplayers()[0];
        }
        yellow = (1, 1, 0);
        green = (0, 1, 0);
        red = (1, 0, 0);
        foreach (enemy in enemies) {
            var_cd8b4d58 = function_a3f6cdac(enemy.maxvisibledist + 200);
            var_c3c4cc11 = function_a3f6cdac(enemy.maxvisibledist);
            distsqrd = distancesquared(enemy.origin, self.origin);
            if (distsqrd < var_c3c4cc11) {
                color = red;
            } else if (distsqrd < var_cd8b4d58) {
                color = yellow;
            } else {
                color = green;
            }
            line(self.origin, enemy.origin, color);
        }
    #/
}

// Namespace namespace_b0df45a/debug
// Params 0, eflags: 0x0
// Checksum 0x492664aa, Offset: 0x1c20
// Size: 0x65c
function function_d0c3b413() {
    /#
        space = 10;
        count = 0;
        size = 0.5;
        white = (1, 1, 1);
        red = (1, 0, 0);
        yellow = (1, 1, 0);
        if (function_467590e0()) {
            self function_29356708();
        }
        var_a6b57aa4 = "<unknown string>";
        var_49cc65bc = self function_f66c4255();
        if (isdefined(var_49cc65bc)) {
            var_a6b57aa4 = var_49cc65bc;
        }
        if (self has_behavior_attribute("<unknown string>")) {
            var_a6b57aa4 = self get_behavior_attribute("<unknown string>");
        }
        var_b2d4b874 = "<unknown string>";
        var_4fa3c3e0 = "<unknown string>";
        var_5ccca8b0 = 0;
        var_9bd7a27 = getgroup(self.var_d6319e36);
        pod = function_9fd1b21a(var_9bd7a27, self);
        if (isdefined(self.stealth.var_abf79234)) {
            switch (self.stealth.var_abf79234) {
            case 0:
                var_b2d4b874 = "<unknown string>";
                break;
            case 1:
                var_b2d4b874 = "<unknown string>";
                if (isdefined(level.stealth.var_65d8f1bf[self.var_d6319e36])) {
                    var_5ccca8b0 = 1;
                }
                break;
            case 2:
                var_b2d4b874 = "<unknown string>";
                if (isdefined(level.stealth.var_d89f1312[self.var_d6319e36])) {
                    var_5ccca8b0 = 1;
                }
                if (!is_true(pod.var_7beb0c9b)) {
                    var_4fa3c3e0 = "<unknown string>";
                } else {
                    var_4fa3c3e0 = "<unknown string>";
                }
                break;
            case 3:
                var_b2d4b874 = "<unknown string>";
                if (isdefined(level.stealth.var_ba446feb[self.var_d6319e36])) {
                    var_5ccca8b0 = 1;
                }
                break;
            }
        }
        print3d(self.origin - (0, 0, count * space), self getentitynumber() + "<unknown string>" + var_b2d4b874 + var_4fa3c3e0, white, 1, size);
        count++;
        print3d(self.origin - (0, 0, count * space), "<unknown string>" + var_a6b57aa4, white, 1, size);
        count++;
        var_6a0e4d9a = "<unknown string>";
        if (isdefined(self.enemy)) {
            var_6a0e4d9a = var_6a0e4d9a + "<unknown string>" + self.enemy getentitynumber() + "<unknown string>";
        }
        if (var_5ccca8b0) {
            var_6a0e4d9a = var_6a0e4d9a + "<unknown string>";
        }
        if (var_6a0e4d9a.size > 0) {
            print3d(self.origin - (0, 0, count * space), var_6a0e4d9a, yellow, 1, size);
            count++;
        }
        if (isdefined(self.var_97495fe1)) {
            print3d(self.origin - (0, 0, count * space), "<unknown string>" + self.var_97495fe1, red, 1, size);
            count++;
        }
        group = "<unknown string>";
        if (isdefined(self.var_d6319e36)) {
            group = "<unknown string>" + self.var_d6319e36 + "<unknown string>";
        }
        if (group.size > 0) {
            print3d(self.origin - (0, 0, count * space), group, white, 1, size);
            count++;
        }
        if (getplayers().size > 0 && self cansee(getplayers()[0])) {
            print3d(self.origin - (0, 0, count * space), "<unknown string>", red, 1, size);
            count++;
        }
        if (isdefined(self.var_f878f103)) {
            line(self geteye(), self.var_f878f103, (1, 1, 0));
        }
        var_9c9fde23 = self.origin + vectorscale((0, 0, 1), 8);
        var_8f5850f9 = self.origin + vectorscale((0, 0, 1), 8) + anglestoforward(self.angles) * 36;
        line(var_9c9fde23, var_8f5850f9, (0, 0, 1));
    #/
}

// Namespace namespace_b0df45a/debug
// Params 3, eflags: 0x0
// Checksum 0x191d2a50, Offset: 0x2288
// Size: 0xac
function function_3e6e06ae(baseangles, angle, var_875fcd86) {
    /#
        if (var_875fcd86 == 0) {
            return anglestoforward(baseangles + (angle, 0, 0));
        }
        if (var_875fcd86 == 1) {
            return anglestoforward(baseangles + (0, angle, 0));
        }
        if (var_875fcd86 == 2) {
            return anglestoforward(baseangles + (0, 0, angle));
        }
    #/
}

// Namespace namespace_b0df45a/debug
// Params 8, eflags: 0x0
// Checksum 0xefed9505, Offset: 0x2340
// Size: 0x16c
function function_391d248f(origin, startangle, endangle, baseangles, var_48ff4b02, var_875fcd86, var_6246c419, color) {
    /#
        /#
            assert(startangle < endangle);
        #/
        var_4b9eed7f = origin + var_48ff4b02 * function_3e6e06ae(baseangles, startangle, var_875fcd86);
        var_ae402dfe = var_4b9eed7f;
        line(origin, var_4b9eed7f, color);
        angledelta = (endangle - startangle) / var_6246c419;
        for (i = 1; i < var_6246c419 + 1; i++) {
            angle = startangle + angledelta * i;
            var_ae402dfe = origin + var_48ff4b02 * function_3e6e06ae(baseangles, angle, var_875fcd86);
            line(var_4b9eed7f, var_ae402dfe, color);
            var_4b9eed7f = var_ae402dfe;
        }
        line(origin, var_ae402dfe, color);
    #/
}

// Namespace namespace_b0df45a/debug
// Params 0, eflags: 0x0
// Checksum 0xf9c2ae01, Offset: 0x24b8
// Size: 0x38c
function function_29356708() {
    /#
        dot = self.fovcosine;
        if (isdefined(self.enemy)) {
            dot = self.fovcosinebusy;
        }
        color = (1, 0, 0);
        var_7f663bfb = acos(dot);
        if (isai(self)) {
            var_62729df5 = self gettagangles("<unknown string>")[1];
        } else {
            var_62729df5 = self gettagangles("<unknown string>")[1];
        }
        viewdist = getplayers()[0].maxvisibledist;
        if (isai(self)) {
            start = self gettagorigin("<unknown string>");
        } else {
            start = self gettagorigin("<unknown string>");
        }
        var_16d2c066 = 10;
        function_391d248f(start, -1 * var_7f663bfb, var_7f663bfb, (0, var_62729df5, 0), viewdist, 1, var_16d2c066, color);
        if (self.fovcosinez > dot) {
            color = color * 0.5;
            var_3deb2d7d = acos(self.fovcosinez);
            var_8b97ee98 = 0;
            function_391d248f(start, -1 * var_3deb2d7d, var_3deb2d7d, (var_8b97ee98, var_62729df5, 0), viewdist, 0, var_16d2c066, color);
        }
        var_346c7ea3 = acos(self.var_6068813f);
        function_391d248f(start, -1 * var_346c7ea3, var_346c7ea3, (0, var_62729df5, 0), sqrt(self.var_c06e76e7), 1, var_16d2c066, vectorscale((1, 1, 0), 0.5));
        if (is_true(self.var_3d84fa3e.on)) {
            start = self gettagorigin(self.var_3d84fa3e.tag);
            yaw = self gettagangles(self.var_3d84fa3e.tag)[1];
            if (isdefined(start) && isdefined(yaw)) {
                var_7f663bfb = 30 * 0.5;
                function_391d248f(start, -1 * var_7f663bfb, var_7f663bfb, (0, yaw, 0), isdefined(self.var_1c936867) ? self.var_1c936867 : 850, 1, var_16d2c066, (1, 1, 0));
            }
        }
    #/
}

// Namespace namespace_b0df45a/debug
// Params 0, eflags: 0x0
// Checksum 0x41804c42, Offset: 0x2850
// Size: 0x34c
function function_48f1fd1c() {
    /#
        tab = "<unknown string>";
        function_84811192("<unknown string>", "<unknown string>" + self getentitynumber() + "<unknown string>");
        function_84811192("<unknown string>", "<unknown string>" + self.var_d6319e36);
        function_84811192("<unknown string>", "<unknown string>" + self.alertlevel);
        function_84811192("<unknown string>", "<unknown string>" + self.stealth.state);
        if (isdefined(self.enemy)) {
            enemy = self.enemy getentitynumber();
        } else {
            enemy = "<unknown string>";
        }
        function_84811192("<unknown string>", "<unknown string>" + enemy);
        function_84811192("<unknown string>", "<unknown string>" + self.stealth.var_8fb63790);
        if (self.team == "<unknown string>") {
            team = "<unknown string>";
        } else {
            team = "<unknown string>";
        }
        enemies = getactorteamarray(team);
        if (team == "<unknown string>") {
            enemies[enemies.size] = getplayers()[0];
        }
        foreach (enemy in enemies) {
            if (!isdefined(enemy.stealth)) {
                continue;
            }
            if (!isdefined(enemy.stealth.var_2055753)) {
                continue;
            }
            if (isdefined(enemy.stealth.var_2055753[self.unique_id])) {
                function_84811192("<unknown string>", tab + "<unknown string>");
                msg = tab + "<unknown string>" + enemy getentitynumber() + "<unknown string>" + enemy.stealth.var_2055753[self.unique_id];
                function_84811192("<unknown string>", msg);
            }
        }
        function_ea707af9("<unknown string>");
    #/
}

// Namespace namespace_b0df45a/debug
// Params 0, eflags: 0x0
// Checksum 0x819cb48f, Offset: 0x2ba8
// Size: 0x304
function function_f5dd6400() {
    /#
        var_9d1f58f3 = 30000;
        level.stealth.var_8f448777 = [];
        level.stealth.var_855b67ea = 0;
        level.stealth.var_42d9f5df = 0;
        var_b5a9b1ac = 50;
        var_c6f9544b = 340;
        var_1dccd487 = 17;
        var_4c0b606b = 1;
        textcolor = (1, 1, 1);
        var_1caac9f9 = level.stealth;
        while (true) {
            if (function_bc93e0c7()) {
                var_12febe81 = gettime() - var_9d1f58f3;
                if (var_1caac9f9.var_42d9f5df > 0) {
                    cury = var_c6f9544b;
                    curline = var_1caac9f9.var_855b67ea;
                    for (iline = 0; iline < var_1caac9f9.var_42d9f5df; iline++) {
                        if (!isdefined(var_1caac9f9.var_8f448777[curline]) || var_1caac9f9.var_8f448777[curline].time > var_12febe81) {
                            text = "<unknown string>";
                            if (isstring(var_1caac9f9.var_8f448777[curline].speaker)) {
                                text = text + var_1caac9f9.var_8f448777[curline].speaker;
                            } else {
                                foreach (speaker in var_1caac9f9.var_8f448777[curline].speaker) {
                                    if (isdefined(speaker)) {
                                        text = text + "<unknown string>" + speaker getentitynumber();
                                    }
                                }
                                var_1caac9f9.var_8f448777[curline].speaker = text;
                            }
                            text = text + "<unknown string>" + var_1caac9f9.var_8f448777[curline].text;
                            debug2dtext((var_b5a9b1ac, cury, 0), text, textcolor, 1, undefined, undefined, var_4c0b606b);
                            cury = cury + var_1dccd487;
                        }
                        curline = (curline + 1) % 16;
                    }
                }
            }
            waitframe(1);
        }
    #/
}

// Namespace namespace_b0df45a/debug
// Params 2, eflags: 0x0
// Checksum 0xd8e80e76, Offset: 0x2eb8
// Size: 0x1e4
function function_65b21ab8(speaker, line) {
    /#
        stealth = level.stealth;
        var_e4b759ea = (stealth.var_855b67ea + stealth.var_42d9f5df) % 16;
        curtime = gettime();
        var_e4434c3b = var_e4b759ea - 1;
        if (var_e4434c3b < 0) {
            var_e4434c3b = 16 - 1;
        }
        if (isdefined(stealth.var_8f448777[var_e4434c3b]) && stealth.var_8f448777[var_e4434c3b].time == curtime && stealth.var_8f448777[var_e4434c3b].text == line) {
            stealth.var_8f448777[var_e4434c3b].speaker[stealth.var_8f448777[var_e4434c3b].speaker.size] = speaker;
            return;
        }
        s = spawnstruct();
        s.speaker = [0:speaker];
        s.text = line;
        s.time = curtime;
        stealth.var_8f448777[var_e4b759ea] = s;
        if (var_e4b759ea == stealth.var_855b67ea && stealth.var_42d9f5df > 0) {
            stealth.var_855b67ea = (stealth.var_855b67ea + 1) % 16;
        } else {
            stealth.var_42d9f5df++;
        }
        /#
            assert(stealth.var_42d9f5df <= 16);
        #/
    #/
}

// Namespace namespace_b0df45a/debug
// Params 2, eflags: 0x0
// Checksum 0x2da5a96, Offset: 0x30a8
// Size: 0xdc
function function_bd9767df(message, duration) {
    /#
        self notify(#"hash_60765f522d73ffeb");
        self endon(#"hash_60765f522d73ffeb");
        self endon(#"death");
        if (!isdefined(duration)) {
            duration = 5;
        }
        for (time = 0; time < duration * 20; time++) {
            print3d(self.origin + vectorscale((0, 0, 1), 45), message, (0.48, 9.4, 0.76), 0.85);
            wait(0.05);
        }
    #/
}

// Namespace namespace_b0df45a/debug
// Params 3, eflags: 0x0
// Checksum 0x633bdd7a, Offset: 0x3190
// Size: 0x104
function function_41282cc9(origin, angles, length) {
    /#
        var_413e029e = anglestoaxis(angles);
        forward = var_413e029e.forward * length;
        right = var_413e029e.right * length;
        up = var_413e029e.up * length;
        line(origin - forward, origin + forward, (1, 0, 0), 1);
        line(origin - up, origin + up, (0, 1, 0), 1);
        line(origin - right, origin + right, (0, 0, 1), 1);
    #/
}

// Namespace namespace_b0df45a/debug
// Params 0, eflags: 0x0
// Checksum 0x5cd9c422, Offset: 0x32a0
// Size: 0x3e8
function function_613009e2() {
    /#
        if (!isdefined(level.var_1ccc840f)) {
            return;
        }
        var_cfd8b974 = function_5c17f559();
        if (var_cfd8b974 == 0) {
            return;
        }
        colorgreen = (0.5, 0.7, 0.5);
        colorred = (0.7, 0.1, 0.1);
        colorgray = vectorscale((1, 1, 1), 0.7);
        foreach (obj in level.var_1ccc840f) {
            angles = (0, 0, 0);
            if (isdefined(obj.angles)) {
                angles = obj.angles;
            }
            canuse = can_use(obj);
            claimed = isdefined(obj.claimer);
            color = colorgray;
            if (claimed) {
                color = colorgreen;
            } else if (!canuse) {
                color = colorred;
            }
            function_41282cc9(obj.origin, angles, 12);
            print3d(obj.origin - vectorscale((0, 0, 1), 12), function_9e72a96(obj.scriptbundlename), color, 1, 0.3, 1);
            if (!canuse) {
                print3d(obj.origin - vectorscale((0, 0, 1), 20), "<unknown string>" + obj.var_cd9d7cb - gettime(), color, 1, 0.3, 1);
            }
            print3d(obj.origin - vectorscale((0, 0, 1), 28), "<unknown string>" + obj.var_dd0284ce, color, 1, 0.3, 1);
            if (isdefined(obj.var_2edb5d76) && canuse) {
                r = sqrt(obj.var_2edb5d76);
                function_391d248f(obj.origin, 0, 360, angles, r, 1, 8, color);
            }
            if (claimed) {
                print3d(obj.origin - vectorscale((0, 0, 1), 18), "<unknown string>" + obj.claimer getentitynumber(), color, 1, 0.3, 1);
                line(obj.origin, obj.claimer.origin, color, 1, 0, 1);
            }
        }
    #/
}

// Namespace namespace_b0df45a/debug
// Params 0, eflags: 0x0
// Checksum 0xa11107c, Offset: 0x3690
// Size: 0x3ec
function function_6a467cff() {
    /#
        var_331da3eb = function_57295e02();
        if (var_331da3eb == 0) {
            return;
        }
        if (!isdefined(level.stealth.var_ebbdef7a)) {
            return;
        }
        var_f10172cb = function_ce9fa82d();
        foreach (group, var_462028a0 in level.stealth.var_ebbdef7a) {
            if (var_f10172cb != group && var_f10172cb != "<unknown string>") {
                continue;
            }
            foreach (region in var_462028a0.var_6ccb99d7) {
                for (i = 1; i < region.var_e7f2146e.size; i++) {
                    var_859e9f1c = region.var_e7f2146e[i - 1];
                    p1 = region.var_e7f2146e[i];
                    line(var_859e9f1c.origin, p1.origin, vectorscale((0, 1, 0), 0.7), 1, 0, 1);
                }
                foreach (smart_object in region.var_b60f2156) {
                    function_391d248f(smart_object.origin, 0, 360, smart_object.angles, 10, 1, 3, vectorscale((1, 0, 0), 0.7));
                }
                foreach (point in region.var_dcc5d0c0) {
                    foreach (var_f4f0dcfd in point.transitions) {
                        line(point.origin, var_f4f0dcfd.origin, vectorscale((1, 1, 0), 0.7), 1, 0, 1);
                    }
                }
            }
        }
    #/
}

// Namespace namespace_b0df45a/debug
// Params 0, eflags: 0x0
// Checksum 0x594c7910, Offset: 0x3a88
// Size: 0x500
function function_5a47b49c() {
    /#
        var_191afba9 = function_9570f40e();
        if (var_191afba9 == 0) {
            return;
        }
        if (!isdefined(level.stealth.var_ebbdef7a)) {
            return;
        }
        var_f10172cb = function_ce9fa82d();
        foreach (group, var_462028a0 in level.stealth.var_ebbdef7a) {
            if (var_f10172cb != group && var_f10172cb != "<unknown string>") {
                continue;
            }
            var_7010df74 = [];
            foreach (region in var_462028a0.var_6ccb99d7) {
                /#
                    assert(isdefined(region.var_efc995b3));
                #/
                space = 10;
                count = 0;
                size = 0.5;
                white = (1, 1, 1);
                print3d(region.var_efc995b3 - (0, 0, count * space), "<unknown string>" + region.index, white, 1, size);
                count++;
                print3d(region.var_efc995b3 - (0, 0, count * space), "<unknown string>" + region.var_b7f459a6, white, 1, size);
                count++;
                print3d(region.var_efc995b3 - (0, 0, count * space), "<unknown string>" + region.var_fce4be17.var_792655ad, white, 1, size);
                count++;
                print3d(region.var_efc995b3 - (0, 0, count * space), "<unknown string>" + region.var_fce4be17.var_841cd537, white, 1, size);
                count++;
                print3d(region.var_efc995b3 - (0, 0, count * space), "<unknown string>" + region.var_3fc78cb6, white, 1, size);
                var_fa6f8c7e = region.var_fce4be17.var_e8ce4164 - gettime();
                if (var_fa6f8c7e > 0) {
                    count++;
                    print3d(region.var_efc995b3 - (0, 0, count * space), "<unknown string>" + var_fa6f8c7e, white, 1, size);
                }
            }
            foreach (region in var_462028a0.var_6ccb99d7) {
                foreach (link in region.var_606108c5) {
                    var_35b60bb6 = link.region;
                    line(region.var_efc995b3, var_35b60bb6.var_efc995b3, vectorscale((0, 0, 1), 0.7), 1, 0, 1);
                }
            }
        }
    #/
}

