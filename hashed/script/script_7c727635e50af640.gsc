// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.csc;
#using script_4e53735256f112ac;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace namespace_1fd59e39;

// Namespace namespace_1fd59e39/namespace_1fd59e39
// Params 0, eflags: 0x5
// Checksum 0x431fa130, Offset: 0x100
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_7fd3c8de50685459", &preinit, undefined, undefined, #"hash_13a43d760497b54d");
}

// Namespace namespace_1fd59e39/namespace_1fd59e39
// Params 0, eflags: 0x6 linked
// Checksum 0x5d0b5494, Offset: 0x150
// Size: 0x7c
function private preinit() {
    clientfield::register("allplayers", "" + #"hash_59400ab6cbfaec5d", 1, 1, "int", &function_3d1947be, 0, 0);
    callback::on_spawned(&on_spawned);
}

// Namespace namespace_1fd59e39/namespace_1fd59e39
// Params 7, eflags: 0x2 linked
// Checksum 0xc6db4a9c, Offset: 0x1d8
// Size: 0x3f4
function function_3d1947be(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(fieldname);
    if (!isdefined(level.var_119220bf)) {
        level.var_119220bf = [];
    }
    if (!isdefined(level.var_119220bf)) {
        level.var_119220bf = [fieldname];
    }
    var_47c85523 = self getentitynumber();
    if (!isdefined(level.var_119220bf[fieldname][var_47c85523])) {
        level.var_119220bf[fieldname][var_47c85523] = spawnstruct();
    }
    if (bwastimejump) {
        self zm_utility::function_88c3a609();
        if (zm_utility::function_f8796df3(fieldname)) {
            self playrenderoverridebundle(#"hash_6ec5fcc31672bb85");
            if (self postfx::function_556665f2(#"hash_5bcfd80691463dec")) {
                self postfx::stoppostfxbundle(#"hash_5bcfd80691463dec");
            }
            self postfx::playpostfxbundle(#"hash_5bcfd80691463dec");
            if (!isdefined(level.var_119220bf[fieldname][var_47c85523].var_6ebc510f) && self function_da43934d()) {
                level.var_119220bf[fieldname][var_47c85523].var_6ebc510f = playfxoncamera(fieldname, #"hash_7fcde6a254a7228", (0, 0, 0), (1, 0, 0), (0, 0, 1));
            }
            self thread function_222efb26(fieldname);
        } else {
            self playrenderoverridebundle(#"hash_733f9eb274c33ff8");
            if (!isdefined(level.var_119220bf[fieldname][var_47c85523].var_afd98b5)) {
                level.var_119220bf[fieldname][var_47c85523].var_afd98b5 = util::playfxontag(fieldname, #"hash_803ea6a2550a53a", self, "j_head");
            }
            if (!isdefined(level.var_119220bf[fieldname][var_47c85523].var_895c513a)) {
                level.var_119220bf[fieldname][var_47c85523].var_895c513a = util::playfxontag(fieldname, #"hash_ee42b8ead6d79d1", self, "j_spine4");
            }
        }
        if (!isdefined(level.var_119220bf[fieldname][var_47c85523].var_631ff0ad)) {
            self playsound(fieldname, #"hash_6f1e98cba03ff12a", self.origin + (0, 0, 75));
            level.var_119220bf[fieldname][var_47c85523].var_631ff0ad = self playloopsound(#"hash_493bcaf7ad0973e", undefined, (0, 0, 75));
        }
        return;
    }
    self function_c8e90b89(fieldname);
}

// Namespace namespace_1fd59e39/namespace_1fd59e39
// Params 1, eflags: 0x6 linked
// Checksum 0xcbefcb42, Offset: 0x5d8
// Size: 0x14e
function private function_222efb26(*localclientnum) {
    self notify("3087be7f1454ad8e");
    self endon("3087be7f1454ad8e");
    self endon(#"death", #"hash_69b6a912d9991761");
    while (true) {
        var_b1b72524 = self isplayerads();
        if (self function_d2503806(#"hash_6ec5fcc31672bb85") && var_b1b72524) {
            self stoprenderoverridebundle(#"hash_6ec5fcc31672bb85");
            self zm_utility::function_6c91d22b();
        } else if (!self function_d2503806(#"hash_6ec5fcc31672bb85") && !var_b1b72524) {
            self zm_utility::function_88c3a609();
            self playrenderoverridebundle(#"hash_6ec5fcc31672bb85");
        }
        waitframe(1);
    }
}

// Namespace namespace_1fd59e39/namespace_1fd59e39
// Params 1, eflags: 0x2 linked
// Checksum 0x2c065f8b, Offset: 0x730
// Size: 0x24
function on_spawned(localclientnum) {
    self function_c8e90b89(localclientnum);
}

// Namespace namespace_1fd59e39/namespace_1fd59e39
// Params 1, eflags: 0x2 linked
// Checksum 0xfd698728, Offset: 0x760
// Size: 0x336
function function_c8e90b89(localclientnum) {
    var_47c85523 = self getentitynumber();
    self notify(#"hash_69b6a912d9991761");
    if (self function_d2503806(#"hash_6ec5fcc31672bb85") && self function_21c0fa55()) {
        self stoprenderoverridebundle(#"hash_6ec5fcc31672bb85");
    }
    if (self function_d2503806(#"hash_733f9eb274c33ff8")) {
        self stoprenderoverridebundle(#"hash_733f9eb274c33ff8");
    }
    self zm_utility::function_6c91d22b();
    if (self postfx::function_556665f2(#"hash_5bcfd80691463dec") && self function_21c0fa55()) {
        self postfx::exitpostfxbundle(#"hash_5bcfd80691463dec");
    }
    if (isdefined(level.var_119220bf[localclientnum][var_47c85523].var_6ebc510f)) {
        stopfx(localclientnum, level.var_119220bf[localclientnum][var_47c85523].var_6ebc510f);
        level.var_119220bf[localclientnum][var_47c85523].var_6ebc510f = undefined;
    }
    if (isdefined(level.var_119220bf[localclientnum][var_47c85523].var_afd98b5)) {
        stopfx(localclientnum, level.var_119220bf[localclientnum][var_47c85523].var_afd98b5);
        level.var_119220bf[localclientnum][var_47c85523].var_afd98b5 = undefined;
    }
    if (isdefined(level.var_119220bf[localclientnum][var_47c85523].var_895c513a)) {
        stopfx(localclientnum, level.var_119220bf[localclientnum][var_47c85523].var_895c513a);
        level.var_119220bf[localclientnum][var_47c85523].var_895c513a = undefined;
    }
    if (isdefined(level.var_119220bf[localclientnum][var_47c85523].var_631ff0ad)) {
        self playsound(localclientnum, #"hash_5a6fa72d8d9f935f", self.origin + (0, 0, 75));
        self stoploopsound(level.var_119220bf[localclientnum][var_47c85523].var_631ff0ad);
        level.var_119220bf[localclientnum][var_47c85523].var_631ff0ad = undefined;
    }
}

