// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\animation_shared.csc;

#namespace animation;

// Namespace animation/animation_debug_shared
// Params 0, eflags: 0x5
// Checksum 0x4323bbdc, Offset: 0x98
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_26dee29e21290041", &preinit, undefined, undefined, undefined);
}

// Namespace animation/animation_debug_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x169ade, Offset: 0xe0
// Size: 0x1c
function preinit() {
    /#
        thread init();
    #/
}

/#

    // Namespace animation/animation_debug_shared
    // Params 0, eflags: 0x0
    // Checksum 0x78b06fa4, Offset: 0x108
    // Size: 0x24c
    function init() {
        flag::init_dvar(#"anim_debug");
        flag::init_dvar(#"anim_debug_pause");
        for (;;) {
            level flag::wait_till_any([#"anim_debug", #"anim_debug_pause"]);
            a_players = getlocalplayers();
            foreach (player in a_players) {
                var_16f8cca9 = player getlocalclientnumber();
                a_ents = getentarray(var_16f8cca9, "<unknown string>", "<unknown string>");
                foreach (ent in a_ents) {
                    ent thread anim_info_render_thread();
                }
            }
            level flag::wait_till_clear_all([#"anim_debug", #"anim_debug_pause"]);
            level notify(#"kill_anim_debug");
        }
    }

    // Namespace animation/animation_debug_shared
    // Params 0, eflags: 0x0
    // Checksum 0xab92cc78, Offset: 0x360
    // Size: 0x5ae
    function anim_info_render_thread() {
        animation = self.var_6c4bb19.animation;
        v_origin_or_ent = self.var_6c4bb19.v_origin_or_ent;
        v_angles_or_tag = self.var_6c4bb19.v_angles_or_tag;
        self notify(#"_anim_info_render_thread_");
        self endon(#"_anim_info_render_thread_", #"death", #"scriptedanim");
        level endon(#"kill_anim_debug");
        while (true) {
            level flag::wait_till("<unknown string>");
            _init_frame();
            str_extra_info = "<unknown string>";
            color = (0, 1, 1);
            if (flag::get(#"firstframe")) {
                str_extra_info += "<unknown string>";
            }
            var_958054e5 = getanimlength(animation);
            var_f667af2f = self getanimtime(animation) * var_958054e5;
            var_4ef0e636 = int(var_f667af2f * 30);
            var_477f1c98 = int(var_958054e5 * 30);
            str_extra_info += "<unknown string>" + var_f667af2f + "<unknown string>" + var_958054e5 + "<unknown string>" + var_4ef0e636 + "<unknown string>" + var_477f1c98 + "<unknown string>";
            s_pos = _get_align_pos(v_origin_or_ent, v_angles_or_tag);
            self anim_origin_render(s_pos.origin, s_pos.angles);
            line(self.origin, s_pos.origin, color, 0.5, 1);
            sphere(s_pos.origin, 2, (0.3, 0.3, 0.3), 0.5, 1);
            if (!isvec(v_origin_or_ent) && v_origin_or_ent != self && v_origin_or_ent != level) {
                str_name = "<unknown string>";
                if (isdefined(v_origin_or_ent.animname)) {
                    str_name = v_origin_or_ent.animname;
                } else if (isdefined(v_origin_or_ent.targetname)) {
                    str_name = v_origin_or_ent.targetname;
                }
                print3d(v_origin_or_ent.origin + (0, 0, 5), str_name, (0.3, 0.3, 0.3), 1, 0.15);
            }
            self anim_origin_render(self.origin, self.angles);
            str_name = "<unknown string>";
            if (isdefined(self.anim_debug_name)) {
                str_name = self.anim_debug_name;
            } else if (isdefined(self.animname)) {
                str_name = self.animname;
            } else if (isdefined(self.targetname)) {
                str_name = self.targetname;
            }
            print3d(self.origin, self getentnum() + get_ent_type() + "<unknown string>" + str_name, color, 0.8, 0.3);
            print3d(self.origin - (0, 0, 5), "<unknown string>" + function_9e72a96(animation), color, 0.8, 0.3);
            print3d(self.origin - (0, 0, 7), str_extra_info, color, 0.8, 0.15);
            render_tag("<unknown string>", "<unknown string>");
            render_tag("<unknown string>", "<unknown string>");
            render_tag("<unknown string>", "<unknown string>");
            render_tag("<unknown string>", "<unknown string>");
            _reset_frame();
            waitframe(1);
        }
    }

    // Namespace animation/animation_debug_shared
    // Params 0, eflags: 0x0
    // Checksum 0x923e8cab, Offset: 0x918
    // Size: 0x72
    function get_ent_type() {
        return "<unknown string>" + (isdefined(isdefined(self.classname) ? self.classname : self.type) ? "<unknown string>" + (isdefined(self.classname) ? self.classname : self.type) : "<unknown string>") + "<unknown string>";
    }

    // Namespace animation/animation_debug_shared
    // Params 0, eflags: 0x0
    // Checksum 0x5ef2c20a, Offset: 0x998
    // Size: 0x8
    function _init_frame() {
        
    }

    // Namespace animation/animation_debug_shared
    // Params 0, eflags: 0x0
    // Checksum 0x9f834e38, Offset: 0x9a8
    // Size: 0x12
    function _reset_frame() {
        self.v_centroid = undefined;
    }

    // Namespace animation/animation_debug_shared
    // Params 2, eflags: 0x0
    // Checksum 0x60eb2c94, Offset: 0x9c8
    // Size: 0xcc
    function render_tag(str_tag, str_label) {
        if (!isdefined(str_label)) {
            str_label = str_tag;
        }
        v_tag_org = self gettagorigin(str_tag);
        if (isdefined(v_tag_org)) {
            v_tag_ang = self gettagangles(str_tag);
            anim_origin_render(v_tag_org, v_tag_ang, 2, str_label);
            if (isdefined(self.v_centroid)) {
                line(self.v_centroid, v_tag_org, (0.3, 0.3, 0.3), 0.5, 1);
            }
        }
    }

    // Namespace animation/animation_debug_shared
    // Params 4, eflags: 0x0
    // Checksum 0x3ccf14eb, Offset: 0xaa0
    // Size: 0x15c
    function anim_origin_render(org, angles, line_length, str_label) {
        if (!isdefined(line_length)) {
            line_length = 6;
        }
        if (isdefined(org) && isdefined(angles)) {
            originendpoint = org + vectorscale(anglestoforward(angles), line_length);
            originrightpoint = org + vectorscale(anglestoright(angles), -1 * line_length);
            originuppoint = org + vectorscale(anglestoup(angles), line_length);
            line(org, originendpoint, (1, 0, 0));
            line(org, originrightpoint, (0, 1, 0));
            line(org, originuppoint, (0, 0, 1));
            if (isdefined(str_label)) {
                print3d(org, str_label, (1, 0.752941, 0.796078), 1, 0.05);
            }
        }
    }

#/
