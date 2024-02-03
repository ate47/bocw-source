// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\renderoverridebundle.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace namespace_7fe06af4;

// Namespace namespace_7fe06af4/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x93341e93, Offset: 0x160
// Size: 0x7c
function event_handler[gametype_init] init(*eventstruct) {
    clientfield::register("world", "" + #"hash_5e7d02ead4a03f50", 1, 2, "int", &function_409efbe2, 0, 1);
    util::waitforclient(0);
}

// Namespace namespace_7fe06af4/namespace_7fe06af4
// Params 7, eflags: 0x2 linked
// Checksum 0xf6291d0, Offset: 0x1e8
// Size: 0x32c
function function_409efbe2(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    level.var_2a3e0e40 = bwastimejump;
    switch (level.var_2a3e0e40) {
    case 1:
        var_5b93750e = "pstfx_tronworld";
        setsoundcontext("dark_aether", "active");
        playsound(fieldname, #"hash_2afe43c80293fb00", (0, 0, 0));
        var_1bb0b8aa = 1;
        level.var_d38af2b = var_5b93750e;
        break;
    case 2:
        var_5b93750e = "pstfx_tankworld";
        setsoundcontext("dark_aether", "active");
        playsound(fieldname, #"hash_2afe43c80293fb00", (0, 0, 0));
        var_1bb0b8aa = 1;
        level.var_d38af2b = var_5b93750e;
        break;
    default:
        setsoundcontext("dark_aether", "inactive");
        var_5b93750e = undefined;
        var_1bb0b8aa = 0;
        level.var_d38af2b = undefined;
        break;
    }
    players = getlocalplayers();
    player = players[fieldname];
    if (isplayer(player)) {
        player function_6456ec2c(fieldname, level.var_2a3e0e40);
    }
    function_d024972a(fieldname, var_1bb0b8aa);
    if (isdefined(level.var_d38af2b)) {
        function_2cca7b47(fieldname, #"musictrack_mp_nuketown_ee");
        callback::on_spawned(&on_player_spawned);
        callback::on_killcam_begin(&on_killcam_begin);
        callback::on_player_corpse(&on_player_corpse);
        return;
    }
    callback::remove_on_spawned(&on_player_spawned);
    callback::on_killcam_begin(&on_killcam_begin);
    callback::on_player_corpse(&on_player_corpse);
}

// Namespace namespace_7fe06af4/namespace_7fe06af4
// Params 1, eflags: 0x2 linked
// Checksum 0x575b970f, Offset: 0x520
// Size: 0x2c
function on_player_spawned(localclientnum) {
    self function_6456ec2c(localclientnum, level.var_2a3e0e40);
}

// Namespace namespace_7fe06af4/namespace_7fe06af4
// Params 1, eflags: 0x2 linked
// Checksum 0x3c1f43e4, Offset: 0x558
// Size: 0x7c
function on_killcam_begin(params) {
    localclientnum = params.localclientnum;
    player = getlocalplayers()[localclientnum];
    if (isplayer(player)) {
        player function_6456ec2c(localclientnum, level.var_2a3e0e40);
    }
}

// Namespace namespace_7fe06af4/namespace_7fe06af4
// Params 2, eflags: 0x2 linked
// Checksum 0x6e2e7457, Offset: 0x5e0
// Size: 0x34
function on_player_corpse(localclientnum, *params) {
    self function_6456ec2c(params, level.var_2a3e0e40);
}

// Namespace namespace_7fe06af4/namespace_7fe06af4
// Params 2, eflags: 0x2 linked
// Checksum 0xbb042f58, Offset: 0x620
// Size: 0x1c4
function function_6456ec2c(*localclientnum, *newval) {
    player = self;
    if (level.var_d38af2b !== level.var_325b4fce) {
        player postfx::stoppostfxbundle("pstfx_scantron");
        player postfx::stoppostfxbundle("pstfx_tronsition");
        player postfx::stoppostfxbundle("pstfx_tronsportation");
        player postfx::stoppostfxbundle("pstfx_tankworld");
        player postfx::stoppostfxbundle("pstfx_tronworld");
        level.var_a2dc4819 = 0;
    }
    level.var_325b4fce = level.var_d38af2b;
    if (isdefined(level.var_325b4fce)) {
        if (!is_true(level.var_a2dc4819)) {
            player postfx::playpostfxbundle("pstfx_tronsition");
            player postfx::playpostfxbundle("pstfx_tronsportation");
        }
        level.var_a2dc4819 = 1;
        player postfx::playpostfxbundle(level.var_325b4fce);
        if (level.var_325b4fce === "pstfx_tronworld") {
            player postfx::playpostfxbundle("pstfx_scantron");
        }
    }
}

// Namespace namespace_7fe06af4/namespace_7fe06af4
// Params 2, eflags: 0x2 linked
// Checksum 0xe925bdb8, Offset: 0x7f0
// Size: 0xf8
function function_d024972a(localclientnum, var_1bb0b8aa = 0) {
    foreach (player in getplayers(localclientnum)) {
        if (isplayer(player) && player.team !== function_73f4b33(localclientnum)) {
            player renderoverridebundle::function_f4eab437(localclientnum, var_1bb0b8aa, "rob_sonar_set_enemy");
        }
    }
}

