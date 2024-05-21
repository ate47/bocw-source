// Atian COD Tools GSC CW decompiler test
#using script_85cd2e9a28ea8a1;
#using scripts\cp_common\snd_utility.gsc;
#using script_3dc93ca9902a9cda;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace snd;

// Namespace snd/namespace_d16177a1
// Params 0, eflags: 0x6 linked
// Checksum 0x39dd4352, Offset: 0xc8
// Size: 0x15a
function private function_20b6bc92() {
    assert(isdefined(level.var_a00c303b), "<unknown string>");
    level endon(#"hash_20f3988ee2416a3d");
    level.var_a00c303b.mainthread = 1;
    while (isdefined(level.var_a00c303b)) {
        foreach (var_dfd5412c in level.var_a00c303b.objects) {
            if (isfunctionptr(var_dfd5412c.callbackfunc)) {
                target = var_dfd5412c.target;
                value = [[ var_dfd5412c.callbackfunc ]](target, var_dfd5412c.callbackdata, var_dfd5412c);
                function_fee448d5(var_dfd5412c, value);
            }
        }
        waitframe(1);
    }
}

// Namespace snd/namespace_d16177a1
// Params 12, eflags: 0x0
// Checksum 0xbdb47914, Offset: 0x230
// Size: 0x3f0
function function_b009fcc9(x, y, w, h, target, callbackfunc, callbackdata, isvertical, backgroundcolor, backgroundalpha, var_a2dbe44f, var_6a3d8755) {
    isvertical = function_ea2f17d1(isvertical, 0);
    backgroundcolor = function_ea2f17d1(backgroundcolor, 0.72974);
    backgroundalpha = function_ea2f17d1(backgroundalpha, 0.72974);
    var_a2dbe44f = function_ea2f17d1(var_a2dbe44f, (0, 1, 0));
    var_6a3d8755 = function_ea2f17d1(var_6a3d8755, 0.72974);
    var_dfd5412c = spawnstruct();
    var_dfd5412c.isvertical = isvertical;
    var_dfd5412c.var_36dfeb2e = array(x, y);
    var_dfd5412c.screensize = array(w, h);
    var_dfd5412c.var_ca1ec566 = function_da7b7c0e(array(x, y));
    var_dfd5412c.var_708cbe39 = function_df9f894b(array(w, h));
    var_dfd5412c.var_4a70ec60 = var_a2dbe44f;
    var_dfd5412c.var_e2c0fdcb = var_6a3d8755;
    var_dfd5412c.target = target;
    var_dfd5412c.callbackfunc = callbackfunc;
    var_dfd5412c.callbackdata = callbackdata;
    var_dfd5412c.var_c53c088d = gettime();
    var_dfd5412c.var_ca1ec566 = array(var_dfd5412c.var_ca1ec566[0], var_dfd5412c.var_ca1ec566[1] - var_dfd5412c.var_708cbe39[1]);
    var_fc6c677b = "white";
    /#
        hud = newdebughudelem();
        hud.x = var_dfd5412c.var_ca1ec566[0];
        hud.y = var_dfd5412c.var_ca1ec566[1];
        hud.alignx = "<unknown string>";
        hud.color = backgroundcolor;
        hud.alpha = backgroundalpha;
        hud.foreground = 0;
        hud.sort = -1;
        hud setshader(var_fc6c677b, var_dfd5412c.var_708cbe39[0], var_dfd5412c.var_708cbe39[1]);
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

// Namespace snd/namespace_d16177a1
// Params 1, eflags: 0x0
// Checksum 0x2e4dd135, Offset: 0x628
// Size: 0xe0
function function_9b4ec5ed(var_dfd5412c) {
    arrayremovevalue(level.var_a00c303b.objects, var_dfd5412c, 1);
    if (isdefined(var_dfd5412c.valuehud)) {
        /#
            var_dfd5412c.valuehud destroy();
        #/
        var_dfd5412c.valuehud = undefined;
    }
    if (isdefined(var_dfd5412c.var_8c127264)) {
        /#
            var_dfd5412c.var_8c127264 destroy();
        #/
        var_dfd5412c.var_8c127264 = undefined;
    }
    if (level.var_a00c303b.objects.size == 0) {
        level.var_a00c303b = undefined;
        level notify(#"hash_20f3988ee2416a3d");
    }
}

// Namespace snd/namespace_d16177a1
// Params 2, eflags: 0x2 linked
// Checksum 0xfb896adc, Offset: 0x710
// Size: 0x3fc
function function_fee448d5(var_dfd5412c, value) {
    now = gettime();
    if (isdefined(var_dfd5412c.var_c53c088d) && var_dfd5412c.var_c53c088d == now) {
        return;
    }
    value = math::clamp(float(value), 0, 1);
    var_dfd5412c.var_c53c088d = now;
    if (value <= 0) {
        if (isdefined(var_dfd5412c.valuehud)) {
            /#
                var_dfd5412c.valuehud destroy();
            #/
            var_dfd5412c.valuehud = undefined;
        }
        return;
    }
    var_ca1ec566 = array(var_dfd5412c.var_ca1ec566[0] + 1, var_dfd5412c.var_ca1ec566[1] + 1);
    var_708cbe39 = var_dfd5412c.var_708cbe39;
    if (var_dfd5412c.isvertical == 1) {
        height = var_dfd5412c.var_708cbe39[1] - 2;
        height *= value;
        var_708cbe39 = array(var_dfd5412c.var_708cbe39[0] - 2, int(ceil(height)));
        var_ca1ec566 = array(var_dfd5412c.var_ca1ec566[0] + 1, int(var_dfd5412c.var_ca1ec566[1] + var_dfd5412c.var_708cbe39[1] - var_708cbe39[1]) - 1);
    } else {
        width = var_dfd5412c.var_708cbe39[0] - 2;
        width *= value;
        var_708cbe39 = array(int(width), var_dfd5412c.var_708cbe39[1] - 2);
    }
    if (var_708cbe39[0] <= 0 || var_708cbe39[1] <= 0) {
        return;
    }
    if (!isdefined(var_dfd5412c.valuehud)) {
        /#
            hud = newdebughudelem();
            var_dfd5412c.valuehud = hud;
        #/
    }
    assert(isdefined(var_dfd5412c.valuehud));
    if (isdefined(var_dfd5412c.valuehud)) {
        var_fc6c677b = "white";
        /#
            var_dfd5412c.valuehud.x = var_ca1ec566[0];
            var_dfd5412c.valuehud.y = var_ca1ec566[1];
            var_dfd5412c.valuehud.alignx = "<unknown string>";
            var_dfd5412c.valuehud.color = var_dfd5412c.var_4a70ec60;
            var_dfd5412c.valuehud.alpha = var_dfd5412c.var_e2c0fdcb;
            var_dfd5412c.valuehud.foreground = 0;
            var_dfd5412c.valuehud.sort = 1;
            var_dfd5412c.valuehud setshader(var_fc6c677b, var_708cbe39[0], var_708cbe39[1]);
        #/
    }
}

// Namespace snd/namespace_d16177a1
// Params 0, eflags: 0x6 linked
// Checksum 0x96c05ee1, Offset: 0xb18
// Size: 0x1c2
function private function_ef6f1667() {
    if (isdefined(level.var_25a33bf1) == 1) {
        return;
    }
    level.var_25a33bf1 = 1;
    /#
        while (isdefined(level.var_9c2f3e27) == 1) {
            now = gettime();
            var_4359175b = array();
            foreach (hud in level.var_9c2f3e27) {
                assert(function_3132f113(hud) == 0);
                if (hud.duration > 0) {
                    var_4359175b[var_4359175b.size] = hud;
                    if (hud.time == now) {
                        continue;
                    }
                    hud.duration -= 1;
                    if (hud.var_1119082e <= now) {
                        hud.alpha = 0;
                        hud settext("<unknown string>");
                    }
                    continue;
                }
                hud destroy();
            }
            level.var_9c2f3e27 = var_4359175b;
            waitframe(1);
        }
    #/
}

// Namespace snd/namespace_d16177a1
// Params 1, eflags: 0x4
// Checksum 0x4bda61d2, Offset: 0xce8
// Size: 0x180
function private function_b506ee85(duration) {
    hud = undefined;
    now = gettime();
    var_1119082e = duration * 50;
    /#
        foreach (hud in level.var_9c2f3e27) {
            assert(function_3132f113(hud) == 0);
            if (now >= hud.var_1119082e) {
                hud.time = now;
                hud.var_1119082e = now + var_1119082e;
                hud.duration = duration;
                return hud;
            }
        }
        hud = newdebughudelem();
        hud.time = now;
        hud.var_1119082e = now + var_1119082e;
        hud.duration = duration;
        index = level.var_9c2f3e27.size;
        level.var_9c2f3e27[index] = hud;
    #/
    return hud;
}

// Namespace snd/namespace_d16177a1
// Params 7, eflags: 0x6 linked
// Checksum 0xa6344e48, Offset: 0xe70
// Size: 0x27e
function private function_2f282ca2(posx, posy, text, color, alpha, scale, duration) {
    var_51d80f45 = 640;
    var_a265fbc6 = 480;
    var_b03b36b6 = var_51d80f45 / var_a265fbc6;
    var_1790a507 = function_827811b5();
    var_38c41a5e = var_1790a507[0];
    var_c13d121d = var_1790a507[1];
    var_60d4d877 = var_38c41a5e / var_c13d121d;
    widthoffset = -0.5 * (var_a265fbc6 * var_60d4d877 - var_51d80f45);
    var_11ea799a = posx / var_38c41a5e * var_51d80f45 + (1 - posx / var_38c41a5e * 0.5) * widthoffset;
    var_39fdd05 = posy / var_c13d121d * var_a265fbc6;
    if (isdefined(level.var_9c2f3e27) == 0) {
        level.var_9c2f3e27 = array();
    }
    level thread function_ef6f1667();
    /#
        hud = function_b506ee85(duration);
        hud.x = var_11ea799a;
        hud.y = var_39fdd05;
        hud settext(text);
        hud.color = color;
        hud.alpha = alpha;
        hud.fontscale = scale * 0.5;
        hud.font = "<unknown string>";
        hud.alignx = "<unknown string>";
        hud.aligny = "<unknown string>";
        hud.var_eeaee6a5 = "<unknown string>";
        hud.vertalign = "<unknown string>";
        hud.xoffset = 0;
        hud.yoffset = 0;
        hud.xpadding = 0;
        hud.ypadding = 0;
    #/
}

// Namespace snd/namespace_d16177a1
// Params 1, eflags: 0x0
// Checksum 0x913f6db7, Offset: 0x10f8
// Size: 0x4a
function function_1f59f703(var_eb7d70a5) {
    if (isdefined(var_eb7d70a5) == 1 && var_eb7d70a5 != 0) {
        level.var_44a79f1b = &function_2f282ca2;
        return;
    }
    level.var_44a79f1b = undefined;
}

