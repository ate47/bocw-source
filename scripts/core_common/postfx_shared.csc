// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace postfx;

// Namespace postfx/postfx_shared
// Params 0, eflags: 0x5
// Checksum 0x48d520ea, Offset: 0xb0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"postfx_bundle", &preinit, undefined, undefined, undefined);
}

// Namespace postfx/postfx_shared
// Params 0, eflags: 0x6 linked
// Checksum 0xa0bd99a6, Offset: 0xf8
// Size: 0x24
function private preinit() {
    callback::on_localplayer_spawned(&localplayer_postfx_bundle_init);
}

// Namespace postfx/postfx_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x7b685d0d, Offset: 0x128
// Size: 0x7c
function localplayer_postfx_bundle_init(*localclientnum) {
    if (isdefined(self.postfxbundelsinited)) {
        return;
    }
    self.postfxbundelsinited = 1;
    self.playingpostfxbundle = "";
    self.forcestoppostfxbundle = 0;
    self.exitpostfxbundle = 0;
    /#
        self thread postfxbundledebuglisten();
        self thread function_764eb053();
    #/
}

/#

    // Namespace postfx/postfx_shared
    // Params 0, eflags: 0x0
    // Checksum 0x9efffb61, Offset: 0x1b0
    // Size: 0x210
    function postfxbundledebuglisten() {
        self endon(#"death");
        setdvar(#"scr_play_postfx_bundle", "<unknown string>");
        setdvar(#"scr_stop_postfx_bundle", "<unknown string>");
        setdvar(#"scr_exit_postfx_bundle", "<unknown string>");
        while (true) {
            playbundlename = getdvarstring(#"scr_play_postfx_bundle");
            if (playbundlename != "<unknown string>") {
                self thread playpostfxbundle(playbundlename);
                setdvar(#"scr_play_postfx_bundle", "<unknown string>");
            }
            stopbundlename = getdvarstring(#"scr_stop_postfx_bundle");
            if (stopbundlename != "<unknown string>") {
                self thread stoppostfxbundle(stopbundlename);
                setdvar(#"scr_stop_postfx_bundle", "<unknown string>");
            }
            var_38ce085 = getdvarstring(#"scr_exit_postfx_bundle");
            if (var_38ce085 != "<unknown string>") {
                self thread exitpostfxbundle(var_38ce085);
                setdvar(#"scr_exit_postfx_bundle", "<unknown string>");
            }
            wait(0.5);
        }
    }

    // Namespace postfx/postfx_shared
    // Params 0, eflags: 0x0
    // Checksum 0x64be4111, Offset: 0x3c8
    // Size: 0x2ae
    function function_764eb053() {
        self endon(#"death");
        var_986c8888 = 0;
        var_4828f60f = 0;
        var_e0f0fb1d = "<unknown string>";
        ent = undefined;
        while (true) {
            showmodel = getdvarint(#"hash_56d8c90edb7a97b6", 0);
            showviewmodel = getdvarint(#"hash_65c459b02d95c9c9", 0);
            newspawn = 0;
            if (showmodel != var_986c8888) {
                if (showmodel > 0) {
                    if (!isdefined(ent)) {
                        newspawn = 1;
                        ent = util::spawn_model(self.localclientnum, "<unknown string>");
                    }
                } else if (var_986c8888 > 0) {
                    if (isdefined(ent)) {
                        ent delete();
                        ent = undefined;
                    }
                }
                var_986c8888 = showmodel;
            }
            if ((newspawn || showmodel == 1) && isdefined(ent)) {
                ent.origin = self.origin + (0, 0, 70) + anglestoforward(self.angles) * 250;
            }
            bundlename = getdvarstring(#"cg_playrenderoverridebundle", "<unknown string>");
            if (bundlename != var_e0f0fb1d && isdefined(ent)) {
                ent stoprenderoverridebundle(var_e0f0fb1d);
                if (bundlename != "<unknown string>") {
                    ent playrenderoverridebundle(bundlename);
                }
            }
            if (showviewmodel && (showviewmodel != var_4828f60f || bundlename != var_e0f0fb1d)) {
                self stoprenderoverridebundle(var_e0f0fb1d);
                if (bundlename != "<unknown string>") {
                    self playrenderoverridebundle(bundlename);
                }
            }
            var_e0f0fb1d = bundlename;
            var_4828f60f = showviewmodel;
            waitframe(1);
        }
    }

#/

// Namespace postfx/postfx_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x3d5a7cff, Offset: 0x680
// Size: 0x3c
function playpostfxbundle(playbundlename) {
    self thread watchentityshutdown(playbundlename);
    self codeplaypostfxbundle(playbundlename);
}

// Namespace postfx/postfx_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xd6122d2f, Offset: 0x6c8
// Size: 0x8c
function watchentityshutdown(playbundlename) {
    var_17b7891d = "6433c543b3eba711" + playbundlename;
    self notify(var_17b7891d);
    self endon(var_17b7891d);
    localclientnum = self.localclientnum;
    self waittill(#"death", #"finished_playing_postfx_bundle");
    codestoppostfxbundlelocal(localclientnum, playbundlename);
}

// Namespace postfx/postfx_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x6aad65cc, Offset: 0x760
// Size: 0x24
function stoppostfxbundle(bundlename) {
    self codestoppostfxbundle(bundlename);
}

// Namespace postfx/postfx_shared
// Params 3, eflags: 0x2 linked
// Checksum 0xddba3009, Offset: 0x790
// Size: 0x34
function function_c8b5f318(bundlename, constname, constvalue) {
    self function_116b95e5(bundlename, constname, constvalue);
}

// Namespace postfx/postfx_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x479a7254, Offset: 0x7d0
// Size: 0x22
function function_556665f2(bundlename) {
    return self function_d2cb869e(bundlename);
}

// Namespace postfx/postfx_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xc261581f, Offset: 0x800
// Size: 0x24
function exitpostfxbundle(bundlename) {
    self function_3f145588(bundlename);
}

// Namespace postfx/postfx_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x5202c136, Offset: 0x830
// Size: 0x124
function setfrontendstreamingoverlay(localclientnum, system, enabled) {
    if (!isdefined(self.overlayclients)) {
        self.overlayclients = [];
    }
    if (!isdefined(self.overlayclients[localclientnum])) {
        self.overlayclients[localclientnum] = [];
    }
    self.overlayclients[localclientnum][system] = enabled;
    foreach (en in self.overlayclients[localclientnum]) {
        if (en) {
            enablefrontendstreamingoverlay(localclientnum, 1);
            return;
        }
    }
    enablefrontendstreamingoverlay(localclientnum, 0);
}

// Namespace postfx/postfx_shared
// Params 3, eflags: 0x0
// Checksum 0xe8f560fa, Offset: 0x960
// Size: 0x9c
function toggle_postfx(*localclientnum, enabled, var_c8b06dda) {
    assert(isdefined(var_c8b06dda));
    if (!enabled) {
        if (self function_556665f2(var_c8b06dda)) {
            self stoppostfxbundle(var_c8b06dda);
        }
        return;
    }
    if (!self function_556665f2(var_c8b06dda)) {
        self playpostfxbundle(var_c8b06dda);
    }
}

