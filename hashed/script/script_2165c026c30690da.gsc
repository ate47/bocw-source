// Atian COD Tools GSC CW decompiler test
#using script_2618e0f3e5e11649;
#using scripts\zm_common\zm_destination_manager.gsc;
#using scripts\zm_common\ai\zm_ai_utility.gsc;
#using script_1940fc077a028a81;
#using script_3411bb48d41bd3b;
#using script_3357acf79ce92f4b;
#using scripts\zm\ai\zm_ai_abom.gsc;
#using script_7d5c9b91cf8d272b;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_5665d8db;

// Namespace namespace_5665d8db/namespace_5665d8db
// Params 0, eflags: 0x5
// Checksum 0x24a203ed, Offset: 0x110
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_2bb3180ae90516b3", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_5665d8db/namespace_5665d8db
// Params 0, eflags: 0x2 linked
// Checksum 0xdbb5456d, Offset: 0x158
// Size: 0x64
function preinit() {
    spawner::add_archetype_spawn_function(#"abom", &function_b82e0a5d);
    spawner::function_89a2cd87(#"abom", &function_545f669b);
}

// Namespace namespace_5665d8db/namespace_5665d8db
// Params 0, eflags: 0x2 linked
// Checksum 0x7ef18c30, Offset: 0x1c8
// Size: 0x7c
function function_b82e0a5d() {
    self.ai.var_870d0893 = 1;
    self flag::set(#"hash_7b1f9f26f086bf39");
    setup_awareness(self);
    self thread function_a1667de7();
    self thread function_2b6f50fd();
}

// Namespace namespace_5665d8db/namespace_5665d8db
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x250
// Size: 0x4
function function_545f669b() {
    
}

// Namespace namespace_5665d8db/namespace_5665d8db
// Params 1, eflags: 0x6 linked
// Checksum 0x9050ef8a, Offset: 0x260
// Size: 0x204
function private setup_awareness(entity) {
    entity.has_awareness = 1;
    entity.ignorelaststandplayers = 1;
    entity.var_e453bcfa = 10;
    entity.var_91a026f2 = 10;
    entity.var_7ee943e1 = 10;
    self callback::function_d8abfc3d(#"on_ai_damage", &awareness::function_5f511313);
    awareness::register_state(entity, #"wander", &awareness::function_9c9d96b5, &awareness::function_4ebe4a6d, &awareness::function_b264a0bc, undefined, &awareness::function_555d960b);
    awareness::register_state(entity, #"investigate", &awareness::function_b41f0471, &awareness::function_9eefc327, &awareness::function_34162a25, undefined, &awareness::function_a360dd00);
    awareness::register_state(entity, #"chase", &awareness::function_978025e4, &awareness::function_39da6c3c, &awareness::function_b9f81e8b, &awareness::function_5c40e824);
    awareness::set_state(self, #"wander");
    entity callback::function_d8abfc3d(#"hash_10ab46b52df7967a", &function_d1a74442);
    entity thread awareness::function_fa6e010d();
}

// Namespace namespace_5665d8db/namespace_5665d8db
// Params 1, eflags: 0x2 linked
// Checksum 0x6f0aec9e, Offset: 0x470
// Size: 0x84
function function_d1a74442(*params) {
    self endon(#"death");
    if (isdefined(self.attackable)) {
        namespace_85745671::function_2b925fa5(self);
    }
    self.var_98f1f37c = 1;
    self.allowdeath = 1;
    self kill(undefined, undefined, undefined, undefined, 0, 1);
}

// Namespace namespace_5665d8db/namespace_5665d8db
// Params 0, eflags: 0x2 linked
// Checksum 0xdc291fc3, Offset: 0x500
// Size: 0x174
function function_a1667de7() {
    self endon(#"death");
    var_976a5e89 = 0;
    var_71bd8257 = undefined;
    while (true) {
        if (!ispointonnavmesh(self.origin, self)) {
            var_976a5e89++;
            if (var_976a5e89 >= 5) {
                spawn_pos = var_71bd8257;
                if (isvec(spawn_pos)) {
                    var_976a5e89 = 0;
                    self thread namespace_361e505d::function_8a959784(self);
                    self clientfield::set("abomDissolveCF", 2);
                    wait(1);
                    self dontinterpolate();
                    self forceteleport(spawn_pos, isdefined(self.angles) ? self.angles : (0, 0, 0), 0, 1);
                    self thread namespace_361e505d::function_940cd1d8();
                }
            } else {
                var_976a5e89 = 0;
            }
        } else if (ispointonnavmesh(self.origin, self)) {
            var_71bd8257 = self.origin;
        }
        wait(1);
    }
}

// Namespace namespace_5665d8db/namespace_5665d8db
// Params 0, eflags: 0x6 linked
// Checksum 0x1c70eac1, Offset: 0x680
// Size: 0x2a6
function private function_2b6f50fd() {
    level endon(#"end_game");
    self endon(#"death");
    var_201abbfd = 0;
    var_37c90cfe = 0;
    var_686cf729 = undefined;
    last_pos = undefined;
    while (true) {
        waitresult = self waittill(#"bad_path");
        if (self isplayinganimscripted()) {
            continue;
        }
        if (self flag::get(#"hash_67c62575285677e4")) {
            continue;
        }
        var_2251b11e = 0;
        if (!self function_dd070839()) {
            goalinfo = self function_4794d6a3();
            if (!isdefined(var_686cf729) || goalinfo.goalpos !== var_686cf729) {
                var_686cf729 = goalinfo.goalpos;
                var_201abbfd = 1;
            } else {
                var_201abbfd++;
            }
            if (var_201abbfd >= 20) {
                var_2251b11e = 1;
            }
        }
        if (is_true(var_2251b11e) && isdefined(last_pos)) {
            /#
                if (is_true(level.var_bb61089c)) {
                    println("<unknown string>" + "<unknown string>" + self.origin + "<unknown string>");
                }
            #/
            var_201abbfd = 0;
            var_37c90cfe = 0;
            enemy = undefined;
            if (isdefined(level.var_f67b08f5)) {
                enemy = [[ level.var_f67b08f5 ]](self);
            }
            if (isdefined(enemy)) {
                self flag::set(#"hash_29e9ce4afa4f11d2");
                zm_ai_utility::function_68ab868a(self);
                if (isplayer(self.enemy)) {
                    self.enemy.var_dbb28b34 = -1;
                }
            }
        }
    }
}

