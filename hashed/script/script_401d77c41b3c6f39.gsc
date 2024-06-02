// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\killstreaks_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\math_shared.csc;
#using scripts\core_common\array_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\struct.csc;

#namespace namespace_4d9a1379;

// Namespace namespace_4d9a1379/namespace_4d9a1379
// Params 0, eflags: 0x5
// Checksum 0x2ca6b8e8, Offset: 0x150
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_13a0cde7b8c1cb7f", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_4d9a1379/namespace_4d9a1379
// Params 0, eflags: 0x4
// Checksum 0x4f957939, Offset: 0x198
// Size: 0xfc
function private preinit() {
    clientfield::register("allplayers", "victim_entity_num", 28000, 5, "int", &function_a9a10d27, 0, 0);
    clientfield::register("toplayer", "corpse_entity_num", 28000, 5, "int", &function_4e5d4ff3, 0, 0);
    clientfield::register("allplayers", "footsteps_victim_entity_num", 28000, 5, "int", &function_cc526382, 0, 0);
    callback::on_localclient_connect(&on_localclient_connect);
}

// Namespace namespace_4d9a1379/namespace_4d9a1379
// Params 7, eflags: 0x0
// Checksum 0xb7be05fe, Offset: 0x2a0
// Size: 0xa4
function function_a9a10d27(local_client_num, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self.var_54d9d1ec)) {
        self.var_54d9d1ec = [];
    }
    self notify(#"hash_1fe8f1718c04fe6f");
    self.var_54d9d1ec[self.var_54d9d1ec.size] = bwastimejump;
    self thread function_21e56524(fieldname, self.var_54d9d1ec);
}

// Namespace namespace_4d9a1379/namespace_4d9a1379
// Params 1, eflags: 0x0
// Checksum 0xe7f31c7e, Offset: 0x350
// Size: 0xb4
function on_localclient_connect(localclientnum) {
    if (!isdefined(level.var_f3c7bd5b)) {
        level.var_f3c7bd5b = [];
    }
    objid = util::getnextobjid(localclientnum);
    objective_add(localclientnum, objid, "invisible", #"hash_19462339fa3faabe");
    objective_setprogress(localclientnum, objid, 0);
    objective_setstate(localclientnum, objid, "invisible");
    level.var_f3c7bd5b[localclientnum] = objid;
}

// Namespace namespace_4d9a1379/namespace_4d9a1379
// Params 7, eflags: 0x0
// Checksum 0x18d0b852, Offset: 0x410
// Size: 0x154
function function_4e5d4ff3(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!self function_21c0fa55()) {
        return;
    }
    if (!isdefined(level.var_f3c7bd5b)) {
        level.var_f3c7bd5b = [];
    }
    objid = level.var_f3c7bd5b[fieldname];
    if (!isdefined(objid)) {
        return;
    }
    if (bwastimejump > -1 && bwastimejump < 26) {
        if (isarray(level.var_1305770) && isdefined(level.var_1305770[bwastimejump])) {
            objective_setposition(fieldname, objid, level.var_1305770[bwastimejump]);
        }
        objective_setstate(fieldname, objid, "active");
        return;
    }
    objective_setstate(fieldname, objid, "invisible");
}

// Namespace namespace_4d9a1379/namespace_4d9a1379
// Params 7, eflags: 0x0
// Checksum 0x1c4f2ae6, Offset: 0x570
// Size: 0x6c
function function_9e405bd3(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(level.var_df88fad2)) {
        level.var_df88fad2 = [];
    }
    level.var_df88fad2[self.networkid] = self;
}

// Namespace namespace_4d9a1379/namespace_4d9a1379
// Params 7, eflags: 0x0
// Checksum 0x38a34c2e, Offset: 0x5e8
// Size: 0x2fa
function function_cc526382(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!self function_21c0fa55()) {
        return;
    }
    var_7f9208ab = bwastimejump;
    self notify(#"hash_702a72528dfed0db");
    if (var_7f9208ab == 26) {
        return;
    } else {
        wait(0.1);
    }
    if (!isdefined(self)) {
        return;
    }
    players = getplayers(fieldname);
    foreach (player in players) {
        if (isdefined(player.var_54d9d1ec) && isdefined(player.var_27a6fded)) {
            if (!isdefined(self.var_71734ec4)) {
                self.var_71734ec4 = [];
            }
            foreach (var_a0375b77 in player.var_54d9d1ec) {
                if (var_a0375b77 == var_7f9208ab && isdefined(player.var_27a6fded[var_a0375b77])) {
                    self thread function_74055c74(fieldname, player.var_27a6fded[var_a0375b77]);
                    self.var_71734ec4[var_a0375b77] = 1;
                    return;
                }
                self.var_71734ec4[var_a0375b77] = 0;
            }
        }
    }
    foreach (var_54e22ca2 in level.var_3866f854) {
        var_27a6fded = var_54e22ca2[var_7f9208ab];
        if (isdefined(var_27a6fded[var_7f9208ab])) {
            self thread function_74055c74(fieldname, var_27a6fded[var_7f9208ab]);
            return;
        }
    }
}

