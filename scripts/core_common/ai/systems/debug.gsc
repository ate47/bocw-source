// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace as_debug;

/#

    // Namespace as_debug/debug
    // Params 0, eflags: 0x5
    // Checksum 0xde1835f5, Offset: 0x90
    // Size: 0x3c
    function private autoexec __init__system__() {
        system::register(#"as_debug", &preinit, undefined, undefined, undefined);
    }

    // Namespace as_debug/debug
    // Params 0, eflags: 0x4
    // Checksum 0x5e7b8ef3, Offset: 0xd8
    // Size: 0x34
    function private preinit() {
        util::init_dvar("<unknown string>", 0, &delete_all_ai_corpses);
    }

    // Namespace as_debug/debug
    // Params 0, eflags: 0x0
    // Checksum 0xf23aa2bb, Offset: 0x118
    // Size: 0x4e
    function isdebugon() {
        return getdvarint(#"animdebug", 0) == 1 || level.animation.debugent === self;
    }

    // Namespace as_debug/debug
    // Params 4, eflags: 0x0
    // Checksum 0xed8a13ff, Offset: 0x170
    // Size: 0x62
    function drawdebuglineinternal(frompoint, topoint, color, durationframes) {
                for (i = 0; i < durationframes; i++) {
            line(frompoint, topoint, color);
            waitframe(1);
        }
    }

    // Namespace as_debug/debug
    // Params 4, eflags: 0x0
    // Checksum 0xf8c688e7, Offset: 0x1e0
    // Size: 0x5c
    function drawdebugline(frompoint, topoint, color, durationframes) {
        if (isdebugon()) {
            thread drawdebuglineinternal(frompoint, topoint, color, durationframes);
        }
    }

    // Namespace as_debug/debug
    // Params 4, eflags: 0x0
    // Checksum 0xe7e45cde, Offset: 0x248
    // Size: 0x6a
    function debugline(frompoint, topoint, color, durationframes) {
                for (i = 0; i < durationframes * 20; i++) {
            line(frompoint, topoint, color);
            waitframe(1);
        }
    }

    // Namespace as_debug/debug
    // Params 4, eflags: 0x0
    // Checksum 0xeda63598, Offset: 0x2c0
    // Size: 0x13c
    function drawdebugcross(atpoint, radius, color, durationframes) {
        atpoint_high = atpoint + (0, 0, radius);
        atpoint_low = atpoint + (0, 0, -1 * radius);
        atpoint_left = atpoint + (0, radius, 0);
        atpoint_right = atpoint + (0, -1 * radius, 0);
        atpoint_forward = atpoint + (radius, 0, 0);
        atpoint_back = atpoint + (-1 * radius, 0, 0);
        thread debugline(atpoint_high, atpoint_low, color, durationframes);
        thread debugline(atpoint_left, atpoint_right, color, durationframes);
        thread debugline(atpoint_forward, atpoint_back, color, durationframes);
    }

    // Namespace as_debug/debug
    // Params 0, eflags: 0x0
    // Checksum 0xd34e0a98, Offset: 0x408
    // Size: 0xa6
    function updatedebuginfo() {
        self endon(#"death");
        self.debuginfo = spawnstruct();
        self.debuginfo.enabled = getdvarint(#"ai_debuganimscript", 0) > 0;
        debugclearstate();
        while (true) {
            waitframe(1);
            updatedebuginfointernal();
            waitframe(1);
        }
    }

    // Namespace as_debug/debug
    // Params 0, eflags: 0x0
    // Checksum 0x2bc2969b, Offset: 0x4b8
    // Size: 0x10e
    function updatedebuginfointernal() {
        if (level.animation.debugent === self) {
            doinfo = 1;
            return;
        }
        doinfo = getdvarint(#"ai_debuganimscript", 0) > 0;
        if (doinfo) {
            ai_entnum = getdvarint(#"ai_debugentindex", 0);
            if (ai_entnum > -1 && ai_entnum != self getentitynumber()) {
                doinfo = 0;
            }
        }
        if (!self.debuginfo.enabled && doinfo) {
            self.debuginfo.shouldclearonanimscriptchange = 1;
        }
        self.debuginfo.enabled = doinfo;
    }

    // Namespace as_debug/debug
    // Params 4, eflags: 0x0
    // Checksum 0xea618d1f, Offset: 0x5d0
    // Size: 0x12c
    function drawdebugenttext(text, ent, color, channel) {
        assert(isdefined(ent));
        if (!getdvarint(#"recorder_enablerec", 0)) {
            if (!isdefined(ent.debuganimscripttime) || gettime() > ent.debuganimscripttime) {
                ent.debuganimscriptlevel = 0;
                ent.debuganimscripttime = gettime();
            }
            indentlevel = vectorscale((0, 0, -10), ent.debuganimscriptlevel);
            print3d(self.origin + (0, 0, 70) + indentlevel, text, color);
            ent.debuganimscriptlevel++;
            return;
        }
        recordenttext(text, ent, color, channel);
    }

    // Namespace as_debug/debug
    // Params 2, eflags: 0x0
    // Checksum 0x8f131d3b, Offset: 0x708
    // Size: 0x188
    function debugpushstate(statename, extrainfo) {
        if (!getdvarint(#"ai_debuganimscript", 0)) {
            return;
        }
        ai_entnum = getdvarint(#"ai_debugentindex", 0);
        if (ai_entnum > -1 && ai_entnum != self getentitynumber()) {
            return;
        }
        assert(isdefined(self.debuginfo.states));
        assert(isdefined(statename));
        state = spawnstruct();
        state.statename = statename;
        state.statelevel = self.debuginfo.statelevel;
        state.statetime = gettime();
        state.statevalid = 1;
        self.debuginfo.statelevel++;
        if (isdefined(extrainfo)) {
            state.extrainfo = extrainfo + "<unknown string>";
        }
        self.debuginfo.states[self.debuginfo.states.size] = state;
    }

    // Namespace as_debug/debug
    // Params 2, eflags: 0x0
    // Checksum 0xafd5d5ea, Offset: 0x898
    // Size: 0x2e6
    function debugaddstateinfo(statename, extrainfo) {
        if (!getdvarint(#"ai_debuganimscript", 0)) {
            return;
        }
        ai_entnum = getdvarint(#"ai_debugentindex", 0);
        if (ai_entnum > -1 && ai_entnum != self getentitynumber()) {
            return;
        }
        assert(isdefined(self.debuginfo.states));
        if (isdefined(statename)) {
            for (i = self.debuginfo.states.size - 1; i >= 0; i--) {
                assert(isdefined(self.debuginfo.states[i]));
                if (self.debuginfo.states[i].statename == statename) {
                    if (!isdefined(self.debuginfo.states[i].extrainfo)) {
                        self.debuginfo.states[i].extrainfo = "<unknown string>";
                    }
                    self.debuginfo.states[i].extrainfo = self.debuginfo.states[i].extrainfo + extrainfo + "<unknown string>";
                    break;
                }
            }
            return;
        }
        if (self.debuginfo.states.size > 0) {
            lastindex = self.debuginfo.states.size - 1;
            assert(isdefined(self.debuginfo.states[lastindex]));
            if (!isdefined(self.debuginfo.states[lastindex].extrainfo)) {
                self.debuginfo.states[lastindex].extrainfo = "<unknown string>";
            }
            self.debuginfo.states[lastindex].extrainfo = self.debuginfo.states[lastindex].extrainfo + extrainfo + "<unknown string>";
        }
    }

    // Namespace as_debug/debug
    // Params 2, eflags: 0x0
    // Checksum 0xd406f00, Offset: 0xb88
    // Size: 0x334
    function debugpopstate(statename, exitreason) {
        if (!getdvarint(#"ai_debuganimscript", 0) || self.debuginfo.states.size <= 0) {
            return;
        }
        ai_entnum = getdvarint(#"ai_debugentindex", 0);
        if (!isdefined(self) || !isalive(self)) {
            return;
        }
        if (ai_entnum > -1 && ai_entnum != self getentitynumber()) {
            return;
        }
        assert(isdefined(self.debuginfo.states));
        if (isdefined(statename)) {
            for (i = 0; i < self.debuginfo.states.size; i++) {
                if (self.debuginfo.states[i].statename == statename && self.debuginfo.states[i].statevalid) {
                    self.debuginfo.states[i].statevalid = 0;
                    self.debuginfo.states[i].exitreason = exitreason;
                    self.debuginfo.statelevel = self.debuginfo.states[i].statelevel;
                    for (j = i + 1; j < self.debuginfo.states.size && self.debuginfo.states[j].statelevel > self.debuginfo.states[i].statelevel; j++) {
                        self.debuginfo.states[j].statevalid = 0;
                    }
                    break;
                }
            }
            return;
        }
        for (i = self.debuginfo.states.size - 1; i >= 0; i--) {
            if (self.debuginfo.states[i].statevalid) {
                self.debuginfo.states[i].statevalid = 0;
                self.debuginfo.states[i].exitreason = exitreason;
                self.debuginfo.statelevel--;
                break;
            }
        }
    }

    // Namespace as_debug/debug
    // Params 0, eflags: 0x0
    // Checksum 0xf2f43a0a, Offset: 0xec8
    // Size: 0x3a
    function debugclearstate() {
        self.debuginfo.states = [];
        self.debuginfo.statelevel = 0;
        self.debuginfo.shouldclearonanimscriptchange = 0;
    }

    // Namespace as_debug/debug
    // Params 0, eflags: 0x0
    // Checksum 0x4d504e95, Offset: 0xf10
    // Size: 0x4a
    function debugshouldclearstate() {
        if (isdefined(self.debuginfo) && isdefined(self.debuginfo.shouldclearonanimscriptchange) && self.debuginfo.shouldclearonanimscriptchange) {
            return 1;
        }
        return 0;
    }

    // Namespace as_debug/debug
    // Params 0, eflags: 0x0
    // Checksum 0x663eca92, Offset: 0xf68
    // Size: 0x96
    function debugcleanstatestack() {
        newarray = [];
        for (i = 0; i < self.debuginfo.states.size; i++) {
            if (self.debuginfo.states[i].statevalid) {
                newarray[newarray.size] = self.debuginfo.states[i];
            }
        }
        self.debuginfo.states = newarray;
    }

    // Namespace as_debug/debug
    // Params 1, eflags: 0x0
    // Checksum 0x4e0b0837, Offset: 0x1008
    // Size: 0x56
    function indent(depth) {
        indent = "<unknown string>";
        for (i = 0; i < depth; i++) {
            indent += "<unknown string>";
        }
        return indent;
    }

    // Namespace as_debug/debug
    // Params 3, eflags: 0x0
    // Checksum 0x53513cc9, Offset: 0x1068
    // Size: 0xcc
    function debugdrawweightedpoints(entity, points, weights) {
        lowestvalue = 0;
        highestvalue = 0;
        for (index = 0; index < points.size; index++) {
            if (weights[index] < lowestvalue) {
                lowestvalue = weights[index];
            }
            if (weights[index] > highestvalue) {
                highestvalue = weights[index];
            }
        }
        for (index = 0; index < points.size; index++) {
            debugdrawweightedpoint(entity, points[index], weights[index], lowestvalue, highestvalue);
        }
    }

    // Namespace as_debug/debug
    // Params 5, eflags: 0x0
    // Checksum 0xe9030622, Offset: 0x1140
    // Size: 0x154
    function debugdrawweightedpoint(entity, point, weight, lowestvalue, highestvalue) {
        deltavalue = highestvalue - lowestvalue;
        halfdeltavalue = deltavalue / 2;
        midvalue = lowestvalue + deltavalue / 2;
        if (halfdeltavalue == 0) {
            halfdeltavalue = 1;
        }
        if (weight <= midvalue) {
            redcolor = 1 - abs((weight - lowestvalue) / halfdeltavalue);
            recordcircle(point, 2, (redcolor, 0, 0), "<unknown string>", entity);
            return;
        }
        greencolor = 1 - abs((highestvalue - weight) / halfdeltavalue);
        recordcircle(point, 2, (0, greencolor, 0), "<unknown string>", entity);
    }

    // Namespace as_debug/debug
    // Params 1, eflags: 0x0
    // Checksum 0xbde00384, Offset: 0x12a0
    // Size: 0xfc
    function delete_all_ai_corpses(params) {
        if (params.value) {
            corpses = getcorpsearray();
            foreach (corpse in corpses) {
                if (isactorcorpse(corpse)) {
                    corpse delete();
                }
            }
            setdvar(#"debug_ai_clear_corpses", 0);
        }
    }

#/
