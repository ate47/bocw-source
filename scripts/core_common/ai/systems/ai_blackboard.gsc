// Atian COD Tools GSC CW decompiler test
#namespace blackboard;

// Namespace blackboard/ai_blackboard
// Params 0, eflags: 0x1
// Checksum 0xaf313305, Offset: 0x80
// Size: 0x14
function autoexec main() {
    _initializeblackboard();
}

// Namespace blackboard/ai_blackboard
// Params 0, eflags: 0x6 linked
// Checksum 0xb0020fab, Offset: 0xa0
// Size: 0x24
function private _initializeblackboard() {
    level.__ai_blackboard = [];
    level thread _updateevents();
}

// Namespace blackboard/ai_blackboard
// Params 0, eflags: 0x6 linked
// Checksum 0x187886e2, Offset: 0xd0
// Size: 0x1ae
function private _updateevents() {
    waittime = 1 * float(function_60d95f53()) / 1000;
    updatemillis = int(waittime * 1000);
    while (true) {
        foreach (eventname, events in level.__ai_blackboard) {
            liveevents = [];
            foreach (event in events) {
                event.ttl -= updatemillis;
                if (event.ttl > 0) {
                    liveevents[liveevents.size] = event;
                }
            }
            level.__ai_blackboard[eventname] = liveevents;
        }
        wait(waittime);
    }
}

// Namespace blackboard/ai_blackboard
// Params 3, eflags: 0x2 linked
// Checksum 0xd22e2c8d, Offset: 0x288
// Size: 0x1a2
function addblackboardevent(eventname, data, timetoliveinmillis) {
    /#
        assert(isstring(eventname) || ishash(eventname), "<unknown string>");
        assert(isdefined(data), "<unknown string>");
        assert(isint(timetoliveinmillis) && timetoliveinmillis > 0, "<unknown string>");
    #/
    event = spawnstruct();
    event.data = data;
    event.timestamp = gettime();
    event.ttl = timetoliveinmillis;
    if (!isdefined(level.__ai_blackboard[eventname])) {
        level.__ai_blackboard[eventname] = [];
    } else if (!isarray(level.__ai_blackboard[eventname])) {
        level.__ai_blackboard[eventname] = array(level.__ai_blackboard[eventname]);
    }
    level.__ai_blackboard[eventname][level.__ai_blackboard[eventname].size] = event;
}

// Namespace blackboard/ai_blackboard
// Params 1, eflags: 0x2 linked
// Checksum 0x1fcb3744, Offset: 0x438
// Size: 0x34
function getblackboardevents(eventname) {
    if (isdefined(level.__ai_blackboard[eventname])) {
        return level.__ai_blackboard[eventname];
    }
    return [];
}

// Namespace blackboard/ai_blackboard
// Params 1, eflags: 0x0
// Checksum 0x22ecaf41, Offset: 0x478
// Size: 0x30
function removeblackboardevents(eventname) {
    if (isdefined(level.__ai_blackboard[eventname])) {
        level.__ai_blackboard[eventname] = undefined;
    }
}

