// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\exploder_shared.csc;

#namespace flowgraph_fx;

// Namespace flowgraph_fx/flowgraph_fx
// Params 6, eflags: 0x0
// Checksum 0x546fe222, Offset: 0x90
// Size: 0x60
function playfxatposition(*x, fx_effect, v_position, v_forward, v_up, i_time) {
    playfx(self.owner.localclientnum, fx_effect, v_position, v_forward, v_up, i_time);
    return true;
}

// Namespace flowgraph_fx/flowgraph_fx
// Params 4, eflags: 0x0
// Checksum 0x2eb580f7, Offset: 0xf8
// Size: 0x50
function playfxontagfunc(*x, e_entity, fx_effect, str_tagname) {
    util::playfxontag(self.owner.localclientnum, fx_effect, e_entity, str_tagname);
    return true;
}

// Namespace flowgraph_fx/flowgraph_fx
// Params 6, eflags: 0x0
// Checksum 0xe42cbb19, Offset: 0x150
// Size: 0x60
function function_f4373d13(*x, fx_effect, v_offset, v_forward, v_up, i_time) {
    playfxoncamera(self.owner.localclientnum, fx_effect, v_offset, v_forward, v_up, i_time);
    return true;
}

#namespace namespace_84ba1809;

// Namespace namespace_84ba1809/flowgraph_fx
// Params 2, eflags: 0x0
// Checksum 0x3c82e16f, Offset: 0x1b8
// Size: 0x30
function playexploder(*x, str_name) {
    exploder::exploder(str_name);
    return true;
}

// Namespace namespace_84ba1809/flowgraph_fx
// Params 2, eflags: 0x0
// Checksum 0xded04951, Offset: 0x1f0
// Size: 0x30
function stopexploder(*x, str_name) {
    exploder::stop_exploder(str_name);
    return true;
}

// Namespace namespace_84ba1809/flowgraph_fx
// Params 2, eflags: 0x0
// Checksum 0xdc8da44b, Offset: 0x228
// Size: 0x30
function killexploder(*x, str_name) {
    exploder::kill_exploder(str_name);
    return true;
}

