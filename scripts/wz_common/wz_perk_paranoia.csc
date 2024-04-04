// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using script_3d0f36632dad12df;
#using scripts\core_common\postfx_shared.csc;
#using script_13da4e6b98ca81a1;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace wz_perk_paranoia;

// Namespace wz_perk_paranoia/wz_perk_paranoia
// Params 0, eflags: 0x5
// Checksum 0xbd491b1f, Offset: 0x118
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"wz_perk_paranoia", &preinit, undefined, undefined, undefined);
}

// Namespace wz_perk_paranoia/wz_perk_paranoia
// Params 0, eflags: 0x6 linked
// Checksum 0x80a3effc, Offset: 0x160
// Size: 0x64
function private preinit() {
    callback::function_930e5d42(&function_930e5d42);
    callback::on_spawned(&on_player_spawned);
    callback::on_killcam_begin(&on_killcam_begin);
}

// Namespace wz_perk_paranoia/wz_perk_paranoia
// Params 1, eflags: 0x2 linked
// Checksum 0x61b2a293, Offset: 0x1d0
// Size: 0x24
function function_930e5d42(localclientnum) {
    self function_1c7e186f(localclientnum);
}

// Namespace wz_perk_paranoia/wz_perk_paranoia
// Params 1, eflags: 0x2 linked
// Checksum 0xb8808ee, Offset: 0x200
// Size: 0x24
function on_player_spawned(localclientnum) {
    self function_1c7e186f(localclientnum);
}

