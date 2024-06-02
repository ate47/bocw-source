// Atian COD Tools GSC CW decompiler test
#using script_13da4e6b98ca81a1;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace killcam;

// Namespace killcam/killcam_shared
// Params 0, eflags: 0x5
// Checksum 0x3540b209, Offset: 0xb8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"killcam", &preinit, undefined, undefined, undefined);
}

// Namespace killcam/killcam_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x55891fcd, Offset: 0x100
// Size: 0xcc
function private preinit() {
    if (sessionmodeiszombiesgame()) {
        return;
    }
    callback::on_localclient_connect(&on_localclient_connect);
    callback::on_killcam_begin(&on_killcam_begin);
    callback::on_killcam_end(&on_killcam_end);
    callback::function_9fcd5f60(&function_9fcd5f60);
    callback::add_callback(#"hash_1184c2c2ed4c24b3", &function_c8bff20a);
}

// Namespace killcam/killcam_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x69f59d6e, Offset: 0x1d8
// Size: 0x50
function on_localclient_connect(localclientnum) {
    if (!isdefined(level.killcam)) {
        level.killcam = [];
    }
    if (!isdefined(level.killcam[localclientnum])) {
        level.killcam[localclientnum] = {};
    }
}

// Namespace killcam/killcam_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xb2864c2a, Offset: 0x230
// Size: 0x44
function function_c8bff20a(eventstruct) {
    if (eventstruct.gamestate === #"pregame") {
        function_bb763df8(eventstruct.localclientnum);
    }
}

// Namespace killcam/killcam_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x8f1a4772, Offset: 0x280
// Size: 0x114
function function_549a01b9(localclientnum) {
    if (codcaster::function_b8fe9b52(localclientnum)) {
        return;
    }
    if (function_56e2eaa8(self) && isdefined(level.killcam[localclientnum]) && game.state !== #"pregame") {
        level.killcam[localclientnum].var_57426003 = util::getnextobjid(localclientnum);
        objective_add(localclientnum, level.killcam[localclientnum].var_57426003, "active", #"hash_e8ccf98fcea7a36", (0, 0, -10000));
        objective_onentity(localclientnum, level.killcam[localclientnum].var_57426003, self, 0, 0, 0);
    }
}

// Namespace killcam/killcam_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x9e3b85d, Offset: 0x3a0
// Size: 0xa6
function function_bb763df8(localclientnum) {
    if (isdefined(level.killcam[localclientnum]) && isdefined(level.killcam[localclientnum].var_57426003)) {
        util::releaseobjid(localclientnum, level.killcam[localclientnum].var_57426003);
        objective_delete(localclientnum, level.killcam[localclientnum].var_57426003);
        level.killcam[localclientnum].var_57426003 = undefined;
    }
}

// Namespace killcam/killcam_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x296a63f, Offset: 0x450
// Size: 0xec
function on_killcam_begin(params) {
    player = function_27673a7(params.localclientnum);
    if (!isdefined(player)) {
        return;
    }
    number = player getentitynumber();
    test_player = getentbynum(params.localclientnum, number);
    if (test_player !== player) {
        return;
    }
    player function_2362a697(params.localclientnum, params.bundle);
    function_bb763df8(params.localclientnum);
    player function_549a01b9(params.localclientnum);
}

// Namespace killcam/killcam_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x4d54b96, Offset: 0x548
// Size: 0x6c
function on_killcam_end(params) {
    function_bb763df8(params.localclientnum);
    player = function_27673a7(params.localclientnum);
    if (!isdefined(player)) {
        return;
    }
    player function_dc3fa738(params.localclientnum);
}

// Namespace killcam/killcam_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x411fdde1, Offset: 0x5c0
// Size: 0xb4
function function_9fcd5f60(params) {
    player = function_27673a7(params.localclientnum);
    if (!isdefined(player)) {
        return;
    }
    player function_dc3fa738(params.localclientnum);
    player function_2362a697(params.localclientnum, params.bundle);
    function_bb763df8(params.localclientnum);
    player function_549a01b9(params.localclientnum);
}

// Namespace killcam/killcam_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x185007db, Offset: 0x680
// Size: 0x86
function function_2362a697(localclientnum, script_bundle) {
    if (isdefined(level.killcam[localclientnum]) && isdefined(script_bundle)) {
        var_c8b06dda = script_bundle.("posteffect");
        if (isdefined(var_c8b06dda)) {
            self codeplaypostfxbundle(var_c8b06dda);
            level.killcam[localclientnum].var_c6128b93 = var_c8b06dda;
        }
    }
}

// Namespace killcam/killcam_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xe810b98f, Offset: 0x710
// Size: 0x6e
function function_dc3fa738(localclientnum) {
    if (isdefined(level.killcam[localclientnum].var_c6128b93)) {
        self codestoppostfxbundle(level.killcam[localclientnum].var_c6128b93);
        level.killcam[localclientnum].var_c6128b93 = undefined;
    }
}

