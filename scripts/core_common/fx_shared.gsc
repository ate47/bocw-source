// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\util_shared.gsc;

#namespace fx;

// Namespace fx/fx_shared
// Params 0, eflags: 0x0
// Checksum 0x5718bc3, Offset: 0x280
// Size: 0x84
function set_forward_and_up_vectors() {
    self.v[#"up"] = anglestoup(self.v[#"angles"]);
    self.v[#"forward"] = anglestoforward(self.v[#"angles"]);
}

// Namespace fx/fx_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xd1be871f, Offset: 0x310
// Size: 0x36
function get(fx) {
    if (isdefined(level._effect[fx])) {
        return level._effect[fx];
    }
    return fx;
}

// Namespace fx/fx_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x756020ea, Offset: 0x350
// Size: 0x136
function create_effect(type, fxid) {
    ent = undefined;
    if (!isdefined(level.createfxent)) {
        level.createfxent = [];
    }
    if (type == "exploder") {
        ent = spawnstruct();
    } else {
        if (!isdefined(level._fake_createfx_struct)) {
            level._fake_createfx_struct = spawnstruct();
        }
        ent = level._fake_createfx_struct;
    }
    level.createfxent[level.createfxent.size] = ent;
    ent.v.ent = [];
    ent.v[#"type"] = type;
    ent.v[#"fxid"] = fxid;
    ent.v[#"angles"] = (0, 0, 0);
    ent.v[#"origin"] = (0, 0, 0);
    ent.drawn.ent = 1;
    return ent;
}

// Namespace fx/fx_shared
// Params 1, eflags: 0x0
// Checksum 0xc179f105, Offset: 0x490
// Size: 0x50
function create_loop_effect(fxid) {
    ent = create_effect("loopfx", fxid);
    ent.v[#"delay"] = 0.5;
    return ent;
}

// Namespace fx/fx_shared
// Params 1, eflags: 0x0
// Checksum 0xb99eb665, Offset: 0x4e8
// Size: 0x50
function create_oneshot_effect(fxid) {
    ent = create_effect("oneshotfx", fxid);
    ent.v[#"delay"] = -15;
    return ent;
}

// Namespace fx/fx_shared
// Params 8, eflags: 0x2 linked
// Checksum 0xf0a9562c, Offset: 0x540
// Size: 0x294
function play(str_fx, v_origin = (0, 0, 0), v_angles = (0, 0, 0), time_to_delete_or_notify, b_link_to_self = 0, str_tag, b_no_cull, b_ignore_pause_world) {
    self notify(str_fx);
    if ((!isdefined(time_to_delete_or_notify) || !isstring(time_to_delete_or_notify) && !ishash(time_to_delete_or_notify) && time_to_delete_or_notify == -1) && is_true(b_link_to_self) && isdefined(str_tag)) {
        playfxontag(get(str_fx), self, str_tag, b_ignore_pause_world);
        return self;
    } else if (isdefined(time_to_delete_or_notify)) {
        m_fx = util::spawn_model("tag_origin", v_origin, v_angles);
        if (is_true(b_link_to_self)) {
            if (isdefined(str_tag)) {
                m_fx linkto(self, str_tag, (0, 0, 0), (0, 0, 0));
            } else {
                m_fx linkto(self);
            }
        }
        if (is_true(b_no_cull)) {
            m_fx setforcenocull();
        }
        playfxontag(get(str_fx), m_fx, "tag_origin", b_ignore_pause_world);
        m_fx thread _play_fx_delete(self, time_to_delete_or_notify);
        return m_fx;
    } else {
        playfx(get(str_fx), v_origin, anglestoforward(v_angles), anglestoup(v_angles), b_ignore_pause_world);
    }
}

// Namespace fx/fx_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x129c9fea, Offset: 0x7e0
// Size: 0xd4
function _play_fx_delete(ent, time_to_delete_or_notify = -1) {
    if (isstring(time_to_delete_or_notify) || ishash(time_to_delete_or_notify)) {
        ent waittill(#"death", time_to_delete_or_notify);
    } else if (time_to_delete_or_notify > 0) {
        ent waittilltimeout(time_to_delete_or_notify, #"death");
    } else {
        ent waittill(#"death");
    }
    if (isdefined(self)) {
        self delete();
    }
}

// Namespace fx/fx_shared
// Params 5, eflags: 0x0
// Checksum 0xcd694660, Offset: 0x8c0
// Size: 0x4fc
function function_70ba68f1(target, var_486f31cd, var_bef008a5, var_e9f7aace, var_1436aa92) {
    self flag::set("flag_autofocus_on");
    function_5ac4dc99("_internal_dof_i_target_type", -1);
    function_5ac4dc99("_internal_dof_i_target_entnum", -1);
    function_5ac4dc99("_internal_dof_v_target_origin", (-1, -1, -1));
    function_5ac4dc99("_internal_dof_s_target_tag", "-1");
    function_5ac4dc99("_internal_dof_f_fstop", -1);
    function_5ac4dc99("_internal_dof_f_focus_time", -1);
    function_5ac4dc99("_internal_dof_f_fstop_time", -1);
    function_5ac4dc99("_internal_dof_i_playernum", -1);
    function_5ac4dc99("_internal_dof_i_refcounter", 0);
    if (!isdefined(target)) {
        return;
    }
    if (isvec(target)) {
        setdvar(#"hash_bc41fa458ae92e7", -999);
        setdvar(#"hash_392d9d32234cbdcc", -1);
        setdvar(#"hash_7c405920e0b200ee", target);
    } else {
        var_3ed74fac = target getentitynumber();
        var_dc3df1b8 = target getentitytype();
        setdvar(#"hash_bc41fa458ae92e7", var_3ed74fac);
        setdvar(#"hash_392d9d32234cbdcc", var_dc3df1b8);
        setdvar(#"hash_7861ab2e5848a513", (-1, -1, -1));
        if (isdefined(var_1436aa92)) {
            setdvar(#"hash_41dce9c0c166c79e", var_1436aa92);
        } else {
            setdvar(#"hash_41dce9c0c166c79e", "-1");
        }
    }
    if (isdefined(var_486f31cd)) {
        setdvar(#"hash_5c3fe2ea8a7f72a5", float(var_486f31cd));
    } else {
        setdvar(#"hash_5c3fe2ea8a7f72a5", -1);
    }
    if (isdefined(var_bef008a5)) {
        setdvar(#"hash_3a0d8b2cf7ba0639", float(var_bef008a5));
    } else {
        setdvar(#"hash_3a0d8b2cf7ba0639", -1);
    }
    if (isdefined(var_e9f7aace)) {
        setdvar(#"hash_4b1a4ae3db9de087", float(var_e9f7aace));
    } else {
        setdvar(#"hash_4b1a4ae3db9de087", -1);
    }
    entnum = self getentitynumber();
    setdvar(#"hash_52cad1c182620ca9", entnum);
    var_d4c23ff = getdvarint(#"hash_106a12e8fdbe475d", 0);
    var_d4c23ff++;
    setdvar(#"hash_106a12e8fdbe475d", var_d4c23ff);
    self thread function_13fa0731();
}

// Namespace fx/fx_shared
// Params 2, eflags: 0x0
// Checksum 0x3506f25b, Offset: 0xdc8
// Size: 0x254
function function_82104e32(var_486f31cd, var_e9f7aace) {
    self flag::set("flag_autofocus_on");
    function_5ac4dc99("_internal_fob_i_playernum", -1);
    function_5ac4dc99("_internal_fob_f_fstop", -1);
    function_5ac4dc99("_internal_fob_f_fstop_time", -1);
    function_5ac4dc99("_internal_fob_or_dof_i_refcounter", 0);
    function_5ac4dc99("_internal_debug_dof", 0);
    if (isdefined(var_486f31cd)) {
        setdvar(#"hash_3fc2053e5e3e9257", float(var_486f31cd));
    } else {
        setdvar(#"hash_3fc2053e5e3e9257", -1);
    }
    if (isdefined(var_e9f7aace)) {
        setdvar(#"hash_2fe2fecfa04f8331", float(var_e9f7aace));
    } else {
        setdvar(#"hash_2fe2fecfa04f8331", -1);
    }
    entnum = self getentitynumber();
    setdvar(#"hash_2ae1e45cacd34543", entnum);
    var_d4c23ff = getdvarint(#"hash_5a61bb3125c6608b", 0);
    var_d4c23ff++;
    setdvar(#"hash_5a61bb3125c6608b", var_d4c23ff);
    self thread function_13fa0731();
}

// Namespace fx/fx_shared
// Params 0, eflags: 0x6 linked
// Checksum 0xd6270cf8, Offset: 0x1028
// Size: 0x84
function private function_13fa0731() {
    self notify(#"hash_1481a83e14539c4");
    self endon(#"hash_1481a83e14539c4");
    self endoncallback(&function_e592b635, #"death");
    while (1) {
        self flag::wait_till_clear("flag_autofocus_on");
        function_e592b635();
        break;
    }
}

// Namespace fx/fx_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x546ef3fc, Offset: 0x10b8
// Size: 0x19c
function private function_e592b635(*eventstruct) {
    setdvar(#"hash_52cad1c182620ca9", -1);
    setdvar(#"hash_392d9d32234cbdcc", -1);
    setdvar(#"hash_bc41fa458ae92e7", -1);
    setdvar(#"hash_7861ab2e5848a513", (-1, -1, -1));
    setdvar(#"hash_41dce9c0c166c79e", "-1");
    setdvar(#"hash_5c3fe2ea8a7f72a5", -1);
    setdvar(#"hash_3a0d8b2cf7ba0639", -1);
    setdvar(#"hash_4b1a4ae3db9de087", -1);
    setdvar(#"hash_2ae1e45cacd34543", -1);
    setdvar(#"hash_3fc2053e5e3e9257", -1);
}

