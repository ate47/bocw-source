// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\land_mine.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\gestures.gsc;
#using scripts\core_common\flag_shared.gsc;
#using script_1cd491b1807da8f7;
#using scripts\core_common\callbacks_shared.gsc;

#namespace namespace_f3e83343;

// Namespace namespace_f3e83343/namespace_f3e83343
// Params 0, eflags: 0x5
// Checksum 0xdf26a495, Offset: 0x158
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_56764d013a0eb19c", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_f3e83343/namespace_f3e83343
// Params 0, eflags: 0x2 linked
// Checksum 0x7fd170a6, Offset: 0x1a0
// Size: 0x28c
function preinit() {
    dynents = getdynentarray("dynent_garage_button");
    foreach (dynent in dynents) {
        dynent.onuse = &function_51a020;
        dynent.ondamaged = &function_724a2fa5;
    }
    dynents = getdynentarray("dynent_door_check_for_vehicles");
    foreach (dynent in dynents) {
        dynent.onuse = &function_995a4e51;
        dynent.ondamaged = &function_67b96164;
    }
    dynents = getdynentarray("dynent_destroyable_door");
    foreach (dynent in dynents) {
        dynent.ondamaged = &function_5d409a7b;
        dynent.maxhealth = dynent.health;
    }
    doors = function_f3e164a9(#"hash_4d1fb8524fdfd254");
    if (isdefined(doors) && doors.size > 0) {
        level thread function_92f2f8cf(doors);
        level thread function_160e40a2();
    }
    level thread function_b217acf();
}

// Namespace namespace_f3e83343/event_9673dc9a
// Params 1, eflags: 0x24
// Checksum 0x6638aac3, Offset: 0x438
// Size: 0x118
function private event_handler[event_9673dc9a] function_3981d015(eventstruct) {
    dynent = eventstruct.ent;
    if (!isdefined(dynent.var_667629e9)) {
        return;
    }
    foreach (object in dynent.var_667629e9) {
        if (!isdefined(object)) {
            continue;
        }
        if (object.weapon.name == #"land_mine") {
            object land_mine::function_338f99f5();
            continue;
        }
        object dodamage(object.health - 1, dynent.origin);
    }
}

// Namespace namespace_f3e83343/namespace_f3e83343
// Params 0, eflags: 0x2 linked
// Checksum 0x74115590, Offset: 0x558
// Size: 0xa6
function function_b217acf() {
    while (true) {
        params = level waittill(#"hash_2d1093d938f2fad6");
        dynent = params.hitent;
        if (!isdefined(dynent.var_667629e9)) {
            dynent.var_667629e9 = [];
        }
        arrayremovevalue(dynent.var_667629e9, undefined);
        dynent.var_667629e9[dynent.var_667629e9.size] = params.projectile;
        waitframe(1);
    }
}

// Namespace namespace_f3e83343/namespace_f3e83343
// Params 0, eflags: 0x2 linked
// Checksum 0x173a6a80, Offset: 0x608
// Size: 0xa4e
function function_160e40a2() {
    level endon(#"game_ended");
    updatepass = 0;
    cosangle = cos(20);
    var_3393f5fe = cos(50);
    var_2c51fa57 = sqr(64);
    while (true) {
        foreach (i, player in getplayers()) {
            time = gettime();
            if (i % 2 == updatepass) {
                if (!isdefined(player.var_8a022726)) {
                    continue;
                }
                if (player sprintbuttonpressed() || player issprinting() || player issliding()) {
                    var_42b5b0df = player getvelocity() * 0.1;
                    var_40676129 = player.origin + var_42b5b0df;
                    playerorigin = player.origin;
                    bounds = (300, 300, 150);
                    boundsorigin = player getcentroid();
                    var_e86a4d9 = function_db4bc717(boundsorigin, bounds);
                    foreach (dynent in var_e86a4d9) {
                        if (isdefined(dynent.var_a548ec11) && dynent.var_a548ec11 > time) {
                            continue;
                        }
                        if (dynent.script_noteworthy !== #"hash_4d1fb8524fdfd254") {
                            continue;
                        }
                        if (abs(playerorigin[2] - dynent.origin[2]) > 36) {
                            continue;
                        }
                        bundle = function_489009c1(dynent);
                        v_offset = (isdefined(bundle.var_aa0fba03) ? bundle.var_aa0fba03 : 0, isdefined(bundle.var_f8525687) ? bundle.var_f8525687 : 0, isdefined(bundle.var_54b28eee) ? bundle.var_54b28eee : 0);
                        v_offset = rotatepoint(v_offset, dynent.angles);
                        var_dea242aa = dynent.origin + v_offset;
                        playerdir = var_dea242aa - playerorigin;
                        playerdir = vectornormalize((playerdir[0], playerdir[1], 0));
                        var_f8682cca = vectordot(anglestoforward(player.angles), playerdir);
                        var_772fc240 = distance2dsquared(playerorigin, var_dea242aa);
                        isnear = var_772fc240 <= var_2c51fa57;
                        if (!isnear && var_f8682cca <= cosangle || isnear && var_f8682cca <= var_3393f5fe) {
                            continue;
                        }
                        var_df2e06ad = distance2dsquared(var_40676129, var_dea242aa);
                        var_cdc68fb8 = distance2dsquared(playerorigin, var_dea242aa);
                        if (var_df2e06ad <= sqr(75) || var_cdc68fb8 <= sqr(100)) {
                            stateindex = function_ffdbe8c2(dynent);
                            if (stateindex == 1 || stateindex == 2 || stateindex == 4 || stateindex == 5) {
                                if (var_df2e06ad > sqr(75 * 0.5) && var_cdc68fb8 > sqr(100 * 0.5)) {
                                    continue;
                                }
                                var_b4b3af4c = anglestoforward(dynent.angles);
                                dot = vectordot(var_b4b3af4c, playerdir);
                                if (dot >= 0 && (stateindex == 1 || stateindex == 4)) {
                                    continue;
                                } else if (dot <= 0 && (stateindex == 2 || stateindex == 5)) {
                                    continue;
                                }
                            } else if (stateindex == 0 || stateindex == 6) {
                                var_b4b3af4c = anglestoforward(dynent.angles);
                                playerfwd = anglestoforward(player.angles);
                                dot = abs(vectordot(var_b4b3af4c, playerfwd));
                                if (dot < cos(45)) {
                                    continue;
                                }
                            } else if (stateindex == 3) {
                                continue;
                            }
                            var_dbfa3e4e = bullettrace(player.origin, var_dea242aa, 0, player, 0);
                            if (!isdefined(var_dbfa3e4e[#"dynent"])) {
                                continue;
                            }
                            bundle = function_489009c1(dynent);
                            if (isdefined(bundle) && isdefined(bundle.dynentstates) && isdefined(bundle.dynentstates[stateindex])) {
                                overridestate = 6;
                                if (stateindex == 0 || stateindex == 6) {
                                    var_b4b3af4c = anglestoforward(dynent.angles);
                                    dot = vectordot(var_b4b3af4c, playerdir);
                                    if (dot >= 0) {
                                        overridestate = 4;
                                    } else {
                                        overridestate = 5;
                                    }
                                }
                                var_bb075e98 = {#origin:var_dea242aa};
                                var_a852a7dd = var_bb075e98 dynent_use::use_dynent(dynent, player, overridestate, 1, 1);
                                player gestures::play_gesture("ges_t9_door_shove", undefined, 0);
                                player function_bc82f900("door_shove");
                                playsoundatposition("evt_door_bash", dynent.origin);
                                playfx("debris/fx9_door_bash", dynent.origin, anglestoforward(dynent.angles), anglestoup(dynent.angles));
                                var_a548ec11 = 1;
                                dynent.var_a548ec11 = gettime() + int(var_a852a7dd * 1000) + int(var_a548ec11 * 1000);
                                if (isdefined(level.var_83c46567)) {
                                    [[ level.var_83c46567 ]](dynent);
                                }
                            }
                        }
                    }
                }
            }
        }
        updatepass = (updatepass + 1) % 2;
        waitframe(1);
    }
}

// Namespace namespace_f3e83343/namespace_f3e83343
// Params 1, eflags: 0x2 linked
// Checksum 0xfbbb0cfe, Offset: 0x1060
// Size: 0x8e
function function_92f2f8cf(doors) {
    foreach (door in doors) {
        door.ondamaged = &function_c743094d;
    }
}

// Namespace namespace_f3e83343/namespace_f3e83343
// Params 1, eflags: 0x2 linked
// Checksum 0x1961ff1d, Offset: 0x10f8
// Size: 0x3e0
function function_c743094d(eventstruct) {
    dynent = eventstruct.ent;
    activator = eventstruct.attacker;
    if (is_true(eventstruct.melee) && isplayer(activator) && isdefined(activator.var_8a022726) && activator.var_8a022726 istriggerenabled()) {
        dynent.health += eventstruct.amount;
        stateindex = function_ffdbe8c2(dynent);
        var_b4b3af4c = anglestoforward(dynent.angles);
        playerdir = activator.var_8a022726.origin - activator.origin;
        playerdir = vectornormalize((playerdir[0], playerdir[1], 0));
        dot = vectordot(var_b4b3af4c, playerdir);
        if (stateindex == 1 || stateindex == 2 || stateindex == 4 || stateindex == 5) {
            if (dot >= 0 && (stateindex == 1 || stateindex == 4)) {
                return;
            } else if (dot <= 0 && stateindex == (stateindex == 2 || stateindex == 5)) {
                return;
            }
        }
        bundle = function_489009c1(dynent);
        if (isdefined(bundle) && isdefined(bundle.dynentstates) && isdefined(bundle.dynentstates[stateindex])) {
            overridestate = 6;
            if (stateindex == 0 || stateindex == 6) {
                if (dot >= 0) {
                    overridestate = 4;
                } else {
                    overridestate = 5;
                }
            }
            var_a852a7dd = eventstruct.attacker.var_8a022726 dynent_use::use_dynent(dynent, eventstruct.attacker, overridestate, 1, 1);
            playsoundatposition("evt_door_bash", dynent.origin);
            playfx("debris/fx9_door_bash", dynent.origin, anglestoforward(dynent.angles), anglestoup(dynent.angles));
            dynent.var_a548ec11 = gettime() + var_a852a7dd * 1000;
        }
        return;
    }
    if (isplayer(activator) && dynent.health <= 0) {
        activator notify(#"hash_34928429a0070510", {#dynent:dynent});
    }
}

// Namespace namespace_f3e83343/namespace_f3e83343
// Params 1, eflags: 0x2 linked
// Checksum 0xe04d1832, Offset: 0x14e0
// Size: 0x88
function function_67b96164(eventstruct) {
    dynent = eventstruct.ent;
    activator = eventstruct.attacker;
    if (isplayer(activator) && dynent.health <= 0) {
        activator notify(#"hash_34928429a0070510", {#dynent:dynent});
    }
}

// Namespace namespace_f3e83343/namespace_f3e83343
// Params 3, eflags: 0x2 linked
// Checksum 0xd5bc0a61, Offset: 0x1570
// Size: 0x308
function function_995a4e51(*activator, laststate, state) {
    if (state != 0 || laststate == state) {
        return true;
    }
    forward = anglestoforward(self.angles);
    right = anglestoright(self.angles);
    bounds = function_c440d28e(self.var_15d44120);
    midpoint = (bounds.mins + bounds.maxs) * 0.5;
    var_53c592d9 = midpoint - bounds.mins;
    doorcenter = self.origin + rotatepoint(midpoint, self.angles);
    /#
        box(doorcenter, var_53c592d9 * -1, var_53c592d9, self.angles, (1, 0, 1), 1, 0, 600);
    #/
    radius = max(max(midpoint[0], midpoint[1]), midpoint[2]);
    ents = getentitiesinradius(doorcenter, radius);
    foreach (ent in ents) {
        if (!isvehicle(ent)) {
            continue;
        }
        var_84c67202 = ent.origin + rotatepoint(ent getboundsmidpoint(), ent.angles);
        enthalfsize = ent getboundshalfsize();
        if (function_ecdf9b24(doorcenter, self.angles, var_53c592d9, var_84c67202, ent.angles, enthalfsize)) {
            /#
                box(var_84c67202, enthalfsize * -1, enthalfsize, ent.angles, (1, 0, 0), 1, 0, 600);
            #/
            return false;
        }
    }
    return true;
}

// Namespace namespace_f3e83343/namespace_f3e83343
// Params 3, eflags: 0x0
// Checksum 0x78d01f, Offset: 0x1880
// Size: 0x1f4
function function_d7b6ee00(activator, laststate, state) {
    if (laststate == state) {
        return;
    }
    if (state != 0) {
        forward = anglestoforward(self.angles);
        right = anglestoright(self.angles);
        bounds = function_c440d28e(self.var_15d44120);
        start = self.origin + (0, 0, 35);
        start -= right * (bounds.mins[1] + bounds.maxs[1]) * 0.5;
        if (state == 1) {
            start += forward * 5;
            end = start + forward * 35;
        } else {
            start -= forward * 5;
            end = start - forward * 35;
        }
        /#
            line(start, end, (1, 1, 1), 1, 1, 300);
        #/
        results = bullettracepassed(start, end, 0, activator);
        if (!results) {
            if (state == 1) {
                state = 2;
            } else if (state == 2) {
                state = 1;
            }
            function_e2a06860(self, state);
            return 0;
        }
    }
    return 1;
}

// Namespace namespace_f3e83343/namespace_f3e83343
// Params 3, eflags: 0x2 linked
// Checksum 0xd899567, Offset: 0x1a80
// Size: 0x238
function function_51a020(activator, laststate, state) {
    if (isdefined(self.target)) {
        if (laststate == state) {
            return false;
        }
        var_a9309589 = getdynent(self.target);
        if (!isdefined(var_a9309589)) {
            return false;
        }
        currentstate = function_ffdbe8c2(var_a9309589);
        if (state == 0) {
            right = anglestoright(var_a9309589.angles);
            bounds = function_c440d28e(var_a9309589.var_15d44120);
            center = var_a9309589.origin + (0, 0, 25);
            start = center + right * bounds.mins[1] * 0.85;
            end = center + right * bounds.maxs[1] * 0.85;
            results = bullettracepassed(start, end, 0, activator);
            if (!results) {
                return false;
            }
            center = var_a9309589.origin + (0, 0, 40);
            start = center + right * bounds.mins[1] * 0.85;
            end = center + right * bounds.maxs[1] * 0.85;
            results = bullettracepassed(start, end, 0, activator);
            if (!results) {
                return false;
            }
        }
        if (currentstate != state) {
            function_e2a06860(var_a9309589, state);
        }
    }
    return true;
}

// Namespace namespace_f3e83343/namespace_f3e83343
// Params 1, eflags: 0x6 linked
// Checksum 0x3b6ffde5, Offset: 0x1cc0
// Size: 0xee
function private function_724a2fa5(eventstruct) {
    dynent = eventstruct.ent;
    if (isdefined(eventstruct)) {
        dynent.health += eventstruct.amount;
    }
    if (isdefined(dynent.var_a548ec11) && gettime() <= dynent.var_a548ec11) {
        return;
    }
    if (distancesquared(eventstruct.ent.origin, eventstruct.position) > sqr(15)) {
        return;
    }
    var_a852a7dd = dynent_use::use_dynent(dynent);
    dynent.var_a548ec11 = gettime() + var_a852a7dd * 1000;
}

// Namespace namespace_f3e83343/namespace_f3e83343
// Params 1, eflags: 0x6 linked
// Checksum 0x5b771c7e, Offset: 0x1db8
// Size: 0x9c
function private function_5d409a7b(eventstruct) {
    dynent = eventstruct.ent;
    state = function_ffdbe8c2(dynent);
    if (state <= 2) {
        var_6c9f448d = dynent.health / dynent.maxhealth;
        if (var_6c9f448d <= 0.5) {
            function_e2a06860(dynent, state + 3);
        }
    }
}

