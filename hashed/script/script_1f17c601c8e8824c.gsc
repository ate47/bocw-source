// Atian COD Tools GSC CW decompiler test
#using script_396f7d71538c9677;
#using scripts\weapons\weapon_utils.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace battlechatter;

/#

    // Namespace battlechatter/namespace_2987c8a4
    // Params 0, eflags: 0x0
    // Checksum 0x62f70e41, Offset: 0xc0
    // Size: 0x408
    function devgui_think() {
        setdvar(#"devgui_mpdialog", "<unknown string>");
        setdvar(#"testalias_player", "<unknown string>");
        setdvar(#"testalias_taacom", "<unknown string>");
        setdvar(#"testalias_commander", "<unknown string>");
        while (true) {
            wait(1);
            player = util::gethostplayer();
            if (!isdefined(player)) {
                continue;
            }
            spacing = getdvarfloat(#"testdialog_spacing", 0.25);
            switch (getdvarstring(#"devgui_mpdialog", "<unknown string>")) {
            case #"hash_7912e80189f9c6":
                player thread test_player_dialog(0);
                player thread test_taacom_dialog(spacing);
                player thread test_commander_dialog(2 * spacing);
                break;
            case #"hash_69c6be086f76a9d4":
                player thread test_player_dialog(0);
                player thread test_commander_dialog(spacing);
                break;
            case #"hash_3af5f0a904b3f8fa":
                player thread test_other_dialog(0);
                player thread test_commander_dialog(spacing);
                break;
            case #"hash_32945da5f7ac491":
                player thread test_taacom_dialog(0);
                player thread test_commander_dialog(spacing);
                break;
            case #"hash_597b27a5c8857d19":
                player thread test_player_dialog(0);
                player thread test_taacom_dialog(spacing);
                break;
            case #"hash_74f798193af006b3":
                player thread test_other_dialog(0);
                player thread test_taacom_dialog(spacing);
                break;
            case #"hash_5bd6a2c5d0ff3cb2":
                player thread test_other_dialog(0);
                player thread test_player_dialog(spacing);
                break;
            case #"hash_4a5a66c89be92eb":
                player thread play_conv_self_other();
                break;
            case #"hash_18683ef7652f40ed":
                player thread play_conv_other_self();
                break;
            case #"hash_2b559b1a5e81715f":
                player thread play_conv_other_other();
                break;
            }
            setdvar(#"devgui_mpdialog", "<unknown string>");
        }
    }

    // Namespace battlechatter/namespace_2987c8a4
    // Params 1, eflags: 0x0
    // Checksum 0xe310a9cd, Offset: 0x4d0
    // Size: 0xea
    function test_other_dialog(delay) {
        players = arraysort(level.players, self.origin);
        foreach (player in players) {
            if (player != self && isalive(player)) {
                player thread test_player_dialog(delay);
                return;
            }
        }
    }

    // Namespace battlechatter/namespace_2987c8a4
    // Params 1, eflags: 0x0
    // Checksum 0xe43d1d6a, Offset: 0x5c8
    // Size: 0x64
    function test_player_dialog(delay) {
        if (!isdefined(delay)) {
            delay = 0;
        }
        wait(delay);
        self playsoundontag(getdvarstring(#"testalias_player", "<unknown string>"), "<unknown string>");
    }

    // Namespace battlechatter/namespace_2987c8a4
    // Params 1, eflags: 0x0
    // Checksum 0x5866dad3, Offset: 0x638
    // Size: 0x5c
    function test_taacom_dialog(delay) {
        if (!isdefined(delay)) {
            delay = 0;
        }
        wait(delay);
        self playlocalsound(getdvarstring(#"testalias_taacom", "<unknown string>"));
    }

    // Namespace battlechatter/namespace_2987c8a4
    // Params 1, eflags: 0x0
    // Checksum 0x312355d0, Offset: 0x6a0
    // Size: 0x5c
    function test_commander_dialog(delay) {
        if (!isdefined(delay)) {
            delay = 0;
        }
        wait(delay);
        self playlocalsound(getdvarstring(#"testalias_commander", "<unknown string>"));
    }

    // Namespace battlechatter/namespace_2987c8a4
    // Params 1, eflags: 0x0
    // Checksum 0xace447fa, Offset: 0x708
    // Size: 0x54
    function play_test_dialog(dialogkey) {
        dialogalias = self get_player_dialog_alias(dialogkey, undefined);
        self playsoundontag(dialogalias, "<unknown string>");
    }

    // Namespace battlechatter/namespace_2987c8a4
    // Params 0, eflags: 0x0
    // Checksum 0xa464eae9, Offset: 0x768
    // Size: 0x10c
    function response_key() {
        switch (self getmpdialogname()) {
        case #"spectre":
            return "<unknown string>";
        case #"battery":
            return "<unknown string>";
        case #"outrider":
            return "<unknown string>";
        case #"prophet":
            return "<unknown string>";
        case #"firebreak":
            return "<unknown string>";
        case #"reaper":
            return "<unknown string>";
        case #"ruin":
            return "<unknown string>";
        case #"seraph":
            return "<unknown string>";
        case #"nomad":
            return "<unknown string>";
        }
        return "<unknown string>";
    }

    // Namespace battlechatter/namespace_2987c8a4
    // Params 0, eflags: 0x0
    // Checksum 0x673715f7, Offset: 0x880
    // Size: 0x144
    function play_conv_self_other() {
        num = randomintrange(0, 4);
        self play_test_dialog("<unknown string>" + num);
        wait(4);
        players = arraysort(level.players, self.origin);
        foreach (player in players) {
            if (player != self && isalive(player)) {
                player play_test_dialog("<unknown string>" + self response_key() + num);
                break;
            }
        }
    }

    // Namespace battlechatter/namespace_2987c8a4
    // Params 0, eflags: 0x0
    // Checksum 0xfa9b6987, Offset: 0x9d0
    // Size: 0x144
    function play_conv_other_self() {
        num = randomintrange(0, 4);
        players = arraysort(level.players, self.origin);
        foreach (player in players) {
            if (player != self && isalive(player)) {
                player play_test_dialog("<unknown string>" + num);
                break;
            }
        }
        wait(4);
        self play_test_dialog("<unknown string>" + player response_key() + num);
    }

    // Namespace battlechatter/namespace_2987c8a4
    // Params 0, eflags: 0x0
    // Checksum 0xb48e301d, Offset: 0xb20
    // Size: 0x1ec
    function play_conv_other_other() {
        num = randomintrange(0, 4);
        players = arraysort(level.players, self.origin);
        foreach (player in players) {
            if (player != self && isalive(player)) {
                player play_test_dialog("<unknown string>" + num);
                firstplayer = player;
                break;
            }
        }
        wait(4);
        foreach (player in players) {
            if (player != self && player !== firstplayer && isalive(player)) {
                player play_test_dialog("<unknown string>" + firstplayer response_key() + num);
                break;
            }
        }
    }

#/
