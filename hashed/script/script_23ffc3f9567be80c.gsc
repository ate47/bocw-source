// Atian COD Tools GSC CW decompiler test
#using script_3ddf84b7bb3bf47d;
#using script_3751b21462a54a7d;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using script_1287f54612f9bfce;
#using scripts\core_common\content_manager.gsc;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_c71c7ca5;

// Namespace namespace_c71c7ca5/namespace_c71c7ca5
// Params 0, eflags: 0x5
// Checksum 0x35821c27, Offset: 0x1b8
// Size: 0x54
function private autoexec __init__system__() {
    system::register(#"hash_59fd15f8f403c8b", &preinit, &postinit, undefined, #"content_manager");
}

// Namespace namespace_c71c7ca5/namespace_c71c7ca5
// Params 0, eflags: 0x2 linked
// Checksum 0x5fe50096, Offset: 0x218
// Size: 0x5c
function preinit() {
    level.var_291ed71 = array(#"hash_25c21c498472d468", #"hash_4b717fb97cdcb15a", #"hash_cb1cfbaf811242");
    namespace_52c8f34d::preinit();
}

// Namespace namespace_c71c7ca5/namespace_c71c7ca5
// Params 0, eflags: 0x2 linked
// Checksum 0x3739adb6, Offset: 0x280
// Size: 0x84
function postinit() {
    mapdestinations = struct::get_array(#"hash_313be7fccc870cdd", "variantname");
    if (zm_utility::is_classic() && isdefined(mapdestinations) && mapdestinations.size > 0) {
        level thread function_f72d912(mapdestinations[0]);
    }
}

// Namespace namespace_c71c7ca5/namespace_c71c7ca5
// Params 3, eflags: 0x0
// Checksum 0x3f3c7008, Offset: 0x310
// Size: 0xc8
function function_1142ba4a(var_beee4994, *hint_string, *model) {
    if (!isdefined(model)) {
        return;
    }
    foreach (var_7d0e37f8 in model) {
        function_5be7e51b(var_7d0e37f8, "p9_fxanim_zm_gp_dac_xmodel", #"hash_545a7fa1ec400c83", &function_18aca533);
    }
}

// Namespace namespace_c71c7ca5/namespace_c71c7ca5
// Params 4, eflags: 0x2 linked
// Checksum 0xc51c4cd0, Offset: 0x3e0
// Size: 0x25c
function function_5be7e51b(struct, modelname, hint_string, callbackfunction) {
    assert(isstruct(struct), "<unknown string>");
    assert(isfunctionptr(callbackfunction), "<unknown string>");
    assert(isdefined(modelname), "<unknown string>");
    assert(isdefined(hint_string), "<unknown string>");
    scriptmodel = content_manager::spawn_script_model(struct, modelname);
    objid = zm_utility::function_f5a222a8(#"hash_3632525bd692cfc8", scriptmodel);
    struct.objectiveid = objid;
    scriptmodel.objectiveid = objid;
    if (!isdefined(level.var_6bf8ee58)) {
        level.var_6bf8ee58 = [];
    } else if (!isarray(level.var_6bf8ee58)) {
        level.var_6bf8ee58 = array(level.var_6bf8ee58);
    }
    level.var_6bf8ee58[level.var_6bf8ee58.size] = objid;
    trigger = content_manager::spawn_interact(struct, callbackfunction, hint_string, undefined, 128, 128, undefined, (0, 0, 50));
    trigger.scriptmodel = scriptmodel;
    scriptmodel.trigger = trigger;
    scriptmodel clientfield::set("item_machine_spawn_rob", 1);
    scriptmodel playloopsound(#"hash_5f690620ca8d62bc");
    playfx("sr/fx9_safehouse_mchn_wonderfizz_spawn", struct.origin);
}

// Namespace namespace_c71c7ca5/namespace_c71c7ca5
// Params 1, eflags: 0x2 linked
// Checksum 0xda2f4bba, Offset: 0x648
// Size: 0x154
function function_18aca533(*eventstruct) {
    if (isdefined(level.var_291ed71) && level.var_291ed71.size > 0) {
        scriptmodel = self.scriptmodel;
        if (isdefined(scriptmodel)) {
            scriptmodel thread scene::play("p9_fxanim_zm_gp_dac_bundle", scriptmodel);
            playsoundatposition(#"hash_2306bc49a7e85ea2", scriptmodel.origin);
            playsoundatposition(level.var_291ed71[0], scriptmodel.origin);
            arrayremoveindex(level.var_291ed71, 0);
            if (isdefined(scriptmodel.objectiveid)) {
                zm_utility::function_bc5a54a8(scriptmodel.objectiveid);
                scriptmodel.objectiveid = undefined;
            }
        }
        waittillframeend();
        util::wait_network_frame();
        if (isentity(self)) {
            self delete();
        }
    }
}

// Namespace namespace_c71c7ca5/namespace_c71c7ca5
// Params 1, eflags: 0x2 linked
// Checksum 0xbbb07d2d, Offset: 0x7a8
// Size: 0x44
function function_f72d912(destination) {
    level flag::wait_till("start_zombie_round_logic");
    waittillframeend();
    function_399aa551(destination);
}

// Namespace namespace_c71c7ca5/namespace_c71c7ca5
// Params 1, eflags: 0x2 linked
// Checksum 0xa69a3b83, Offset: 0x7f8
// Size: 0x16c
function function_399aa551(destination) {
    foreach (location in destination.locations) {
        var_ac97a756 = location.instances[#"hash_5aa51584db09513"];
        if (isdefined(var_ac97a756)) {
            children = content_manager::get_children(var_ac97a756);
            foreach (child in children) {
                function_5be7e51b(child, "p9_fxanim_zm_gp_dac_xmodel", #"hash_545a7fa1ec400c83", &function_18aca533);
            }
        }
    }
}

