// Atian COD Tools GSC CW decompiler test
#using script_28e27ee9b45fd02d;
#using scripts\cp_common\snd_utility.csc;
#using script_1cd690a97dfca36e;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\math_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\array_shared.csc;

#namespace snd;

/#

    // Namespace snd/namespace_6ca4ad5f
    // Params 1, eflags: 0x4
    // Checksum 0xb0824ff1, Offset: 0xc8
    // Size: 0x1cc
    function private function_8f9218ba(hud) {
        if (isdefined(hud.var_ca1ec566)) {
            function_e23ba9aa(0, hud.var_ca1ec566, hud.var_708cbe39, "<unknown string>", hud.var_28f96332, hud.var_685ce76a);
            value = function_ea2f17d1(hud.value, 0);
            if (isdefined(value) && value > 0) {
                insize = hud.var_708cbe39 + (-2 * 2, -2 * 2, 0);
                inpos = hud.var_ca1ec566 + (2, 2, 0);
                if (hud.isvertical == 1) {
                    inpos = hud.var_ca1ec566 + (2, 2 + insize[1], 0);
                    insize = (insize[0], insize[1] * value, insize[2]);
                    inpos -= (0, insize[1], 0);
                } else {
                    insize = (insize[0] * value, insize[1], insize[2]);
                }
                function_e23ba9aa(0, inpos, insize, "<unknown string>", hud.var_4a70ec60, hud.var_e2c0fdcb);
            }
        }
    }

#/

// Namespace snd/namespace_6ca4ad5f
// Params 0, eflags: 0x4
// Checksum 0x252ed5ee, Offset: 0x2a0
// Size: 0x182
function private function_20b6bc92() {
    assert(isdefined(level.var_a00c303b), "<unknown string>");
    level notify(#"hash_20f3988ee2416a3d");
    level endon(#"hash_20f3988ee2416a3d");
    level.var_a00c303b.mainthread = 1;
    while (isdefined(level.var_a00c303b)) {
        foreach (var_dfd5412c in level.var_a00c303b.objects) {
            if (isfunctionptr(var_dfd5412c.callbackfunc)) {
                target = var_dfd5412c.target;
                value = [[ var_dfd5412c.callbackfunc ]](target, var_dfd5412c.callbackdata, var_dfd5412c);
                function_fee448d5(var_dfd5412c, value);
            }
            /#
                function_8f9218ba(var_dfd5412c);
            #/
        }
        waitframe(1);
    }
}

// Namespace snd/namespace_6ca4ad5f
// Params 12, eflags: 0x0
// Checksum 0x7b0e6508, Offset: 0x430
// Size: 0x2d8
function function_b009fcc9(x, y, w, h, target, callbackfunc, callbackdata, isvertical, backgroundcolor, backgroundalpha, var_a2dbe44f, var_6a3d8755) {
    isvertical = function_ea2f17d1(isvertical, 0);
    backgroundcolor = function_ea2f17d1(backgroundcolor, (0.72974, 0.72974, 0.72974));
    backgroundalpha = function_ea2f17d1(backgroundalpha, 0.72974);
    var_a2dbe44f = function_ea2f17d1(var_a2dbe44f, (0, 1, 0));
    var_6a3d8755 = function_ea2f17d1(var_6a3d8755, 0.72974);
    var_dfd5412c = spawnstruct();
    var_dfd5412c.isvertical = isvertical;
    var_dfd5412c.var_36dfeb2e = array(x, y);
    var_dfd5412c.screensize = array(w, h);
    var_dfd5412c.var_ca1ec566 = (x, y, 0);
    var_dfd5412c.var_708cbe39 = (w, h, 0);
    var_dfd5412c.var_28f96332 = backgroundcolor;
    var_dfd5412c.var_685ce76a = backgroundalpha;
    var_dfd5412c.var_4a70ec60 = var_a2dbe44f;
    var_dfd5412c.var_e2c0fdcb = var_6a3d8755;
    var_dfd5412c.target = target;
    var_dfd5412c.callbackfunc = callbackfunc;
    var_dfd5412c.callbackdata = callbackdata;
    var_dfd5412c.var_c53c088d = gettime();
    var_fc6c677b = "white";
    /#
        hud = undefined;
        var_dfd5412c.var_8c127264 = hud;
    #/
    var_dfd5412c.valuehud = undefined;
    if (!isdefined(level.var_a00c303b)) {
        level.var_a00c303b = spawnstruct();
        level.var_a00c303b.objects = array();
    }
    level.var_a00c303b.objects[level.var_a00c303b.objects.size] = var_dfd5412c;
    if (!isdefined(level.var_a00c303b.mainthread)) {
        level.var_a00c303b thread function_20b6bc92();
    }
    return var_dfd5412c;
}

// Namespace snd/namespace_6ca4ad5f
// Params 1, eflags: 0x0
// Checksum 0x44c22ce0, Offset: 0x710
// Size: 0xa0
function function_9b4ec5ed(var_dfd5412c) {
    arrayremovevalue(level.var_a00c303b.objects, var_dfd5412c, 1);
    if (isdefined(var_dfd5412c.valuehud)) {
        var_dfd5412c.valuehud = undefined;
    }
    if (isdefined(var_dfd5412c.var_8c127264)) {
        var_dfd5412c.var_8c127264 = undefined;
    }
    if (level.var_a00c303b.objects.size == 0) {
        level.var_a00c303b = undefined;
        level notify(#"hash_20f3988ee2416a3d");
    }
}

// Namespace snd/namespace_6ca4ad5f
// Params 2, eflags: 0x0
// Checksum 0x7d7894ba, Offset: 0x7b8
// Size: 0xc4
function function_fee448d5(var_dfd5412c, value) {
    now = gettime();
    if (isdefined(var_dfd5412c.var_c53c088d) && var_dfd5412c.var_c53c088d == now) {
        return;
    }
    value = math::clamp(float(value), 0, 1);
    var_dfd5412c.var_c53c088d = now;
    var_dfd5412c.value = value;
    if (value <= 0) {
        if (isdefined(var_dfd5412c.valuehud)) {
            var_dfd5412c.valuehud = undefined;
        }
        return;
    }
}

