// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\beam_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using script_13da4e6b98ca81a1;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace gadget_tripwire;

// Namespace gadget_tripwire/gadget_tripwire
// Params 0, eflags: 0x5
// Checksum 0x1a804e09, Offset: 0x200
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"gadget_tripwire", &preinit, undefined, undefined, undefined);
}

// Namespace gadget_tripwire/gadget_tripwire
// Params 0, eflags: 0x4
// Checksum 0xf08b0d8e, Offset: 0x248
// Size: 0x254
function private preinit() {
    callback::on_killcam_begin(&function_330a13a6);
    callback::on_killcam_end(&function_330a13a6);
    callback::add_callback(#"hash_2fc4cfecaed47583", &function_bd054816);
    clientfield::register("missile", "tripwire_state", 1, 2, "int", &function_6868fab3, 1, 1);
    clientfield::register("scriptmover", "tripwire_solo_beam_fx", 1, 1, "int", &function_9233eb94, 0, 0);
    level.var_c27600b0 = getweapon("eq_tripwire");
    if (isdefined(level.var_c27600b0.customsettings)) {
        level.var_c72e8c51 = getscriptbundle(level.var_c27600b0.customsettings);
    } else {
        level.var_c72e8c51 = getscriptbundle("tripwire_custom_settings");
    }
    if (!isdefined(level.var_77cae643)) {
        level.var_77cae643 = [];
    }
    level.tripwire = {#wires:[], #localclients:[]};
    for (i = 0; i < getmaxlocalclients(); i++) {
        level.tripwire.localclients[i] = {#beams:[], #previs:0, #model:undefined};
    }
}

// Namespace gadget_tripwire/gadget_tripwire
// Params 1, eflags: 0x0
// Checksum 0x81dc0c6a, Offset: 0x4a8
// Size: 0xde
function function_330a13a6(params) {
    foreach (beam_id in level.tripwire.localclients[params.localclientnum].beams) {
        if (isdefined(beam_id)) {
            beamkill(params.localclientnum, beam_id);
        }
    }
    level.tripwire.localclients[params.localclientnum].beams = [];
}

// Namespace gadget_tripwire/gadget_tripwire
// Params 1, eflags: 0x0
// Checksum 0x64e3884d, Offset: 0x590
// Size: 0x66
function function_bd054816(params) {
    if (level.var_c27600b0 != params.offhand_weapon) {
        return;
    }
    if (params.using_offhand) {
        function_17d973ec(params.localclientnum);
        return;
    }
    self notify(#"hash_726805ec8cfae188");
}

// Namespace gadget_tripwire/gadget_tripwire
// Params 7, eflags: 0x0
// Checksum 0x8d0e11a0, Offset: 0x600
// Size: 0x262
function function_6868fab3(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, bwastimejump) {
    if (!isdefined(self)) {
        return;
    }
    self endon(#"death");
    starttime = gettime();
    while (isdefined(self) && !self hasdobj(binitialsnap)) {
        if (gettime() - starttime > 1000) {
            return;
        }
        waitframe(1);
    }
    if (!isdefined(self)) {
        return;
    }
    if (bwastimejump) {
        function_6230a8a5(binitialsnap);
    }
    switch (fieldname) {
    case 1:
        arrayinsert(level.tripwire.wires, self, level.tripwire.wires.size);
        self callback::on_shutdown(&function_6230a8a5);
        self thread function_55c50f15();
        break;
    case 2:
    case 3:
        foreach (beam_id in level.tripwire.localclients[binitialsnap].beams) {
            if (isdefined(beam_id)) {
                beamkill(binitialsnap, beam_id);
            }
        }
        level.tripwire.localclients[binitialsnap].beams = [];
        self thread function_55c50f15();
        break;
    }
}

// Namespace gadget_tripwire/gadget_tripwire
// Params 1, eflags: 0x0
// Checksum 0xd1c67842, Offset: 0x870
// Size: 0x34
function function_6230a8a5(*localclientnum) {
    arrayremovevalue(level.tripwire.wires, self);
}

// Namespace gadget_tripwire/gadget_tripwire
// Params 1, eflags: 0x0
// Checksum 0x833cfc8, Offset: 0x8b0
// Size: 0x2e
function function_a4b3da97(trace) {
    if (trace[#"fraction"] < 1) {
        return false;
    }
    return true;
}

// Namespace gadget_tripwire/gadget_tripwire
// Params 0, eflags: 0x0
// Checksum 0xaa3aa4a1, Offset: 0x8e8
// Size: 0x3ec
function function_55c50f15() {
    self endon(#"death");
    foreach (tripwire in level.tripwire.wires) {
        if (!isdefined(tripwire)) {
            continue;
        }
        if (self.ownernum != tripwire.ownernum) {
            continue;
        }
        if (self == tripwire) {
            continue;
        }
        if (distancesquared(tripwire.origin, self.origin) >= 100 && distancesquared(tripwire.origin, self.origin) <= level.var_c72e8c51.var_831055cb * level.var_c72e8c51.var_831055cb) {
            pos = self gettagorigin("tag_fx");
            otherpos = tripwire gettagorigin("tag_fx");
            if (isdefined(pos) && isdefined(otherpos)) {
                trace = beamtrace(pos, otherpos, 0, self, 0, tripwire);
                var_f2edf308 = beamtrace(otherpos, pos, 0, self, 0, tripwire);
                if (self function_a4b3da97(trace) && self function_a4b3da97(var_f2edf308)) {
                    if (isdefined(level.localplayers)) {
                        foreach (player in level.localplayers) {
                            if (isdefined(player)) {
                                if (player util::isenemyteam(self.owner.team)) {
                                    if (is_true(level.var_c72e8c51.var_10e5bb56)) {
                                        beamname = "beam8_plyr_equip_ied_enmy_wz";
                                    } else {
                                        beamname = "beam8_plyr_equip_ied_enmy";
                                    }
                                } else if (is_true(level.var_c72e8c51.var_10e5bb56)) {
                                    beamname = "beam8_plyr_equip_ied_frnd_wz";
                                } else {
                                    beamname = "beam8_plyr_equip_ied_frnd";
                                }
                                beam_id = player beam::launch(tripwire, "tag_fx", self, "tag_fx", beamname);
                                arrayinsert(level.tripwire.localclients[player.localclientnum].beams, beam_id, level.tripwire.localclients[player.localclientnum].beams.size);
                            }
                        }
                    }
                }
            }
        }
    }
}

// Namespace gadget_tripwire/gadget_tripwire
// Params 7, eflags: 0x0
// Checksum 0xf7966254, Offset: 0xce0
// Size: 0xcc
function function_9233eb94(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self endon(#"death");
        self util::waittill_dobj(fieldname);
        self.beam_fx = util::playfxontag(fieldname, #"hash_253c31a9114d6029", self, "tag_origin");
        return;
    }
    if (isdefined(self.beam_fx)) {
        killfx(fieldname, self.beam_fx);
    }
}

// Namespace gadget_tripwire/gadget_tripwire
// Params 1, eflags: 0x0
// Checksum 0x3dd72e08, Offset: 0xdb8
// Size: 0x7e
function function_2a919ef0(localclientnum) {
    currentoffhand = function_e9fe14ee(localclientnum);
    if (level.var_c27600b0 != currentoffhand) {
        return false;
    }
    if (!function_96d4f30e(localclientnum)) {
        return false;
    }
    if (!function_182a2ad3(localclientnum)) {
        return false;
    }
    return true;
}

// Namespace gadget_tripwire/gadget_tripwire
// Params 1, eflags: 0x0
// Checksum 0xcadc80f3, Offset: 0xe40
// Size: 0x2de
function function_17d973ec(localclientnum) {
    self endon(#"death");
    self notify(#"hash_726805ec8cfae188");
    self endon(#"hash_726805ec8cfae188");
    self thread function_b882ca33(localclientnum);
    level.tripwire.localclients[localclientnum].previs = 0;
    var_9480bc93 = 0;
    level.var_41427f32 = undefined;
    while (true) {
        var_9480bc93 = level.tripwire.localclients[localclientnum].previs;
        level.tripwire.localclients[localclientnum].previs = function_2a919ef0(localclientnum);
        if (level.tripwire.localclients[localclientnum].previs) {
            if (!isdefined(level.tripwire.localclients[localclientnum].model)) {
                spawn_previs(localclientnum);
            }
            if (!var_9480bc93) {
                var_e7640260 = 1;
                level.tripwire.localclients[localclientnum].model show();
            }
            update_previs(localclientnum);
        } else if (var_9480bc93 && !level.tripwire.localclients[localclientnum].previs) {
            level.tripwire.localclients[localclientnum].model notify(#"death");
            level.tripwire.localclients[localclientnum].model delete();
            level.tripwire.localclients[localclientnum].model = undefined;
            function_c51a3b22();
            function_dc76d0d0(localclientnum);
            if (objective_state(localclientnum, self.var_61df85ff) != "invisible") {
                objective_setstate(localclientnum, self.var_61df85ff, "invisible");
            }
        }
        waitframe(1);
    }
}

// Namespace gadget_tripwire/gadget_tripwire
// Params 1, eflags: 0x0
// Checksum 0x8915b57b, Offset: 0x1128
// Size: 0xa4
function function_b882ca33(localclientnum) {
    self waittill(#"death");
    if (isdefined(level.tripwire.localclients[self.localclientnum].model)) {
        level.tripwire.localclients[self.localclientnum].model hide();
    }
    function_6b69576b();
    function_dc76d0d0(localclientnum);
}

// Namespace gadget_tripwire/gadget_tripwire
// Params 1, eflags: 0x0
// Checksum 0xac46145c, Offset: 0x11d8
// Size: 0x82
function spawn_previs(localclientnum) {
    localplayer = function_5c10bd79(localclientnum);
    level.tripwire.localclients[localclientnum].model = spawn(localclientnum, (0, 0, 0), "script_model", localplayer getentitynumber());
}

// Namespace gadget_tripwire/gadget_tripwire
// Params 3, eflags: 0x0
// Checksum 0x2966fe67, Offset: 0x1268
// Size: 0xcc
function function_3e8d9b27(local_client_num, *previs_weapon, validlocation) {
    if (validlocation) {
        level.tripwire.localclients[previs_weapon].model setmodel(#"hash_2edbbbe63af8213d");
    } else {
        level.tripwire.localclients[previs_weapon].model setmodel(#"hash_6c54a3e97ce636f0");
    }
    level.tripwire.localclients[previs_weapon].model notsolid();
}

// Namespace gadget_tripwire/gadget_tripwire
// Params 0, eflags: 0x0
// Checksum 0x390e13e2, Offset: 0x1340
// Size: 0x5c
function function_95d56693() {
    for (i = 0; i < level.var_77cae643.size; i++) {
        if (level.var_77cae643[i].shoulddraw == 0) {
            return i;
        }
    }
    return level.var_77cae643.size;
}

// Namespace gadget_tripwire/gadget_tripwire
// Params 1, eflags: 0x0
// Checksum 0x7857376d, Offset: 0x13a8
// Size: 0x51c
function update_previs(localclientnum) {
    player = self;
    function_3e8d9b27(localclientnum, level.var_c27600b0, 1);
    facing_angles = getlocalclientangles(localclientnum);
    forward = anglestoforward(facing_angles);
    up = anglestoup(facing_angles);
    velocity = function_711c258(forward, up, level.var_c27600b0);
    eye_pos = getlocalclienteyepos(localclientnum);
    trace1 = function_e6ba3ec9(eye_pos, velocity, 0, level.var_c27600b0, level.var_41427f32);
    level.tripwire.localclients[localclientnum].model.origin = trace1[#"position"];
    level.tripwire.localclients[localclientnum].model.angles = (angleclamp180(vectortoangles(trace1[#"normal"])[0] + 90), vectortoangles(trace1[#"normal"])[1], 0);
    level.tripwire.localclients[localclientnum].model.hitent = trace1[#"entity"];
    if (isdefined(level.tripwire.localclients[localclientnum].model.hitent) && level.tripwire.localclients[localclientnum].model.hitent.weapon == level.var_c27600b0) {
        level.var_41427f32 = level.tripwire.localclients[localclientnum].model.hitent;
    }
    if (level.tripwire.wires.size > 0) {
        level.tripwire.localclients[localclientnum].model function_adb3eb2c(localclientnum);
    } else if (!isdefined(level.tripwire.localclients[localclientnum].model.var_2045ae5c)) {
        level.tripwire.localclients[localclientnum].model.var_2045ae5c = util::playfxontag(localclientnum, #"hash_79d94632506eafee", level.tripwire.localclients[localclientnum].model, "tag_fx");
    }
    if (!isdefined(player.var_61df85ff)) {
        player.var_61df85ff = util::getnextobjid(localclientnum);
        player thread function_810faece(localclientnum, player.var_61df85ff);
    }
    if (isdefined(player.var_61df85ff) && !gamepadusedlast(localclientnum)) {
        obj_id = player.var_61df85ff;
        if (function_a8cb5322(localclientnum) && !codcaster::function_b8fe9b52(localclientnum)) {
            objective_add(localclientnum, obj_id, "active", #"tripwire_placement", trace1[#"position"]);
            objective_setgamemodeflags(localclientnum, obj_id, 0);
        } else if (objective_state(localclientnum, obj_id) != "invisible") {
            objective_setstate(localclientnum, obj_id, "invisible");
        }
    }
    function_c51a3b22();
    function_dc76d0d0(localclientnum);
}

// Namespace gadget_tripwire/gadget_tripwire
// Params 4, eflags: 0x0
// Checksum 0x91553a74, Offset: 0x18d0
// Size: 0x13a
function function_26c580d9(localclientnum, tripwire, trace, var_f2edf308) {
    if (isdefined(level.tripwire.localclients[localclientnum].model.hitent) && isplayer(level.tripwire.localclients[localclientnum].model.hitent)) {
        return false;
    }
    if (distancesquared(tripwire.origin, self.origin) < 100) {
        return false;
    }
    if (distancesquared(tripwire.origin, self.origin) > level.var_c72e8c51.var_831055cb * level.var_c72e8c51.var_831055cb) {
        return false;
    }
    if (!self function_a4b3da97(trace) || !self function_a4b3da97(var_f2edf308)) {
        return false;
    }
    return true;
}

// Namespace gadget_tripwire/gadget_tripwire
// Params 1, eflags: 0x0
// Checksum 0x79ffc17e, Offset: 0x1a18
// Size: 0x2da
function function_adb3eb2c(localclientnum) {
    self.var_c2f0f6da = 0;
    for (i = 0; i < level.tripwire.wires.size; i++) {
        tripwire = level.tripwire.wires[i];
        if (!isdefined(tripwire)) {
            continue;
        }
        if (self.ownernum != tripwire.ownernum) {
            continue;
        }
        var_1eb381e1 = function_8c308396(self, tripwire);
        pos = self gettagorigin("tag_fx");
        if (!isdefined(pos)) {
            pos = self.origin;
        }
        otherpos = tripwire gettagorigin("tag_fx");
        if (!isdefined(otherpos)) {
            otherpos = tripwire.origin;
        }
        trace = beamtrace(pos, otherpos, 0, self, 0, tripwire);
        var_f2edf308 = beamtrace(otherpos, pos, 0, self, 0, tripwire);
        if (function_26c580d9(localclientnum, tripwire, trace, var_f2edf308)) {
            self.var_c2f0f6da = 1;
            if (!isdefined(var_1eb381e1)) {
                newbeam = spawnstruct();
                newbeam.ent1 = self;
                newbeam.ent2 = tripwire;
                newbeam.shoulddraw = 1;
                newbeam.beam_id = undefined;
                level.var_77cae643[function_95d56693()] = newbeam;
            } else if (isdefined(var_1eb381e1) && !var_1eb381e1.shoulddraw) {
                var_1eb381e1.shoulddraw = 1;
            }
            if (isdefined(self.var_2045ae5c)) {
                killfx(localclientnum, self.var_2045ae5c);
                self.var_2045ae5c = undefined;
            }
            continue;
        }
        if (isdefined(var_1eb381e1)) {
            var_1eb381e1.shoulddraw = 0;
        }
    }
    if (!isdefined(self.var_2045ae5c) && !self.var_c2f0f6da) {
        self.var_2045ae5c = util::playfxontag(localclientnum, #"hash_79d94632506eafee", self, "tag_fx");
    }
}

// Namespace gadget_tripwire/gadget_tripwire
// Params 1, eflags: 0x0
// Checksum 0x5249c6b4, Offset: 0x1d00
// Size: 0x146
function function_dc76d0d0(localclientnum) {
    for (i = 0; i < level.var_77cae643.size; i++) {
        beam = level.var_77cae643[i];
        if (beam.shoulddraw && !isdefined(beam.beam_id) && isdefined(beam.ent1) && isdefined(beam.ent2)) {
            level.var_77cae643[i].beam_id = level beam::function_cfb2f62a(localclientnum, beam.ent1, "tag_fx", beam.ent2, "tag_fx", "beam8_plyr_equip_ied_previs");
            continue;
        }
        if (beam.shoulddraw == 0 && isdefined(beam.beam_id)) {
            beam::function_47deed80(localclientnum, beam.beam_id);
            level.var_77cae643[i].beam_id = undefined;
        }
    }
}

// Namespace gadget_tripwire/gadget_tripwire
// Params 0, eflags: 0x0
// Checksum 0x548308b0, Offset: 0x1e50
// Size: 0x92
function function_c51a3b22() {
    for (i = 0; i < level.var_77cae643.size; i++) {
        beam = level.var_77cae643[i];
        if (!isdefined(beam) || !isdefined(beam.ent1) || !isdefined(beam.ent2)) {
            level.var_77cae643[i].shoulddraw = 0;
        }
    }
}

// Namespace gadget_tripwire/gadget_tripwire
// Params 0, eflags: 0x0
// Checksum 0xcb59fcbe, Offset: 0x1ef0
// Size: 0x46
function function_6b69576b() {
    for (i = 0; i < level.var_77cae643.size; i++) {
        level.var_77cae643[i].shoulddraw = 0;
    }
}

// Namespace gadget_tripwire/gadget_tripwire
// Params 2, eflags: 0x0
// Checksum 0x174c9c4b, Offset: 0x1f40
// Size: 0xb6
function function_8c308396(ent1, ent2) {
    foreach (beam in level.var_77cae643) {
        if (beam.ent1 == ent1 && beam.ent2 == ent2) {
            return beam;
        }
    }
    return undefined;
}

// Namespace gadget_tripwire/gadget_tripwire
// Params 2, eflags: 0x0
// Checksum 0x9cfaa6f1, Offset: 0x2000
// Size: 0x6c
function function_810faece(local_client_num, objective_id) {
    self waittill(#"death", #"disconnect", #"team_changed");
    if (isdefined(objective_id)) {
        objective_delete(local_client_num, objective_id);
    }
}

