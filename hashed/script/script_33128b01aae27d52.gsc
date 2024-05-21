// Atian COD Tools GSC CW decompiler test
#using script_67049b48b589d81;
#using scripts\core_common\lui_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\math_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace namespace_b7d49cfd;

// Namespace namespace_b7d49cfd/namespace_b7d49cfd
// Params 0, eflags: 0x2 linked
// Checksum 0xe8519a53, Offset: 0x130
// Size: 0x284
function init() {
    if (!isdefined(level.doa.var_258d537d)) {
        level.doa.var_258d537d = spawnstruct();
        level.doa.var_258d537d.var_a6b0949b = [];
        for (var_36f009bd = 0; true; var_36f009bd++) {
            shot = struct::get("podium_camera_shot" + var_36f009bd);
            if (!isdefined(shot)) {
                break;
            }
            args = strtok(shot.script_parameters, ";");
            assert(args.size >= 4);
            shot.var_dd65e804 = float(args[0]);
            shot.var_411d90d0 = float(args[1]);
            shot.var_3e552258 = float(args[2]);
            shot.var_1c75c5b0 = int(args[3]);
            shot.targetstruct = struct::get(shot.target, "targetname");
            if (!isdefined(level.doa.var_258d537d.var_a6b0949b)) {
                level.doa.var_258d537d.var_a6b0949b = [];
            } else if (!isarray(level.doa.var_258d537d.var_a6b0949b)) {
                level.doa.var_258d537d.var_a6b0949b = array(level.doa.var_258d537d.var_a6b0949b);
            }
            level.doa.var_258d537d.var_a6b0949b[level.doa.var_258d537d.var_a6b0949b.size] = shot;
        }
    }
}

// Namespace namespace_b7d49cfd/namespace_b7d49cfd
// Params 1, eflags: 0x2 linked
// Checksum 0x9ce003ad, Offset: 0x3c0
// Size: 0xb4
function function_650e4410(entity) {
    self notify("71f4ed6e2d9065b8");
    self endon("71f4ed6e2d9065b8");
    entity endon(#"death");
    level endon(#"hash_713b04a42601792c", #"terminatecutscene");
    while (true) {
        level.doa.var_b73cc08.origin = entity.origin;
        level.doa.var_b73cc08.angles = entity.angles;
        waitframe(1);
    }
}

// Namespace namespace_b7d49cfd/namespace_b7d49cfd
// Params 1, eflags: 0x2 linked
// Checksum 0x362539b0, Offset: 0x480
// Size: 0x354
function function_8d4cb2b(localclientnum) {
    level endon(#"terminatecutscene");
    self endon(#"disconnect");
    if (level.doa.var_258d537d.var_a6b0949b.size) {
        var_3dbe949b = namespace_ec06fe4a::spawnmodel(localclientnum, self.origin, "tag_origin", self.angles, "outro dolly cam");
        var_3dbe949b thread namespace_ec06fe4a::function_d55f042c(level, "terminateCutScene");
        if (localclientnum == 0) {
            level thread function_650e4410(var_3dbe949b);
        }
        self.doa.cameramode = 7;
        foreach (shot in level.doa.var_258d537d.var_a6b0949b) {
            var_3dbe949b.origin = shot.origin;
            var_3dbe949b.angles = shot.angles;
            if (isdefined(level.localclients[localclientnum].full_screen_black)) {
                s_menu = level.localclients[localclientnum].full_screen_black;
                if ([[ s_menu.lui_menu ]]->is_open(localclientnum)) {
                    lui::screen_fade_in(localclientnum, 0.5);
                }
            }
            if (shot.var_dd65e804 > 0) {
                wait(shot.var_dd65e804);
            }
            traveltime = shot.var_411d90d0;
            if (shot.var_3e552258 == 0) {
                traveltime -= 0.5;
            }
            if (isdefined(shot.targetstruct)) {
                var_3dbe949b moveto(shot.targetstruct.origin, shot.var_411d90d0);
                var_3dbe949b rotateto(shot.targetstruct.angles, shot.var_411d90d0);
            }
            wait(traveltime);
            if (shot.var_3e552258 > 0) {
                wait(shot.var_3e552258);
            }
            if (shot.var_1c75c5b0) {
                lui::screen_fade_out(localclientnum, 0.5);
            }
        }
        level notify(#"hash_713b04a42601792c");
        if (isdefined(var_3dbe949b)) {
            var_3dbe949b delete();
        }
        lui::screen_fade_in(localclientnum, 1);
    }
}

