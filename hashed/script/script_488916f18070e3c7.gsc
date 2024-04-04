// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace namespace_d3c2ca3;

// Namespace namespace_d3c2ca3/namespace_d3c2ca3
// Params 0, eflags: 0x5
// Checksum 0x30860921, Offset: 0xd0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_41fdf840d8ce98ad", undefined, &postinit, undefined, undefined);
}

// Namespace namespace_d3c2ca3/namespace_d3c2ca3
// Params 0, eflags: 0x3 linked
// Checksum 0x8f8a8322, Offset: 0x118
// Size: 0x5c
function autoexec postinit() {
    window_triggers = getentarray("window_trigger", "targetname");
    array::thread_all(window_triggers, &callback::on_trigger, &function_82c985d1);
}

// Namespace namespace_d3c2ca3/namespace_d3c2ca3
// Params 1, eflags: 0x2 linked
// Checksum 0xc7b6785e, Offset: 0x180
// Size: 0xc6
function function_82c985d1(*var_1482c45a) {
    if (!isdefined(self.busy)) {
        self.busy = 0;
    }
    if (is_false(self.busy)) {
        level endon(#"game_ended");
        if (!isdefined(self.scene)) {
            self.scene = struct::get(self.target);
        }
        self.busy = 1;
        self.scene scene::play(self.scene.scriptbundlename, "gust");
        self.busy = 0;
    }
}

