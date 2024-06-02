// Atian COD Tools GSC CW decompiler test
#using script_139ae0bb0a87141c;
#using scripts\core_common\stealth\utility.gsc;
#using script_7b68dad851540de;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;

#namespace debug;

// Namespace debug/debug
// Params 2, eflags: 0x0
// Checksum 0xb928678a, Offset: 0xb0
// Size: 0x14
function scalevolume(*ent, *vol) {
    
}

#namespace stealth_debug;

/#

    // Namespace stealth_debug/debug
    // Params 0, eflags: 0x0
    // Checksum 0x8f50faab, Offset: 0xd0
    // Size: 0x210
    function debug_manager() {
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
            if (!debug_enabled()) {
                continue;
            }
            function_84811192("<unknown string>", "<unknown string>");
            function_84811192("<unknown string>", "<unknown string>" + level flag::get("<unknown string>"));
            function_84811192("<unknown string>", "<unknown string>" + level flag::get("<unknown string>"));
            function_ea707af9("<unknown string>");
            function_6a467cff();
            function_5a47b49c();
        }
    }

    // Namespace stealth_debug/debug
    // Params 0, eflags: 0x0
    // Checksum 0x6e4916a2, Offset: 0x2e8
    // Size: 0x550
    function debug_player() {
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
            if (debug_enabled() && getplayers().size > 0) {
                player = getplayers()[0];
                if (!isdefined(player.stealth) || !player flag::get("<unknown string>")) {
                    hudelem.alpha = 0;
                } else {
                    hudelem.alpha = 1;
                }
                function_84811192("<unknown string>", "<unknown string>");
                function_84811192("<unknown string>", "<unknown string>" + self.script_stealthgroup);
                function_84811192("<unknown string>", tab + "<unknown string>");
                keys = getarraykeys(self.stealth.spotted_list);
                ais = level.stealth.enemies[#"allies"];
                foreach (ai in ais) {
                    if (!isalive(ai)) {
                        continue;
                    }
                    foreach (key in keys) {
                        if (ai.unique_id == key) {
                            msg = tab + "<unknown string>" + self getentitynumber() + "<unknown string>" + self.stealth.spotted_list[key];
                            function_84811192("<unknown string>", msg);
                        }
                    }
                }
                function_84811192("<unknown string>", "<unknown string>" + player.maxvisibledist);
                if (getplayers()[0] flag::get("<unknown string>")) {
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
    }

    // Namespace stealth_debug/debug
    // Params 0, eflags: 0x0
    // Checksum 0x60ddebea, Offset: 0x840
    // Size: 0x118
    function debug_friendly() {
        self endon(#"death");
        function_5ac4dc99("<unknown string>", "<unknown string>");
        while (true) {
            if (debug_enabled()) {
                space = 10;
                count = 0;
                if (self flag::get("<unknown string>")) {
                    print3d(self.origin + (0, 0, count * space * -1), "<unknown string>", (0.2, 1, 0.2), 1, 0.5);
                }
                count++;
                self draw_enemies("<unknown string>");
            }
            wait(0.05);
        }
    }

    // Namespace stealth_debug/debug
    // Params 0, eflags: 0x0
    // Checksum 0x5fd5a2a9, Offset: 0x960
    // Size: 0x100
    function debug_enemy() {
        self endon(#"death");
        function_5ac4dc99("<unknown string>", "<unknown string>");
        function_5ac4dc99("<unknown string>", "<unknown string>");
        while (true) {
            if (is_true(self.in_melee_death)) {
                return;
            }
            if (debug_enabled()) {
                function_d0c3b413();
            }
            num = function_f7282bd9();
            if (num == self getentitynumber()) {
                function_48f1fd1c();
            }
            wait(0.05);
        }
    }

    // Namespace stealth_debug/debug
    // Params 0, eflags: 0x0
    // Checksum 0xe8c682fa, Offset: 0xa68
    // Size: 0x54
    function debug_enabled() {
        dvar = getdvarstring(#"hash_4bda603314a2d6dc", "<unknown string>");
        return int(dvar);
    }

    // Namespace stealth_debug/debug
    // Params 0, eflags: 0x0
    // Checksum 0x7c40719c, Offset: 0xac8
    // Size: 0x54
    function function_f7282bd9() {
        dvar = getdvarstring(#"hash_1d243583f36b0230", "<unknown string>");
        return int(dvar);
    }

    // Namespace stealth_debug/debug
    // Params 0, eflags: 0x0
    // Checksum 0x1799361a, Offset: 0xb28
    // Size: 0x54
    function function_579409ff() {
        dvar = getdvarstring(#"hash_447f76d8e8bca45a", "<unknown string>");
        return int(dvar);
    }

    // Namespace stealth_debug/debug
    // Params 0, eflags: 0x0
    // Checksum 0x56d0ee37, Offset: 0xb88
    // Size: 0x54
    function function_467590e0() {
        dvar = getdvarstring(#"hash_41f17bf6a4d5df10", "<unknown string>");
        return int(dvar);
    }

    // Namespace stealth_debug/debug
    // Params 0, eflags: 0x0
    // Checksum 0x2efec3b9, Offset: 0xbe8
    // Size: 0x54
    function function_bc93e0c7() {
        dvar = getdvarstring(#"hash_5edfe6f0786c6c47", "<unknown string>");
        return int(dvar);
    }

    // Namespace stealth_debug/debug
    // Params 0, eflags: 0x0
    // Checksum 0xea6175d8, Offset: 0xc48
    // Size: 0x54
    function function_5c17f559() {
        dvar = getdvarstring(#"hash_6ec105f47827e22a", "<unknown string>");
        return int(dvar);
    }

    // Namespace stealth_debug/debug
    // Params 0, eflags: 0x0
    // Checksum 0xc279354e, Offset: 0xca8
    // Size: 0x54
    function function_57295e02() {
        dvar = getdvarstring(#"hash_85ac7cbf1863d36", "<unknown string>");
        return int(dvar);
    }

    // Namespace stealth_debug/debug
    // Params 0, eflags: 0x0
    // Checksum 0x3b77fb39, Offset: 0xd08
    // Size: 0x54
    function function_9570f40e() {
        dvar = getdvarstring(#"hash_7a5dba75329d3032", "<unknown string>");
        return int(dvar);
    }

    // Namespace stealth_debug/debug
    // Params 0, eflags: 0x0
    // Checksum 0xedf3badb, Offset: 0xd68
    // Size: 0x34
    function function_ce9fa82d() {
        return getdvarstring(#"hash_7f779674ec8b206d", "<unknown string>");
    }

    // Namespace stealth_debug/debug
    // Params 3, eflags: 0x0
    // Checksum 0x93b6b0bf, Offset: 0xda8
    // Size: 0x9c
    function thick_line(start, end, color) {
        num = 3;
        for (i = 0; i < num; i++) {
            start += (0, 0, num * 0.05);
            end += (0, 0, num * 0.05);
            line(start, end, color);
        }
    }

    // Namespace stealth_debug/debug
    // Params 4, eflags: 0x0
    // Checksum 0x9cac5a48, Offset: 0xe50
    // Size: 0xc4
    function thick_cylinder(start, end, radius, color) {
        num = 3;
        for (i = 0; i < num; i++) {
            start += (0, 0, num * 0.05);
            end += (0, 0, num * 0.05);
            util::drawcylinder(start, radius, abs(end[2] - start[2]), 1, undefined, color);
        }
    }

    // Namespace stealth_debug/debug
    // Params 1, eflags: 0x0
    // Checksum 0x3dd24649, Offset: 0xf20
    // Size: 0x184
    function function_a8d5dec6(msg) {
        if (!level flag::get("<unknown string>")) {
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
            actor += "<unknown string>" + type + "<unknown string>" + name;
        }
        txt = "<unknown string>" + actor + "<unknown string>" + msg;
        println(txt);
        if (getdvarint(#"hash_24e197c870156a5d", 0) == 1) {
            self thread function_bd9767df(msg);
        }
    }

    // Namespace stealth_debug/debug
    // Params 2, eflags: 0x0
    // Checksum 0xa3b78146, Offset: 0x10b0
    // Size: 0x14e
    function function_84811192(type, msg) {
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
        y += level.stealth.debug.screen[type] * 15;
        debug2dtext((x, y, 0), msg, (1, 1, 1), 1.25);
        level.stealth.debug.screen[type]++;
    }

    // Namespace stealth_debug/debug
    // Params 1, eflags: 0x0
    // Checksum 0xb31b7898, Offset: 0x1208
    // Size: 0x30
    function function_ea707af9(type) {
        level.stealth.debug.screen[type] = 0;
    }

    // Namespace stealth_debug/debug
    // Params 2, eflags: 0x0
    // Checksum 0xea239e25, Offset: 0x1240
    // Size: 0x124
    function debug_points(points, endonevent) {
        if (!debug_enabled()) {
            return;
        }
        self endon(#"death");
        self endon(endonevent);
        while (true) {
            foreach (point in points) {
                if (isdefined(point.used_time)) {
                    print3d(point.origin, "<unknown string>" + point.used_time);
                    line(point.origin, self.origin);
                }
            }
            wait(0.05);
        }
    }

    // Namespace stealth_debug/debug
    // Params 1, eflags: 0x0
    // Checksum 0x179c4481, Offset: 0x1370
    // Size: 0x1a0
    function function_690312e5(type) {
        if (!debug_enabled()) {
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
            print3d(self.origin + (0, 0, 72), msg, color, 1, 3);
        }
    }

    // Namespace stealth_debug/debug
    // Params 4, eflags: 0x0
    // Checksum 0x80489d06, Offset: 0x1518
    // Size: 0x5c
    function function_7a968b6a(msg, offset, scale, color) {
        if (!isdefined(color)) {
            color = (1, 1, 1);
        }
        function_314b7255(msg, color, 1, scale, offset);
    }

    // Namespace stealth_debug/debug
    // Params 6, eflags: 0x0
    // Checksum 0x8424bf0e, Offset: 0x1580
    // Size: 0x4b0
    function function_314b7255(text, color, alpha, scale, offset, life) {
        if (!debug_enabled()) {
            return;
        }
        if (!isdefined(text)) {
            return;
        }
        if (!isdefined(offset)) {
            offset = (0, 0, 92);
        }
        if (!isdefined(scale)) {
            scale = 0.5;
        }
        if (!isdefined(life)) {
            life = 3;
        }
        spacing = 10 * scale;
        riserate = 0;
        start = gettime();
        if (!isdefined(self.stealth.debug_rising)) {
            self.stealth.debug_rising = [];
            self.stealth.var_7555e1a1 = -1;
        }
        self.stealth.var_7555e1a1++;
        myid = self.stealth.var_7555e1a1;
        self.stealth.debug_rising[myid] = offset;
        for (previd = myid - 1; isdefined(self.stealth.debug_rising[previd]); previd -= 1) {
            delta = self.stealth.debug_rising[previd][2] - self.stealth.debug_rising[previd + 1][2];
            if (delta >= spacing) {
                break;
            }
            self.stealth.debug_rising[previd] = (self.stealth.debug_rising[previd][0], self.stealth.debug_rising[previd][1], self.stealth.debug_rising[previd + 1][2] + spacing + delta);
        }
        draworigin = self.stealth.debug_rising[myid];
        while (gettime() - start < life * 1000) {
            wait(0.05);
            if (isdefined(self) && isalive(self) && isdefined(self.stealth) && isdefined(self.stealth.debug_rising) && isdefined(self.stealth.debug_rising[myid])) {
                draworigin = self.origin + self.stealth.debug_rising[myid];
            }
            print3d(draworigin, text, color, alpha, scale, 1);
            draworigin = (draworigin[0], draworigin[1], draworigin[2] + riserate);
            if (isdefined(self) && isalive(self) && isdefined(self.stealth) && isdefined(self.stealth.debug_rising) && isdefined(self.stealth.debug_rising[myid])) {
                self.stealth.debug_rising[myid] = (self.stealth.debug_rising[myid][0], self.stealth.debug_rising[myid][1], self.stealth.debug_rising[myid][2] + riserate);
            }
        }
        if (isdefined(self) && isalive(self) && isdefined(self.stealth) && isdefined(self.stealth.debug_rising) && isdefined(self.stealth.debug_rising[myid])) {
            self.stealth.debug_rising[myid] = undefined;
        }
    }

    // Namespace stealth_debug/debug
    // Params 2, eflags: 0x0
    // Checksum 0xc69b1d14, Offset: 0x1a38
    // Size: 0x1e0
    function draw_enemies(team, *offset) {
        enemies = getactorteamarray(offset);
        if (offset == "<unknown string>") {
            enemies[enemies.size] = getplayers()[0];
        }
        yellow = (1, 1, 0);
        green = (0, 1, 0);
        red = (1, 0, 0);
        foreach (enemy in enemies) {
            yellow_dist = sqr(enemy.maxvisibledist + 200);
            vis_dist = sqr(enemy.maxvisibledist);
            distsqrd = distancesquared(enemy.origin, self.origin);
            if (distsqrd < vis_dist) {
                color = red;
            } else if (distsqrd < yellow_dist) {
                color = yellow;
            } else {
                color = green;
            }
            line(self.origin, enemy.origin, color);
        }
    }

    // Namespace stealth_debug/debug
    // Params 0, eflags: 0x0
    // Checksum 0x492664aa, Offset: 0x1c20
    // Size: 0x65c
    function function_d0c3b413() {
        space = 10;
        count = 0;
        size = 0.5;
        white = (1, 1, 1);
        red = (1, 0, 0);
        yellow = (1, 1, 0);
        if (function_467590e0()) {
            self draw_fov();
        }
        animstr = "<unknown string>";
        patrolstyle = self namespace_979752dc::get_patrol_style();
        if (isdefined(patrolstyle)) {
            animstr = patrolstyle;
        }
        if (self ai::has_behavior_attribute("<unknown string>")) {
            animstr = self ai::get_behavior_attribute("<unknown string>");
        }
        var_b2d4b874 = "<unknown string>";
        var_4fa3c3e0 = "<unknown string>";
        bounded = 0;
        groupdata = stealth_group::getgroup(self.script_stealthgroup);
        pod = stealth_group::group_findpod(groupdata, self);
        if (isdefined(self.stealth.bsmstate)) {
            switch (self.stealth.bsmstate) {
            case 0:
                var_b2d4b874 = "<unknown string>";
                break;
            case 1:
                var_b2d4b874 = "<unknown string>";
                if (isdefined(level.stealth.investigate_volumes[self.script_stealthgroup])) {
                    bounded = 1;
                }
                break;
            case 2:
                var_b2d4b874 = "<unknown string>";
                if (isdefined(level.stealth.hunt_volumes[self.script_stealthgroup])) {
                    bounded = 1;
                }
                if (!is_true(pod.bhunkering)) {
                    var_4fa3c3e0 = "<unknown string>";
                } else {
                    var_4fa3c3e0 = "<unknown string>";
                }
                break;
            case 3:
                var_b2d4b874 = "<unknown string>";
                if (isdefined(level.stealth.combat_volumes[self.script_stealthgroup])) {
                    bounded = 1;
                }
                break;
            }
        }
        print3d(self.origin - (0, 0, count * space), self getentitynumber() + "<unknown string>" + var_b2d4b874 + var_4fa3c3e0, white, 1, size);
        count++;
        print3d(self.origin - (0, 0, count * space), "<unknown string>" + animstr, white, 1, size);
        count++;
        nextline = "<unknown string>";
        if (isdefined(self.enemy)) {
            nextline += "<unknown string>" + self.enemy getentitynumber() + "<unknown string>";
        }
        if (bounded) {
            nextline += "<unknown string>";
        }
        if (nextline.size > 0) {
            print3d(self.origin - (0, 0, count * space), nextline, yellow, 1, size);
            count++;
        }
        if (isdefined(self.lightmeter)) {
            print3d(self.origin - (0, 0, count * space), "<unknown string>" + self.lightmeter, red, 1, size);
            count++;
        }
        group = "<unknown string>";
        if (isdefined(self.script_stealthgroup)) {
            group = "<unknown string>" + self.script_stealthgroup + "<unknown string>";
        }
        if (group.size > 0) {
            print3d(self.origin - (0, 0, count * space), group, white, 1, size);
            count++;
        }
        if (getplayers().size > 0 && self cansee(getplayers()[0])) {
            print3d(self.origin - (0, 0, count * space), "<unknown string>", red, 1, size);
            count++;
        }
        if (isdefined(self.shootposoverride)) {
            line(self geteye(), self.shootposoverride, (1, 1, 0));
        }
        facingstart = self.origin + (0, 0, 8);
        facingend = self.origin + (0, 0, 8) + anglestoforward(self.angles) * 36;
        line(facingstart, facingend, (0, 0, 1));
    }

    // Namespace stealth_debug/debug
    // Params 3, eflags: 0x0
    // Checksum 0x191d2a50, Offset: 0x2288
    // Size: 0xac
    function function_3e6e06ae(baseangles, angle, angleidx) {
        if (angleidx == 0) {
            return anglestoforward(baseangles + (angle, 0, 0));
        }
        if (angleidx == 1) {
            return anglestoforward(baseangles + (0, angle, 0));
        }
        if (angleidx == 2) {
            return anglestoforward(baseangles + (0, 0, angle));
        }
    }

    // Namespace stealth_debug/debug
    // Params 8, eflags: 0x0
    // Checksum 0xefed9505, Offset: 0x2340
    // Size: 0x16c
    function function_391d248f(origin, startangle, endangle, baseangles, len, angleidx, var_6246c419, color) {
        assert(startangle < endangle);
        prevpt = origin + len * function_3e6e06ae(baseangles, startangle, angleidx);
        nextpt = prevpt;
        line(origin, prevpt, color);
        angledelta = (endangle - startangle) / var_6246c419;
        for (i = 1; i < var_6246c419 + 1; i++) {
            angle = startangle + angledelta * i;
            nextpt = origin + len * function_3e6e06ae(baseangles, angle, angleidx);
            line(prevpt, nextpt, color);
            prevpt = nextpt;
        }
        line(origin, nextpt, color);
    }

    // Namespace stealth_debug/debug
    // Params 0, eflags: 0x0
    // Checksum 0xf9c2ae01, Offset: 0x24b8
    // Size: 0x38c
    function draw_fov() {
        dot = self.fovcosine;
        if (isdefined(self.enemy)) {
            dot = self.fovcosinebusy;
        }
        color = (1, 0, 0);
        fov_yaw = acos(dot);
        if (isai(self)) {
            eye_yaw = self gettagangles("<unknown string>")[1];
        } else {
            eye_yaw = self gettagangles("<unknown string>")[1];
        }
        viewdist = getplayers()[0].maxvisibledist;
        if (isai(self)) {
            start = self gettagorigin("<unknown string>");
        } else {
            start = self gettagorigin("<unknown string>");
        }
        var_16d2c066 = 10;
        function_391d248f(start, -1 * fov_yaw, fov_yaw, (0, eye_yaw, 0), viewdist, 1, var_16d2c066, color);
        if (self.fovcosinez > dot) {
            color *= 0.5;
            fov_pitch = acos(self.fovcosinez);
            eye_pitch = 0;
            function_391d248f(start, -1 * fov_pitch, fov_pitch, (eye_pitch, eye_yaw, 0), viewdist, 0, var_16d2c066, color);
        }
        var_346c7ea3 = acos(self.fovcosineperiph);
        function_391d248f(start, -1 * var_346c7ea3, var_346c7ea3, (0, eye_yaw, 0), sqrt(self.fovcosineperiphmaxdistsq), 1, var_16d2c066, (0.5, 0.5, 0));
        if (is_true(self.flashlight.on)) {
            start = self gettagorigin(self.flashlight.tag);
            yaw = self gettagangles(self.flashlight.tag)[1];
            if (isdefined(start) && isdefined(yaw)) {
                fov_yaw = 30 * 0.5;
                function_391d248f(start, -1 * fov_yaw, fov_yaw, (0, yaw, 0), isdefined(self.var_1c936867) ? self.var_1c936867 : 850, 1, var_16d2c066, (1, 1, 0));
            }
        }
    }

    // Namespace stealth_debug/debug
    // Params 0, eflags: 0x0
    // Checksum 0x41804c42, Offset: 0x2850
    // Size: 0x34c
    function function_48f1fd1c() {
        tab = "<unknown string>";
        function_84811192("<unknown string>", "<unknown string>" + self getentitynumber() + "<unknown string>");
        function_84811192("<unknown string>", "<unknown string>" + self.script_stealthgroup);
        function_84811192("<unknown string>", "<unknown string>" + self.alertlevel);
        function_84811192("<unknown string>", "<unknown string>" + self.stealth.state);
        if (isdefined(self.enemy)) {
            enemy = self.enemy getentitynumber();
        } else {
            enemy = "<unknown string>";
        }
        function_84811192("<unknown string>", "<unknown string>" + enemy);
        function_84811192("<unknown string>", "<unknown string>" + self.stealth.ai_event);
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
            if (!isdefined(enemy.stealth.spotted_list)) {
                continue;
            }
            if (isdefined(enemy.stealth.spotted_list[self.unique_id])) {
                function_84811192("<unknown string>", tab + "<unknown string>");
                msg = tab + "<unknown string>" + enemy getentitynumber() + "<unknown string>" + enemy.stealth.spotted_list[self.unique_id];
                function_84811192("<unknown string>", msg);
            }
        }
        function_ea707af9("<unknown string>");
    }

    // Namespace stealth_debug/debug
    // Params 0, eflags: 0x0
    // Checksum 0x819cb48f, Offset: 0x2ba8
    // Size: 0x304
    function function_f5dd6400() {
        cmaxtime = 30000;
        level.stealth.chatbox = [];
        level.stealth.var_855b67ea = 0;
        level.stealth.var_42d9f5df = 0;
        var_b5a9b1ac = 50;
        var_c6f9544b = 340;
        var_1dccd487 = 17;
        cscale = 1;
        textcolor = (1, 1, 1);
        levelstealth = level.stealth;
        while (true) {
            if (function_bc93e0c7()) {
                var_12febe81 = gettime() - cmaxtime;
                if (levelstealth.var_42d9f5df > 0) {
                    cury = var_c6f9544b;
                    curline = levelstealth.var_855b67ea;
                    for (iline = 0; iline < levelstealth.var_42d9f5df; iline++) {
                        if (!isdefined(levelstealth.chatbox[curline]) || levelstealth.chatbox[curline].time > var_12febe81) {
                            text = "<unknown string>";
                            if (isstring(levelstealth.chatbox[curline].speaker)) {
                                text += levelstealth.chatbox[curline].speaker;
                            } else {
                                foreach (speaker in levelstealth.chatbox[curline].speaker) {
                                    if (isdefined(speaker)) {
                                        text += "<unknown string>" + speaker getentitynumber();
                                    }
                                }
                                levelstealth.chatbox[curline].speaker = text;
                            }
                            text += "<unknown string>" + levelstealth.chatbox[curline].text;
                            debug2dtext((var_b5a9b1ac, cury, 0), text, textcolor, 1, undefined, undefined, cscale);
                            cury += var_1dccd487;
                        }
                        curline = (curline + 1) % 16;
                    }
                }
            }
            waitframe(1);
        }
    }

    // Namespace stealth_debug/debug
    // Params 2, eflags: 0x0
    // Checksum 0xd8e80e76, Offset: 0x2eb8
    // Size: 0x1e4
    function function_65b21ab8(speaker, line) {
        stealth = level.stealth;
        var_e4b759ea = (stealth.var_855b67ea + stealth.var_42d9f5df) % 16;
        curtime = gettime();
        var_e4434c3b = var_e4b759ea - 1;
        if (var_e4434c3b < 0) {
            var_e4434c3b = 16 - 1;
        }
        if (isdefined(stealth.chatbox[var_e4434c3b]) && stealth.chatbox[var_e4434c3b].time == curtime && stealth.chatbox[var_e4434c3b].text == line) {
            stealth.chatbox[var_e4434c3b].speaker[stealth.chatbox[var_e4434c3b].speaker.size] = speaker;
            return;
        }
        s = spawnstruct();
        s.speaker = [speaker];
        s.text = line;
        s.time = curtime;
        stealth.chatbox[var_e4b759ea] = s;
        if (var_e4b759ea == stealth.var_855b67ea && stealth.var_42d9f5df > 0) {
            stealth.var_855b67ea = (stealth.var_855b67ea + 1) % 16;
        } else {
            stealth.var_42d9f5df++;
        }
        assert(stealth.var_42d9f5df <= 16);
    }

    // Namespace stealth_debug/debug
    // Params 2, eflags: 0x0
    // Checksum 0x2da5a96, Offset: 0x30a8
    // Size: 0xdc
    function function_bd9767df(message, duration) {
        self notify(#"hash_60765f522d73ffeb");
        self endon(#"hash_60765f522d73ffeb");
        self endon(#"death");
        if (!isdefined(duration)) {
            duration = 5;
        }
        for (time = 0; time < duration * 20; time++) {
            print3d(self.origin + (0, 0, 45), message, (0.48, 9.4, 0.76), 0.85);
            wait(0.05);
        }
    }

    // Namespace stealth_debug/debug
    // Params 3, eflags: 0x0
    // Checksum 0x633bdd7a, Offset: 0x3190
    // Size: 0x104
    function draw_axis(origin, angles, length) {
        axes = anglestoaxis(angles);
        forward = axes.forward * length;
        right = axes.right * length;
        up = axes.up * length;
        line(origin - forward, origin + forward, (1, 0, 0), 1);
        line(origin - up, origin + up, (0, 1, 0), 1);
        line(origin - right, origin + right, (0, 0, 1), 1);
    }

    // Namespace stealth_debug/debug
    // Params 0, eflags: 0x0
    // Checksum 0x5cd9c422, Offset: 0x32a0
    // Size: 0x3e8
    function function_613009e2() {
        if (!isdefined(level.smartobjectpoints)) {
            return;
        }
        var_cfd8b974 = function_5c17f559();
        if (var_cfd8b974 == 0) {
            return;
        }
        colorgreen = (0.5, 0.7, 0.5);
        colorred = (0.7, 0.1, 0.1);
        colorgray = (0.7, 0.7, 0.7);
        foreach (obj in level.smartobjectpoints) {
            angles = (0, 0, 0);
            if (isdefined(obj.angles)) {
                angles = obj.angles;
            }
            canuse = smart_object::can_use(obj);
            claimed = isdefined(obj.claimer);
            color = colorgray;
            if (claimed) {
                color = colorgreen;
            } else if (!canuse) {
                color = colorred;
            }
            draw_axis(obj.origin, angles, 12);
            print3d(obj.origin - (0, 0, 12), function_9e72a96(obj.scriptbundlename), color, 1, 0.3, 1);
            if (!canuse) {
                print3d(obj.origin - (0, 0, 20), "<unknown string>" + obj.nextusetime - gettime(), color, 1, 0.3, 1);
            }
            print3d(obj.origin - (0, 0, 28), "<unknown string>" + obj.var_dd0284ce, color, 1, 0.3, 1);
            if (isdefined(obj.var_2edb5d76) && canuse) {
                r = sqrt(obj.var_2edb5d76);
                function_391d248f(obj.origin, 0, 360, angles, r, 1, 8, color);
            }
            if (claimed) {
                print3d(obj.origin - (0, 0, 18), "<unknown string>" + obj.claimer getentitynumber(), color, 1, 0.3, 1);
                line(obj.origin, obj.claimer.origin, color, 1, 0, 1);
            }
        }
    }

    // Namespace stealth_debug/debug
    // Params 0, eflags: 0x0
    // Checksum 0xa11107c, Offset: 0x3690
    // Size: 0x3ec
    function function_6a467cff() {
        var_331da3eb = function_57295e02();
        if (var_331da3eb == 0) {
            return;
        }
        if (!isdefined(level.stealth.hunt_stealth_group_region_sets)) {
            return;
        }
        debuggroup = function_ce9fa82d();
        foreach (group, group_data in level.stealth.hunt_stealth_group_region_sets) {
            if (debuggroup != group && debuggroup != "<unknown string>") {
                continue;
            }
            foreach (region in group_data.hunt_regions) {
                for (i = 1; i < region.route_points.size; i++) {
                    p0 = region.route_points[i - 1];
                    p1 = region.route_points[i];
                    line(p0.origin, p1.origin, (0, 0.7, 0), 1, 0, 1);
                }
                foreach (smart_object in region.smart_objects) {
                    function_391d248f(smart_object.origin, 0, 360, smart_object.angles, 10, 1, 3, (0.7, 0, 0));
                }
                foreach (point in region.transition_points) {
                    foreach (transition_point in point.transitions) {
                        line(point.origin, transition_point.origin, (0.7, 0.7, 0), 1, 0, 1);
                    }
                }
            }
        }
    }

    // Namespace stealth_debug/debug
    // Params 0, eflags: 0x0
    // Checksum 0x594c7910, Offset: 0x3a88
    // Size: 0x500
    function function_5a47b49c() {
        var_191afba9 = function_9570f40e();
        if (var_191afba9 == 0) {
            return;
        }
        if (!isdefined(level.stealth.hunt_stealth_group_region_sets)) {
            return;
        }
        debuggroup = function_ce9fa82d();
        foreach (group, group_data in level.stealth.hunt_stealth_group_region_sets) {
            if (debuggroup != group && debuggroup != "<unknown string>") {
                continue;
            }
            var_7010df74 = [];
            foreach (region in group_data.hunt_regions) {
                assert(isdefined(region.approx_location));
                space = 10;
                count = 0;
                size = 0.5;
                white = (1, 1, 1);
                print3d(region.approx_location - (0, 0, count * space), "<unknown string>" + region.index, white, 1, size);
                count++;
                print3d(region.approx_location - (0, 0, count * space), "<unknown string>" + region.bfs_score, white, 1, size);
                count++;
                print3d(region.approx_location - (0, 0, count * space), "<unknown string>" + region.shared_data.bfs_assigned, white, 1, size);
                count++;
                print3d(region.approx_location - (0, 0, count * space), "<unknown string>" + region.shared_data.in_region, white, 1, size);
                count++;
                print3d(region.approx_location - (0, 0, count * space), "<unknown string>" + region.stealth_group, white, 1, size);
                cooldowndiff = region.shared_data.bfs_cooldown - gettime();
                if (cooldowndiff > 0) {
                    count++;
                    print3d(region.approx_location - (0, 0, count * space), "<unknown string>" + cooldowndiff, white, 1, size);
                }
            }
            foreach (region in group_data.hunt_regions) {
                foreach (link in region.region_links) {
                    toregion = link.region;
                    line(region.approx_location, toregion.approx_location, (0, 0, 0.7), 1, 0, 1);
                }
            }
        }
    }

#/
