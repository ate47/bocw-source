// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_trial_util.gsc;
#using scripts\zm_common\zm_trial.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace zm_trial_no_sprint;

// Namespace zm_trial_no_sprint/zm_trial_no_sprint
// Params 0, eflags: 0x5
// Checksum 0xb4ddda90, Offset: 0xb8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_trial_no_sprint", &preinit, undefined, undefined, undefined);
}

// Namespace zm_trial_no_sprint/zm_trial_no_sprint
// Params 0, eflags: 0x4
// Checksum 0xff8abfba, Offset: 0x100
// Size: 0x5c
function private preinit() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    zm_trial::register_challenge(#"no_sprint", &on_begin, &on_end);
}

// Namespace zm_trial_no_sprint/zm_trial_no_sprint
// Params 0, eflags: 0x4
// Checksum 0xf9a1c2e6, Offset: 0x168
// Size: 0xe8
function private on_begin() {
    callback::on_spawned(&function_dc856fd8);
    foreach (player in getplayers()) {
        player allowsprint(0);
        player._allow_sprint = 0;
        player thread function_dc856fd8();
        player thread function_31f500f();
    }
}

// Namespace zm_trial_no_sprint/zm_trial_no_sprint
// Params 1, eflags: 0x4
// Checksum 0xd771af4a, Offset: 0x258
// Size: 0xd8
function private on_end(*round_reset) {
    callback::remove_on_spawned(&function_dc856fd8);
    foreach (player in getplayers()) {
        player notify(#"allow_sprint");
        player._allow_sprint = undefined;
        player allowsprint(1);
    }
}

// Namespace zm_trial_no_sprint/zm_trial_no_sprint
// Params 0, eflags: 0x4
// Checksum 0x7cf8d11a, Offset: 0x338
// Size: 0xc0
function private function_dc856fd8() {
    self notify("374b3a40e7866d07");
    self endon("374b3a40e7866d07");
    self endon(#"disconnect", #"allow_sprint");
    self allowsprint(0);
    while (true) {
        self waittill(#"crafting_fail", #"crafting_success", #"bgb_update");
        if (isalive(self)) {
            self allowsprint(0);
        }
    }
}

// Namespace zm_trial_no_sprint/zm_trial_no_sprint
// Params 0, eflags: 0x4
// Checksum 0xdc8fd732, Offset: 0x400
// Size: 0xa2
function private function_31f500f() {
    self endon(#"disconnect", #"allow_sprint");
    while (true) {
        if (isalive(self) && self sprintbuttonpressed()) {
            self zm_trial_util::function_97444b02();
            while (self sprintbuttonpressed()) {
                waitframe(1);
            }
        }
        waitframe(1);
    }
}