// Namespace wz_perk_paranoia/wz_perk_paranoia
// Params 1, eflags: 0x6 linked
// Checksum 0x77f689fa, Offset: 0x230
// Size: 0xa2
function private function_1c7e186f(localclientnum) {
    if (self == function_5c10bd79(localclientnum)) {
        var_369be743 = self hasperk(localclientnum, #"specialty_paranoia");
        var_7c49d38b = self.var_369be743 !== var_369be743;
        if (var_7c49d38b) {
            self thread function_3e9077b(localclientnum);
        }
        self.var_369be743 = var_369be743;
    }
}

// Namespace wz_perk_paranoia/wz_perk_paranoia
// Params 1, eflags: 0x2 linked
// Checksum 0x5d9e6276, Offset: 0x2e0
// Size: 0x74
function on_killcam_begin(params) {
    if (level.gameended === 1) {
        if (isdefined(params.localclientnum)) {
            local_player = function_5c10bd79(params.localclientnum);
            local_player thread function_f2390c61(params.localclientnum);
        }
    }
}

// Namespace wz_perk_paranoia/wz_perk_paranoia
// Params 1, eflags: 0x2 linked
// Checksum 0x1e23c8b3, Offset: 0x360
// Size: 0x64
function function_f2390c61(localclientnum) {
    wait(0.1);
    if (isdefined(self) && function_92beaa28(localclientnum)) {
        wait(1.5);
    }
    wait(0.1);
    if (isdefined(self)) {
        self function_3e9077b(localclientnum);
    }
}

// Namespace wz_perk_paranoia/wz_perk_paranoia
// Params 0, eflags: 0x6 linked
// Checksum 0xf563dd47, Offset: 0x3d0
// Size: 0x132
function private function_dbd63244() {
    assert(isplayer(self));
    if (self function_21c0fa55()) {
        return self geteye();
    }
    stance = self getstance();
    switch (stance) {
    case #"prone":
        return (self.origin + (0, 0, 11));
    case #"crouch":
        return (self.origin + (0, 0, 40));
    case #"stand":
        return (self.origin + (0, 0, 60));
    default:
        return (self.origin + (0, 0, 60));
    }
}

// Namespace wz_perk_paranoia/wz_perk_paranoia
// Params 0, eflags: 0x6 linked
// Checksum 0xcd983022, Offset: 0x510
// Size: 0x1a
function private function_c9d3a835() {
    return self.origin + (0, 0, 36);
}

// Namespace wz_perk_paranoia/wz_perk_paranoia
// Params 1, eflags: 0x6 linked
// Checksum 0x96dc03, Offset: 0x538
// Size: 0xcf8
function private function_3e9077b(localclientnum) {
    level endon(#"game_ended");
    self endon(#"disconnect", #"shutdown", #"death");
    self notify("12386e2d17fb6b3");
    self endon("12386e2d17fb6b3");
    var_5bc097ee = self hasperk(localclientnum, #"specialty_paranoia");
    var_81f254ba = cos(10);
    self function_c97460c6();
    var_2b836fea = undefined;
    while (true) {
        var_a0364f90 = var_5bc097ee && !squad_spawn::function_21b773d5(localclientnum);
        if (codcaster::function_c955fbd1(localclientnum)) {
            var_a0364f90 = 0;
        }
        var_7cefa3dc = undefined;
        if (var_a0364f90) {
            var_70b38754 = getlocalclientfov(localclientnum);
            var_92434aad = cos(var_70b38754) * -1;
        }
        enemy_players = getenemyplayers(localclientnum, self.team, self.origin, 21600 + 15);
        foreach (player in enemy_players) {
            waitframe(1);
            if (!isdefined(player)) {
                continue;
            }
            if (!function_56e2eaa8(player)) {
                continue;
            }
            if (!isalive(player)) {
                continue;
            }
            if (is_true(player function_bee2bbc7())) {
                continue;
            }
            if (!is_true(player isplayerads()) && !is_true(level.var_433dea4)) {
                continue;
            }
            var_1b477698 = is_true(player.weapon.issniperweapon) && !weaponhasattachment(player.weapon, "elo");
            if (!var_a0364f90 && !var_1b477698) {
                continue;
            }
            if (!isplayer(self)) {
                continue;
            }
            if (!function_56e2eaa8(self)) {
                continue;
            }
            player_eye_pos = player function_dbd63244();
            var_2cb75b52 = self function_c9d3a835();
            to_self = var_2cb75b52 - player_eye_pos;
            var_2c01c01e = lengthsquared(to_self);
            if (var_2c01c01e > sqr(21600)) {
                continue;
            }
            player_angles = player getplayerangles();
            player_forward = anglestoforward(player_angles);
            var_e1a2a16a = vectornormalize(to_self);
            if (vectordot(player_forward, var_e1a2a16a) < var_81f254ba) {
                continue;
            }
            self_eye = self function_dbd63244();
            var_7cd3af52 = angleclamp180(vectortopitch(self_eye + (0, 0, 20) - player_eye_pos));
            var_e909bde9 = angleclamp180(vectortopitch(self.origin - (0, 0, 10) - player_eye_pos));
            var_9a06bf54 = player_angles[0];
            var_6958d5cc = var_7cd3af52 <= var_9a06bf54 && var_9a06bf54 <= var_e909bde9;
            if (!var_6958d5cc) {
                /#
                    debug_line(player_eye_pos, player_eye_pos + vectorscale(player_forward, 21600), (1, 1, 0));
                #/
                continue;
            }
            var_9e9288e5 = (to_self[0], to_self[1], 0);
            var_77490c15 = vectornormalize(var_9e9288e5);
            var_8aea606c = vectorcross(var_77490c15, (0, 0, 1));
            var_fada11c4 = 15 + 20;
            var_f63b37c5 = vectorscale(var_8aea606c, var_fada11c4);
            var_ace65a4d = vectordot(vectornormalize(var_9e9288e5 + var_f63b37c5), var_77490c15);
            var_d885fce5 = vectornormalize((player_forward[0], player_forward[1], 0));
            var_cf2630c5 = vectordot(var_77490c15, var_d885fce5) > var_ace65a4d;
            if (!var_cf2630c5) {
                /#
                    debug_line(player_eye_pos, player_eye_pos + vectorscale(player_forward, 21600), (1, 1, 0));
                #/
                continue;
            }
            var_448a2e21 = undefined;
            trace_dist = length(to_self);
            trace_end = player_eye_pos + vectorscale(player_forward, trace_dist);
            trace = bullettrace(player_eye_pos, trace_end, 1, player);
            if (trace[#"fraction"] === 1) {
                var_448a2e21 = 1;
                /#
                    debug_line(player_eye_pos, trace_end, (0, 1, 0));
                #/
            } else {
                /#
                    debug_line(player_eye_pos, trace[#"position"], (1, 0, 0));
                #/
            }
            if (var_448a2e21 !== 1) {
                trace = bullettrace(player_eye_pos, self_eye, 1, player);
                if (trace[#"fraction"] === 1) {
                    var_448a2e21 = 1;
                    /#
                        debug_line(player_eye_pos, self_eye, (0, 1, 0));
                    #/
                } else {
                    /#
                        debug_line(player_eye_pos, trace[#"position"], (1, 0, 0));
                    #/
                    continue;
                }
            }
            if (var_448a2e21 === 1) {
                var_7cefa3dc = #"hash_73a3e9d9afd7f5b9";
                /#
                    debug_sphere(self.origin, 10, (0, 1, 0));
                #/
                break;
            }
        }
        if (getdvarint(#"hash_50e84a29a7fc192e", 0) == 0) {
            if (isdefined(var_7cefa3dc) && isdefined(player)) {
                if (var_2c01c01e >= sqr(800) && var_1b477698) {
                    if (!isdefined(player.var_a25a6a6)) {
                        player.var_a25a6a6 = 0;
                    }
                    if (player.var_a25a6a6 < gettime()) {
                        var_32fc4c15 = player gettagorigin("tag_barrel");
                        if (isdefined(var_32fc4c15)) {
                            util::playfxontag(localclientnum, "lensflares/fx9_lf_sniper_glint", player, "tag_barrel");
                            player.var_a25a6a6 = gettime() + randomintrange(200, 700);
                        }
                    }
                }
                if (var_a0364f90 && !player hasperk(localclientnum, #"specialty_immuneparanoia") && !self isremotecontrolling(localclientnum)) {
                    if (!is_true(player.var_1627fdd)) {
                        player.var_1627fdd = 1;
                        player playsound(localclientnum, #"hash_74faa2aaae4a8737");
                        player thread util::delay(15, "disconnect", &function_c97460c6);
                    }
                    if (!is_true(player.var_315c7748)) {
                        var_b8258f8d = self getplayerangles();
                        var_5c9c06a3 = vectordot(anglestoforward(var_b8258f8d), player_forward);
                        var_8bafe2ec = var_5c9c06a3 > var_92434aad;
                        if (var_8bafe2ec) {
                            player.var_315c7748 = 1;
                            if (var_5c9c06a3 > var_92434aad * -1 + 0.3) {
                                postfx = #"hash_757fef94cde1aea2";
                            } else {
                                var_d063eeda = anglestoright(var_b8258f8d);
                                var_15fa6db2 = (0, var_d063eeda[1], 0);
                                var_eedc2e35 = vectordot(var_d063eeda, var_77490c15);
                                if (var_eedc2e35 > 0) {
                                    postfx = #"hash_5b26e5dca4c669e8";
                                } else {
                                    postfx = #"hash_34e29783cbb9d8dd";
                                }
                            }
                            self postfx::playpostfxbundle(postfx);
                            player thread util::delay(getdvarfloat(#"hash_622940bdc899a8d0", 3), "disconnect", &function_3cacb818);
                        }
                    }
                    if (!isdefined(var_2b836fea)) {
                        var_2b836fea = player playsound(localclientnum, var_7cefa3dc);
                        self thread function_5de58e5(player, var_2b836fea);
                    } else if (!soundplaying(var_2b836fea)) {
                        var_2b836fea = undefined;
                        self notify(#"hash_3a0dfecf2b9bdcec");
                    }
                    waitframe(1);
                } else {
                    waitframe(1);
                }
            }
        }
        waitframe(1);
    }
}

// Namespace wz_perk_paranoia/wz_perk_paranoia
// Params 0, eflags: 0x6 linked
// Checksum 0x4ffa36bd, Offset: 0x1238
// Size: 0xe
function private function_c97460c6() {
    self.var_1627fdd = 0;
}

// Namespace wz_perk_paranoia/wz_perk_paranoia
// Params 0, eflags: 0x6 linked
// Checksum 0xd291a696, Offset: 0x1250
// Size: 0xe
function private function_3cacb818() {
    self.var_315c7748 = 0;
}

// Namespace wz_perk_paranoia/wz_perk_paranoia
// Params 2, eflags: 0x6 linked
// Checksum 0x4adb5696, Offset: 0x1268
// Size: 0x8a
function private function_5de58e5(player, var_2b836fea) {
    self endon(#"hash_3a0dfecf2b9bdcec");
    util::waittill_any_ents_two(self, "death", player, "death");
    stopsound(var_2b836fea);
    if (isdefined(self)) {
        self.var_1627fdd = 0;
        self.var_315c7748 = 0;
    }
}

// Namespace wz_perk_paranoia/wz_perk_paranoia
// Params 3, eflags: 0x4
// Checksum 0x185c0b71, Offset: 0x1300
// Size: 0x6c
function private debug_line(start, end, color) {
    if (getdvarint(#"hash_50e84a29a7fc192e", 0) == 1) {
        /#
            line(start, end, color, 0.75, 0, 1);
        #/
    }
}

// Namespace wz_perk_paranoia/wz_perk_paranoia
// Params 3, eflags: 0x4
// Checksum 0x4cef166, Offset: 0x1378
// Size: 0x74
function private debug_sphere(origin, radius, color) {
    if (getdvarint(#"hash_50e84a29a7fc192e", 0) == 1) {
        /#
            sphere(origin, radius, color, 0.95, 0, 20, 1);
        #/
    }
}

