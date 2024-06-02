// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\math_shared.gsc;

#namespace easing;

// Namespace easing/namespace_df0c90a5
// Params 0, eflags: 0x5
// Checksum 0x52a4b0af, Offset: 0x98
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"easing", &ease_init, undefined, undefined, undefined);
}

// Namespace easing/namespace_df0c90a5
// Params 0, eflags: 0x0
// Checksum 0x9917cae6, Offset: 0xe0
// Size: 0x1ec
function ease_init() {
    level.ease_funcs = [];
    level.ease_funcs[#"linear"] = &ease_linear;
    level.ease_funcs[#"power"] = &ease_power;
    level.ease_funcs[#"quadratic"] = &function_db98dad1;
    level.ease_funcs[#"cubic"] = &ease_cubic;
    level.ease_funcs[#"hash_7fcb2d60a826eca8"] = &function_79315b1d;
    level.ease_funcs[#"hash_2080bcb1cad7945c"] = &function_858ecd2d;
    level.ease_funcs[#"exponential"] = &function_95a842a;
    level.ease_funcs[#"hash_2de1684e2167ada4"] = &function_eec2a804;
    level.ease_funcs[#"sine"] = &ease_sine;
    level.ease_funcs[#"back"] = &ease_back;
    level.ease_funcs[#"hash_77881ce206b89ce8"] = &function_d912ff48;
    level.ease_funcs[#"bounce"] = &ease_bounce;
}

// Namespace easing/namespace_df0c90a5
// Params 5, eflags: 0x0
// Checksum 0x942ea4c6, Offset: 0x2d8
// Size: 0x46
function ease_linear(start, end, pct, *ease_in, *ease_out) {
    return (1 - ease_out) * pct + ease_out * ease_in;
}

// Namespace easing/namespace_df0c90a5
// Params 6, eflags: 0x0
// Checksum 0x45352c1a, Offset: 0x328
// Size: 0x72
function ease_power(start, end, pct, ease_in, ease_out, power) {
    pct = easepower(pct, power, ease_in, ease_out);
    return (1 - pct) * start + pct * end;
}

// Namespace easing/namespace_df0c90a5
// Params 5, eflags: 0x0
// Checksum 0x77a481f4, Offset: 0x3a8
// Size: 0x6a
function function_db98dad1(start, end, pct, ease_in, ease_out) {
    pct = easepower(pct, 2, ease_in, ease_out);
    return (1 - pct) * start + pct * end;
}

// Namespace easing/namespace_df0c90a5
// Params 5, eflags: 0x0
// Checksum 0x7b58c7d5, Offset: 0x420
// Size: 0x6a
function ease_cubic(start, end, pct, ease_in, ease_out) {
    pct = easepower(pct, 3, ease_in, ease_out);
    return (1 - pct) * start + pct * end;
}

// Namespace easing/namespace_df0c90a5
// Params 5, eflags: 0x0
// Checksum 0x27a296c4, Offset: 0x498
// Size: 0x6a
function function_79315b1d(start, end, pct, ease_in, ease_out) {
    pct = easepower(pct, 4, ease_in, ease_out);
    return (1 - pct) * start + pct * end;
}

// Namespace easing/namespace_df0c90a5
// Params 5, eflags: 0x0
// Checksum 0x411f381d, Offset: 0x510
// Size: 0x6a
function function_858ecd2d(start, end, pct, ease_in, ease_out) {
    pct = easepower(pct, 5, ease_in, ease_out);
    return (1 - pct) * start + pct * end;
}

// Namespace easing/namespace_df0c90a5
// Params 6, eflags: 0x0
// Checksum 0x7f95290d, Offset: 0x588
// Size: 0x72
function function_95a842a(start, end, pct, ease_in, ease_out, scale) {
    pct = easeexponential(pct, scale, ease_in, ease_out);
    return (1 - pct) * start + pct * end;
}

// Namespace easing/namespace_df0c90a5
// Params 6, eflags: 0x0
// Checksum 0x3617640, Offset: 0x608
// Size: 0x72
function function_eec2a804(start, end, pct, ease_in, ease_out, log_base) {
    pct = easelogarithmic(pct, log_base, ease_in, ease_out);
    return (1 - pct) * start + pct * end;
}

// Namespace easing/namespace_df0c90a5
// Params 5, eflags: 0x0
// Checksum 0xf26468c7, Offset: 0x688
// Size: 0x62
function ease_sine(start, end, pct, ease_in, ease_out) {
    pct = easesine(pct, ease_in, ease_out);
    return (1 - pct) * start + pct * end;
}

// Namespace easing/namespace_df0c90a5
// Params 7, eflags: 0x0
// Checksum 0xc93d2fdd, Offset: 0x6f8
// Size: 0x7a
function ease_back(start, end, pct, ease_in, ease_out, var_2d741986, power) {
    pct = easeback(pct, var_2d741986, power, ease_in, ease_out);
    return (1 - pct) * start + pct * end;
}

// Namespace easing/namespace_df0c90a5
// Params 8, eflags: 0x0
// Checksum 0x172af3ce, Offset: 0x780
// Size: 0x82
function function_d912ff48(start, end, pct, ease_in, ease_out, amplitude, frequency, fade_scalar) {
    pct = easeelastic(pct, amplitude, frequency, fade_scalar, ease_in, ease_out);
    return (1 - pct) * start + pct * end;
}

// Namespace easing/namespace_df0c90a5
// Params 7, eflags: 0x0
// Checksum 0x18a33bbf, Offset: 0x810
// Size: 0x7a
function ease_bounce(start, end, pct, ease_in, ease_out, bounces, decay_scalar) {
    pct = easebounce(pct, bounces, decay_scalar, ease_in, ease_out);
    return (1 - pct) * start + pct * end;
}

// Namespace easing/namespace_df0c90a5
// Params 3, eflags: 0x0
// Checksum 0x31d74d8d, Offset: 0x898
// Size: 0x74
function function_8ff186e5(var_b3160f0, dvar, var_c7ec7d60) {
    if (is_true(var_c7ec7d60)) {
        setsaveddvar(dvar, var_b3160f0.cur_value);
        return;
    }
    setdvar(dvar, var_b3160f0.cur_value);
}

// Namespace easing/namespace_df0c90a5
// Params 2, eflags: 0x0
// Checksum 0xb834334e, Offset: 0x918
// Size: 0x112
function function_54354e4e(var_b3160f0, axis) {
    switch (axis) {
    case 0:
        self.origin = (var_b3160f0.cur_value, self.origin[1], self.origin[2]);
        break;
    case 1:
        self.origin = (self.origin[0], var_b3160f0.cur_value, self.origin[2]);
        break;
    case 2:
        self.origin = (self.origin[0], self.origin[1], var_b3160f0.cur_value);
        break;
    default:
        self.origin = var_b3160f0.cur_value;
        break;
    }
}

// Namespace easing/namespace_df0c90a5
// Params 2, eflags: 0x0
// Checksum 0xa8f6574e, Offset: 0xa38
// Size: 0xfa
function function_92b063ff(var_b3160f0, axis) {
    switch (axis) {
    case 0:
        self.origin += (var_b3160f0.delta, 0, 0);
        break;
    case 1:
        self.origin += (0, var_b3160f0.delta, 0);
        break;
    case 2:
        self.origin += (0, 0, var_b3160f0.delta);
        break;
    default:
        self.origin += var_b3160f0.delta;
        break;
    }
}

// Namespace easing/namespace_df0c90a5
// Params 2, eflags: 0x0
// Checksum 0x604f605, Offset: 0xb40
// Size: 0x104
function function_3b3f9801(var_b3160f0, axis) {
    var_cad5b24d = float(function_60d95f53()) / 1000;
    angles = var_b3160f0.cur_value;
    switch (axis) {
    case 0:
        angles = (angles, 0, 0);
        break;
    case 1:
        angles = (0, angles, 0);
        break;
    case 2:
        angles = (0, 0, angles);
        break;
    }
    self rotateto(var_b3160f0.cur_value, var_cad5b24d);
}

// Namespace easing/namespace_df0c90a5
// Params 2, eflags: 0x0
// Checksum 0xee04c8c4, Offset: 0xc50
// Size: 0x16e
function function_faea843b(var_b3160f0, axis) {
    switch (axis) {
    case 0:
        self.angles += (var_b3160f0.delta, 0, 0);
        break;
    case 1:
        self.angles += (0, var_b3160f0.delta, 0);
        break;
    case 2:
        self.angles += (0, 0, var_b3160f0.delta);
        break;
    default:
        self.angles += var_b3160f0.delta;
        break;
    }
    if (var_b3160f0.var_37e98bce) {
        self.angles = (angleclamp180(self.angles[0]), angleclamp180(self.angles[1]), angleclamp180(self.angles[2]));
    }
}

