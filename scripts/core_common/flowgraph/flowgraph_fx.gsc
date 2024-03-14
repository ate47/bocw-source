// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\exploder_shared.gsc;

#namespace flowgraph_fx;

// Namespace flowgraph_fx/flowgraph_fx
// Params 5, eflags: 0x0
// Checksum 0xf5ae6dd6, Offset: 0x88
// Size: 0x50
function playfxatposition(*x, fx_effect, v_position, v_forward, v_up) {
    playfx(fx_effect, v_position, v_forward, v_up);
    return true;
}

// Namespace flowgraph_fx/flowgraph_fx
// Params 6, eflags: 0x0
// Checksum 0x5f31e67e, Offset: 0xe0
// Size: 0x58
function function_f4373d13(*x, fx_effect, v_offset, v_forward, v_up, var_a1a2ff27) {
    playfxoncamera(fx_effect, v_offset, v_forward, v_up, var_a1a2ff27);
    return true;
}

#namespace namespace_84ba1809;

// Namespace namespace_84ba1809/flowgraph_fx
// Params 2, eflags: 0x0
// Checksum 0x72c759b6, Offset: 0x140
// Size: 0x30
function playexploder(*x, str_name) {
    exploder::exploder(str_name);
    return true;
}

// Namespace namespace_84ba1809/flowgraph_fx
// Params 2, eflags: 0x0
// Checksum 0x79a08961, Offset: 0x178
// Size: 0x30
function stopexploder(*x, str_name) {
    exploder::stop_exploder(str_name);
    return true;
}

// Namespace namespace_84ba1809/flowgraph_fx
// Params 2, eflags: 0x0
// Checksum 0x65cc773a, Offset: 0x1b0
// Size: 0x30
function killexploder(*x, str_name) {
    exploder::kill_exploder(str_name);
    return true;
}

