// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\flowgraph\flowgraph_core.gsc;

#namespace flowgraph_entity;

// Namespace flowgraph_entity/flowgraph_entity
// Params 1, eflags: 0x0
// Checksum 0xb7e6ca5e, Offset: 0x88
// Size: 0x10
function isentitydefinedfunc(e_entity) {
    return isdefined(e_entity);
}

// Namespace flowgraph_entity/flowgraph_entity
// Params 1, eflags: 0x0
// Checksum 0x7f1090d2, Offset: 0xa0
// Size: 0x16
function getentityorigin(e_entity) {
    return e_entity.origin;
}

// Namespace flowgraph_entity/flowgraph_entity
// Params 1, eflags: 0x0
// Checksum 0x7a05bc97, Offset: 0xc0
// Size: 0x16
function getentityangles(e_entity) {
    return e_entity.angles;
}

// Namespace flowgraph_entity/flowgraph_entity
// Params 1, eflags: 0x0
// Checksum 0x35bb9c01, Offset: 0xe0
// Size: 0x28
function onentityspawned(e_entity) {
    e_entity waittill(#"spawned");
    return true;
}

// Namespace flowgraph_entity/flowgraph_entity
// Params 2, eflags: 0x0
// Checksum 0x6078dce2, Offset: 0x110
// Size: 0xd8
function onentitydamaged(*x, e_entity) {
    e_entity endon(#"death");
    while (true) {
        waitresult = e_entity waittill(#"damage");
        self flowgraph::kick(array(1, e_entity, waitresult.amount, waitresult.attacker, waitresult.direction, waitresult.position, waitresult.mod, waitresult.model_name, waitresult.tag_name, waitresult.part_name, waitresult.weapon, waitresult.flags));
    }
}

// Namespace flowgraph_entity/flowgraph_entity
// Params 2, eflags: 0x0
// Checksum 0x42f1a9b9, Offset: 0x1f0
// Size: 0x20
function function_fd19ef53(e_entity, str_field) {
    return e_entity.(str_field);
}

// Namespace flowgraph_entity/flowgraph_entity
// Params 4, eflags: 0x0
// Checksum 0xc3bf4a96, Offset: 0x218
// Size: 0x38
function function_7e40ae2d(*x, e_entity, str_field, var_value) {
    e_entity.(str_field) = var_value;
    return true;
}

