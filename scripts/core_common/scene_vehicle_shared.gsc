// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\vehicle_ai_shared.gsc;
#using scripts\core_common\scene_objects_shared.gsc;

#namespace scene;

// Namespace scene
// Method(s) 7 Total 109
class cscenevehicle : csceneobject {

    // Namespace cscenevehicle/scene_vehicle_shared
    // Params 0, eflags: 0x1a linked
    // Checksum 0x82133682, Offset: 0x610
    // Size: 0x14
    __constructor() {
        csceneobject::__constructor();
    }

    // Namespace cscenevehicle/scene_vehicle_shared
    // Params 0, eflags: 0x92 linked class_linked
    // Checksum 0x313fbe9a, Offset: 0x630
    // Size: 0x14
    __destructor() {
        csceneobject::__destructor();
    }

    // Namespace cscenevehicle/scene_vehicle_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0x6921855e, Offset: 0x4e8
    // Size: 0x11c
    function function_d09b043() {
        self notify(#"hash_3451c0bca5c1ca69");
        self endon(#"hash_3451c0bca5c1ca69");
        self._o_scene endon(#"scene_done", #"scene_stop", #"scene_skip_completed", #"hash_3168dab591a18b9b");
        s_waitresult = undefined;
        s_waitresult = self._e waittill(#"death");
        self.var_1f97724a = 1;
        self._e notify(#"hash_6e7fd8207fd988c6", {#str_scene:self._o_scene._str_name});
        if (!is_true(self._e.skipscenedeath)) {
            csceneobject::function_1e19d813();
        }
    }

    // Namespace cscenevehicle/scene_vehicle_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0x85899549, Offset: 0x1a0
    // Size: 0xec
    function _spawn_ent() {
        if (isdefined(self._s.model)) {
            if (isassetloaded("vehicle", self._s.model)) {
                self._e = spawnvehicle(self._s.model, csceneobject::function_d2039b28(), csceneobject::function_f9936b53(), undefined, 0, undefined, self._s.var_6b8decce, self._s.var_4f56e47a, self._s.var_3b48be8d);
                if (isdefined(self._e)) {
                    scene::prepare_generic_model_anim(self._e);
                }
            }
        }
    }

    // Namespace cscenevehicle/scene_vehicle_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0xa257737d, Offset: 0x478
    // Size: 0x64
    function _cleanup() {
        if (isdefined(self._e) && self._e vehicle_ai::has_state("scripted")) {
            self._e vehicle_ai::stop_scripted(self._e.var_24bb7024);
        }
    }

    // Namespace cscenevehicle/scene_vehicle_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x92706175, Offset: 0x298
    // Size: 0x13c
    function _set_values(ent = self._e) {
        if (!csceneobject::error(!isvehicle(ent) && ent.classname !== "script_model", "entity is not actually a Vehicle or script_model, but set to Vehicle in scene. Check the GDT to make sure the proper object type is set")) {
            scene::prepare_generic_model_anim(ent);
        }
        csceneobject::set_ent_val("takedamage", is_true(self._s.takedamage), ent);
        csceneobject::set_ent_val("ignoreme", !is_true(self._s.attackme), ent);
        csceneobject::set_ent_val("allowdeath", is_true(self._s.allowdeath), ent);
    }

    // Namespace cscenevehicle/scene_vehicle_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0x5944cc73, Offset: 0x3e0
    // Size: 0x8c
    function _prepare() {
        csceneobject::set_objective();
        if (isdefined(self._e) && self._e vehicle_ai::has_state("scripted")) {
            self._e.var_24bb7024 = self._e vehicle_ai::get_current_state();
            self._e vehicle_ai::start_scripted();
        }
    }

}

