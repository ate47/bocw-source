// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\animation_shared.gsc;

#namespace animation;

// Namespace animation/animation_debug_shared
// Params 0, eflags: 0x5
// Checksum 0x4323bbdc, Offset: 0xa0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_26dee29e21290041", &preinit, undefined, undefined, undefined);
}

// Namespace animation/animation_debug_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x169ade, Offset: 0xe8
// Size: 0x1c
function preinit() {
    /#
        thread init();
    #/
}

/#

    // Namespace animation/animation_debug_shared
    // Params 0, eflags: 0x0
    // Checksum 0xe7be09c0, Offset: 0x110
    // Size: 0x1ac
    function init() {
        flag::init_dvar(#"anim_debug");
        flag::init_dvar(#"anim_debug_pause");
        for (;;) {
            level flag::wait_till_any([#"anim_debug", #"anim_debug_pause"]);
            waitframe(1);
            a_ents = getentarray("<unknown string>", "<unknown string>", 1);
            foreach (ent in a_ents) {
                ent thread anim_info_render_thread();
            }
            level flag::wait_till_clear_all([#"anim_debug", #"anim_debug_pause"]);
            level notify(#"kill_anim_debug");
        }
    }

    // Namespace animation/animation_debug_shared
    // Params 1, eflags: 0x0
    // Checksum 0x4ca3d63c, Offset: 0x2c8
    // Size: 0x3e
    function is_anim_debugging(ent) {
        return isdefined(ent) && ent flag::get(#"scriptedanim");
    }

    // Namespace animation/animation_debug_shared
    // Params 0, eflags: 0x0
    // Checksum 0xae4ec6d9, Offset: 0x310
    // Size: 0xd0e
    function anim_info_render_thread() {
        animation = self.var_6c4bb19.animation;
        v_origin_or_ent = self.var_6c4bb19.v_origin_or_ent;
        v_angles_or_tag = self.var_6c4bb19.v_angles_or_tag;
        var_f4b34dc1 = self.var_6c4bb19.var_f4b34dc1;
        self notify(#"_anim_info_render_thread_");
        self endon(#"_anim_info_render_thread_", #"death", #"scriptedanim");
        level endon(#"kill_anim_debug");
        if (!isdefined(v_origin_or_ent)) {
            v_origin_or_ent = self.origin;
        }
        if (!isvec(v_origin_or_ent)) {
            v_origin_or_ent endon(#"death");
        }
        if (!isdefined(level.debug_ents_by_origin)) {
            level.debug_ents_by_origin = [];
        }
        str_origin = "<unknown string>" + floor(self.origin[0] / 10) * 10 + "<unknown string>" + floor(self.origin[1] / 10) * 10 + "<unknown string>" + floor(self.origin[2] / 10) * 10;
        if (!isdefined(level.debug_ents_by_origin[str_origin])) {
            level.debug_ents_by_origin[str_origin] = [];
        }
        array::filter(level.debug_ents_by_origin[str_origin], 0, &is_anim_debugging);
        array::add(level.debug_ents_by_origin[str_origin], self, 0);
        n_same_origin_index = array::find(level.debug_ents_by_origin[str_origin], self);
        recordent(self);
        while (true) {
            _init_frame();
            str_extra_info = "<unknown string>";
            color = (1, 1, 0);
            if (flag::get(#"firstframe")) {
                str_extra_info += "<unknown string>";
            }
            var_13edeb1f = getanimframecount(animation);
            var_7b160393 = self getanimtime(animation) * var_13edeb1f;
            var_958054e5 = getanimlength(animation);
            var_f667af2f = self getanimtime(animation) * var_958054e5;
            str_extra_info += "<unknown string>" + var_f667af2f + "<unknown string>" + var_958054e5 + "<unknown string>" + var_7b160393 + "<unknown string>" + var_13edeb1f + "<unknown string>";
            s_pos = _get_align_pos(v_origin_or_ent, v_angles_or_tag);
            self anim_origin_render(s_pos.origin, s_pos.angles, undefined, undefined, !true);
            if (true) {
                line(self.origin, s_pos.origin, color, 0.5, 1);
                sphere(s_pos.origin, 2, (0.3, 0.3, 0.3), 0.5, 1);
            }
            recordline(self.origin, s_pos.origin, color, "<unknown string>");
            recordsphere(s_pos.origin, 2, (0.3, 0.3, 0.3), "<unknown string>");
            if (!isvec(v_origin_or_ent) && v_origin_or_ent != self && v_origin_or_ent != level) {
                str_name = "<unknown string>";
                if (isdefined(v_origin_or_ent.animname)) {
                    str_name = v_origin_or_ent.animname;
                } else if (isdefined(v_origin_or_ent.targetname)) {
                    str_name = v_origin_or_ent.targetname;
                }
                if (true) {
                    print3d(v_origin_or_ent.origin + (0, 0, 5), str_name, (0.3, 0.3, 0.3), 1, 0.15);
                }
                record3dtext(str_name, v_origin_or_ent.origin + (0, 0, 5), (0.3, 0.3, 0.3), "<unknown string>");
            }
            self anim_origin_render(self.origin, self.angles, undefined, undefined, !true);
            str_name = "<unknown string>";
            if (isdefined(self.anim_debug_name)) {
                str_name = self.anim_debug_name;
            } else if (isdefined(self.animname)) {
                str_name = self.animname;
            } else if (isdefined(self.targetname)) {
                str_name = self.targetname;
            }
            maso_they_don_t_see_us_ye_ = self.origin - (0, 0, 15 * n_same_origin_index);
            if (true) {
                print3d(maso_they_don_t_see_us_ye_, self getentnum() + get_ent_type() + "<unknown string>" + str_name, color, 0.8, 0.3);
                print3d(maso_they_don_t_see_us_ye_ - (0, 0, 5), "<unknown string>" + (isanimlooping(animation) ? "<unknown string>" : "<unknown string>") + function_9e72a96(animation), color, 0.8, 0.3);
                print3d(maso_they_don_t_see_us_ye_ - (0, 0, 11), str_extra_info, color, 0.8, 0.3);
                if (isarray(var_f4b34dc1) && var_f4b34dc1.size) {
                    n_z_offset = 17;
                    foreach (var_21c1ba1, str_anim in var_f4b34dc1) {
                        var_1c56a327 = "<unknown string>" + var_21c1ba1 + "<unknown string>" + function_9e72a96(str_anim);
                        print3d(maso_they_don_t_see_us_ye_ - (0, 0, n_z_offset), var_1c56a327, (0, 1, 1), 0.8, 0.15);
                        n_z_offset += 6;
                    }
                }
            }
            record3dtext(self getentnum() + get_ent_type() + "<unknown string>" + str_name, maso_they_don_t_see_us_ye_, color, "<unknown string>");
            record3dtext("<unknown string>" + animation, maso_they_don_t_see_us_ye_ - (0, 0, 5), color, "<unknown string>");
            record3dtext(str_extra_info, maso_they_don_t_see_us_ye_ - (0, 0, 7), color, "<unknown string>");
            render_tag("<unknown string>", "<unknown string>", !true);
            render_tag("<unknown string>", "<unknown string>", !true);
            render_tag("<unknown string>", "<unknown string>", !true);
            render_tag("<unknown string>", "<unknown string>", !true);
            render_tag("<unknown string>", "<unknown string>", !true);
            render_tag("<unknown string>", "<unknown string>", !true);
            render_tag("<unknown string>", "<unknown string>", !true);
            render_tag("<unknown string>", "<unknown string>", !true);
            render_tag("<unknown string>", "<unknown string>", !true);
            render_tag("<unknown string>", "<unknown string>", !true);
            render_tag("<unknown string>", "<unknown string>", !true);
            render_tag("<unknown string>", "<unknown string>", !true);
            render_tag("<unknown string>", "<unknown string>", !true);
            render_tag("<unknown string>", "<unknown string>", !true);
            render_tag("<unknown string>", "<unknown string>", !true);
            render_tag("<unknown string>", "<unknown string>", !true);
            render_tag("<unknown string>", "<unknown string>", !true);
            render_tag("<unknown string>", "<unknown string>", !true);
            render_tag("<unknown string>", "<unknown string>", !true);
            render_tag("<unknown string>", "<unknown string>", !true);
            _reset_frame();
            waitframe(1);
        }
    }

    // Namespace animation/animation_debug_shared
    // Params 0, eflags: 0x0
    // Checksum 0xb5dda020, Offset: 0x1028
    // Size: 0x6e
    function get_ent_type() {
        if (isactor(self)) {
            return "<unknown string>";
        }
        if (isvehicle(self)) {
            return "<unknown string>";
        }
        return "<unknown string>" + self.classname + "<unknown string>";
    }

    // Namespace animation/animation_debug_shared
    // Params 0, eflags: 0x0
    // Checksum 0xb429f018, Offset: 0x10a0
    // Size: 0x22
    function _init_frame() {
        self.v_centroid = self getcentroid();
    }

    // Namespace animation/animation_debug_shared
    // Params 0, eflags: 0x0
    // Checksum 0x960587f8, Offset: 0x10d0
    // Size: 0x12
    function _reset_frame() {
        self.v_centroid = undefined;
    }

    // Namespace animation/animation_debug_shared
    // Params 3, eflags: 0x0
    // Checksum 0x923e3d44, Offset: 0x10f0
    // Size: 0x134
    function render_tag(str_tag, str_label, b_recorder_only) {
        if (!isdefined(str_label)) {
            str_label = str_tag;
        }
        if (!isdefined(self.v_centroid)) {
            self.v_centroid = self getcentroid();
        }
        v_tag_org = self gettagorigin(str_tag);
        if (isdefined(v_tag_org)) {
            v_tag_ang = self gettagangles(str_tag);
            anim_origin_render(v_tag_org, v_tag_ang, 2, str_label, b_recorder_only);
            if (!b_recorder_only) {
                line(self.v_centroid, v_tag_org, (0.3, 0.3, 0.3), 0.5, 1);
            }
            recordline(self.v_centroid, v_tag_org, (0.3, 0.3, 0.3), "<unknown string>");
        }
    }

    // Namespace animation/animation_debug_shared
    // Params 5, eflags: 0x0
    // Checksum 0x9c0fc126, Offset: 0x1230
    // Size: 0x20c
    function anim_origin_render(org, angles, line_length, str_label, b_recorder_only) {
        if (!isdefined(line_length)) {
            line_length = 6;
        }
        if (isdefined(org) && isdefined(angles)) {
            originendpoint = org + vectorscale(anglestoforward(angles), line_length);
            originrightpoint = org + vectorscale(anglestoright(angles), -1 * line_length);
            originuppoint = org + vectorscale(anglestoup(angles), line_length);
            if (!b_recorder_only) {
                line(org, originendpoint, (1, 0, 0));
                line(org, originrightpoint, (0, 1, 0));
                line(org, originuppoint, (0, 0, 1));
            }
            recordline(org, originendpoint, (1, 0, 0), "<unknown string>");
            recordline(org, originrightpoint, (0, 1, 0), "<unknown string>");
            recordline(org, originuppoint, (0, 0, 1), "<unknown string>");
            if (isdefined(str_label)) {
                if (!b_recorder_only) {
                    print3d(org, str_label, (1, 0.752941, 0.796078), 1, 0.05);
                }
                record3dtext(str_label, org, (1, 0.752941, 0.796078), "<unknown string>");
            }
        }
    }

#/
