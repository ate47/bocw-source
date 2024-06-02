// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;

#namespace flowgraph_entity;

// Namespace flowgraph_entity/flowgraph_entity
// Params 1, eflags: 0x0
// Checksum 0xb7e6ca5e, Offset: 0x98
// Size: 0x10
function isentitydefinedfunc(e_entity) {
    return isdefined(e_entity);
}

// Namespace flowgraph_entity/flowgraph_entity
// Params 1, eflags: 0x0
// Checksum 0x7f1090d2, Offset: 0xb0
// Size: 0x16
function getentityorigin(e_entity) {
    return e_entity.origin;
}

// Namespace flowgraph_entity/flowgraph_entity
// Params 1, eflags: 0x0
// Checksum 0x7a05bc97, Offset: 0xd0
// Size: 0x16
function getentityangles(e_entity) {
    return e_entity.angles;
}

// Namespace flowgraph_entity/flowgraph_entity
// Params 12, eflags: 0x0
// Checksum 0xe509f337, Offset: 0xf0
// Size: 0x296
function lerpshaderconstantovertime(*x, e_entity, i_script_vector, f_start_x, f_start_y, f_start_z, f_start_w, f_end_x, f_end_y, f_end_z, f_end_w, f_time) {
    e_entity endon(#"death");
    e_entity util::waittill_dobj(self.owner.localclientnum);
    if (!isdefined(e_entity)) {
        return;
    }
    if (!isdefined(f_start_x)) {
        f_start_x = 0;
    }
    if (!isdefined(f_start_y)) {
        f_start_y = 0;
    }
    if (!isdefined(f_start_z)) {
        f_start_z = 0;
    }
    if (!isdefined(f_start_w)) {
        f_start_w = 0;
    }
    if (!isdefined(f_end_x)) {
        f_end_x = 0;
    }
    if (!isdefined(f_end_y)) {
        f_end_y = 0;
    }
    if (!isdefined(f_end_z)) {
        f_end_z = 0;
    }
    if (!isdefined(f_end_w)) {
        f_end_w = 0;
    }
    s_timer = util::new_timer(self.owner.localclientnum);
    do {
        util::server_wait(self.owner.localclientnum, 0.11);
        n_current_time = s_timer util::get_time_in_seconds();
        n_lerp_val = n_current_time / f_time;
        n_delta_val_x = lerpfloat(f_start_x, f_end_x, n_lerp_val);
        n_delta_val_y = lerpfloat(f_start_y, f_end_y, n_lerp_val);
        n_delta_val_z = lerpfloat(f_start_z, f_end_z, n_lerp_val);
        n_delta_val_w = lerpfloat(f_start_w, f_end_w, n_lerp_val);
        e_entity mapshaderconstant(self.owner.localclientnum, 0, "scriptVector" + i_script_vector, n_delta_val_x, n_delta_val_y, n_delta_val_z, n_delta_val_w);
    } while (n_current_time < f_time);
}

// Namespace flowgraph_entity/flowgraph_entity
// Params 2, eflags: 0x0
// Checksum 0x8f775ef, Offset: 0x390
// Size: 0x20
function function_fd19ef53(e_entity, str_field) {
    return e_entity.(str_field);
}

// Namespace flowgraph_entity/flowgraph_entity
// Params 4, eflags: 0x0
// Checksum 0x53ea5d08, Offset: 0x3b8
// Size: 0x38
function function_7e40ae2d(*x, e_entity, str_field, var_value) {
    e_entity.(str_field) = var_value;
    return true;
}

