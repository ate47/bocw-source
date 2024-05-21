// Atian COD Tools GSC CW decompiler test
#using script_59f62971655f7103;
#using scripts\core_common\battlechatter.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace grapple;

// Namespace grapple/grapple
// Params 0, eflags: 0x5
// Checksum 0xcf6cc4ee, Offset: 0x168
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"grapple", &preinit, undefined, undefined, undefined);
}

// Namespace grapple/grapple
// Params 0, eflags: 0x4
// Checksum 0x9622ff1e, Offset: 0x1b0
// Size: 0x5c
function private preinit() {
    callback::on_localplayer_spawned(&player_on_spawned);
    level.var_c3e66138 = &function_bbd7fc60;
    level.var_1b2035de = getscriptbundle("grapple_custom_settings");
}

// Namespace grapple/grapple
// Params 1, eflags: 0x0
// Checksum 0x6881f227, Offset: 0x218
// Size: 0x94
function player_on_spawned(localclientnum) {
    player = self;
    if (sessionmodeismultiplayergame() || sessionmodeiswarzonegame()) {
        if (!player function_21c0fa55()) {
            return;
        }
        player thread function_664d0a50(localclientnum);
        player thread function_2297363d(localclientnum);
    }
}

// Namespace grapple/grapple
// Params 1, eflags: 0x0
// Checksum 0x1ae3b7b0, Offset: 0x2b8
// Size: 0x21c
function function_664d0a50(localclientnum) {
    self notify("23372589bea0150");
    self endon("23372589bea0150");
    player = self;
    var_e413b7c3 = undefined;
    invalidhandle = undefined;
    while (isdefined(player)) {
        var_6e521a44 = function_15f112c3(localclientnum);
        if (isdefined(var_6e521a44)) {
            if (var_6e521a44 && !isdefined(var_e413b7c3)) {
                if (isdefined(invalidhandle)) {
                    killfx(localclientnum, invalidhandle);
                    player notify("grapple_light_done_watch" + "invalid");
                    invalidhandle = undefined;
                }
                var_e413b7c3 = playviewmodelfx(localclientnum, #"hash_2a3978ae302f2faf", "tag_fx1", 0);
                thread grapple_light_watch_end(localclientnum, var_e413b7c3, "valid");
            } else if (!var_6e521a44 && !isdefined(invalidhandle)) {
                if (isdefined(var_e413b7c3)) {
                    killfx(localclientnum, var_e413b7c3);
                    player notify("grapple_light_done_watch" + "valid");
                    var_e413b7c3 = undefined;
                }
                invalidhandle = playviewmodelfx(localclientnum, #"hash_39ed4a0ecba806a2", "tag_fx1", 0);
                thread grapple_light_watch_end(localclientnum, invalidhandle, "invalid");
            }
        } else {
            if (isdefined(invalidhandle)) {
                killfx(localclientnum, invalidhandle);
                invalidhandle = undefined;
            }
            if (isdefined(var_e413b7c3)) {
                killfx(localclientnum, var_e413b7c3);
                var_e413b7c3 = undefined;
            }
        }
        waitframe(1);
    }
}

// Namespace grapple/grapple
// Params 3, eflags: 0x0
// Checksum 0xbadc4812, Offset: 0x4e0
// Size: 0xa4
function grapple_light_watch_end(localclientnum, handle, name) {
    player = self;
    player endon("grapple_light_done_watch" + name);
    player notify("grapple_light_watch_end" + name);
    player endon("grapple_light_watch_end" + name);
    player waittill(#"death");
    if (isdefined(handle)) {
        killfx(localclientnum, handle);
    }
}

// Namespace grapple/grapple
// Params 1, eflags: 0x0
// Checksum 0x1873de56, Offset: 0x590
// Size: 0x1d8
function function_2297363d(localclientnum) {
    self notify("78e2574a6ed24754");
    self endon("78e2574a6ed24754");
    player = self;
    doearthquake = 1;
    var_30f9f328 = 0;
    while (isdefined(player)) {
        if (function_fd33f2ef(localclientnum) == 3) {
            if (doearthquake) {
                player.grappleeq = earthquake(localclientnum, level.var_1b2035de.var_1598129, 10000, player.origin, 0, 0);
                doearthquake = 0;
            }
            player mapshaderconstant(localclientnum, 0, "scriptVector1", var_30f9f328, 0, 0, 0);
            var_30f9f328 += 0.05;
        } else if (function_fd33f2ef(localclientnum) == 0) {
            player mapshaderconstant(localclientnum, 0, "scriptVector1", var_30f9f328, 0, 0, 0);
            var_30f9f328 -= 0.05;
        } else {
            player mapshaderconstant(localclientnum, 0, "scriptVector1", 0, 0, 0, 0);
            if (isdefined(player.grappleeq)) {
                function_196e7c4b(localclientnum, player.grappleeq);
                player.grappleeq = undefined;
                doearthquake = 1;
            }
        }
        waitframe(1);
    }
}

// Namespace grapple/grapple
// Params 1, eflags: 0x0
// Checksum 0xde7d793f, Offset: 0x770
// Size: 0x84
function function_bbd7fc60(var_428d0be2) {
    if (!isdefined(var_428d0be2) || is_false(level.allowspecialistdialog)) {
        return;
    }
    dialogalias = var_428d0be2 battlechatter::get_player_dialog_alias("grappleGunWeaponUseFail");
    if (!isdefined(dialogalias)) {
        return;
    }
    var_428d0be2 playsound(0, dialogalias);
}

