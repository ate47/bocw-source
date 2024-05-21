// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\flowgraph\flowgraph_core.csc;

#namespace flowgraph_logic;

// Namespace flowgraph_logic/flowgraph_shared
// Params 2, eflags: 0x0
// Checksum 0x409378dc, Offset: 0x88
// Size: 0x2a
function iffunc(*x, b) {
    return array(b, !b);
}

// Namespace flowgraph_logic/flowgraph_shared
// Params 3, eflags: 0x0
// Checksum 0x3101cd8, Offset: 0xc0
// Size: 0x4a
function orfunc(*x, b_a, b_b) {
    return array(b_a || b_b, !(b_a || b_b));
}

// Namespace flowgraph_logic/flowgraph_shared
// Params 3, eflags: 0x0
// Checksum 0x6c9dc261, Offset: 0x118
// Size: 0x4a
function andfunc(*x, b_a, b_b) {
    return array(b_a && b_b, !(b_a && b_b));
}

// Namespace flowgraph_logic/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0x6246e32f, Offset: 0x170
// Size: 0x12
function notfunc(b_value) {
    return !b_value;
}

// Namespace flowgraph_logic/flowgraph_shared
// Params 2, eflags: 0x0
// Checksum 0xe1955b8c, Offset: 0x190
// Size: 0x1a
function lessthan(var_a, var_b) {
    return var_a < var_b;
}

// Namespace flowgraph_logic/flowgraph_shared
// Params 2, eflags: 0x0
// Checksum 0xbf9e648a, Offset: 0x1b8
// Size: 0x1a
function function_b457969e(var_a, var_b) {
    return var_a <= var_b;
}

// Namespace flowgraph_logic/flowgraph_shared
// Params 2, eflags: 0x0
// Checksum 0x42f182b4, Offset: 0x1e0
// Size: 0x1a
function greaterthan(var_a, var_b) {
    return var_a > var_b;
}

// Namespace flowgraph_logic/flowgraph_shared
// Params 2, eflags: 0x0
// Checksum 0x7e78a608, Offset: 0x208
// Size: 0x1a
function function_3743e19e(var_a, var_b) {
    return var_a >= var_b;
}

// Namespace flowgraph_logic/flowgraph_shared
// Params 2, eflags: 0x0
// Checksum 0xb1c7b131, Offset: 0x230
// Size: 0x1a
function equal(var_a, var_b) {
    return var_a == var_b;
}

// Namespace flowgraph_logic/flowgraph_shared
// Params 3, eflags: 0x0
// Checksum 0xa52c05ce, Offset: 0x258
// Size: 0xac
function function_5cb6d7c8(*x, b_1, b_2) {
    if (is_true(b_1)) {
        self flowgraph::kick(array(undefined, 1, 0), 1);
        return;
    }
    if (is_true(b_2)) {
        self flowgraph::kick(array(undefined, 0, 1), 1);
    }
}

// Namespace flowgraph_logic/flowgraph_shared
// Params 4, eflags: 0x0
// Checksum 0xd187ac63, Offset: 0x310
// Size: 0x114
function function_4902305f(*x, b_1, b_2, b_3) {
    if (is_true(b_1)) {
        self flowgraph::kick(array(undefined, 1, 0, 0), 1);
        return;
    }
    if (is_true(b_2)) {
        self flowgraph::kick(array(undefined, 0, 1, 0), 1);
        return;
    }
    if (is_true(b_3)) {
        self flowgraph::kick(array(undefined, 0, 0, 1), 1);
    }
}

// Namespace flowgraph_logic/flowgraph_shared
// Params 5, eflags: 0x0
// Checksum 0x1824a6b2, Offset: 0x430
// Size: 0x16c
function function_3b225c4(*x, b_1, b_2, b_3, b_4) {
    if (is_true(b_1)) {
        self flowgraph::kick(array(undefined, 1, 0, 0, 0), 1);
        return;
    }
    if (is_true(b_2)) {
        self flowgraph::kick(array(undefined, 0, 1, 0, 0), 1);
        return;
    }
    if (is_true(b_3)) {
        self flowgraph::kick(array(undefined, 0, 0, 1, 0), 1);
        return;
    }
    if (is_true(b_4)) {
        self flowgraph::kick(array(undefined, 0, 0, 0, 1), 1);
    }
}

