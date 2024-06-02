// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\serverfield_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_2ed67032;

// Namespace namespace_2ed67032/namespace_2ed67032
// Params 0, eflags: 0x5
// Checksum 0xc2c0d8a, Offset: 0x100
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_7aac5c09cf9461e3", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_2ed67032/namespace_2ed67032
// Params 0, eflags: 0x6 linked
// Checksum 0xf9ed58b, Offset: 0x148
// Size: 0x190
function private preinit() {
    clientfield::register_clientuimodel("hudItems.armorPlateCount", #"hash_6f4b11a0bee9b73d", #"hash_7c65108f5dcd93ef", 1, 4, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.armorPlateMaxCarry", #"hash_6f4b11a0bee9b73d", #"hash_6260c609342f556d", 1, 4, "int", undefined, 0, 0);
    level.var_a05cd64e = &function_a05cd64e;
    level.var_8ef8b9e8 = getweapon(#"armor_plate");
    callback::on_localclient_connect(&on_localclient_connect);
    callback::on_localplayer_spawned(&on_localplayer_spawned);
    serverfield::register("armor_plate_behavior", 1, 1, "int");
    /#
        if (getdvar(#"g_gametype") === "<unknown string>") {
            level.var_a2ef9587 = 1;
        }
    #/
}

// Namespace namespace_2ed67032/namespace_2ed67032
// Params 1, eflags: 0x6 linked
// Checksum 0x4faf000b, Offset: 0x2e0
// Size: 0x24
function private on_localclient_connect(localclientnum) {
    function_321bb79b(localclientnum);
}

// Namespace namespace_2ed67032/namespace_2ed67032
// Params 1, eflags: 0x6 linked
// Checksum 0x6698ebae, Offset: 0x310
// Size: 0x24
function private on_localplayer_spawned(localclientnum) {
    function_321bb79b(localclientnum);
}

// Namespace namespace_2ed67032/namespace_2ed67032
// Params 2, eflags: 0x6 linked
// Checksum 0x75cf94c0, Offset: 0x340
// Size: 0x102
function private function_321bb79b(localclientnum, value) {
    player = function_27673a7(localclientnum);
    if (!isdefined(player)) {
        return;
    }
    if (!isdefined(value)) {
        setting = gamepadusedlast(localclientnum) ? #"armor_plate_behavior_gpad" : #"armor_plate_behavior_kbm";
        value = isdefined(function_ab88dbd2(localclientnum, setting)) ? function_ab88dbd2(localclientnum, setting) : 0;
    }
    if (player.armor_plate_behavior !== value) {
        player serverfield::set("armor_plate_behavior", value);
        player.armor_plate_behavior = value;
    }
}

// Namespace namespace_2ed67032/namespace_2ed67032
// Params 1, eflags: 0x6 linked
// Checksum 0xe5b7bea8, Offset: 0x450
// Size: 0x7c
function private function_a05cd64e(localclientnum) {
    if (!self function_da43934d()) {
        return;
    }
    if (self function_86b9a404()) {
        function_321bb79b(localclientnum);
        switchtoweapon(localclientnum, level.var_8ef8b9e8);
        return 1;
    }
    return 0;
}

// Namespace namespace_2ed67032/namespace_2ed67032
// Params 0, eflags: 0x6 linked
// Checksum 0xb3cae920, Offset: 0x4d8
// Size: 0x326
function private function_86b9a404() {
    if (!isplayer(self) || self isplayerdead()) {
        /#
            function_ad64a47("<unknown string>");
        #/
        return false;
    }
    localclientnum = self getlocalclientnumber();
    if (!isdefined(localclientnum)) {
        /#
            function_ad64a47("<unknown string>");
        #/
        return false;
    }
    currentweapon = getcurrentweapon(localclientnum);
    if (currentweapon === level.var_8ef8b9e8 || currentweapon === level.weaponnone) {
        /#
            function_ad64a47("<unknown string>");
        #/
        return false;
    }
    if (isonturret(localclientnum) || self function_94ba7a2e() || self function_9a0edd92() || self isinfreefall() || self inlaststand() || self isskydiving()) {
        /#
            function_ad64a47("<unknown string>");
        #/
        return false;
    }
    if (isdefined(getplayervehicle(self))) {
        if (currentweapon === level.weaponnone || function_3feb54c8(localclientnum)) {
            /#
                function_ad64a47("<unknown string>");
            #/
            return false;
        }
    }
    var_6aae821e = hasweapon(localclientnum, level.var_8ef8b9e8);
    currentcount = self clientfield::get_player_uimodel("hudItems.armorPlateCount");
    var_8b8faf32 = self getplayerarmor();
    /#
        if (!var_6aae821e) {
            function_ad64a47("<unknown string>");
        }
        if (currentcount <= 0) {
            function_ad64a47("<unknown string>");
        }
        if (var_8b8faf32 >= 225) {
            function_ad64a47("<unknown string>");
        }
    #/
    return currentcount > 0 && var_8b8faf32 < 225 && var_6aae821e;
}

// Namespace namespace_2ed67032/event_647adea6
// Params 1, eflags: 0x20
// Checksum 0xf953e2c1, Offset: 0x808
// Size: 0x7c
function event_handler[event_647adea6] function_465c8646(eventstruct) {
    if (eventstruct.name === #"armor_plate_behavior_gpad" || eventstruct.name === #"armor_plate_behavior_kbm") {
        function_321bb79b(eventstruct.localclientnum, int(eventstruct.value));
    }
}

/#

    // Namespace namespace_2ed67032/namespace_2ed67032
    // Params 1, eflags: 0x0
    // Checksum 0x7230b3cc, Offset: 0x890
    // Size: 0x44
    function function_ad64a47(reasonstring) {
        if (level.var_a2ef9587 === 1) {
            println("<unknown string>" + reasonstring);
        }
    }

#/
