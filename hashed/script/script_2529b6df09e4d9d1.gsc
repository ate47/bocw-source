// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\bb.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using script_7cc5fb39b97494c4;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\doors_shared.gsc;
#using scripts\core_common\serverfield_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_14de327b;

// Namespace namespace_14de327b
// Method(s) 13 Total 48
class class_d28acd06 : class_9e71c1a2 {

    // Namespace class_d28acd06/namespace_14de327b
    // Params 0, eflags: 0xa linked
    // Checksum 0x53613915, Offset: 0x408
    // Size: 0x14
    __constructor() {
        namespace_9e71c1a2::__constructor();
    }

    // Namespace namespace_d28acd06/namespace_14de327b
    // Params 0, eflags: 0x82 linked class_linked
    // Checksum 0x6f097a2b, Offset: 0x428
    // Size: 0x14
    function __destructor() {
        namespace_9e71c1a2::__destructor();
    }

    // Namespace namespace_d28acd06/namespace_14de327b
    // Params 1, eflags: 0x2 linked
    // Checksum 0x42a5ba89, Offset: 0x878
    // Size: 0xc4
    function function_27940f1f(*str_team) {
        if (isdefined(self.var_b5a03b21.last_player)) {
            self.var_b5a03b21.last_player flag::clear("lockpicking");
            self.var_b5a03b21.last_player val::function_e681e68e(#"hash_530ab699d58ec645");
            self.var_b5a03b21.last_player function_e0c7d69(1);
            self.var_b5a03b21.last_player notify(#"hash_226f6717c97d10d6");
        }
    }

    // Namespace namespace_d28acd06/namespace_14de327b
    // Params 0, eflags: 0x2 linked
    // Checksum 0x383cfa4d, Offset: 0x448
    // Size: 0x374
    function function_2f0acccd() {
        self.var_1c4a269e = 1;
        self.var_7529951f = 1;
        self.var_b4563cfa = #"hash_74dc1865536890ee";
        if (sessionmodeiscampaigngame() && isdefined(level.var_6a7fb742)) {
            foreach (var_e992b321 in self.var_63e8057) {
                if (isdefined(var_e992b321.c_door) && isdefined(var_e992b321.c_door.m_e_door)) {
                    bundle = getscriptbundle(self.m_s_bundle.gameobject);
                    image = undefined;
                    if (isdefined(bundle.objective)) {
                        image = function_b91948e(bundle.objective);
                        if (image == #"") {
                            image = undefined;
                        }
                    }
                    var_4d98c3ce = bundle.str_hint;
                    var_80778410 = rotatepoint(self.var_b5a03b21.origin - var_e992b321.c_door.m_e_door.origin, (0, 0, 0) - var_e992b321.c_door.m_e_door.angles);
                    var_de6f0004 = isdefined(bundle.n_trigger_use_time) ? bundle.n_trigger_use_time : 0;
                    var_e992b321.c_door.m_e_door.var_645eee83 = self;
                    var_e992b321.c_door.m_e_door.var_e992b321 = var_e992b321;
                    var_e992b321.c_door.m_e_door thread [[ level.var_6a7fb742 ]](#"use", {#var_67eb3347:&namespace_e10de4ad::function_eb28f36, #var_c9643122:1, #complete_callback:&namespace_e10de4ad::function_76974d96, #var_531201f1:&namespace_e10de4ad::function_cc2939a2, #var_be77841a:0, #var_de6f0004:var_de6f0004, #var_87c991f3:40, #var_754bedbb:0, #offset:var_80778410, #var_71b9f0c0:200, #image:image, #var_4d98c3ce:var_4d98c3ce});
                }
            }
        }
    }

    // Namespace namespace_d28acd06/namespace_14de327b
    // Params 2, eflags: 0x2 linked
    // Checksum 0x76dd936a, Offset: 0xcb0
    // Size: 0x38
    function function_309c16b5(e_player, n_new_val) {
        [[ self ]]->complete(e_player, n_new_val == 2, e_player.team);
    }

    // Namespace namespace_d28acd06/namespace_14de327b
    // Params 1, eflags: 0x2 linked
    // Checksum 0x38ff24cc, Offset: 0xc50
    // Size: 0x34
    function function_6084622f(e_player) {
        bb::function_cd497743("lockpick_fail", e_player);
        [[ self ]]->function_27940f1f();
    }

    // Namespace namespace_d28acd06/namespace_14de327b
    // Params 1, eflags: 0x2 linked
    // Checksum 0x8b3645c0, Offset: 0xac8
    // Size: 0xc
    function function_613e65ee(*e_player) {
        
    }

    // Namespace namespace_d28acd06/namespace_14de327b
    // Params 1, eflags: 0x2 linked
    // Checksum 0xaee52e, Offset: 0x848
    // Size: 0x28
    function _start(e_player) {
        e_player.var_ff7ce13b[self.m_s_bundle.type] = 0;
    }

    // Namespace namespace_d28acd06/namespace_14de327b
    // Params 1, eflags: 0x2 linked
    // Checksum 0x21f48a40, Offset: 0xae0
    // Size: 0x34
    function _stop(e_player) {
        if (isdefined(e_player)) {
            e_player clientfield::set_to_player("lockpick_state", 0);
        }
    }

    // Namespace namespace_d28acd06/namespace_14de327b
    // Params 2, eflags: 0x2 linked
    // Checksum 0x99c35ad6, Offset: 0x7c8
    // Size: 0x74
    function function_89999e9c(*player, stream) {
        if (sessionmodeiscampaigngame()) {
            setuimodelvalue(getuimodel(function_90d058e8(#"hash_6f7d895c5a9f4ff3"), "stream"), stream);
        }
    }

    // Namespace namespace_d28acd06/namespace_14de327b
    // Params 1, eflags: 0x2 linked
    // Checksum 0xda40691c, Offset: 0xc90
    // Size: 0x18
    function function_91ef58fb(var_f8d01c02) {
        return self.var_1d21e4f3[var_f8d01c02];
    }

    // Namespace namespace_d28acd06/namespace_14de327b
    // Params 1, eflags: 0x2 linked
    // Checksum 0x1f1a58d2, Offset: 0x948
    // Size: 0x178
    function function_a466ed26(e_player) {
        /#
            assert(self.var_9e3fdeff > 0);
        #/
        /#
            assert(self.var_6dfc35a >= 0);
        #/
        if (isdefined(e_player)) {
            e_player val::set(#"hash_530ab699d58ec645", "disable_weapons", 1);
            e_player val::set(#"hash_530ab699d58ec645", "show_weapon_hud", 0);
            e_player flag::set("lockpicking");
            e_player function_e0c7d69(0);
            e_player clientfield::set_to_player("lockpick_num_pins", self.var_9e3fdeff);
            e_player clientfield::set_to_player("lockpick_lock_index", self.var_6dfc35a);
            e_player clientfield::set_to_player("lockpick_state", 1);
            if (isdefined(level.var_9f2ab8b3)) {
                e_player thread [[ level.var_9f2ab8b3 ]]();
            }
        }
    }

    // Namespace namespace_d28acd06/namespace_14de327b
    // Params 1, eflags: 0x2 linked
    // Checksum 0x675c8bc6, Offset: 0xb20
    // Size: 0x124
    function function_e28586b3(e_player) {
        if (isdefined(self.var_b5a03b21.target)) {
            if (!isdefined(self.var_b5a03b21.var_42c5101)) {
                self.var_b5a03b21.var_42c5101 = 1;
            }
            if (isdefined(self.var_b5a03b21.var_ac5b22fa)) {
                self.var_b5a03b21.var_ac5b22fa doors::unlock(undefined, undefined, self.var_b5a03b21.var_42c5101, e_player);
            } else {
                doors::unlock(self.var_b5a03b21.target, "targetname", self.var_b5a03b21.var_42c5101, e_player);
            }
        }
        bb::function_cd497743("lockpick_success", e_player);
        e_player notify(#"hash_5c86d24696b7e27");
        [[ self ]]->function_89999e9c(e_player, 0);
        [[ self ]]->function_27940f1f();
    }

}

// Namespace namespace_14de327b/namespace_14de327b
// Params 0, eflags: 0x5
// Checksum 0x812a9b0e, Offset: 0x1d0
// Size: 0x5c
function private autoexec __init__system__() {
    level.var_51e24470["minigame_" + "lockpick"] = &function_8d584152;
    system::register("lockpick", &function_70a657d8);
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 0, eflags: 0x6 linked
// Checksum 0x45e87069, Offset: 0x238
// Size: 0xcc
function private function_70a657d8() {
    clientfield::register("toplayer", "lockpick_state", 1, 1, "int");
    clientfield::register("toplayer", "lockpick_num_pins", 1, 3, "int");
    clientfield::register("toplayer", "lockpick_lock_index", 1, 1, "int");
    serverfield::register("lockpick_state", 1, 2, "int", &function_74ad25ad);
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 0, eflags: 0x2 linked
// Checksum 0xf9b86e96, Offset: 0x310
// Size: 0x14
function function_8d584152() {
    return new class_d28acd06();
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 0, eflags: 0x0
// Checksum 0x8bb6cdc9, Offset: 0x330
// Size: 0x6c
function cancel() {
    /#
        assert(isplayer(self), "<unknown string>");
    #/
    if (self.var_97c1c267.last_player === self) {
        self.var_97c1c267 namespace_e10de4ad::function_c09ff52(undefined, undefined, self);
    }
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 2, eflags: 0x6 linked
// Checksum 0xc873210c, Offset: 0x3a8
// Size: 0x58
function private function_74ad25ad(*oldval, newval) {
    if (newval > 0 && self.var_97c1c267.last_player === self) {
        [[ self.var_97c1c267.var_ff3c99c5 ]]->function_309c16b5(self, newval);
    }
}
