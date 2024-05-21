// Atian COD Tools GSC CW decompiler test
#using script_6c2a6f88ebaa044;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\string_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\animation_debug_shared.gsc;

#namespace animation;

// Namespace animation/animation_shared
// Params 0, eflags: 0x5
// Checksum 0xae9ed411, Offset: 0x4e0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"animation", &preinit, undefined, undefined, undefined);
}

// Namespace animation/animation_shared
// Params 0, eflags: 0x6 linked
// Checksum 0xf51ebb, Offset: 0x528
// Size: 0xf4
function private preinit() {
    if (getdvarstring(#"debug_anim_shared", "") == "") {
        setdvar(#"debug_anim_shared", "");
    }
    setup_notetracks();
    callback::on_laststand(&reset_player);
    callback::on_bleedout(&reset_player);
    callback::on_player_killed(&reset_player);
    callback::on_spawned(&reset_player);
}

// Namespace animation/animation_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x8de79dfa, Offset: 0x628
// Size: 0x6c
function reset_player(*params) {
    flag::clear(#"firstframe");
    flag::clear(#"scripted_anim_this_frame");
    flag::clear(#"scriptedanim");
}

// Namespace animation/animation_shared
// Params 3, eflags: 0x0
// Checksum 0x82cd23df, Offset: 0x6a0
// Size: 0x3c
function first_frame(animation, v_origin_or_ent, v_angles_or_tag) {
    self thread play(animation, v_origin_or_ent, v_angles_or_tag, 0);
}

// Namespace animation/animation_shared
// Params 3, eflags: 0x0
// Checksum 0x3be840f7, Offset: 0x6e8
// Size: 0x54
function last_frame(animation, v_origin_or_ent, v_angles_or_tag) {
    self thread play(animation, v_origin_or_ent, v_angles_or_tag, 1, 0, 0, 0, 1, undefined, undefined, undefined, 1);
}

// Namespace animation/animation_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x45ac6b17, Offset: 0x748
// Size: 0x1e4
function play_siege(str_anim, n_rate = 1) {
    self notify(#"stop_siege_anim");
    self endon(#"death", #"scene_stop", #"stop_siege_anim");
    /#
        if (sessionmodeismultiplayergame() || sessionmodeiswarzonegame()) {
            iprintlnbold("right" + function_9e72a96(str_anim) + "<unknown string>");
            println("right" + function_9e72a96(str_anim) + "<unknown string>");
        }
    #/
    if (isdedicated()) {
        println("<unknown string>" + function_9e72a96(str_anim) + "<unknown string>");
        waitframe(1);
        return;
    }
    b_loop = function_35c3fa74(str_anim);
    self function_cf6be307(str_anim, "default", n_rate, b_loop);
    if (b_loop) {
        self waittill(#"stop_siege_anim");
        return;
    }
    n_length = function_658484f7(str_anim);
    wait(n_length);
}

// Namespace animation/animation_shared
// Params 15, eflags: 0x2 linked
// Checksum 0xc2cf8053, Offset: 0x938
// Size: 0x1ba
function play(animation, v_origin_or_ent, v_angles_or_tag, n_rate = 1, n_blend_in = 0.2, n_blend_out = 0.2, n_lerp = 0, n_start_time = 0, b_show_player_firstperson_weapon = 0, b_unlink_after_completed = 1, var_f4b34dc1, paused = 0, mode = "normal", var_dc569aa8 = "linear", var_1971fee9 = 0) {
    if (self isragdoll()) {
        return;
    }
    self endon(#"death", #"entering_last_stand");
    self thread _play(animation, v_origin_or_ent, v_angles_or_tag, n_rate, n_blend_in, n_blend_out, n_lerp, n_start_time, b_show_player_firstperson_weapon, b_unlink_after_completed, var_f4b34dc1, paused, mode, var_dc569aa8, var_1971fee9);
    if (n_rate > 0) {
        self waittill(#"scriptedanim");
    }
}

// Namespace animation/animation_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xef212ea6, Offset: 0xb00
// Size: 0x74
function stop(n_blend = 0.2, var_8b43f3e3 = 0) {
    flag::clear(#"scriptedanim");
    if (isdefined(self)) {
        self stopanimscripted(n_blend, var_8b43f3e3);
    }
}

/#

    // Namespace animation/animation_shared
    // Params 2, eflags: 0x0
    // Checksum 0xc76ee1ec, Offset: 0xb80
    // Size: 0x204
    function debug_print(str_animation, str_msg) {
        str_dvar = getdvarstring(#"debug_anim_shared", "<unknown string>");
        if (str_dvar != "<unknown string>") {
            if (!isstring(str_animation)) {
                str_animation = isdefined(function_9e72a96(str_animation)) ? "<unknown string>" + function_9e72a96(str_animation) : "<unknown string>";
            }
            b_print = 0;
            if (strisnumber(str_dvar)) {
                if (int(str_dvar) > 0) {
                    b_print = 1;
                }
            } else if (issubstr(str_animation, str_dvar) || isdefined(self.animname) && issubstr(self.animname, str_dvar)) {
                b_print = 1;
            }
            if (b_print) {
                printtoprightln(str_animation + "<unknown string>" + string::rjust(str_msg, 10) + "<unknown string>" + string::rjust("<unknown string>" + self getentitynumber(), 4) + "<unknown string>" + string::rjust("<unknown string>" + gettime(), 6) + "<unknown string>", (1, 1, 0), -1);
            }
        }
    }

#/

// Namespace animation/animation_shared
// Params 15, eflags: 0x2 linked
// Checksum 0xe6fcffa7, Offset: 0xd90
// Size: 0xa4c
function _play(animation, v_origin_or_ent, v_angles_or_tag, n_rate, n_blend_in, n_blend_out, n_lerp, n_start_time, b_show_player_firstperson_weapon, b_unlink_after_completed, var_f4b34dc1, paused, mode, var_dc569aa8, var_1971fee9) {
    self notify(#"new_scripted_anim");
    self endoncallback(&function_2adc2518, #"death", #"entering_last_stand", #"new_scripted_anim");
    function_2ddeb362("animation::_play " + animation);
    /#
        debug_print(animation, "<unknown string>");
    #/
    flag::set_val("firstframe", n_rate == 0 && !is_true(paused) && n_start_time === 0);
    flag::set(#"scripted_anim_this_frame");
    flag::set(#"scriptedanim");
    if (!isdefined(v_origin_or_ent)) {
        v_origin_or_ent = self;
    }
    if (!isdefined(mode)) {
        mode = "normal";
    }
    if (isvec(v_origin_or_ent)) {
        v_origin = v_origin_or_ent;
    } else {
        v_origin = isdefined(v_origin_or_ent.origin) ? v_origin_or_ent.origin : (0, 0, 0);
    }
    if (isvec(v_angles_or_tag)) {
        v_angles = v_angles_or_tag;
    } else if (isstring(v_angles_or_tag)) {
        str_tag = v_angles_or_tag;
        v_origin = v_origin_or_ent gettagorigin(str_tag);
        v_angles = v_origin_or_ent gettagangles(str_tag);
        assert(isdefined(v_origin) && isdefined(v_angles), "<unknown string>" + function_9e72a96(animation) + "<unknown string>" + v_origin_or_ent getentitynumber() + "<unknown string>" + v_angles_or_tag + "<unknown string>");
        if (!isdefined(v_origin)) {
            v_origin = v_origin_or_ent.origin;
        }
        if (!isdefined(v_angles)) {
            v_angles = v_origin_or_ent.angles;
        }
    } else {
        v_angles = isdefined(v_origin_or_ent.angles) ? v_origin_or_ent.angles : (0, 0, 0);
    }
    if (self isplayinganimscripted() && isanimlooping(animation)) {
        waittillframeend();
    }
    self.str_current_anim = animation;
    b_link = isentity(v_origin_or_ent);
    if (isdefined(self.n_script_anim_rate)) {
        n_rate = self.n_script_anim_rate;
    }
    if (isdefined(self.var_5b22d53)) {
        n_blend_out = self.var_5b22d53;
    }
    if (isdefined(self.var_7d32b2c6)) {
        n_lerp = self.var_7d32b2c6;
    }
    if (n_lerp > 0) {
        prevorigin = self.origin;
        prevangles = self.angles;
    }
    if (b_link) {
        if (isactor(self)) {
            self forceteleport(v_origin, v_angles);
        } else if (isplayer(self)) {
            self setorigin(v_origin);
            self setplayerangles(v_angles);
        } else {
            self.origin = v_origin;
            self.angles = v_angles;
        }
        if (v_origin_or_ent != self) {
            if (isstring(str_tag)) {
                self linkto(v_origin_or_ent, str_tag, (0, 0, 0), (0, 0, 0));
            } else {
                self linkto(v_origin_or_ent);
            }
        }
        if (n_lerp > 0) {
            if (isactor(self)) {
                self forceteleport(prevorigin, prevangles);
            } else if (isplayer(self)) {
                self setorigin(prevorigin);
                self setplayerangles(prevangles);
            } else {
                self.origin = prevorigin;
                self.angles = prevangles;
            }
        }
    }
    if (self hasdobj() && !(self.classname === "noclass")) {
        self animscripted(animation, v_origin, v_angles, animation, mode, undefined, n_rate, n_blend_in, n_lerp, n_start_time, 1, b_show_player_firstperson_weapon, var_f4b34dc1, paused, var_dc569aa8, var_1971fee9);
        var_1abb7e22 = 1;
    } else {
        println("<unknown string>" + self getentitynumber() + "<unknown string>" + function_9e72a96(animation));
    }
    if (isplayer(self)) {
        thread set_player_clamps(max(n_lerp, n_blend_in));
    }
    /#
        self.var_80c69db6 = "<unknown string>";
        self.var_6c4bb19 = {#animation:animation, #v_origin_or_ent:v_origin_or_ent, #v_angles_or_tag:v_angles_or_tag, #var_f4b34dc1:var_f4b34dc1};
        if (level flag::get("<unknown string>")) {
            self thread anim_info_render_thread();
        }
    #/
    if (!isanimlooping(animation) && n_blend_out > 0 && n_rate > 0 && n_start_time < 1) {
        if (!animhasnotetrack(animation, "start_ragdoll") && !animhasnotetrack(animation, "stop_anim")) {
            self thread _blend_out(animation, n_blend_out, n_rate, n_start_time);
        }
    }
    if (!flag::get(#"firstframe")) {
        self thread handle_notetracks(animation);
        if (is_true(var_1abb7e22) && (getanimframecount(animation) > 1 || isanimlooping(animation))) {
            self waittillmatch({#notetrack:"end"}, animation);
        } else {
            waitframe(1);
        }
        if (b_link && is_true(b_unlink_after_completed)) {
            self unlink();
        }
        if (isplayer(self)) {
            self util::delay(float(function_60d95f53()) / 1000, array("disconnect", #"setviewclamp"), &function_d497dbe7);
        }
        self.str_current_anim = undefined;
        self.var_80c69db6 = undefined;
        self.var_6c4bb19 = undefined;
        flag::clear(#"scriptedanim");
        flag::clear(#"firstframe");
        /#
            debug_print(animation, "<unknown string>");
        #/
        waittillframeend();
        flag::clear(#"scripted_anim_this_frame");
    }
}

// Namespace animation/animation_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xbdc55746, Offset: 0x17e8
// Size: 0x9e
function function_2adc2518(str_notify) {
    if (isalive(self) && isplayer(self) && str_notify !== #"new_scripted_anim") {
        function_d497dbe7();
    }
    if (isdefined(self) && str_notify == "entering_last_stand") {
        self.var_80c69db6 = undefined;
        self.str_current_anim = undefined;
        self.var_6c4bb19 = undefined;
    }
}

// Namespace animation/animation_shared
// Params 4, eflags: 0x2 linked
// Checksum 0x1001b7f7, Offset: 0x1890
// Size: 0x15a
function _blend_out(animation, n_blend, *n_rate, *n_start_time) {
    self endon(#"death", #"end", #"scriptedanim", #"new_scripted_anim");
    n_server_length = floor(getanimlength(n_rate) / float(function_60d95f53()) / 1000) * float(function_60d95f53()) / 1000;
    while (true) {
        n_current_time = self getanimtime(n_rate) * n_server_length;
        n_time_left = n_server_length - n_current_time;
        if (n_time_left <= n_start_time) {
            self stop(n_start_time);
            break;
        }
        waitframe(1);
    }
}

// Namespace animation/animation_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x4b34c3a3, Offset: 0x19f8
// Size: 0x4a
function _get_align_ent(e_align) {
    e = self;
    if (isdefined(e_align)) {
        e = e_align;
    }
    if (!isdefined(e.angles)) {
        e.angles = (0, 0, 0);
    }
    return e;
}

// Namespace animation/animation_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xc1abf93c, Offset: 0x1a50
// Size: 0x186
function _get_align_pos(v_origin_or_ent = self.origin, v_angles_or_tag = isdefined(self.angles) ? self.angles : (0, 0, 0)) {
    s = spawnstruct();
    if (isvec(v_origin_or_ent)) {
        assert(isvec(v_angles_or_tag), "<unknown string>");
        s.origin = v_origin_or_ent;
        s.angles = v_angles_or_tag;
    } else {
        e_align = _get_align_ent(v_origin_or_ent);
        if (isstring(v_angles_or_tag)) {
            s.origin = e_align gettagorigin(v_angles_or_tag);
            s.angles = e_align gettagangles(v_angles_or_tag);
        } else {
            s.origin = e_align.origin;
            s.angles = e_align.angles;
        }
    }
    if (!isdefined(s.angles)) {
        s.angles = (0, 0, 0);
    }
    return s;
}

// Namespace animation/animation_shared
// Params 4, eflags: 0x0
// Checksum 0xeb23959d, Offset: 0x1be0
// Size: 0xcc
function teleport(animation, v_origin_or_ent, v_angles_or_tag, time = 0) {
    s = _get_align_pos(v_origin_or_ent, v_angles_or_tag);
    v_pos = getstartorigin(s.origin, s.angles, animation, time);
    v_ang = getstartangles(s.origin, s.angles, animation, time);
    util::teleport(v_pos, v_ang);
}

// Namespace animation/animation_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x7814b083, Offset: 0x1cb8
// Size: 0xdc
function function_a23b2a60(animation, var_f9e56773 = 0, var_d7b4a07c = 1) {
    assert(var_d7b4a07c > var_f9e56773);
    localdelta = getmovedelta(animation, var_f9e56773, var_d7b4a07c);
    animtime = getanimlength(animation);
    length = length2d(localdelta);
    speed = length / animtime * (var_d7b4a07c - var_f9e56773);
    return speed;
}

// Namespace animation/animation_shared
// Params 6, eflags: 0x2 linked
// Checksum 0x95a6ae64, Offset: 0x1da0
// Size: 0xcc
function reach(animation, v_origin_or_ent, v_angles_or_tag, b_disable_arrivals = 0, b_shoot = 1, var_5207b7a8 = undefined) {
    self endon(#"death");
    s_tracker = spawnstruct();
    self thread _reach(s_tracker, animation, v_origin_or_ent, v_angles_or_tag, b_disable_arrivals, b_shoot, var_5207b7a8);
    s_tracker waittill(#"done");
}

// Namespace animation/animation_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x7ddbc8ed, Offset: 0x1e78
// Size: 0x51e
function _reach(s_tracker, animation, v_origin_or_ent, v_angles_or_tag, b_disable_arrivals = 0, b_shoot = 1, var_5207b7a8 = undefined) {
    self endon(#"death");
    if (!isdefined(self.smart_object)) {
        self notify(#"stop_going_to_node");
    }
    self notify(#"new_anim_reach");
    flag::wait_till_clear("anim_reach");
    flag::set(#"anim_reach");
    s = _get_align_pos(v_origin_or_ent, v_angles_or_tag);
    v_goal = getstartorigin(s.origin, s.angles, animation);
    n_delta = distancesquared(v_goal, self.origin);
    var_6e0391f9 = undefined;
    if (ai::has_behavior_attribute("demeanor")) {
        var_6e0391f9 = ai::get_behavior_attribute("demeanor");
    }
    if (isdefined(var_5207b7a8)) {
        ai::set_behavior_attribute("demeanor", var_5207b7a8);
    }
    if (n_delta > 4 * 4) {
        self stop(0.2);
        if (b_disable_arrivals) {
            if (!is_true(self.var_b8b2cd98) && ai::has_behavior_attribute("disablearrivals")) {
                ai::set_behavior_attribute("disablearrivals", 1);
            }
            self.stopanimdistsq = 0.0001;
        }
        if (ai::has_behavior_attribute("vignette_mode") && !is_true(self.ignorevignettemodeforanimreach)) {
            ai::set_behavior_attribute("vignette_mode", "fast");
        }
        self thread ai::force_goal(v_goal, b_shoot, "reach_timed_out", 0, 1);
        /#
            self thread debug_anim_reach(v_goal, animation);
        #/
        self thread function_ba45bb6c();
        self childthread function_d7627522(animation, v_goal);
        s_waitresult = self waittill(#"goal", #"new_anim_reach", #"new_scripted_anim", #"stop_scripted_anim", #"reach_timed_out");
        /#
            if (s_waitresult._notify === "<unknown string>") {
                iprintlnbold("<unknown string>" + function_9e72a96(animation) + "<unknown string>" + v_goal);
                println("<unknown string>" + function_9e72a96(animation) + "<unknown string>" + v_goal);
            }
        #/
        if (ai::has_behavior_attribute("disablearrivals")) {
            ai::set_behavior_attribute("disablearrivals", 0);
            self.stopanimdistsq = 0;
        }
        self.var_b8b2cd98 = undefined;
    } else {
        waittillframeend();
    }
    if (ai::has_behavior_attribute("vignette_mode")) {
        ai::set_behavior_attribute("vignette_mode", "off");
    }
    if (isdefined(var_5207b7a8)) {
        ai::set_behavior_attribute("demeanor", var_6e0391f9);
    }
    flag::clear(#"anim_reach");
    s_tracker notify(#"done");
    self notify(#"reach_done");
}

// Namespace animation/animation_shared
// Params 3, eflags: 0x2 linked
// Checksum 0xad1a6129, Offset: 0x23a0
// Size: 0x15c
function function_d7627522(animation, v_goal, radius = 100) {
    radiussq = sqr(radius);
    var_f11838cd = function_a23b2a60(animation, 0, 0.1);
    if (var_f11838cd <= 1 || var_f11838cd >= 300) {
        return;
    }
    while (distance2dsquared(self.origin, v_goal) > radiussq) {
        waitframe(1);
    }
    self setdesiredspeed(var_f11838cd);
    s_waitresult = self waittill(#"goal", #"new_anim_reach", #"new_scripted_anim", #"stop_scripted_anim", #"reach_timed_out");
    self function_9ae1c50();
}

// Namespace animation/animation_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xe049a6c, Offset: 0x2508
// Size: 0x134
function function_ba45bb6c() {
    self endon(#"death", #"goal", #"new_anim_reach", #"new_scripted_anim", #"stop_scripted_anim", #"reach_done", #"reach_timed_out");
    var_89ae1c69 = self.origin;
    var_dc2b2d0b = 0;
    while (true) {
        wait(1);
        var_ab436758 = self.origin;
        if (distance(var_ab436758, var_89ae1c69) < 60) {
            var_dc2b2d0b += 1;
        } else {
            var_dc2b2d0b = 0;
            var_89ae1c69 = self.origin;
        }
        if (var_dc2b2d0b > 10) {
            self notify(#"reach_timed_out");
            return;
        }
    }
}

/#

    // Namespace animation/animation_shared
    // Params 2, eflags: 0x0
    // Checksum 0xa63f05f9, Offset: 0x2648
    // Size: 0x166
    function debug_anim_reach(v_goal, str_anim) {
        self endon(#"death", #"goal", #"new_anim_reach", #"new_scripted_anim", #"stop_scripted_anim");
        while (true) {
            level flag::wait_till("<unknown string>");
            print3d(self.origin, "<unknown string>" + function_9e72a96(str_anim) + "<unknown string>" + v_goal + "<unknown string>" + (ispointonnavmesh(v_goal) ? "<unknown string>" : "<unknown string>"), (1, 0, 0), 1, 0.4, 1);
            line(self.origin, v_goal, (1, 0, 0));
            circle(v_goal, 10, (1, 0, 0));
            waitframe(1);
        }
    }

#/

// Namespace animation/animation_shared
// Params 7, eflags: 0x2 linked
// Checksum 0x9d320741, Offset: 0x27b8
// Size: 0x92
function set_death_anim(animation, v_origin_or_ent, v_angles_or_tag, n_rate, n_blend_in, n_blend_out, n_lerp) {
    self notify(#"new_death_anim");
    if (isdefined(animation)) {
        self.skipdeath = 1;
        self thread _do_death_anim(animation, v_origin_or_ent, v_angles_or_tag, n_rate, n_blend_in, n_blend_out, n_lerp);
        return;
    }
    self.skipdeath = 0;
}

// Namespace animation/animation_shared
// Params 7, eflags: 0x2 linked
// Checksum 0xdbeebcf6, Offset: 0x2858
// Size: 0xa4
function _do_death_anim(animation, v_origin_or_ent, v_angles_or_tag, n_rate, n_blend_in, n_blend_out, n_lerp) {
    self endon(#"new_death_anim");
    self waittill(#"death");
    if (isdefined(self) && !self isragdoll()) {
        self play(animation, v_origin_or_ent, v_angles_or_tag, n_rate, n_blend_in, n_blend_out, n_lerp);
    }
}

// Namespace animation/animation_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xe2a09226, Offset: 0x2908
// Size: 0xb2
function set_player_clamps(blend_time) {
    if (is_true(self.player_anim_look_enabled)) {
        if (!isdefined(blend_time)) {
            blend_time = 0;
        }
        if (blend_time > 0 && !is_true(self.var_cdb243ec)) {
            wait(blend_time);
        }
        self setviewclamp(self.player_anim_clamp_right, self.player_anim_clamp_left, self.player_anim_clamp_top, self.player_anim_clamp_bottom, undefined, self.var_fcbf7c5a);
        self.var_cdb243ec = 1;
    }
}

// Namespace animation/animation_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x9d00091d, Offset: 0x29c8
// Size: 0x2e
function function_d497dbe7() {
    self setviewclamp(0, 0, 0, 0, undefined, 0);
    self.var_cdb243ec = undefined;
}

// Namespace animation/animation_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x4fe75d20, Offset: 0x2a00
// Size: 0x74
function add_notetrack_func(funcname, func) {
    if (!isdefined(level._animnotifyfuncs)) {
        level._animnotifyfuncs = [];
    }
    assert(!isdefined(level._animnotifyfuncs[funcname]), "<unknown string>");
    level._animnotifyfuncs[funcname] = func;
}

// Namespace animation/animation_shared
// Params 4, eflags: 0x42 linked
// Checksum 0xf3956afa, Offset: 0x2a80
// Size: 0x11a
function add_global_notetrack_handler(str_note, func, pass_notify_params, ...) {
    if (!isdefined(level._animnotetrackhandlers)) {
        level._animnotetrackhandlers = [];
    }
    if (!isdefined(level._animnotetrackhandlers[str_note])) {
        level._animnotetrackhandlers[str_note] = [];
    }
    if (!isdefined(level._animnotetrackhandlers[str_note])) {
        level._animnotetrackhandlers[str_note] = [];
    } else if (!isarray(level._animnotetrackhandlers[str_note])) {
        level._animnotetrackhandlers[str_note] = array(level._animnotetrackhandlers[str_note]);
    }
    level._animnotetrackhandlers[str_note][level._animnotetrackhandlers[str_note].size] = array(func, pass_notify_params, vararg);
}

// Namespace animation/animation_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x512b6ff8, Offset: 0x2ba8
// Size: 0x120
function call_notetrack_handler(str_note, param1, param2) {
    if (isdefined(level._animnotetrackhandlers[str_note])) {
        foreach (handler in level._animnotetrackhandlers[str_note]) {
            func = handler[0];
            passnotifyparams = handler[1];
            args = handler[2];
            if (passnotifyparams) {
                self [[ func ]](param1, param2);
                continue;
            }
            util::single_func_argarray(self, func, args);
        }
    }
}

// Namespace animation/animation_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xec3e5cf, Offset: 0x2cd0
// Size: 0x56c
function setup_notetracks() {
    add_notetrack_func("flag::set", &flag::set);
    add_notetrack_func("flag::clear", &flag::clear);
    add_notetrack_func("util::break_glass", &util::break_glass);
    add_notetrack_func("PhysicsLaunch", &function_eb0aa7cf);
    add_notetrack_func("cinematicMotion::SpeedModifierServer", &cinematicmotion::function_92dd9a20);
    add_notetrack_func("cinematicMotion::OverrideServer", &cinematicmotion::function_bbf6e778);
    add_notetrack_func("PlayGestureViewmodel", &playgestureviewmodel);
    clientfield::register("scriptmover", "cracks_on", 1, getminbitcountfornum(4), "int");
    clientfield::register("scriptmover", "cracks_off", 1, getminbitcountfornum(4), "int");
    add_global_notetrack_handler("red_cracks_on", &cracks_on, 0, "red");
    add_global_notetrack_handler("green_cracks_on", &cracks_on, 0, "green");
    add_global_notetrack_handler("blue_cracks_on", &cracks_on, 0, "blue");
    add_global_notetrack_handler("all_cracks_on", &cracks_on, 0, "all");
    add_global_notetrack_handler("red_cracks_off", &cracks_off, 0, "red");
    add_global_notetrack_handler("green_cracks_off", &cracks_off, 0, "green");
    add_global_notetrack_handler("blue_cracks_off", &cracks_off, 0, "blue");
    add_global_notetrack_handler("all_cracks_off", &cracks_off, 0, "all");
    add_global_notetrack_handler("headlook_on", &enable_headlook, 0, 1);
    add_global_notetrack_handler("headlook_off", &enable_headlook, 0, 0);
    add_global_notetrack_handler("headlook_notorso_on", &enable_headlook_notorso, 0, 1);
    add_global_notetrack_handler("headlook_notorso_off", &enable_headlook_notorso, 0, 0);
    add_global_notetrack_handler("attach weapon", &attach_weapon, 1);
    add_global_notetrack_handler("detach weapon", &detach_weapon, 1);
    add_global_notetrack_handler("fire", &fire_weapon, 1);
    add_global_notetrack_handler("vehicle_fire", &function_71d33ba3, 1);
    add_global_notetrack_handler("stop_anim", &function_6eb39026, 1);
    add_global_notetrack_handler("gun_up", &function_bd10424d, 0);
    add_global_notetrack_handler("gun_down", &function_e97a4b27, 0);
    add_global_notetrack_handler("gun_up_quick", &function_a37627b3, 0);
    add_global_notetrack_handler("gun_down_quick", &function_54657829, 0);
}

// Namespace animation/animation_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xc18163f2, Offset: 0x3248
// Size: 0xce
function handle_notetracks(animation) {
    self endon(#"death", #"new_scripted_anim");
    while (true) {
        waitresult = self waittill(animation);
        str_note = waitresult.notetrack;
        if (isdefined(str_note)) {
            if (str_note != "end" && str_note != "loop_end") {
                self thread call_notetrack_handler(str_note, waitresult.param2, waitresult.param3);
                continue;
            }
            return;
        }
    }
}

// Namespace animation/animation_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x642dd68b, Offset: 0x3320
// Size: 0xe2
function cracks_on(str_type) {
    switch (str_type) {
    case #"red":
        clientfield::set("cracks_on", 1);
        break;
    case #"green":
        clientfield::set("cracks_on", 3);
        break;
    case #"blue":
        clientfield::set("cracks_on", 2);
        break;
    case #"all":
        clientfield::set("cracks_on", 4);
        break;
    }
}

// Namespace animation/animation_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x84dfdbc9, Offset: 0x3410
// Size: 0xe2
function cracks_off(str_type) {
    switch (str_type) {
    case #"red":
        clientfield::set("cracks_off", 1);
        break;
    case #"green":
        clientfield::set("cracks_off", 3);
        break;
    case #"blue":
        clientfield::set("cracks_off", 2);
        break;
    case #"all":
        clientfield::set("cracks_off", 4);
        break;
    }
}

// Namespace animation/animation_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xff3e9b55, Offset: 0x3500
// Size: 0xa4
function enable_headlook(b_on = 1) {
    if (isactor(self)) {
        if (b_on) {
            closest_player = arraygetclosest(self.origin, function_a1ef346b());
            self lookatentity(closest_player);
            return;
        }
        self lookatentity();
    }
}

// Namespace animation/animation_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x5f7180e9, Offset: 0x35b0
// Size: 0xac
function enable_headlook_notorso(b_on = 1) {
    if (isactor(self)) {
        if (b_on) {
            closest_player = arraygetclosest(self.origin, function_a1ef346b());
            self lookatentity(closest_player, 1);
            return;
        }
        self lookatentity();
    }
}

// Namespace animation/animation_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xf9250fcf, Offset: 0x3668
// Size: 0x5e
function is_valid_weapon(weaponobject) {
    if (!isdefined(level.weaponnone)) {
        level.weaponnone = getweapon(#"none");
    }
    return isdefined(weaponobject) && weaponobject != level.weaponnone;
}

// Namespace animation/animation_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xb9f4acfa, Offset: 0x36d0
// Size: 0x192
function attach_weapon(weaponobject, tag = "tag_weapon_right") {
    if (isactor(self)) {
        if (is_valid_weapon(weaponobject)) {
            ai::gun_switchto(weaponobject.name, "right");
        } else {
            ai::gun_recall();
        }
        return;
    }
    if (!is_valid_weapon(weaponobject)) {
        weaponobject = self.last_item;
    }
    if (is_valid_weapon(weaponobject)) {
        if (self.item != level.weaponnone) {
            detach_weapon();
        }
        assert(isdefined(weaponobject.worldmodel));
        self attach(weaponobject.worldmodel, tag);
        if (is_true(self.var_8323de3e)) {
            self setentityweapon(weaponobject, 1);
        } else {
            self setentityweapon(weaponobject);
        }
        self.gun_removed = undefined;
        self.last_item = weaponobject;
    }
}

// Namespace animation/animation_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xa739d764, Offset: 0x3870
// Size: 0xda
function detach_weapon(weaponobject, tag = "tag_weapon_right") {
    if (isactor(self)) {
        ai::gun_remove();
        return;
    }
    if (!is_valid_weapon(weaponobject)) {
        weaponobject = self.item;
    }
    if (is_valid_weapon(weaponobject)) {
        self detach(weaponobject.worldmodel, tag);
        self setentityweapon(level.weaponnone);
    }
    self.gun_removed = 1;
}

// Namespace animation/animation_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xe6ae0213, Offset: 0x3958
// Size: 0x294
function fire_weapon(str_tag, *var_58b849e) {
    if (!isai(self) && !function_8d8e91af(self)) {
        if (self.item != level.weaponnone) {
            if (!isdefined(var_58b849e) || var_58b849e === "" || isstring(var_58b849e) && !isdefined(self gettagorigin(var_58b849e))) {
                if (isdefined(self gettagorigin("tag_flash"))) {
                    var_58b849e = "tag_flash";
                } else if (isdefined(self gettagorigin("tag_aim"))) {
                    var_58b849e = "tag_aim";
                }
            }
            if (!isdefined(var_58b849e)) {
                return;
            }
            v_start_pos = self gettagorigin(var_58b849e);
            v_start_ang = self gettagangles(var_58b849e);
            v_end_pos = v_start_pos + vectorscale(anglestoforward(v_start_ang), 100);
            if (isdefined(self.item) && self.item.type === "projectile" && !isinarray(["ball", "grenade", "rocketlauncher", "turret", "pistol", "pistol spread"], self.item.weapclass)) {
                println("<unknown string>" + self.item.name);
                return;
            }
            magicbullet(self.item, v_start_pos, v_end_pos, self);
        }
    }
}

// Namespace animation/animation_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x21e4c1aa, Offset: 0x3bf8
// Size: 0x9c
function function_71d33ba3(var_9114191, *var_58b849e) {
    if (isvehicle(self)) {
        if (!isdefined(var_58b849e) || var_58b849e === "") {
            var_58b849e = 0;
        } else if (isstring(var_58b849e)) {
            var_58b849e = int(var_58b849e);
        }
        self fireweapon(var_58b849e);
    }
}

// Namespace animation/animation_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x652aaab0, Offset: 0x3ca0
// Size: 0x25c
function function_eb0aa7cf(n_pulse = 100, bone) {
    assert(!issentient(self), "<unknown string>");
    if (!isdefined(bone)) {
        bone = "tag_physics_pulse";
    }
    var_8ef160cb = isdefined(self gettagorigin(bone)) ? self gettagorigin(bone) : self getcentroid();
    n_pulse = float(n_pulse);
    if (n_pulse == 0) {
        self physicslaunch(var_8ef160cb);
        return;
    }
    var_cc487a10 = self gettagangles(bone);
    var_236556ec = (0, 0, 100);
    color = (1, 0, 0);
    if (isdefined(var_cc487a10)) {
        var_236556ec = vectorscale(anglestoforward(var_cc487a10), n_pulse);
        color = (0, 1, 0);
    } else {
        x_dir = math::cointoss() ? 1 : -1;
        y_dir = math::cointoss() ? 1 : -1;
        z_dir = math::cointoss() ? 1 : -1;
        var_236556ec = vectorscale((x_dir, y_dir, z_dir), n_pulse);
        color = (1, 1, 0);
    }
    self physicslaunch(var_8ef160cb, var_236556ec);
    /#
        util::draw_arrow_time(var_8ef160cb, var_8ef160cb + var_236556ec, color, 2);
    #/
}

// Namespace animation/animation_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xed7fa764, Offset: 0x3f08
// Size: 0x6c
function function_6eb39026(var_1d146ef3, *var_e43fc2fe) {
    if (!isdefined(var_e43fc2fe) || var_e43fc2fe == "") {
        var_e43fc2fe = 0.2;
    } else {
        var_e43fc2fe = float(var_e43fc2fe);
    }
    self stop(var_e43fc2fe);
}

// Namespace animation/animation_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x1e4613c1, Offset: 0x3f80
// Size: 0x64
function private function_bd10424d() {
    player = self;
    if (currentsessionmode() == 2) {
        player = getplayers()[0];
    }
    player function_f2729fc0(0);
}

// Namespace animation/animation_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x661af1e5, Offset: 0x3ff0
// Size: 0x64
function private function_e97a4b27() {
    player = self;
    if (currentsessionmode() == 2) {
        player = getplayers()[0];
    }
    player function_d8cae271(0);
}

// Namespace animation/animation_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x8b3de43a, Offset: 0x4060
// Size: 0x64
function private function_a37627b3() {
    player = self;
    if (currentsessionmode() == 2) {
        player = getplayers()[0];
    }
    player function_f2729fc0(1);
}

// Namespace animation/animation_shared
// Params 0, eflags: 0x6 linked
// Checksum 0xd7259732, Offset: 0x40d0
// Size: 0x64
function private function_54657829() {
    player = self;
    if (currentsessionmode() == 2) {
        player = getplayers()[0];
    }
    player function_d8cae271(1);
}

// Namespace animation/animation_shared
// Params 1, eflags: 0x6 linked
// Checksum 0x441783bd, Offset: 0x4140
// Size: 0x94
function private function_f2729fc0(quick) {
    if (isdefined(self.var_d3b4e4f4)) {
        self [[ self.var_d3b4e4f4 ]](quick);
        return;
    }
    if (isdefined(level.var_d3b4e4f4)) {
        self [[ level.var_d3b4e4f4 ]](quick);
        return;
    }
    if (isplayer(self)) {
        self val::reset(#"animation_shared", "disable_weapons");
    }
}

// Namespace animation/animation_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xca279285, Offset: 0x41e0
// Size: 0xac
function private function_d8cae271(quick) {
    if (isdefined(self.var_852e84c9)) {
        self [[ self.var_852e84c9 ]](quick);
        return;
    }
    if (isdefined(level.var_852e84c9)) {
        self [[ level.var_852e84c9 ]](quick);
        return;
    }
    if (isplayer(self)) {
        self val::set(#"animation_shared", "disable_weapons", quick ? 2 : 1);
    }
}

