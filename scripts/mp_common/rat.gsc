// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\bots\bot.gsc;
#using scripts\mp_common\gametypes\dev.gsc;
#using scripts\mp_common\util.gsc;
#using scripts\core_common\rat_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace rat;

// Namespace rat/rat
// Params 0, eflags: 0x5
// Checksum 0xd5463d36, Offset: 0xb8
// Size: 0x3c
function private autoexec __init__system__() {
    /#
        register(#"rat", &function_70a657d8, undefined, undefined, undefined);
    #/
}

// Namespace rat/rat
// Params 0, eflags: 0x4
// Checksum 0x4374c9b2, Offset: 0x100
// Size: 0xc4
function private function_70a657d8() {
    /#
        init();
        level.rat.common.gethostplayer = &gethostplayer;
        level.rat.deathcount = 0;
        addratscriptcmd("<unknown string>", &rscaddenemy);
        addratscriptcmd("<unknown string>", &function_50634409);
        setdvar(#"rat_death_count", 0);
    #/
}

// Namespace rat/rat
// Params 1, eflags: 0x0
// Checksum 0x292252f8, Offset: 0x1d0
// Size: 0xa2
function function_50634409(*params) {
    /#
        player = gethostplayerforbots();
        team = player.team == #"allies" ? #"axis" : #"allies";
        bot = level add_bot(team);
        if (isdefined(bot)) {
            bot.ignoreall.bot = 1;
        }
    #/
}

// Namespace rat/rat
// Params 1, eflags: 0x0
// Checksum 0x143c7541, Offset: 0x280
// Size: 0x24c
function rscaddenemy(params) {
    /#
        player = [[ level.rat.common.gethostplayer ]]();
        team = #"axis";
        if (isdefined(player.pers[#"team"])) {
            team = getotherteam(player.pers[#"team"]);
        }
        bot = getormakebot(team);
        if (!isdefined(bot)) {
            println("<unknown string>");
            ratreportcommandresult(params._id, 0, "<unknown string>");
            return;
        }
        bot thread testenemy(team);
        bot thread deathcounter();
        wait(2);
        pos = (float(params.x), float(params.y), float(params.z));
        bot setorigin(pos);
        if (isdefined(params.ax)) {
            angles = (float(params.ax), float(params.ay), float(params.az));
            bot setplayerangles(angles);
        }
        ratreportcommandresult(params._id, 1);
    #/
}

// Namespace rat/rat
// Params 1, eflags: 0x0
// Checksum 0x958fc763, Offset: 0x4d8
// Size: 0xf4
function testenemy(team) {
    /#
        self endon(#"disconnect");
        while (!isdefined(self.pers[#"team"])) {
            waitframe(1);
        }
        if (level.teambased) {
            params = {#intpayload:0, #response:level.teams[team], #menu:game.menu[#"menu_team"]};
            self notify(#"menuresponse", params);
            self callback(#"menu_response", params);
        }
    #/
}

// Namespace rat/rat
// Params 0, eflags: 0x0
// Checksum 0x37ee7f28, Offset: 0x5d8
// Size: 0x5c
function deathcounter() {
    /#
        self waittill(#"death");
        level.rat.deathcount++;
        setdvar(#"rat_death_count", level.rat.deathcount);
    #/
}

