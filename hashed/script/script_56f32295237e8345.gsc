// Atian COD Tools GSC CW decompiler test
#using script_78825cbb1ab9f493;
#using script_544e81d6e48b88c0;
#using scripts\core_common\callbacks_shared.csc;

#namespace namespace_cf48051e;

// Namespace namespace_cf48051e/gametype_init
// Params 1, eflags: 0x20
// Checksum 0xdace3c9e, Offset: 0x108
// Size: 0x4c
function event_handler[gametype_init] main(*eventstruct) {
    namespace_17baa64d::init();
    callback::add_callback(#"hash_34e39ee0c9fa0092", &function_3022f6ba);
}

// Namespace namespace_cf48051e/namespace_cf48051e
// Params 1, eflags: 0x0
// Checksum 0x837e89eb, Offset: 0x160
// Size: 0x174
function function_3022f6ba(eventstruct) {
    if (eventstruct.isnew) {
        camera = undefined;
        switch (eventstruct.name) {
        case #"dom_a":
            camera = "dom_a_cam";
            break;
        case #"dom_b":
            camera = "dom_b_cam";
            break;
        case #"dom_c":
            camera = "dom_c_cam";
            break;
        case #"dom_d":
            camera = "dom_d_cam";
            break;
        case #"dom_e":
            camera = "dom_e_cam";
            break;
        case #"hash_e42b8ad600b46ae":
            if (eventstruct.team == #"allies") {
                camera = "dom_allies_hq_cam";
            } else if (eventstruct.team == #"axis") {
                camera = "dom_axis_hq_cam";
            }
            break;
        }
        if (isdefined(camera)) {
            namespace_99c84a33::function_99652b58(camera, eventstruct.id);
        }
    }
}