// Namespace flowgraph_logic/flowgraph_shared
// Params 6, eflags: 0x0
// Checksum 0x1262d3d6, Offset: 0x5a8
// Size: 0x1c4
function function_f82f0ebe(*x, b_1, b_2, b_3, b_4, b_5) {
    if (is_true(b_1)) {
        self flowgraph::kick(array(undefined, 1, 0, 0, 0, 0), 1);
        return;
    }
    if (is_true(b_2)) {
        self flowgraph::kick(array(undefined, 0, 1, 0, 0, 0), 1);
        return;
    }
    if (is_true(b_3)) {
        self flowgraph::kick(array(undefined, 0, 0, 1, 0, 0), 1);
        return;
    }
    if (is_true(b_4)) {
        self flowgraph::kick(array(undefined, 0, 0, 0, 1, 0), 1);
        return;
    }
    if (is_true(b_5)) {
        self flowgraph::kick(array(undefined, 0, 0, 0, 0, 1), 1);
    }
}

// Namespace flowgraph_logic/flowgraph_shared
// Params 7, eflags: 0x0
// Checksum 0x92b8cc0d, Offset: 0x778
// Size: 0x21c
function function_3f431ce5(*x, b_1, b_2, b_3, b_4, b_5, b_6) {
    if (is_true(b_1)) {
        self flowgraph::kick(array(undefined, 1, 0, 0, 0, 0, 0), 1);
        return;
    }
    if (is_true(b_2)) {
        self flowgraph::kick(array(undefined, 0, 1, 0, 0, 0, 0), 1);
        return;
    }
    if (is_true(b_3)) {
        self flowgraph::kick(array(undefined, 0, 0, 1, 0, 0, 0), 1);
        return;
    }
    if (is_true(b_4)) {
        self flowgraph::kick(array(undefined, 0, 0, 0, 1, 0, 0), 1);
        return;
    }
    if (is_true(b_5)) {
        self flowgraph::kick(array(undefined, 0, 0, 0, 0, 1, 0), 1);
        return;
    }
    if (is_true(b_6)) {
        self flowgraph::kick(array(undefined, 0, 0, 0, 0, 0, 1), 1);
    }
}

// Namespace flowgraph_logic/flowgraph_shared
// Params 8, eflags: 0x0
// Checksum 0xd31abd72, Offset: 0x9a0
// Size: 0x2ac
function function_2d817962(*x, b_1, b_2, b_3, b_4, b_5, b_6, b_7) {
    if (is_true(b_1)) {
        self flowgraph::kick(array(undefined, 1, 0, 0, 0, 0, 0, 0), 1);
        return;
    }
    if (is_true(b_2)) {
        self flowgraph::kick(array(undefined, 0, 1, 0, 0, 0, 0, 0), 1);
        return;
    }
    if (is_true(b_3)) {
        self flowgraph::kick(array(undefined, 0, 0, 1, 0, 0, 0, 0), 1);
        return;
    }
    if (is_true(b_4)) {
        self flowgraph::kick(array(undefined, 0, 0, 0, 1, 0, 0, 0), 1);
        return;
    }
    if (is_true(b_5)) {
        self flowgraph::kick(array(undefined, 0, 0, 0, 0, 1, 0, 0), 1);
        return;
    }
    if (is_true(b_6)) {
        self flowgraph::kick(array(undefined, 0, 0, 0, 0, 0, 1, 0), 1);
        return;
    }
    if (is_true(b_7)) {
        self flowgraph::kick(array(undefined, 0, 0, 0, 0, 0, 0, 1), 1);
    }
}

// Namespace flowgraph_logic/flowgraph_shared
// Params 9, eflags: 0x0
// Checksum 0x27942847, Offset: 0xc58
// Size: 0x30c
function function_c8fcb052(*x, b_1, b_2, b_3, b_4, b_5, b_6, b_7, b_8) {
    if (is_true(b_1)) {
        self flowgraph::kick(array(undefined, 1, 0, 0, 0, 0, 0, 0, 0), 1);
        return;
    }
    if (is_true(b_2)) {
        self flowgraph::kick(array(undefined, 0, 1, 0, 0, 0, 0, 0, 0), 1);
        return;
    }
    if (is_true(b_3)) {
        self flowgraph::kick(array(undefined, 0, 0, 1, 0, 0, 0, 0, 0), 1);
        return;
    }
    if (is_true(b_4)) {
        self flowgraph::kick(array(undefined, 0, 0, 0, 1, 0, 0, 0, 0), 1);
        return;
    }
    if (is_true(b_5)) {
        self flowgraph::kick(array(undefined, 0, 0, 0, 0, 1, 0, 0, 0), 1);
        return;
    }
    if (is_true(b_6)) {
        self flowgraph::kick(array(undefined, 0, 0, 0, 0, 0, 1, 0, 0), 1);
        return;
    }
    if (is_true(b_7)) {
        self flowgraph::kick(array(undefined, 0, 0, 0, 0, 0, 0, 1, 0), 1);
        return;
    }
    if (is_true(b_8)) {
        self flowgraph::kick(array(undefined, 0, 0, 0, 0, 0, 0, 0, 1), 1);
    }
}

