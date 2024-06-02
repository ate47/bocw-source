// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\util.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\doors_shared.gsc;

#namespace windows;

// Namespace windows
// Method(s) 3 Total 52
class class_e500a966 : cdoor {

    var m_s_bundle;
    var m_str_type;
    var var_a2f96f78;

    // Namespace class_e500a966/namespace_23507db6
    // Params 0, eflags: 0x8
    // Checksum 0xad8092bd, Offset: 0x428
    // Size: 0x22
    constructor() {
        m_str_type = "window";
    }

    // Namespace namespace_e500a966/namespace_23507db6
    // Params 2, eflags: 0x0
    // Checksum 0x9ec7d900, Offset: 0x478
    // Size: 0x52
    function init(var_82b05767, s_instance) {
        m_s_bundle = var_82b05767;
        var_a2f96f78 = s_instance;
        s_instance.c_door = doors::setup_door_info(m_s_bundle, s_instance, self);
    }

}

// Namespace windows/namespace_23507db6
// Params 0, eflags: 0x5
// Checksum 0x96fb215, Offset: 0x158
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"windows", &preinit, &postinit, undefined, undefined);
}

// Namespace windows/namespace_23507db6
// Params 0, eflags: 0x4
// Checksum 0x6a8cd357, Offset: 0x1b0
// Size: 0x20
function private preinit() {
    if (!isdefined(level.var_e97fadd5)) {
        level.var_e97fadd5 = [];
    }
}

// Namespace windows/namespace_23507db6
// Params 0, eflags: 0x0
// Checksum 0x7c38e691, Offset: 0x1d8
// Size: 0x6e
function init_window() {
    if (isdefined(self.scriptbundlename)) {
        var_82b05767 = getscriptbundle(self.scriptbundlename);
    }
    var_9bff4cd8 = new class_e500a966();
    var_9bff4cd8 = [[ var_9bff4cd8 ]]->init(var_82b05767, self);
    return var_9bff4cd8;
}

// Namespace windows/namespace_23507db6
// Params 0, eflags: 0x4
// Checksum 0x8adf8516, Offset: 0x250
// Size: 0x1ce
function private postinit() {
    level flag::wait_till("radiant_gameobjects_initialized");
    level.var_e97fadd5 = struct::get_array("scriptbundle_windows", "classname");
    foreach (s_instance in level.var_e97fadd5) {
        c_door = s_instance init_window();
        if (isdefined(c_door)) {
            s_instance.c_door = c_door;
        }
    }
    foreach (s_instance in level.var_e97fadd5) {
        if (isdefined(s_instance.linkname)) {
            var_d5700a96 = struct::get_array(s_instance.linkname, "linkto");
            if (isdefined(var_d5700a96[0])) {
                s_instance.c_door.var_d1c4f848 = var_d5700a96[0];
                var_d5700a96[0].c_door.var_d1c4f848 = s_instance;
            }
        }
    }
}

// Namespace windows/namespace_23507db6
// Params 2, eflags: 0x0
// Checksum 0xfdfa0dd8, Offset: 0xf20
// Size: 0x2c
function open(str_value, str_key) {
    self doors::open(str_value, str_key);
}

// Namespace windows/namespace_23507db6
// Params 2, eflags: 0x0
// Checksum 0xfe2eeeb, Offset: 0xf58
// Size: 0x2c
function close(str_value, str_key) {
    self doors::close(str_value, str_key);
}

// Namespace windows/namespace_23507db6
// Params 3, eflags: 0x0
// Checksum 0x880e5f40, Offset: 0xf90
// Size: 0x5c
function lock(str_value, str_key = "targetname", b_do_close = 1) {
    self doors::lock(str_value, str_key, b_do_close);
}

// Namespace windows/namespace_23507db6
// Params 3, eflags: 0x0
// Checksum 0x4159d4fb, Offset: 0xff8
// Size: 0x5c
function unlock(str_value, str_key = "targetname", b_do_open = 1) {
    self doors::unlock(str_value, str_key, b_do_open);
}

// Namespace windows/namespace_23507db6
// Params 2, eflags: 0x0
// Checksum 0x816cac73, Offset: 0x1060
// Size: 0x116
function function_d216984f(str_value, str_key = "targetname") {
    var_e97fadd5 = [];
    if (isdefined(str_value)) {
        a_structs = struct::get_array(str_value, str_key);
        foreach (struct in a_structs) {
            if (isinarray(level.var_e97fadd5, struct)) {
                array::add(var_e97fadd5, struct, 0);
            }
        }
    } else {
        var_e97fadd5 = level.var_e97fadd5;
    }
    return var_e97fadd5;
}

