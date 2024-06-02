// Atian COD Tools GSC CW decompiler test
#using script_85cd2e9a28ea8a1;
#using script_3dc93ca9902a9cda;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace snd;

// Namespace snd/snd_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xb581e2ad, Offset: 0x450
// Size: 0x4c
function isnumber(num) {
    var_e6fa5c22 = isfloat(num) || isint(num);
    return var_e6fa5c22;
}

// Namespace snd/snd_utility
// Params 2, eflags: 0x0
// Checksum 0xdf311b44, Offset: 0x4a8
// Size: 0x62
function function_a18ae88f(x, y) {
    quotient = floor(x / y);
    remainder = float(x - quotient * y);
    return remainder;
}

// Namespace snd/snd_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xc595595f, Offset: 0x518
// Size: 0xf8
function function_efda2d6d() {
    player = self;
    assert(function_e3a36342(self));
    vieworigin = undefined;
    if (isscriptfunctionptr(level._snd._callbacks[#"player_view"])) {
        vieworigin = player [[ level._snd._callbacks[#"player_view"] ]]();
    } else {
        vieworigin = player geteye();
    }
    assert(isvec(vieworigin));
    return vieworigin;
}

// Namespace snd/snd_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x1f26bcb7, Offset: 0x618
// Size: 0xf8
function function_3d31768f() {
    player = self;
    assert(function_e3a36342(self));
    viewangles = undefined;
    if (isscriptfunctionptr(level._snd._callbacks[#"player_angles"])) {
        viewangles = player [[ level._snd._callbacks[#"player_angles"] ]]();
    } else {
        viewangles = player getplayerangles();
    }
    assert(isvec(viewangles));
    return viewangles;
}

// Namespace snd/snd_utility
// Params 0, eflags: 0x0
// Checksum 0x60fad77, Offset: 0x718
// Size: 0x130
function function_731299e5() {
    player = self;
    assert(function_e3a36342(self));
    fov = undefined;
    if (isscriptfunctionptr(level._snd._callbacks[#"player_fov"])) {
        fov = player [[ level._snd._callbacks[#"player_fov"] ]]();
    } else {
        fov = getdvarfloat(#"cg_fov", 65);
    }
    assert(isfloat(fov));
    assert(fov <= 180);
    return fov;
}

// Namespace snd/snd_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x259b7d44, Offset: 0x850
// Size: 0x50
function function_ea2f17d1(variable, value) {
    if (isdefined(variable) == 1) {
        return variable;
    }
    assert(isdefined(value) == 1);
    return value;
}

// Namespace snd/snd_utility
// Params 1, eflags: 0x0
// Checksum 0xf94fbd8c, Offset: 0x8a8
// Size: 0x17a
function function_154caeff(v) {
    if (isvec(v) == 1) {
        avg = 0;
        avg += v[0];
        avg += v[1];
        avg += v[2];
        avg /= 3;
        return avg;
    }
    assert(isarray(v) == 1, "dprior");
    avg = (0, 0, 0);
    if (v.size == 0) {
        return avg;
    } else if (v.size == 1) {
        return v[0];
    }
    foreach (vec in v) {
        avg += vec;
    }
    avg /= v.size;
    return avg;
}

// Namespace snd/snd_utility
// Params 1, eflags: 0x0
// Checksum 0xa5402ab1, Offset: 0xa30
// Size: 0x70
function function_70dbede3(angle) {
    if (angle >= -180 && angle <= 180) {
        return angle;
    }
    while (angle < -180) {
        angle += 360;
    }
    while (angle > 180) {
        angle -= 360;
    }
    return angle;
}

// Namespace snd/snd_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x417d6fc9, Offset: 0xaa8
// Size: 0x5a
function getplayername(player) {
    if (isdefined(player) == 1) {
        if (isdefined(player.name) == 1) {
            return player.name;
        }
        if (isdefined(player.playername) == 1) {
            return player.playername;
        }
    }
    return undefined;
}

// Namespace snd/snd_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xf83168dd, Offset: 0xb10
// Size: 0x102
function function_f4127447(value) {
    if (isarray(value) == 1) {
        if (value.size >= 2) {
            min = value[0];
            max = value[1];
            if (min > max) {
                temp = max;
                max = min;
                min = temp;
            }
            assert(max >= min);
            randomrange = randomfloatrange(min, max);
            return randomrange;
        } else if (value.size == 1) {
            value = value[0];
        }
    }
    return float(value);
}

// Namespace snd/snd_utility
// Params 3, eflags: 0x2 linked
// Checksum 0x1a1fe386, Offset: 0xc20
// Size: 0xa6
function function_83328b67(var_f664a28b, var_20761299, var_94aa750c) {
    if (isdefined(var_f664a28b) && isdefined(var_20761299)) {
        if (var_f664a28b == var_20761299) {
            return var_f664a28b;
        } else {
            value = randomfloatrange(var_f664a28b, var_20761299);
            return value;
        }
    } else if (isdefined(var_f664a28b) == 1 && isdefined(var_20761299) == 0) {
        return var_f664a28b;
    } else if (isdefined(var_94aa750c)) {
        return var_94aa750c;
    }
    return undefined;
}

// Namespace snd/snd_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x1fff8ab1, Offset: 0xcd0
// Size: 0x16a
function function_84fc754d(range, var_5d61faa6) {
    randomrange = undefined;
    if (isarray(range) == 1) {
        if (range.size == 0) {
            return undefined;
        } else if (range.size == 1) {
            return float(range[0]);
        } else {
            rangemin = range[0];
            rangemax = range[1];
            randomrange = function_83328b67(rangemin, rangemax);
            return float(randomrange);
        }
    } else if (isarray(range) == 0 && isdefined(var_5d61faa6) == 1) {
        randomrange = function_83328b67(var_5d61faa6, range);
    } else {
        randomrange = range;
    }
    assert(isdefined(randomrange) == 1, "<unknown string>");
    return float(randomrange);
}

// Namespace snd/snd_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xcd242fe, Offset: 0xe48
// Size: 0x3e
function function_31bcd153(arr) {
    if (arr.size == 0) {
        return undefined;
    } else if (arr.size == 1) {
        return arr[0];
    }
    return arr;
}

// Namespace snd/snd_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x700ef11e, Offset: 0xe90
// Size: 0xc8
function function_f218bff5(v) {
    if (!isdefined(v)) {
        return array();
    } else if (isdefined(v) == 1 && function_3132f113(v) == 0 && isarray(v) == 1) {
    } else {
        return array(v);
    }
    assert(isarray(v) == 1);
    return v;
}

// Namespace snd/snd_utility
// Params 2, eflags: 0x0
// Checksum 0xf9b661d3, Offset: 0xf60
// Size: 0xf6
function function_4b879845(var_7620540d, v) {
    var_8c6d09f4 = isarray(var_7620540d);
    var_198b5115 = isdefined(v);
    if (function_81fac19d(!var_198b5115, "snd VarrayAdd undefined entity")) {
        return var_7620540d;
    }
    if (!var_8c6d09f4) {
        if (isdefined(var_7620540d)) {
            var_7620540d = array(var_7620540d, v);
        } else {
            var_7620540d = array(v);
        }
    } else if (var_8c6d09f4) {
        var_44d6e1c4 = isinarray(var_7620540d, v);
        if (!var_44d6e1c4) {
            var_7620540d[var_7620540d.size] = v;
        }
    }
    return var_7620540d;
}

// Namespace snd/snd_utility
// Params 2, eflags: 0x0
// Checksum 0x56c11786, Offset: 0x1060
// Size: 0xc8
function function_16b5f116(var_7620540d, v) {
    var_8c6d09f4 = isarray(var_7620540d);
    var_198b5115 = isdefined(v);
    if (function_81fac19d(!var_198b5115, "snd VarrayRemove undefined entity")) {
        return var_7620540d;
    }
    if (!var_8c6d09f4) {
        var_7620540d = undefined;
    } else if (var_8c6d09f4) {
        var_44d6e1c4 = isinarray(var_7620540d, v);
        if (var_44d6e1c4) {
            arrayremovevalue(var_7620540d, v);
        }
    }
    return var_7620540d;
}

// Namespace snd/snd_utility
// Params 2, eflags: 0x2 linked
// Checksum 0xc0539c1, Offset: 0x1130
// Size: 0xd0
function function_783b69(s, wrap) {
    s = function_ea2f17d1(s, "");
    wrap = function_ea2f17d1(wrap, "");
    str = "";
    /#
        if (ishash(s)) {
            if (wrap != "<unknown string>") {
                str = "<unknown string>";
            }
            s = function_9e72a96(s);
        }
    #/
    str += wrap + s + wrap;
    return str;
}

/#

    // Namespace snd/snd_utility
    // Params 2, eflags: 0x0
    // Checksum 0x587b060c, Offset: 0x1208
    // Size: 0xb8
    function function_8cb4e540(inputstring, var_329bae03) {
        prefix = "<unknown string>";
        outputstring = "<unknown string>";
        if (isstring(inputstring) && inputstring.size > 0 && inputstring.size < var_329bae03) {
            for (var_329bae03 -= inputstring.size; var_329bae03 >= 0; var_329bae03--) {
                prefix += "<unknown string>";
            }
        }
        outputstring = prefix + inputstring;
        return outputstring;
    }

#/

// Namespace snd/snd_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xb79cc543, Offset: 0x12c8
// Size: 0x13a
function function_dc4baa9(s) {
    if (isnumber(s) == 1) {
        return true;
    } else if (isstring(s) == 1 && s[0] == "0" || s[0] == "1" || s[0] == "2" || s[0] == "3" || s[0] == "4" || s[0] == "5" || s[0] == "6" || s[0] == "7" || s[0] == "8" || s[0] == "9" || s[0] == ".") {
        return true;
    }
    return false;
}

// Namespace snd/snd_utility
// Params 2, eflags: 0x0
// Checksum 0x80a7910, Offset: 0x1410
// Size: 0x246
function function_d6053a8f(inputvalue, var_29a5aeda) {
    if (isstring(inputvalue)) {
        return inputvalue;
    }
    var_29a5aeda = function_ea2f17d1(var_29a5aeda, 0);
    var_29a5aeda = int(min(var_29a5aeda, 6));
    intvalue = int(inputvalue);
    fractional = inputvalue - intvalue;
    switch (var_29a5aeda) {
    case 0:
        return ("" + intvalue);
    case 1:
        fractional = int(fractional * 10);
        break;
    case 2:
        fractional = int(fractional * 100);
        break;
    case 3:
        fractional = int(fractional * 1000);
        break;
    case 4:
        fractional = int(fractional * 10000);
        break;
    case 5:
        fractional = int(fractional * 10000);
        break;
    case 6:
    default:
        fractional = int(fractional * 100000);
        break;
    }
    var_dd5cb52a = intvalue + "." + fractional;
    return var_dd5cb52a;
}

// Namespace snd/snd_utility
// Params 1, eflags: 0x0
// Checksum 0x61853466, Offset: 0x1660
// Size: 0xfc
function function_6afe83c4(arr) {
    foreach (i, item in arr) {
        var_4c1ba7d3 = isstring(item);
        var_e6fa5c22 = function_dc4baa9(item);
        if (var_4c1ba7d3 == 1 && var_e6fa5c22 == 1) {
            arr[i] = int(item);
        }
    }
    return arr;
}

// Namespace snd/snd_utility
// Params 1, eflags: 0x0
// Checksum 0x7d23fd73, Offset: 0x1768
// Size: 0xfc
function function_64a5440a(arr) {
    foreach (i, item in arr) {
        var_4c1ba7d3 = isstring(item);
        var_e6fa5c22 = function_dc4baa9(item);
        if (var_4c1ba7d3 == 1 && var_e6fa5c22 == 1) {
            arr[i] = float(item);
        }
    }
    return arr;
}

// Namespace snd/snd_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x7290aa4b, Offset: 0x1870
// Size: 0xd0
function function_7284a22a(thing) {
    position = undefined;
    if (function_3132f113(thing) == 0 && isdefined(thing.origin)) {
        position = thing.origin;
    } else if (isvec(thing) == 1) {
        position = thing;
    } else {
        assert(0);
    }
    assert(isvec(position) == 1, "<unknown string>");
    return position;
}

// Namespace snd/snd_utility
// Params 1, eflags: 0x0
// Checksum 0x8d93bdd4, Offset: 0x1948
// Size: 0xd2
function function_322e32be(array) {
    assert(isarray(array) == 1, "<unknown string>");
    if (array.size == 1) {
        return array[0];
    }
    randomindex = randomintrange(1, array.size);
    randomindex -= 1;
    assert(randomindex >= 0 && randomindex < array.size - 1);
    randomelement = array[randomindex];
    return randomelement;
}

// Namespace snd/snd_utility
// Params 1, eflags: 0x0
// Checksum 0x9122cb2, Offset: 0x1a28
// Size: 0x7e
function function_2ba9b0fd(str) {
    intvalue = int(str);
    if (intvalue > 0) {
        return true;
    } else if (intvalue < 0) {
        return true;
    } else if (intvalue == 0 && str == "0") {
        return true;
    }
    return false;
}

// Namespace snd/snd_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xe4fa8f0c, Offset: 0x1ab0
// Size: 0x82
function function_1114d717(target) {
    ents = getentarray(target, "targetname");
    structs = struct::get_array(target, "targetname");
    targets = arraycombine(ents, structs);
    return targets;
}

// Namespace snd/snd_utility
// Params 3, eflags: 0x0
// Checksum 0xe43ff3f1, Offset: 0x1b40
// Size: 0xe6
function function_e8185c19(currentvalue, var_2901828, var_dc0a4660) {
    if (var_dc0a4660 == 0) {
        return currentvalue;
    } else if (var_dc0a4660 == 1) {
        /#
            text = "<unknown string>";
            println(text);
            iprintlnbold(text);
        #/
        return var_2901828;
    }
    var_dc0a4660 = math::clamp(var_dc0a4660, 0, 1);
    var_bf1cf581 = 1 - var_dc0a4660;
    var_2901828 = currentvalue * var_bf1cf581 + var_2901828 * var_dc0a4660;
    return var_2901828;
}

// Namespace snd/snd_utility
// Params 3, eflags: 0x2 linked
// Checksum 0x528383f5, Offset: 0x1c30
// Size: 0x3a
function function_a5300865(value, minvalue, maxvalue) {
    if (value >= minvalue && value <= maxvalue) {
        return true;
    }
    return false;
}

// Namespace snd/snd_utility
// Params 3, eflags: 0x0
// Checksum 0xe19d60af, Offset: 0x1c78
// Size: 0x52
function function_6ecb085(value, midvalue, var_2c789a2) {
    isinrange = function_a5300865(value, midvalue - var_2c789a2, midvalue + var_2c789a2);
    return isinrange;
}

// Namespace snd/snd_utility
// Params 0, eflags: 0x0
// Checksum 0x61a1a9c0, Offset: 0x1cd8
// Size: 0x6e
function function_8f8470eb() {
    assert(isdefined(self) == 1);
    while (function_3132f113(self) == 0) {
        self waittill(#"death", #"disconnect");
    }
}

// Namespace snd/snd_utility
// Params 2, eflags: 0x0
// Checksum 0x78aea258, Offset: 0x1d50
// Size: 0x42e
function function_69fd73ba(target, range) {
    self endon(#"death");
    src = self;
    var_5f3e2817 = undefined;
    var_9d415208 = undefined;
    if (isarray(range)) {
        assert(range.size == 2);
        var_5f3e2817 = float(range[0]);
        var_9d415208 = float(range[1]);
        assert(var_9d415208 >= var_5f3e2817);
    } else if (isnumber(range)) {
        var_5f3e2817 = float(range);
    }
    assert(isfloat(var_5f3e2817));
    var_39e18923 = abs(var_5f3e2817);
    while (isdefined(src) && isdefined(target)) {
        spt = function_7284a22a(src);
        var_727198c5 = function_7284a22a(target);
        current_distance = distance(spt, var_727198c5);
        if (isfloat(var_9d415208)) {
            if (current_distance <= var_9d415208 && current_distance >= var_5f3e2817) {
                return;
            }
        } else {
            if (var_5f3e2817 > 0 && current_distance >= var_5f3e2817) {
                return;
            }
            if (var_5f3e2817 <= 0 && current_distance <= var_39e18923) {
                return;
            }
        }
        /#
            if (function_95c9af4b() > 0) {
                var_97fd701c = randomfloatrange(0.72974, 1);
                var_c1cc0d4 = randomfloatrange(0.5, 1);
                var_2078e37a = randomfloatrange(0.5, 1);
                var_c8cfc057 = (var_97fd701c, var_c1cc0d4, var_2078e37a);
                var_c8cfc057 = vectornormalize(var_c8cfc057);
                var_597aa60f = function_d6053a8f(current_distance, 0) + "<unknown string>" + var_39e18923;
                if (isfloat(var_9d415208)) {
                    var_597aa60f += "<unknown string>" + var_9d415208;
                    if (var_9d415208 > 0) {
                        function_b95b9a60(var_727198c5, var_9d415208, var_c8cfc057, 1, 1);
                    }
                }
                if (var_39e18923 > 0) {
                    function_b95b9a60(var_727198c5, var_39e18923, var_c8cfc057, 1, 1);
                }
                function_ac033c46(var_597aa60f, var_727198c5 + (0, 0, 4), -0.75, "<unknown string>", var_c8cfc057, 1, (0, 0, 0), 0.72974, (1, 1, 1), 0.72974);
            }
        #/
        waitframe(1);
    }
}

// Namespace snd/snd_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xe3600c07, Offset: 0x2188
// Size: 0x50
function function_e3a36342(player) {
    if (isdefined(player) && isentity(player) && isplayer(player)) {
        return true;
    }
    return false;
}

// Namespace snd/snd_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xca88da55, Offset: 0x21e0
// Size: 0x142
function function_2b2b83dc(team) {
    if (is_true(level._snd.var_8c37ff34)) {
        players = getplayers(0, team);
        foreach (player in players) {
            if (!function_e3a36342(player)) {
                arrayremovevalue(players, player);
            }
        }
        return players;
    }
    if (is_true(level._snd.var_2dd09170)) {
        players = getplayers(team);
        return players;
    }
    return array();
}

// Namespace snd/snd_utility
// Params 1, eflags: 0x0
// Checksum 0x97344205, Offset: 0x2330
// Size: 0xbe
function function_a8210e43(localclientnum) {
    players = function_2b2b83dc();
    foreach (player in players) {
        if (isdefined(player.localclientnum) && player.localclientnum == localclientnum) {
            return player;
        }
    }
    return undefined;
}

// Namespace snd/snd_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xb32c93ee, Offset: 0x23f8
// Size: 0x6c
function waitforplayers() {
    while (true) {
        function_294cb4fa();
        players = function_2b2b83dc();
        if (isarray(players) && players.size > 0) {
            break;
        }
        waitframe(1);
    }
}

// Namespace snd/snd_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xea1e9720, Offset: 0x2470
// Size: 0x42
function function_da785aa8(team) {
    waitforplayers();
    players = function_2b2b83dc(team);
    return players;
}

// Namespace snd/snd_utility
// Params 0, eflags: 0x0
// Checksum 0xf8783f17, Offset: 0x24c0
// Size: 0x8a
function function_869cb8c6() {
    if (is_true(level._snd.var_8c37ff34)) {
        return int(60);
    }
    if (is_true(level._snd.var_2dd09170)) {
        return int(20);
    }
    return float(20);
}

// Namespace snd/snd_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x33d1ac66, Offset: 0x2558
// Size: 0x8a
function function_6cfa7975() {
    if (is_true(level._snd.var_8c37ff34)) {
        return float(0.0166667);
    }
    if (is_true(level._snd.var_2dd09170)) {
        return float(0.05);
    }
    return float(0.05);
}

// Namespace snd/snd_utility
// Params 2, eflags: 0x0
// Checksum 0x900a0db3, Offset: 0x25f0
// Size: 0xa4
function function_41df60ba(framecount, var_5bc3280a) {
    frametime = 0.0333333 * framecount;
    if (isdefined(var_5bc3280a) == 0) {
        var_5bc3280a = 0;
    }
    waittime = frametime + var_5bc3280a;
    if (waittime <= 0) {
        println("<unknown string>" + waittime + "<unknown string>");
        return;
    }
    wait(waittime);
}

// Namespace snd/snd_utility
// Params 5, eflags: 0x2 linked
// Checksum 0x44992f1b, Offset: 0x26a0
// Size: 0x92
function function_a0a15145(var_20694abe, var_4bbb9191, var_79a551f0, var_50c632d3, var_338eef61) {
    if (var_4bbb9191 == var_79a551f0) {
        var_79a551f0 += 0.001;
    }
    if (var_50c632d3 == var_338eef61) {
        var_338eef61 += 0.001;
    }
    var_ff6041fe = mapfloat(var_4bbb9191, var_79a551f0, var_50c632d3, var_338eef61, var_20694abe);
    return var_ff6041fe;
}

// Namespace snd/snd_utility
// Params 2, eflags: 0x4
// Checksum 0xe5f518d9, Offset: 0x2740
// Size: 0x80
function private function_e17840b5(vector, scale) {
    assert(isvec(vector));
    assert(isnumber(scale));
    var_7dd54c4 = vector * (scale, scale, scale);
    return var_7dd54c4;
}

// Namespace snd/snd_utility
// Params 1, eflags: 0x6 linked
// Checksum 0x7a8301c4, Offset: 0x27c8
// Size: 0xb6
function private function_afb43113(vector) {
    largestindex = 0;
    var_d7a0aa89 = 0;
    mult = 1;
    var_35f90ba = vector;
    for (i = 0; i < 3; i++) {
        v = vector[i];
        if (v > var_d7a0aa89) {
            largestindex = i;
            var_d7a0aa89 = v;
        }
    }
    mult = 1 / var_d7a0aa89;
    var_35f90ba = vectorscale(var_35f90ba, mult);
    return var_35f90ba;
}

// Namespace snd/snd_utility
// Params 3, eflags: 0x2 linked
// Checksum 0xadf196ab, Offset: 0x2888
// Size: 0xf4
function function_d782c0a0(v, min, max) {
    if (isnumber(min)) {
        min = (min, min, min);
    }
    if (isnumber(max)) {
        max = (max, max, max);
    }
    var_350ab2ee = v;
    var_350ab2ee = (math::clamp(var_350ab2ee[0], min[0], max[0]), math::clamp(var_350ab2ee[1], min[1], max[1]), math::clamp(var_350ab2ee[2], min[2], max[2]));
    return var_350ab2ee;
}

// Namespace snd/snd_utility
// Params 2, eflags: 0x0
// Checksum 0xf91fd052, Offset: 0x2988
// Size: 0x4a
function function_e39f92b0(vector, scale) {
    var_7dd54c4 = vectorscale(vector, scale);
    var_278d442d = function_afb43113(var_7dd54c4);
    return var_278d442d;
}

// Namespace snd/snd_utility
// Params 2, eflags: 0x0
// Checksum 0xc93d2ec2, Offset: 0x29e0
// Size: 0x52
function function_2677a7e2(vector, scale) {
    var_7dd54c4 = vectorscale(vector, scale);
    var_78886e0f = function_d782c0a0(var_7dd54c4, (0, 0, 0), (1, 1, 1));
    return var_78886e0f;
}

// Namespace snd/snd_utility
// Params 1, eflags: 0x0
// Checksum 0x2448aa6, Offset: 0x2a40
// Size: 0x6c
function function_27c74b9d(inches) {
    assert(isnumber(inches) == 1, "<unknown string>");
    return float(inches) * 0.0833333;
}

// Namespace snd/snd_utility
// Params 1, eflags: 0x0
// Checksum 0x4badd599, Offset: 0x2ab8
// Size: 0x6c
function function_5a06b6bd(inches) {
    assert(isnumber(inches) == 1, "<unknown string>");
    return float(inches) * 0.0254;
}

// Namespace snd/snd_utility
// Params 3, eflags: 0x0
// Checksum 0x4db46f00, Offset: 0x2b30
// Size: 0x50
function function_c8caaab4(point, sphere_origin, radius) {
    dist = distance(point, sphere_origin);
    if (dist <= radius) {
        return true;
    }
    return false;
}

// Namespace snd/snd_utility
// Params 4, eflags: 0x2 linked
// Checksum 0x1c8846bd, Offset: 0x2b88
// Size: 0x184
function function_160366e9(centerorigin, dist, var_3c67b910, var_cbf878e6) {
    if (isdefined(dist) == 0 || dist <= 0) {
        return centerorigin;
    }
    var_3c67b910 = function_ea2f17d1(var_3c67b910, 0);
    var_cbf878e6 = function_ea2f17d1(var_cbf878e6, 0);
    var_3c67b910 += 180;
    var_cbf878e6 += 270;
    posx = centerorigin[0];
    posy = centerorigin[1];
    posz = centerorigin[2];
    posx += dist * sin(var_cbf878e6) * cos(var_3c67b910);
    posy += dist * sin(var_cbf878e6) * sin(var_3c67b910);
    posz += dist * cos(var_cbf878e6);
    position = (posx, posy, posz);
    return position;
}

// Namespace snd/snd_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x3d7f96ed, Offset: 0x2d18
// Size: 0xe8
function function_bf7c949(var_aaa97ea4) {
    ent = self;
    tagname = "";
    tagorigin = undefined;
    if (is_true(level._snd.var_8c37ff34)) {
        tagname = "tag_origin";
    }
    if (isdefined(var_aaa97ea4) == 1) {
        tagorigin = ent gettagorigin(var_aaa97ea4);
    }
    if (isdefined(tagorigin) == 1) {
        tagname = tolower(var_aaa97ea4);
    }
    assert(isdefined(tagname) == 1, "<unknown string>");
    return tagname;
}

// Namespace snd/snd_utility
// Params 3, eflags: 0x0
// Checksum 0xf128e108, Offset: 0x2e08
// Size: 0x10c
function function_1666c97e(origin, angles, extents) {
    mins = origin - extents;
    maxs = origin + extents;
    delta = maxs - mins;
    var_765f4a63 = (randomfloat(delta[0]), randomfloat(delta[1]), randomfloat(delta[2]));
    if (angles != (0, 0, 0)) {
        mins = origin - rotatepoint(origin - mins, angles);
        var_765f4a63 = rotatepoint(var_765f4a63, angles);
    }
    randompoint = mins + var_765f4a63;
    return randompoint;
}

// Namespace snd/snd_utility
// Params 0, eflags: 0x2 linked
// Checksum 0x65fdc0c1, Offset: 0x2f20
// Size: 0x1aa
function function_827811b5() {
    var_38c41a5e = 1920;
    var_c13d121d = 1080;
    if (ispc()) {
        isfullscreen = getdvarint(#"r_fullscreen", 0);
        if (isfullscreen) {
            mode = getdvar(#"r_fullscreenmode", "800x600");
            var_e1d2ab75 = strtok(mode, "x");
            if (isarray(var_e1d2ab75) && var_e1d2ab75.size >= 2) {
                var_38c41a5e = int(var_e1d2ab75[0]);
                var_c13d121d = int(var_e1d2ab75[1]);
            }
        } else {
            var_38c41a5e = getdvarint(#"hash_799d70a49cc79c0f", 1920);
            var_c13d121d = getdvarint(#"hash_526c340ae912bbd0", 1080);
        }
    }
    resolution = array(var_38c41a5e, var_c13d121d);
    return resolution;
}

// Namespace snd/snd_utility
// Params 0, eflags: 0x0
// Checksum 0x37541c9b, Offset: 0x30d8
// Size: 0x46
function function_95c9af4b() {
    /#
        if (isdefined(level._snd._debug.debuglevel)) {
            return level._snd._debug.debuglevel;
        }
    #/
    return 0;
}

// Namespace snd/snd_utility
// Params 0, eflags: 0x0
// Checksum 0xdef259f1, Offset: 0x3128
// Size: 0x28
function function_d78e3644() {
    /#
        if (function_95c9af4b() > 0) {
            return true;
        }
    #/
    return false;
}

// Namespace snd/snd_utility
// Params 0, eflags: 0x2 linked
// Checksum 0xadf92af3, Offset: 0x3158
// Size: 0x2a
function function_f984063f() {
    /#
        if (function_95c9af4b() > 2) {
            return true;
        }
    #/
    return false;
}

// Namespace snd/snd_utility
// Params 0, eflags: 0x0
// Checksum 0x7fc974e2, Offset: 0x3190
// Size: 0x4f6
function function_15ba1770() {
    usernames = ["jgosselin", "mdenis", "ntremblay", "plgrondines", "prenaud", "vleroux", "cbello", "csakanai", "imika", "jdrelick", "tbader", "carya", "cegert", "cstaples", "cchristensen", "dnatale", "dprior", "drowe", "smiller", "sprovine", "tleeamies", "tstasica", "abayless", "abrown", "bkreimeier", "dblondin", "jharley", "jsypult", "jtennies", "kkozlowski", "ndamato", "rsmsnjmiller", "jmiller", "vnuniyants", "dveca", "dswenson", "elopez", "flabarthe", "kchau", "mcaisley", "mgrimm", "midavies", "rmcsweeney", "bbitonti", "btuey", "cayers", "cdinkel", "hplunkard", "jmccawley", "ksherwood", "lstaples", "rgarigliano", "seckert", "sjimmerson", "wcornell"];
    players = function_2b2b83dc();
    if (isarray(players)) {
        foreach (player in players) {
            playername = getplayername(player);
            if (isdefined(playername)) {
                foreach (username in usernames) {
                    if (issubstr(playername, username)) {
                        setdvar(#"hash_7bf92664f192f2a2", "1");
                        return;
                    }
                }
            }
        }
    }
}

// Namespace snd/snd_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x9eb13944, Offset: 0x3690
// Size: 0x58
function function_81fac19d(condition, alerttext) {
    /#
        if (condition) {
            if (function_d78e3644() == 1) {
                function_3ba3cecb(alerttext);
            }
        }
    #/
    return condition;
}

// Namespace snd/snd_utility
// Params 1, eflags: 0x0
// Checksum 0xff031cb2, Offset: 0x36f0
// Size: 0x74
function function_7b45efc6(volume) {
    var_aaa0f6d6 = log(float(volume)) / log(10);
    var_13be1590 = 20 * var_aaa0f6d6;
    return var_13be1590;
}

// Namespace snd/snd_utility
// Params 1, eflags: 0x0
// Checksum 0x5046476e, Offset: 0x3770
// Size: 0x52
function function_359f7bac(var_13be1590) {
    volume = pow(10, float(var_13be1590) / 20);
    return volume;
}

// Namespace snd/snd_utility
// Params 1, eflags: 0x0
// Checksum 0xd630c1e5, Offset: 0x37d0
// Size: 0x52
function function_d8b24901(var_c787ff80) {
    pitchscale = pow(2, float(var_c787ff80) / 12);
    return pitchscale;
}

// Namespace snd/snd_utility
// Params 1, eflags: 0x0
// Checksum 0x3159f07, Offset: 0x3830
// Size: 0x74
function function_9bf57bf0(pitch) {
    var_1183b32a = log(float(pitch)) / log(2);
    var_c787ff80 = 12 * var_1183b32a;
    return var_c787ff80;
}

// Namespace snd/snd_utility
// Params 4, eflags: 0x0
// Checksum 0xeaccb739, Offset: 0x38b0
// Size: 0xb4
function function_e75e9ba1(animname, animtree, notifyname, rate) {
    if (isdefined(level.var_31efd858) == 0) {
        function_81fac19d(isdefined(level.var_31efd858) == 0, "rvPlayAnimation was not initialized!");
        return;
    }
    if (isdefined(notifyname) == 0) {
        notifyname = "animnotetrack";
    }
    if (isdefined(rate) == 0) {
        rate = 1;
    }
    self thread [[ level.var_31efd858 ]](animname, animtree, notifyname, rate);
}

// Namespace snd/snd_utility
// Params 0, eflags: 0x0
// Checksum 0x10459f1e, Offset: 0x3970
// Size: 0x18
function dvar_shutdown() {
    level notify(#"hash_6cc074e33d3d4045");
}

// Namespace snd/snd_utility
// Params 0, eflags: 0x6 linked
// Checksum 0x7923d97e, Offset: 0x3990
// Size: 0x244
function private function_225d1cb8() {
    level notify(#"hash_6cc074e33d3d4045");
    level endon(#"hash_6cc074e33d3d4045");
    level endon(#"game_ended");
    while (true) {
        foreach (dvar in level.var_ebd8d6b1) {
            callback = dvar.callback;
            key = dvar.key;
            value = getdvar(key);
            if (isdefined(callback) && isdefined(key) && isdefined(value) && dvar.value != value) {
                returnvalue = [[ callback ]](key, value);
                if (isdefined(returnvalue)) {
                    setdvar(key, returnvalue);
                    dvar.value = returnvalue;
                    continue;
                }
                dvar.value = value;
            }
        }
        waitframe(1);
        if (isdefined(level.hostmigrationtimer)) {
            level waittill(#"host_migration_end");
            foreach (dvar in level.var_ebd8d6b1) {
                function_b7598ee(dvar.key, dvar.value);
            }
        }
    }
}

// Namespace snd/snd_utility
// Params 0, eflags: 0x6 linked
// Checksum 0x278faa24, Offset: 0x3be0
// Size: 0x4c
function private function_d517905b() {
    if (isdefined(level.var_ebd8d6b1) == 0) {
        level.var_ebd8d6b1 = array();
        level thread function_225d1cb8();
    }
}

// Namespace snd/snd_utility
// Params 3, eflags: 0x6 linked
// Checksum 0x843d5747, Offset: 0x3c38
// Size: 0xb4
function private function_3710d450(dvar, value, callback) {
    function_32e7473e(dvar);
    level.var_ebd8d6b1[dvar] = spawnstruct();
    level.var_ebd8d6b1[dvar].callback = callback;
    level.var_ebd8d6b1[dvar].key = dvar;
    level.var_ebd8d6b1[dvar].value = value;
    function_b7598ee(dvar, value);
}

// Namespace snd/snd_utility
// Params 2, eflags: 0x6 linked
// Checksum 0xb507d736, Offset: 0x3cf8
// Size: 0x2c
function private function_b7598ee(dvar, value) {
    function_5ac4dc99(dvar, value);
}

// Namespace snd/snd_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x61eea74d, Offset: 0x3d30
// Size: 0x30
function function_32e7473e(dvar) {
    if (isdefined(level.var_ebd8d6b1[dvar])) {
        level.var_ebd8d6b1[dvar] = undefined;
    }
}

// Namespace snd/snd_utility
// Params 3, eflags: 0x0
// Checksum 0xba2b9bfa, Offset: 0x3d68
// Size: 0x44
function dvar(dvar, value, callback) {
    function_d517905b();
    function_3710d450(dvar, value, callback);
}

// Namespace snd/snd_utility
// Params 10, eflags: 0x6 linked
// Checksum 0x61875585, Offset: 0x3db8
// Size: 0x206
function private function_98a0f33(callbackfunc, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) {
    assert(isdefined(self) == 1);
    assert(isdefined(callbackfunc) == 1);
    assert(isscriptfunctionptr(callbackfunc) == 1);
    if (isdefined(arg9)) {
        self [[ callbackfunc ]](arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
    }
    if (isdefined(arg8)) {
        self [[ callbackfunc ]](arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
    }
    if (isdefined(arg7)) {
        self [[ callbackfunc ]](arg1, arg2, arg3, arg4, arg5, arg6, arg7);
    }
    if (isdefined(arg6)) {
        self [[ callbackfunc ]](arg1, arg2, arg3, arg4, arg5, arg6);
    }
    if (isdefined(arg5)) {
        self [[ callbackfunc ]](arg1, arg2, arg3, arg4, arg5);
    }
    if (isdefined(arg4)) {
        self [[ callbackfunc ]](arg1, arg2, arg3, arg4);
    }
    if (isdefined(arg3)) {
        self [[ callbackfunc ]](arg1, arg2, arg3);
        return;
    }
    if (isdefined(arg2)) {
        self [[ callbackfunc ]](arg1, arg2);
        return;
    }
    if (isdefined(arg1)) {
        self [[ callbackfunc ]](arg1);
        return;
    }
    self [[ callbackfunc ]]();
}

// Namespace snd/snd_utility
// Params 10, eflags: 0x6 linked
// Checksum 0x84212b73, Offset: 0x3fc8
// Size: 0x1fe
function private function_8a64a4ec(callbackfunc, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) {
    assert(isdefined(self) == 1);
    assert(isdefined(callbackfunc) == 1);
    assert(iscodefunctionptr(callbackfunc) == 0);
    if (isdefined(arg9)) {
        self [[ callbackfunc ]](arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
    }
    if (isdefined(arg8)) {
        self [[ callbackfunc ]](arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
    }
    if (isdefined(arg7)) {
        self [[ callbackfunc ]](arg1, arg2, arg3, arg4, arg5, arg6, arg7);
    }
    if (isdefined(arg6)) {
        self [[ callbackfunc ]](arg1, arg2, arg3, arg4, arg5, arg6);
    }
    if (isdefined(arg5)) {
        self [[ callbackfunc ]](arg1, arg2, arg3, arg4, arg5);
    }
    if (isdefined(arg4)) {
        self [[ callbackfunc ]](arg1, arg2, arg3, arg4);
    }
    if (isdefined(arg3)) {
        self [[ callbackfunc ]](arg1, arg2, arg3);
        return;
    }
    if (isdefined(arg2)) {
        self [[ callbackfunc ]](arg1, arg2);
        return;
    }
    if (isdefined(arg1)) {
        self [[ callbackfunc ]](arg1);
        return;
    }
    self [[ callbackfunc ]]();
}

// Namespace snd/snd_utility
// Params 10, eflags: 0x2 linked
// Checksum 0x8c58c6c0, Offset: 0x41d0
// Size: 0x124
function function_df40860c(callbackfunc, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) {
    assert(isdefined(self) == 1);
    assert(isdefined(callbackfunc) == 1);
    if (isscriptfunctionptr(callbackfunc) == 1) {
        self function_98a0f33(callbackfunc, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
        return;
    }
    if (iscodefunctionptr(callbackfunc) == 1) {
        self function_8a64a4ec(callbackfunc, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
    }
}

// Namespace snd/snd_utility
// Params 10, eflags: 0x0
// Checksum 0x95a71d52, Offset: 0x4300
// Size: 0x7c
function function_b3acadc6(callbackfunc, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) {
    self thread function_df40860c(callbackfunc, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
}

/#

    // Namespace snd/snd_utility
    // Params 3, eflags: 0x4
    // Checksum 0xc9c449b7, Offset: 0x4388
    // Size: 0x1a8
    function private function_9cae113f(soundalias, column, var_46195ad8) {
        if (soundexists(soundalias) == 0) {
            return undefined;
        }
        var_7cfa497b = function_9119c373(soundalias, column);
        if (isdefined(var_7cfa497b) == 0 || "<unknown string>" + var_7cfa497b == "<unknown string>") {
            return undefined;
        }
        var_434eefbd = float(var_7cfa497b);
        for (secondaryalias = function_9119c373(soundalias, "<unknown string>"); isdefined(secondaryalias) == 1 && secondaryalias != "<unknown string>"; secondaryalias = function_9119c373(secondaryalias, "<unknown string>")) {
            var_7cfa497b = function_9119c373(soundalias, column);
            var_7cfa497b = float(var_7cfa497b);
            if (var_46195ad8 == "<unknown string>") {
                var_434eefbd = min(var_434eefbd, var_7cfa497b);
                continue;
            }
            if (var_46195ad8 == "<unknown string>") {
                var_434eefbd = max(var_434eefbd, var_7cfa497b);
            }
        }
        return var_434eefbd;
    }

    // Namespace snd/snd_utility
    // Params 2, eflags: 0x0
    // Checksum 0x1d875703, Offset: 0x4538
    // Size: 0x44
    function function_7139f5ae(soundalias, column) {
        minvalue = function_9cae113f(soundalias, column, "<unknown string>");
        return minvalue;
    }

    // Namespace snd/snd_utility
    // Params 2, eflags: 0x0
    // Checksum 0xdb2d57ba, Offset: 0x4588
    // Size: 0x44
    function function_10120598(soundalias, column) {
        maxvalue = function_9cae113f(soundalias, column, "<unknown string>");
        return maxvalue;
    }

#/

// Namespace snd/snd_utility
// Params 1, eflags: 0x2 linked
// Checksum 0xaed236ad, Offset: 0x45d8
// Size: 0x9a
function function_636a2037(decimal) {
    var_c6e8bc8d = "0123456789ABCDEF";
    quotient = int(decimal);
    hexadecimal = "";
    while (quotient != 0) {
        remainder = quotient % 16;
        hexadecimal = var_c6e8bc8d[remainder] + hexadecimal;
        quotient >>= 4;
    }
    return hexadecimal;
}

// Namespace snd/snd_utility
// Params 1, eflags: 0x2 linked
// Checksum 0x6a615d39, Offset: 0x4680
// Size: 0x292
function function_cc1eeb91(hex) {
    hex = string(hex);
    intvalue = int(0);
    for (i = 0; i < hex.size; i++) {
        var_f7bc2b2f = hex[i];
        var_59c6ddd3 = 0;
        switch (var_f7bc2b2f) {
        case #"5":
        case #"4":
        case #"7":
        case #"6":
        case #"1":
        case #"0":
        case #"3":
        case #"2":
        case #"9":
        case #"8":
            var_59c6ddd3 = int(var_f7bc2b2f);
            break;
        case #"a":
        case #"a":
            var_59c6ddd3 = 10;
            break;
        case #"b":
        case #"b":
            var_59c6ddd3 = 11;
            break;
        case #"c":
        case #"c":
            var_59c6ddd3 = 12;
            break;
        case #"d":
        case #"d":
            var_59c6ddd3 = 13;
            break;
        case #"e":
        case #"e":
            var_59c6ddd3 = 14;
            break;
        case #"f":
        case #"f":
            var_59c6ddd3 = 15;
            break;
        }
        intvalue = int(intvalue << 4 | int(var_59c6ddd3));
    }
    return intvalue;
}

// Namespace snd/snd_utility
// Params 1, eflags: 0x0
// Checksum 0xf6bda9b0, Offset: 0x4920
// Size: 0x52
function function_c65c3de8(hashvalue) {
    intvalue = int(hashvalue);
    var_f76bdca5 = function_636a2037(intvalue);
    return var_f76bdca5;
}

// Namespace snd/snd_utility
// Params 1, eflags: 0x0
// Checksum 0x332350c1, Offset: 0x4980
// Size: 0x52
function function_35dccf3f(hex) {
    intvalue = function_cc1eeb91(hex);
    hashvalue = hash(intvalue);
    return hashvalue;
}

// Namespace snd/snd_utility
// Params 1, eflags: 0x0
// Checksum 0x8bee4799, Offset: 0x49e0
// Size: 0x52
function function_cc5643b5(str) {
    hashvalue = hash(str);
    var_f76bdca5 = string(hashvalue);
    return var_f76bdca5;
}

/#

    // Namespace snd/snd_utility
    // Params 1, eflags: 0x0
    // Checksum 0xe0d69c35, Offset: 0x4a40
    // Size: 0x54
    function function_3626f311(hex) {
        hashvalue = function_35dccf3f(hex);
        stringvalue = function_9e72a96(hashvalue);
        return stringvalue;
    }

#/

// Namespace snd/snd_utility
// Params 2, eflags: 0x2 linked
// Checksum 0x5e7a1a7a, Offset: 0x4aa0
// Size: 0x2d0
function function_33ccce67(scenedef, var_1465c5e2) {
    var_1465c5e2 = function_ea2f17d1(var_1465c5e2, 1);
    instances = array();
    var_558dab14 = struct::get_array(scenedef, "scriptbundlename");
    instances = arraycombine(var_558dab14, instances, 0, 0);
    var_f57a8d58 = scene::get_active_scenes(scenedef);
    instances = arraycombine(var_f57a8d58, instances, 0, 0);
    var_2536a531 = scene::get_inactive_scenes(scenedef);
    instances = arraycombine(var_2536a531, instances, 0, 0);
    var_9f7f4078 = array();
    if (isarray(instances) && instances.size > 0) {
        foreach (i in instances) {
            if (isarray(i.scene_ents)) {
                var_9f7f4078 = arraycombine(i.scene_ents, var_9f7f4078, 0, 0);
                arrayremovevalue(var_9f7f4078, undefined, 0);
                if (var_1465c5e2) {
                    foreach (e in var_9f7f4078) {
                        if (function_e3a36342(e)) {
                            arrayremovevalue(var_9f7f4078, e, 0);
                        }
                    }
                }
            }
        }
    }
    return var_9f7f4078;
}

