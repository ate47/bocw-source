// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\helicopter_shared.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\animation_shared.gsc;

#namespace exfil_chopper;

// Namespace exfil_chopper/exfil_chopper
// Params 0, eflags: 0x2 linked
// Checksum 0x649f5260, Offset: 0x1c0
// Size: 0x2a
function function_662f57c9() {
    return struct::get_array(#"hash_4b39811e25265e0f", "variantname");
}

// Namespace exfil_chopper/exfil_chopper
// Params 2, eflags: 0x2 linked
// Checksum 0xebd4f691, Offset: 0x1f8
// Size: 0x1c0
function function_c21c59f(var_f4a4fc64, objectivename) {
    origin = var_f4a4fc64.origin;
    angles = var_f4a4fc64.angles;
    target = var_f4a4fc64.target;
    var_f389af4f = is_true(var_f4a4fc64.var_f389af4f);
    hintstring = var_f4a4fc64.hintstring;
    trigger = level function_c5347667(origin, var_f389af4f, hintstring);
    var_8e875f24 = gameobjects::create_use_object(#"neutral", trigger, [], (0, 0, 0), objectivename);
    var_8e875f24 gameobjects::allow_use(#"hash_5ccfd7bbbf07c770");
    var_8e875f24 gameobjects::set_visible(#"hash_161f03feaadc9b8f");
    var_8e875f24 gameobjects::disable_object(undefined, 0);
    var_8e875f24 gameobjects::set_use_time(level.var_c2eba59b);
    var_8e875f24.cancontestclaim = 1;
    var_8e875f24.origin = origin;
    var_8e875f24.angles = angles;
    if (isdefined(target)) {
        var_8e875f24.var_6728673 = getvehiclenode(target, "targetname");
    }
    var_8e875f24 function_f76880c5();
    return var_8e875f24;
}

// Namespace exfil_chopper/exfil_chopper
// Params 3, eflags: 0x6 linked
// Checksum 0x9c1663e4, Offset: 0x3c0
// Size: 0x158
function private function_c5347667(origin, var_f389af4f, hintstring) {
    var_7c47eaa3 = "trigger_radius";
    triggerorigin = origin + (0, 0, 1);
    triggerradius = 220;
    if (var_f389af4f) {
        var_7c47eaa3 = "trigger_radius_use";
        triggerradius = 80;
    }
    trigger = spawn(var_7c47eaa3, triggerorigin, 0, triggerradius, 100);
    if (var_f389af4f) {
        trigger setcursorhint("HINT_NOICON");
        trigger sethintstring(hintstring);
        trigger function_268e4500();
        trigger function_682f34cf(-800);
        trigger usetriggerignoreuseholdtime();
        trigger setvisibletoall();
        trigger triggerignoreteam();
    }
    return trigger;
}

// Namespace exfil_chopper/exfil_chopper
// Params 0, eflags: 0x2 linked
// Checksum 0x1098460b, Offset: 0x520
// Size: 0x132
function function_f76880c5() {
    fx = spawn("script_model", self.origin);
    fx setmodel(#"hash_5954ee101d795113");
    playfx(#"hash_6c0862bb0e561d0d", fx.origin);
    playfx(#"hash_39f9530da901280", fx.origin);
    fx playsound(#"hash_7e287e6b6da3c9cd");
    fx.sndent = spawn("script_origin", fx.origin);
    fx.sndent linkto(fx);
    fx.sndent playloopsound(#"hash_686d0823355faccd");
    self.smokefx = fx;
}

// Namespace exfil_chopper/exfil_chopper
// Params 1, eflags: 0x2 linked
// Checksum 0x23ca8f49, Offset: 0x660
// Size: 0x164
function function_7f1fe6f8(var_8e875f24) {
    startnode = var_8e875f24.var_6728673;
    var_8e875f24.helicopter = function_d4774e31(startnode.origin, startnode.angles);
    var_8e875f24.helicopter endon(#"death");
    var_8e875f24.helicopter function_80d5586c(var_8e875f24);
    clientfield::set_world_uimodel("hud_items_fireteam.exfil_state", 2);
    var_8e875f24.helicopter function_6d6a37b3();
    var_8e875f24.helicopter function_71f99527();
    var_8e875f24 gameobjects::enable_object();
    var_8e875f24 gameobjects::allow_use(#"hash_5ccfd7bbbf07c770");
    var_8e875f24 gameobjects::set_visible(#"hash_5ccfd7bbbf07c770");
    var_8e875f24 gameobjects::set_flags(0);
    clientfield::set_world_uimodel("hud_items_fireteam.exfil_state", 3);
}

// Namespace exfil_chopper/exfil_chopper
// Params 2, eflags: 0x2 linked
// Checksum 0x2947bc8f, Offset: 0x7d0
// Size: 0x160
function function_d4774e31(origin, angles) {
    helicopter = spawnvehicle(#"hash_58cc8ce25d32031f", origin, angles, "exfil_chopper_vehicle");
    helicopter setdrawinfrared(1);
    helicopter.soundmod = "heli";
    helicopter.takedamage = 0;
    helicopter.drivepath = 1;
    helicopter setneargoalnotifydist(200);
    if (target_istarget(helicopter)) {
        target_remove(helicopter);
    }
    helicopter setrotorspeed(1);
    level thread helicopter::function_eca18f00(helicopter, #"hash_7d4a23989da5398c");
    level thread function_1c85a66(helicopter);
    level function_eae9cdce(helicopter);
    return helicopter;
}

// Namespace exfil_chopper/exfil_chopper
// Params 1, eflags: 0x2 linked
// Checksum 0x5fce4ac0, Offset: 0x938
// Size: 0x8c
function function_80d5586c(var_8e875f24) {
    startnode = var_8e875f24.var_6728673;
    /#
        self thread function_c22381ff();
    #/
    /#
        self thread function_f773d8e2();
    #/
    waitframe(1);
    self vehicle::get_on_and_go_path(startnode);
    self setvehvelocity((0, 0, 0));
}

// Namespace exfil_chopper/exfil_chopper
// Params 0, eflags: 0x2 linked
// Checksum 0x1b377822, Offset: 0x9d0
// Size: 0x74
function function_6d6a37b3() {
    self helicopter::create_flare_ent((0, 0, -95));
    playfxontag(#"hash_3690812c1bb1b5d9", self.flare_ent, "tag_origin");
    self playsound(#"hash_5e070a23d3527269");
}

// Namespace exfil_chopper/exfil_chopper
// Params 0, eflags: 0x2 linked
// Checksum 0xbf2460e5, Offset: 0xa50
// Size: 0xfc
function function_71f99527() {
    assert(isdefined(self.rope));
    self endon(#"death", #"hash_1670fb11095de08");
    self.rope endon(#"death");
    self.rope show();
    self.rope animation::play(#"hash_2216bcebd33b5779", self, "tag_origin_animate", 1, 0.2, 0.1, undefined, undefined, undefined, 0);
    self notify(#"hash_670c1abc926bee81");
    level thread function_ced42479(self, self.rope);
}

// Namespace exfil_chopper/exfil_chopper
// Params 1, eflags: 0x6 linked
// Checksum 0x2d115b66, Offset: 0xb58
// Size: 0x16a
function private function_1c85a66(helicopter) {
    helicopter endon(#"death");
    var_46d7c629 = spawn("script_model", helicopter.origin);
    var_46d7c629 linkto(helicopter);
    operator = util::spawn_anim_model(#"hash_71aea3bbaef3e00c", helicopter.origin);
    operator linkto(var_46d7c629);
    operator useanimtree("all_player");
    var_a3476af7 = helicopter gettagorigin("tag_passenger3");
    var_eb72be15 = helicopter gettagangles("tag_passenger3");
    operator thread animation::play(#"hash_445ae049e19a8062", var_a3476af7, var_eb72be15, 1, 0.2, 0.1, undefined, undefined, undefined, 0);
    helicopter.var_2dd14343 = operator;
}

// Namespace exfil_chopper/exfil_chopper
// Params 1, eflags: 0x6 linked
// Checksum 0xa75f2bc8, Offset: 0xcd0
// Size: 0xd4
function private function_eae9cdce(helicopter) {
    helicopter.rope = spawn("script_model", helicopter.origin);
    helicopter.rope useanimtree("generic");
    helicopter.rope setmodel(#"hash_508e38dfaf48d104");
    helicopter.rope notsolid();
    helicopter.rope linkto(helicopter, "tag_origin_animate");
    helicopter.rope hide();
}

// Namespace exfil_chopper/exfil_chopper
// Params 2, eflags: 0x6 linked
// Checksum 0xb8e9590f, Offset: 0xdb0
// Size: 0xa8
function private function_ced42479(helicopter, rope) {
    helicopter endon(#"death", #"hash_4c9df8896f727a2e");
    rope endon(#"death");
    while (true) {
        rope animation::play(#"hash_79f7c6405bc5958e", helicopter, "tag_origin_animate", 1, 0.1, 0.1, undefined, undefined, undefined, 0);
    }
}

/#

    // Namespace exfil_chopper/exfil_chopper
    // Params 0, eflags: 0x0
    // Checksum 0x86ec19d7, Offset: 0xe60
    // Size: 0x220
    function function_c22381ff() {
        self endon(#"death");
        while (getdvarint(#"hash_27392129ff420c70", 0)) {
            waitframe(1);
            rope = self.rope;
            if (!isdefined(rope)) {
                continue;
            }
            start = rope gettagorigin("<unknown string>");
            end = rope gettagorigin("<unknown string>");
            color = (0, 1, 0);
            trace = groundtrace(start, end + (0, 0, -2048), 0, self, 1, 1);
            origin = trace[#"position"];
            if (!isdefined(level.var_f5f2d350)) {
                continue;
            }
            var_f5f2d350 = arraygetclosest(origin, level.var_f5f2d350);
            if (isdefined(var_f5f2d350) && distance2d(var_f5f2d350.origin, end) > 14) {
                color = (1, 0, 0);
            }
            sphere(origin, 1, (0, 1, 0), 1);
            print3d(origin + (0, 0, 24), origin, color);
            circle(origin, 80, color, 0, 1);
            line(start, end, (0, 1, 0));
        }
    }

    // Namespace exfil_chopper/exfil_chopper
    // Params 0, eflags: 0x0
    // Checksum 0x2f2c25a8, Offset: 0x1088
    // Size: 0xa8
    function function_f773d8e2() {
        self endon(#"death");
        self.var_847cbbfe = gettime();
        self thread function_d6224950();
        while (getdvarint(#"hash_27392129ff420c70", 0)) {
            waitframe(1);
            print3d(self.origin, float(self.var_80d36be2) / 1000, (0, 1, 0), 1, 3);
        }
    }

    // Namespace exfil_chopper/exfil_chopper
    // Params 0, eflags: 0x0
    // Checksum 0xc2c995ba, Offset: 0x1138
    // Size: 0x6e
    function function_d6224950() {
        self endon(#"death", #"hash_328e87d565302040");
        while (getdvarint(#"hash_27392129ff420c70", 0)) {
            waitframe(1);
            self.var_80d36be2 = gettime() - self.var_847cbbfe;
        }
    }

#/
