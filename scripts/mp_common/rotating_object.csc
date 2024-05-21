// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace rotating_object;

// Namespace rotating_object/rotating_object
// Params 0, eflags: 0x5
// Checksum 0xd418c766, Offset: 0xc8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"rotating_object", &preinit, undefined, undefined, undefined);
}

// Namespace rotating_object/rotating_object
// Params 0, eflags: 0x6 linked
// Checksum 0x98a31556, Offset: 0x110
// Size: 0x24
function private preinit() {
    callback::on_localclient_connect(&init);
}

// Namespace rotating_object/rotating_object
// Params 1, eflags: 0x2 linked
// Checksum 0xd8c10c4b, Offset: 0x140
// Size: 0x5c
function init(localclientnum) {
    rotating_objects = getentarray(localclientnum, "rotating_object", "targetname");
    array::thread_all(rotating_objects, &rotating_object_think);
}

// Namespace rotating_object/rotating_object
// Params 0, eflags: 0x2 linked
// Checksum 0xe27600bc, Offset: 0x1a8
// Size: 0x1fa
function rotating_object_think() {
    self endon(#"death");
    util::waitforallclients();
    util::function_89a98f85();
    axis = "yaw";
    direction = 360;
    revolutions = 100;
    rotate_time = 12;
    if (isdefined(self.script_noteworthy)) {
        axis = self.script_noteworthy;
    }
    if (isdefined(self.script_float)) {
        rotate_time = self.script_float;
    }
    if (rotate_time == 0) {
        rotate_time = 12;
    }
    if (rotate_time < 0) {
        direction *= -1;
        rotate_time *= -1;
    }
    angles = self.angles;
    while (true) {
        switch (axis) {
        case #"roll":
            self rotateroll(direction * revolutions, rotate_time * revolutions);
            break;
        case #"pitch":
            self rotatepitch(direction * revolutions, rotate_time * revolutions);
            break;
        case #"yaw":
        default:
            self rotateyaw(direction * revolutions, rotate_time * revolutions);
            break;
        }
        self waittill(#"rotatedone");
        self.angles = angles;
    }
}

