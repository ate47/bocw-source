// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\bb.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using script_7cc5fb39b97494c4;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\doors_shared.gsc;
#using scripts\core_common\serverfield_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace lockpick;

// Namespace lockpick
// Method(s) 13 Total 48
class class_d28acd06 : class_9e71c1a2 {

    var m_s_bundle;
    var var_1c4a269e;
    var var_1d21e4f3;
    var var_63e8057;
    var var_6dfc35a;
    var var_7529951f;
    var var_9e3fdeff;
    var var_b4563cfa;
    var var_b5a03b21;

    // Namespace namespace_d28acd06/lockpick
    // Params 1, eflags: 0x2 linked
    // Checksum 0x42a5ba89, Offset: 0x878
    // Size: 0xc4
    function _reset(*str_team) {
        if (isdefined(var_b5a03b21.last_player)) {
            var_b5a03b21.last_player flag::clear("lockpicking");
            var_b5a03b21.last_player val::reset_all(#"lockpicking");
            var_b5a03b21.last_player function_e0c7d69(1);
            var_b5a03b21.last_player notify(#"hash_226f6717c97d10d6");
        }
    }

    // Namespace namespace_d28acd06/lockpick
    // Params 0, eflags: 0x2 linked
    // Checksum 0x383cfa4d, Offset: 0x448
    // Size: 0x374
    function _init() {
        var_1c4a269e = 1;
        var_7529951f = 1;
        var_b4563cfa = #"hash_74dc1865536890ee";
        if (sessionmodeiscampaigngame() && isdefined(level.var_6a7fb742)) {
            foreach (interact_location in var_63e8057) {
                if (isdefined(interact_location.c_door) && isdefined(interact_location.c_door.m_e_door)) {
                    bundle = getscriptbundle(m_s_bundle.gameobject);
                    image = undefined;
                    if (isdefined(bundle.objective)) {
                        image = function_b91948e(bundle.objective);
                        if (image == #"") {
                            image = undefined;
                        }
                    }
                    var_4d98c3ce = bundle.str_hint;
                    var_80778410 = rotatepoint(var_b5a03b21.origin - interact_location.c_door.m_e_door.origin, (0, 0, 0) - interact_location.c_door.m_e_door.angles);
                    var_de6f0004 = isdefined(bundle.n_trigger_use_time) ? bundle.n_trigger_use_time : 0;
                    interact_location.c_door.m_e_door.var_645eee83 = self;
                    interact_location.c_door.m_e_door.interact_location = interact_location;
                    interact_location.c_door.m_e_door thread [[ level.var_6a7fb742 ]](#"use", {#var_4d98c3ce:var_4d98c3ce, #image:image, #var_71b9f0c0:200, #offset:var_80778410, #var_754bedbb:0, #var_87c991f3:40, #var_de6f0004:var_de6f0004, #var_be77841a:0, #var_531201f1:&minigame::function_cc2939a2, #complete_callback:&minigame::function_76974d96, #var_c9643122:1, #var_67eb3347:&minigame::function_eb28f36});
                }
            }
        }
    }

    // Namespace namespace_d28acd06/lockpick
    // Params 2, eflags: 0x2 linked
    // Checksum 0x76dd936a, Offset: 0xcb0
    // Size: 0x38
    function function_309c16b5(e_player, n_new_val) {
        complete(e_player, n_new_val == 2, e_player.team);
    }

    // Namespace namespace_d28acd06/lockpick
    // Params 1, eflags: 0x2 linked
    // Checksum 0x38ff24cc, Offset: 0xc50
    // Size: 0x34
    function function_6084622f(e_player) {
        bb::function_cd497743("lockpick_fail", e_player);
        _reset();
    }

    // Namespace namespace_d28acd06/lockpick
    // Params 1, eflags: 0x2 linked
    // Checksum 0x8b3645c0, Offset: 0xac8
    // Size: 0xc
    function function_613e65ee(*e_player) {
        
    }

    // Namespace namespace_d28acd06/lockpick
    // Params 1, eflags: 0x2 linked
    // Checksum 0xaee52e, Offset: 0x848
    // Size: 0x28
    function _start(e_player) {
        e_player.var_ff7ce13b[m_s_bundle.type] = 0;
    }

    // Namespace namespace_d28acd06/lockpick
    // Params 1, eflags: 0x2 linked
    // Checksum 0x21f48a40, Offset: 0xae0
    // Size: 0x34
    function _stop(e_player) {
        if (isdefined(e_player)) {
            e_player clientfield::set_to_player("lockpick_state", 0);
        }
    }

    // Namespace namespace_d28acd06/lockpick
    // Params 2, eflags: 0x2 linked
    // Checksum 0x99c35ad6, Offset: 0x7c8
    // Size: 0x74
    function function_89999e9c(*player, stream) {
        if (sessionmodeiscampaigngame()) {
            setuimodelvalue(getuimodel(function_90d058e8(#"lockpick"), "stream"), stream);
        }
    }

    // Namespace namespace_d28acd06/lockpick
    // Params 1, eflags: 0x2 linked
    // Checksum 0xda40691c, Offset: 0xc90
    // Size: 0x18
    function function_91ef58fb(var_f8d01c02) {
        return var_1d21e4f3[var_f8d01c02];
    }

    // Namespace namespace_d28acd06/lockpick
    // Params 1, eflags: 0x2 linked
    // Checksum 0x1f1a58d2, Offset: 0x948
    // Size: 0x178
    function function_a466ed26(e_player) {
        assert(var_9e3fdeff > 0);
        assert(var_6dfc35a >= 0);
        if (isdefined(e_player)) {
            e_player val::set(#"lockpicking", "disable_weapons", 1);
            e_player val::set(#"lockpicking", "show_weapon_hud", 0);
            e_player flag::set("lockpicking");
            e_player function_e0c7d69(0);
            e_player clientfield::set_to_player("lockpick_num_pins", var_9e3fdeff);
            e_player clientfield::set_to_player("lockpick_lock_index", var_6dfc35a);
            e_player clientfield::set_to_player("lockpick_state", 1);
            if (isdefined(level.var_9f2ab8b3)) {
                e_player thread [[ level.var_9f2ab8b3 ]]();
            }
        }
    }

    // Namespace namespace_d28acd06/lockpick
    // Params 1, eflags: 0x2 linked
    // Checksum 0x675c8bc6, Offset: 0xb20
    // Size: 0x124
    function function_e28586b3(e_player) {
        if (isdefined(var_b5a03b21.target)) {
            if (!isdefined(var_b5a03b21.var_42c5101)) {
                var_b5a03b21.var_42c5101 = 1;
            }
            if (isdefined(var_b5a03b21.var_ac5b22fa)) {
                var_b5a03b21.var_ac5b22fa doors::unlock(undefined, undefined, var_b5a03b21.var_42c5101, e_player);
            } else {
                doors::unlock(var_b5a03b21.target, "targetname", var_b5a03b21.var_42c5101, e_player);
            }
        }
        bb::function_cd497743("lockpick_success", e_player);
        e_player notify(#"minigame_tutorial_complete");
        function_89999e9c(e_player, 0);
        _reset();
    }

}

// Namespace lockpick/lockpick
// Params 0, eflags: 0x5
// Checksum 0x812a9b0e, Offset: 0x1d0
// Size: 0x5c
function private autoexec __init__system__() {
    level.var_51e24470["minigame_" + "lockpick"] = &function_8d584152;
    system::register("lockpick", &preinit);
}

// Namespace lockpick/lockpick
// Params 0, eflags: 0x6 linked
// Checksum 0x45e87069, Offset: 0x238
// Size: 0xcc
function private preinit() {
    clientfield::register("toplayer", "lockpick_state", 1, 1, "int");
    clientfield::register("toplayer", "lockpick_num_pins", 1, 3, "int");
    clientfield::register("toplayer", "lockpick_lock_index", 1, 1, "int");
    serverfield::register("lockpick_state", 1, 2, "int", &function_74ad25ad);
}

// Namespace lockpick/lockpick
// Params 0, eflags: 0x2 linked
// Checksum 0xf9b86e96, Offset: 0x310
// Size: 0x14
function function_8d584152() {
    return new class_d28acd06();
}

// Namespace lockpick/lockpick
// Params 0, eflags: 0x0
// Checksum 0x8bb6cdc9, Offset: 0x330
// Size: 0x6c
function cancel() {
    assert(isplayer(self), "<unknown string>");
    if (self.var_97c1c267.last_player === self) {
        self.var_97c1c267 minigame::function_c09ff52(undefined, undefined, self);
    }
}

// Namespace lockpick/lockpick
// Params 2, eflags: 0x6 linked
// Checksum 0xc873210c, Offset: 0x3a8
// Size: 0x58
function private function_74ad25ad(*oldval, newval) {
    if (newval > 0 && self.var_97c1c267.last_player === self) {
        [[ self.var_97c1c267.var_ff3c99c5 ]]->function_309c16b5(self, newval);
    }
}

