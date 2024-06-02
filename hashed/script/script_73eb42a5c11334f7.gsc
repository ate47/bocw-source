// Atian COD Tools GSC CW decompiler test
#using script_680dddbda86931fa;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\ping_shared.csc;
#using scripts\core_common\item_world.csc;
#using script_13da4e6b98ca81a1;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\battlechatter.csc;
#using scripts\core_common\array_shared.csc;
#using scripts\core_common\ai_shared.csc;

#namespace ping;

// Namespace ping/ping
// Params 0, eflags: 0x5
// Checksum 0x76c4abb0, Offset: 0x358
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"ping", &preinit, &init, undefined, undefined);
}

// Namespace ping/ping
// Params 0, eflags: 0x6 linked
// Checksum 0x4807b87c, Offset: 0x3b0
// Size: 0x5da
function private preinit() {
    setdvar(#"hash_1d7aa0dce875f0eb", 1);
    callback::function_94eab4fb(&function_94eab4fb);
    callback::function_78827e7f(&function_78827e7f);
    callback::function_56df655f(&function_2dd58893);
    callback::function_f8062bf(&function_2dd58893);
    callback::function_ed112c52(&function_2dd58893);
    callback::on_killcam_begin(&function_2dd58893);
    callback::on_killcam_end(&function_2dd58893);
    level.ping = spawnstruct();
    level.ping.types = [{#sound:#"hash_1a0de47f7204a9d6", #objective:#"teammate_waypoint"}, {#sound:#"hash_1a0de47f7204a9d6", #objective:#"enemy_waypoint"}, {#sound:#"hash_3cd7abefb7adef5b", #objective:#"enemy_waypoint"}, {#sound:#"hash_3cd7abefb7adef5b", #objective:#"hash_6ee59c4b375ac2ae"}, {#sound:#"hash_1a0de47f7204a9d6", #objective:#"hash_614502911ac7d29"}, {#sound:#"hash_1a0de47f7204a9d6"}, {#sound:#"hash_3cd7abefb7adef5b", #objective:#"hash_4aacdcc1899f9c59"}, {#sound:#"hash_3cd7abefb7adef5b", #objective:#"hash_4aacdcc1899f9c59"}, {#sound:#"hash_1a0de47f7204a9d6", #objective:#"hash_19b425c37cb9f718"}, {#sound:#"hash_1a0de47f7204a9d6", #objective:#"hash_19b425c37cb9f718"}, {#sound:#"hash_3cd7abefb7adef5b", #objective:#"hash_6618dbd21e3a5068"}, {#sound:#"hash_3cd7abefb7adef5b", #objective:#"hash_4aacdcc1899f9c59"}, {#sound:#"hash_1a0de47f7204a9d6", #objective:#"teammate_waypoint"}];
    assert(level.ping.types.size == 13);
    level.ping.var_19e1f40d = isdefined(getgametypesetting(#"hash_196e997a082443a9")) ? getgametypesetting(#"hash_196e997a082443a9") : 0;
    level.ping.var_1220e585 = isdefined(getgametypesetting(#"hash_3ccd8e1bf3864fa1")) ? getgametypesetting(#"hash_3ccd8e1bf3864fa1") : 0;
    level.ping.var_ea98b5ff = getgametypesetting(#"hash_5462586bdce0346e");
}

// Namespace ping/ping
// Params 0, eflags: 0x6 linked
// Checksum 0x2fa3857e, Offset: 0x998
// Size: 0x154
function private init() {
    level.var_907386c0 = [];
    level.ping.var_bef12f79 = [];
    for (i = 0; i < getmaxlocalclients(); i++) {
        level.ping.var_bef12f79[i] = spawnstruct();
        level.ping.var_bef12f79[i].lastping = spawnstruct();
        level.ping.var_bef12f79[i].count = 0;
        level.var_907386c0[i] = [];
        for (j = 0; j < getdvarint(#"com_maxclients", 0); j++) {
            level.var_907386c0[i][j] = [];
        }
    }
    level.var_abaea458 = [];
    level thread function_c81ef836();
}

// Namespace ping/ping
// Params 1, eflags: 0x6 linked
// Checksum 0xd25cfa1d, Offset: 0xaf8
// Size: 0x34
function private function_2dd58893(params) {
    if (isdefined(params.localclientnum)) {
        clear_all_pings(params.localclientnum);
    }
}

// Namespace ping/ping
// Params 0, eflags: 0x6 linked
// Checksum 0xf519c26, Offset: 0xb38
// Size: 0x388
function private function_c81ef836() {
    level endon(#"disconnect");
    while (true) {
        waitresult = level waittill(#"minimap_waypoint", #"clear_all_pings");
        local_client_num = waitresult.localclientnum;
        if (waitresult._notify == "minimap_waypoint") {
            if (is_true(waitresult.remove)) {
                function_40c4bce(local_client_num, 0, 1);
            } else {
                x = waitresult.xcoord;
                y = waitresult.ycoord;
                var_bfd46ccc = 30000;
                var_cfa5f67b = -2147483647;
                trace = bullettrace((x, y, var_bfd46ccc), (x, y, var_cfa5f67b), 0, self, 1);
                position = trace[#"position"];
                if (trace[#"fraction"] == 1) {
                    position = (position[0], position[1], 0);
                }
                if (true) {
                    params = {#eventtype:0, #remove:0, #uniqueid:-1, #var_a0bf56ac:waitresult.clientnum, #var_89c7e02:function_27673a7(local_client_num), #location:position, #localclientnum:local_client_num, #var_dcc5aade:1};
                    function_78827e7f(params);
                }
                function_40c4bce(local_client_num, 0, 0, position);
            }
            continue;
        }
        if (waitresult._notify == "clear_all_pings") {
            if (true) {
                player_ent = function_5c10bd79(local_client_num);
                params = {#eventtype:15, #remove:1, #var_a0bf56ac:waitresult.clientnum, #var_89c7e02:function_5c10bd79(local_client_num), #localclientnum:local_client_num, #var_dcc5aade:1};
                function_78827e7f(params);
            }
            function_40c4bce(local_client_num, 15, 1);
        }
    }
}

// Namespace ping/ping
// Params 2, eflags: 0x6 linked
// Checksum 0x28a68dba, Offset: 0xec8
// Size: 0xe6
function private function_4d08e9ce(doubletap, pingdata) {
    if (!is_true(doubletap)) {
        return 0;
    }
    if (!isdefined(pingdata.lastping.count)) {
        return 0;
    }
    if (pingdata.lastping.count != pingdata.count - 1) {
        return 0;
    }
    var_8ff6cd30 = 1;
    switch (pingdata.lastping.eventtype) {
    case 0:
    case 5:
        var_8ff6cd30 = 0;
        break;
    default:
        break;
    }
    return var_8ff6cd30;
}

// Namespace ping/ping
// Params 1, eflags: 0x6 linked
// Checksum 0xea68fb51, Offset: 0xfb8
// Size: 0xaf4
function private function_94eab4fb(params) {
    local_client_num = params.localclientnum;
    level notify("newPing" + local_client_num);
    doubletap = params.doubletap;
    event_type = 0;
    param = undefined;
    remove = 0;
    danger = params.var_42ad7eb4 || params.doubletap;
    pingdata = level.ping.var_bef12f79[local_client_num];
    assert(isdefined(pingdata));
    pingdata.count++;
    if (isdefined(level.var_38c7030b)) {
        shoulddisable = [[ level.var_38c7030b ]](local_client_num);
        if (shoulddisable) {
            return;
        }
    }
    var_656750cb = params.var_44a5df === params.var_89c7e02;
    if (!var_656750cb && function_4d08e9ce(doubletap, pingdata)) {
        return;
    }
    var_b5a47119 = 0;
    if (isdefined(params.var_44a5df)) {
        if (isdefined(level.var_a0b1f787[params.var_44a5df.model]) && !isdefined(params.var_44a5df.var_fc558e74)) {
            params.var_44a5df.var_fc558e74 = level.var_a0b1f787[params.var_44a5df.model];
        } else if (!isdefined(params.var_44a5df.var_fc558e74)) {
            zbarrier = params.var_44a5df function_ead238b5();
            if (isdefined(zbarrier)) {
                params.var_44a5df = zbarrier;
            } else {
                /#
                    if (!isdefined(params.var_44a5df.var_fc558e74) && sessionmodeiszombiesgame()) {
                        println("<unknown string>" + params.var_44a5df.model);
                    }
                #/
            }
        }
        if (isdefined(params.var_44a5df.var_fc558e74)) {
            event_type = 8;
            handled = 1;
            var_b5a47119 = is_true(level.var_d459a1cf[params.var_44a5df.var_fc558e74]);
        } else if (isdefined(params.var_44a5df.var_3a0b3eac)) {
            params.objectiveid = params.var_44a5df.var_3a0b3eac;
            handled = 0;
        } else if (params.var_89c7e02.team != params.var_44a5df.team && params.var_44a5df.team != #"none" && params.var_44a5df.team != #"neutral") {
            if (params.var_44a5df isplayer()) {
                event_type = 2;
            } else if (params.var_44a5df isai() && sessionmodeiszombiesgame()) {
                event_type = 10;
            } else {
                event_type = 3;
            }
            handled = 1;
        } else if (params.var_44a5df isai() && sessionmodeiszombiesgame()) {
            event_type = 10;
            handled = 1;
        } else if (params.var_89c7e02.team === params.var_44a5df.team && !params.var_44a5df isplayer()) {
            event_type = 6;
            handled = 1;
        } else if (params.var_89c7e02.team === params.var_44a5df.team && params.var_44a5df isplayer() && params.var_44a5df inlaststand()) {
            event_type = 12;
            handled = 1;
        } else if (params.var_44a5df.team == #"none" || params.var_44a5df.team == #"neutral") {
            event_type = 7;
            handled = 1;
        }
        if (is_true(handled)) {
            param = params.var_44a5df getentitynumber();
        }
    }
    if (!is_true(handled) && isdefined(params.dynentid)) {
        dynent = function_8608b8fd(params.dynentid);
        if (isdefined(level.var_a0b1f787[dynent.var_15d44120]) && !isdefined(dynent.var_fc558e74)) {
            dynent.var_fc558e74 = level.var_a0b1f787[dynent.var_15d44120];
        }
        if (isdefined(dynent.var_fc558e74)) {
            param = params.dynentid;
            event_type = 9;
            handled = 1;
        } else if (isdefined(dynent.itemlistbundle)) {
            param = params.dynentid;
            event_type = 11;
            handled = 1;
        }
    }
    if (!is_true(handled) && is_true(danger)) {
        event_type = 1;
        handled = 1;
    }
    if (!is_true(handled) && params.objectiveid != -1) {
        param = params.objectiveid;
        var_d0b9da93 = undefined;
        var_b0833b5d = function_d8d7e32(local_client_num, param, &function_929e2988);
        if (isdefined(var_b0833b5d)) {
            var_d0b9da93 = var_b0833b5d.ping;
            client_num = var_b0833b5d.client_num;
        }
        if (isdefined(var_d0b9da93)) {
            if (client_num == params.clientnum) {
                event_type = var_d0b9da93.event_type;
                remove = 1;
            } else {
                event_type = 14;
                remove = array::contains(var_d0b9da93.var_f1bdc795, params.clientnum);
                param = var_d0b9da93.unique_id;
            }
            handled = 1;
        } else if (param <= 63) {
            event_type = 5;
            handled = 1;
        } else {
            println("<unknown string>");
            return;
        }
    }
    loc = params.location;
    if (!is_true(handled) || var_b5a47119) {
        itemworld = function_6ebaaf97(params.localclientnum);
        if (isdefined(itemworld)) {
            param = isdefined(itemworld.networkid) ? itemworld.networkid : itemworld.id;
            loc = itemworld.origin;
            event_type = 4;
            handled = 1;
            item = function_b1702735(itemworld.id);
            if (isdefined(item.itementry)) {
                originoffset = (isdefined(item.itementry.var_5dc4470b) ? item.itementry.var_5dc4470b : 0, isdefined(item.itementry.var_54a3b4ca) ? item.itementry.var_54a3b4ca : 0, isdefined(item.itementry.var_3e688854) ? item.itementry.var_3e688854 : 0);
                loc -= rotatepoint(originoffset, itemworld.angles);
            }
        }
    }
    if (event_type === 8 || event_type === 9) {
        var_d0b9da93 = function_d8d7e32(local_client_num, param, &function_220a4754);
        if (isdefined(var_d0b9da93.ping)) {
            if (var_d0b9da93.client_num == params.clientnum) {
                remove = 1;
            }
        }
    }
    function_c7db1f99(pingdata, params, event_type, param, remove, loc, doubletap);
    if (function_113e718c(params.localclientnum) && event_type == 0) {
        level thread function_aa517465(params.localclientnum, params.var_89c7e02);
        return;
    }
    function_f20c0762(pingdata);
}

// Namespace ping/ping
// Params 7, eflags: 0x6 linked
// Checksum 0x26cde986, Offset: 0x1ab8
// Size: 0x1a2
function private function_c7db1f99(pingdata, params, event_type, param, remove, loc, doubletap) {
    pingdata.lastping.var_237e3e32 = undefined;
    if (true) {
        if (event_type < 13) {
            var_237e3e32 = structcopy(params);
            var_237e3e32.eventtype = event_type;
            var_237e3e32.param = param;
            var_237e3e32.remove = remove;
            var_237e3e32.uniqueid = -1;
            var_237e3e32.var_a0bf56ac = var_237e3e32.var_89c7e02 getentitynumber();
            var_237e3e32.var_dcc5aade = 1;
            var_237e3e32.location = loc;
            pingdata.lastping.var_237e3e32 = var_237e3e32;
        }
    }
    pingdata.lastping.eventtype = event_type;
    pingdata.lastping.remove = remove;
    pingdata.lastping.loc = loc;
    pingdata.lastping.param = param;
    pingdata.lastping.doubletap = doubletap;
    pingdata.lastping.localclientnum = params.localclientnum;
    pingdata.lastping.count = pingdata.count;
    pingdata.localclientnum = params.localclientnum;
}

// Namespace ping/ping
// Params 2, eflags: 0x6 linked
// Checksum 0x1c657753, Offset: 0x1c68
// Size: 0x11c
function private function_aa517465(localclientnum, var_89c7e02) {
    level endon("newPing" + localclientnum);
    var_89c7e02 endon(#"death");
    duration = getdvarint(#"hash_4be94e65d1d0b41e", 0);
    wait(float(duration) / 1000);
    if (isdefined(var_89c7e02) && var_89c7e02 function_8e51b4f(47)) {
        duration = getdvarint(#"hash_4fc2fbad5f4466bd", 0);
        wait(float(duration) / 1000);
    }
    function_f20c0762(level.ping.var_bef12f79[localclientnum]);
}

// Namespace ping/ping
// Params 1, eflags: 0x6 linked
// Checksum 0xe4f30da2, Offset: 0x1d90
// Size: 0x84
function private function_f20c0762(pingdata) {
    lastping = pingdata.lastping;
    if (isdefined(lastping.var_237e3e32)) {
        function_78827e7f(lastping.var_237e3e32);
    }
    function_40c4bce(lastping.localclientnum, lastping.eventtype, lastping.remove, lastping.loc, lastping.param);
}

// Namespace ping/ping
// Params 1, eflags: 0x4
// Checksum 0xf9501a13, Offset: 0x1e20
// Size: 0x76
function private function_da96be68(params) {
    if (isdefined(level.var_be4583aa.var_2e3efdda)) {
        items = [[ level.var_be4583aa.var_2e3efdda ]](params.location, undefined, 1, 20);
        if (isdefined(items[0])) {
            return items[0].id;
        }
    }
    return undefined;
}

// Namespace ping/ping
// Params 1, eflags: 0x6 linked
// Checksum 0xe77d6e08, Offset: 0x1ea0
// Size: 0x42
function private function_6ebaaf97(localclientnum) {
    if (!isdefined(level.var_be4583aa.var_9b71de90)) {
        return undefined;
    }
    return [[ level.var_be4583aa.var_9b71de90 ]](localclientnum);
}

// Namespace ping/ping
// Params 1, eflags: 0x6 linked
// Checksum 0x41479ece, Offset: 0x1ef0
// Size: 0x5ba
function private function_78827e7f(params) {
    var_56bcf423 = params.var_89c7e02;
    var_ec31db0f = params.var_a0bf56ac;
    location = params.location;
    event_type = params.eventtype;
    param = params.param;
    local_client_num = params.localclientnum;
    remove = params.remove;
    unique_id = params.uniqueid;
    var_43a0500c = params.var_43a0500c;
    var_dcc5aade = is_true(params.var_dcc5aade);
    currentplayer = function_5c10bd79(local_client_num);
    var_df55840 = currentplayer == var_56bcf423 && !var_dcc5aade;
    if (codcaster::function_b8fe9b52(local_client_num)) {
        return;
    }
    if (gamemodeismode(5)) {
        return;
    }
    var_d09a35d4 = remove ? var_dcc5aade ? 2 : 1 : 0;
    if (1 && var_df55840 && event_type < 13 && !remove) {
        var_638e268e = function_5947d757(event_type);
        var_20da58f9 = level.var_907386c0[local_client_num][var_ec31db0f][var_638e268e];
        if (isdefined(var_20da58f9)) {
            foreach (ping in var_20da58f9) {
                if (ping.unique_id === -1) {
                    ping.unique_id = unique_id;
                }
            }
        }
        return;
    }
    if (event_type < 13 && currentplayer == var_56bcf423 && !remove) {
        playsound(local_client_num, level.ping.types[event_type].sound);
    }
    switch (event_type) {
    case 0:
    case 1:
    case 2:
        function_d5a244dc(local_client_num, unique_id, event_type, location, var_56bcf423, var_ec31db0f, param, var_d09a35d4);
        break;
    case 3:
    case 6:
    case 7:
        function_afdaea76(local_client_num, unique_id, event_type, location, var_56bcf423, var_ec31db0f, param, var_d09a35d4);
        break;
    case 11:
        function_effa0b37(local_client_num, unique_id, event_type, location, var_56bcf423, var_ec31db0f, param, var_d09a35d4);
        break;
    case 4:
        function_a5de4bd1(local_client_num, unique_id, event_type, location, var_56bcf423, var_ec31db0f, param, var_d09a35d4);
        break;
    case 5:
        function_35dba327(local_client_num, unique_id, event_type, location, var_56bcf423, var_ec31db0f, param, var_d09a35d4);
        break;
    case 8:
    case 9:
        function_83751d93(local_client_num, unique_id, event_type, location, var_56bcf423, var_ec31db0f, param, var_d09a35d4);
        break;
    case 10:
        function_b7306aa(local_client_num, unique_id, event_type, location, var_56bcf423, var_ec31db0f, param, var_d09a35d4);
        break;
    case 14:
        function_f2e6b227(local_client_num, unique_id, event_type, var_56bcf423, var_ec31db0f, param, var_d09a35d4);
        break;
    case 12:
        function_3e306e80(local_client_num, unique_id, event_type, location, var_56bcf423, var_ec31db0f, param, var_d09a35d4);
        break;
    case 17:
        function_4b08d302(local_client_num, var_56bcf423, var_43a0500c);
        break;
    case 15:
        if (0 || !var_df55840) {
            function_892476d5(local_client_num, var_ec31db0f);
        }
        break;
    }
}

// Namespace ping/ping
// Params 9, eflags: 0x6 linked
// Checksum 0xd8e261a1, Offset: 0x24b8
// Size: 0x2fc
function private function_85bffd7c(local_client_num, event_type, location, clientnum, objective_id, var_fc97ceec, offsetz, var_c039614d, var_d09a35d4) {
    model = function_1df4c3b0(local_client_num, #"hash_43c8bc04801dc66b");
    setuimodelvalue(getuimodel(model, "type"), event_type);
    setuimodelvalue(getuimodel(model, "clientNum"), isdefined(clientnum) ? clientnum : -1);
    setuimodelvalue(getuimodel(model, "objectiveId"), isdefined(objective_id) ? objective_id : -1);
    setuimodelvalue(getuimodel(model, "remove"), (isdefined(var_d09a35d4) ? var_d09a35d4 : 0) != 0);
    setuimodelvalue(getuimodel(model, "locationX"), isdefined(location[0]) ? location[0] : 0);
    setuimodelvalue(getuimodel(model, "locationY"), isdefined(location[1]) ? location[1] : 0);
    setuimodelvalue(getuimodel(model, "customText"), isdefined(var_fc97ceec) ? var_fc97ceec : #"");
    setuimodelvalue(getuimodel(model, "offsetZ"), isdefined(offsetz) ? offsetz : 0);
    setuimodelvalue(getuimodel(model, "customImage"), isdefined(var_c039614d) ? var_c039614d : #"");
    forcenotifyuimodel(getuimodel(model, "notify"));
}

// Namespace ping/ping
// Params 2, eflags: 0x6 linked
// Checksum 0x2f11a921, Offset: 0x27c0
// Size: 0xce
function private function_daee0412(local_client_num, player) {
    if (level.ping.var_ea98b5ff === 1) {
        switch (player function_b0c2768d()) {
        case 1:
            return 20;
        case 2:
            return 21;
        case 3:
            return 22;
        case 4:
            return 23;
        }
    }
    if (player getlocalclientnumber() === local_client_num) {
        return 6;
    }
    return 3;
}

// Namespace ping/ping
// Params 5, eflags: 0x6 linked
// Checksum 0xdf57b5c2, Offset: 0x2898
// Size: 0x8c
function private function_5300c425(local_client_num, var_56bcf423, var_ccdb199a, var_c232a3ca, var_c3fe48ea) {
    color = function_daee0412(local_client_num, var_56bcf423);
    function_c79ecd60(local_client_num, var_56bcf423 getplayername(), color, undefined, var_ccdb199a, undefined, undefined, var_c232a3ca, var_c3fe48ea);
}

// Namespace ping/ping
// Params 4, eflags: 0x6 linked
// Checksum 0x86f4828e, Offset: 0x2930
// Size: 0x10c
function private function_9be72061(local_client_num, obj_id, ent, n_seconds) {
    if (!isdefined(obj_id) || !isdefined(ent) || !isdefined(n_seconds)) {
        return;
    }
    level endon(#"game_ended");
    level notify(obj_id + "_end_follow_ent");
    level endon(obj_id + "_end_follow_ent");
    level endon(obj_id + "_removed");
    objective_onentity(local_client_num, obj_id, ent, 0, 0, 0);
    if (n_seconds < 0) {
        return;
    }
    wait(n_seconds);
    objective_clearentity(local_client_num, obj_id);
    if (isdefined(ent)) {
        objective_setposition(local_client_num, obj_id, ent.origin);
    }
}

// Namespace ping/ping
// Params 3, eflags: 0x2 linked
// Checksum 0x7750a9dc, Offset: 0x2a48
// Size: 0xf4
function function_bcb7d0e7(local_client_num, var_ec31db0f, ping) {
    assert(isdefined(ping));
    if (ping.event_type != 5 && ping.obj_id >= 64) {
        clientobjid = ping.obj_id - 64;
        level notify(clientobjid + "_removed");
        objective_delete(local_client_num, clientobjid);
        util::releaseobjid(local_client_num, clientobjid);
    }
    function_85bffd7c(local_client_num, ping.event_type, undefined, var_ec31db0f, ping.obj_id, undefined, undefined, undefined, 1);
}

// Namespace ping/ping
// Params 3, eflags: 0x6 linked
// Checksum 0x26860f73, Offset: 0x2b48
// Size: 0xd0
function private function_ccc05112(local_client_num, var_ec31db0f, var_638e268e) {
    foreach (ping in level.var_907386c0[local_client_num][var_ec31db0f][var_638e268e]) {
        function_bcb7d0e7(local_client_num, var_ec31db0f, ping);
    }
    level.var_907386c0[local_client_num][var_ec31db0f][var_638e268e] = undefined;
}

// Namespace ping/ping
// Params 3, eflags: 0x6 linked
// Checksum 0xe2652878, Offset: 0x2c20
// Size: 0xc4
function private function_807b75f0(local_client_num, var_ec31db0f, event_type) {
    var_869573d5 = function_5947d757(event_type);
    var_20da58f9 = level.var_907386c0[local_client_num][var_ec31db0f][var_869573d5];
    if (isdefined(var_20da58f9) && var_20da58f9.size >= function_44806bba(event_type)) {
        ping = array::pop_front(var_20da58f9, 0);
        function_bcb7d0e7(local_client_num, var_ec31db0f, ping);
    }
}

// Namespace ping/ping
// Params 5, eflags: 0x6 linked
// Checksum 0x2cca3478, Offset: 0x2cf0
// Size: 0x1be
function private function_d8d7e32(local_client_num, param, var_398c2dad, var_9d45fcf2, pool) {
    foreach (client_num, pings in level.var_907386c0[local_client_num]) {
        if (isdefined(var_9d45fcf2) && array::contains(var_9d45fcf2, client_num)) {
            continue;
        }
        foreach (var_638e268e, var_20da58f9 in pings) {
            if (isdefined(pool) && array::contains(pool, var_638e268e)) {
                continue;
            }
            index = array::find(var_20da58f9, param, var_398c2dad);
            if (isdefined(index)) {
                return {#ping:var_20da58f9[index], #client_num:client_num};
            }
        }
    }
}

// Namespace ping/ping
// Params 2, eflags: 0x6 linked
// Checksum 0xc8cb92a4, Offset: 0x2eb8
// Size: 0x24
function private function_935e5b46(ping, unique_id) {
    return ping.unique_id === unique_id;
}

// Namespace ping/ping
// Params 2, eflags: 0x6 linked
// Checksum 0x91a271a3, Offset: 0x2ee8
// Size: 0x24
function private function_929e2988(ping, obj_id) {
    return ping.obj_id === obj_id;
}

// Namespace ping/ping
// Params 2, eflags: 0x6 linked
// Checksum 0x5c4f5f8a, Offset: 0x2f18
// Size: 0x24
function private function_220a4754(ping, param) {
    return ping.param === param;
}

// Namespace ping/ping
// Params 6, eflags: 0x6 linked
// Checksum 0xba6156c2, Offset: 0x2f48
// Size: 0x11c
function private function_2084e2d9(local_client_num, var_ec31db0f, event_type, var_398c2dad, var_1433567e, *var_d4b54312) {
    var_869573d5 = function_5947d757(var_398c2dad);
    var_20da58f9 = level.var_907386c0[var_ec31db0f][event_type][var_869573d5];
    if (isdefined(var_20da58f9)) {
        index = array::find(var_20da58f9, var_d4b54312, var_1433567e);
        if (isdefined(index)) {
            ping = var_20da58f9[index];
            if (var_20da58f9.size == 1) {
                level.var_907386c0[var_ec31db0f][event_type][var_869573d5] = undefined;
            } else {
                array::pop(var_20da58f9, index, 0);
            }
            function_bcb7d0e7(var_ec31db0f, event_type, ping);
        }
    }
}

// Namespace ping/ping
// Params 4, eflags: 0x6 linked
// Checksum 0x343b425a, Offset: 0x3070
// Size: 0x54
function private function_e0180998(local_client_num, var_ec31db0f, event_type, obj_id) {
    function_2084e2d9(local_client_num, var_ec31db0f, event_type, &function_929e2988, obj_id, 0);
}

// Namespace ping/ping
// Params 4, eflags: 0x6 linked
// Checksum 0xefe58091, Offset: 0x30d0
// Size: 0x54
function private function_b15bbdd1(local_client_num, var_ec31db0f, event_type, ent) {
    function_2084e2d9(local_client_num, var_ec31db0f, event_type, &function_220a4754, ent, 0);
}

// Namespace ping/ping
// Params 5, eflags: 0x6 linked
// Checksum 0x17d4f9b3, Offset: 0x3130
// Size: 0x84
function private function_1544c7f4(local_client_num, var_56bcf423, var_ec31db0f, event_type, unique_id) {
    var_421f350 = function_5c10bd79(local_client_num) == var_56bcf423;
    function_2084e2d9(local_client_num, var_ec31db0f, event_type, &function_935e5b46, unique_id, var_421f350);
}

// Namespace ping/ping
// Params 14, eflags: 0x6 linked
// Checksum 0xd14b37ca, Offset: 0x31c0
// Size: 0x336
function private function_1793cfaf(local_client_num, unique_id, var_56bcf423, var_ec31db0f, event_type, location, var_24733578, var_ccdb199a, var_c232a3ca, var_c3fe48ea, var_52c78c2c, follow_ent = undefined, var_ea6fedda = 4, var_bd94dfbb) {
    obj_id = util::getnextobjid(local_client_num);
    var_6d305537 = {#obj_id:obj_id + 64, #unique_id:unique_id, #var_f1bdc795:[], #var_c232a3ca:var_c232a3ca, #var_c3fe48ea:var_c3fe48ea, #event_type:event_type, #var_638e268e:function_5947d757(event_type), #var_52c78c2c:var_52c78c2c, #param:var_bd94dfbb};
    if (!isdefined(level.var_907386c0[local_client_num][var_ec31db0f][var_6d305537.var_638e268e])) {
        level.var_907386c0[local_client_num][var_ec31db0f][var_6d305537.var_638e268e] = [];
    } else if (!isarray(level.var_907386c0[local_client_num][var_ec31db0f][var_6d305537.var_638e268e])) {
        level.var_907386c0[local_client_num][var_ec31db0f][var_6d305537.var_638e268e] = array(level.var_907386c0[local_client_num][var_ec31db0f][var_6d305537.var_638e268e]);
    }
    level.var_907386c0[local_client_num][var_ec31db0f][var_6d305537.var_638e268e][level.var_907386c0[local_client_num][var_ec31db0f][var_6d305537.var_638e268e].size] = var_6d305537;
    objective_add(local_client_num, obj_id, "active", var_24733578, location, #"none", var_ec31db0f);
    function_2e625a75(local_client_num, obj_id, 1);
    if (isdefined(follow_ent)) {
        level thread function_9be72061(local_client_num, obj_id, follow_ent, var_ea6fedda);
    }
    if (isdefined(var_c232a3ca) && var_c232a3ca != #"") {
        function_5300c425(local_client_num, var_56bcf423, var_ccdb199a, var_c232a3ca, var_c3fe48ea);
    }
    battlechatter::function_f47a0e3b(local_client_num, var_56bcf423, var_52c78c2c);
    return obj_id + 64;
}

// Namespace ping/ping
// Params 8, eflags: 0x6 linked
// Checksum 0x7ff1fa80, Offset: 0x3500
// Size: 0x35c
function private function_d5a244dc(local_client_num, unique_id, event_type, location, var_56bcf423, var_ec31db0f, var_d4f0ac6e, var_d09a35d4) {
    if (var_d09a35d4 == 2) {
        function_e0180998(local_client_num, var_ec31db0f, event_type, var_d4f0ac6e);
    } else if (var_d09a35d4 == 1) {
        function_1544c7f4(local_client_num, var_56bcf423, var_ec31db0f, event_type, unique_id);
    } else {
        function_807b75f0(local_client_num, var_ec31db0f, event_type);
        follow_ent = undefined;
        var_ea6fedda = 4;
        if (event_type == 2 && isdefined(var_d4f0ac6e)) {
            ent = getentbynum(local_client_num, var_d4f0ac6e);
            if (isdefined(ent)) {
                location = ent.origin;
                if (!ent isplayer() || level.ping.var_19e1f40d) {
                    follow_ent = ent;
                }
                if (ent isplayer()) {
                    var_ea6fedda = level.ping.var_1220e585;
                }
            }
            var_52c78c2c = "";
            if (isdefined(level.var_1d16b8a)) {
                var_52c78c2c = [[ level.var_1d16b8a ]](local_client_num, var_56bcf423);
            } else {
                var_52c78c2c = function_9b79b59f(local_client_num, var_56bcf423);
            }
        } else {
            var_52c78c2c = "pingLocation";
        }
        zonename = undefined;
        if (isdefined(level.var_d6c4af7f)) {
            zonename = [[ level.var_d6c4af7f ]](location);
        }
        if (event_type == 2 || event_type == 1) {
            var_3695f891 = isdefined(zonename) ? zonename : #"hash_1e32ad8efd3bd291";
        } else {
            var_3695f891 = isdefined(zonename) ? zonename : #"hash_18b0d1618dc96364";
        }
        objective = undefined;
        if (isdefined(level.var_f2d68e02)) {
            objective = [[ level.var_f2d68e02 ]](event_type);
        } else {
            objective = level.ping.types[event_type].objective;
        }
        obj_id = function_1793cfaf(local_client_num, unique_id, var_56bcf423, var_ec31db0f, event_type, location, objective, #"hash_5052920a34135f31", var_3695f891, undefined, var_52c78c2c, follow_ent, var_ea6fedda);
    }
    function_85bffd7c(local_client_num, event_type, location, var_ec31db0f, obj_id, undefined, undefined, undefined, var_d09a35d4);
}

// Namespace ping/ping
// Params 8, eflags: 0x6 linked
// Checksum 0x8a51d00e, Offset: 0x3868
// Size: 0x21c
function private function_3e306e80(local_client_num, unique_id, event_type, location, var_56bcf423, var_ec31db0f, var_d4f0ac6e, var_d09a35d4) {
    if (var_d09a35d4 == 2) {
        function_e0180998(local_client_num, var_ec31db0f, event_type, var_d4f0ac6e);
    } else if (var_d09a35d4 == 1) {
        function_1544c7f4(local_client_num, var_56bcf423, var_ec31db0f, event_type, unique_id);
    } else {
        function_807b75f0(local_client_num, var_ec31db0f, event_type);
        if (event_type == 12 && isdefined(var_d4f0ac6e)) {
            ent = getentbynum(local_client_num, var_d4f0ac6e);
            if (isdefined(ent)) {
                follow_ent = ent;
                location = ent.origin + (0, 0, 40);
            }
            if (var_56bcf423 !== ent) {
                var_52c78c2c = "pingLocation";
            }
        } else {
            var_52c78c2c = "pingLocation";
        }
        var_2f3ac892 = #"hash_5052920a34135f31";
        var_3695f891 = #"hash_64a468a93e8c8bd7";
        if (var_ec31db0f == var_d4f0ac6e) {
            var_2f3ac892 = undefined;
            var_3695f891 = #"hash_4e169e26d7efe148";
        }
        obj_id = function_1793cfaf(local_client_num, unique_id, var_56bcf423, var_ec31db0f, event_type, location, level.ping.types[event_type].objective, var_2f3ac892, var_3695f891, undefined, var_52c78c2c, follow_ent);
    }
    function_85bffd7c(local_client_num, event_type, location, var_ec31db0f, obj_id, undefined, undefined, undefined, var_d09a35d4);
}

// Namespace ping/ping
// Params 8, eflags: 0x6 linked
// Checksum 0x2e7261d4, Offset: 0x3a90
// Size: 0x2b4
function private function_afdaea76(local_client_num, unique_id, event_type, location, var_56bcf423, var_ec31db0f, var_d4f0ac6e, var_d09a35d4) {
    var_b2f64e7 = undefined;
    if (var_d09a35d4 == 2) {
        function_e0180998(local_client_num, var_ec31db0f, event_type, var_d4f0ac6e);
    } else if (var_d09a35d4 == 1) {
        function_1544c7f4(local_client_num, var_56bcf423, var_ec31db0f, event_type, unique_id);
    } else {
        function_807b75f0(local_client_num, var_ec31db0f, event_type);
        ent = getentbynum(local_client_num, var_d4f0ac6e);
        if (isdefined(ent)) {
            location = ent.origin;
            if (ent isvehicle() && isdefined(ent.displayname) && ent.displayname != #"") {
                name = ent.displayname;
                image = ent.var_c95558ce;
                var_52c78c2c = function_49109f3(local_client_num, ent, var_56bcf423);
            } else if (isdefined(ent.weapon)) {
                name = ent.weapon.displayname;
                image = ent.weapon.var_c95558ce;
                var_52c78c2c = function_43569f3b(ent);
            }
            var_166a2084 = ent getpointinbounds(0, 0, 1);
            var_b2f64e7 = var_166a2084[2] - location[2];
        }
        obj_id = function_1793cfaf(local_client_num, unique_id, var_56bcf423, var_ec31db0f, event_type, location, level.ping.types[event_type].objective, #"hash_5052920a34135f31", name, undefined, var_52c78c2c, ent);
    }
    function_85bffd7c(local_client_num, event_type, location, var_ec31db0f, obj_id, name, var_b2f64e7, image, var_d09a35d4);
}

// Namespace ping/ping
// Params 8, eflags: 0x6 linked
// Checksum 0xc5911ea9, Offset: 0x3d50
// Size: 0x244
function private function_effa0b37(local_client_num, unique_id, event_type, location, var_56bcf423, var_ec31db0f, var_d4f0ac6e, var_d09a35d4) {
    var_b2f64e7 = undefined;
    image = undefined;
    name = undefined;
    if (var_d09a35d4 == 2) {
        function_e0180998(local_client_num, var_ec31db0f, event_type, var_d4f0ac6e);
    } else if (var_d09a35d4 == 1) {
        function_1544c7f4(local_client_num, var_56bcf423, var_ec31db0f, event_type, unique_id);
    } else {
        function_807b75f0(local_client_num, var_ec31db0f, event_type);
        dynent = function_8608b8fd(var_d4f0ac6e);
        assert(isdefined(dynent.itemlistbundle));
        name = dynent.displayname;
        location = dynent.origin;
        image = dynent.itemlistbundle.var_c95558ce;
        var_52c78c2c = dynent.itemlistbundle.var_e9898330;
        var_166a2084 = location;
        var_b2f64e7 = isdefined(dynent.itemlistbundle.var_136dd314) ? dynent.itemlistbundle.var_136dd314 : 40;
        obj_id = function_1793cfaf(local_client_num, unique_id, var_56bcf423, var_ec31db0f, event_type, location, level.ping.types[event_type].objective, #"hash_7eae2f9838aa52cf", name, undefined, var_52c78c2c);
    }
    function_85bffd7c(local_client_num, event_type, location, var_ec31db0f, obj_id, name, var_b2f64e7, image, var_d09a35d4);
}

// Namespace ping/ping
// Params 8, eflags: 0x6 linked
// Checksum 0xd6a56338, Offset: 0x3fa0
// Size: 0x274
function private function_a5de4bd1(local_client_num, unique_id, event_type, location, var_56bcf423, var_ec31db0f, var_113c24cb, var_d09a35d4) {
    if (var_d09a35d4 == 2) {
        function_e0180998(local_client_num, var_ec31db0f, event_type, var_113c24cb);
        level.var_abaea458[var_113c24cb] = undefined;
    } else if (var_d09a35d4 == 1) {
        function_1544c7f4(local_client_num, var_56bcf423, var_ec31db0f, event_type, unique_id);
        level.var_abaea458[var_113c24cb] = undefined;
    } else {
        function_807b75f0(local_client_num, var_ec31db0f, event_type);
        if (item_world_util::function_da09de95(var_113c24cb)) {
            ent_num = item_world_util::function_c094ccd3(var_113c24cb);
            if (isdefined(ent_num)) {
                item = getentbynum(local_client_num, ent_num);
            }
        } else {
            item = function_b1702735(var_113c24cb);
        }
        if (isdefined(item) && isdefined(item.itementry)) {
            item_name = item_world::get_item_name(item.itementry);
            var_13272bfd = item_world::function_6fe428b3(item.itementry);
            var_52c78c2c = item_world::function_c59d8d2b(item.itementry);
        }
        obj_id = function_1793cfaf(local_client_num, unique_id, var_56bcf423, var_ec31db0f, event_type, location, level.ping.types[event_type].objective, #"hash_7eae2f9838aa52cf", item_name, undefined, var_52c78c2c);
        level.var_abaea458[var_113c24cb] = 1;
    }
    function_85bffd7c(local_client_num, event_type, location, var_ec31db0f, obj_id, item_name, undefined, var_13272bfd, var_d09a35d4);
}

// Namespace ping/ping
// Params 8, eflags: 0x6 linked
// Checksum 0x8e0aee41, Offset: 0x4220
// Size: 0x3ac
function private function_35dba327(local_client_num, unique_id, event_type, location, var_56bcf423, var_ec31db0f, obj_id, var_d09a35d4) {
    if (var_d09a35d4 != 0) {
        function_e0180998(local_client_num, var_ec31db0f, event_type, obj_id);
        return;
    }
    function_807b75f0(local_client_num, var_ec31db0f, event_type);
    function_85bffd7c(local_client_num, event_type, location, var_ec31db0f, obj_id, undefined, undefined, undefined, var_d09a35d4);
    var_55b682f2 = function_288ec082(local_client_num, obj_id);
    var_ec131a0a = function_a00c5167(local_client_num, obj_id);
    var_c3fe48ea = undefined;
    if (var_ec131a0a == #"friendly") {
        var_c3fe48ea = 3;
        if (sessionmodeiszombiesgame()) {
            var_52c78c2c = function_5a9279ba(local_client_num, obj_id);
            battlechatter::function_f47a0e3b(local_client_num, var_56bcf423, var_52c78c2c);
        }
    } else {
        if (var_ec131a0a == #"neutral") {
            var_c3fe48ea = 0;
        } else {
            var_c3fe48ea = 0;
        }
        var_52c78c2c = function_5a9279ba(local_client_num, obj_id);
        battlechatter::function_f47a0e3b(local_client_num, var_56bcf423, var_52c78c2c);
    }
    var_6d305537 = {#obj_id:obj_id, #unique_id:unique_id, #var_f1bdc795:[], #var_c232a3ca:var_55b682f2, #var_c3fe48ea:var_c3fe48ea, #event_type:event_type, #var_638e268e:function_5947d757(event_type), #var_52c78c2c:var_52c78c2c};
    if (!isdefined(level.var_907386c0[local_client_num][var_ec31db0f][var_6d305537.var_638e268e])) {
        level.var_907386c0[local_client_num][var_ec31db0f][var_6d305537.var_638e268e] = [];
    } else if (!isarray(level.var_907386c0[local_client_num][var_ec31db0f][var_6d305537.var_638e268e])) {
        level.var_907386c0[local_client_num][var_ec31db0f][var_6d305537.var_638e268e] = array(level.var_907386c0[local_client_num][var_ec31db0f][var_6d305537.var_638e268e]);
    }
    level.var_907386c0[local_client_num][var_ec31db0f][var_6d305537.var_638e268e][level.var_907386c0[local_client_num][var_ec31db0f][var_6d305537.var_638e268e].size] = var_6d305537;
    if (var_55b682f2 != #"") {
        function_5300c425(local_client_num, var_56bcf423, #"hash_425505c8da16de0a", var_55b682f2, undefined);
    }
}

// Namespace ping/ping
// Params 8, eflags: 0x6 linked
// Checksum 0x85d14eb3, Offset: 0x45d8
// Size: 0x764
function private function_83751d93(local_client_num, unique_id, event_type, location, var_56bcf423, var_ec31db0f, var_d4f0ac6e, var_d09a35d4) {
    var_b2f64e7 = undefined;
    name = undefined;
    image = undefined;
    if (var_d09a35d4 == 2) {
        function_e0180998(local_client_num, var_ec31db0f, event_type, var_d4f0ac6e);
    } else if (var_d09a35d4 == 1) {
        function_1544c7f4(local_client_num, var_56bcf423, var_ec31db0f, event_type, unique_id);
    } else {
        function_807b75f0(local_client_num, var_ec31db0f, event_type);
        var_6e08853c = event_type === 9;
        if (var_6e08853c) {
            ent = function_8608b8fd(var_d4f0ac6e);
        } else {
            ent = getentbynum(local_client_num, var_d4f0ac6e);
        }
        if (isdefined(ent)) {
            location = ent.origin;
            if (!isdefined(ent.var_10434c60)) {
                ent.var_10434c60 = 1;
                ent callback::add_entity_callback(#"death", &function_f4f18dac);
            }
            if (!isdefined(ent.var_fc558e74)) {
                ent.var_fc558e74 = level.var_a0b1f787[ent.model];
            }
            name = isdefined(level.var_2d1b0ac[ent.var_fc558e74]) ? level.var_2d1b0ac[ent.var_fc558e74] : undefined;
            if (isfunctionptr(name)) {
                name = [[ name ]](ent);
            }
            image = isdefined(level.var_f8c1279b[ent.var_fc558e74]) ? level.var_f8c1279b[ent.var_fc558e74] : undefined;
            var_52c78c2c = isdefined(level.var_3cbb97[ent.var_fc558e74]) ? level.var_3cbb97[ent.var_fc558e74] : undefined;
            if (ent.var_fc558e74 === "mimic_prop_spawn" && isdefined(ent.item) && isdefined(ent.item.itementry)) {
                name = item_world::get_item_name(ent.item.itementry);
                image = item_world::function_6fe428b3(ent.item.itementry);
                var_52c78c2c = item_world::function_c59d8d2b(ent.item.itementry);
            }
            if (!var_6e08853c) {
                var_166a2084 = ent getpointinbounds(0, 0, 1);
                var_da008149 = ent getpointinbounds(0, 0, 0);
                var_b2f64e7 = var_166a2084[2] - var_da008149[2];
                var_b2f64e7 += isdefined(level.var_3fc6a555[ent.var_fc558e74]) ? level.var_3fc6a555[ent.var_fc558e74] : 0;
            }
            if (ent.var_fc558e74 === "double_door" || ent.var_fc558e74 === "power_double_door") {
                var_c25008cf = struct::get_array("ping_objective_ent", "script_noteworthy");
                var_1cbbe873 = [];
                if (var_c25008cf.size > 0) {
                    foreach (struct in var_c25008cf) {
                        if (struct.origin[2] > ent.origin[2]) {
                            if (!isdefined(var_1cbbe873)) {
                                var_1cbbe873 = [];
                            } else if (!isarray(var_1cbbe873)) {
                                var_1cbbe873 = array(var_1cbbe873);
                            }
                            var_1cbbe873[var_1cbbe873.size] = struct;
                        }
                    }
                    var_9aedf60e = arraygetclosest(ent.origin, var_1cbbe873);
                    location = var_9aedf60e.origin;
                    var_b2f64e7 = undefined;
                    ent = undefined;
                }
                if (var_1cbbe873.size == 0) {
                    /#
                        print("<unknown string>");
                    #/
                }
            }
        } else {
            return;
        }
        if (var_6e08853c || ent.var_fc558e74 === "barricade") {
            obj_id = function_1793cfaf(local_client_num, unique_id, var_56bcf423, var_ec31db0f, event_type, location, level.ping.types[event_type].objective, #"hash_5052920a34135f31", name, undefined, var_52c78c2c, undefined, -1, var_d4f0ac6e);
        } else {
            obj_id = function_1793cfaf(local_client_num, unique_id, var_56bcf423, var_ec31db0f, event_type, location, level.ping.types[event_type].objective, #"hash_5052920a34135f31", name, undefined, var_52c78c2c, ent, -1, var_d4f0ac6e);
        }
    }
    /#
        if (getdvar(#"hash_3bf43b4b79d1712a", 0)) {
            debugstar(location, 20, (0, 0, 1));
            if (isdefined(var_b2f64e7)) {
                debugstar(location + (0, 0, var_b2f64e7), 20, (0, 1, 0));
            }
        }
    #/
    function_85bffd7c(local_client_num, event_type, location, var_ec31db0f, obj_id, name, var_b2f64e7, image, var_d09a35d4);
}

// Namespace ping/ping
// Params 2, eflags: 0x2 linked
// Checksum 0xd2ac7cf7, Offset: 0x4d48
// Size: 0x54
function function_f4f18dac(local_client_num, ent) {
    var_54a4cedc = [8, 9];
    function_577f2e87(local_client_num, ent, var_54a4cedc);
}

// Namespace ping/ping
// Params 2, eflags: 0x6 linked
// Checksum 0x9ab7f156, Offset: 0x4da8
// Size: 0x4c
function private function_652f5160(local_client_num, ent) {
    var_54a4cedc = [10];
    function_577f2e87(local_client_num, ent, var_54a4cedc);
}

// Namespace ping/ping
// Params 3, eflags: 0x6 linked
// Checksum 0x81e109be, Offset: 0x4e00
// Size: 0x168
function private function_577f2e87(*local_client_num, ent, var_54a4cedc) {
    assert(isdefined(var_54a4cedc), "<unknown string>");
    var_fe241f9b = level.var_907386c0.size;
    if (!isdefined(ent)) {
        ent = self;
    }
    ent_num = ent getentitynumber();
    for (client_num = 0; client_num < var_fe241f9b; client_num++) {
        var_5cbd6e72 = level.var_907386c0[client_num].size;
        for (var_81ff68ad = 0; var_81ff68ad < var_5cbd6e72; var_81ff68ad++) {
            foreach (event_type in var_54a4cedc) {
                function_b15bbdd1(client_num, var_81ff68ad, event_type, ent_num);
            }
        }
    }
}

// Namespace ping/ping
// Params 8, eflags: 0x6 linked
// Checksum 0x801695dd, Offset: 0x4f70
// Size: 0x394
function private function_b7306aa(local_client_num, unique_id, event_type, location, var_56bcf423, var_ec31db0f, var_d4f0ac6e, var_d09a35d4) {
    var_b2f64e7 = undefined;
    name = undefined;
    if (var_d09a35d4 == 2) {
        function_e0180998(local_client_num, var_ec31db0f, event_type, var_d4f0ac6e);
    } else if (var_d09a35d4 == 1) {
        function_1544c7f4(local_client_num, var_56bcf423, var_ec31db0f, event_type, unique_id);
    } else {
        function_807b75f0(local_client_num, var_ec31db0f, event_type);
        ent = getentbynum(local_client_num, var_d4f0ac6e);
        if (!isdefined(ent)) {
            println("<unknown string>");
            return;
        }
        location = ent.origin;
        var_ea6fedda = level.ping.var_1220e585;
        if (!isdefined(ent.var_10434c60)) {
            ent.var_10434c60 = 1;
            ent callback::add_entity_callback(#"death", &function_652f5160);
        }
        ainame = ent function_7f0363e8(local_client_num, 1);
        if (ainame != "") {
            name = ainame;
        }
        if (ent.archetype === #"hulk") {
            image = #"hash_12a4d0d59ce480e5";
            var_52c78c2c = #"hash_73fd41d7b25c7854";
            var_b2f64e7 = 32;
        } else {
            image = undefined;
            var_52c78c2c = undefined;
            settingsbundle = ent ai::function_9139c839();
            if (isdefined(settingsbundle)) {
                category = settingsbundle.category;
                if (isdefined(category)) {
                    switch (category) {
                    case #"boss":
                        var_52c78c2c = #"hash_2238f6ae2f9c8847";
                        break;
                    case #"elite":
                        var_52c78c2c = #"hash_75c2910f28185f25";
                        break;
                    case #"special":
                        var_52c78c2c = #"hash_34a0c6f7267b8ba5";
                        break;
                    }
                }
            }
        }
        obj_id = function_1793cfaf(local_client_num, unique_id, var_56bcf423, var_ec31db0f, event_type, location, level.ping.types[event_type].objective, #"hash_5052920a34135f31", name, undefined, var_52c78c2c, ent, var_ea6fedda, var_d4f0ac6e);
    }
    function_85bffd7c(local_client_num, event_type, location, var_ec31db0f, obj_id, name, var_b2f64e7, image, var_d09a35d4);
}

// Namespace ping/ping
// Params 7, eflags: 0x6 linked
// Checksum 0xbf050234, Offset: 0x5310
// Size: 0x204
function private function_f2e6b227(local_client_num, *unique_id, event_type, var_56bcf423, var_ec31db0f, var_5172fec0, var_d09a35d4) {
    result = function_d8d7e32(unique_id, var_5172fec0, &function_935e5b46, var_ec31db0f);
    if (isdefined(result)) {
        var_d0b9da93 = result.ping;
    }
    if (isdefined(var_d0b9da93)) {
        index = array::find(var_d0b9da93.var_f1bdc795, var_ec31db0f);
        if (var_d09a35d4 != 0 && isdefined(index)) {
            array::remove_index(var_d0b9da93.var_f1bdc795, index);
            var_834e72f6 = 1;
        } else if (var_d09a35d4 == 0 && !isdefined(index)) {
            array::add(var_d0b9da93.var_f1bdc795, var_ec31db0f);
            var_834e72f6 = 1;
            if (isdefined(var_d0b9da93.var_c232a3ca) && var_d0b9da93.var_c232a3ca != #"") {
                function_5300c425(unique_id, var_56bcf423, #"hash_417da90934e51345", var_d0b9da93.var_c232a3ca, undefined);
            }
            battlechatter::function_f47a0e3b(unique_id, var_56bcf423, function_d87cb3c7(var_d0b9da93.var_52c78c2c));
        }
        if (is_true(var_834e72f6)) {
            function_85bffd7c(unique_id, event_type, undefined, var_ec31db0f, var_d0b9da93.obj_id, undefined, undefined, undefined, var_d09a35d4);
        }
    }
}

// Namespace ping/ping
// Params 3, eflags: 0x6 linked
// Checksum 0x197d588, Offset: 0x5520
// Size: 0x74
function private function_4b08d302(local_client_num, var_56bcf423, var_ee3c60e) {
    color = function_daee0412(local_client_num, var_56bcf423);
    function_c79ecd60(local_client_num, var_56bcf423 getplayername(), color, undefined, undefined, undefined, undefined, var_ee3c60e, undefined);
}

// Namespace ping/ping
// Params 2, eflags: 0x6 linked
// Checksum 0x622b7f64, Offset: 0x55a0
// Size: 0xb8
function private function_892476d5(local_client_num, var_ec31db0f) {
    foreach (var_638e268e in getarraykeys(level.var_907386c0[local_client_num][var_ec31db0f])) {
        function_ccc05112(local_client_num, var_ec31db0f, var_638e268e);
    }
}

// Namespace ping/ping
// Params 1, eflags: 0x6 linked
// Checksum 0xf825b21d, Offset: 0x5660
// Size: 0xa0
function private clear_all_pings(local_client_num) {
    foreach (clientnum, var_3866572e in level.var_907386c0[local_client_num]) {
        function_892476d5(local_client_num, clientnum);
    }
}

// Namespace ping/ping
// Params 2, eflags: 0x6 linked
// Checksum 0xde47facd, Offset: 0x5708
// Size: 0x178
function private function_9b79b59f(local_client_num, var_56bcf423) {
    compassyaw = getuimodelvalue(getuimodel(function_1df4c3b0(local_client_num, #"hash_6f4b11a0bee9b73d"), "yaw"));
    localyaw = getlocalclientangles(local_client_num)[1];
    if (isdefined(localyaw) && isdefined(compassyaw) && isdefined(var_56bcf423.angles)) {
        var_5bc88636 = localyaw - compassyaw;
        var_e0fab70 = var_56bcf423.angles[1] - var_5bc88636;
        if (var_e0fab70 < 0) {
            var_e0fab70 = abs(var_e0fab70);
        } else {
            var_e0fab70 = abs(var_e0fab70 - 360);
        }
        var_cf800efa = floor((var_e0fab70 + 7.5) / 15) * 15;
        if (var_cf800efa == 360) {
            var_cf800efa = 0;
        }
        return ("pingDanger" + var_cf800efa);
    }
    return undefined;
}

// Namespace ping/ping
// Params 3, eflags: 0x6 linked
// Checksum 0x49553c30, Offset: 0x5888
// Size: 0xa6
function private function_49109f3(local_client_num, ent, var_56bcf423) {
    occupants = ent getvehoccupants(local_client_num);
    if (isdefined(occupants) && occupants.size > 0 && occupants[0].team != var_56bcf423.team) {
        return "pingVehicleEnemy";
    } else if (isdefined(ent.settings)) {
        return ent.settings.var_e9898330;
    }
    return undefined;
}

// Namespace ping/ping
// Params 1, eflags: 0x6 linked
// Checksum 0xbaa06e30, Offset: 0x5938
// Size: 0xb8
function private function_43569f3b(ent) {
    var_52c78c2c = ent.weapon.var_e9898330;
    if (isdefined(var_52c78c2c) && var_52c78c2c != "" && ent.flag[#"enemy"] === 1) {
        if (issubstr(var_52c78c2c, "Lethal")) {
            if (var_52c78c2c != "pingGearLethalLandmine") {
                var_52c78c2c = "pingGearLethalGeneric";
            }
        }
        var_52c78c2c += "Enemy";
    }
    return var_52c78c2c;
}

// Namespace ping/ping
// Params 1, eflags: 0x6 linked
// Checksum 0x61a45e17, Offset: 0x59f8
// Size: 0x16a
function private function_d87cb3c7(var_11a7485e) {
    if (isdefined(var_11a7485e) && var_11a7485e != "" && !ishash(var_11a7485e)) {
        var_212af42f = getsubstr(var_11a7485e, 4, var_11a7485e.size);
        if (var_212af42f == "Location") {
            return "pingLocationAcknowledge";
        } else if (strstartswith(var_212af42f, "Danger")) {
            return "pingDangerAcknowledge";
        } else if (issubstr(var_212af42f, "Enemy")) {
            return "pingGearEnemyAcknowledge";
        } else if (strstartswith(var_212af42f, "Item") || strstartswith(var_212af42f, "Gear")) {
            return "pingItemAcknowledge";
        } else if (strstartswith(var_212af42f, "Objective")) {
            return "pingObjectiveAcknowledge";
        }
    }
    return undefined;
}

