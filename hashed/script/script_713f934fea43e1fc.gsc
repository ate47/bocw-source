// Atian COD Tools GSC CW decompiler test
#using script_2d142c6d365a90a3;
#using script_7ebad89114ecedb1;
#using scripts\core_common\system_shared.csc;
#using script_3d0f36632dad12df;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace radiation;

// Namespace radiation/radiation
// Params 0, eflags: 0x5
// Checksum 0x286dc2ce, Offset: 0x110
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"radiation", &preinit, undefined, undefined, undefined);
}

// Namespace radiation/radiation
// Params 0, eflags: 0x6 linked
// Checksum 0x24b23578, Offset: 0x158
// Size: 0xd4
function private preinit() {
    if (!namespace_956bd4dd::function_ab99e60c()) {
        return;
    }
    clientfield::register("toplayer", "ftdb_inZone", 1, 1, "int", &function_c76638c, 0, 1);
    level.var_96929d7f = [];
    level.var_2200e558 = [];
    level.var_e7fd1b8f = [];
    level.var_d91da973 = 1;
    callback::on_localclient_connect(&function_f45ee99d);
    callback::on_end_game(&on_end_game);
}

// Namespace radiation/radiation
// Params 1, eflags: 0x2 linked
// Checksum 0x304b4674, Offset: 0x238
// Size: 0x5e
function function_f45ee99d(localclientnum) {
    level.var_96929d7f[localclientnum] = spawnstruct();
    level.var_96929d7f[localclientnum].var_32adf91d = 0;
    level.var_96929d7f[localclientnum].sickness = [];
}

// Namespace radiation/radiation
// Params 1, eflags: 0x2 linked
// Checksum 0xb754e2ed, Offset: 0x2a0
// Size: 0x24
function on_end_game(*localclientnum) {
    forceambientroom("");
}

// Namespace radiation/radiation
// Params 7, eflags: 0x6 linked
// Checksum 0xd3ab738d, Offset: 0x2d0
// Size: 0x290
function private function_c76638c(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    level.var_2200e558[fieldname] = bwastimejump;
    ambientroom = "";
    foreach (val in level.var_2200e558) {
        if (val > 0) {
            ambientroom = "wz_radiation";
            break;
        }
    }
    if (function_52a9d718() !== ambientroom) {
        forceambientroom(ambientroom);
    }
    if (bwastimejump) {
        while (isdefined(self) && !self hasdobj(fieldname)) {
            waitframe(1);
        }
        if (!isdefined(self)) {
            return;
        }
        if (squad_spawn::function_21b773d5(fieldname)) {
            return;
        }
        if (!isarray(level.var_e7fd1b8f[fieldname])) {
            level.var_e7fd1b8f[fieldname] = playtagfxset(fieldname, "tagfx9_camfx_gametype_dirtybomb_ash", self);
        }
        return;
    }
    if (isarray(level.var_e7fd1b8f[fieldname])) {
        foreach (fx in level.var_e7fd1b8f[fieldname]) {
            stopfx(fieldname, fx);
        }
        level.var_e7fd1b8f[fieldname] = undefined;
    }
}

