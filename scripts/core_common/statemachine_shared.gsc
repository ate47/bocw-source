// Atian COD Tools GSC CW decompiler test
#namespace statemachine;

// Namespace statemachine/statemachine_shared
// Params 3, eflags: 0x2 linked
// Checksum 0xb2007f0, Offset: 0x90
// Size: 0x120
function create(name, owner, change_notify = "change_state") {
    state_machine = spawnstruct();
    state_machine.name = name;
    state_machine.states = [];
    state_machine.previous_state = undefined;
    state_machine.current_state = undefined;
    state_machine.next_state = undefined;
    state_machine.change_note = change_notify;
    if (isdefined(owner)) {
        state_machine.owner = owner;
    } else {
        state_machine.owner = level;
    }
    if (!isdefined(state_machine.owner.state_machines)) {
        state_machine.owner.state_machines = [];
    }
    state_machine.owner.state_machines[state_machine.name] = state_machine;
    /#
        owner thread function_acc83382();
    #/
    return state_machine;
}

// Namespace statemachine/statemachine_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x39ac99ca, Offset: 0x1b8
// Size: 0xee
function clear() {
    if (isdefined(self.states) && isarray(self.states)) {
        foreach (state in self.states) {
            state.connections_notify = undefined;
            state.connections_utility = undefined;
        }
    }
    self.states = undefined;
    self.previous_state = undefined;
    self.current_state = undefined;
    self.next_state = undefined;
    self.owner = undefined;
    self notify(#"_cancel_connections");
}

// Namespace statemachine/statemachine_shared
// Params 5, eflags: 0x2 linked
// Checksum 0xa612651e, Offset: 0x2b0
// Size: 0x12c
function add_state(name, enter_func, update_func, exit_func, reenter_func) {
    if (!isdefined(self.states[name])) {
        self.states[name] = spawnstruct();
    }
    self.states[name].name = name;
    self.states[name].enter_func = enter_func;
    self.states[name].exit_func = exit_func;
    self.states[name].update_func = update_func;
    self.states[name].reenter_func = reenter_func;
    self.states[name].connections_notify = [];
    self.states[name].connections_utility = [];
    self.states[name].owner = self;
    return self.states[name];
}

// Namespace statemachine/statemachine_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x2ff3ca60, Offset: 0x3e8
// Size: 0x18
function get_state(name) {
    return self.states[name];
}

// Namespace statemachine/statemachine_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x8048721f, Offset: 0x408
// Size: 0x28
function has_state(name) {
    return isdefined(self.states) && isdefined(self.states[name]);
}

// Namespace statemachine/statemachine_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x3319ca86, Offset: 0x438
// Size: 0xe0
function add_interrupt_connection(from_state_name, to_state_name, on_notify, checkfunc) {
    from_state = get_state(from_state_name);
    to_state = get_state(to_state_name);
    connection = spawnstruct();
    connection.to_state = to_state;
    connection.type = 0;
    connection.on_notify = on_notify;
    connection.checkfunc = checkfunc;
    from_state.connections_notify[on_notify] = connection;
    return from_state.connections_notify[from_state.connections_notify.size - 1];
}

// Namespace statemachine/statemachine_shared
// Params 4, eflags: 0x2 linked
// Checksum 0xf5e5fd51, Offset: 0x520
// Size: 0x168
function add_utility_connection(from_state_name, to_state_name, checkfunc, defaultscore) {
    from_state = get_state(from_state_name);
    to_state = get_state(to_state_name);
    connection = spawnstruct();
    connection.to_state = to_state;
    connection.type = 1;
    connection.checkfunc = checkfunc;
    connection.score = defaultscore;
    if (!isdefined(connection.score)) {
        connection.score = 100;
    }
    if (!isdefined(from_state.connections_utility)) {
        from_state.connections_utility = [];
    } else if (!isarray(from_state.connections_utility)) {
        from_state.connections_utility = array(from_state.connections_utility);
    }
    from_state.connections_utility[from_state.connections_utility.size] = connection;
    return from_state.connections_utility[from_state.connections_utility.size - 1];
}

// Namespace statemachine/statemachine_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x5bf8fba0, Offset: 0x690
// Size: 0x54
function function_b94a7666(from_state_name, on_notify) {
    from_state = get_state(from_state_name);
    arrayremoveindex(from_state.connections_notify, on_notify, 1);
}

// Namespace statemachine/statemachine_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xf172800b, Offset: 0x6f0
// Size: 0x264
function set_state(name, state_params) {
    state = self.states[name];
    if (!isdefined(self.owner)) {
        return;
    }
    if (!isdefined(state)) {
        assertmsg("<unknown string>" + name + "<unknown string>" + self.name);
        return;
    }
    reenter = self.current_state === state;
    if (isdefined(state.reenter_func) && reenter) {
        shouldreenter = self.owner [[ state.reenter_func ]](state.state_params);
    }
    if (reenter && shouldreenter !== 1) {
        return;
    }
    if (isdefined(self.current_state)) {
        self.next_state = state;
        if (isdefined(self.current_state.exit_func)) {
            self.owner [[ self.current_state.exit_func ]](self.current_state.state_params);
        }
        if (!reenter) {
            self.previous_state = self.current_state;
        }
        self.current_state.state_params = undefined;
    }
    if (!isdefined(state_params)) {
        state_params = spawnstruct();
    }
    state.state_params = state_params;
    self.owner notify(self.change_note);
    self.current_state = state;
    self threadnotifyconnections(self.current_state);
    if (isdefined(self.current_state.enter_func)) {
        self.owner [[ self.current_state.enter_func ]](self.current_state.state_params);
    }
    if (isdefined(self.current_state.update_func)) {
        self.owner thread [[ self.current_state.update_func ]](self.current_state.state_params);
    }
}

// Namespace statemachine/statemachine_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x261f1aba, Offset: 0x960
// Size: 0xd8
function threadnotifyconnections(state) {
    self notify(#"_cancel_connections");
    foreach (connection in state.connections_notify) {
        assert(connection.type == 0);
        self.owner thread connection_on_notify(self, connection.on_notify, connection);
    }
}

// Namespace statemachine/statemachine_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x7b7fd29d, Offset: 0xa40
// Size: 0x108
function connection_on_notify(state_machine, notify_name, connection) {
    self endon(#"death", #"disconnect", state_machine.change_note);
    state_machine endon(#"_cancel_connections");
    while (true) {
        params = self waittill(notify_name);
        connectionvalid = 1;
        if (isdefined(connection.checkfunc)) {
            connectionvalid = self [[ connection.checkfunc ]](state_machine.current_state.name, connection.to_state.name, connection, params);
        }
        if (connectionvalid) {
            state_machine thread set_state(connection.to_state.name, params);
        }
    }
}

// Namespace statemachine/statemachine_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x341826c1, Offset: 0xb50
// Size: 0x294
function evaluate_connections(eval_func, params) {
    assert(isdefined(self.current_state));
    connectionarray = [];
    scorearray = [];
    best_connection = undefined;
    best_score = -1;
    foreach (connection in self.current_state.connections_utility) {
        assert(connection.type == 1);
        score = connection.score;
        if (isdefined(connection.checkfunc)) {
            score = self.owner [[ connection.checkfunc ]](self.current_state.name, connection.to_state.name, connection);
        }
        if (score > 0) {
            if (!isdefined(connectionarray)) {
                connectionarray = [];
            } else if (!isarray(connectionarray)) {
                connectionarray = array(connectionarray);
            }
            connectionarray[connectionarray.size] = connection;
            if (!isdefined(scorearray)) {
                scorearray = [];
            } else if (!isarray(scorearray)) {
                scorearray = array(scorearray);
            }
            scorearray[scorearray.size] = score;
            if (score > best_score) {
                best_connection = connection;
                best_score = score;
            }
        }
    }
    if (isdefined(eval_func) && connectionarray.size > 0) {
        best_connection = self.owner [[ eval_func ]](connectionarray, scorearray, self.current_state);
    }
    if (isdefined(best_connection)) {
        self thread set_state(best_connection.to_state.name, params);
    }
}

/#

    // Namespace statemachine/statemachine_shared
    // Params 0, eflags: 0x0
    // Checksum 0x72619741, Offset: 0xdf0
    // Size: 0x40
    function debugon() {
        dvarval = getdvarint(#"statemachine_debug", 0);
        return dvarval > 0;
    }

    // Namespace statemachine/statemachine_shared
    // Params 0, eflags: 0x0
    // Checksum 0x8d4c1a4f, Offset: 0xe38
    // Size: 0x266
    function function_acc83382() {
        owner = self;
        if (!isdefined(owner)) {
            return;
        }
        if (!debugon()) {
            return;
        }
        owner notify(#"hash_616497f187c816cf");
        owner endon(#"death", #"hash_616497f187c816cf");
        heightstart = owner getmaxs()[2];
        if (!isdefined(heightstart)) {
            heightstart = 20;
        }
        while (true) {
            i = 1;
            foreach (state_machine in owner.state_machines) {
                statename = "<unknown string>";
                if (isdefined(state_machine.current_state) && isdefined(state_machine.current_state.name)) {
                    statename = state_machine.current_state.name;
                }
                if (!getdvarint(#"recorder_enablerec", 0)) {
                    heightoffset = heightstart * i;
                    print3d(owner.origin + (0, 0, heightoffset), "<unknown string>" + state_machine.name + "<unknown string>" + statename, (1, 1, 0));
                } else {
                    record3dtext("<unknown string>" + state_machine.name + "<unknown string>" + statename, owner.origin, (1, 1, 0), "<unknown string>", owner, 1);
                }
                i++;
            }
            waitframe(1);
        }
    }

#/
