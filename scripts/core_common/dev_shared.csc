// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace dev_shared;

/#

    // Namespace dev_shared/dev_shared
    // Params 0, eflags: 0x1
    // Checksum 0xac2ae352, Offset: 0x90
    // Size: 0x44
    function autoexec init() {
        callback::on_localclient_connect(&function_b49b1b6b);
        self function_cbe4bccb();
    }

    // Namespace dev_shared/dev_shared
    // Params 1, eflags: 0x0
    // Checksum 0xe8ae0fca, Offset: 0xe0
    // Size: 0x284
    function function_b49b1b6b(localclientnum) {
        var_39073e7a = undefined;
        var_b49b1b6b = undefined;
        a_effects = array("<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>");
        var_767a6d22 = 0;
        while (true) {
            n_dist = getdvarint(#"hash_4348ec71a8b13ef1", 0);
            var_114d05f = int(min(getdvarint(#"hash_4ead99200e3cc72c", 0), a_effects.size - 1));
            if (n_dist > 0) {
                if (var_114d05f != var_767a6d22 && isdefined(var_b49b1b6b)) {
                    killfx(localclientnum, var_b49b1b6b);
                    var_b49b1b6b = undefined;
                }
                if (!isdefined(var_39073e7a)) {
                    var_39073e7a = util::spawn_model(localclientnum, "<unknown string>");
                }
                if (!isdefined(var_b49b1b6b)) {
                    var_b49b1b6b = util::playfxontag(localclientnum, a_effects[var_114d05f], var_39073e7a, "<unknown string>");
                }
                v_pos = getcamposbylocalclientnum(localclientnum);
                v_ang = getcamanglesbylocalclientnum(localclientnum);
                v_forward = anglestoforward(v_ang);
                var_39073e7a.origin = v_pos + v_forward * n_dist;
                var_39073e7a.angles = v_ang;
            } else if (isdefined(var_39073e7a)) {
                killfx(localclientnum, var_b49b1b6b);
                var_39073e7a delete();
                var_b49b1b6b = undefined;
            }
            var_767a6d22 = var_114d05f;
            waitframe(1);
        }
    }

    // Namespace dev_shared/dev_shared
    // Params 3, eflags: 0x0
    // Checksum 0xfa6f5aa5, Offset: 0x370
    // Size: 0x5c
    function add_devgui_cmd(localclientnum, menu_path, cmds) {
        adddebugcommand(localclientnum, "<unknown string>" + menu_path + "<unknown string>" + cmds + "<unknown string>");
    }

    // Namespace dev_shared/dev_shared
    // Params 0, eflags: 0x0
    // Checksum 0x58f31c5e, Offset: 0x3d8
    // Size: 0x84
    function function_cbe4bccb() {
        self thread function_681e8519();
        self thread function_f3346975();
        add_devgui_cmd(0, "<unknown string>", "<unknown string>");
        add_devgui_cmd(0, "<unknown string>", "<unknown string>");
    }

    // Namespace dev_shared/dev_shared
    // Params 0, eflags: 0x0
    // Checksum 0xd8d273a7, Offset: 0x468
    // Size: 0x2d0
    function function_f3346975() {
        mode = currentsessionmode();
        while (mode >= 4) {
            mode = currentsessionmode();
            wait(1);
        }
        bodies = getallcharacterbodies(mode);
        foreach (playerbodytype in bodies) {
            body_name = function_2c6232e5(makelocalizedstring(getcharacterdisplayname(playerbodytype, mode))) + "<unknown string>" + function_9e72a96(getcharacterassetname(playerbodytype, mode));
            add_devgui_cmd(0, "<unknown string>" + body_name + "<unknown string>", "<unknown string>" + playerbodytype + "<unknown string>");
            var_13240050 = function_d299ef16(playerbodytype, mode);
            for (outfitindex = 0; outfitindex < var_13240050; outfitindex++) {
                var_9cf37283 = function_d7c3cf6c(playerbodytype, outfitindex, mode);
                if (var_9cf37283.valid) {
                    var_346660ac = function_2c6232e5(makelocalizedstring(var_9cf37283.var_74996050));
                    var_1bf829f2 = outfitindex + "<unknown string>" + var_346660ac + "<unknown string>" + function_9e72a96(var_9cf37283.namehash) + "<unknown string>" + outfitindex;
                    add_devgui_cmd(0, "<unknown string>" + body_name + "<unknown string>" + var_1bf829f2, "<unknown string>" + playerbodytype + "<unknown string>" + outfitindex);
                }
            }
        }
    }

    // Namespace dev_shared/dev_shared
    // Params 1, eflags: 0x0
    // Checksum 0x943d163b, Offset: 0x740
    // Size: 0x44
    function function_2c6232e5(in_string) {
        out_string = strreplace(in_string, "<unknown string>", "<unknown string>");
        return out_string;
    }

    // Namespace dev_shared/dev_shared
    // Params 0, eflags: 0x0
    // Checksum 0x4f2ed673, Offset: 0x790
    // Size: 0x214
    function function_681e8519() {
        level endon(#"game_ended");
        a_weapons = enumerateweapons("<unknown string>");
        var_cab50ba0 = [];
        a_grenades = [];
        a_equipment = [];
        for (i = 0; i < a_weapons.size; i++) {
            if (strstartswith(getweaponname(a_weapons[i]), "<unknown string>")) {
                arrayinsert(a_equipment, a_weapons[i], 0);
                continue;
            }
            if (is_true(a_weapons[i].isprimary) && isdefined(a_weapons[i].worldmodel)) {
                arrayinsert(var_cab50ba0, a_weapons[i], 0);
                continue;
            }
            if (is_true(a_weapons[i].isgrenadeweapon)) {
                arrayinsert(a_grenades, a_weapons[i], 0);
            }
        }
        player_devgui_base = "<unknown string>";
        level thread function_30285c9c(player_devgui_base, "<unknown string>", var_cab50ba0, "<unknown string>");
        level thread function_30285c9c(player_devgui_base, "<unknown string>", a_grenades, "<unknown string>");
        level thread function_30285c9c(player_devgui_base, "<unknown string>", a_equipment, "<unknown string>");
    }

    // Namespace dev_shared/dev_shared
    // Params 4, eflags: 0x0
    // Checksum 0x8ad00599, Offset: 0x9b0
    // Size: 0x124
    function function_30285c9c(root, pname, a_weapons, weapon_type) {
        level endon(#"game_ended");
        player_devgui_root = root + pname + "<unknown string>";
        if (isdefined(a_weapons)) {
            for (i = 0; i < a_weapons.size; i++) {
                name = getweaponname(a_weapons[i]);
                displayname = a_weapons[i].displayname;
                if (displayname == #"") {
                    displayname = "<unknown string>";
                } else {
                    displayname = "<unknown string>" + makelocalizedstring(displayname) + "<unknown string>";
                }
                function_8c49f3a8(player_devgui_root, weapon_type, name, displayname);
            }
        }
    }

    // Namespace dev_shared/dev_shared
    // Params 4, eflags: 0x0
    // Checksum 0xb2ba5974, Offset: 0xae0
    // Size: 0x7c
    function function_8c49f3a8(root, weapon_type, weap_name, displayname) {
        command = root + weapon_type + "<unknown string>" + weap_name + displayname + "<unknown string>" + weap_name + "<unknown string>";
        adddebugcommand(0, command);
    }

#/
