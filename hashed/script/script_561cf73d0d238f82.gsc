#using scripts\core_common\array_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;

#namespace namespace_c498bb05;

// Namespace namespace_c498bb05/namespace_c498bb05
// Params 0, eflags: 0x5
// Checksum 0xbbfaf91, Offset: 0xd0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_34176c075d085060", undefined, &postinit, undefined, undefined);
}

// Namespace namespace_c498bb05/namespace_c498bb05
// Params 0, eflags: 0x1
// Checksum 0x8f8a8322, Offset: 0x118
// Size: 0x5c
function autoexec postinit() {
    window_triggers = getentarray("window_trigger", "targetname");
    array::thread_all(window_triggers, &callback::on_trigger, &function_82c985d1);
}

// Namespace namespace_c498bb05/namespace_c498bb05
// Params 1, eflags: 0x0
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