// Namespace namespace_4d9a1379/namespace_4d9a1379
// Params 2, eflags: 0x0
// Checksum 0x72ec6709, Offset: 0x8f0
// Size: 0x352
function function_21e56524(local_client_num, var_54d9d1ec) {
    level endon(#"game_ended");
    self endon(#"hash_1fe8f1718c04fe6f", #"death");
    var_560db6a = self getentitynumber() % 15;
    var_9426f90f = int(gettime() / 16) % 15;
    self.var_c37910a5 = self.origin;
    if (!isdefined(self.var_10dddc20)) {
        self.var_10dddc20 = [];
    }
    var_d09d444f = var_54d9d1ec;
    while (isdefined(self) && var_d09d444f.size > 0) {
        if (var_9426f90f == var_560db6a) {
            wait(0.24);
        } else {
            self waittilltimeout((15 + var_560db6a - var_9426f90f) % 15 * 0.016, #"death");
        }
        var_9426f90f = int(gettime() / 16) % 15;
        positionandrotationstruct = self function_faf7d71b(local_client_num);
        foreach (var_a0375b77 in var_d09d444f) {
            if (!isdefined(self.var_10dddc20[var_a0375b77])) {
                self.var_10dddc20[var_a0375b77] = 0;
            }
            if (self.var_10dddc20[var_a0375b77] > 40) {
                arrayremovevalue(var_d09d444f, var_a0375b77);
                continue;
            }
            if (isdefined(positionandrotationstruct)) {
                if (!isdefined(self.var_27a6fded)) {
                    self.var_27a6fded = [];
                }
                if (!isdefined(self.var_27a6fded[var_a0375b77])) {
                    self.var_27a6fded[var_a0375b77] = [];
                }
                index = self.var_10dddc20[var_a0375b77];
                self.var_27a6fded[var_a0375b77][index] = positionandrotationstruct;
                if (isdefined(self.var_71734ec4[var_a0375b77]) && self.var_71734ec4[var_a0375b77]) {
                    handle = playfx(local_client_num, positionandrotationstruct.fx, positionandrotationstruct.pos, positionandrotationstruct.fwd);
                    if (!isdefined(self.var_9d939573)) {
                        self.var_9d939573 = [];
                    }
                    self.var_9d939573[self.var_9d939573.size] = handle;
                }
                self.var_10dddc20[var_a0375b77]++;
            }
        }
    }
}

// Namespace namespace_4d9a1379/namespace_4d9a1379
// Params 1, eflags: 0x0
// Checksum 0xf833e387, Offset: 0xc50
// Size: 0x1f2
function function_faf7d71b(*local_client_num) {
    player = self;
    if (is_true(self._isclone)) {
        player = self.owner;
    }
    if (!isdefined(level.var_19d86f63)) {
        level.var_19d86f63 = (0, 0, getdvarfloat(#"perk_tracker_fx_foot_height", 0));
    }
    pos = self.origin + level.var_19d86f63;
    if (!isdefined(self.var_c37910a5)) {
        self.var_c37910a5 = pos;
    }
    if (distancesquared(self.var_c37910a5, pos) > 1024) {
        if (is_true(self.trailrightfoot)) {
            fx = #"hash_18f1b4f6dff39f44";
        } else {
            fx = #"hash_427f0cf6af092813";
        }
        fwd = self getvelocity();
        if (lengthsquared(fwd) < 1) {
            fwd = anglestoforward(self.angles);
        }
        positionandrotation = {#fx:fx, #pos:pos, #fwd:fwd};
        self.var_c37910a5 = self.origin;
        self.trailrightfoot = !is_true(self.trailrightfoot);
    }
    return positionandrotation;
}

// Namespace namespace_4d9a1379/namespace_4d9a1379
// Params 2, eflags: 0x0
// Checksum 0xe8748fc6, Offset: 0xe50
// Size: 0x134
function function_74055c74(local_client_num, var_8aacd418) {
    self endon(#"death", #"hash_702a72528dfed0db");
    self thread function_8c02beb1(local_client_num);
    if (!isdefined(self.var_9d939573)) {
        self.var_9d939573 = [];
    }
    foreach (var_e67d707a in var_8aacd418) {
        if (!isdefined(self)) {
            continue;
        }
        handle = playfx(local_client_num, var_e67d707a.fx, var_e67d707a.pos, var_e67d707a.fwd);
        self.var_9d939573[self.var_9d939573.size] = handle;
        wait(0.1);
    }
}

// Namespace namespace_4d9a1379/namespace_4d9a1379
// Params 2, eflags: 0x0
// Checksum 0x618b5bda, Offset: 0xf90
// Size: 0x116
function function_b2be9a0c(local_client_num, handle) {
    if (!isdefined(self.var_48d473a8)) {
        self.var_48d473a8 = spawnstruct();
        self.var_48d473a8.array = [];
        self.var_48d473a8.index = 0;
    }
    if (handle) {
        servertime = getservertime(local_client_num);
        var_c3dbbcab = spawnstruct();
        var_c3dbbcab.time = servertime;
        var_c3dbbcab.handle = handle;
        index = self.var_48d473a8.index;
        if (index >= 40) {
            index = 0;
        }
        self.var_48d473a8.array[index] = var_c3dbbcab;
        self.var_48d473a8.index = index + 1;
    }
}

// Namespace namespace_4d9a1379/namespace_4d9a1379
// Params 1, eflags: 0x0
// Checksum 0x6869bf11, Offset: 0x10b0
// Size: 0xd2
function function_8c02beb1(local_client_num) {
    self waittill(#"death", #"hash_702a72528dfed0db");
    if (!isdefined(self.var_9d939573)) {
        return;
    }
    foreach (handle in self.var_9d939573) {
        killfx(local_client_num, handle);
    }
    self.var_9d939573 = undefined;
}

