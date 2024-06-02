// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\cp_common\gametypes\globallogic_ui.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_61e6d095;

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x5
// Checksum 0x9e52226f, Offset: 0x548
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_7f2a4dd4a17f2f59", &preload, undefined, undefined, undefined);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x6 linked
// Checksum 0xb2b65a3b, Offset: 0x590
// Size: 0x31c
function private preload() {
    level.var_61e6d095 = spawnstruct();
    level.var_61e6d095.active = [];
    level.var_61e6d095.hidden = [];
    level.var_61e6d095.var_db65bf2f = [];
    level.var_61e6d095.inputs = [];
    level.var_61e6d095.inputs[#"ui_confirm"] = "confirm";
    level.var_61e6d095.inputs[#"hash_3c27402259e4c18e"] = "cancel";
    level.var_61e6d095.inputs[#"hash_278b9a3955f6e5a"] = "alt1";
    level.var_61e6d095.inputs[#"hash_278b8a3955f6ca7"] = "alt2";
    level.var_61e6d095.inputs[#"ui_navup"] = "navup";
    level.var_61e6d095.inputs[#"ui_navdown"] = "navdown";
    level.var_61e6d095.inputs[#"ui_navleft"] = "navleft";
    level.var_61e6d095.inputs[#"ui_navright"] = "navright";
    level.var_61e6d095.inputs[#"ui_prevtab"] = "prevtab";
    level.var_61e6d095.inputs[#"ui_nexttab"] = "nexttab";
    level.var_61e6d095.inputs[#"hash_5686e6f2a8315663"] = "backspace";
    level.var_61e6d095.var_ebb98e0b = [];
    foreach (key, value in level.var_61e6d095.inputs) {
        level.var_61e6d095.var_ebb98e0b[key] = [];
        thread globallogic_ui::function_9ed5232e("ScriptedWidgetData.blockGameInput." + value, 0);
    }
    callback::add_callback(#"on_player_spawned", &on_player_spawn);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x2 linked
// Checksum 0xbe88c4f5, Offset: 0x8b8
// Size: 0x170
function on_player_spawn() {
    self endon(#"death");
    foreach (key, value in level.var_61e6d095.inputs) {
        self flag::clear(key);
    }
    while (true) {
        waitresult = self waittill(#"menuresponse");
        menu = waitresult.menu;
        if (menu == "ScriptedHudWidgetMenu" && isdefined(level.var_61e6d095.inputs[waitresult.response])) {
            self childthread flag::set_for_time(float(function_60d95f53()) / 1000 * 2, waitresult.response);
        }
    }
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x2 linked
// Checksum 0x95f15426, Offset: 0xa30
// Size: 0x22
function function_affb1af1() {
    return self flag::get(#"ui_confirm");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x2 linked
// Checksum 0x511fcea6, Offset: 0xa60
// Size: 0x22
function function_57fbd346() {
    return self flag::get(#"hash_3c27402259e4c18e");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x2 linked
// Checksum 0xe775eadc, Offset: 0xa90
// Size: 0x22
function function_e4d62f9a() {
    return self flag::get(#"hash_278b9a3955f6e5a");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x2 linked
// Checksum 0x6536352a, Offset: 0xac0
// Size: 0x22
function function_728aec47() {
    return self flag::get(#"hash_278b8a3955f6ca7");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x2 linked
// Checksum 0xef03860d, Offset: 0xaf0
// Size: 0x22
function function_aef1e8c3() {
    return self flag::get(#"ui_navup");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x2 linked
// Checksum 0xa67d1000, Offset: 0xb20
// Size: 0x22
function function_9975a94d() {
    return self flag::get(#"ui_navdown");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x2 linked
// Checksum 0x920f5c30, Offset: 0xb50
// Size: 0x22
function function_c2d8a326() {
    return self flag::get(#"ui_navleft");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x2 linked
// Checksum 0x59b0660c, Offset: 0xb80
// Size: 0x22
function function_3d680c10() {
    return self flag::get(#"ui_navright");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x0
// Checksum 0xab91fac1, Offset: 0xbb0
// Size: 0x22
function function_d0beaa6e() {
    return self flag::get(#"ui_prevtab");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x0
// Checksum 0x6da62605, Offset: 0xbe0
// Size: 0x22
function function_1e9035e9() {
    return self flag::get(#"ui_nexttab");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x0
// Checksum 0xad04e269, Offset: 0xc10
// Size: 0x22
function function_57799116() {
    return self flag::get(#"hash_5686e6f2a8315663");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x2 linked
// Checksum 0xeb96d0fa, Offset: 0xc40
// Size: 0x32
function function_9c365c3b() {
    return function_cf2348e7(function_90d058e8(#"hash_15588744d5c5bb0f"));
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x2 linked
// Checksum 0x2109000e, Offset: 0xc80
// Size: 0x32
function function_6cbc939b() {
    return function_cf2348e7(function_90d058e8(#"hash_730cd94f8fe3da16"));
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 1, eflags: 0x6 linked
// Checksum 0x65923b39, Offset: 0xcc0
// Size: 0x14c
function private function_cf2348e7(model) {
    var_b0672ef2 = getuimodel(model, #"degrees");
    var_9487f37 = getuimodel(model, #"length");
    var_f76e6210 = getuimodel(model, #"x");
    var_f1cc2bf9 = getuimodel(model, #"y");
    return {#degrees:getuimodelvalue(var_b0672ef2), #length:getuimodelvalue(var_9487f37), #x:getuimodelvalue(var_f76e6210), #y:getuimodelvalue(var_f1cc2bf9)};
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x0
// Checksum 0x767a161f, Offset: 0xe18
// Size: 0x32
function function_f2b01a83() {
    return function_c63f7472(function_90d058e8(#"hash_39502e607f052b14"));
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x0
// Checksum 0xdf97ab43, Offset: 0xe58
// Size: 0x32
function function_f540dc93() {
    return function_c63f7472(function_90d058e8(#"hash_25c2b6d37ccf0023"));
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 1, eflags: 0x6 linked
// Checksum 0x325f21e5, Offset: 0xe98
// Size: 0x4a
function private function_c63f7472(model) {
    var_68abddbb = getuimodel(model, #"amount");
    return getuimodelvalue(var_68abddbb);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 11, eflags: 0x0
// Checksum 0x5cb562ff, Offset: 0xef0
// Size: 0x408
function create_waypoint(uid = "waypoint", ent, image, text, offset, tag, var_7bd05154 = 1, var_754bedbb = 1, clamp = 1, var_577a0c84 = 0, progress) {
    uid = string(uid) + ent getentitynumber();
    widget_type = #"hash_14992af6bd994ba2";
    if (isdefined(progress)) {
        widget_type = #"hash_266631c3a5d0ffdb";
    }
    create(uid, widget_type);
    function_fbe9f25e(uid);
    if (isdefined(ent)) {
        set_ent(uid, ent);
    }
    if (isdefined(image)) {
        function_309bf7c2(uid, image);
    }
    if (isdefined(text)) {
        set_text(uid, text);
        set_flags(uid, 1);
    }
    if (!isdefined(offset)) {
        offset = (0, 0, 0);
    }
    if (isdefined(tag)) {
        origin = ent.origin;
        if (isentity(ent) && is_true(var_754bedbb)) {
            origin += rotatepoint(ent getboundsmidpoint(), ent.angles);
        }
        offset = offset + ent gettagorigin(tag) - origin;
    }
    if (offset[0] != 0) {
        function_4d9fbc9d(uid, offset[0]);
    }
    if (offset[1] != 0) {
        function_52dbc715(uid, offset[1]);
    }
    if (offset[2] != 0) {
        function_60856268(uid, offset[2]);
    }
    if (is_true(clamp)) {
        function_4ef79fca(uid, clamp);
    }
    if (is_true(var_577a0c84)) {
        function_eb16868b(uid, var_577a0c84);
    }
    if (isdefined(progress)) {
        function_b1e6d7a8(uid, progress);
    }
    function_e648abd8(uid, var_754bedbb);
    function_9c3ced73(uid, var_7bd05154);
    set_state(uid, 0);
    ent function_89bba41b(uid, "offset", {#offset:offset});
    ent thread function_9718880e(uid);
    return uid;
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0x2c6e1f27, Offset: 0x1300
// Size: 0xd4
function create(uid, widget_name) {
    level.var_61e6d095.active[uid] = {#uid:uid, #time:gettime()};
    function_3efa2f37(uid, "widgetName", widget_name);
    function_3efa2f37(uid, "uid", uid);
    thread function_4e406a1a();
    if (should_hide(uid)) {
        function_3efa2f37(uid, "hide", 1);
    }
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 1, eflags: 0x2 linked
// Checksum 0x4d16184a, Offset: 0x13e0
// Size: 0xe4
function remove(uid) {
    arrayremoveindex(level.var_61e6d095.active, uid, 1);
    function_3abc637f(uid);
    level notify("delete_widget_" + uid);
    function_3efa2f37(uid, "widgetName", #"");
    thread function_4e406a1a();
    thread function_1b4bdb02(uid);
    globallogic_ui::function_2ec075a9("ScriptedWidgetData.widgetModels" + "." + uid, 1);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x2 linked
// Checksum 0x9ffe7371, Offset: 0x14d0
// Size: 0x54
function remove_all() {
    level.var_61e6d095.active = [];
    level.var_61e6d095.var_2361e57e = [];
    level notify(#"hash_64a3b02565bdf75f");
    thread function_4e406a1a(1);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 1, eflags: 0x2 linked
// Checksum 0x1dea5ed9, Offset: 0x1530
// Size: 0x26
function exists(uid) {
    return isdefined(level.var_61e6d095.active[uid]);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 1, eflags: 0x2 linked
// Checksum 0xcaf584e4, Offset: 0x1560
// Size: 0x92
function function_70217795(var_d53ecf2 = 0) {
    assert(isplayer(self));
    if (var_d53ecf2 && !self gamepadusedlast()) {
        return self usebuttonpressed();
    }
    return self function_57fbd346();
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 3, eflags: 0x2 linked
// Checksum 0xcb2fcc1, Offset: 0x1600
// Size: 0x13e
function function_b0bad5ff(endons, var_daf05886, var_d53ecf2 = 0) {
    assert(isplayer(self));
    self endon(#"death");
    if (isdefined(endons)) {
        self endon(endons);
    }
    if (isdefined(var_daf05886)) {
        level endon(var_daf05886);
    }
    if (!isdefined(endons)) {
        endons = [];
    } else if (!isarray(endons)) {
        endons = array(endons);
    }
    endons[endons.size] = "request_menu_exit";
    if (!var_d53ecf2) {
        self thread block_kbm_pause_menu(endons, var_daf05886);
    }
    while (!self function_70217795(var_d53ecf2)) {
        waitframe(1);
    }
    self notify(#"request_menu_exit");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0x3e107dda, Offset: 0x1748
// Size: 0xbc
function block_kbm_pause_menu(endons, var_daf05886) {
    assert(isplayer(self));
    var_753c2469 = self flag::get("block_kbm_pause_menu");
    self flag::increment("block_kbm_pause_menu");
    if (!var_753c2469) {
        self thread function_d6cfc8e9();
    }
    self thread function_5302a8d6(endons, var_daf05886);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 0, eflags: 0x6 linked
// Checksum 0x366ba9ec, Offset: 0x1810
// Size: 0x10c
function private function_d6cfc8e9() {
    self notify("3905ed56f501527e");
    self endon("3905ed56f501527e");
    self endon(#"death");
    var_4cfde9be = 1;
    while (self flag::get("block_kbm_pause_menu")) {
        is_gamepad = self gamepadusedlast();
        if (var_4cfde9be != is_gamepad || !is_gamepad && self flag::get("was_paused")) {
            setdvar(#"ui_busyblockingamemenu", !is_gamepad);
        }
        var_4cfde9be = is_gamepad;
        waitframe(1);
    }
    setdvar(#"ui_busyblockingamemenu", 0);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x6 linked
// Checksum 0x26c5c221, Offset: 0x1928
// Size: 0xfc
function private function_5302a8d6(var_e1d8c33c, var_b68dbe65) {
    if (!isdefined(var_e1d8c33c)) {
        var_e1d8c33c = [];
    } else if (!isarray(var_e1d8c33c)) {
        var_e1d8c33c = array(var_e1d8c33c);
    }
    var_e1d8c33c[var_e1d8c33c.size] = "death";
    if (isdefined(var_b68dbe65)) {
        self childthread function_18a00acf(var_b68dbe65);
    }
    result = self waittill(var_e1d8c33c);
    self flag::decrement("block_kbm_pause_menu");
    if (result._notify == "death") {
        setdvar(#"ui_busyblockingamemenu", 0);
    }
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 1, eflags: 0x6 linked
// Checksum 0x638be26a, Offset: 0x1a30
// Size: 0x2e
function private function_18a00acf(var_b68dbe65) {
    level waittill(var_b68dbe65);
    self notify(#"request_menu_exit");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 3, eflags: 0x2 linked
// Checksum 0x9e602b18, Offset: 0x1a68
// Size: 0x138
function function_24e5fa63(uid, inputs, block = 1) {
    if (!isdefined(inputs)) {
        inputs = [];
    } else if (!isarray(inputs)) {
        inputs = array(inputs);
    }
    foreach (input in inputs) {
        if (isdefined(level.var_61e6d095.var_ebb98e0b[input])) {
            if (block) {
                function_78f03fef(uid, input);
                continue;
            }
            function_1b4bdb02(uid, input);
        }
    }
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x0
// Checksum 0x51b23c3a, Offset: 0x1ba8
// Size: 0x74
function function_e544f756(uid, block = 1) {
    if (block) {
        function_78f03fef(uid, #"ui_confirm");
        return;
    }
    function_1b4bdb02(uid, #"ui_confirm");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0xba27937, Offset: 0x1c28
// Size: 0x74
function function_29703592(uid, block = 1) {
    if (block) {
        function_78f03fef(uid, #"hash_3c27402259e4c18e");
        return;
    }
    function_1b4bdb02(uid, #"hash_3c27402259e4c18e");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x0
// Checksum 0xfc86def, Offset: 0x1ca8
// Size: 0x74
function function_61d5ed40(uid, block = 1) {
    if (block) {
        function_78f03fef(uid, #"hash_278b9a3955f6e5a");
        return;
    }
    function_1b4bdb02(uid, #"hash_278b9a3955f6e5a");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x0
// Checksum 0x8e816d3, Offset: 0x1d28
// Size: 0x74
function function_503549ff(uid, block = 1) {
    if (block) {
        function_78f03fef(uid, #"hash_278b8a3955f6ca7");
        return;
    }
    function_1b4bdb02(uid, #"hash_278b8a3955f6ca7");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x0
// Checksum 0x19798354, Offset: 0x1da8
// Size: 0x74
function function_a9d2152c(uid, block = 1) {
    if (block) {
        function_78f03fef(uid, #"ui_navup");
        return;
    }
    function_1b4bdb02(uid, #"ui_navup");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x0
// Checksum 0x3fbb26b2, Offset: 0x1e28
// Size: 0x74
function function_cd99f2ab(uid, block = 1) {
    if (block) {
        function_78f03fef(uid, #"ui_navdown");
        return;
    }
    function_1b4bdb02(uid, #"ui_navdown");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x0
// Checksum 0x798eab2a, Offset: 0x1ea8
// Size: 0x74
function function_46abc17c(uid, block = 1) {
    if (block) {
        function_78f03fef(uid, #"ui_navleft");
        return;
    }
    function_1b4bdb02(uid, #"ui_navleft");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x0
// Checksum 0xd624e993, Offset: 0x1f28
// Size: 0x74
function function_1eca647(uid, block = 1) {
    if (block) {
        function_78f03fef(uid, #"ui_navright");
        return;
    }
    function_1b4bdb02(uid, #"ui_navright");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x0
// Checksum 0x4bb61e7d, Offset: 0x1fa8
// Size: 0x74
function function_37cc0f71(uid, block = 1) {
    if (block) {
        function_78f03fef(uid, #"ui_prevtab");
        return;
    }
    function_1b4bdb02(uid, #"ui_prevtab");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x0
// Checksum 0x557ebfee, Offset: 0x2028
// Size: 0x74
function function_b2bd6ae9(uid, block = 1) {
    if (block) {
        function_78f03fef(uid, #"ui_nexttab");
        return;
    }
    function_1b4bdb02(uid, #"ui_nexttab");
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0xa92c3a2c, Offset: 0x20a8
// Size: 0x44
function set_x(uid, x) {
    function_3efa2f37(uid, "x", float(x));
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0xf51f1e90, Offset: 0x20f8
// Size: 0x44
function set_y(uid, y) {
    function_3efa2f37(uid, "y", float(y));
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0x293a798c, Offset: 0x2148
// Size: 0x44
function set_width(uid, width) {
    function_3efa2f37(uid, "width", float(width));
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0x5bf03188, Offset: 0x2198
// Size: 0x44
function set_height(uid, height) {
    function_3efa2f37(uid, "height", float(height));
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x0
// Checksum 0x87e8b678, Offset: 0x21e8
// Size: 0x34
function function_33b3b950(uid, var_b83b583) {
    function_3efa2f37(uid, "ui3dWindow", var_b83b583);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0xd37c032c, Offset: 0x2228
// Size: 0x44
function set_alpha(uid, alpha) {
    function_3efa2f37(uid, "alpha", float(alpha));
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0xb74f2374, Offset: 0x2278
// Size: 0x148
function function_df0d7a85(var_a5a2c782, uids) {
    if (!isdefined(uids)) {
        uids = [];
    } else if (!isarray(uids)) {
        uids = array(uids);
    }
    if (!isdefined(level.var_61e6d095.hidden[var_a5a2c782])) {
        level.var_61e6d095.hidden[var_a5a2c782] = [];
    }
    foreach (uid in uids) {
        level.var_61e6d095.hidden[var_a5a2c782][uid] = uid;
        if (exists(uid)) {
            function_3efa2f37(uid, "hide", 1);
        }
    }
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 1, eflags: 0x2 linked
// Checksum 0x2ce93c20, Offset: 0x23c8
// Size: 0x138
function function_f96376c5(var_a5a2c782) {
    if (isdefined(level.var_61e6d095.hidden[var_a5a2c782])) {
        uids = level.var_61e6d095.hidden[var_a5a2c782];
        arrayremoveindex(level.var_61e6d095.hidden, var_a5a2c782, 1);
        foreach (uid in uids) {
            if (exists(uid) && !should_hide(uid)) {
                function_3efa2f37(uid, "hide", 0);
            }
        }
    }
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0x60b4caf8, Offset: 0x2508
// Size: 0x270
function function_28027c42(var_d4d3e35d, uids) {
    if (!isdefined(uids)) {
        uids = [];
    } else if (!isarray(uids)) {
        uids = array(uids);
    }
    if (!isdefined(level.var_61e6d095.var_db65bf2f[var_d4d3e35d])) {
        level.var_61e6d095.var_db65bf2f[var_d4d3e35d] = {};
    }
    if (!isdefined(level.var_61e6d095.var_db65bf2f[var_d4d3e35d].uids)) {
        level.var_61e6d095.var_db65bf2f[var_d4d3e35d].uids = [];
    }
    foreach (uid in uids) {
        level.var_61e6d095.var_db65bf2f[var_d4d3e35d].uids[uid] = uid;
    }
    level.var_61e6d095.var_db65bf2f[var_d4d3e35d].active = 1;
    foreach (active_widget in level.var_61e6d095.active) {
        if (should_hide(active_widget.uid)) {
            function_3efa2f37(active_widget.uid, "hide", 1);
            continue;
        }
        function_3efa2f37(active_widget.uid, "hide", 0);
    }
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0x14bb923d, Offset: 0x2780
// Size: 0x20c
function function_d3c3e5c3(uid, var_8e8cbb71) {
    if (!isdefined(var_8e8cbb71)) {
        var_8e8cbb71 = [];
    } else if (!isarray(var_8e8cbb71)) {
        var_8e8cbb71 = array(var_8e8cbb71);
    }
    any_active = 0;
    foreach (var_d4d3e35d in var_8e8cbb71) {
        if (!isdefined(level.var_61e6d095.var_db65bf2f[var_d4d3e35d])) {
            level.var_61e6d095.var_db65bf2f[var_d4d3e35d] = {};
        }
        if (!isdefined(level.var_61e6d095.var_db65bf2f[var_d4d3e35d].uids)) {
            level.var_61e6d095.var_db65bf2f[var_d4d3e35d].uids = [];
        }
        level.var_61e6d095.var_db65bf2f[var_d4d3e35d].uids[uid] = uid;
        any_active = any_active || is_true(level.var_61e6d095.var_db65bf2f[var_d4d3e35d].active);
    }
    if (any_active) {
        if (should_hide(uid)) {
            function_3efa2f37(uid, "hide", 1);
            return;
        }
        function_3efa2f37(uid, "hide", 0);
    }
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0x98818a2d, Offset: 0x2998
// Size: 0x264
function function_3abc637f(uid, var_d4d3e35d) {
    if (isdefined(var_d4d3e35d)) {
        if (isdefined(level.var_61e6d095.var_db65bf2f[var_d4d3e35d])) {
            arrayremoveindex(level.var_61e6d095.var_db65bf2f[var_d4d3e35d].uids, uid, 1);
            if (!is_true(level.var_61e6d095.var_db65bf2f[var_d4d3e35d].active) && level.var_61e6d095.var_db65bf2f[var_d4d3e35d].uids.size == 0) {
                arrayremoveindex(level.var_61e6d095.var_db65bf2f, var_d4d3e35d, 1);
            }
        }
    } else {
        foreach (ref, exceptions in level.var_61e6d095.var_db65bf2f) {
            arrayremoveindex(exceptions.uids, uid, 1);
            if (!is_true(exceptions.active) && exceptions.uids.size == 0) {
                arrayremoveindex(level.var_61e6d095.var_db65bf2f, ref, 1);
            }
        }
    }
    if (isdefined(level.var_61e6d095.active[uid])) {
        if (should_hide(uid)) {
            function_3efa2f37(uid, "hide", 1);
            return;
        }
        function_3efa2f37(uid, "hide", 0);
    }
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 1, eflags: 0x2 linked
// Checksum 0x8b2825e0, Offset: 0x2c08
// Size: 0x130
function function_4279fd02(var_d4d3e35d) {
    if (isdefined(level.var_61e6d095.var_db65bf2f[var_d4d3e35d])) {
        level.var_61e6d095.var_db65bf2f[var_d4d3e35d].active = 0;
        foreach (active_widget in level.var_61e6d095.active) {
            if (should_hide(active_widget.uid)) {
                function_3efa2f37(active_widget.uid, "hide", 1);
                continue;
            }
            function_3efa2f37(active_widget.uid, "hide", 0);
        }
    }
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 1, eflags: 0x2 linked
// Checksum 0x400bfeff, Offset: 0x2d40
// Size: 0x176
function should_hide(uid) {
    foreach (uids in level.var_61e6d095.hidden) {
        if (isdefined(uids[uid])) {
            return 1;
        }
    }
    var_bbf85716 = 0;
    if (level.var_61e6d095.var_db65bf2f.size > 0) {
        foreach (var_7db9f8e9 in level.var_61e6d095.var_db65bf2f) {
            if (is_true(var_7db9f8e9.active)) {
                var_bbf85716 = 1;
                if (isdefined(var_7db9f8e9.uids[uid])) {
                    return 0;
                }
            }
        }
    }
    return var_bbf85716;
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0x80e60c7b, Offset: 0x2ec0
// Size: 0x34
function function_73c9a490(uid, focus) {
    function_3efa2f37(uid, "focus", focus);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0xb98f4a6, Offset: 0x2f00
// Size: 0x34
function function_46df0bc7(uid, priority) {
    function_3efa2f37(uid, "priority", priority);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x0
// Checksum 0xe58b26ba, Offset: 0x2f40
// Size: 0x44
function set_scale(uid, scale) {
    function_3efa2f37(uid, "scale", float(scale));
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x0
// Checksum 0x3fdc171, Offset: 0x2f90
// Size: 0x84
function function_39710437(uid, var_e93ee030) {
    assert(var_e93ee030 == "listIndex" || var_e93ee030 == "scripted_widget_data_set_" || var_e93ee030 == "<unknown string>", "<unknown string>");
    function_3efa2f37(uid, "sizeto", var_e93ee030);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0x33839ebe, Offset: 0x3020
// Size: 0x34
function set_text(uid, text) {
    function_3efa2f37(uid, "text", text);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 3, eflags: 0x2 linked
// Checksum 0xa5b4e786, Offset: 0x3060
// Size: 0x4c
function function_bfdab223(uid, text, var_80d5359e = 0) {
    function_3efa2f37(uid, "desc", text, var_80d5359e);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x0
// Checksum 0x960ee98f, Offset: 0x30b8
// Size: 0x34
function function_e11447eb(uid, button_text) {
    function_3efa2f37(uid, "button_text", button_text);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0x7963f4c6, Offset: 0x30f8
// Size: 0x34
function function_309bf7c2(uid, image) {
    function_3efa2f37(uid, "image", image);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 4, eflags: 0x0
// Checksum 0xbcb36dca, Offset: 0x3138
// Size: 0x64
function set_color(uid, red, green, blue) {
    function_3efa2f37(uid, "color", red + " " + green + " " + blue);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0xe90c666, Offset: 0x31a8
// Size: 0x44
function set_time(uid, time) {
    function_3efa2f37(uid, "time", float(time));
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 3, eflags: 0x0
// Checksum 0x35e77add, Offset: 0x31f8
// Size: 0x13c
function set_timer(uid, time, countdown = 1) {
    time = int(time * 1000);
    if (countdown) {
        function_89bba41b(uid, "timer", {#time:time, #goal_time:0});
    } else {
        start_time = 0;
        var_f2f8de51 = function_8db2364c(uid, "timer");
        if (isdefined(var_f2f8de51)) {
            start_time = var_f2f8de51.time;
        }
        function_89bba41b(uid, "timer", {#time:start_time, #goal_time:time});
    }
    thread update_timer(uid);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 1, eflags: 0x0
// Checksum 0x9b4223c5, Offset: 0x3340
// Size: 0x4a
function pause_timer(uid) {
    var_f2f8de51 = function_8db2364c(uid, "timer");
    if (isdefined(var_f2f8de51)) {
        var_f2f8de51.paused = 1;
    }
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 1, eflags: 0x0
// Checksum 0xacba24d6, Offset: 0x3398
// Size: 0x4a
function function_f3dcb134(uid) {
    var_f2f8de51 = function_8db2364c(uid, "timer");
    if (isdefined(var_f2f8de51)) {
        var_f2f8de51.paused = 0;
    }
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 1, eflags: 0x0
// Checksum 0x78982a64, Offset: 0x33f0
// Size: 0x44
function clear_timer(uid) {
    function_4ac40e40(uid, "timer");
    function_fbe9f25e(uid, 3);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 1, eflags: 0x6 linked
// Checksum 0xa7dc48e0, Offset: 0x3440
// Size: 0x19c
function private update_timer(uid) {
    level notify("update_timer_" + uid);
    level endon("update_timer_" + uid, "delete_widget_" + uid, "scripted_widget_data_removed_timer_" + uid, #"hash_64a3b02565bdf75f");
    set_flags(uid, 3);
    while (true) {
        timer = function_8db2364c(uid, "timer");
        set_time(uid, timer.time);
        if (!is_true(timer.paused)) {
            if (timer.goal_time == 0) {
                timer.time = int(max(timer.time - function_60d95f53(), timer.goal_time));
            } else {
                timer.time = int(min(timer.time + function_60d95f53(), timer.goal_time));
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0x43a3d5e, Offset: 0x35e8
// Size: 0x34
function function_32545050(uid, distance) {
    function_3efa2f37(uid, "distance", distance);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 3, eflags: 0x0
// Checksum 0x24698621, Offset: 0x3628
// Size: 0x84
function function_283c7712(uid, ent, var_7c7535b4 = 0.0254) {
    function_89bba41b(uid, "distance", {#ent:ent, #var_7c7535b4:var_7c7535b4});
    thread function_c6d1cf1f(uid);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 1, eflags: 0x0
// Checksum 0x9b5b74ab, Offset: 0x36b8
// Size: 0x44
function function_8a843e00(uid) {
    function_4ac40e40(uid, "distance");
    function_fbe9f25e(uid, 2);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 1, eflags: 0x6 linked
// Checksum 0x118673ab, Offset: 0x3708
// Size: 0x22e
function private function_c6d1cf1f(uid) {
    level notify("update_distance_" + uid);
    level endon("update_distance_" + uid, "delete_widget_" + uid, "scripted_widget_data_removed_distance_" + uid, #"hash_64a3b02565bdf75f");
    player = getplayers()[0];
    player endon(#"death");
    set_flags(uid, 2);
    offset = self function_8db2364c(uid, "offset");
    if (isdefined(offset)) {
        offset = offset.offset;
    }
    while (true) {
        var_9941a398 = function_8db2364c(uid, "distance");
        ent = var_9941a398.ent;
        var_7f3f225e = player getplayercamerapos();
        ent_pos = ent.origin;
        if (isentity(ent)) {
            ent_pos += rotatepoint(ent getboundsmidpoint(), ent.angles);
        }
        if (isdefined(offset)) {
            ent_pos += rotatepoint(offset, ent.angles);
        }
        dist = distance(var_7f3f225e, ent_pos) * var_9941a398.var_7c7535b4;
        function_32545050(uid, dist);
        waitframe(1);
    }
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 3, eflags: 0x2 linked
// Checksum 0xba55b2e4, Offset: 0x3940
// Size: 0x4c
function set_count(uid, count, var_80d5359e = 0) {
    function_3efa2f37(uid, "count", count, var_80d5359e);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 3, eflags: 0x2 linked
// Checksum 0xc8970d74, Offset: 0x3998
// Size: 0x5c
function function_b1e6d7a8(uid, fraction, var_80d5359e = 0) {
    function_3efa2f37(uid, "fraction", float(fraction), var_80d5359e);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0xd49fa656, Offset: 0x3a00
// Size: 0x34
function set_state(uid, state) {
    function_3efa2f37(uid, "state", state);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0x5166529e, Offset: 0x3a40
// Size: 0x34
function function_f942c3ed(uid, clip) {
    function_3efa2f37(uid, "clip", clip);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 3, eflags: 0x2 linked
// Checksum 0x13c3ec62, Offset: 0x3a80
// Size: 0x8c
function set_flags(uid, flags, var_10e09b46 = 0) {
    var_b89f8baa = function_82e355ff(uid, "flags");
    var_c2e076fc = function_bfbe6ac6(flags, var_b89f8baa, var_10e09b46);
    function_3efa2f37(uid, "flags", var_c2e076fc);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 3, eflags: 0x2 linked
// Checksum 0x74a6769b, Offset: 0x3b18
// Size: 0xb4
function function_fbe9f25e(uid, flags, var_10e09b46 = 0) {
    var_b89f8baa = isdefined(function_82e355ff(uid, "flags")) ? function_82e355ff(uid, "flags") : 0;
    var_c2e076fc = function_1a20b94a(flags, var_b89f8baa, var_10e09b46);
    function_3efa2f37(uid, "flags", var_c2e076fc);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 7, eflags: 0x2 linked
// Checksum 0x7ea3bf4f, Offset: 0x3bd8
// Size: 0x74
function set_data(uid, name, value, var_80d5359e, var_1f7d0ca0, var_7b030046, var_2226bd51) {
    function_3efa2f37(uid, "data" + "." + name, value, var_80d5359e, var_1f7d0ca0, var_7b030046, var_2226bd51);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0xd5185788, Offset: 0x3c58
// Size: 0x44
function get_data(uid, name) {
    function_80157d8(uid, "data" + "." + name);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 3, eflags: 0x2 linked
// Checksum 0x623b44c1, Offset: 0x3ca8
// Size: 0x64
function function_6b97044d(uid, name, var_c15ae58d) {
    globallogic_ui::function_2ec075a9("ScriptedWidgetData.widgetModels" + "." + uid + "." + "data" + "." + name, var_c15ae58d);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 7, eflags: 0x2 linked
// Checksum 0x20cedd0e, Offset: 0x3d18
// Size: 0x5c
function function_9ade1d9b(uid, name, value, var_80d5359e, var_1f7d0ca0, var_7b030046, var_2226bd51) {
    function_3efa2f37(uid, name, value, var_80d5359e, var_1f7d0ca0, var_7b030046, var_2226bd51);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0x8c213ea1, Offset: 0x3d80
// Size: 0x2a
function function_f7c4c669(uid, name) {
    return function_82e355ff(uid, name);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 3, eflags: 0x2 linked
// Checksum 0x14110b80, Offset: 0x3db8
// Size: 0x54
function function_43525bc6(uid, name, var_c15ae58d) {
    globallogic_ui::function_2ec075a9("ScriptedWidgetData.widgetModels" + "." + uid + "." + name, var_c15ae58d);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0xda625d4d, Offset: 0x3e18
// Size: 0x54
function function_330981ed(uid, list_name = "list") {
    function_3efa2f37(uid, list_name);
    thread function_57d676db(uid, list_name);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 6, eflags: 0x2 linked
// Checksum 0x68714011, Offset: 0x3e78
// Size: 0x2dc
function function_f2a9266(uid, index, name, value, list_name = "list", force) {
    if (isdefined(index) && !isdefined(function_80157d8(uid, list_name + "." + index))) {
        function_3efa2f37(uid, list_name + "." + index + "." + "listIndex", index, undefined, undefined, undefined, undefined, list_name);
    }
    if (isarray(value)) {
        var_d9cf51e8 = list_name;
        if (isdefined(index)) {
            var_d9cf51e8 = list_name + "." + index + "." + list_name;
        }
        foreach (i, v in value) {
            function_f2a9266(uid, i, name, v, var_d9cf51e8, force);
        }
    } else if (isstruct(value)) {
        assert(isdefined(value.names) && isdefined(value.data), "<unknown string>");
        foreach (i, v in value.data) {
            function_f2a9266(uid, index, value.names[i], v, list_name, force);
        }
    } else {
        function_3efa2f37(uid, list_name + "." + index + "." + name, value, force, undefined, undefined, undefined, list_name);
    }
    thread function_57d676db(uid, list_name);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 4, eflags: 0x2 linked
// Checksum 0x65e5f149, Offset: 0x4160
// Size: 0x6a
function function_ce8141d4(uid, index, name, list_name = "list") {
    return function_82e355ff(uid, list_name + "." + index + "." + name);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 6, eflags: 0x2 linked
// Checksum 0xd805b9b, Offset: 0x41d8
// Size: 0x19c
function function_9bc1d2f1(uid, index, flags, var_10e09b46 = 0, model_name = "flags", list_name = "list") {
    if (!isdefined(function_80157d8(uid, list_name + "." + index))) {
        function_3efa2f37(uid, list_name + "." + index + "." + "listIndex", index, undefined, undefined, undefined, undefined, list_name);
    }
    var_b89f8baa = function_82e355ff(uid, list_name + "." + index + "." + model_name);
    var_c2e076fc = function_bfbe6ac6(flags, var_b89f8baa, var_10e09b46);
    function_3efa2f37(uid, list_name + "." + index + "." + model_name, var_c2e076fc, undefined, undefined, undefined, undefined, list_name);
    thread function_57d676db(uid, list_name);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 6, eflags: 0x2 linked
// Checksum 0x313f93c2, Offset: 0x4380
// Size: 0x19c
function function_e8c19a33(uid, index, flags, var_10e09b46 = 0, model_name = "flags", list_name = "list") {
    if (!isdefined(function_80157d8(uid, list_name + "." + index))) {
        function_3efa2f37(uid, list_name + "." + index + "." + "listIndex", index, undefined, undefined, undefined, undefined, list_name);
    }
    var_b89f8baa = function_82e355ff(uid, list_name + "." + index + "." + model_name);
    var_c2e076fc = function_1a20b94a(flags, var_b89f8baa, var_10e09b46);
    function_3efa2f37(uid, list_name + "." + index + "." + model_name, var_c2e076fc, undefined, undefined, undefined, undefined, list_name);
    thread function_57d676db(uid, list_name);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 3, eflags: 0x2 linked
// Checksum 0xc34c0a11, Offset: 0x4528
// Size: 0x84
function function_7239e030(uid, index, list_name = "list") {
    if (globallogic_ui::function_6db5e620("ScriptedWidgetData.widgetModels" + "." + uid + "." + list_name, index)) {
        thread function_57d676db(uid, list_name);
    }
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 3, eflags: 0x2 linked
// Checksum 0xe264caa8, Offset: 0x45b8
// Size: 0x54
function function_cd59371c(uid, index, list_name = "list") {
    return isdefined(function_80157d8(uid, list_name + "." + index));
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0x419edc9b, Offset: 0x4618
// Size: 0x154
function set_ent(uid, ent) {
    if (isstruct(ent) || ent.classname === "script_origin") {
        function_3efa2f37(uid, "entNum", worldentnumber());
        if (isdefined(self.origin)) {
            function_4d9fbc9d(uid, ent.origin[0]);
            function_52dbc715(uid, ent.origin[1]);
            function_60856268(uid, ent.origin[2]);
            function_9c3ced73(uid, 1);
        }
        return;
    }
    function_3efa2f37(uid, "entNum", ent getentitynumber());
    ent thread delete_on_death(uid);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0x4f266dfd, Offset: 0x4778
// Size: 0x34
function function_4d9fbc9d(uid, x_offset) {
    function_3efa2f37(uid, "xOffset", x_offset);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0xeeaf0428, Offset: 0x47b8
// Size: 0x34
function function_52dbc715(uid, y_offset) {
    function_3efa2f37(uid, "yOffset", y_offset);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0x14ae46cc, Offset: 0x47f8
// Size: 0x34
function function_60856268(uid, z_offset) {
    function_3efa2f37(uid, "zOffset", z_offset);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0x3512b498, Offset: 0x4838
// Size: 0x34
function function_4ef79fca(uid, clamp) {
    function_3efa2f37(uid, "clamp", clamp);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0x6c0c1797, Offset: 0x4878
// Size: 0x34
function function_eb16868b(uid, var_9524359a) {
    function_3efa2f37(uid, "distanceScale", var_9524359a);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0x5eabcf3, Offset: 0x48b8
// Size: 0x34
function function_e648abd8(uid, var_754bedbb) {
    function_3efa2f37(uid, "useMidpoint", var_754bedbb);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0xeef8675d, Offset: 0x48f8
// Size: 0x34
function function_8aa0007(uid, tag) {
    function_3efa2f37(uid, "boneTag", tag);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0x4db8b761, Offset: 0x4938
// Size: 0x34
function function_9c3ced73(uid, var_7bd05154) {
    function_3efa2f37(uid, "useLocalOffset", var_7bd05154);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 5, eflags: 0x0
// Checksum 0xe91ed63d, Offset: 0x4978
// Size: 0xd4
function function_fdb73881(uid, close_dist = 500, far_dist = 1000, var_bc8ff11 = 1, var_6d219ab3 = 0) {
    function_89bba41b(uid, "fade_dist", {#close_dist:close_dist, #far_dist:far_dist, #var_bc8ff11:var_bc8ff11, #var_6d219ab3:var_6d219ab3});
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 6, eflags: 0x0
// Checksum 0xd926493f, Offset: 0x4a58
// Size: 0xe4
function function_c3fbdd4(uid, far_dist = 393.7, var_3a142f52 = 0, var_d7e44381 = 1, var_e23f7d1e = 2, var_1f1b932b) {
    function_89bba41b(uid, "dist_states", {#far_dist:far_dist, #var_3a142f52:var_3a142f52, #var_d7e44381:var_d7e44381, #var_e23f7d1e:var_e23f7d1e, #var_1f1b932b:var_1f1b932b});
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 3, eflags: 0x0
// Checksum 0xb6ad5417, Offset: 0x4b48
// Size: 0x8c
function function_d3533603(uid, enable, ignore_ent) {
    if (enable) {
        function_89bba41b(uid, "occlusion", {#ignore_ent:ignore_ent});
        return;
    }
    function_4ac40e40(uid, "occlusion");
    function_fbe9f25e(uid, 0);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 1, eflags: 0x6 linked
// Checksum 0x711c083c, Offset: 0x4be0
// Size: 0x48e
function private function_9718880e(uid) {
    level endon("delete_widget_" + uid, #"hash_64a3b02565bdf75f");
    level waittill("scripted_widget_data_set_" + uid);
    player = getplayers()[0];
    offset = function_8db2364c(uid, "offset").offset;
    while (isdefined(player)) {
        dist = undefined;
        alpha = undefined;
        fade_dist = function_8db2364c(uid, "fade_dist");
        occlusion = function_8db2364c(uid, "occlusion");
        dist_states = function_8db2364c(uid, "dist_states");
        var_7f3f225e = player getplayercamerapos();
        ent_pos = self.origin;
        if (isentity(self)) {
            ent_pos += rotatepoint(self getboundsmidpoint(), self.angles);
        }
        if (offset != (0, 0, 0)) {
            ent_pos += rotatepoint(offset, self.angles);
        }
        if (isdefined(fade_dist)) {
            if (!isdefined(dist)) {
                dist = distance(var_7f3f225e, ent_pos);
            }
            alpha = lerpfloat(fade_dist.var_bc8ff11, fade_dist.var_6d219ab3, lerpfloat(0, 1, (dist - fade_dist.close_dist) / (fade_dist.far_dist - fade_dist.close_dist)));
        }
        if (isdefined(dist_states)) {
            if (!isdefined(dist)) {
                dist = distance(var_7f3f225e, ent_pos);
            }
            if (dist > dist_states.far_dist) {
                set_state(uid, dist_states.var_3a142f52);
            } else if (!is_true(function_82e355ff(uid, "clamped"))) {
                focused = 0;
                if (isdefined(dist_states.var_1f1b932b)) {
                    player_dir = anglestoforward(player getplayerangles());
                    var_52be356a = vectornormalize(ent_pos - var_7f3f225e);
                    if (vectordot(player_dir, var_52be356a) >= dist_states.var_1f1b932b) {
                        set_state(uid, dist_states.var_e23f7d1e);
                        focused = 1;
                    }
                }
                if (!focused) {
                    set_state(uid, dist_states.var_d7e44381);
                }
            }
        }
        if (isdefined(occlusion) && (!isdefined(alpha) || alpha > 0)) {
            if (!sighttracepassed(ent_pos, var_7f3f225e, 0, self, occlusion.ignore_ent)) {
                set_flags(uid, 0);
            } else {
                function_fbe9f25e(uid, 0);
            }
        } else if (isdefined(alpha)) {
            set_alpha(uid, alpha);
        }
        waitframe(1);
    }
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 3, eflags: 0x6 linked
// Checksum 0x1ca19139, Offset: 0x5078
// Size: 0xa4
function private function_89bba41b(uid, key, data) {
    if (!isdefined(level.var_2e036148)) {
        level.var_2e036148 = [];
    }
    if (!isdefined(level.var_2e036148[uid])) {
        level.var_2e036148[uid] = [];
    }
    level.var_2e036148[uid][key] = data;
    level notify("scripted_widget_data_set_" + uid);
    level thread function_dc5c6710(uid);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x6 linked
// Checksum 0x58774cfe, Offset: 0x5128
// Size: 0x96
function private function_8db2364c(uid, var_14d09bc7) {
    if (level flag::get("level_restarting")) {
        return undefined;
    }
    assert(isdefined(level.var_2e036148) && isdefined(level.var_2e036148[uid]), "<unknown string>" + uid);
    return level.var_2e036148[uid][var_14d09bc7];
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x6 linked
// Checksum 0x147f4952, Offset: 0x51c8
// Size: 0xba
function private function_4ac40e40(uid, var_14d09bc7) {
    if (level flag::get("level_restarting")) {
        return undefined;
    }
    assert(isdefined(level.var_2e036148) && isdefined(level.var_2e036148[uid]), "<unknown string>" + uid);
    level notify("scripted_widget_data_removed_" + var_14d09bc7 + "_" + uid);
    level.var_2e036148[uid][var_14d09bc7] = undefined;
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 8, eflags: 0x6 linked
// Checksum 0x41c8d3b0, Offset: 0x5290
// Size: 0x1ec
function private function_3efa2f37(uid, model, value, var_80d5359e, var_1f7d0ca0, var_7b030046, var_2226bd51, list_name) {
    if (model != "widgetName") {
        if (!exists(uid)) {
            if (!level flag::get("restoring_ui_models") && !level flag::get("level_restarting")) {
                assertmsg("<unknown string>" + model + "<unknown string>" + uid + "<unknown string>");
            }
            return;
        }
    }
    if (isdefined(level.var_61e6d095.active[uid]) && gettime() > level.var_61e6d095.active[uid].time && !isdefined(function_80157d8(uid, model)) && (!isdefined(list_name) || !isdefined(function_80157d8(uid, list_name + "Update")))) {
        thread function_2b815b7(uid);
    }
    globallogic_ui::function_9ed5232e("ScriptedWidgetData.widgetModels" + "." + uid + "." + model, value, undefined, var_80d5359e, var_1f7d0ca0, var_7b030046, var_2226bd51);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x2 linked
// Checksum 0xa12d4d77, Offset: 0x5488
// Size: 0x4a
function function_82e355ff(uid, model) {
    return globallogic_ui::function_f053dcd4("ScriptedWidgetData.widgetModels" + "." + uid + "." + model);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x6 linked
// Checksum 0x79a454e0, Offset: 0x54e0
// Size: 0x4a
function private function_80157d8(uid, model) {
    return globallogic_ui::function_5b3d23d5("ScriptedWidgetData.widgetModels" + "." + uid + "." + model);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 1, eflags: 0x6 linked
// Checksum 0xeafd09df, Offset: 0x5538
// Size: 0xac
function private function_4e406a1a(reset = 0) {
    if (level flag::get("level_restarting") && !reset) {
        return;
    }
    while (!isdefined(globallogic_ui::function_5b3d23d5("ScriptedWidgetData.update", 0))) {
        level endon(#"hash_64a3b02565bdf75f");
        waitframe(1);
    }
    globallogic_ui::function_9ed5232e("ScriptedWidgetData.update", !reset, 0, 1, undefined, undefined, 1, reset);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 1, eflags: 0x6 linked
// Checksum 0xa253b779, Offset: 0x55f0
// Size: 0x84
function private function_2b815b7(uid) {
    level notify("update_widget_subscriptions_" + uid);
    level endon("update_widget_subscriptions_" + uid);
    globallogic_ui::function_9ed5232e("ScriptedWidgetData.widgetModels" + "." + uid + "." + "update_subscriptions", 1, undefined, 1, 0, 0, 1);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x6 linked
// Checksum 0x645fb8c3, Offset: 0x5680
// Size: 0x84
function private function_57d676db(uid, list_name) {
    if (exists(uid)) {
        globallogic_ui::function_9ed5232e("ScriptedWidgetData.widgetModels" + "." + uid + "." + list_name + "Update", 1, 0, 1, undefined, undefined, 1);
    }
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 1, eflags: 0x6 linked
// Checksum 0xee02968c, Offset: 0x5710
// Size: 0x78
function private function_dc5c6710(uid) {
    self notify("cleanup_widget_data_" + uid);
    self endon("cleanup_widget_data_" + uid);
    level waittill("delete_widget_" + uid, #"hash_64a3b02565bdf75f");
    if (isdefined(self.var_2e036148)) {
        self.var_2e036148[uid] = undefined;
    }
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 1, eflags: 0x2 linked
// Checksum 0x41088c09, Offset: 0x5790
// Size: 0x7c
function delete_on_death(uid) {
    self notify("delete_on_death_" + uid);
    self endon("delete_on_death_" + uid);
    level endon("delete_widget_" + uid, #"hash_64a3b02565bdf75f");
    self waittill(#"death");
    thread remove(uid);
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 3, eflags: 0x6 linked
// Checksum 0xdc28e0bf, Offset: 0x5818
// Size: 0x122
function private function_bfbe6ac6(flags, var_b89f8baa, var_10e09b46 = 0) {
    var_c2e076fc = flags;
    if (!var_10e09b46) {
        if (!isdefined(flags)) {
            flags = [];
        } else if (!isarray(flags)) {
            flags = array(flags);
        }
        var_c2e076fc = 0;
        foreach (flag in flags) {
            var_c2e076fc |= 1 << flag;
        }
    }
    if (isdefined(var_b89f8baa)) {
        var_c2e076fc |= var_b89f8baa;
    }
    return var_c2e076fc;
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 3, eflags: 0x6 linked
// Checksum 0x2cd0854b, Offset: 0x5948
// Size: 0x124
function private function_1a20b94a(flags, var_b89f8baa = 0, var_10e09b46 = 0) {
    var_c2e076fc = var_b89f8baa;
    if (!var_10e09b46) {
        if (!isdefined(flags)) {
            flags = [];
        } else if (!isarray(flags)) {
            flags = array(flags);
        }
        foreach (flag in flags) {
            var_c2e076fc &= ~(1 << flag);
        }
    } else {
        var_c2e076fc &= ~flags;
    }
    return var_c2e076fc;
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 9, eflags: 0x0
// Checksum 0x84ff659b, Offset: 0x5a78
// Size: 0x47e
function function_e13a1a9c(grid_size, var_39359c1e, var_92c0faf8, cancel_callback, var_942056ea, var_daf05886, var_bd8024b5, var_26759105, var_1da0c034) {
    player = self;
    assert(isplayer(player));
    assert(isarray(grid_size) && grid_size.size == 2);
    assert(!isdefined(var_1da0c034) || isarray(var_1da0c034) && var_1da0c034.size == 2);
    if (isdefined(var_daf05886)) {
        level endon(var_daf05886);
    }
    if (isdefined(var_bd8024b5)) {
        player endon(var_bd8024b5);
    }
    var_bc6e33ce = [0, 0];
    var_dd82beda = [0, 0];
    var_768a0348 = [-1, -1];
    var_44b06a67 = isdefined(var_1da0c034) ? var_1da0c034 : [0, 0];
    player function_2947fddf(var_768a0348, var_44b06a67, grid_size, var_39359c1e, var_942056ea);
    while (true) {
        if (isdefined(var_92c0faf8) && self function_affb1af1()) {
            var_75843d9b = player [[ var_92c0faf8 ]](var_768a0348, var_942056ea);
            if (is_true(var_75843d9b)) {
                break;
            }
        }
        if (isdefined(cancel_callback) && self function_57fbd346()) {
            player [[ cancel_callback ]](var_942056ea);
            break;
        }
        var_e73a18ff = player function_9c365c3b();
        for (var_ea37ba57 = 0; var_ea37ba57 < 2; var_ea37ba57++) {
            var_44b06a67[var_ea37ba57] = var_768a0348[var_ea37ba57];
            var_edeb0521 = 0;
            if (var_ea37ba57 == 0) {
                var_edeb0521 = var_e73a18ff.y;
            } else {
                var_edeb0521 = var_e73a18ff.x;
            }
            var_edeb0521 = util::function_b5338ccb(var_edeb0521, 0.2);
            if (var_ea37ba57 == 0) {
                var_edeb0521 *= -1;
            }
            var_8d765541 = 0;
            if (var_edeb0521 == 0) {
                var_8d765541 = function_ec6ae51a(var_ea37ba57);
            } else if (var_edeb0521 > 0) {
                var_8d765541 = 1;
            } else {
                var_8d765541 = -1;
            }
            if (var_8d765541 == 0) {
                var_dd82beda[var_ea37ba57] = 0;
                continue;
            }
            var_691ec9a7 = var_dd82beda[var_ea37ba57] != var_8d765541;
            var_3e9543e8 = !var_691ec9a7 && gettime() - var_bc6e33ce[var_ea37ba57] > 250;
            if (var_691ec9a7 || var_3e9543e8) {
                var_bc6e33ce[var_ea37ba57] = gettime();
                var_dd82beda[var_ea37ba57] = var_8d765541;
                var_44b06a67[var_ea37ba57] = var_768a0348[var_ea37ba57] + var_8d765541;
                var_44b06a67[var_ea37ba57] = function_d43d9448(var_44b06a67[var_ea37ba57], grid_size[var_ea37ba57], var_26759105);
            }
        }
        player function_2947fddf(var_768a0348, var_44b06a67, grid_size, var_39359c1e, var_942056ea, var_26759105);
        waitframe(1);
    }
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 3, eflags: 0x6 linked
// Checksum 0xa311887e, Offset: 0x5f00
// Size: 0xa6
function private function_d43d9448(index, list_size, var_26759105) {
    min = 0;
    max = list_size - 1;
    if (is_true(var_26759105)) {
        if (index < min) {
            index = max;
        } else if (index > max) {
            index = min;
        }
    } else if (index < min) {
        index = min;
    } else if (index > max) {
        index = max;
    }
    return index;
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 6, eflags: 0x6 linked
// Checksum 0xc4040f7f, Offset: 0x5fb0
// Size: 0xec
function private function_2947fddf(&var_768a0348, var_44b06a67, grid_size, callback, var_942056ea, var_26759105) {
    player = self;
    if (var_44b06a67[0] != var_768a0348[0] || var_44b06a67[1] != var_768a0348[1]) {
        var_14639e4f = player [[ callback ]](var_768a0348, var_44b06a67, var_942056ea);
        for (var_ea37ba57 = 0; var_ea37ba57 < 2; var_ea37ba57++) {
            var_768a0348[var_ea37ba57] = var_44b06a67[var_ea37ba57];
            if (isdefined(var_14639e4f)) {
                var_768a0348[var_ea37ba57] = function_d43d9448(var_14639e4f[var_ea37ba57], grid_size[var_ea37ba57], var_26759105);
            }
        }
    }
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 1, eflags: 0x6 linked
// Checksum 0x662fb168, Offset: 0x60a8
// Size: 0x124
function private function_ec6ae51a(var_ea37ba57) {
    player = self;
    var_8d765541 = 0;
    if (var_ea37ba57 == 0) {
        if (function_aef1e8c3() || player function_347b5108()) {
            var_8d765541 = -1;
        } else if (function_9975a94d() || player function_3666f7a1()) {
            var_8d765541 = 1;
        }
    } else if (var_ea37ba57 == 1) {
        if (function_3d680c10() || player function_b2121354()) {
            var_8d765541 = 1;
        } else if (function_c2d8a326() || player function_b1caa36a()) {
            var_8d765541 = -1;
        }
    }
    return var_8d765541;
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x6 linked
// Checksum 0x44bb57c7, Offset: 0x61d8
// Size: 0x94
function private function_78f03fef(uid, input) {
    var_2361e57e = level.var_61e6d095.var_ebb98e0b[input];
    if (!isinarray(var_2361e57e, uid)) {
        var_2361e57e[var_2361e57e.size] = uid;
        globallogic_ui::function_9ed5232e("ScriptedWidgetData.blockGameInput." + level.var_61e6d095.inputs[input], 1);
    }
}

// Namespace namespace_61e6d095/namespace_61e6d095
// Params 2, eflags: 0x6 linked
// Checksum 0x41a860f4, Offset: 0x6278
// Size: 0x190
function private function_1b4bdb02(uid, inputs) {
    if (isdefined(inputs)) {
        if (!isdefined(inputs)) {
            inputs = [];
        } else if (!isarray(inputs)) {
            inputs = array(inputs);
        }
    } else {
        inputs = getarraykeys(level.var_61e6d095.inputs);
    }
    var_ebb98e0b = level.var_61e6d095.var_ebb98e0b;
    foreach (input in inputs) {
        var_ef0e4b33 = var_ebb98e0b[input].size;
        arrayremovevalue(var_ebb98e0b[input], uid, 1);
        if (var_ef0e4b33 && var_ebb98e0b[input].size == 0) {
            globallogic_ui::function_9ed5232e("ScriptedWidgetData.blockGameInput." + level.var_61e6d095.inputs[input], 0);
        }
    }
}

