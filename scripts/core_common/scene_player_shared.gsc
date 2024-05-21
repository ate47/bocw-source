// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\scene_player_shared.gsc;
#using script_24c15fbbb838c794;
#using scripts\weapons\weapon_utils.gsc;
#using scripts\core_common\weapons_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\scene_objects_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\player\player_loadout.gsc;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\core_common\gestures.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\animation_shared.gsc;

#namespace scene;

// Namespace scene
// Method(s) 2 Total 154
class class_6572d7cd : csceneplayer, csceneobject {

}

// Namespace scene
// Method(s) 58 Total 154
class csceneplayer : csceneobject {

    var _e;
    var _func_get;
    var _func_get_active;
    var _n_ent_num;
    var _n_streamer_req;
    var _o_scene;
    var _s;
    var _str_camera;
    var _str_current_anim;
    var _str_shot;
    var _str_team;
    var current_playing_anim;
    var m_align;
    var m_tag;
    var var_1f97724a;
    var var_55b4f21e;
    var var_a3cc5416;
    var var_efc540b6;
    var var_f4b34dc1;

    // Namespace csceneplayer/scene_player_shared
    // Params 0, eflags: 0xa linked
    // Checksum 0x2de6e30, Offset: 0x3d8
    // Size: 0x4e
    constructor() {
        _func_get = &scene::function_3d35d3ca;
        _func_get_active = &scene::function_e941ea66;
        _n_streamer_req = -1;
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0xf99614e2, Offset: 0x1f08
    // Size: 0x44
    function function_607d830() {
        return is_true(_s.hidestowedweapon) || is_true(var_55b4f21e.hidestowedweapon);
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0xd45be567, Offset: 0x9e8
    // Size: 0x11c
    function function_d09b043() {
        if (is_true(var_55b4f21e.interactiveshot)) {
            return;
        }
        self notify(#"hash_30095f69ee804b7e");
        self endon(#"hash_30095f69ee804b7e");
        _o_scene endon(#"scene_done", #"scene_stop", #"scene_skip_completed", #"hash_3168dab591a18b9b");
        s_waitresult = _e waittill(#"death");
        var_1f97724a = 1;
        _e notify(#"hash_6e7fd8207fd988c6", {#str_scene:_o_scene._str_name});
        csceneobject::function_1e19d813();
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 2, eflags: 0x2 linked
    // Checksum 0x7fa3ee53, Offset: 0x5828
    // Size: 0xd0
    function function_d0cf938(player, b_enable = 1) {
        player endon(#"hash_1aa7e630a34bee50");
        if (b_enable) {
            while (isalive(player)) {
                player playrumbleonentity("damage_heavy");
                wait(0.1);
            }
            player stoprumble("damage_heavy");
            return;
        }
        player stoprumble("damage_heavy");
        player notify(#"hash_1aa7e630a34bee50");
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x94d9a6eb, Offset: 0x7cc8
    // Size: 0x80
    function get_extracam_index(*player) {
        var_82e125b6 = isdefined(var_55b4f21e.extracamindex) ? var_55b4f21e.extracamindex : _s.extracamindex;
        if (isdefined(var_82e125b6)) {
            var_e5489dff = int(var_82e125b6) - 1;
        }
        return var_e5489dff;
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0x53115ad, Offset: 0x1d08
    // Size: 0x44
    function function_1db23c62() {
        return is_true(_s.var_1a95895f) || is_true(var_55b4f21e.var_1a95895f);
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0x52c58c42, Offset: 0x6a78
    // Size: 0x1c
    function _cleanup() {
        _cleanup_player(_e);
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 2, eflags: 0x2 linked
    // Checksum 0x8c4d3bbe, Offset: 0x76b0
    // Size: 0x2de
    function play_camera(animation, n_start_time = 0) {
        flag::set(#"camera_playing");
        if (csceneobject::is_shared_player()) {
            a_players = [[ _func_get ]](_o_scene._str_team);
            if (!a_players.size && is_true(_o_scene._b_testing)) {
                var_169da9db = util::get_enemy_team(_o_scene._str_team);
                a_players = [[ _func_get ]](var_169da9db);
            }
            foreach (player in a_players) {
                _str_camera = animation_lookup(animation, player, 1);
                player.var_36fa161e = _str_camera;
                thread play_camera_on_player(player, n_start_time);
            }
            if (isdefined(_str_camera)) {
                wait_for_camera(_str_camera, n_start_time);
            }
        } else {
            _str_camera = animation_lookup(animation, _e, 1);
            _e.var_36fa161e = _str_camera;
            thread play_camera_on_player(_e, n_start_time);
            wait_for_camera(_str_camera, n_start_time);
        }
        /#
            if (getdvarint(#"debug_scene", 0) > 0) {
                csceneobject::log(toupper(_s.type) + "<unknown string>" + _str_camera + "<unknown string>");
            }
        #/
        flag::clear(#"camera_playing");
        _str_camera = undefined;
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 7, eflags: 0x2 linked
    // Checksum 0xdd9366be, Offset: 0x60e8
    // Size: 0x70c
    function _play_anim(animation, n_rate, n_blend, var_b2e32ae2, n_time, var_7d32b2c6, paused) {
        player = _e;
        n_lerp = isdefined(var_7d32b2c6) ? var_7d32b2c6 : csceneobject::get_lerp_time();
        if (_o_scene._s scene::is_igc()) {
            if (n_lerp == 0) {
                player dontinterpolate();
            }
            player flag::set(#"hash_7cddd51e45d3ff3e");
        }
        csceneobject::function_a04fb5f4();
        if (!function_6c1c67c1() && isplayer(player)) {
            endcamanimscripted(player);
            if (csceneobject::function_595c601b()) {
                n_camera_tween = get_camera_tween();
                if (n_camera_tween > 0) {
                    var_186edacf = function_7d78187b();
                    player startcameratween(n_camera_tween, 0, var_186edacf);
                }
            }
        }
        /#
            if (getdvarint(#"debug_scene", 0) > 0) {
                printtoprightln("<unknown string>" + (isdefined(_s.name) ? _s.name : _s.model) + "<unknown string>" + animation);
            }
            if (getdvarint(#"debug_scene_skip", 0) > 0) {
                if (!isdefined(level.animation_played)) {
                    level.animation_played = [];
                    animation_played_name = (isdefined(_s.name) ? _s.name : _s.model) + "<unknown string>" + animation;
                    if (!isdefined(level.animation_played)) {
                        level.animation_played = [];
                    } else if (!isarray(level.animation_played)) {
                        level.animation_played = array(level.animation_played);
                    }
                    level.animation_played[level.animation_played.size] = animation_played_name;
                }
            }
        #/
        current_playing_anim[_n_ent_num] = animation;
        if (csceneobject::is_skipping_scene() && n_rate != 0) {
            thread csceneobject::skip_scene_shot_animations();
        }
        on_play_anim(player);
        if (is_true(_s.var_69aabff2)) {
            b_unlink_after_completed = 0;
        }
        if (csceneobject::function_5c2a9efa()) {
            csceneobject::function_5c082667();
        } else {
            if (isdefined(player.var_d43badce)) {
                player.var_d43badce animation::play(animation, m_align, m_tag, n_rate, n_blend, 0, n_lerp, n_time, _s.showweaponinfirstperson, b_unlink_after_completed, var_f4b34dc1, paused, undefined, var_b2e32ae2);
            } else {
                player animation::play(animation, m_align, m_tag, n_rate, n_blend, 0, n_lerp, n_time, _s.showweaponinfirstperson, b_unlink_after_completed, var_f4b34dc1, paused, undefined, var_b2e32ae2, _s.showviewmodel);
            }
            var_f4b34dc1 = undefined;
        }
        if (isdefined(player)) {
            player flag::clear(#"hash_7cddd51e45d3ff3e");
        }
        if (!isdefined(player) || !player isplayinganimscripted()) {
            current_playing_anim[_n_ent_num] = undefined;
        }
        /#
            if (getdvarint(#"debug_scene", 0) > 0) {
                csceneobject::log(toupper(_s.type) + "<unknown string>" + function_9e72a96(animation) + "<unknown string>");
                printtoprightln("<unknown string>" + (isdefined(_s.name) ? _s.name : _s.model) + "<unknown string>" + function_9e72a96(animation));
            }
            if (getdvarint(#"debug_scene_skip", 0) > 0) {
                if (isdefined(level.animation_played)) {
                    for (i = 0; i < level.animation_played.size; i++) {
                        animation_played_name = (isdefined(_s.name) ? _s.name : _s.model) + "<unknown string>" + animation;
                        if (level.animation_played[i] == animation_played_name) {
                            arrayremovevalue(level.animation_played, animation_played_name);
                            i--;
                        }
                    }
                }
            }
        #/
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0x7fee8e36, Offset: 0x1d58
    // Size: 0x44
    function function_247a0b9d() {
        return is_true(_s.var_b538acac) || is_true(var_55b4f21e.var_b538acac);
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 2, eflags: 0x2 linked
    // Checksum 0x55039009, Offset: 0x5750
    // Size: 0xd0
    function function_31a89cb0(player, b_enable = 1) {
        player endon(#"hash_3fdc27904c7ef691");
        if (b_enable) {
            while (isalive(player)) {
                player playrumbleonentity("damage_light");
                wait(0.3);
            }
            player stoprumble("damage_light");
            return;
        }
        player stoprumble("damage_light");
        player notify(#"hash_3fdc27904c7ef691");
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 2, eflags: 0x2 linked
    // Checksum 0x8ad2f04a, Offset: 0x2768
    // Size: 0x284
    function function_39ab0a6a(player, params) {
        if (player === _e && player::is_valid_weapon(params.last_weapon)) {
            player.var_d3d25842 = params.last_weapon;
        }
        if (player === _e && player::is_valid_weapon(params.weapon) && isdefined(player.str_current_anim) && player.var_d3d25842 !== params.weapon) {
            if (sessionmodeiscampaigngame() && player getcurrentweapon() == params.weapon) {
                return;
            }
            if (!function_53c151a4(params.weapon.rootweapon)) {
                var_9cb7f1a6 = getweapon(#"ar_accurate_t9");
                if (!player hasweapon(var_9cb7f1a6, 1)) {
                    player giveweapon(var_9cb7f1a6);
                    player.var_777951c = var_9cb7f1a6;
                }
                player switchtoweaponimmediate(var_9cb7f1a6, 1);
                player.var_d3d25842 = var_9cb7f1a6;
                return;
            }
            player.var_d3d25842 = params.weapon;
            str_new_anim = csceneobject::function_9a43e31(player, csceneobject::get_animation_name(_str_shot, 1), 0);
            if (str_new_anim != player.str_current_anim) {
                n_current_time = player getanimtime(player.str_current_anim);
                if (function_6c1c67c1()) {
                    thread csceneobject::play_anim(str_new_anim, 0, 0, n_current_time);
                    return;
                }
                player.str_current_anim = str_new_anim;
                thread csceneobject::play(_str_shot, n_current_time);
            }
        }
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 3, eflags: 0x2 linked
    // Checksum 0xe89b992d, Offset: 0x7ec0
    // Size: 0x3fa
    function animation_lookup(animation, ent = self._e, b_camera = 0) {
        if (isdefined(_o_scene.var_58e5d094) && !b_camera) {
            if (self === _o_scene.var_58e5d094 && isarray(_o_scene._a_objects)) {
                foreach (obj in _o_scene._a_objects) {
                    if (obj != self && [[ obj ]]->function_527113ae() && isdefined(obj._e)) {
                        var_65cfb30b = [[ obj ]]->get_animation_name(_str_shot, 1);
                        var_65cfb30b = [[ obj ]]->function_9a43e31(ent, var_65cfb30b);
                        var_f4b34dc1[obj._e getentitynumber()] = var_65cfb30b;
                    }
                }
            }
            var_9defbbb0 = [[ _o_scene.var_58e5d094 ]]->get_animation_name(_str_shot, 1);
            var_9defbbb0 = [[ _o_scene.var_58e5d094 ]]->function_9a43e31(ent, var_9defbbb0);
            var_f4b34dc1[ent getentitynumber()] = var_9defbbb0;
            if (is_true(_s.var_186d089d) && isarray(_o_scene._a_objects)) {
                foreach (obj in _o_scene._a_objects) {
                    if (obj != self && [[ obj ]]->function_527113ae() && isplayer(obj._e) && isplayer(ent) && !is_true(obj._s.var_186d089d)) {
                        var_a2265eca = [[ obj ]]->get_animation_name(_str_shot, 1);
                        var_8d34c269 = csceneobject::get_animation_name(_str_shot, 1);
                        if (var_8d34c269 === var_a2265eca) {
                            obj._e setinvisibletoplayer(ent);
                            ent setinvisibletoplayer(obj._e);
                        }
                    }
                }
            }
        }
        animation = csceneobject::function_9a43e31(ent, animation, b_camera);
        return animation;
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x8267a94b, Offset: 0x71f8
    // Size: 0x14c
    function function_509b9f47(player) {
        if (!isplayer(player)) {
            return;
        }
        player notify(#"hash_375ad02201949a8d");
        player endon(#"camanimscripted", #"hash_375ad02201949a8d", #"disconnect");
        if (!scene::function_6a0b0afe(_o_scene._str_mode)) {
            _o_scene waittilltimeout(0.1, #"scene_done", #"scene_stop", #"scene_skip_completed");
        }
        stop_camera(player);
        /#
            if (is_true(_o_scene._b_testing)) {
                p_host = util::gethostplayer();
                stop_camera(p_host);
            }
        #/
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x5a68f162, Offset: 0x7d50
    // Size: 0x3c
    function stop_camera(player) {
        if (isplayer(player)) {
            endcamanimscripted(player);
        }
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x96a1dd4, Offset: 0x1e58
    // Size: 0xa2
    function function_53c151a4(weapon) {
        if (function_247a0b9d() && !function_7bdbc3ec(weapon) || function_1db23c62() && isarray(level.var_b6405fbf) && isinarray(level.var_b6405fbf, weapon.name)) {
            return false;
        }
        return true;
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x55a2bb31, Offset: 0xb10
    // Size: 0x22c
    function _set_values(ent = self._e) {
        if (!is_true(_s.takedamage) && !sessionmodeismultiplayergame() && !sessionmodeiswarzonegame() && !sessionmodeiszombiesgame()) {
            ent setnormalhealth(1);
        }
        if (is_true(ent.takedamage) && !ent getinvulnerability() && !sessionmodeismultiplayergame() && !sessionmodeiswarzonegame()) {
            csceneobject::set_ent_val("takedamage", is_true(_s.takedamage), ent);
        }
        csceneobject::set_ent_val("ignoreme", !is_true(_s.takedamage), ent);
        if (!sessionmodeismultiplayergame() && !sessionmodeiswarzonegame()) {
            csceneobject::set_ent_val("allowdeath", is_true(_s.allowdeath), ent);
            csceneobject::set_ent_val("take_weapons", is_true(_s.removeweapon), ent);
        }
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0x28bf53ae, Offset: 0x87f8
    // Size: 0xac
    function destroy_dev_info() {
        /#
            if (isdefined(level.hud_scene_dev_info1)) {
                level.hud_scene_dev_info1 destroy();
            }
            if (isdefined(level.hud_scene_dev_info2)) {
                level.hud_scene_dev_info2 destroy();
            }
            if (isdefined(level.hud_scene_dev_info3)) {
                level.hud_scene_dev_info3 destroy();
            }
            if (isdefined(level.var_6e7be24a)) {
                level.var_6e7be24a destroy();
            }
        #/
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 2, eflags: 0x2 linked
    // Checksum 0x1afe841e, Offset: 0x7458
    // Size: 0xbc
    function wait_for_camera(str_cam, n_start_time) {
        self endon(#"skip_camera_anims", _str_shot + "active");
        if (iscamanimlooping(str_cam)) {
            level waittill(#"forever");
            return;
        }
        var_d4594f1 = float(getcamanimtime(str_cam)) / 1000;
        scene::wait_server_time(var_d4594f1, n_start_time);
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0xd122410c, Offset: 0x6aa0
    // Size: 0x5ec
    function _cleanup_player(player) {
        if (!isdefined(player)) {
            return;
        }
        if (csceneobject::function_527113ae() && player flag::get(#"shared_igc")) {
            return;
        }
        if (csceneobject::is_shared_player() && player flag::get(#"hash_7cddd51e45d3ff3e")) {
            return;
        }
        /#
            if (getdvarint(#"debug_scene", 0) > 0) {
                printtoprightln("<unknown string>");
            }
        #/
        player notify(#"hash_7ba9e3058f933eb");
        player.var_c3a79d20 = undefined;
        player.scene_set_visible_time = level.time;
        player setvisibletoall();
        player val::reset(#"scene", "hide");
        player flag::clear(#"shared_igc");
        player flag::clear(#"scene");
        player flag::clear(#"scene_interactive_shot");
        player._scene_object = undefined;
        player.anim_debug_name = undefined;
        player.current_scene = undefined;
        player.scene_takedamage = undefined;
        player._scene_old_gun_removed = undefined;
        if (isplayer(player) && (csceneobject::function_b260bdcc(_str_shot) || scene::function_6a0b0afe(_o_scene._str_mode) || is_true(_o_scene.scene_stopping))) {
            player scene::set_igc_active(0);
            player notify(#"hash_684b272680aa2ed", {#str_scene:_o_scene._str_name});
            player thread scene::scene_enable_player_stuff(_o_scene._s, _s, _o_scene._e_root);
            var_700fed0d = player getentitynumber() + 2;
            player util::delay_network_frames(var_700fed0d, "disconnect", &clientfield::set_to_player, "postfx_cateye", 0);
        }
        n_camera_tween_out = get_camera_tween_out();
        if (isplayer(player)) {
            if (n_camera_tween_out > 0) {
                var_519966 = function_e1ac7b9a();
                player startcameratween(n_camera_tween_out, 0, var_519966);
            }
            player val::reset("scene_system_stance", "allow_stand");
            player val::reset("scene_system_stance", "allow_crouch");
            player val::reset("scene_system_stance", "allow_prone");
            if (_o_scene._s scene::is_igc()) {
                player util::function_7f49ffb7(-1);
            }
        }
        player sethighdetail(0);
        _reset_values(player);
        function_d3541c6f(player);
        thread function_6e4dc270(player);
        thread function_509b9f47(player);
        function_894716e2(player);
        if (isdefined(player.var_d43badce)) {
            player.var_d43badce delete();
        }
        if (is_true(player.var_20ed0b0c) && (csceneobject::function_b260bdcc(_str_shot) || scene::function_6a0b0afe(_o_scene._str_mode) || is_true(_o_scene.scene_stopping))) {
            player delete();
        }
        /#
            if (player === level.host) {
                player util::delay(0.5, "<unknown string>", &destroy_dev_info);
            }
        #/
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0x5ea75f44, Offset: 0x82c8
    // Size: 0x524
    function display_dev_info() {
        /#
            if (isstring(_o_scene._s.devstate) && getdvarint(#"scr_show_shot_info_for_igcs", 0)) {
                if (!isdefined(level.hud_scene_dev_info1)) {
                    level.hud_scene_dev_info1 = newdebughudelem();
                }
                level.hud_scene_dev_info1.alignx = "<unknown string>";
                level.hud_scene_dev_info1.aligny = "<unknown string>";
                level.hud_scene_dev_info1.horzalign = "<unknown string>";
                level.hud_scene_dev_info1.y = 400;
                level.hud_scene_dev_info1.fontscale = 1.3;
                level.hud_scene_dev_info1.color = (0.439216, 0.501961, 0.564706);
                level.hud_scene_dev_info1 settext("<unknown string>" + toupper(function_9e72a96(_o_scene._str_name)));
                if (!isdefined(level.hud_scene_dev_info2)) {
                    level.hud_scene_dev_info2 = newdebughudelem();
                }
                level.hud_scene_dev_info2.alignx = "<unknown string>";
                level.hud_scene_dev_info2.aligny = "<unknown string>";
                level.hud_scene_dev_info2.horzalign = "<unknown string>";
                level.hud_scene_dev_info2.y = 420;
                level.hud_scene_dev_info2.fontscale = 1.3;
                level.hud_scene_dev_info2.color = (0.439216, 0.501961, 0.564706);
                level.hud_scene_dev_info2 settext("<unknown string>" + function_9e72a96(_str_shot));
                if (!isdefined(level.hud_scene_dev_info3)) {
                    level.hud_scene_dev_info3 = newdebughudelem();
                }
                level.hud_scene_dev_info3.alignx = "<unknown string>";
                level.hud_scene_dev_info3.aligny = "<unknown string>";
                level.hud_scene_dev_info3.horzalign = "<unknown string>";
                level.hud_scene_dev_info3.y = 440;
                level.hud_scene_dev_info3.fontscale = 1.3;
                level.hud_scene_dev_info3.color = (0.439216, 0.501961, 0.564706);
                var_208dd9f0 = isdefined(var_55b4f21e.devstate) ? var_55b4f21e.devstate : _o_scene._s.devstate;
                level.hud_scene_dev_info3 settext("<unknown string>" + function_9e72a96(var_208dd9f0));
                if (!isdefined(level.var_6e7be24a)) {
                    level.var_6e7be24a = newdebughudelem();
                }
                level.var_6e7be24a.alignx = "<unknown string>";
                level.var_6e7be24a.aligny = "<unknown string>";
                level.var_6e7be24a.horzalign = "<unknown string>";
                level.var_6e7be24a.y = 460;
                level.var_6e7be24a.fontscale = 1.3;
                level.var_6e7be24a.color = (0.439216, 0.501961, 0.564706);
                if (!isdefined(_o_scene.var_9d90ef8b)) {
                    _o_scene.var_9d90ef8b = scene::function_12479eba(_o_scene._str_name);
                }
                level.var_6e7be24a settext("<unknown string>" + _o_scene.var_9d90ef8b + "<unknown string>");
                return;
            }
            destroy_dev_info();
        #/
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0x1df6c67, Offset: 0x7d98
    // Size: 0x120
    function function_6c1c67c1() {
        if (csceneobject::is_shared_player()) {
            if (isdefined(_str_camera)) {
                return true;
            }
        } else if (csceneobject::function_527113ae()) {
            if (isdefined(_str_camera)) {
                return true;
            }
            if (isdefined(_o_scene._a_objects)) {
                foreach (obj in _o_scene._a_objects) {
                    if (obj._s.type === "sharedplayer" && [[ obj ]]->function_6c1c67c1()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0xa7659823, Offset: 0x7350
    // Size: 0xfa
    function function_6e4dc270(player) {
        if (!isplayer(player)) {
            return;
        }
        player endon(#"new_shot", #"disconnect");
        _o_scene waittilltimeout(0.1, #"scene_done", #"scene_stop", #"scene_skip_completed");
        if (_n_streamer_req != -1) {
            player playerstreamerrequest("clear", player.var_231881b1[_o_scene._str_name]);
            player.var_16672042[_o_scene._str_name] = -1;
        }
        player.streamer_hint_playing = undefined;
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 3, eflags: 0x2 linked
    // Checksum 0x4a160014, Offset: 0x4a28
    // Size: 0x5d2
    function check_input(player, var_ec50a0d3, var_966ea21d) {
        if (isbot(player) && function_c503dca9(player, var_ec50a0d3)) {
            if (player scene::function_268bfc72() && var_966ea21d) {
                if (player flag::get(#"hash_6ce14241f77af1e7")) {
                    return "combat";
                } else if (var_ec50a0d3.var_9532f6db == "move_up" || var_ec50a0d3.var_9532f6db == "move_right") {
                    if (player scene::function_6d361d2d()) {
                        return -1;
                    } else {
                        return 1;
                    }
                } else if (var_ec50a0d3.var_9532f6db == "move_down" || var_ec50a0d3.var_9532f6db == "move_left") {
                    if (player scene::function_6d361d2d()) {
                        return 1;
                    } else {
                        return -1;
                    }
                } else if (player scene::function_6d361d2d()) {
                    return 0;
                } else {
                    return 1;
                }
            } else if (var_ec50a0d3.var_9532f6db == "move_up" || var_ec50a0d3.var_9532f6db == "move_right" || var_ec50a0d3.var_9532f6db == "move_down" || var_ec50a0d3.var_9532f6db == "move_left") {
                return 0;
            } else {
                return 0;
            }
        }
        if (!level.interactive_shot interactive_shot::is_open(player)) {
            return 0;
        }
        if (player flag::get(#"hash_6ce14241f77af1e7") && !is_true(var_ec50a0d3.var_441cbab8) && var_966ea21d) {
            return "combat";
        }
        switch (var_ec50a0d3.var_9532f6db) {
        case #"move_up":
        case #"move_down":
            v_movement = player getnormalizedmovement();
            return v_movement[0];
        case #"move_right":
        case #"move_left":
            v_movement = player getnormalizedmovement();
            return v_movement[1];
        case #"jump":
            return (player actionbuttonpressed() ? 1 : 0);
        case #"stance":
            return (player stancebuttonpressed() ? 1 : 0);
        case #"use":
            return (player usebuttonpressed() ? 1 : 0);
        case #"weapon_switch":
            return (player weaponswitchbuttonpressed() ? 1 : 0);
        case #"sprint":
            return (player sprintbuttonpressed() ? 1 : 0);
        case #"melee":
            return (player meleebuttonpressed() ? 1 : 0);
        case #"attack":
            return (!player flag::get(#"hash_6ce14241f77af1e7") && var_966ea21d ? 1 : 0);
        case #"dpad_up":
            return (player actionslotonebuttonpressed() ? 1 : 0);
        case #"dpad_down":
            return (player actionslottwobuttonpressed() ? 1 : 0);
        case #"dpad_left":
            return (player actionslotthreebuttonpressed() ? 1 : 0);
        case #"dpad_right":
            return (player actionslotfourbuttonpressed() ? 1 : 0);
        default:
            v_movement = player getnormalizedmovement();
            return v_movement[0];
        }
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0xee949b84, Offset: 0x1da8
    // Size: 0xa2
    function function_7bdbc3ec(weapon) {
        if (!weapons::ispunch(weapon) && !weapons::isnonbarehandsmelee(weapon) && !is_true(weapon.isrocketlauncher) && !weapons::ispistol(weapon, 1) && !killstreaks::is_killstreak_weapon(weapon)) {
            return true;
        }
        return false;
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0xea2ca264, Offset: 0x3298
    // Size: 0x14c8
    function function_7d761e79(player) {
        if (!isplayer(player)) {
            return;
        }
        player notify(#"hash_7ba9e3058f933eb");
        player endon(#"hash_7ba9e3058f933eb", #"death");
        b_movement = 1;
        var_1c45c7f8 = 0;
        var_966ea21d = 0;
        var_a3cc5416 = isdefined(var_a3cc5416) ? var_a3cc5416 : 0.0001;
        var_a3cc5416 = undefined;
        var_ec50a0d3 = _s.shots[csceneobject::get_shot(_str_shot)];
        player flag::set(#"scene_interactive_shot");
        player.player_anim_look_enabled = 1;
        player.player_anim_clamp_right = isdefined(player.player_anim_clamp_right) ? player.player_anim_clamp_right : 75;
        player.player_anim_clamp_left = isdefined(player.player_anim_clamp_left) ? player.player_anim_clamp_left : 75;
        player.player_anim_clamp_top = isdefined(player.player_anim_clamp_top) ? player.player_anim_clamp_top : 180;
        player.player_anim_clamp_bottom = isdefined(player.player_anim_clamp_bottom) ? player.player_anim_clamp_bottom : 60;
        player.var_c3a79d20 = 1;
        thread function_bd3a7030(player, var_ec50a0d3.var_9532f6db);
        _str_current_anim = csceneobject::get_animation_name(_str_shot);
        while (true) {
            result = check_input(player, var_ec50a0d3, var_966ea21d);
            if (result === "combat") {
                n_movement = undefined;
                b_pressed = undefined;
            } else if (isfloat(result)) {
                n_movement = result;
                b_pressed = undefined;
                if (abs(n_movement) < 0.5) {
                    n_movement = 0;
                }
            } else {
                n_movement = undefined;
                b_pressed = result;
            }
            foreach (o_obj in _o_scene._a_objects) {
                o_obj.var_efc540b6 = [[ o_obj ]]->function_376c9d87(var_ec50a0d3, n_movement, player);
                if (!isdefined(o_obj.var_efc540b6)) {
                    o_obj.var_efc540b6 = isdefined(o_obj._str_current_anim) ? o_obj._str_current_anim : csceneobject::get_animation_name(_str_shot);
                    if (o_obj === self) {
                        var_f2b99dab = 1;
                    }
                }
            }
            assert(isdefined(var_efc540b6), "<unknown string>");
            if (is_true(var_ec50a0d3.var_769fadce)) {
                var_4a92a676 = getanimlength(_str_current_anim);
                var_7a496fd5 = isdefined(var_ec50a0d3.var_3ee70278) ? var_ec50a0d3.var_3ee70278 : var_4a92a676 / 2;
                var_7a496fd5 = math::clamp(var_7a496fd5, 0, var_4a92a676);
                var_33d5f97d = var_4a92a676;
                b_pressed_button = 0;
                foreach (o_obj in _o_scene._a_objects) {
                    thread [[ o_obj ]]->_play_anim(o_obj._str_current_anim, 1, 0.2, undefined, 0);
                }
                thread function_31a89cb0(player, 1);
                while (var_7a496fd5 > 0) {
                    var_7a496fd5 -= float(function_60d95f53()) / 1000;
                    var_33d5f97d -= float(function_60d95f53()) / 1000;
                    b_result = check_input(player, var_ec50a0d3, var_966ea21d);
                    if (b_result) {
                        b_pressed_button = 1;
                        player notify(#"hash_feb654ece8faa3d");
                        while (var_7a496fd5 > 0) {
                            waitframe(1);
                            var_7a496fd5 -= float(function_60d95f53()) / 1000;
                        }
                        function_a27af0ae(player);
                        var_a3cc5416 = 1;
                        break;
                    }
                    waitframe(1);
                }
                if (!b_pressed_button) {
                    thread function_31a89cb0(player, 0);
                    thread function_d0cf938(player, 1);
                    while (var_33d5f97d > 0) {
                        var_33d5f97d -= float(function_60d95f53()) / 1000;
                        b_result = check_input(player, var_ec50a0d3, var_966ea21d);
                        if (b_result) {
                            b_pressed_button = 1;
                            player notify(#"hash_feb654ece8faa3d");
                            while (var_33d5f97d > 0) {
                                waitframe(1);
                                var_33d5f97d -= float(function_60d95f53()) / 1000;
                            }
                            function_ef1eb90b(player);
                            var_a3cc5416 = 1;
                            break;
                        }
                        waitframe(1);
                    }
                }
                if (!b_pressed_button) {
                    thread function_9a7dd9f2(player);
                    return;
                }
            } else if (result === "combat" && !is_true(var_ec50a0d3.var_441cbab8)) {
                if (isarray(player.var_8826a030) && player.var_8826a030.size) {
                    var_c09527fe = arraygetclosest(player.origin, player.var_8826a030);
                    v_to_target = var_c09527fe.origin - player.origin;
                    v_to_target = vectornormalize(v_to_target);
                    var_59c304d1 = vectortoangles(v_to_target);
                } else {
                    var_59c304d1 = player getplayerangles();
                }
                var_1cd52bd9 = player.origin;
                player animation::stop(0);
                util::wait_network_frame();
                var_208325df = 0;
                if (isdefined(var_55b4f21e.var_f251a00e)) {
                    assert(isassetloaded("<unknown string>", var_55b4f21e.var_f251a00e), "<unknown string>" + var_55b4f21e.var_f251a00e + "<unknown string>");
                    var_208325df = player gestures::play_gesture(var_55b4f21e.var_f251a00e, undefined, 0, 0);
                }
                e_player_link = util::spawn_model("tag_origin", var_1cd52bd9, var_59c304d1);
                thread function_8966b27e(player, e_player_link);
                if (isanimlooping(var_efc540b6)) {
                    var_912e843b = util::spawn_player_clone(player, var_efc540b6, csceneobject::function_bc0facbb().ent, 1);
                    var_912e843b setinvisibletoplayer(player);
                    player setinvisibletoall();
                }
                player notify(#"hash_feb654ece8faa3d");
                while (player flag::get(#"hash_6ce14241f77af1e7")) {
                    waitframe(1);
                }
                if (var_208325df) {
                    player stopgestureviewmodel(var_55b4f21e.var_f251a00e, 1);
                }
                if (isdefined(e_player_link)) {
                    e_player_link delete();
                }
                if (isdefined(var_912e843b)) {
                    var_912e843b delete();
                }
                player setvisibletoall();
                foreach (o_obj in _o_scene._a_objects) {
                    thread [[ o_obj ]]->_play_anim(o_obj.var_efc540b6, 1, 0.2, var_a3cc5416, 0, 1);
                }
            } else if (is_true(b_pressed) && function_c503dca9(player, var_ec50a0d3)) {
                player notify(#"hash_feb654ece8faa3d");
                foreach (o_obj in _o_scene._a_objects) {
                    if (isdefined(o_obj) && o_obj != self && isdefined(o_obj.var_efc540b6) && !var_1c45c7f8) {
                        thread [[ o_obj ]]->_play_anim(o_obj.var_efc540b6, 1, 0.2, var_a3cc5416);
                    }
                }
                if (!var_1c45c7f8) {
                    if (isanimlooping(var_efc540b6)) {
                        thread _play_anim(var_efc540b6, 1, 0.2, 0);
                    } else {
                        _play_anim(var_efc540b6, 1, 0.2, 0);
                    }
                }
                var_a3cc5416 = 1;
            } else if (is_true(var_f2b99dab) || n_movement === 0 && b_movement || !isdefined(n_movement) && !is_true(b_pressed)) {
                b_movement = 0;
                var_f2b99dab = undefined;
                foreach (o_obj in _o_scene._a_objects) {
                    if (isanimlooping(o_obj.var_efc540b6) && !var_1c45c7f8) {
                        var_1c45c7f8 = 1;
                        thread [[ o_obj ]]->_play_anim(o_obj.var_efc540b6, 1, 0.2);
                        continue;
                    }
                    if (!isanimlooping(o_obj.var_efc540b6)) {
                        thread [[ o_obj ]]->_play_anim(o_obj.var_efc540b6, 1, 0, undefined, var_a3cc5416, undefined, 1);
                    }
                }
                var_966ea21d = 1;
            } else if (isdefined(n_movement) && n_movement != 0) {
                b_movement = 1;
                n_anim_length = getanimlength(_str_current_anim);
                var_5df5e79a = abs(n_movement);
                n_update_time = float(function_60d95f53()) / 1000 / n_anim_length;
                var_ea474464 = math::clamp(var_5df5e79a, 1, 1);
                if (csceneobject::function_a808aac7()) {
                    var_a3cc5416 -= n_update_time * var_ea474464;
                    var_f667af2f = 1 - var_a3cc5416;
                } else {
                    var_a3cc5416 += n_update_time * var_ea474464;
                    var_f667af2f = var_a3cc5416;
                }
                var_f667af2f = math::clamp(var_f667af2f, 0, 1);
                if (var_a3cc5416 <= 0 && csceneobject::function_a808aac7()) {
                    var_f2b99dab = 1;
                } else {
                    if (animhasnotetrack(var_efc540b6, "interactive_shot_marker")) {
                        a_n_times = getnotetracktimes(var_efc540b6, "interactive_shot_marker");
                        foreach (n_time in a_n_times) {
                            if (n_time > var_f667af2f) {
                                var_b97b91e4 = n_time;
                                break;
                            }
                        }
                    }
                    if (isdefined(var_b97b91e4)) {
                        while (var_f667af2f <= var_b97b91e4) {
                            foreach (o_obj in _o_scene._a_objects) {
                                thread [[ o_obj ]]->_play_anim(o_obj.var_efc540b6, 1, 0, undefined, var_f667af2f);
                            }
                            waitframe(1);
                            var_a3cc5416 += n_update_time * var_ea474464;
                            var_f667af2f = var_a3cc5416;
                        }
                        var_b97b91e4 = undefined;
                    } else {
                        foreach (o_obj in _o_scene._a_objects) {
                            thread [[ o_obj ]]->_play_anim(o_obj.var_efc540b6, 1, 0, undefined, var_f667af2f);
                        }
                    }
                }
            }
            if (var_a3cc5416 >= 1 || var_a3cc5416 <= 0 && csceneobject::function_a808aac7()) {
                if (csceneobject::function_a808aac7()) {
                    var_778409ab = csceneobject::get_shot(_str_shot);
                    if (var_778409ab > 0 && isdefined(_s.shots[var_778409ab - 1]) && csceneobject::function_e91c94b9(var_778409ab - 1) && !is_true(_s.shots[var_778409ab - 1].var_751fe16b)) {
                        var_a3cc5416 = 1;
                        _o_scene.var_2e9fdf35 = _s.shots[var_778409ab - 1].name;
                        waitframe(1);
                    } else {
                        var_a3cc5416 = math::clamp(var_a3cc5416, 0, 1);
                        waitframe(1);
                        continue;
                    }
                }
                foreach (o_obj in _o_scene._a_objects) {
                    o_obj._b_active_anim = 0;
                    o_obj flag::clear(#"scene_interactive_shot_active");
                }
                return;
            }
            var_a3cc5416 = math::clamp(var_a3cc5416, 0, 1);
            waitframe(1);
        }
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0x9b6a2246, Offset: 0x7580
    // Size: 0x5c
    function function_7d78187b() {
        show_player = isdefined(var_55b4f21e.var_9503db49) ? var_55b4f21e.var_9503db49 : _s.var_9503db49;
        return isdefined(show_player) ? !show_player : 1;
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x81c4bce7, Offset: 0x2e60
    // Size: 0x2ce
    function function_7efadfe8(player) {
        if (!isplayer(player)) {
            return;
        }
        player.player_anim_look_enabled = !is_true(_s.lockview);
        player.var_6f570bef = isdefined(_s.var_a8972ec6) ? _s.var_a8972ec6 : 0;
        player.var_fcbf7c5a = isdefined(_s.autocenter) ? _s.autocenter : 0;
        player.player_anim_clamp_right = isdefined(isdefined(var_55b4f21e.viewclampright) ? var_55b4f21e.viewclampright : _s.viewclampright) ? isdefined(var_55b4f21e.viewclampright) ? var_55b4f21e.viewclampright : _s.viewclampright : 0;
        player.player_anim_clamp_left = isdefined(isdefined(var_55b4f21e.viewclampleft) ? var_55b4f21e.viewclampleft : _s.viewclampleft) ? isdefined(var_55b4f21e.viewclampleft) ? var_55b4f21e.viewclampleft : _s.viewclampleft : 0;
        player.player_anim_clamp_top = isdefined(isdefined(var_55b4f21e.viewclamptop) ? var_55b4f21e.viewclamptop : _s.viewclamptop) ? isdefined(var_55b4f21e.viewclamptop) ? var_55b4f21e.viewclamptop : _s.viewclamptop : 0;
        player.player_anim_clamp_bottom = isdefined(isdefined(var_55b4f21e.viewclampbottom) ? var_55b4f21e.viewclampbottom : _s.viewclampbottom) ? isdefined(var_55b4f21e.viewclampbottom) ? var_55b4f21e.viewclampbottom : _s.viewclampbottom : 0;
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x631c1e58, Offset: 0x6898
    // Size: 0x1d4
    function set_player_stance(player) {
        if (!isplayer(player)) {
            return;
        }
        if (_s.playerstance === "crouch") {
            player val::set("scene_system_stance", "allow_stand", 0);
            player val::set("scene_system_stance", "allow_crouch", 1);
            player val::set("scene_system_stance", "allow_prone", 0);
            return;
        }
        if (_s.playerstance === "prone") {
            player val::set("scene_system_stance", "allow_stand", 0);
            player val::set("scene_system_stance", "allow_crouch", 0);
            player val::set("scene_system_stance", "allow_prone", 1);
            return;
        }
        player val::set("scene_system_stance", "allow_stand", 1);
        player val::set("scene_system_stance", "allow_crouch", 0);
        player val::set("scene_system_stance", "allow_prone", 0);
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 2, eflags: 0x2 linked
    // Checksum 0xdcfbc90, Offset: 0x498
    // Size: 0x164
    function _stop(*b_dont_clear_anim, b_finished) {
        if (isalive(_e)) {
            _e notify(#"scene_stop");
            _e notify(#"hash_7ba9e3058f933eb");
            stop_camera(_e);
            _e flag::clear(#"hash_7cddd51e45d3ff3e");
            if (!is_true(_s.diewhenfinished) || !b_finished) {
                _e animation::stop(0.2);
            }
            _e thread scene::scene_enable_player_stuff(_o_scene._s, _s, _o_scene._e_root);
        }
        if (is_true(_e.var_20ed0b0c)) {
            _e delete();
        }
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x568b82c1, Offset: 0x7098
    // Size: 0x152
    function function_894716e2(player) {
        if (!isplayer(player) || isbot(player)) {
            return;
        }
        if (isdefined(var_55b4f21e.var_6eb7f9a0)) {
            switch (var_55b4f21e.var_6eb7f9a0) {
            case #"bank1":
                player clientfield::set_to_player("player_pbg_bank_scene_system", 0);
                break;
            case #"bank2":
                player clientfield::set_to_player("player_pbg_bank_scene_system", 1);
                break;
            case #"bank3":
                player clientfield::set_to_player("player_pbg_bank_scene_system", 2);
                break;
            case #"bank4":
                player clientfield::set_to_player("player_pbg_bank_scene_system", 3);
                break;
            }
        }
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 4, eflags: 0x2 linked
    // Checksum 0xac10899e, Offset: 0x1f58
    // Size: 0x13c
    function function_8966b27e(player, linkto, tag, var_79f81c6c = 0) {
        player endon(#"death");
        linkto endon(#"death");
        lerp_time = csceneobject::get_lerp_time();
        if (lerp_time > 0) {
            player playerlinktoblend(linkto, tag, lerp_time, lerp_time * 0.5, 0, lerp_time, lerp_time * 0.5, 0, player.var_6f570bef);
            wait(lerp_time);
        }
        if (var_79f81c6c) {
            linkto show();
        }
        player playerlinktodelta(linkto, tag, 1, player.player_anim_clamp_right, player.player_anim_clamp_left, player.player_anim_clamp_top, player.player_anim_clamp_bottom, 1, 1, player.var_6f570bef);
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0x6f89b68a, Offset: 0xe68
    // Size: 0x1c
    function _prepare() {
        _prepare_player(_e);
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x1feb5d49, Offset: 0x24b8
    // Size: 0x2a4
    function function_9339d69d(player) {
        if (is_true(_s.var_6d72caf2) && !csceneobject::function_27898329(_str_current_anim) && (csceneobject::function_b260bdcc(_str_shot) || scene::function_6a0b0afe(_o_scene._str_mode))) {
            self notify("4f895ebd7b592448");
            self endon("4f895ebd7b592448");
            player endon(#"disconnect");
            if (isdefined(_str_current_anim)) {
                n_anim_length = getanimlength(_str_current_anim);
            } else if (isdefined(_str_camera)) {
                n_anim_length = float(getcamanimtime(_str_camera)) / 1000;
            } else {
                n_anim_length = 0;
            }
            n_wait = max(n_anim_length - 0.5, 0);
            _o_scene waittilltimeout(n_wait, #"scene_done", #"scene_stop", #"scene_skip_completed", #"hash_3168dab591a18b9b");
            var_9f11cc78 = player getcurrentweapon();
            if (var_9f11cc78 === player.var_777951c || var_9f11cc78 === player.var_96494502) {
                player shoulddoinitialweaponraise(var_9f11cc78, 1);
                var_9f11cc78 = player loadout::function_18a77b37("primary");
                if (!isdefined(var_9f11cc78) || var_9f11cc78 == level.weaponnone) {
                    var_9f11cc78 = player loadout::function_18a77b37("secondary");
                }
            }
            if (isdefined(var_9f11cc78)) {
                player shoulddoinitialweaponraise(var_9f11cc78, 1);
            }
        }
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 2, eflags: 0x2 linked
    // Checksum 0x50a6ab98, Offset: 0x430
    // Size: 0x5a
    function first_init(s_objdef, o_scene) {
        if (isdefined(o_scene._str_team)) {
            s_objdef.team = o_scene._str_team;
        }
        s_objdef.nospawn = 1;
        return csceneobject::first_init(s_objdef, o_scene);
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x61caf069, Offset: 0x6800
    // Size: 0x90
    function revive_player(player) {
        if (level.gameended || !isplayer(player)) {
            return;
        }
        if (player.sessionstate === "spectator") {
            player thread [[ level.spawnplayer ]]();
            return;
        }
        if (player laststand::player_is_in_laststand()) {
            player notify(#"auto_revive");
        }
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0xd3e0542, Offset: 0x5c78
    // Size: 0x258
    function function_9a7dd9f2(player) {
        player notify(#"hash_feb654ece8faa3d");
        thread function_31a89cb0(player, 0);
        thread function_d0cf938(player, 0);
        foreach (o_obj in _o_scene._a_objects) {
            if (isdefined(o_obj)) {
                var_17c01da9 = o_obj._s.shots[csceneobject::get_shot(_str_shot)];
                if (o_obj != self && isdefined(var_17c01da9.lvlstart_stomach_)) {
                    thread [[ o_obj ]]->_play_anim(var_17c01da9.lvlstart_stomach_, 1, 0.2, undefined, 0, 0);
                }
            }
        }
        var_609ac4c9 = _s.shots[csceneobject::get_shot(_str_shot)];
        if (isdefined(var_609ac4c9.lvlstart_stomach_)) {
            _play_anim(var_609ac4c9.lvlstart_stomach_, 1, 0.2, undefined, 0, 0);
        }
        _reset_values();
        if (isplayer(player)) {
            player scene::set_igc_active(0);
            player notify(#"hash_684b272680aa2ed", {#str_scene:_o_scene._str_name});
        }
        player kill();
        [[ _o_scene ]]->stop();
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 2, eflags: 0x2 linked
    // Checksum 0x6bad6a6b, Offset: 0x7998
    // Size: 0x168
    function play_camera_on_player(player, n_start_time) {
        if (!isplayer(player) || !scene::check_team(player.team, _str_team) && !is_true(_o_scene._b_testing)) {
            return;
        }
        csceneobject::update_alignment();
        v_origin = isdefined(m_align.origin) ? m_align.origin : (0, 0, 0);
        v_angles = isdefined(m_align.angles) ? m_align.angles : (0, 0, 0);
        self thread _camanimscripted(player, isdefined(player.var_36fa161e) ? player.var_36fa161e : _str_camera, v_origin, v_angles, n_start_time);
        player.var_36fa161e = undefined;
        on_play_anim(player);
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0xab18ce14, Offset: 0xe90
    // Size: 0xe70
    function _prepare_player(player) {
        /#
            if (getdvarint(#"debug_scene", 0) > 0) {
                printtoprightln("<unknown string>");
            }
        #/
        player endon(#"death");
        player notify(#"new_shot");
        var_2bb59a6a = csceneobject::function_24f8cfb5(_str_shot) || is_true(_o_scene.b_play_from_time);
        function_dd8a2de2(player);
        if (player.current_scene === _o_scene._str_name) {
            return 0;
        }
        /#
            if (player === level.host && scene::check_team(player.team, _str_team)) {
                display_dev_info();
            }
        #/
        if (isplayer(player) && !is_true(_s.showhud) && !is_true(_s.allowdeath) && !player scene::is_igc_active()) {
            player scene::set_igc_active(1);
            player notify(#"scene_igc_shot_started", {#str_scene:_o_scene._str_name});
        }
        _set_values(player);
        player sethighdetail(1);
        if (player.team === #"allies" || player.team === #"axis") {
            str_streamer_hint = _o_scene._a_streamer_hint[player.team];
        } else {
            str_streamer_hint = _o_scene._a_streamer_hint[util::get_team_mapping(#"sidea")];
        }
        if (isdefined(str_streamer_hint) && isplayer(player)) {
            if (!isdefined(player.var_231881b1)) {
                player.var_231881b1 = [];
            }
            if (!isdefined(player.var_16672042)) {
                player.var_16672042 = [];
            }
            if (isdefined(player.var_16672042[_o_scene._str_name]) && player.var_16672042[_o_scene._str_name] != -1) {
                _n_streamer_req = player.var_16672042[_o_scene._str_name];
            } else if (_n_streamer_req == -1) {
                _n_streamer_req = player playerstreamerrequest("set", str_streamer_hint);
                player.var_231881b1[_o_scene._str_name] = str_streamer_hint;
                player.var_16672042[_o_scene._str_name] = _n_streamer_req;
            }
            if (var_2bb59a6a && _n_streamer_req != -1) {
                if (!is_true(level.scene_streamer_ignore[_o_scene._s.name])) {
                    if (!is_true(_o_scene._s.ignorestreamer) && !is_true(_o_scene._b_testing) && !scene::function_46546b5c(_o_scene._s.name)) {
                        self endon(#"new_shot");
                        level util::streamer_wait(undefined, 0, getdvarint(#"hash_47b7504d8ac8d477", 30), player.team, _o_scene._str_name);
                    }
                }
            }
        }
        if (player flag::get(#"mobile_armory_in_use") && isplayer(player)) {
            player flag::set(#"cancel_mobile_armory");
            player closemenu("mobile_armory_loadout");
            params = {#menu:"mobile_armory_loadout", #response:"cancel", #intpayload:0};
            player notify(#"menuresponse", params);
            player callback::callback(#"menu_response", params);
        }
        if (player flag::get(#"mobile_armory_begin_use") && isplayer(player)) {
            player val::reset(#"mobile_armory_use", "disable_weapons");
            player flag::clear(#"mobile_armory_begin_use");
        }
        if (getdvarint(#"scene_hide_player", 0)) {
            player val::set(#"scene", "hide");
        }
        player._scene_object = self;
        player.current_scene = _o_scene._str_name;
        player.var_e3d6d713 = player.current_scene;
        player.anim_debug_name = _s.name;
        /#
            if (csceneobject::function_209522a0() && isplayer(player)) {
                if (isdefined(_s.model)) {
                    var_be7bc546 = currentsessionmode();
                    var_123ebd30 = getallcharacterbodies(var_be7bc546);
                    var_ca47355c = 0;
                    foreach (var_2074c3ff in var_123ebd30) {
                        var_b744a7ed = function_d299ef16(var_2074c3ff, var_be7bc546);
                        for (var_6e0e2531 = 0; var_6e0e2531 < var_b744a7ed; var_6e0e2531++) {
                            var_322595c6 = function_d7c3cf6c(var_2074c3ff, var_6e0e2531, var_be7bc546);
                            if (var_322595c6.namehash === _s.model) {
                                player setcharacterbodytype(var_2074c3ff);
                                player setcharacteroutfit(var_6e0e2531);
                                if (isdefined(_s.var_a5617859) && isarray(var_322595c6.presets)) {
                                    var_a919ac81 = strtok(_s.var_a5617859, "<unknown string>");
                                    foreach (var_a343b02b, s_preset in var_322595c6.presets) {
                                        if (!is_true(s_preset.isvalid)) {
                                            continue;
                                        }
                                        if (isdefined(var_a919ac81[1]) && int(var_a919ac81[1]) === var_a343b02b) {
                                            player function_fbc5a093(var_a343b02b);
                                            break;
                                        }
                                    }
                                }
                                var_ca47355c = 1;
                                break;
                            }
                        }
                        if (var_ca47355c) {
                            break;
                        }
                    }
                }
            }
        #/
        if (isplayer(player) && [[ _o_scene ]]->is_scene_shared() && (var_2bb59a6a || scene::function_46546b5c(_o_scene._str_name)) && !csceneobject::is_skipping_scene()) {
            player thread scene::function_a4ad0308(_o_scene);
            if (var_2bb59a6a && getdvarint(#"hash_44f3b54c25dfae3b", 0)) {
                player clientfield::set_to_player("postfx_cateye", 1);
            }
        }
        revive_player(player);
        player thread util::cleanup_fancycam();
        if (isdefined(player.hijacked_vehicle_entity)) {
            player.hijacked_vehicle_entity delete();
        } else if (isalive(player) && !is_true(_s.var_5829ce6b) && isplayer(player) && player isinvehicle()) {
            vh_occupied = player getvehicleoccupied();
            n_seat = vh_occupied getoccupantseat(player);
            vh_occupied usevehicle(player, n_seat);
        }
        if (_o_scene._s scene::is_igc() && isplayer(player)) {
            player thread scene::scene_disable_player_stuff(_o_scene._s, _s);
            player util::function_7f49ffb7(6);
        }
        function_7efadfe8(player);
        function_d46ffe56(player);
        set_player_stance(player);
        player flag::set(#"scene");
        if (is_true(var_55b4f21e.var_3a0a7985) && isplayer(player)) {
            function_a2a183e7(player, var_55b4f21e.var_6d62f1ae);
        }
        if (is_true(_s.var_186d089d)) {
            player setinvisibletoall();
            player setvisibletoplayer(player);
        }
        waittillframeend();
        if (is_true(var_55b4f21e.interactiveshot) && isplayer(player)) {
            thread function_7d761e79(player);
        }
        player notify(#"scene_ready");
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x8275e48f, Offset: 0x5900
    // Size: 0x1bc
    function function_a27af0ae(player) {
        player notify(#"hash_feb654ece8faa3d");
        thread function_31a89cb0(player, 0);
        thread function_d0cf938(player, 0);
        foreach (o_obj in _o_scene._a_objects) {
            if (isdefined(o_obj)) {
                var_17c01da9 = o_obj._s.shots[csceneobject::get_shot(_str_shot)];
                if (o_obj != self && isdefined(var_17c01da9.var_5bb36583)) {
                    thread [[ o_obj ]]->_play_anim(var_17c01da9.var_5bb36583, 1, 0.2, undefined, 0, 0);
                }
            }
        }
        var_609ac4c9 = _s.shots[csceneobject::get_shot(_str_shot)];
        if (isdefined(var_609ac4c9.var_5bb36583)) {
            _play_anim(var_609ac4c9.var_5bb36583, 1, 0.2, undefined, 0, 0);
        }
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 2, eflags: 0x2 linked
    // Checksum 0x61b70905, Offset: 0x20a0
    // Size: 0xec
    function function_a2a183e7(player, var_79f81c6c = 0) {
        player.var_d43badce = util::spawn_player_clone(player);
        player.var_d43badce.anim_debug_name = player.name + " clone";
        player.var_d43badce hide();
        tag = "tag_player";
        if (!is_true(player.var_d43badce haspart(tag))) {
            tag = "tag_origin";
        }
        thread function_8966b27e(player, player.var_d43badce, tag, var_79f81c6c);
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 2, eflags: 0x2 linked
    // Checksum 0x38ec1e89, Offset: 0x5008
    // Size: 0x150
    function function_bd3a7030(player, var_a0332034) {
        if (!level.interactive_shot interactive_shot::is_open(player)) {
            level.interactive_shot interactive_shot::open(player);
        }
        thread function_d4446494(player);
        player notify(#"hash_940a817baf9765e", {#str_input:var_a0332034});
        s_waitresult = player waittill(#"hash_7ba9e3058f933eb", #"hash_feb654ece8faa3d", #"death");
        if (isdefined(player) && level.interactive_shot interactive_shot::is_open(player)) {
            level.interactive_shot interactive_shot::close(player);
        }
        if (s_waitresult._notify == "death") {
            [[ _o_scene ]]->stop();
        }
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 2, eflags: 0x2 linked
    // Checksum 0xdaa82369, Offset: 0x2dd8
    // Size: 0x7c
    function function_c26a4e8b(player, b_enable) {
        if (b_enable) {
            if (is_true(player.var_313437ff)) {
                player.var_313437ff = undefined;
                player weapons::force_stowed_weapon_update();
            }
            return;
        }
        player.var_313437ff = 1;
        player clearstowedweapon();
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 5, eflags: 0x2 linked
    // Checksum 0x7a5ffe51, Offset: 0x7b08
    // Size: 0x1b4
    function _camanimscripted(player, str_camera, v_origin, v_angles, n_start_time = 0) {
        player notify(#"camanimscripted");
        player endon(#"camanimscripted", #"disconnect");
        if (_o_scene._s scene::is_igc()) {
            player thread scene::scene_disable_player_stuff(_o_scene._s, _s);
        }
        var_57949b2d = getcamanimtime(str_camera) * n_start_time;
        var_41193b94 = int(gettime() - var_57949b2d);
        n_lerp_time = csceneobject::get_lerp_time();
        n_lerp_time = int(n_lerp_time * 1000);
        player dontinterpolate();
        camanimscripted(player, str_camera, var_41193b94, v_origin, v_angles, n_lerp_time);
        wait_for_camera(str_camera, n_start_time);
        player dontinterpolate();
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 2, eflags: 0x2 linked
    // Checksum 0x5798865c, Offset: 0x4768
    // Size: 0x2b6
    function function_c503dca9(player, var_ec50a0d3) {
        a_players = array::exclude(getplayers(), player);
        foreach (player_other in a_players) {
            n_height_diff = abs(player_other.origin[2] - player.origin[2]);
            if (distancesquared(player.origin, player_other.origin) < 16384) {
                if (var_ec50a0d3.var_9532f6db == "move_up" && player.origin[2] < player_other.origin[2]) {
                    return false;
                }
                if (var_ec50a0d3.var_9532f6db == "move_down" && player.origin[2] > player_other.origin[2]) {
                    return false;
                }
                var_b52c361d = 0;
                var_55d77e67 = 0;
                var_9d0b2a04 = vectordot(anglestoright(player.angles), vectornormalize(player.origin - player_other.origin));
                if (var_9d0b2a04 > 0) {
                    var_b52c361d = 1;
                } else {
                    var_55d77e67 = 1;
                }
                if (var_ec50a0d3.var_9532f6db == "move_left" && var_b52c361d && n_height_diff < 32) {
                    return false;
                }
                if (var_ec50a0d3.var_9532f6db == "move_right" && var_55d77e67 && n_height_diff < 32) {
                    return false;
                }
            }
        }
        return true;
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 2, eflags: 0x2 linked
    // Checksum 0xcc8677e0, Offset: 0x29f8
    // Size: 0xbc
    function function_c7246a4a(player, var_d4c489c0) {
        w_slot = player loadout::function_18a77b37(var_d4c489c0);
        var_e4b15461 = player getcurrentweapon();
        if (w_slot != var_e4b15461) {
            if (!player hasweapon(w_slot, 1)) {
                player giveweapon(w_slot);
                player.var_777951c = w_slot;
            }
            player switchtoweaponimmediate(w_slot, 1);
        }
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0xa988f3d5, Offset: 0x2ac0
    // Size: 0x30c
    function function_d3541c6f(player) {
        if (!isplayer(player)) {
            return;
        }
        player callback::function_52ac9652(#"weapon_change", &function_39ab0a6a, self);
        if (isdefined(player.var_777951c)) {
            if (!is_true(_s.var_1a95895f) && !is_true(_s.var_b538acac) || (is_true(_s.var_1a95895f) || is_true(_s.var_b538acac)) && (scene::function_6a0b0afe(_o_scene._str_mode) || scene::function_b260bdcc(_o_scene._str_name, _str_shot) || is_true(_o_scene.scene_stopping))) {
                player takeweapon(player.var_777951c);
                player player::switch_to_primary_weapon(1, 1);
                player.var_777951c = undefined;
            }
        }
        /#
            if (isdefined(player.var_96494502) && (scene::function_6a0b0afe(_o_scene._str_mode) || scene::function_b260bdcc(_o_scene._str_name, _str_shot))) {
                player takeweapon(player.var_96494502);
                player.var_96494502 = undefined;
            }
        #/
        if (function_607d830()) {
            function_c26a4e8b(player, 1);
        }
        w_current = player getcurrentweapon();
        if (!is_true(_s.dontreloadammo) && (!isdefined(w_current.var_a2e7031d) || !w_current.var_a2e7031d)) {
            player player::fill_current_clip();
        }
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x18eeb531, Offset: 0x5160
    // Size: 0x5e6
    function function_d4446494(player) {
        player endon(#"hash_7ba9e3058f933eb", #"hash_feb654ece8faa3d", #"death");
        while (true) {
            s_waitresult = player waittill(#"hash_940a817baf9765e");
            if (!isdefined(s_waitresult.str_input)) {
                s_waitresult.str_input = "";
            }
            switch (s_waitresult.str_input) {
            case #"move_up":
            case #"move_down":
                if (s_waitresult.str_input == "move_up") {
                    if (player gamepadusedlast()) {
                        level.interactive_shot interactive_shot::set_text(player, #"hash_66ac13c66930481e");
                    } else {
                        level.interactive_shot interactive_shot::set_text(player, #"hash_2e61b9986055044e");
                    }
                } else if (player gamepadusedlast()) {
                    level.interactive_shot interactive_shot::set_text(player, #"hash_f7f3ef0446b4447");
                } else {
                    level.interactive_shot interactive_shot::set_text(player, #"hash_63aa233af2b054f1");
                }
                break;
            case #"move_right":
            case #"move_left":
                if (s_waitresult.str_input == "move_right") {
                    if (player gamepadusedlast()) {
                        level.interactive_shot interactive_shot::set_text(player, #"hash_b89e8fe23b5a6ff");
                    } else {
                        level.interactive_shot interactive_shot::set_text(player, #"hash_5cafbb3ef224b89");
                    }
                } else if (player gamepadusedlast()) {
                    level.interactive_shot interactive_shot::set_text(player, #"hash_43fe6cadb07b27b2");
                } else {
                    level.interactive_shot interactive_shot::set_text(player, #"hash_121d78dfceea3bf2");
                }
                break;
            case #"jump":
                level.interactive_shot interactive_shot::set_text(player, #"hash_5b57ca9476df902b");
                break;
            case #"stance":
                level.interactive_shot interactive_shot::set_text(player, #"hash_30214ec564c2c09b");
                break;
            case #"use":
                level.interactive_shot interactive_shot::set_text(player, #"hash_1c489083f5cdb3f6");
                break;
            case #"weapon_switch":
                level.interactive_shot interactive_shot::set_text(player, #"hash_5d8ce20bafb14fec");
                break;
            case #"sprint":
                if (player gamepadusedlast()) {
                    level.interactive_shot interactive_shot::set_text(player, #"hash_6b873520c198df93");
                } else {
                    level.interactive_shot interactive_shot::set_text(player, #"hash_7f72586820c8b86d");
                }
                break;
            case #"melee":
                level.interactive_shot interactive_shot::set_text(player, #"hash_6c4731677fa269b1");
                break;
            case #"attack":
                break;
            case #"dpad_up":
                level.interactive_shot interactive_shot::set_text(player, #"hash_327b92f099f4b62e");
                break;
            case #"dpad_down":
                level.interactive_shot interactive_shot::set_text(player, #"hash_51f4288480f483f7");
                break;
            case #"dpad_left":
                level.interactive_shot interactive_shot::set_text(player, #"hash_2f8bb64325eeac62");
                break;
            case #"dpad_right":
                level.interactive_shot interactive_shot::set_text(player, #"hash_2c841879f1d933ef");
                break;
            default:
                level.interactive_shot interactive_shot::set_text(player, #"");
                break;
            }
        }
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0xb7c7bb3b, Offset: 0x2198
    // Size: 0x314
    function function_d46ffe56(player) {
        if (!isplayer(player)) {
            return;
        }
        var_cd31cd6a = getdvarstring(#"hash_575aeb603638c901", "");
        if ((!is_true(_s.removeweapon) || is_true(_s.showweaponinfirstperson)) && !is_true(_s.disableprimaryweaponswitch) && var_cd31cd6a == "" && !function_1db23c62()) {
            player player::switch_to_primary_weapon(1, 1);
        }
        if ((function_247a0b9d() || function_1db23c62()) && var_cd31cd6a == "") {
            w_current = player getcurrentweapon();
            var_951894cb = w_current.rootweapon;
            if (!function_53c151a4(var_951894cb)) {
                var_9cb7f1a6 = getweapon(#"ar_accurate_t9");
                if (!player hasweapon(var_9cb7f1a6, 1)) {
                    player giveweapon(var_9cb7f1a6);
                    player.var_777951c = var_9cb7f1a6;
                }
                player switchtoweaponimmediate(var_9cb7f1a6, 1);
            }
        }
        /#
            if (var_cd31cd6a != "<unknown string>") {
                var_8e6a7733 = getweapon(var_cd31cd6a);
                if (!player hasweapon(var_8e6a7733, 1)) {
                    player giveweapon(var_8e6a7733);
                    player.var_96494502 = var_8e6a7733;
                }
                player switchtoweaponimmediate(var_8e6a7733, 1);
            }
        #/
        if (function_607d830()) {
            function_c26a4e8b(player, 0);
        }
        player callback::function_d8abfc3d(#"weapon_change", &function_39ab0a6a, self);
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x11230a6, Offset: 0x3138
    // Size: 0x152
    function function_dd8a2de2(player) {
        if (!isplayer(player) || isbot(player)) {
            return;
        }
        if (isdefined(var_55b4f21e.var_143deeac)) {
            switch (var_55b4f21e.var_143deeac) {
            case #"bank1":
                player clientfield::set_to_player("player_pbg_bank_scene_system", 0);
                break;
            case #"bank2":
                player clientfield::set_to_player("player_pbg_bank_scene_system", 1);
                break;
            case #"bank3":
                player clientfield::set_to_player("player_pbg_bank_scene_system", 2);
                break;
            case #"bank4":
                player clientfield::set_to_player("player_pbg_bank_scene_system", 3);
                break;
            }
        }
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0x7a7af14, Offset: 0x7648
    // Size: 0x5c
    function function_e1ac7b9a() {
        show_player = isdefined(var_55b4f21e.var_6454a5aa) ? var_55b4f21e.var_6454a5aa : _s.var_6454a5aa;
        return isdefined(show_player) ? !show_player : 1;
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0xc12113bf, Offset: 0x75e8
    // Size: 0x58
    function get_camera_tween_out() {
        n_camera_tween_out = isdefined(var_55b4f21e.cameratweenout) ? var_55b4f21e.cameratweenout : _s.cameratweenout;
        return isdefined(n_camera_tween_out) ? n_camera_tween_out : 0;
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0x639c09f9, Offset: 0x7520
    // Size: 0x58
    function get_camera_tween() {
        n_camera_tween = isdefined(var_55b4f21e.cameratween) ? var_55b4f21e.cameratween : _s.cameratween;
        return isdefined(n_camera_tween) ? n_camera_tween : 0;
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0xc7c186de, Offset: 0x608
    // Size: 0x3d2
    function _spawn() {
        /#
            if (is_true(_o_scene._b_testing) && csceneobject::is_player()) {
                p_host = util::gethostplayer();
                if (!csceneobject::in_this_scene(p_host)) {
                    _e = p_host;
                    return;
                }
            }
        #/
        csceneobject::restore_saved_ent();
        if (!isdefined(_e)) {
            a_players = [[ _func_get ]](_str_team);
            /#
                var_a41f3ee5 = getdvarint(#"hash_7ff9a3a022339237", 0);
                if (var_a41f3ee5) {
                    player = array::pop_front(a_players, 0);
                    array::push(a_players, player, var_a41f3ee5);
                }
            #/
            foreach (ent in a_players) {
                if (!csceneobject::in_this_scene(ent)) {
                    _e = ent;
                    return;
                }
            }
            if (!isdefined(_e) && is_true(_s.var_9b604b8d)) {
                a_players = [[ _func_get ]](_str_team);
                player = array::random(a_players);
                if (isdefined(player)) {
                    _e = util::spawn_player_clone(player, undefined, undefined, 1);
                    _e.var_20ed0b0c = 1;
                    current_weapon = player getcurrentweapon();
                    var_2506506a = current_weapon.rootweapon;
                    if (!function_53c151a4(var_2506506a) || current_weapon == level.weaponnone) {
                        current_weapon = getweapon(#"ar_accurate_t9");
                        _e animation::attach_weapon(current_weapon);
                        _e.weapon = current_weapon;
                    } else if (current_weapon == level.weaponnone && isdefined(player.class_num)) {
                        current_weapon = player getloadoutweapon(player.class_num, "primary");
                        _e animation::attach_weapon(current_weapon);
                        _e.weapon = current_weapon;
                    }
                    _e.var_777951c = current_weapon;
                    _e.var_3b97696d = player getplayergendertype();
                }
            }
        }
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x31669a99, Offset: 0x5ac8
    // Size: 0x1a4
    function function_ef1eb90b(player) {
        thread function_31a89cb0(player, 0);
        thread function_d0cf938(player, 0);
        foreach (o_obj in _o_scene._a_objects) {
            if (isdefined(o_obj)) {
                var_17c01da9 = o_obj._s.shots[csceneobject::get_shot(_str_shot)];
                if (o_obj != self && isdefined(var_17c01da9.var_c474be53)) {
                    thread [[ o_obj ]]->_play_anim(var_17c01da9.var_c474be53, 1, 0.2, undefined, 0, 0);
                }
            }
        }
        var_609ac4c9 = _s.shots[csceneobject::get_shot(_str_shot)];
        if (isdefined(var_609ac4c9.var_c474be53)) {
            _play_anim(var_609ac4c9.var_c474be53, 1, 0.2, undefined, 0, 0);
        }
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x9786aa10, Offset: 0xd48
    // Size: 0x114
    function _reset_values(ent = self._e) {
        csceneobject::reset_ent_val("takedamage", ent);
        csceneobject::reset_ent_val("ignoreme", ent);
        csceneobject::reset_ent_val("allowdeath", ent);
        csceneobject::reset_ent_val("take_weapons", ent);
        if (isbot(ent) && (csceneobject::function_b260bdcc(_str_shot) || scene::function_6a0b0afe(_o_scene._str_mode) || is_true(_o_scene.scene_stopping))) {
            ent botreleasemanualcontrol();
        }
    }

    // Namespace csceneplayer/scene_player_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x861298b6, Offset: 0x5ed8
    // Size: 0x204
    function on_play_anim(player) {
        if (!isplayer(player)) {
            return;
        }
        if (_n_streamer_req != -1 && !csceneobject::is_skipping_scene() && !is_true(player.streamer_hint_playing)) {
            if (!sessionmodeiscampaigngame() && isarray(player.var_231881b1)) {
                foreach (str_streamer_hint in player.var_231881b1) {
                    if (isdefined(str_streamer_hint) && str_streamer_hint !== -1) {
                        player playerstreamerrequest("clear", str_streamer_hint);
                    }
                }
            }
            if (isarray(player.var_231881b1) && isdefined(player.var_231881b1[_o_scene._str_name])) {
                player playerstreamerrequest("play", player.var_231881b1[_o_scene._str_name]);
                player.var_16672042[_o_scene._str_name] = -1;
                player.streamer_hint_playing = 1;
            }
        }
        thread function_9339d69d(player);
    }

}

// Namespace scene
// Method(s) 5 Total 109
class cscenefakeplayer : csceneobject {

    var _e;
    var _o_scene;
    var _s;
    var _str_shot;
    var var_f4b34dc1;

    // Namespace cscenefakeplayer/scene_player_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0xb4c73b8, Offset: 0xd880
    // Size: 0x92
    function _spawn_ent() {
        if (is_true(_s.var_671e284a)) {
            a_players = getplayers();
            player = array::random(a_players);
            if (isdefined(player)) {
                _e = util::spawn_player_clone(player, undefined, undefined, 1);
            }
        }
    }

    // Namespace cscenefakeplayer/scene_player_shared
    // Params 3, eflags: 0x2 linked
    // Checksum 0x8a655117, Offset: 0xd9d8
    // Size: 0x2aa
    function animation_lookup(animation, ent, *b_camera = self._e) {
        if (isweapon(b_camera.weapon) && !isdefined(b_camera.var_777951c)) {
            b_camera.var_777951c = b_camera.weapon;
        }
        if (isdefined(_o_scene.var_58e5d094) && isplayer(b_camera.var_1ff8de20)) {
            if (self === _o_scene.var_58e5d094 && isarray(_o_scene._a_objects)) {
                foreach (obj in _o_scene._a_objects) {
                    if (obj != self && [[ obj ]]->is_player_model() && isplayer(obj._e.var_1ff8de20)) {
                        var_65cfb30b = [[ obj ]]->get_animation_name(_str_shot, 1);
                        var_65cfb30b = [[ obj ]]->function_9a43e31(b_camera, var_65cfb30b);
                        var_f4b34dc1[obj._e.var_1ff8de20 getentitynumber()] = var_65cfb30b;
                    }
                }
            }
            var_9defbbb0 = [[ _o_scene.var_58e5d094 ]]->get_animation_name(_str_shot, 1);
            var_9defbbb0 = [[ _o_scene.var_58e5d094 ]]->function_9a43e31(b_camera, var_9defbbb0);
            var_f4b34dc1[b_camera.var_1ff8de20 getentitynumber()] = var_9defbbb0;
        }
        ent = csceneobject::function_9a43e31(b_camera, ent);
        return ent;
    }

    // Namespace cscenefakeplayer/scene_player_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0xaa35b82d, Offset: 0xd920
    // Size: 0xac
    function _prepare() {
        /#
            var_cd31cd6a = getdvarstring(#"hash_575aeb603638c901", "<unknown string>");
            if (isdefined(_e) && var_cd31cd6a != "<unknown string>") {
                weapon = getweapon(var_cd31cd6a);
                _e animation::attach_weapon(weapon);
            }
        #/
        csceneobject::_prepare();
    }

}

// Namespace scene
// Method(s) 8 Total 156
class cscenesharedplayer : csceneplayer, csceneobject {

    var _e;
    var _func_get;
    var _func_get_active;
    var _o_scene;
    var _s;
    var _str_current_anim;
    var _str_shot;
    var _str_team;
    var current_playing_anim;
    var m_align;
    var m_tag;
    var player_align;
    var player_animation;
    var player_animation_length;
    var player_animation_notify;
    var player_rate;
    var player_start_time;
    var player_tag;
    var player_time_frac;

    // Namespace cscenesharedplayer/scene_player_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0xc1b9edcc, Offset: 0xb6a8
    // Size: 0x98
    function _cleanup() {
        foreach (player in [[ _func_get ]](_str_team)) {
            csceneplayer::_cleanup_player(player);
        }
    }

    // Namespace cscenesharedplayer/scene_player_shared
    // Params 5, eflags: 0x2 linked
    // Checksum 0xeb7f62b6, Offset: 0xa940
    // Size: 0x3f8
    function _play_anim(animation, n_rate, *n_blend, *var_b2e32ae2, n_time) {
        /#
            if (getdvarint(#"debug_scene", 0) > 0) {
                printtoprightln("<unknown string>" + n_blend);
            }
        #/
        _str_current_anim = n_blend;
        player_animation = n_blend;
        player_animation_notify = n_blend + "_notify";
        player_animation_length = getanimlength(n_blend);
        player_align = m_align;
        player_tag = m_tag;
        player_rate = var_b2e32ae2;
        player_time_frac = n_time;
        player_start_time = gettime();
        a_players = [[ _func_get ]](_str_team);
        /#
            if (isdefined(_e) && !isinarray(a_players, _e)) {
                arrayinsert(a_players, _e, 0);
            }
        #/
        foreach (player in a_players) {
            if (player flag::get(#"loadout_given") && player.sessionstate !== "spectator") {
                self thread _play_shared_player_anim_for_player(player);
                continue;
            }
            if (is_true(player.initialloadoutgiven)) {
                csceneplayer::revive_player(player);
            }
        }
        _set_visibility();
        waittillframeend();
        do {
            b_playing = 0;
            foreach (player in [[ _func_get_active ]](_str_team)) {
                if (isdefined(player) && player flag::get(player_animation_notify)) {
                    b_playing = 1;
                    player flag::wait_till_clear(player_animation_notify);
                    break;
                }
            }
        } while (b_playing);
        /#
            if (getdvarint(#"debug_scene", 0) > 0) {
                csceneobject::log(toupper(_s.type) + "<unknown string>" + _str_current_anim + "<unknown string>");
            }
        #/
        thread [[ _o_scene ]]->_call_shot_funcs("players_done");
    }

    // Namespace cscenesharedplayer/scene_player_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0x6b9fa74f, Offset: 0xb4b8
    // Size: 0xe0
    function _set_visibility() {
        a_players = [[ _func_get ]](_str_team);
        foreach (player in a_players) {
            player show();
            if (!player flag::get(#"hash_7cddd51e45d3ff3e")) {
                player setinvisibletoall();
            }
        }
    }

    // Namespace cscenesharedplayer/scene_player_shared
    // Params 2, eflags: 0x2 linked
    // Checksum 0x78745d97, Offset: 0xb5a0
    // Size: 0x100
    function _stop(*b_dont_clear_anim, *b_finished) {
        foreach (player in [[ _func_get ]](_str_team)) {
            csceneplayer::stop_camera(player);
            player animation::stop();
            player thread scene::scene_enable_player_stuff(_o_scene._s, _s, _o_scene._e_root);
        }
    }

    // Namespace cscenesharedplayer/scene_player_shared
    // Params 0, eflags: 0x2 linked
    // Checksum 0x56be2cc3, Offset: 0xa848
    // Size: 0xec
    function _prepare() {
        if (!csceneobject::function_e0df299e(_str_shot)) {
            return;
        }
        a_players = [[ _func_get ]](_str_team);
        foreach (ent in a_players) {
            thread _prepare_player(ent);
        }
        _set_visibility();
        array::wait_till(a_players, "scene_ready");
    }

    // Namespace cscenesharedplayer/scene_player_shared
    // Params 1, eflags: 0x2 linked
    // Checksum 0x2f1b7e7, Offset: 0xad40
    // Size: 0x76c
    function _play_shared_player_anim_for_player(player) {
        player endon(#"death");
        if (!scene::check_team(player.team, _str_team)) {
            return;
        }
        str_animation = player_animation;
        str_animation = animation_lookup(str_animation, player);
        csceneplayer::on_play_anim(player);
        /#
        #/
        /#
            if (getdvarint(#"debug_scene", 0) > 0) {
                printtoprightln("<unknown string>" + player_animation);
            }
        #/
        player flag::set(#"shared_igc");
        if (player flag::get(player_animation_notify)) {
            player flag::set(player_animation_notify + "_skip_init_clear");
        }
        player flag::set(player_animation_notify);
        if (isdefined(player getlinkedent())) {
            player unlink();
        }
        if (!is_true(_s.disabletransitionin)) {
            if (player != _e || getdvarint(#"scr_player1_postfx", 0)) {
                if (!isdefined(player.var_59f4be9a)) {
                    if (!is_true(level.chyron_text_active)) {
                        if (!is_true(player.var_8a1a4ba)) {
                            player.play_scene_transition_effect = 1;
                        }
                    }
                }
            }
        }
        csceneplayer::_prepare_player(player);
        n_time_passed = float(gettime() - player_start_time) / 1000;
        n_start_time = player_time_frac * player_animation_length;
        n_time_left = player_animation_length - n_time_passed - n_start_time;
        n_time_frac = 1 - n_time_left / player_animation_length;
        if (isdefined(_e) && player != _e) {
            player dontinterpolate();
            player setorigin(_e.origin);
            if (!isbot(player)) {
                player setplayerangles(_e getplayerangles());
            }
        }
        n_lerp = csceneobject::get_lerp_time();
        if (!csceneplayer::function_6c1c67c1()) {
            csceneplayer::stop_camera(player);
            if (csceneobject::function_595c601b()) {
                n_camera_tween = csceneplayer::get_camera_tween();
                if (n_camera_tween > 0) {
                    var_186edacf = csceneplayer::function_7d78187b();
                    player startcameratween(n_camera_tween, 0, var_186edacf);
                }
            }
        }
        if (n_time_frac < 1) {
            /#
                if (getdvarint(#"scene_hide_player", 0) > 0) {
                    player val::set(#"scene", "<unknown string>");
                }
                if (getdvarint(#"debug_scene", 0) > 0) {
                    printtoprightln("<unknown string>" + _s.name + "<unknown string>" + player_animation);
                }
            #/
            player_num = player getentitynumber();
            if (!isdefined(current_playing_anim)) {
                current_playing_anim[player_num] = [];
            }
            current_playing_anim[player_num] = str_animation;
            if (csceneobject::is_skipping_scene()) {
                thread csceneobject::skip_scene(1);
            }
            if (csceneobject::function_5c2a9efa()) {
                player val::set(#"scene_player", "freezecontrols", 1);
                csceneobject::function_5c082667();
                player val::reset(#"scene_player", "freezecontrols");
            } else {
                player animation::play(str_animation, player_align, player_tag, player_rate, 0, 0, n_lerp, n_time_frac, _s.showweaponinfirstperson, undefined, undefined, undefined, undefined, undefined, _s.showviewmodel);
            }
            if (!player flag::get(player_animation_notify + "_skip_init_clear")) {
                player flag::clear(player_animation_notify);
            } else {
                player flag::clear(player_animation_notify + "_skip_init_clear");
            }
            if (!player isplayinganimscripted()) {
                current_playing_anim[player_num] = undefined;
            }
            /#
                if (getdvarint(#"debug_scene", 0) > 0) {
                    printtoprightln("<unknown string>" + _s.name + "<unknown string>" + function_9e72a96(player_animation));
                }
            #/
        }
    }

}

