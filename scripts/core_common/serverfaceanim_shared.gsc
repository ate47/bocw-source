// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace serverfaceanim;

// Namespace serverfaceanim/serverfaceanim_shared
// Params 0, eflags: 0x5
// Checksum 0x3030ed3a, Offset: 0xe0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"serverfaceanim", &preinit, undefined, undefined, undefined);
}

// Namespace serverfaceanim/serverfaceanim_shared
// Params 0, eflags: 0x4
// Checksum 0x3c49b72f, Offset: 0x128
// Size: 0x44
function private preinit() {
    if (!is_true(level._use_faceanim)) {
        return;
    }
    callback::on_spawned(&init_serverfaceanim);
}

// Namespace serverfaceanim/serverfaceanim_shared
// Params 0, eflags: 0x0
// Checksum 0x52ef84d5, Offset: 0x178
// Size: 0x1cc
function init_serverfaceanim() {
    self.do_face_anims = 1;
    if (!isdefined(level.face_event_handler)) {
        level.face_event_handler = spawnstruct();
        level.face_event_handler.events = [];
        level.face_event_handler.events[#"death"] = "face_death";
        level.face_event_handler.events[#"grenade danger"] = "face_alert";
        level.face_event_handler.events[#"bulletwhizby"] = "face_alert";
        level.face_event_handler.events[#"projectile_impact"] = "face_alert";
        level.face_event_handler.events[#"explode"] = "face_alert";
        level.face_event_handler.events[#"alert"] = "face_alert";
        level.face_event_handler.events[#"shoot"] = "face_shoot_single";
        level.face_event_handler.events[#"melee"] = "face_melee";
        level.face_event_handler.events[#"damage"] = "face_pain";
        level thread wait_for_face_event();
    }
}

// Namespace serverfaceanim/serverfaceanim_shared
// Params 0, eflags: 0x0
// Checksum 0x77130515, Offset: 0x350
// Size: 0xd0
function wait_for_face_event() {
    while (true) {
        waitresult = level waittill(#"face");
        face_notify = waitresult.face_notify;
        ent = waitresult.entity;
        if (isdefined(ent) && isdefined(ent.do_face_anims) && ent.do_face_anims) {
            if (isdefined(level.face_event_handler.events[face_notify])) {
                ent sendfaceevent(level.face_event_handler.events[face_notify]);
            }
        }
    }
}

