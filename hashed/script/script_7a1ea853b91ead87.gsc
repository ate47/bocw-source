#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\stealth\utility;

#namespace cp_rus_yamantau_flashlight;

// Namespace cp_rus_yamantau_flashlight/cp_rus_yamantau_flashlight
// Params 0, eflags: 0x0
// Checksum 0xf08fcb94, Offset: 0x128
// Size: 0x64
function preload() {
    clientfield::register("toplayer", "cp_rus_yamantau_flashlight", 1, 2, "int");
    clientfield::register("actor", "set_flashlight_fx", 1, 1, "int");
}

// Namespace cp_rus_yamantau_flashlight/cp_rus_yamantau_flashlight
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x198
// Size: 0x4
function postload() {
    
}

// Namespace cp_rus_yamantau_flashlight/cp_rus_yamantau_flashlight
// Params 0, eflags: 0x0
// Checksum 0x19ebf622, Offset: 0x1a8
// Size: 0x44
function on_player_spawned() {
    level flag::wait_till("chyron_menu_closed");
    self.var_cef36b49 = 0;
    self thread function_2d7d736();
}

// Namespace cp_rus_yamantau_flashlight/cp_rus_yamantau_flashlight
// Params 0, eflags: 0x0
// Checksum 0x5cf93ae6, Offset: 0x1f8
// Size: 0xfe
function function_2d7d736() {
    self endon(#"death");
    while (true) {
        /#
            if (self actionslotfourbuttonpressed() && !self sprintbuttonpressed()) {
                self function_6afceef5();
                while (self actionslotfourbuttonpressed()) {
                    waitframe(1);
                }
                continue;
            } else {
                waitframe(1);
                continue;
            }
        #/
        if (self actionslotfourbuttonpressed()) {
            self function_6afceef5();
            while (self actionslotfourbuttonpressed()) {
                waitframe(1);
            }
            continue;
        }
        waitframe(1);
    }
}

// Namespace cp_rus_yamantau_flashlight/cp_rus_yamantau_flashlight
// Params 0, eflags: 0x0
// Checksum 0x29532b69, Offset: 0x300
// Size: 0x16c
function function_6afceef5() {
    if (self.var_cef36b49) {
        self clientfield::set_to_player("cp_rus_yamantau_flashlight", 0);
        self.var_cef36b49 = 0;
        if (level flag::get("flg_bunker_stealth_overrides")) {
            function_ad08c00b();
        }
        return;
    }
    w_current = self getcurrentweapon();
    if (w_current === getweapon(#"knife_loadout") || w_current === getweapon(#"none")) {
        self clientfield::set_to_player("cp_rus_yamantau_flashlight", 2);
    } else {
        self clientfield::set_to_player("cp_rus_yamantau_flashlight", 1);
    }
    self.var_cef36b49 = 1;
    if (level flag::get("flg_bunker_stealth_overrides")) {
        function_aebeccea();
    }
}

// Namespace cp_rus_yamantau_flashlight/cp_rus_yamantau_flashlight
// Params 0, eflags: 0x0
// Checksum 0xe24e9cf, Offset: 0x478
// Size: 0xcc
function function_aebeccea() {
    var_5d14e11e = [];
    var_5d14e11e[#"prone"] = 400;
    var_5d14e11e[#"crouch"] = 800;
    var_5d14e11e[#"stand"] = 1500;
    var_8293536e = [];
    var_8293536e[#"prone"] = 8192;
    var_8293536e[#"crouch"] = 8192;
    var_8293536e[#"stand"] = 8192;
    namespace_979752dc::set_detect_ranges(var_5d14e11e, var_8293536e);
}

// Namespace cp_rus_yamantau_flashlight/cp_rus_yamantau_flashlight
// Params 0, eflags: 0x0
// Checksum 0x83e49855, Offset: 0x550
// Size: 0xcc
function function_ad08c00b() {
    var_5d14e11e = [];
    var_5d14e11e[#"prone"] = 200;
    var_5d14e11e[#"crouch"] = 400;
    var_5d14e11e[#"stand"] = 600;
    var_8293536e = [];
    var_8293536e[#"prone"] = 300;
    var_8293536e[#"crouch"] = 600;
    var_8293536e[#"stand"] = 1200;
    namespace_979752dc::set_detect_ranges(var_5d14e11e, var_8293536e);
}