#namespace flowgraph_loops;

// Namespace flowgraph_loops/flowgraph_shared
// Params 3, eflags: 0x0
// Checksum 0x228d9896, Offset: 0xf70
// Size: 0x92
function forloop(*x, i_begin, i_end) {
    i_step = 1;
    if (i_end < i_begin) {
        i_step = -1;
    }
    for (i = i_begin; i != i_end; i += i_step) {
        self flowgraph::kick(array(1, i), 1);
    }
}

// Namespace flowgraph_loops/flowgraph_shared
// Params 2, eflags: 0x0
// Checksum 0x3bcca18a, Offset: 0x1010
// Size: 0xb0
function foreachloop(*x, a_items) {
    foreach (item in a_items) {
        self flowgraph::kick(array(1, item), 1);
    }
}

// Namespace flowgraph_loops/flowgraph_shared
// Params 2, eflags: 0x0
// Checksum 0x3e58fe0, Offset: 0x10c8
// Size: 0x6e
function whileloop(*x, b_condition) {
    while (b_condition) {
        self flowgraph::kick(1, 1);
        inputs = self flowgraph::collect_inputs();
        b_condition = inputs[1];
    }
}

#namespace flowgraph_sequence;

// Namespace flowgraph_sequence/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0x4513b686, Offset: 0x1140
// Size: 0x6c
function sequence2(*x) {
    self flowgraph::kick(array(1, 0), 1);
    self flowgraph::kick(array(0, 1), 1);
}

// Namespace flowgraph_sequence/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0xaf7fbefb, Offset: 0x11b8
// Size: 0x9c
function sequence3(*x) {
    self flowgraph::kick(array(1, 0, 0), 1);
    self flowgraph::kick(array(0, 1, 0), 1);
    self flowgraph::kick(array(0, 0, 1), 1);
}

// Namespace flowgraph_sequence/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0x6767493, Offset: 0x1260
// Size: 0xcc
function sequence4(*x) {
    self flowgraph::kick(array(1, 0, 0, 0), 1);
    self flowgraph::kick(array(0, 1, 0, 0), 1);
    self flowgraph::kick(array(0, 0, 1, 0), 1);
    self flowgraph::kick(array(0, 0, 0, 1), 1);
}

// Namespace flowgraph_sequence/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0xf1a9cff3, Offset: 0x1338
// Size: 0x124
function sequence5(*x) {
    self flowgraph::kick(array(1, 0, 0, 0, 0), 1);
    self flowgraph::kick(array(0, 1, 0, 0, 0), 1);
    self flowgraph::kick(array(0, 0, 1, 0, 0), 1);
    self flowgraph::kick(array(0, 0, 0, 1, 0), 1);
    self flowgraph::kick(array(0, 0, 0, 0, 1), 1);
}

// Namespace flowgraph_sequence/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0x61c040af, Offset: 0x1468
// Size: 0x15c
function sequence6(*x) {
    self flowgraph::kick(array(1, 0, 0, 0, 0, 0), 1);
    self flowgraph::kick(array(0, 1, 0, 0, 0, 0), 1);
    self flowgraph::kick(array(0, 0, 1, 0, 0, 0), 1);
    self flowgraph::kick(array(0, 0, 0, 1, 0, 0), 1);
    self flowgraph::kick(array(0, 0, 0, 0, 1, 0), 1);
    self flowgraph::kick(array(0, 0, 0, 0, 0, 1), 1);
}

