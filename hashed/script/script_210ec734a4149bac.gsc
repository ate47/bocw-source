// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\systems\behavior_tree_utility.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_utility.gsc;
#using scripts\core_common\ai\archetype_civilian.gsc;
#using scripts\core_common\ai\archetype_utility.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace namespace_f592a7b;

// Namespace namespace_f592a7b/namespace_45b9dd6a
// Params 0, eflags: 0x5
// Checksum 0xe4b41309, Offset: 0x2f8
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_2846a4f4bd094545", &function_70a657d8, &postinit, undefined, undefined);
}

// Namespace namespace_f592a7b/namespace_45b9dd6a
// Params 0, eflags: 0x6 linked
// Checksum 0xc2586647, Offset: 0x350
// Size: 0x10c
function private function_70a657d8() {
    /#
        assert(isscriptfunctionptr(&function_850bdbb2));
    #/
    behaviortreenetworkutility::registerbehaviortreescriptapi("civilianPanicCoverService", &function_850bdbb2, 1);
    level.var_ec54dc19 = &function_251c139d;
    callback::on_ai_killed(&on_ai_killed);
    spawner::add_archetype_spawn_function(#"civilian", &function_478f2963);
    level thread function_dcfd9c90();
    /#
        adddebugcommand("<unknown string>");
    #/
}

// Namespace namespace_f592a7b/namespace_45b9dd6a
// Params 0, eflags: 0x6 linked
// Checksum 0xb0097304, Offset: 0x468
// Size: 0x50
function private postinit() {
    level.__ai_interface[#"civilian"][#"hash_78e762abc4fbf1de"][#"callback"] = &function_e2953db0;
}

// Namespace namespace_f592a7b/namespace_45b9dd6a
// Params 0, eflags: 0x6 linked
// Checksum 0x864d7ef6, Offset: 0x4c0
// Size: 0x54
function private function_478f2963() {
    self.var_702fecae = 0;
    self thread function_f1d19be1();
    self thread function_c96b0450();
    /#
        self thread function_a8f579e();
    #/
}

// Namespace namespace_f592a7b/namespace_45b9dd6a
// Params 0, eflags: 0x6 linked
// Checksum 0x1f828860, Offset: 0x520
// Size: 0x64
function private function_9308c21b() {
    result = 0;
    if (isdefined(self.node) && self.node.type == #"exposed" && self isatcovernode()) {
        result = 1;
    }
    return result;
}

// Namespace namespace_f592a7b/namespace_45b9dd6a
// Params 0, eflags: 0x6 linked
// Checksum 0x26d58904, Offset: 0x590
// Size: 0x21a
function private function_c96b0450() {
    level endon(#"game_ended");
    self endon(#"death");
    self.var_ce60d915 = 0;
    while (1) {
        waitframe(1);
        if (self getblackboardattribute(#"hash_78e762abc4fbf1de") == "panic") {
            if (isdefined(level.players) && level.players.size > 0 && function_9308c21b()) {
                player = level.players[0];
                var_49122837 = distance2dsquared(self.origin, player.origin);
                if (var_49122837 < function_a3f6cdac(300)) {
                    player_angles = player getplayerangles();
                    var_d8b07ab4 = anglestoforward(player_angles);
                    var_3495bfe6 = self.origin - player.origin;
                    if (vectordot(var_3495bfe6, var_d8b07ab4) > 0) {
                        self.var_ce60d915 = self.var_ce60d915 + float(function_60d95f53()) / 1000;
                        if (self.var_ce60d915 > 1.5 && self.nextfindbestcovertime > gettime()) {
                            self.nextfindbestcovertime = gettime();
                        }
                    }
                } else {
                    self.var_ce60d915 = 0;
                }
            }
        }
    }
}

// Namespace namespace_f592a7b/namespace_45b9dd6a
// Params 1, eflags: 0x6 linked
// Checksum 0x34b48d75, Offset: 0x7b8
// Size: 0x2e8
function private function_74f41e14(entity) {
    var_1f2328d0 = entity function_4794d6a3();
    forcedgoal = is_true(var_1f2328d0.goalforced);
    itsbeenawhile = gettime() > entity.nextfindbestcovertime;
    var_1ebff8de = itsbeenawhile;
    if (forcedgoal || !var_1ebff8de) {
        return 0;
    }
    if (isdefined(level.var_72b8905c)) {
        var_be34b5c6 = entity [[ level.var_72b8905c ]]();
        entity function_387a6908(var_be34b5c6);
        entity.nextfindbestcovertime.entity = 2147483647;
        return 1;
    }
    pickedpoint = undefined;
    var_cab884f3 = randomfloat(1);
    if ((is_true(entity.var_6fc509b9) || !function_9308c21b()) && var_cab884f3 < 0.5) {
        if (is_true(entity.var_ac4fe74b)) {
            pickedpoint = function_251c139d(entity, var_1f2328d0, "civilian_region_exposed_cover_tacquery");
        } else {
            pickedpoint = function_251c139d(entity, var_1f2328d0, "civilian_exposed_cover_tacquery");
        }
    }
    if (!isdefined(pickedpoint)) {
        if (is_true(entity.var_ac4fe74b)) {
            pickedpoint = function_251c139d(entity, var_1f2328d0, "civilian_region_cover_tacquery");
        } else {
            pickedpoint = function_251c139d(entity, var_1f2328d0, "civilian_cover_tacquery");
        }
    }
    if (isdefined(pickedpoint) && isdefined(pickedpoint.node)) {
        entity function_387a6908(pickedpoint.node);
        entity.nextfindbestcovertime.entity = gettime() + 9999999;
        if (isdefined(entity.var_5557ac4d)) {
            entity [[ entity.var_5557ac4d ]]();
        }
        if (is_true(entity.var_6fc509b9)) {
            entity.var_6fc509b9.entity = 0;
        }
        return 1;
    } else {
        entity.nextfindbestcovertime.entity = gettime() + 3000;
    }
    return 0;
}

// Namespace namespace_f592a7b/namespace_45b9dd6a
// Params 3, eflags: 0x4
// Checksum 0x33303fb4, Offset: 0xaa8
// Size: 0x28c
function private function_ddb1fd83(var_d5020108, tacpoints, pickedpoint) {
    self notify("7fec587c06753641");
    self endon("7fec587c06753641");
    self endon(#"death");
    var_1f2328d0 = self function_4794d6a3();
    while (1) {
        waitframe(1);
        color = (1, 0.752941, 0.796078);
        var_f08d182b = " cover goalpos";
        if (pickedpoint.node.type == #"exposed") {
            color = (1, 0, 1);
            var_f08d182b = " exposed goalpos";
        }
        /#
            line(var_1f2328d0.goalpos, var_d5020108.origin, (1, 0.5, 0), 1, 0, 1);
            print3d(var_1f2328d0.goalpos, "<unknown string>" + self getentitynumber() + var_f08d182b, color, 1, 1, 1);
        #/
        foreach (tacpoint in tacpoints) {
            if (tacpoint != pickedpoint) {
                /#
                    line(var_1f2328d0.goalpos, tacpoint.origin, color, 1, 0, 1);
                #/
            } else {
                /#
                    print3d(tacpoint.origin, "<unknown string>", (0, 1, 0), 1, 1, 1);
                    line(var_1f2328d0.goalpos, tacpoint.origin, (0, 1, 0), 1, 0, 1);
                #/
            }
        }
    }
}

// Namespace namespace_f592a7b/namespace_45b9dd6a
// Params 3, eflags: 0x6 linked
// Checksum 0xe923f42c, Offset: 0xd40
// Size: 0x240
function private function_251c139d(entity, var_1f2328d0, var_1fe38bcc) {
    var_d5020108 = getnearestnode(var_1f2328d0.goalpos);
    tacpoints = undefined;
    pickedpoint = undefined;
    if (!isdefined(var_d5020108)) {
        var_d5020108 = getnearestnode(entity.origin);
    }
    if (isdefined(var_d5020108)) {
        pixbeginevent(var_1fe38bcc);
        aiprofile_beginentry(var_1fe38bcc);
        tacpoints = tacticalquery(var_1fe38bcc, entity.origin, entity, var_1f2328d0.goalpos, var_d5020108);
        pixendevent();
        aiprofile_endentry();
    }
    if (isdefined(tacpoints)) {
        foreach (tacpoint in tacpoints) {
            if (!entity isposinclaimedlocation(tacpoint.origin)) {
                if (isdefined(entity.pathgoalpos) && entity.pathgoalpos == tacpoint.origin) {
                    continue;
                }
                pickedpoint = tacpoint;
                break;
            }
        }
        /#
            enabled = getdvarint(#"hash_40c63080b0f73497", 0);
            if (enabled && isdefined(pickedpoint)) {
                entity thread function_ddb1fd83(var_d5020108, tacpoints, pickedpoint);
            }
        #/
    }
    return pickedpoint;
}

// Namespace namespace_f592a7b/namespace_45b9dd6a
// Params 1, eflags: 0x2 linked
// Checksum 0x532066e8, Offset: 0xf88
// Size: 0x4c
function function_387a6908(node) {
    self endon(#"death");
    aiutility::releaseclaimnode(self);
    aiutility::usecovernodewrapper(self, node);
}

// Namespace namespace_f592a7b/namespace_45b9dd6a
// Params 1, eflags: 0x6 linked
// Checksum 0x114e7474, Offset: 0xfe0
// Size: 0x82
function private function_850bdbb2(entity) {
    result = 0;
    if (entity getblackboardattribute(#"hash_78e762abc4fbf1de") == "panic") {
        result = function_74f41e14(entity);
        if (!result) {
            result = archetypecivilian::civilianpanicescapechooseposition(entity);
        }
    }
    return result;
}

// Namespace namespace_f592a7b/namespace_45b9dd6a
// Params 1, eflags: 0x6 linked
// Checksum 0x84c48b4e, Offset: 0x1070
// Size: 0x194
function private function_9cefbbde(var_5f60ac6c) {
    var_45d1a411 = var_5f60ac6c.origin;
    var_d6713e16 = (0, 0, -1);
    switch (var_5f60ac6c.var_2e23b67d) {
    case #"hash_60c22b8bc17491b":
        var_d6713e16 = (0, 0.25, 0.5);
        var_d6713e16 = rotatepoint(var_d6713e16, self.angles);
        var_9fa53333 = (0, -10, 10);
        var_9fa53333 = rotatepoint(var_9fa53333, self.angles);
        var_45d1a411 = var_45d1a411 + var_9fa53333;
        break;
    case #"hash_60c2b887cb719ce4":
        var_d6713e16 = (0, -0.25, 0.5);
        var_d6713e16 = rotatepoint(var_d6713e16, self.angles);
        var_9fa53333 = (0, 10, 10);
        var_9fa53333 = rotatepoint(var_9fa53333, self.angles);
        var_45d1a411 = var_45d1a411 + var_9fa53333;
        break;
    case #"hash_defdefdefdefdef0":
        break;
    }
    var_5f60ac6c unlink();
    var_5f60ac6c physicslaunch(var_45d1a411, var_d6713e16);
}

// Namespace namespace_f592a7b/namespace_45b9dd6a
// Params 1, eflags: 0x6 linked
// Checksum 0xb7dc3e68, Offset: 0x1210
// Size: 0x110
function private on_ai_killed(params) {
    if (self.archetype === #"civilian") {
        if (isdefined(self.var_37a2393c)) {
            foreach (var_5f60ac6c in self.var_37a2393c) {
                function_9cefbbde(var_5f60ac6c);
            }
        }
        if (isdefined(params.eattacker) && isplayer(params.eattacker)) {
            if (isdefined(level.var_f4ed1999)) {
                level thread [[ level.var_f4ed1999 ]](self, params);
            }
        }
    }
}

// Namespace namespace_f592a7b/namespace_45b9dd6a
// Params 0, eflags: 0x6 linked
// Checksum 0xe6be63e6, Offset: 0x1328
// Size: 0x21c
function private function_dcfd9c90() {
    self notify("2e7cf0b3ed141929");
    self endon("2e7cf0b3ed141929");
    level endon(#"game_ended");
    level.var_2feffa6b = 0;
    while (1) {
        waitframe(1);
        if (isdefined(level.players) && level.players.size > 0 && gettime() > level.var_2feffa6b) {
            player = level.players[0];
            var_e8f8c93f = getaiarchetypearray(#"civilian");
            var_b88ec851 = arraysortclosest(var_e8f8c93f, player.origin);
            foreach (civilian in var_e8f8c93f) {
                if (isdefined(civilian) && is_true(civilian.var_c0321be9) && civilian getblackboardattribute(#"hash_78e762abc4fbf1de") != "panic") {
                    civilian ai::set_behavior_attribute(#"hash_78e762abc4fbf1de", "panic");
                    civilian.var_c0321be9 = undefined;
                    level.var_2feffa6b = gettime() + function_60d95f53();
                    break;
                }
            }
        }
    }
}

// Namespace namespace_f592a7b/namespace_45b9dd6a
// Params 1, eflags: 0x2 linked
// Checksum 0x8544113f, Offset: 0x1550
// Size: 0x34
function function_8e430c8(var_47b961dc) {
    self.var_6fc509b9 = 1;
    self setgoal(var_47b961dc);
}

// Namespace namespace_f592a7b/namespace_45b9dd6a
// Params 4, eflags: 0x6 linked
// Checksum 0x98f3f32f, Offset: 0x1590
// Size: 0x13c
function private function_e2953db0(entity, *attribute, oldvalue, value) {
    if (value != oldvalue && value == "panic") {
        if (isdefined(attribute.var_37a2393c)) {
            foreach (var_5f60ac6c in self.var_37a2393c) {
                function_9cefbbde(var_5f60ac6c);
            }
        }
        var_47b961dc = attribute.origin;
        if (isdefined(attribute.var_5313e2e3)) {
            var_47b961dc = attribute.var_5313e2e3;
        }
        function_8e430c8(var_47b961dc);
        attribute setblackboardattribute("_prop_overlay", "NONE");
    }
}

// Namespace namespace_f592a7b/namespace_45b9dd6a
// Params 1, eflags: 0x0
// Checksum 0x6aeb2fb2, Offset: 0x16d8
// Size: 0x7c
function function_7bd21c92(value) {
    oldvalue = self getblackboardattribute("_prop_overlay");
    if (value === oldvalue) {
        return;
    }
    self setblackboardattribute("_prop_overlay", value);
    function_b0876f77(value);
}

// Namespace namespace_f592a7b/namespace_45b9dd6a
// Params 3, eflags: 0x6 linked
// Checksum 0x290ade84, Offset: 0x1760
// Size: 0x9c
function private function_5c56272f(var_df71f499, var_c72571dd, var_2e23b67d) {
    if (!isdefined(self.var_37a2393c)) {
        self.var_37a2393c = [];
    }
    var_5f60ac6c = util::spawn_model(var_df71f499);
    var_5f60ac6c linkto(self, var_c72571dd, (0, 0, 0), (0, 0, 0));
    var_5f60ac6c.var_2e23b67d = var_2e23b67d;
    self.var_37a2393c[self.var_37a2393c.size] = var_5f60ac6c;
}

// Namespace namespace_f592a7b/namespace_45b9dd6a
// Params 1, eflags: 0x2 linked
// Checksum 0x712b52d8, Offset: 0x1808
// Size: 0x1b2
function function_b0876f77(value) {
    if (isdefined(self.var_37a2393c)) {
        array::delete_all(self.var_37a2393c);
        self.var_37a2393c = [];
    }
    var_df71f499 = undefined;
    var_c72571dd = undefined;
    switch (value) {
    case #"hash_73e86238c271de95":
        function_5c56272f("z_briefcase_01_closed", "tag_accessory_left", "BRIEFCASE_LEFT");
        break;
    case #"hash_60c22b8bc17491b":
        function_5c56272f("par_umbrella_open_01", "tag_accessory_left", "UMBRELLA_LEFT");
        break;
    case #"hash_4ac48798a0be234b":
        function_5c56272f("par_umbrella_open_01_anim", "tag_accessory_left", "UMBRELLA_LEFT");
        function_5c56272f("z_briefcase_01_closed", "tag_accessory_right", "BRIEFCASE_RIGHT");
        break;
    case #"hash_60c2b887cb719ce4":
        function_5c56272f("par_umbrella_open_01", "tag_accessory_right", "UMBRELLA_RIGHT");
        break;
    case #"none":
    case #"hash_defdefdefdefdef0":
        break;
    }
}

// Namespace namespace_f592a7b/namespace_45b9dd6a
// Params 0, eflags: 0x6 linked
// Checksum 0x3cbe77b8, Offset: 0x19c8
// Size: 0x3dc
function private function_f1d19be1() {
    self notify(#"hash_5048c5b7622d6841");
    self endon(#"hash_5048c5b7622d6841");
    level endon(#"game_ended");
    self endon(#"death");
    self addsentienteventlistener("bulletwhizby");
    self addsentienteventlistener("explode");
    self addsentienteventlistener("grenade danger");
    self addsentienteventlistener("gunshot");
    self addsentienteventlistener("grenade danger");
    self addsentienteventlistener("projectile_impact");
    while (1) {
        if (self getblackboardattribute(#"hash_78e762abc4fbf1de") != "panic") {
            waitframe(1);
            continue;
        }
        if (isdefined(self.node) && !self isatcovernode()) {
            waitframe(1);
            continue;
        }
        var_7f729179 = undefined;
        var_7f729179 = self waittill(#"ai_events");
        waittillframeend();
        if (self.ignoreall || self isragdoll()) {
            continue;
        }
        foreach (event in var_7f729179.events) {
            if (!isdefined(event.entity)) {
                continue;
            }
            if (event.type == "projectile_impact" && isdefined(event.entity.owner)) {
                event.entity.event = event.entity.owner;
            }
            if (issentient(event.entity) && (event.entity.ignoreme || is_true(event.entity isnotarget()))) {
                continue;
            }
            self.nextfindbestcovertime = gettime();
            /#
                enabled = getdvarint(#"hash_40c63080b0f73497", 0);
                if (enabled) {
                    line(self getcentroid(), event.origin, (1, 0.5, 0), 1, 0, 500);
                    print3d(event.origin, "<unknown string>" + event.type, (1, 0.5, 0), 1, 1, 500);
                }
            #/
        }
    }
}

// Namespace namespace_f592a7b/namespace_45b9dd6a
// Params 0, eflags: 0x4
// Checksum 0x6fb0cd07, Offset: 0x1db0
// Size: 0x108
function private function_a8f579e() {
    level endon(#"game_ended");
    self endon(#"death");
    while (1) {
        waitframe(1);
        enabled = getdvarint(#"hash_40c63080b0f73497", 0);
        if (!enabled) {
            continue;
        }
        if (self getblackboardattribute(#"hash_78e762abc4fbf1de") != "panic") {
            continue;
        }
        if (self isatcovernode()) {
            /#
                print3d(self getcentroid(), "<unknown string>", (1, 1, 0), 1, 1, 1);
            #/
        }
    }
}
