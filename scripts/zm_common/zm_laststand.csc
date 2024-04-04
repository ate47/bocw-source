// Atian COD Tools GSC CW decompiler test
#using script_6409d04aa560106c;
#using script_3b8f43c68572f06;
#using script_70ab01a7690ea256;
#using scripts\zm_common\util.csc;
#using scripts\zm_common\load.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\lui_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace zm_laststand;

// Namespace zm_laststand/zm_laststand
// Params 0, eflags: 0x5
// Checksum 0x1658bb0b, Offset: 0x2c0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_laststand", &preinit, undefined, undefined, undefined);
}

// Namespace zm_laststand/zm_laststand
// Params 0, eflags: 0x6 linked
// Checksum 0xb6210b28, Offset: 0x308
// Size: 0x2a4
function private preinit() {
    level.var_629da31e = function_e49dbc72();
    callback::on_localplayer_spawned(&function_772f66bd);
    revive_hud::register();
    level.laststands = [];
    level.var_ff482f76 = zm_laststand_client::register();
    level.var_16af4504 = [];
    clientfield::register_clientuimodel("ZMInventoryPersonal.self_revive_count", #"hash_1d3ddede734994d8", #"self_revive_count", 1, 2, "int", undefined, 0, 0);
    clientfield::register("allplayers", "zm_last_stand_postfx", 1, 1, "int", &function_50d4c00a, 0, 1);
    for (i = 0; i < 5; i++) {
        level.laststands[i] = spawnstruct();
        level.laststands[i].laststand_update_clientfields = "laststand_update" + i;
        clientfield::register("world", level.laststands[i].laststand_update_clientfields, 1, 5, "float", &update_bleedout_timer, 0, 0);
        clientfield::register_clientuimodel("WorldSpaceIndicators.bleedOutModel" + i + ".hide", #"hash_56cb8e9a65d9f9ad", [#"bleedoutmodel" + (isdefined(i) ? "" + i : ""), #"hide"], 1, 1, "int", undefined, 0, 0);
    }
    callback::on_localplayer_spawned(&function_e1479c);
    level thread wait_and_set_revive_shader_constant();
}

// Namespace zm_laststand/zm_laststand
// Params 1, eflags: 0x2 linked
// Checksum 0x36916315, Offset: 0x5b8
// Size: 0x16a
function function_772f66bd(localclientnum) {
    localplayer = function_5c10bd79(localclientnum);
    zmdifficultysettings = getscriptbundle("zm_base_difficulty");
    switch (level.gamedifficulty) {
    case 0:
        str_suffix = "_E";
        break;
    case 1:
    default:
        str_suffix = "_N";
        break;
    case 2:
        str_suffix = "_H";
        break;
    case 3:
        str_suffix = "_I";
        break;
    }
    n_base = zmdifficultysettings.("plyBaseHealth" + str_suffix);
    n_target = int(max(n_base, 1));
    localplayer.var_ee9b8af0 = n_target;
}

// Namespace zm_laststand/zm_laststand
// Params 0, eflags: 0x2 linked
// Checksum 0x63a4b49c, Offset: 0x730
// Size: 0x22
function function_e49dbc72() {
    return getdvarfloat(#"player_laststandbleedouttime", 0);
}

// Namespace zm_laststand/zm_laststand
// Params 0, eflags: 0x2 linked
// Checksum 0xc9c11229, Offset: 0x760
// Size: 0xd6
function wait_and_set_revive_shader_constant() {
    while (true) {
        waitresult = level waittillmatch({#notetrack:"revive_shader_constant"}, #"notetrack");
        player = function_5c10bd79(waitresult.localclientnum);
        player mapshaderconstant(waitresult.localclientnum, 0, "scriptVector2", 0, 1, 0, getservertime(waitresult.localclientnum) / 1000);
        waitframe(1);
    }
}

// Namespace zm_laststand/zm_laststand
// Params 7, eflags: 0x2 linked
// Checksum 0x79970b4a, Offset: 0x840
// Size: 0xfc
function update_bleedout_timer(localclientnum, *oldval, newval, *bnewent, *binitialsnap, fieldname, *bwastimejump) {
    substr = getsubstr(bwastimejump, 16);
    playernum = int(substr);
    model = getuimodel(getuimodel(function_1df4c3b0(binitialsnap, #"hash_56cb8e9a65d9f9ad"), "bleedOutModel" + playernum), "bleedOutPercent");
    if (isdefined(model)) {
        setuimodelvalue(model, fieldname);
    }
}

// Namespace zm_laststand/zm_laststand
// Params 7, eflags: 0x2 linked
// Checksum 0xb7a84d4d, Offset: 0x948
// Size: 0x1b4
function function_50d4c00a(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(level.var_629da31e)) {
        return;
    }
    if (bwastimejump) {
        var_32c41440 = self getentitynumber();
        if (!isdefined(level.var_16af4504[var_32c41440])) {
            level.var_16af4504[var_32c41440] = getservertime(fieldname);
        }
        if (self == function_5c10bd79(fieldname)) {
            var_d2c301e0 = level.var_16af4504[var_32c41440];
            self thread function_be34e28f(fieldname, var_d2c301e0);
        }
        return;
    }
    if (self == function_5c10bd79(fieldname)) {
        self notify(#"hash_2f1dc2ea83ba9e2");
        self postfx::exitpostfxbundle("pstfx_zm_last_stand");
        function_ed62c9c2("zmb_laststand_riser", 0.25);
        if (isdefined(self.var_e781ace2)) {
            self stoploopsound(self.var_e781ace2);
            self.var_e781ace2 = undefined;
        }
    }
    level.var_16af4504[self getentitynumber()] = undefined;
}

// Namespace zm_laststand/zm_laststand
// Params 2, eflags: 0x2 linked
// Checksum 0x451aa5c3, Offset: 0xb08
// Size: 0x35e
function function_be34e28f(localclientnum, var_d2c301e0) {
    self endoncallback(&function_ac994c83, #"death", #"hash_2f1dc2ea83ba9e2");
    self postfx::playpostfxbundle("pstfx_zm_last_stand");
    var_6c2f58e2 = var_d2c301e0 + int(level.var_629da31e * 1000);
    if (util::function_cd6c95db(localclientnum) || namespace_a6aea2c6::is_active(#"silent_film")) {
        self postfx::function_c8b5f318("pstfx_zm_last_stand", "Desaturation", 1);
    } else {
        self postfx::function_c8b5f318("pstfx_zm_last_stand", "Enable Tint", 1);
        self postfx::function_c8b5f318("pstfx_zm_last_stand", "Tint Color R", 0.9);
        self postfx::function_c8b5f318("pstfx_zm_last_stand", "Tint Color G", 0.2);
    }
    if (!isdefined(self.var_e781ace2)) {
        self.var_e781ace2 = self playloopsound("zmb_laststand_player_whisper_riser");
        setsoundvolume(self.var_e781ace2, 0);
    }
    while (true) {
        n_current_time = getservertime(localclientnum);
        if (n_current_time >= var_6c2f58e2) {
            self postfx::function_c8b5f318("pstfx_zm_last_stand", "Opacity", 0.25);
            return;
        }
        n_opacity = mapfloat(var_d2c301e0, var_6c2f58e2, 0, 0.25, n_current_time);
        self postfx::function_c8b5f318("pstfx_zm_last_stand", "Opacity", n_opacity);
        var_22cd2467 = mapfloat(var_d2c301e0, var_6c2f58e2, 0, 1, n_current_time);
        var_f384f371 = mapfloat(var_d2c301e0, var_6c2f58e2, 0, 0.6, n_current_time);
        if (!is_true(level.var_21ece77b)) {
            function_5ea2c6e3("zmb_laststand_riser", 0.05, var_f384f371);
        }
        setsoundvolume(self.var_e781ace2, var_22cd2467);
        waitframe(1);
    }
}

// Namespace zm_laststand/zm_laststand
// Params 1, eflags: 0x2 linked
// Checksum 0xc04f2d54, Offset: 0xe70
// Size: 0x96
function function_ac994c83(var_c34665fc) {
    if (var_c34665fc == "death" && isdefined(self)) {
        self postfx::exitpostfxbundle("pstfx_zm_last_stand");
        function_ed62c9c2("zmb_laststand_riser", 0.25);
        if (isdefined(self.var_e781ace2)) {
            self stoploopsound(self.var_e781ace2);
            self.var_e781ace2 = undefined;
        }
    }
}

// Namespace zm_laststand/zm_laststand
// Params 1, eflags: 0x2 linked
// Checksum 0x72d7ea78, Offset: 0xf10
// Size: 0xec
function function_e1479c(localclientnum) {
    if (!isdefined(level.var_4678ce7c)) {
        level.var_4678ce7c = [];
    }
    if (function_65b9eb0f(localclientnum) && !is_true(level.var_4678ce7c[localclientnum])) {
        level lui::screen_fade_out(localclientnum, 0, (1, 1, 1));
        level thread lui::screen_fade_in(localclientnum, 0.75, (1, 1, 1));
        level.var_4678ce7c[localclientnum] = 1;
        return;
    }
    if (!function_65b9eb0f(localclientnum)) {
        level.var_4678ce7c[localclientnum] = undefined;
    }
}