// Namespace flowgraph_sequence/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0x655d4555, Offset: 0x15d0
// Size: 0x194
function sequence7(*x) {
    self flowgraph::kick(array(1, 0, 0, 0, 0, 0, 0), 1);
    self flowgraph::kick(array(0, 1, 0, 0, 0, 0, 0), 1);
    self flowgraph::kick(array(0, 0, 1, 0, 0, 0, 0), 1);
    self flowgraph::kick(array(0, 0, 0, 1, 0, 0, 0), 1);
    self flowgraph::kick(array(0, 0, 0, 0, 1, 0, 0), 1);
    self flowgraph::kick(array(0, 0, 0, 0, 0, 1, 0), 1);
    self flowgraph::kick(array(0, 0, 0, 0, 0, 0, 1), 1);
}

// Namespace flowgraph_sequence/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0xb15feaa3, Offset: 0x1770
// Size: 0x1cc
function sequence8(*x) {
    self flowgraph::kick(array(1, 0, 0, 0, 0, 0, 0, 0), 1);
    self flowgraph::kick(array(0, 1, 0, 0, 0, 0, 0, 0), 1);
    self flowgraph::kick(array(0, 0, 1, 0, 0, 0, 0, 0), 1);
    self flowgraph::kick(array(0, 0, 0, 1, 0, 0, 0, 0), 1);
    self flowgraph::kick(array(0, 0, 0, 0, 1, 0, 0, 0), 1);
    self flowgraph::kick(array(0, 0, 0, 0, 0, 1, 0, 0), 1);
    self flowgraph::kick(array(0, 0, 0, 0, 0, 0, 1, 0), 1);
    self flowgraph::kick(array(0, 0, 0, 0, 0, 0, 0, 1), 1);
}

#namespace flowgraph_util;

