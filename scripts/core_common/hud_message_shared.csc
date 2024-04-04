// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;

#namespace hud_message;

// Namespace hud_message/hud_message_shared
// Params 0, eflags: 0x5
// Checksum 0xca818da3, Offset: 0x88
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hud_message", &preinit, undefined, undefined, undefined);
}

// Namespace hud_message/hud_message_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0xd0
// Size: 0x4
function private preinit() {
    
}

// Namespace hud_message/hud_message_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x5bd4bdfd, Offset: 0xe0
// Size: 0x114
function function_65299180(localclientnum, var_e69b15f0, arglist) {
    scriptnotifymodel = function_1df4c3b0(localclientnum, #"script_notify");
    for (i = 0; i < arglist.size; i++) {
        setuimodelvalue(getuimodel(scriptnotifymodel, #"arg" + i + 1), arglist[i]);
    }
    setuimodelvalue(getuimodel(scriptnotifymodel, #"numargs"), arglist.size);
    if (!setuimodelvalue(scriptnotifymodel, var_e69b15f0)) {
        forcenotifyuimodel(scriptnotifymodel);
    }
}

// Namespace hud_message/hud_message_shared
// Params 3, eflags: 0x0
// Checksum 0x6997ab05, Offset: 0x200
// Size: 0xac
function setlowermessage(localclientnum, text, time) {
    if (isdefined(time) && time > 0) {
        function_65299180(localclientnum, #"hash_424b9c54c8bf7a82", [text, int(time)]);
        return;
    }
    function_65299180(localclientnum, #"hash_424b9c54c8bf7a82", [text]);
}

// Namespace hud_message/hud_message_shared
// Params 1, eflags: 0x0
// Checksum 0x39f04810, Offset: 0x2b8
// Size: 0x2c
function clearlowermessage(localclientnum) {
    function_65299180(localclientnum, #"hash_6b9a1c6794314120", []);
}

