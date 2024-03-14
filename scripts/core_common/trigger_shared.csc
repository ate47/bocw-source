// Atian COD Tools GSC CW decompiler test
#namespace trigger;

// Namespace trigger/trigger_shared
// Params 3, eflags: 0x2 linked
// Checksum 0xbf2e6296, Offset: 0x90
// Size: 0x11c
function function_thread(ent, on_enter_payload, on_exit_payload) {
    ent endon(#"death");
    if (!isdefined(self)) {
        return;
    }
    myentnum = self getentitynumber();
    if (ent ent_already_in(myentnum)) {
        return;
    }
    add_to_ent(ent, myentnum);
    if (isdefined(on_enter_payload)) {
        [[ on_enter_payload ]](ent);
    }
    while (isdefined(ent) && isdefined(self) && ent istouching(self)) {
        wait(0.1);
    }
    if (isdefined(ent)) {
        if (isdefined(on_exit_payload)) {
            [[ on_exit_payload ]](ent);
        }
        remove_from_ent(ent, myentnum);
    }
}

// Namespace trigger/trigger_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x4bf8e30e, Offset: 0x1b8
// Size: 0x4c
function ent_already_in(var_d35ff8d8) {
    if (!isdefined(self._triggers)) {
        return false;
    }
    if (!isdefined(self._triggers[var_d35ff8d8])) {
        return false;
    }
    if (!self._triggers[var_d35ff8d8]) {
        return false;
    }
    return true;
}

// Namespace trigger/trigger_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x28f60467, Offset: 0x210
// Size: 0x40
function add_to_ent(ent, var_d35ff8d8) {
    if (!isdefined(ent._triggers)) {
        ent._triggers = [];
    }
    ent._triggers[var_d35ff8d8] = 1;
}

// Namespace trigger/trigger_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x62ec0a94, Offset: 0x258
// Size: 0x4c
function remove_from_ent(ent, var_d35ff8d8) {
    if (!isdefined(ent._triggers)) {
        return;
    }
    if (!isdefined(ent._triggers[var_d35ff8d8])) {
        return;
    }
    ent._triggers[var_d35ff8d8] = 0;
}

// Namespace trigger/trigger_shared
// Params 2, eflags: 0x0
// Checksum 0xda12c962, Offset: 0x2b0
// Size: 0x4c
function death_monitor(ent, ender) {
    ent waittill(#"death");
    self endon(ender);
    self remove_from_ent(ent);
}

// Namespace trigger/trigger_shared
// Params 1, eflags: 0x0
// Checksum 0xc7036e1c, Offset: 0x308
// Size: 0x7c
function trigger_wait(n_clientnum) {
    self endon(#"trigger");
    if (isdefined(self.targetname)) {
        trig = getent(n_clientnum, self.targetname, "target");
        if (isdefined(trig)) {
            trig waittill(#"trigger");
        }
    }
}

