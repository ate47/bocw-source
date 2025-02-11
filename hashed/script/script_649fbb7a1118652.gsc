#using scripts\core_common\array_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\gestures;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;

#namespace namespace_11f6e435;

// Namespace namespace_11f6e435/namespace_11f6e435
// Params 0, eflags: 0x5
// Checksum 0xd9530e73, Offset: 0x178
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_22ce53762586e490", undefined, &postinit, undefined, undefined);
}

// Namespace namespace_11f6e435/namespace_11f6e435
// Params 0, eflags: 0x0
// Checksum 0x22606933, Offset: 0x1c0
// Size: 0x1c
function postinit() {
    level thread function_8e1c74f9();
}

// Namespace namespace_11f6e435/namespace_11f6e435
// Params 0, eflags: 0x0
// Checksum 0x20524033, Offset: 0x1e8
// Size: 0x3a8
function function_8e1c74f9() {
    var_e8290a75 = struct::get_array("fastrope_point", "script_noteworthy");
    if (!getdvarint(#"hash_38bd39dc986b3524", 1)) {
        return;
    }
    foreach (fastrope_point in var_e8290a75) {
        var_f15d0100 = fastrope_point;
        end_spot = struct::get(var_f15d0100.target);
        if (!isdefined(var_f15d0100.triggers)) {
            var_f15d0100.triggers = [];
        }
        if (!isdefined(end_spot.triggers)) {
            end_spot.triggers = [];
        }
        var_6a4d6895 = spawn("trigger_radius_use", var_f15d0100.origin + (0, 0, 16), 0, 128, 128);
        if (!isdefined(var_f15d0100.triggers)) {
            var_f15d0100.triggers = [];
        } else if (!isarray(var_f15d0100.triggers)) {
            var_f15d0100.triggers = array(var_f15d0100.triggers);
        }
        var_f15d0100.triggers[var_f15d0100.triggers.size] = var_6a4d6895;
        if (!isdefined(end_spot.triggers)) {
            end_spot.triggers = [];
        } else if (!isarray(end_spot.triggers)) {
            end_spot.triggers = array(end_spot.triggers);
        }
        end_spot.triggers[end_spot.triggers.size] = var_6a4d6895;
        var_6a4d6895.var_f15d0100 = var_f15d0100;
        var_6a4d6895.end_spot = end_spot;
        var_6a4d6895 triggerignoreteam();
        var_6a4d6895 setvisibletoall();
        var_6a4d6895 setteamfortrigger(#"none");
        var_6a4d6895 setcursorhint("HINT_NOICON");
        hint = #"hash_3836c584d365660c";
        var_4fbbe184 = &function_4d3d6ee0;
        if (is_true(var_f15d0100.var_a94720c2)) {
            hint = #"hash_3836c584d365660c";
        }
        var_6a4d6895 sethintstring(hint);
        var_6a4d6895 callback::on_trigger(var_4fbbe184);
        /#
            level thread function_be9add5(fastrope_point, end_spot.origin);
        #/
    }
}

// Namespace namespace_11f6e435/namespace_11f6e435
// Params 1, eflags: 0x0
// Checksum 0xc61331bf, Offset: 0x598
// Size: 0x894
function function_4d3d6ee0(var_19a365) {
    level endon(#"game_ended");
    trigger = self;
    player = var_19a365.activator;
    var_f15d0100 = self.var_f15d0100;
    end_spot = self.end_spot;
    if (isplayer(player) && isalive(player) && !is_true(player.is_ziplining) && isdefined(trigger)) {
        array::run_all(var_f15d0100.triggers, &setinvisibletoplayer, player);
        array::run_all(end_spot.triggers, &setinvisibletoplayer, player);
        start_pos = var_f15d0100.origin + (0, 0, 4);
        end_pos = end_spot.origin + (0, 0, 4);
        var_45040e1f = 1;
        var_4332eb06 = -4;
        var_d3e534b8 = 64;
        hint = #"hash_58bfd99072aeba6a";
        speed = getdvarint(#"hash_779091360c2d4e41", 300);
        if (is_true(var_f15d0100.var_a94720c2)) {
            var_45040e1f = 0;
            var_4332eb06 = 1;
            var_d3e534b8 = 1;
            hint = #"hash_3812f49a058d077d";
            speed = getdvarint(#"hash_1809408f1368ea26", 700);
        }
        player.is_ziplining = 1;
        var_c0a980b9 = start_pos + vectorscale(anglestoforward(var_f15d0100.angles), var_4332eb06);
        var_bcb7a04b = end_pos + vectorscale(anglestoforward(var_f15d0100.angles), var_d3e534b8);
        zipline = util::spawn_model(#"tag_origin", var_c0a980b9, var_f15d0100.angles);
        var_137ae0b1 = spawn("trigger_radius_use", player.origin, 0, 32, 32);
        zipline playsound("evt_rappel_start");
        zipline playloopsound("evt_rappel_loop");
        var_137ae0b1 enablelinkto();
        var_137ae0b1 linkto(player);
        var_137ae0b1 triggerignoreteam();
        var_137ae0b1 setinvisibletoall();
        var_137ae0b1 setvisibletoplayer(player);
        var_137ae0b1 setteamfortrigger(#"none");
        var_137ae0b1 setcursorhint("HINT_NOICON");
        var_137ae0b1 sethintstring(hint);
        if (isdefined(zipline)) {
            zipline setmovingplatformenabled(1);
            player util::break_glass(72);
            player playerlinktodelta(zipline, "tag_origin", 0, 360, 360, 45, 45);
            player thread gestures::function_56e00fbf("gestable_zipline", undefined, 1);
            player thread function_3f29d9bd();
            level thread function_cec4ff58(player, zipline);
            player allowprone(0);
            player allowjump(0);
            distance = distance(var_f15d0100.origin, end_pos);
            time = distance / speed;
            zipline moveto(end_pos, time, 0.2, 0.2);
            zipline waittilltimeout(time, #"death", #"hash_16b6d29ede331dc8");
            if (isalive(player)) {
                player util::break_glass(72);
            }
            if (isdefined(var_137ae0b1)) {
                var_137ae0b1 delete();
            }
            if (var_45040e1f && isdefined(zipline) && isalive(player) && is_true(player.is_ziplining)) {
                level thread function_cec4ff58(player, zipline);
                distance = distance(zipline.origin, var_bcb7a04b);
                time = distance / speed;
                zipline moveto(var_bcb7a04b, time);
                zipline waittilltimeout(time, #"death", #"hash_16b6d29ede331dc8");
            }
            if (isdefined(player)) {
                player allowjump(1);
                player allowprone(1);
                player unlink();
                player setstance("stand");
            }
            if (isdefined(zipline)) {
                zipline stopsound("evt_rappel_loop");
                zipline playsound("evt_rappel_stop");
                wait 0.2;
            }
            if (isdefined(zipline)) {
                zipline delete();
            }
        }
        if (isdefined(player)) {
            player.is_ziplining = 0;
            player waittilltimeout(1.4, #"death", #"disconnect");
            if (isdefined(player)) {
                array::run_all(var_f15d0100.triggers, &setvisibletoplayer, player);
                array::run_all(end_spot.triggers, &setvisibletoplayer, player);
            }
        }
    }
}

// Namespace namespace_11f6e435/namespace_11f6e435
// Params 0, eflags: 0x0
// Checksum 0x4ff17739, Offset: 0xe38
// Size: 0x3c
function function_3f29d9bd() {
    var_55c33aa3 = 0.25;
    wait var_55c33aa3;
    if (isdefined(self)) {
        self stopgestureviewmodel();
    }
}

// Namespace namespace_11f6e435/namespace_11f6e435
// Params 2, eflags: 0x0
// Checksum 0x1e1527ad, Offset: 0xe80
// Size: 0x118
function function_cec4ff58(player, zipline) {
    self notify("6003dec1881e38e2");
    self endon("6003dec1881e38e2");
    while (isalive(player) && is_true(player.is_ziplining) && player usebuttonpressed()) {
        waitframe(1);
    }
    while (isalive(player) && is_true(player.is_ziplining) && isalive(player) && !player util::use_button_held()) {
        waitframe(1);
    }
    if (isdefined(zipline)) {
        zipline notify(#"hash_16b6d29ede331dc8");
    }
}

/#

    // Namespace namespace_11f6e435/namespace_11f6e435
    // Params 2, eflags: 0x0
    // Checksum 0x16624ee8, Offset: 0xfa0
    // Size: 0xf8
    function function_be9add5(fastrope_point, var_17f29e11) {
        var_86660d95 = fastrope_point.origin;
        var_5c8079f3 = "<dev string:x38>";
        if (is_true(fastrope_point.var_a94720c2)) {
            var_5c8079f3 = "<dev string:x48>";
        }
        while (getdvarint(#"hash_13a9fb4be8e86e13", 0)) {
            waitframe(1);
            print3d(var_86660d95 + (0, 0, 16), var_5c8079f3, (0, 1, 0));
            sphere(var_86660d95, 16, (0, 1, 0));
            line(var_86660d95, var_17f29e11, (0, 1, 0));
        }
    }

#/
