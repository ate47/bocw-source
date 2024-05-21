// Atian COD Tools GSC CW decompiler test
#using script_68d08b784c92da95;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\ai\systems\destructible_character.gsc;
#using scripts\core_common\ai\systems\shared.gsc;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_notetracks.gsc;
#using scripts\core_common\ai\archetype_utility.gsc;
#using scripts\core_common\ai\archetype_human_cover.gsc;

#namespace animationstatenetwork;

// Namespace animationstatenetwork/archetype_notetracks
// Params 0, eflags: 0x1
// Checksum 0x9aa18ce5, Offset: 0x480
// Size: 0x66c
function autoexec registerdefaultnotetrackhandlerfunctions() {
    registernotetrackhandlerfunction("fire", &notetrackfirebullet);
    registernotetrackhandlerfunction("gib_disable", &notetrackgibdisable);
    registernotetrackhandlerfunction("gib = \"head\"", &gibserverutils::gibhead);
    registernotetrackhandlerfunction("gib = \"arm_left\"", &gibserverutils::gibleftarm);
    registernotetrackhandlerfunction("gib = \"arm_right\"", &gibserverutils::gibrightarm);
    registernotetrackhandlerfunction("gib = \"leg_left\"", &gibserverutils::gibleftleg);
    registernotetrackhandlerfunction("gib = \"leg_right\"", &gibserverutils::gibrightleg);
    registernotetrackhandlerfunction("dropgun", &notetrackdropgun);
    registernotetrackhandlerfunction("gun drop", &notetrackdropgun);
    registernotetrackhandlerfunction("drop_shield", &notetrackdropshield);
    registernotetrackhandlerfunction("hide_weapon", &notetrackhideweapon);
    registernotetrackhandlerfunction("show_weapon", &notetrackshowweapon);
    registernotetrackhandlerfunction("hide_ai", &notetrackhideai);
    registernotetrackhandlerfunction("show_ai", &notetrackshowai);
    registernotetrackhandlerfunction("attach_knife", &notetrackattachknife);
    registernotetrackhandlerfunction("detach_knife", &notetrackdetachknife);
    registernotetrackhandlerfunction("grenade_throw", &notetrackgrenadethrow);
    registernotetrackhandlerfunction("start_ragdoll", &notetrackstartragdoll);
    registernotetrackhandlerfunction("ragdoll_nodeath", &notetrackstartragdollnodeath);
    registernotetrackhandlerfunction("unsync", &notetrackmeleeunsync);
    registernotetrackhandlerfunction("helmet_pop", &notetrackhelmetpop);
    registernotetrackhandlerfunction("drop clip", &function_727744ff);
    registernotetrackhandlerfunction("extract clip left", &function_cd88e2dc);
    registernotetrackhandlerfunction("extract clip right", &function_8982cca0);
    registernotetrackhandlerfunction("attach clip left", &function_3f4b4219);
    registernotetrackhandlerfunction("attach clip right", &function_15b71a09);
    registernotetrackhandlerfunction("detach clip left", &function_9d41000);
    registernotetrackhandlerfunction("detach clip right", &function_9d41000);
    registernotetrackhandlerfunction("step1", &notetrackstaircasestep1);
    registernotetrackhandlerfunction("step2", &notetrackstaircasestep2);
    registernotetrackhandlerfunction("anim_movement = \"stop\"", &notetrackanimmovementstop);
    registernotetrackhandlerfunction("gun_2_back", &notetrackguntoback);
    registernotetrackhandlerfunction("gun_2_right", &function_776caa25);
    registernotetrackhandlerfunction("pistol_pickup", &function_f7e95a07);
    registernotetrackhandlerfunction("pistol_putaway", &function_c49db6d);
    registerblackboardnotetrackhandler("anim_pose = \\"stand\\"", "_stance", "stand");
    registerblackboardnotetrackhandler("anim_pose = \\"crouch\\"", "_stance", "crouch");
    registerblackboardnotetrackhandler("anim_pose = \\"prone\\"", "_stance", "prone");
    registerblackboardnotetrackhandler("anim_pose = stand", "_stance", "stand");
    registerblackboardnotetrackhandler("anim_pose = crouch", "_stance", "crouch");
    registerblackboardnotetrackhandler("anim_pose = prone", "_stance", "prone");
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0x70a996f7, Offset: 0xaf8
// Size: 0x7a
function private notetrackguntoback(entity) {
    if (!is_true(entity.var_8f33d87a)) {
        ai::gun_remove();
        entity attach(entity.primaryweapon.worldmodel, "tag_stowed_back", 0);
        entity.var_8f33d87a = 1;
    }
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0x62cb38e2, Offset: 0xb80
// Size: 0x86
function private function_776caa25(entity) {
    if (is_true(entity.var_8f33d87a)) {
        entity.var_8f33d87a = 0;
        entity detach(entity.primaryweapon.worldmodel, "tag_stowed_back");
    }
    ai::gun_recall();
    entity.bulletsinclip = entity.primaryweapon.clipsize;
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0x35373c4e, Offset: 0xc10
// Size: 0x46
function private function_f7e95a07(entity) {
    ai::gun_switchto(entity.sidearm, "right");
    entity.bulletsinclip = entity.sidearm.clipsize;
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0xbba2f492, Offset: 0xc60
// Size: 0x2c
function private function_c49db6d(entity) {
    ai::gun_switchto(entity.sidearm, "none");
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0x1ca6cd11, Offset: 0xc98
// Size: 0x64
function private notetrackanimmovementstop(entity) {
    if (entity haspath()) {
        entity pathmode("move delayed", 1, randomfloatrange(2, 4));
    }
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0xdb238c4f, Offset: 0xd08
// Size: 0x5c
function private notetrackstaircasestep1(entity) {
    numsteps = entity getblackboardattribute("_staircase_num_steps");
    numsteps++;
    entity setblackboardattribute("_staircase_num_steps", numsteps);
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0x96b1e87d, Offset: 0xd70
// Size: 0x64
function private notetrackstaircasestep2(entity) {
    numsteps = entity getblackboardattribute("_staircase_num_steps");
    numsteps += 2;
    entity setblackboardattribute("_staircase_num_steps", numsteps);
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0x3d17ac34, Offset: 0xde0
// Size: 0xd4
function private notetrackdropguninternal(entity) {
    if (!isdefined(entity.weapon) || entity.weapon === level.weaponnone) {
        return;
    }
    if (isdefined(entity.ai) && is_true(entity.ai.var_7c61677c)) {
        if (isalive(entity)) {
            return;
        }
    }
    entity.lastweapon = entity.weapon;
    primaryweapon = entity.primaryweapon;
    secondaryweapon = entity.secondaryweapon;
    entity thread shared::dropaiweapon();
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0xd45ed760, Offset: 0xec0
// Size: 0x5a
function private notetrackattachknife(entity) {
    if (!is_true(entity._ai_melee_attachedknife)) {
        entity attach(#"wpn_t7_knife_combat_prop", "TAG_WEAPON_LEFT");
        entity._ai_melee_attachedknife = 1;
    }
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0xb4614c38, Offset: 0xf28
// Size: 0x56
function private notetrackdetachknife(entity) {
    if (is_true(entity._ai_melee_attachedknife)) {
        entity detach(#"wpn_t7_knife_combat_prop", "TAG_WEAPON_LEFT");
        entity._ai_melee_attachedknife = 0;
    }
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0x9c1fb1a4, Offset: 0xf88
// Size: 0x24
function private notetrackhideweapon(entity) {
    entity ai::gun_remove();
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0x8b7c495, Offset: 0xfb8
// Size: 0x24
function private notetrackshowweapon(entity) {
    entity ai::gun_recall();
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0x66cea9c1, Offset: 0xfe8
// Size: 0x24
function private notetrackhideai(entity) {
    entity hide();
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0xa06dbb1d, Offset: 0x1018
// Size: 0x24
function private notetrackshowai(entity) {
    entity show();
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0xef8503d5, Offset: 0x1048
// Size: 0x244
function private notetrackstartragdoll(entity) {
    if (isactor(entity) && entity isinscriptedstate()) {
        entity.overrideactordamage = undefined;
        entity.allowdeath = 1;
        entity.skipdeath = 1;
        entity kill(entity.origin, undefined, undefined, undefined, undefined, 1);
    }
    notetrackdropguninternal(entity);
    entity startragdoll(isdefined(entity.var_cc6f2563));
    if (isdefined(entity.var_cc6f2563)) {
        entity launchragdoll(entity.var_cc6f2563);
    }
    /#
        var_89953da0 = entity asmgetcurrentdeltaanimation();
        text = "tag_accessory_left";
        if (isdefined(var_89953da0) && var_89953da0 != "<unknown string>") {
            text += "<unknown string>" + function_9e72a96(var_89953da0);
            notetracks = getnotetracktimes(var_89953da0, "<unknown string>");
            if (notetracks.size == 1) {
                time = entity getanimtime(var_89953da0);
                text += "<unknown string>" + notetracks[0] + "<unknown string>" + time;
            } else {
                text += "<unknown string>" + notetracks.size;
            }
        }
        record3dtext(text, entity.origin + (0, 0, 4), (1, 0, 0), "<unknown string>", undefined, 0.4);
    #/
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x2 linked
// Checksum 0xd3c196dc, Offset: 0x1298
// Size: 0x94
function _delayedragdoll(entity) {
    wait(0.25);
    if (isdefined(entity) && !entity isragdoll()) {
        entity startragdoll();
        /#
            record3dtext("<unknown string>", entity.origin + (0, 0, 4), (1, 0, 0), "<unknown string>", undefined, 0.4);
        #/
    }
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x2 linked
// Checksum 0x55e4049c, Offset: 0x1338
// Size: 0x4c
function notetrackstartragdollnodeath(entity) {
    if (isdefined(entity._ai_melee_opponent)) {
        entity._ai_melee_opponent unlink();
    }
    entity thread _delayedragdoll(entity);
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0x75f57fdc, Offset: 0x1390
// Size: 0x13c
function private notetrackfirebullet(animationentity) {
    if (isactor(animationentity) && animationentity isinscriptedstate()) {
        if (animationentity.weapon != level.weaponnone) {
            animationentity notify(#"about_to_shoot");
            startpos = animationentity gettagorigin("tag_flash");
            angles = animationentity gettagangles("tag_flash");
            forward = anglestoforward(angles);
            endpos = startpos + vectorscale(forward, 100);
            magicbullet(animationentity.weapon, startpos, endpos, animationentity);
            animationentity notify(#"shoot");
            animationentity.bulletsinclip--;
        }
    }
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0x9913bb2c, Offset: 0x14d8
// Size: 0x2c
function private notetrackhelmetpop(animationentity) {
    destructserverutils::function_8475c53a(animationentity, "helmet");
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0x66637481, Offset: 0x1510
// Size: 0xac
function private notetrackdropgun(animationentity) {
    if (isdefined(animationentity.var_bd5efde2) && isdefined(animationentity.var_6622f75b)) {
        clip = function_ed287fd1(animationentity);
        if (isdefined(clip.model)) {
            function_a5af97c9(animationentity, clip, animationentity.var_bd5efde2);
            function_c83ca932(animationentity);
        }
    }
    notetrackdropguninternal(animationentity);
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0x3dc52fa5, Offset: 0x15c8
// Size: 0x24
function private notetrackdropshield(animationentity) {
    aiutility::dropriotshield(animationentity);
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0x4a66cbd4, Offset: 0x15f8
// Size: 0x12c
function private notetrackgrenadethrow(animationentity) {
    if (archetype_human_cover::function_9d8b22d8(animationentity, 1, 0)) {
        archetype_human_cover::function_ce446f2e(animationentity);
        return;
    }
    if (isdefined(animationentity.grenadethrowposition)) {
        arm_offset = undefined;
        if (isdefined(self.var_ce7a311e)) {
            arm_offset = [[ self.var_ce7a311e ]](animationentity, animationentity.grenadethrowposition);
        } else {
            arm_offset = archetype_human_cover::temp_get_arm_offset(animationentity, animationentity.grenadethrowposition);
        }
        throw_vel = animationentity canthrowgrenadepos(arm_offset, animationentity.grenadethrowposition);
        if (isdefined(throw_vel)) {
            archetype_human_cover::function_ce446f2e(animationentity);
        } else {
            archetype_human_cover::function_83c0b7e1(animationentity);
        }
        return;
    }
    archetype_human_cover::function_83c0b7e1(animationentity);
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0xd4a9bd69, Offset: 0x1730
// Size: 0x64
function private notetrackmeleeunsync(animationentity) {
    if (isdefined(animationentity) && isdefined(animationentity.enemy)) {
        if (is_true(animationentity.enemy._ai_melee_markeddead)) {
            animationentity unlink();
        }
    }
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0xf6da0115, Offset: 0x17a0
// Size: 0x4c
function private notetrackgibdisable(animationentity) {
    if (animationentity ai::has_behavior_attribute("can_gib")) {
        animationentity ai::set_behavior_attribute("can_gib", 0);
    }
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0x7edb7c3, Offset: 0x17f8
// Size: 0x76
function private function_ed287fd1(animationentity) {
    result = {};
    result.model = animationentity.weapon.clipmodel;
    result.var_98bd9c20 = "tag_clip";
    result.var_c63463cb = "tag_clip_empty";
    result.var_696fb09f = "tag_accessory_left";
    result.var_86c2ede3 = "tag_accessory_right";
    return result;
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 3, eflags: 0x6 linked
// Checksum 0xb7878003, Offset: 0x1878
// Size: 0x16e
function private function_dab83a5a(animationentity, clip, visible) {
    if (isdefined(clip.var_c63463cb) && animationentity haspart(clip.var_c63463cb)) {
        if (!is_true(visible)) {
            animationentity hidepart(clip.var_c63463cb);
            animationentity.var_91d2328b = clip.var_c63463cb;
        } else {
            animationentity showpart(clip.var_c63463cb);
            animationentity.var_91d2328b = undefined;
        }
    }
    if (isdefined(clip.var_98bd9c20) && animationentity haspart(clip.var_98bd9c20)) {
        if (!is_true(visible)) {
            animationentity hidepart(clip.var_98bd9c20);
            animationentity.var_af41987d = clip.var_98bd9c20;
            return;
        }
        animationentity showpart(clip.var_98bd9c20);
        animationentity.var_af41987d = undefined;
    }
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 3, eflags: 0x6 linked
// Checksum 0x5d49d80b, Offset: 0x19f0
// Size: 0xa2
function private function_73e97c7d(animationentity, clip, attachtag) {
    if (isdefined(clip.model) && isdefined(attachtag) && animationentity haspart(attachtag) && !isdefined(animationentity.var_6622f75b)) {
        animationentity attach(clip.model, attachtag);
        animationentity.var_6622f75b = clip.model;
        animationentity.var_bd5efde2 = attachtag;
    }
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0x799541b9, Offset: 0x1aa0
// Size: 0x6a
function private function_c83ca932(animationentity) {
    if (isdefined(animationentity.var_bd5efde2) && isdefined(animationentity.var_6622f75b)) {
        animationentity detach(animationentity.var_6622f75b, animationentity.var_bd5efde2);
        animationentity.var_6622f75b = undefined;
        animationentity.var_bd5efde2 = undefined;
    }
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 3, eflags: 0x6 linked
// Checksum 0x70a5098a, Offset: 0x1b18
// Size: 0x1dc
function private function_a5af97c9(animationentity, clip, tag) {
    origin = animationentity gettagorigin(tag);
    angles = animationentity gettagangles(tag);
    /#
        if (!isdefined(clip.model)) {
            weaponname = "<unknown string>";
            if (isdefined(animationentity.weapon.name)) {
                weaponname = function_9e72a96(animationentity.weapon.name);
            }
            assertmsg("<unknown string>" + weaponname + "<unknown string>" + animationentity.aitype);
        }
    #/
    var_fffb32e9 = util::spawn_model(clip.model, origin, angles);
    if (isdefined(var_fffb32e9)) {
        var_fffb32e9 notsolid();
        var_fffb32e9 physicslaunch(var_fffb32e9.origin - (0, 0, 3), (randomfloatrange(-0.5, 0.5), randomfloatrange(-0.5, 0.5), 0));
        var_fffb32e9 util::delay(10, undefined, &function_6bde1bde);
    }
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0xf4f9ea87, Offset: 0x1d00
// Size: 0x124
function private function_727744ff(animationentity) {
    clip = function_ed287fd1(animationentity);
    if (isdefined(animationentity.var_6622f75b) && isdefined(animationentity.var_bd5efde2) && isdefined(clip.model)) {
        function_a5af97c9(animationentity, clip, animationentity.var_bd5efde2);
        function_c83ca932(animationentity);
        function_dab83a5a(animationentity, clip, 0);
        return;
    }
    if (isdefined(clip.model) && isdefined(clip.var_98bd9c20) && animationentity haspart(clip.var_98bd9c20)) {
        function_a5af97c9(animationentity, clip, clip.var_98bd9c20);
        function_dab83a5a(animationentity, clip, 0);
    }
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0x5b43bd64, Offset: 0x1e30
// Size: 0x64
function private function_cd88e2dc(animationentity) {
    clip = function_ed287fd1(animationentity);
    function_dab83a5a(animationentity, clip, 0);
    function_73e97c7d(animationentity, clip, clip.var_696fb09f);
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0x7a7c2e2, Offset: 0x1ea0
// Size: 0x64
function private function_8982cca0(animationentity) {
    clip = function_ed287fd1(animationentity);
    function_dab83a5a(animationentity, clip, 0);
    function_73e97c7d(animationentity, clip, clip.var_86c2ede3);
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0x9ce00e91, Offset: 0x1f10
// Size: 0x64
function private function_3f4b4219(animationentity) {
    clip = function_ed287fd1(animationentity);
    function_73e97c7d(animationentity, clip, clip.var_696fb09f);
    function_dab83a5a(animationentity, clip, 0);
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0xbef5416b, Offset: 0x1f80
// Size: 0x64
function private function_15b71a09(animationentity) {
    clip = function_ed287fd1(animationentity);
    function_73e97c7d(animationentity, clip, clip.var_86c2ede3);
    function_dab83a5a(animationentity, clip, 0);
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 1, eflags: 0x2 linked
// Checksum 0x4dc73f8a, Offset: 0x1ff0
// Size: 0x5c
function function_9d41000(animationentity) {
    clip = function_ed287fd1(animationentity);
    function_c83ca932(animationentity);
    function_dab83a5a(animationentity, clip, 1);
}

// Namespace animationstatenetwork/archetype_notetracks
// Params 0, eflags: 0x6 linked
// Checksum 0x4785dc1e, Offset: 0x2058
// Size: 0x4c
function private function_6bde1bde() {
    self endon(#"death");
    self.origin += (0, 0, -1);
    waitframe(1);
    self delete();
}

