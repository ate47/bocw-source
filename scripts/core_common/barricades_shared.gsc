// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\doors_shared.gsc;

#namespace barricades;

// Namespace barricades
// Method(s) 6 Total 55
class cbarricade : cdoor {

    // Namespace cbarricade/barricades_shared
    // Params 0, eflags: 0x8
    // Checksum 0x882363e2, Offset: 0x348
    // Size: 0x22
    __constructor() {
        cdoor::__constructor();
        self.m_str_type = "barricade";
    }

    // Namespace cbarricade/barricades_shared
    // Params 0, eflags: 0x80 class_linked
    // Checksum 0x8e4c70ac, Offset: 0x378
    // Size: 0x14
    function __destructor() {
        cdoor::__destructor();
    }

    // Namespace cbarricade/barricades_shared
    // Params 0, eflags: 0x0
    // Checksum 0xf2d9d29f, Offset: 0x9a8
    // Size: 0x138
    function function_6c15ac46() {
        self.m_e_door endon(#"delete", #"barricade_removed");
        while (1) {
            self.m_e_door endon(#"delete");
            self.m_e_door waittill(#"hash_923096b653062ea");
            if (isdefined(self.var_a2f96f78.target)) {
                var_59746f25 = struct::get_array(self.var_a2f96f78.target, "targetname");
                foreach (s_door in var_59746f25) {
                    s_door.c_door.var_7d28591d = 0;
                }
            }
            waitframe(1);
        }
    }

    // Namespace cbarricade/barricades_shared
    // Params 2, eflags: 0x0
    // Checksum 0x72743651, Offset: 0x398
    // Size: 0x224
    function init(var_4a686ff8, s_instance) {
        self.m_s_bundle = var_4a686ff8;
        self.var_a2f96f78 = s_instance;
        self.m_s_bundle.door_start_open = s_instance.door_start_open;
        s_instance.c_door.s_instance = doors::setup_door_info(self.m_s_bundle, s_instance, self);
        if (is_true(self.m_s_bundle.door_start_open)) {
            if (isdefined(self.var_a2f96f78.target)) {
                var_59746f25 = struct::get_array(self.var_a2f96f78.target, "targetname");
                foreach (s_door in var_59746f25) {
                    s_door.c_door.var_7d28591d = 1;
                    if ([[ s_door.c_door ]]->is_open()) {
                        [[ s_door.c_door ]]->close();
                    }
                }
            }
        }
        if (is_true(self.m_s_bundle.var_ccc6dafc)) {
            self.m_e_door setcandamage(1);
            self.m_e_door val::set(#"hash_25bedd86747e41e1", "allowdeath", 0);
            thread function_b4a1f06a();
        }
        thread function_da5abae9();
        thread function_6c15ac46();
    }

    // Namespace cbarricade/barricades_shared
    // Params 0, eflags: 0x0
    // Checksum 0xec4627fd, Offset: 0x5c8
    // Size: 0x280
    function function_b4a1f06a() {
        self.m_e_door endon(#"delete");
        if (!isdefined(self.m_s_bundle.var_89af4052)) {
            self.m_s_bundle.var_89af4052 = 0;
        }
        var_1913ccf5 = self.m_s_bundle.var_89af4052;
        while (1) {
            self.m_e_door waittill(#"damage");
            if (cdoor::is_open()) {
                var_1913ccf5--;
                if (var_1913ccf5 < 0) {
                    var_59746f25 = struct::get_array(self.var_a2f96f78.target, "targetname");
                    foreach (s_door in var_59746f25) {
                        s_door.c_door.var_7d28591d = 0;
                    }
                    if (is_true(self.m_s_bundle.var_170e4611)) {
                        if (isdefined(self.m_s_bundle.var_8124c17f)) {
                            self.m_e_door scene::play(self.m_s_bundle.var_8124c17f, self.m_e_door);
                        }
                        self.m_e_door notify(#"gameobject_deleted");
                        self.m_e_door notify(#"barricade_removed");
                        waitframe(1);
                        self.m_e_door.mdl_gameobject delete();
                        self.m_e_door delete();
                        break;
                    } else {
                        if (cdoor::is_open()) {
                            cdoor::close();
                        }
                        var_1913ccf5 = self.m_s_bundle.var_89af4052;
                    }
                }
            }
            waitframe(1);
        }
    }

    // Namespace cbarricade/barricades_shared
    // Params 0, eflags: 0x0
    // Checksum 0xd4fd4e9e, Offset: 0x850
    // Size: 0x14e
    function function_da5abae9() {
        self.m_e_door endon(#"delete", #"barricade_removed");
        while (1) {
            self.m_e_door waittill(#"hash_7166c13e79b73f9");
            if (isdefined(self.var_a2f96f78.target)) {
                var_59746f25 = struct::get_array(self.var_a2f96f78.target, "targetname");
                foreach (s_door in var_59746f25) {
                    s_door.c_door.var_7d28591d = 1;
                    if ([[ s_door.c_door ]]->is_open()) {
                        [[ s_door.c_door ]]->close();
                    }
                }
            }
            waitframe(1);
        }
    }

}

// Namespace barricades/barricades_shared
// Params 0, eflags: 0x5
// Checksum 0xba520186, Offset: 0x150
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"barricades", &function_70a657d8, &postinit, undefined, undefined);
}

// Namespace barricades/barricades_shared
// Params 0, eflags: 0x4
// Checksum 0x40854415, Offset: 0x1a8
// Size: 0xee
function private function_70a657d8() {
    if (!isdefined(level.a_s_barricades)) {
        level.a_s_barricades = [];
    }
    level.a_s_barricades = struct::get_array("scriptbundle_barricades", "classname");
    foreach (s_instance in level.a_s_barricades) {
        c_door = s_instance function_14354831();
        if (isdefined(c_door)) {
            s_instance.c_door = c_door;
        }
    }
}

// Namespace barricades/barricades_shared
// Params 0, eflags: 0x0
// Checksum 0x8c70e648, Offset: 0x2a0
// Size: 0x6e
function function_14354831() {
    if (isdefined(self.scriptbundlename)) {
        var_9fecaae1 = getscriptbundle(self.scriptbundlename);
    }
    var_2a44a7ed = new cbarricade();
    var_2a44a7ed = [[ var_2a44a7ed ]]->init(var_9fecaae1, self);
    return var_2a44a7ed;
}

// Namespace barricades/barricades_shared
// Params 0, eflags: 0x4
// Checksum 0x4ead9b76, Offset: 0x318
// Size: 0x24
function private postinit() {
    level flag::wait_till("radiant_gameobjects_initialized");
}
