// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\heatseekingmissile.gsc;
#using scripts\core_common\math_shared.gsc;
#using script_1b9f100b85b7e21d;
#using script_3dc93ca9902a9cda;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace namespace_f180c0d7;

// Namespace namespace_f180c0d7/namespace_f180c0d7
// Params 0, eflags: 0x0
// Checksum 0x409a2c70, Offset: 0x258
// Size: 0x34
function function_c44464c8() {
    clientfield::register("toplayer", "pstfx_script_vignette", 1, 2, "int");
}

// Namespace namespace_f180c0d7/namespace_f180c0d7
// Params 1, eflags: 0x0
// Checksum 0xf4a14a19, Offset: 0x298
// Size: 0x77a
function function_b26dad22(level_notify) {
    thread function_b0e490c1();
    level.var_7466d419 callback::function_d8abfc3d(#"on_vehicle_damage", &function_d39d4a5b);
    level.var_7466d419 endon(#"death");
    level endon(level_notify);
    /#
        level endon(#"hash_1cf48096c380b7cd");
    #/
    var_991ef290 = 1300;
    var_24120947 = 1000;
    var_b4030a00 = 100;
    var_168492dd = undefined;
    level.player = getplayers()[0];
    function_5ac4dc99("bottom_distance", -1);
    function_5ac4dc99("middle_distance", -1);
    function_5ac4dc99("top_distance", -1);
    setdvar(#"hash_244a543491606468", var_991ef290);
    setdvar(#"hash_29d46f70d5dcef62", 1200);
    setdvar(#"hash_4d0da2cce37b5b96", var_b4030a00);
    var_270e748f = 0;
    var_9ddd4d57 = undefined;
    level.var_7466d419.var_2939dba = #"hash_5cad1a1b9fdc43ee";
    while (true) {
        trace_result = physicstrace(level.var_7466d419.origin + (0, 0, 50), level.var_7466d419.origin + (0, 0, 5000), (0, 0, 0), (0, 0, 0), level.var_7466d419, 16);
        if (isdefined(trace_result) && isdefined(trace_result[#"position"])) {
            var_b4d6bef6 = distance(level.var_7466d419.origin, trace_result[#"position"]);
            if (trace_result[#"fraction"] < 1) {
                setdvar(#"current_distance", var_b4d6bef6);
            }
            if (isdefined(var_168492dd)) {
                if (var_b4d6bef6 < var_b4030a00 && var_168492dd >= var_b4030a00) {
                    level notify(#"stop");
                    thread function_ad449a1b("stop");
                    thread function_4b0f12f6("stop");
                    thread function_f4567c7c(var_b4d6bef6, "stop");
                    level.player clientfield::set_to_player("pstfx_script_vignette", 3);
                } else if (var_b4d6bef6 > var_b4030a00 && var_168492dd <= var_b4030a00) {
                    level notify(#"stop");
                    thread function_4b0f12f6("stop");
                    thread function_d262b525("stop", 3);
                    thread function_f4567c7c(var_b4d6bef6, "stop");
                    level.player clientfield::set_to_player("pstfx_script_vignette", 2);
                } else if (var_b4d6bef6 < var_24120947 && var_168492dd >= var_24120947) {
                    level notify(#"stop");
                    thread function_4b0f12f6("stop");
                    thread function_d262b525("stop", 3);
                    thread function_f4567c7c(var_b4d6bef6, "stop");
                    level.player clientfield::set_to_player("pstfx_script_vignette", 2);
                } else if (var_b4d6bef6 > var_24120947 && var_168492dd <= var_24120947) {
                    level notify(#"stop");
                    thread function_f4567c7c(var_b4d6bef6, "stop");
                    level.player clientfield::set_to_player("pstfx_script_vignette", 1);
                } else if (var_b4d6bef6 < var_991ef290 && var_168492dd >= var_991ef290) {
                    level notify(#"stop");
                    thread function_f4567c7c(var_b4d6bef6, "stop");
                    iprintlnbold("You're flying too high get down!");
                    level.player clientfield::set_to_player("pstfx_script_vignette", 1);
                    if (var_270e748f == 0) {
                        thread function_36cc1830();
                        var_9ddd4d57 = spawn("script_model", level.var_7466d419.origin);
                        var_9ddd4d57 setmodel(#"tag_origin");
                        var_9ddd4d57 linkto(level.var_7466d419, "tag_attach", (0, 0, 0), (0, 0, 0));
                        playfxontag(level.var_7466d419.var_2939dba, var_9ddd4d57, "tag_origin");
                        var_270e748f = 1;
                    }
                } else if (var_b4d6bef6 > var_991ef290 && var_168492dd <= var_991ef290) {
                    level notify(#"stop");
                    level notify(#"hash_49600419866451c4");
                    level.player clientfield::set_to_player("pstfx_script_vignette", 0);
                    if (var_270e748f == 1) {
                        var_9ddd4d57 delete();
                        var_9ddd4d57 = undefined;
                        var_270e748f = 0;
                    }
                }
            }
        }
        var_168492dd = var_b4d6bef6;
        waitframe(1);
    }
}

// Namespace namespace_f180c0d7/namespace_f180c0d7
// Params 1, eflags: 0x0
// Checksum 0x87e86833, Offset: 0xa20
// Size: 0x374
function function_4b0f12f6(level_notify) {
    level.var_7466d419 endon(#"death");
    level endon(level_notify);
    weapon = getweapon(#"ar_damage_t9");
    player_damage = 20;
    while (true) {
        var_867b0f45 = level.var_7466d419 getspeedmph();
        shot_count = randomintrange(10, 12);
        random_y = 0;
        random_x = randomintrange(1000, 1500);
        random_z = randomintrange(400, 600);
        if (math::cointoss()) {
            random_y = randomintrange(1250, 1500);
        } else {
            random_y = randomintrange(-1500, -1250);
        }
        tag = ["tag_door_rear_left_null", "tag_door_mid_right_null", "tag_door_rear_right_null", "tag_rotor_attach"];
        var_44960a56 = array::random(tag);
        var_9d5321a = level.var_7466d419 gettagorigin(var_44960a56);
        var_5a3aa491 = (random_x, random_y, random_z);
        var_f4d3e08a = rotatepoint(var_5a3aa491, level.var_7466d419.angles) + level.var_7466d419.origin;
        thread function_f4567c7c("stop");
        while (shot_count > 0) {
            if (var_867b0f45 > 20) {
                offset = (1200, 0, 0);
                var_6d32c483 = rotatepoint(offset, level.var_7466d419.angles) + var_9d5321a;
                magicbullet(weapon, var_f4d3e08a, var_6d32c483);
            } else if (var_867b0f45 <= 20) {
                magicbullet(weapon, var_f4d3e08a, var_9d5321a);
            }
            shot_count--;
            wait(0.075);
            var_2ff447b6 = snd::play("tmp_impacts_metal", level.players[0]);
        }
        wait(1);
    }
}

// Namespace namespace_f180c0d7/namespace_f180c0d7
// Params 1, eflags: 0x0
// Checksum 0x3ad31c12, Offset: 0xda0
// Size: 0x3fc
function function_ad449a1b(level_notify) {
    level.var_7466d419 endon(#"death");
    level endon(level_notify);
    weapon = getweapon(#"hash_513c26c6a751d20e");
    var_43050ba4 = 1;
    while (var_43050ba4 > 0) {
        canshoot = 1;
        var_867b0f45 = level.var_7466d419 getspeedmph();
        random_y = 0;
        random_x = randomintrange(3000, 3500);
        random_z = randomintrange(400, 600);
        if (math::cointoss()) {
            random_y = randomintrange(1250, 1500);
        } else {
            random_y = randomintrange(-1500, -1250);
        }
        var_5a3aa491 = (random_x, random_y, random_z);
        var_f4d3e08a = rotatepoint(var_5a3aa491, level.var_7466d419.angles) + level.var_7466d419.origin;
        if (canshoot) {
            if (var_867b0f45 > 10) {
                offset = (4000, 0, 0);
                var_6d32c483 = rotatepoint(offset, level.var_7466d419.angles) + level.var_7466d419.origin;
                missle = magicbullet(weapon, var_f4d3e08a, var_6d32c483);
                level.var_c95e0d20 = missle;
                if (var_43050ba4 <= 1) {
                    missle.var_30dc969d = 1;
                    missle.team = #"axis";
                    missle setteam(#"axis");
                    level.var_7466d419 thread heatseekingmissile::missiletarget_proximitydetonate(missle, missle, weapon, "death");
                    attractor = missile_createattractorent(level.var_7466d419, 25000, 150, 1);
                }
            } else if (var_867b0f45 <= 10) {
                missle = magicbullet(weapon, var_f4d3e08a, level.var_7466d419.origin);
                level.var_c95e0d20 = missle;
                if (var_43050ba4 <= 1) {
                    missle.var_30dc969d = 1;
                    missle.team = #"axis";
                    missle setteam(#"axis");
                    level.var_7466d419 thread heatseekingmissile::missiletarget_proximitydetonate(missle, missle, weapon, "death");
                    attractor = missile_createattractorent(level.var_7466d419, 25000, 150, 1);
                }
            }
            var_43050ba4--;
        }
        wait(2);
    }
}

// Namespace namespace_f180c0d7/namespace_f180c0d7
// Params 2, eflags: 0x0
// Checksum 0xa77c236e, Offset: 0x11a8
// Size: 0x2c8
function function_d262b525(level_notify, var_7366cb1a) {
    level.var_7466d419 endon(#"death");
    level endon(level_notify);
    weapon = getweapon(#"hash_513c26c6a751d20e");
    while (true) {
        canshoot = 1;
        var_867b0f45 = level.var_7466d419 getspeedmph();
        random_y = 0;
        random_x = randomintrange(3000, 3500);
        random_z = randomintrange(400, 600);
        if (math::cointoss()) {
            random_y = randomintrange(1250, 1500);
        } else {
            random_y = randomintrange(-1500, -1250);
        }
        var_5a3aa491 = (random_x, random_y, random_z);
        var_f4d3e08a = rotatepoint(var_5a3aa491, level.var_7466d419.angles) + level.var_7466d419.origin;
        if (canshoot) {
            if (var_867b0f45 > 10) {
                offset = (4000, 0, 0);
                var_6d32c483 = rotatepoint(offset, level.var_7466d419.angles) + level.var_7466d419.origin;
                missle = magicbullet(weapon, var_f4d3e08a, var_6d32c483);
            } else if (var_867b0f45 <= 10) {
                offset = (1000, 0, 0);
                var_6d32c483 = rotatepoint(offset, level.var_7466d419.angles) + level.var_7466d419.origin;
                missle = magicbullet(weapon, var_f4d3e08a, var_6d32c483);
            }
        }
        wait(var_7366cb1a);
    }
}

// Namespace namespace_f180c0d7/namespace_f180c0d7
// Params 2, eflags: 0x0
// Checksum 0x8071f01e, Offset: 0x1478
// Size: 0x22c
function function_f4567c7c(distance, level_notify) {
    level.var_7466d419 endon(#"death");
    level endon(level_notify);
    source = level.players[0].origin;
    pitch = [0.25, 0.5];
    yaw = [0.1, 0.5];
    roll = [0.25, 0.5];
    duration = [0.7, 0.3];
    freqpitch = 4;
    freqyaw = 4;
    freqroll = 4;
    if (distance < 1000) {
        level.players[0] playrumbleonentity("damage_heavy");
        screenshake(source, pitch[1], yaw[1], roll[1], duration[1], 0, 0, 0, freqpitch, freqyaw);
        return;
    }
    if (distance < 1500) {
        level.players[0] playrumbleonentity("damage_light");
        screenshake(source, pitch[0], yaw[0], roll[0], duration[0], 0, 0, 0, freqpitch, freqyaw);
    }
}

// Namespace namespace_f180c0d7/namespace_f180c0d7
// Params 2, eflags: 0x0
// Checksum 0x68860126, Offset: 0x16b0
// Size: 0x84
function function_b2abc199(level_notify, stop_notify) {
    level notify(level_notify);
    level notify(stop_notify);
    level.player clientfield::set_to_player("pstfx_script_vignette", 0);
    level.var_7466d419 callback::function_52ac9652(#"on_vehicle_damage", &function_d39d4a5b);
}

// Namespace namespace_f180c0d7/namespace_f180c0d7
// Params 0, eflags: 0x0
// Checksum 0xa6146930, Offset: 0x1740
// Size: 0x6c
function function_36cc1830() {
    level.var_7466d419 endon(#"death");
    var_c8ff805c = snd::function_9ae4fc6f("tmp_veh_helicopter_alarm_lp", level.var_7466d419);
    snd::function_2e9b6265(var_c8ff805c, "out_of_zone");
}

// Namespace namespace_f180c0d7/namespace_f180c0d7
// Params 0, eflags: 0x0
// Checksum 0xc78eda50, Offset: 0x17b8
// Size: 0x54
function function_b0e490c1() {
    while (isalive(level.var_7466d419)) {
        waitframe(1);
    }
    waitframe(1);
    level.player clientfield::set_to_player("pstfx_script_vignette", 0);
}

// Namespace namespace_f180c0d7/namespace_f180c0d7
// Params 1, eflags: 0x0
// Checksum 0x1e836dbc, Offset: 0x1818
// Size: 0xbc
function function_d39d4a5b(params) {
    einflictor = params.einflictor;
    idamage = params.idamage;
    smeansofdeath = params.smeansofdeath;
    if (smeansofdeath === "MOD_RIFLE_BULLET") {
        return;
    }
    if (isdefined(einflictor) && isdefined(level.var_c95e0d20) && einflictor === level.var_c95e0d20) {
        level.var_7466d419 dodamage(50000, level.var_7466d419.origin);
    }
}

