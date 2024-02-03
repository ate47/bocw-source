// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\math_shared.gsc;

#namespace namespace_ca99987f;

// Namespace namespace_ca99987f/namespace_df0c90a5
// Params 0, eflags: 0x5
// Checksum 0x52a4b0af, Offset: 0x98
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_1550b2b6cdd56be8", &function_810d6d3a, undefined, undefined, undefined);
}

// Namespace namespace_ca99987f/namespace_df0c90a5
// Params 0, eflags: 0x2 linked
// Checksum 0x9917cae6, Offset: 0xe0
// Size: 0x1ec
function function_810d6d3a() {
    level.var_b649495c = [];
    level.var_b649495c[#"linear"] = &function_a9f5c57d;
    level.var_b649495c[#"power"] = &function_492ef475;
    level.var_b649495c[#"quadratic"] = &function_db98dad1;
    level.var_b649495c[#"hash_7a17b3d575c1b565"] = &function_237ad8ca;
    level.var_b649495c[#"hash_7fcb2d60a826eca8"] = &function_79315b1d;
    level.var_b649495c[#"hash_2080bcb1cad7945c"] = &function_858ecd2d;
    level.var_b649495c[#"exponential"] = &function_95a842a;
    level.var_b649495c[#"hash_2de1684e2167ada4"] = &function_eec2a804;
    level.var_b649495c[#"sine"] = &function_aab5c503;
    level.var_b649495c[#"back"] = &function_da7df29;
    level.var_b649495c[#"hash_77881ce206b89ce8"] = &function_d912ff48;
    level.var_b649495c[#"bounce"] = &function_6aeb681d;
}

// Namespace namespace_ca99987f/namespace_df0c90a5
// Params 5, eflags: 0x2 linked
// Checksum 0x942ea4c6, Offset: 0x2d8
// Size: 0x46
function function_a9f5c57d(start, end, var_600ff81f, *ease_in, *ease_out) {
    return (1 - ease_out) * var_600ff81f + ease_out * ease_in;
}

// Namespace namespace_ca99987f/namespace_df0c90a5
// Params 6, eflags: 0x2 linked
// Checksum 0x45352c1a, Offset: 0x328
// Size: 0x72
function function_492ef475(start, end, var_600ff81f, ease_in, ease_out, power) {
    var_600ff81f = function_fed73db4(var_600ff81f, power, ease_in, ease_out);
    return (1 - var_600ff81f) * start + var_600ff81f * end;
}

// Namespace namespace_ca99987f/namespace_df0c90a5
// Params 5, eflags: 0x2 linked
// Checksum 0x77a481f4, Offset: 0x3a8
// Size: 0x6a
function function_db98dad1(start, end, var_600ff81f, ease_in, ease_out) {
    var_600ff81f = function_fed73db4(var_600ff81f, 2, ease_in, ease_out);
    return (1 - var_600ff81f) * start + var_600ff81f * end;
}

// Namespace namespace_ca99987f/namespace_df0c90a5
// Params 5, eflags: 0x2 linked
// Checksum 0x7b58c7d5, Offset: 0x420
// Size: 0x6a
function function_237ad8ca(start, end, var_600ff81f, ease_in, ease_out) {
    var_600ff81f = function_fed73db4(var_600ff81f, 3, ease_in, ease_out);
    return (1 - var_600ff81f) * start + var_600ff81f * end;
}

// Namespace namespace_ca99987f/namespace_df0c90a5
// Params 5, eflags: 0x2 linked
// Checksum 0x27a296c4, Offset: 0x498
// Size: 0x6a
function function_79315b1d(start, end, var_600ff81f, ease_in, ease_out) {
    var_600ff81f = function_fed73db4(var_600ff81f, 4, ease_in, ease_out);
    return (1 - var_600ff81f) * start + var_600ff81f * end;
}

// Namespace namespace_ca99987f/namespace_df0c90a5
// Params 5, eflags: 0x2 linked
// Checksum 0x411f381d, Offset: 0x510
// Size: 0x6a
function function_858ecd2d(start, end, var_600ff81f, ease_in, ease_out) {
    var_600ff81f = function_fed73db4(var_600ff81f, 5, ease_in, ease_out);
    return (1 - var_600ff81f) * start + var_600ff81f * end;
}

// Namespace namespace_ca99987f/namespace_df0c90a5
// Params 6, eflags: 0x2 linked
// Checksum 0x7f95290d, Offset: 0x588
// Size: 0x72
function function_95a842a(start, end, var_600ff81f, ease_in, ease_out, scale) {
    var_600ff81f = function_7cc9a304(var_600ff81f, scale, ease_in, ease_out);
    return (1 - var_600ff81f) * start + var_600ff81f * end;
}

// Namespace namespace_ca99987f/namespace_df0c90a5
// Params 6, eflags: 0x2 linked
// Checksum 0x3617640, Offset: 0x608
// Size: 0x72
function function_eec2a804(start, end, var_600ff81f, ease_in, ease_out, var_18da63b) {
    var_600ff81f = function_cb5f1482(var_600ff81f, var_18da63b, ease_in, ease_out);
    return (1 - var_600ff81f) * start + var_600ff81f * end;
}

// Namespace namespace_ca99987f/namespace_df0c90a5
// Params 5, eflags: 0x2 linked
// Checksum 0xf26468c7, Offset: 0x688
// Size: 0x62
function function_aab5c503(start, end, var_600ff81f, ease_in, ease_out) {
    var_600ff81f = function_cc279bde(var_600ff81f, ease_in, ease_out);
    return (1 - var_600ff81f) * start + var_600ff81f * end;
}

// Namespace namespace_ca99987f/namespace_df0c90a5
// Params 7, eflags: 0x2 linked
// Checksum 0xc93d2fdd, Offset: 0x6f8
// Size: 0x7a
function function_da7df29(start, end, var_600ff81f, ease_in, ease_out, var_2d741986, power) {
    var_600ff81f = function_9960e1e7(var_600ff81f, var_2d741986, power, ease_in, ease_out);
    return (1 - var_600ff81f) * start + var_600ff81f * end;
}

// Namespace namespace_ca99987f/namespace_df0c90a5
// Params 8, eflags: 0x2 linked
// Checksum 0x172af3ce, Offset: 0x780
// Size: 0x82
function function_d912ff48(start, end, var_600ff81f, ease_in, ease_out, amplitude, frequency, var_6fe616d0) {
    var_600ff81f = function_95dcecc(var_600ff81f, amplitude, frequency, var_6fe616d0, ease_in, ease_out);
    return (1 - var_600ff81f) * start + var_600ff81f * end;
}

// Namespace namespace_ca99987f/namespace_df0c90a5
// Params 7, eflags: 0x2 linked
// Checksum 0x18a33bbf, Offset: 0x810
// Size: 0x7a
function function_6aeb681d(start, end, var_600ff81f, ease_in, ease_out, bounces, var_574c3289) {
    var_600ff81f = function_7f894fd3(var_600ff81f, bounces, var_574c3289, ease_in, ease_out);
    return (1 - var_600ff81f) * start + var_600ff81f * end;
}

// Namespace namespace_ca99987f/namespace_df0c90a5
// Params 3, eflags: 0x2 linked
// Checksum 0x31d74d8d, Offset: 0x898
// Size: 0x74
function function_8ff186e5(var_b3160f0, dvar, var_c7ec7d60) {
    if (is_true(var_c7ec7d60)) {
        setsaveddvar(dvar, var_b3160f0.var_872a88cd);
    } else {
        setdvar(dvar, var_b3160f0.var_872a88cd);
    }
}

// Namespace namespace_ca99987f/namespace_df0c90a5
// Params 2, eflags: 0x2 linked
// Checksum 0xb834334e, Offset: 0x918
// Size: 0x112
function function_54354e4e(var_b3160f0, axis) {
    switch (axis) {
    case 0:
        self.origin = (var_b3160f0.var_872a88cd, self.origin[1], self.origin[2]);
        break;
    case 1:
        self.origin = (self.origin[0], var_b3160f0.var_872a88cd, self.origin[2]);
        break;
    case 2:
        self.origin = (self.origin[0], self.origin[1], var_b3160f0.var_872a88cd);
        break;
    default:
        self.origin = var_b3160f0.var_872a88cd;
        break;
    }
}

// Namespace namespace_ca99987f/namespace_df0c90a5
// Params 2, eflags: 0x2 linked
// Checksum 0xa8f6574e, Offset: 0xa38
// Size: 0xfa
function function_92b063ff(var_b3160f0, axis) {
    switch (axis) {
    case 0:
        self.origin = self.origin + (var_b3160f0.delta, 0, 0);
        break;
    case 1:
        self.origin = self.origin + (0, var_b3160f0.delta, 0);
        break;
    case 2:
        self.origin = self.origin + (0, 0, var_b3160f0.delta);
        break;
    default:
        self.origin = self.origin + var_b3160f0.delta;
        break;
    }
}

// Namespace namespace_ca99987f/namespace_df0c90a5
// Params 2, eflags: 0x2 linked
// Checksum 0x604f605, Offset: 0xb40
// Size: 0x104
function function_3b3f9801(var_b3160f0, axis) {
    var_cad5b24d = float(function_60d95f53()) / 1000;
    angles = var_b3160f0.var_872a88cd;
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
    self rotateto(var_b3160f0.var_872a88cd, var_cad5b24d);
}

// Namespace namespace_ca99987f/namespace_df0c90a5
// Params 2, eflags: 0x2 linked
// Checksum 0xee04c8c4, Offset: 0xc50
// Size: 0x16e
function function_faea843b(var_b3160f0, axis) {
    switch (axis) {
    case 0:
        self.angles = self.angles + (var_b3160f0.delta, 0, 0);
        break;
    case 1:
        self.angles = self.angles + (0, var_b3160f0.delta, 0);
        break;
    case 2:
        self.angles = self.angles + (0, 0, var_b3160f0.delta);
        break;
    default:
        self.angles = self.angles + var_b3160f0.delta;
        break;
    }
    if (var_b3160f0.var_37e98bce) {
        self.angles = (angleclamp180(self.angles[0]), angleclamp180(self.angles[1]), angleclamp180(self.angles[2]));
    }
}