// Namespace flowgraph_util/flowgraph_shared
// Params 0, eflags: 0x0
// Checksum 0xf7ea7234, Offset: 0x1948
// Size: 0x24
function onflowgraphrun() {
    self.owner waittill(#"flowgraph_run");
    return true;
}

// Namespace flowgraph_util/flowgraph_shared
// Params 2, eflags: 0x0
// Checksum 0x60eb9d67, Offset: 0x1978
// Size: 0x1e
function waitfunc(*x, f_seconds) {
    wait(f_seconds);
    return true;
}

// Namespace flowgraph_util/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0xd866b3d2, Offset: 0x19a0
// Size: 0x10
function createthread(*x) {
    return true;
}

#namespace flowgraph_random;

// Namespace flowgraph_random/flowgraph_shared
// Params 2, eflags: 0x0
// Checksum 0x2da3caba, Offset: 0x19b8
// Size: 0x2a
function randomfloatinrangefunc(f_min, f_max) {
    return randomfloatrange(f_min, f_max);
}

// Namespace flowgraph_random/flowgraph_shared
// Params 0, eflags: 0x0
// Checksum 0xdee6d46a, Offset: 0x19f0
// Size: 0x5a
function randomunitvector() {
    return vectornormalize((randomfloat(1), randomfloat(1), randomfloat(1)));
}

#namespace flowgraph_math;

// Namespace flowgraph_math/flowgraph_shared
// Params 2, eflags: 0x0
// Checksum 0x42499414, Offset: 0x1a58
// Size: 0x1a
function multiply(var_1, *var_2) {
    return var_2 * var_2;
}

// Namespace flowgraph_math/flowgraph_shared
// Params 2, eflags: 0x0
// Checksum 0x817db9ef, Offset: 0x1a80
// Size: 0x1a
function divide(var_1, var_2) {
    return var_1 / var_2;
}

// Namespace flowgraph_math/flowgraph_shared
// Params 2, eflags: 0x0
// Checksum 0x62519d34, Offset: 0x1aa8
// Size: 0x1a
function add(var_1, var_2) {
    return var_1 + var_2;
}

// Namespace flowgraph_math/flowgraph_shared
// Params 2, eflags: 0x0
// Checksum 0x6ed8aebd, Offset: 0x1ad0
// Size: 0x1a
function subtract(var_1, var_2) {
    return var_1 - var_2;
}

// Namespace flowgraph_math/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0x23345f7, Offset: 0x1af8
// Size: 0x16
function negate(v) {
    return v * -1;
}

// Namespace flowgraph_math/flowgraph_shared
// Params 2, eflags: 0x0
// Checksum 0x236796db, Offset: 0x1b18
// Size: 0x2a
function vectordotfunc(v_1, v_2) {
    return vectordot(v_1, v_2);
}

#namespace flowgraph_lighting;

// Namespace flowgraph_lighting/flowgraph_shared
// Params 0, eflags: 0x0
// Checksum 0x26df5795, Offset: 0x1b50
// Size: 0x12
function getlightingstatefunc() {
    return getlightingstate();
}

#namespace flowgraph_level;

// Namespace flowgraph_level/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0xcfb56e45, Offset: 0x1b70
// Size: 0x18
function function_35dc468d(str_field) {
    return level.(str_field);
}

// Namespace flowgraph_level/flowgraph_shared
// Params 3, eflags: 0x0
// Checksum 0xf3ca9727, Offset: 0x1b90
// Size: 0x32
function function_f9d5c4b0(*x, str_field, var_value) {
    level.(str_field) = var_value;
    return true;
}

#namespace namespace_22752a75;

// Namespace namespace_22752a75/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0x1046de28, Offset: 0x1bd0
// Size: 0x10
function function_8892c7a6(i_value) {
    return i_value;
}

// Namespace namespace_22752a75/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0xb03e8b83, Offset: 0x1be8
// Size: 0x10
function function_28c4ae67(f_value) {
    return f_value;
}

// Namespace namespace_22752a75/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0xfba43cf1, Offset: 0x1c00
// Size: 0x10
function function_36bf9c6c(b_value) {
    return b_value;
}

// Namespace namespace_22752a75/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0x852853d4, Offset: 0x1c18
// Size: 0x10
function function_fe4cf085(str_value) {
    return str_value;
}

// Namespace namespace_22752a75/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0xb0b63ce9, Offset: 0x1c30
// Size: 0x10
function function_3ece9d7e(h_value) {
    return h_value;
}

// Namespace namespace_22752a75/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0xfad5a247, Offset: 0x1c48
// Size: 0x10
function function_68a5d644(ea_value) {
    return ea_value;
}

// Namespace namespace_22752a75/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0x4f4c8b58, Offset: 0x1c60
// Size: 0x10
function vectorconstant(v_value) {
    return v_value;
}

// Namespace namespace_22752a75/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0x6afbee6, Offset: 0x1c78
// Size: 0x10
function pathnodeconstant(var_f4af12cc) {
    return var_f4af12cc;
}

// Namespace namespace_22752a75/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0xd30216bd, Offset: 0x1c90
// Size: 0x10
function function_9ef80b8b(e_value) {
    return e_value;
}

// Namespace namespace_22752a75/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0xf3d3b7df, Offset: 0x1ca8
// Size: 0x10
function introduction_minigun(ai_value) {
    return ai_value;
}

// Namespace namespace_22752a75/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0x899d9444, Offset: 0x1cc0
// Size: 0x10
function function_513da14e(var_162b6305) {
    return var_162b6305;
}

// Namespace namespace_22752a75/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0x113e7b2b, Offset: 0x1cd8
// Size: 0x10
function function_7cbb60c3(sp_value) {
    return sp_value;
}

// Namespace namespace_22752a75/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0x1ba998ef, Offset: 0x1cf0
// Size: 0x10
function function_f2357a4d(w_value) {
    return w_value;
}

// Namespace namespace_22752a75/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0x7868f669, Offset: 0x1d08
// Size: 0x10
function function_79f7d941(var_value) {
    return var_value;
}

// Namespace namespace_22752a75/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0xb427d063, Offset: 0x1d20
// Size: 0x10
function function_fdafe394(var_e477c3b) {
    return var_e477c3b;
}

// Namespace namespace_22752a75/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0x3e5c35d, Offset: 0x1d38
// Size: 0x10
function function_28848a6a(mdl_value) {
    return mdl_value;
}

// Namespace namespace_22752a75/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0x2b79ea5e, Offset: 0x1d50
// Size: 0x10
function function_8f5a9b3e(fx_value) {
    return fx_value;
}

// Namespace namespace_22752a75/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0x4f1f66e9, Offset: 0x1d68
// Size: 0x10
function function_a5f771ce(var_e0bddaf5) {
    return var_e0bddaf5;
}

// Namespace namespace_22752a75/flowgraph_shared
// Params 1, eflags: 0x0
// Checksum 0x1d252f63, Offset: 0x1d80
// Size: 0x10
function function_527fa489(var_5ab747e5) {
    return var_5ab747e5;
}

