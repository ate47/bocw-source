// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;

#namespace dynent_world;

// Namespace dynent_world/dynent_world
// Params 0, eflags: 0x5
// Checksum 0xb422e4fe, Offset: 0x88
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"dynent_world", &preinit, undefined, undefined, undefined);
}

// Namespace dynent_world/dynent_world
// Params 0, eflags: 0x6 linked
// Checksum 0x1e72bfa1, Offset: 0xd0
// Size: 0x1c
function private preinit() {
    /#
        level thread devgui_loop();
    #/
}

// Namespace dynent_world/event_9673dc9a
// Params 1, eflags: 0x24
// Checksum 0xd7d55381, Offset: 0xf8
// Size: 0x61c
function private event_handler[event_9673dc9a] function_3981d015(eventstruct) {
    dynent = eventstruct.ent;
    var_16a4afdc = eventstruct.state;
    bundle = function_489009c1(dynent);
    if (isdefined(bundle) && isdefined(bundle.dynentstates) && isdefined(bundle.dynentstates[var_16a4afdc])) {
        newstate = bundle.dynentstates[var_16a4afdc];
        teleport = eventstruct.teleport;
        if (!is_true(bundle.var_f710132b)) {
            pos = (isdefined(newstate.pos_x) ? newstate.pos_x : 0, isdefined(newstate.pos_y) ? newstate.pos_y : 0, isdefined(newstate.pos_z) ? newstate.pos_z : 0);
            pos = rotatepoint(pos, dynent.var_c286a1ae);
            neworigin = dynent.var_718063b0 + pos;
            pitch = dynent.var_c286a1ae[0] + (isdefined(newstate.var_9d1a4684) ? newstate.var_9d1a4684 : 0);
            yaw = dynent.var_c286a1ae[1] + (isdefined(newstate.var_d81008de) ? newstate.var_d81008de : 0);
            roll = dynent.var_c286a1ae[2] + (isdefined(newstate.var_774f5d57) ? newstate.var_774f5d57 : 0);
            newangles = (absangleclamp360(pitch), absangleclamp360(yaw), absangleclamp360(roll));
            var_a852a7dd = isdefined(bundle.var_a852a7dd) ? bundle.var_a852a7dd : isdefined(newstate.var_b272e331) ? newstate.var_b272e331 : 0;
            var_72e281d4 = isdefined(bundle.var_72e281d4) ? bundle.var_72e281d4 : isdefined(newstate.var_f5cff1c7) ? newstate.var_f5cff1c7 : 0;
            if (!teleport && var_a852a7dd > 0) {
                dynent function_49ed8678(neworigin, var_a852a7dd);
                dynent function_7622f013(newangles, var_a852a7dd, var_72e281d4);
            } else {
                dynent.origin = neworigin;
                dynent.angles = newangles;
            }
        }
        if (is_true(bundle.var_fd4bc8dd) && !teleport && isdefined(newstate.var_55c3fa1)) {
            if (!is_true(dynent.var_c78a0afc)) {
                playsoundatposition(newstate.var_55c3fa1, dynent.origin);
            }
        }
        if (isdefined(newstate.overridemodel)) {
            add_helico(dynent, newstate.overridemodel);
        }
        if (isdefined(newstate.stateanim)) {
            starttime = 0;
            rate = isdefined(newstate.animrate) ? newstate.animrate : 0;
            if (is_true(newstate.var_8725802)) {
                gametime = gettime();
                if (is_true(newstate.var_e23400ad)) {
                    gametime += abs(dynent.origin[0] + dynent.origin[1] + dynent.origin[2]);
                }
                animlength = int(getanimlength(newstate.stateanim) * 1000);
                starttime = gametime / animlength / rate;
                starttime -= int(starttime);
            } else if (teleport && !isanimlooping(newstate.stateanim)) {
                starttime = 1;
            }
            function_1e23c01f(dynent, newstate.stateanim, starttime, rate);
        } else {
            function_27b5ddff(dynent);
        }
        setdynentenabled(dynent, is_true(newstate.enable));
        function_9d43a7ef(dynent, is_true(newstate.var_b7401b42));
    }
}

// Namespace dynent_world/event_9e981c4
// Params 1, eflags: 0x24
// Checksum 0x68770c29, Offset: 0x720
// Size: 0x25c
function private event_handler[event_9e981c4] function_ff8b3908(eventstruct) {
    dynent = eventstruct.ent;
    bundle = function_489009c1(dynent);
    var_1a5e0c43 = is_true(eventstruct.clientside);
    if (isdefined(bundle) && isdefined(bundle.dynentstates)) {
        stateindex = isdefined(bundle.destroyed) ? bundle.destroyed : var_1a5e0c43 ? isdefined(bundle.vehicledestroyed) ? bundle.vehicledestroyed : 0 : 0;
        if (isdefined(bundle.dynentstates[stateindex])) {
            function_e2a06860(dynent, stateindex);
        }
        if (var_1a5e0c43 && dynent.script_noteworthy === #"hash_4d1fb8524fdfd254") {
            a_players = function_a1ef346b(undefined, dynent.origin, 225);
            foreach (player in a_players) {
                if (player isinvehicle()) {
                    vehicle = player getvehicleoccupied();
                    n_speed = vehicle getspeed();
                    if (abs(n_speed) > 0) {
                        player notify(#"hash_34928429a0070510", {#dynent:dynent});
                    }
                }
            }
        }
    }
}

// Namespace dynent_world/event_cf200f34
// Params 1, eflags: 0x20
// Checksum 0xa230d583, Offset: 0x988
// Size: 0x44
function event_handler[event_cf200f34] function_209450ae(eventstruct) {
    dynent = eventstruct.ent;
    if (isdefined(dynent.ondamaged)) {
        [[ dynent.ondamaged ]](eventstruct);
    }
}

/#

    // Namespace dynent_world/dynent_world
    // Params 0, eflags: 0x4
    // Checksum 0x5259262b, Offset: 0x9d8
    // Size: 0x13e
    function private devgui_loop() {
        level endon(#"game_ended");
        while (!canadddebugcommand()) {
            waitframe(1);
        }
        adddebugcommand("<unknown string>");
        while (true) {
            wait(0.25);
            dvarstr = getdvarstring(#"hash_40f9f26f308dd924", "<unknown string>");
            if (dvarstr == "<unknown string>") {
                continue;
            }
            setdvar(#"hash_40f9f26f308dd924", "<unknown string>");
            args = strtok(dvarstr, "<unknown string>");
            switch (args[0]) {
            case #"reset":
                function_3ca3c6e4();
                break;
            }
        }
    }

#/
