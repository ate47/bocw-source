#using script_335d0650ed05d36d;
#using script_7a8059ca02b7b09e;
#using scripts\abilities\mp\gadgets\gadget_concertina_wire;
#using scripts\abilities\mp\gadgets\gadget_smart_cover;
#using scripts\core_common\battlechatter;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\challenges_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\contracts_shared;
#using scripts\core_common\demo_shared;
#using scripts\core_common\dogtags;
#using scripts\core_common\exploder_shared;
#using scripts\core_common\gameobjects_shared;
#using scripts\core_common\globallogic\globallogic_audio;
#using scripts\core_common\hostmigration_shared;
#using scripts\core_common\hud_util_shared;
#using scripts\core_common\math_shared;
#using scripts\core_common\medals_shared;
#using scripts\core_common\player\player_stats;
#using scripts\core_common\popups_shared;
#using scripts\core_common\potm_shared;
#using scripts\core_common\rank_shared;
#using scripts\core_common\scoreevents_shared;
#using scripts\core_common\sound_shared;
#using scripts\core_common\spawnbeacon_shared;
#using scripts\core_common\spawning_shared;
#using scripts\core_common\util_shared;
#using scripts\mp_common\bb;
#using scripts\mp_common\challenges;
#using scripts\mp_common\contracts;
#using scripts\mp_common\gametypes\globallogic;
#using scripts\mp_common\gametypes\globallogic_defaults;
#using scripts\mp_common\gametypes\globallogic_score;
#using scripts\mp_common\gametypes\globallogic_spawn;
#using scripts\mp_common\gametypes\globallogic_utils;
#using scripts\mp_common\gametypes\hud_message;
#using scripts\mp_common\player\player_utils;
#using scripts\mp_common\userspawnselection;
#using scripts\mp_common\util;

#namespace sd;

// Namespace sd/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x2eacab78, Offset: 0x4d8
// Size: 0x2f4
function event_handler[gametype_init] main( *eventstruct )
{
    globallogic::init();
    util::registerscorelimit( 0, 500 );
    level.var_f5a73a96 = 1;
    level.onprecachegametype = &onprecachegametype;
    level.onstartgametype = &onstartgametype;
    level.onspawnplayer = &onspawnplayer;
    level.playerspawnedcb = &sd_playerspawnedcb;
    player::function_cf3aa03d( &onplayerkilled );
    player::function_3c5cc656( &function_610d3790 );
    level.ondeadevent = &ondeadevent;
    level.ononeleftevent = &ononeleftevent;
    level.ontimelimit = &ontimelimit;
    level.onendround = &onendround;
    level.iskillboosting = &sd_iskillboosting;
    level.figure_out_gametype_friendly_fire = &figureoutgametypefriendlyfire;
    level.var_17ae20ae = &function_17ae20ae;
    level.var_60507c71 = 1;
    level.takelivesondeath = 1;
    level.var_4348a050 = 1;
    level.endgameonscorelimit = 0;
    level.var_e7b05b51 = 0;
    level.var_ce802423 = 1;
    
    if ( !isdefined( game.var_629fe99f ) )
    {
        game.var_629fe99f = [];
    }
    
    globallogic_defaults::function_daa7e9d5();
    callback::on_connect( &on_player_connect );
    register_clientfields();
    
    if ( getdvarint( #"hash_da55c6d97d1dc52", 1 ) )
    {
        level.var_6cd68fbe = 1;
        spawn_beacon::function_5e54a568( 1 );
        spawn_beacon::function_ee74520a();
        spawn_beacon::disabletimeout();
        userspawnselection::function_93076e1d();
    }
    
    spawning::addsupportedspawnpointtype( "sd" );
    level.var_1aef539f = &function_a800815;
}

// Namespace sd/sd
// Params 0, eflags: 0x0
// Checksum 0x7d91ba0c, Offset: 0x7d8
// Size: 0x5c
function register_clientfields()
{
    clientfield::function_5b7d846d( "hudItems.war.attackingTeam", 1, 2, "int" );
    clientfield::register( "scriptmover", "entityModelsNum", 1, 10, "int" );
}

// Namespace sd/sd
// Params 0, eflags: 0x0
// Checksum 0xf192e8b3, Offset: 0x840
// Size: 0x24
function onprecachegametype()
{
    game.bomb_dropped_sound = "fly_bomb_drop_plr";
    game.bomb_recovered_sound = "fly_bomb_pickup_plr";
}

// Namespace sd/sd
// Params 4, eflags: 0x0
// Checksum 0x896f9b54, Offset: 0x870
// Size: 0x5e, Type: bool
function function_17ae20ae( *einflictor, *attacker, *smeansofdeath, *weapon )
{
    if ( isdefined( self.isdefusing ) && self.isdefusing || isdefined( self.isplanting ) && self.isplanting )
    {
        return true;
    }
    
    return false;
}

// Namespace sd/sd
// Params 0, eflags: 0x0
// Checksum 0xb4f7fa52, Offset: 0x8d8
// Size: 0xdc
function onendround()
{
    function_4c593022();
    function_7996e36d();
    
    if ( game.stat[ #"teamscores" ][ #"allies" ] == level.roundwinlimit - 1 && game.stat[ #"teamscores" ][ #"axis" ] == level.roundwinlimit - 1 )
    {
        aheadteam = getbetterteam();
        
        if ( aheadteam === game.defenders )
        {
            level.roundswitch = 0;
        }
    }
}

// Namespace sd/sd
// Params 0, eflags: 0x0
// Checksum 0x2a187f8, Offset: 0x9c0
// Size: 0x1c
function on_player_connect()
{
    function_f9bfc5ca( self );
}

// Namespace sd/sd
// Params 0, eflags: 0x0
// Checksum 0x84de73e6, Offset: 0x9e8
// Size: 0x26a
function getbetterteam()
{
    kills[ #"allies" ] = 0;
    kills[ #"axis" ] = 0;
    deaths[ #"allies" ] = 0;
    deaths[ #"axis" ] = 0;
    
    for (i = 0; i < level.players.size; i++) {
        player = level.players[ i ];
        team = player.pers[ #"team" ];
        
        if ( isdefined( team ) && ( team == #"allies" || team == #"axis" ) )
        {
            kills[ team ] += player.kills;
            deaths[ team ] += player.deaths;
        }
    }
    
    if ( kills[ #"allies" ] > kills[ #"axis" ] )
    {
        return #"allies";
    }
    else if ( kills[ #"axis" ] > kills[ #"allies" ] )
    {
        return #"axis";
    }
    
    if ( deaths[ #"allies" ] < deaths[ #"axis" ] )
    {
        return #"allies";
    }
    else if ( deaths[ #"axis" ] < deaths[ #"allies" ] )
    {
        return #"axis";
    }
    
    if ( randomint( 2 ) == 0 )
    {
        return #"allies";
    }
    
    return #"axis";
}

// Namespace sd/sd
// Params 0, eflags: 0x0
// Checksum 0x3ecb2a7a, Offset: 0xc60
// Size: 0x2c
function function_9f49017()
{
    util::wait_network_frame();
    userspawnselection::function_4f78b01d( 1 );
}

// Namespace sd/sd
// Params 0, eflags: 0x0
// Checksum 0x78aa776c, Offset: 0xc98
// Size: 0x1fc
function onstartgametype()
{
    setbombtimer( "A", 0 );
    setmatchflag( "bomb_timer_a", 0 );
    setbombtimer( "B", 0 );
    setmatchflag( "bomb_timer_b", 0 );
    setclientnamemode( "manual_change" );
    level._effect[ #"bombexplosion" ] = #"hash_1811460fd925f1f8";
    level._effect[ #"hash_568509fa2561a75d" ] = #"hash_4d29da75039cfce";
    level.alwaysusestartspawns = 1;
    
    foreach ( team, _ in level.teams )
    {
        level.var_a236b703[ team ] = 1;
        level.var_61952d8b[ team ] = 1;
        level.var_ee2324e4[ team ] = 0;
    }
    
    thread function_9f49017();
    level thread function_8cac4c76();
    thread updategametypedvars();
    thread set_ui_team();
    luinotifyevent( #"round_start" );
    thread bombs();
}

// Namespace sd/sd
// Params 0, eflags: 0x0
// Checksum 0x9de9364d, Offset: 0xea0
// Size: 0x44
function function_8cac4c76()
{
    waitframe( 1 );
    clientfield::set_world_uimodel( "hudItems.team1.noRespawnsLeft", 1 );
    clientfield::set_world_uimodel( "hudItems.team2.noRespawnsLeft", 1 );
}

// Namespace sd/sd
// Params 1, eflags: 0x0
// Checksum 0x8fb268af, Offset: 0xef0
// Size: 0x44
function onspawnplayer( predictedspawn )
{
    self.isplanting = 0;
    self.isdefusing = 0;
    self.isbombcarrier = 0;
    spawning::onspawnplayer( predictedspawn );
}

// Namespace sd/sd
// Params 0, eflags: 0x0
// Checksum 0x561d8a4e, Offset: 0xf40
// Size: 0x18
function sd_playerspawnedcb()
{
    level notify( #"spawned_player" );
}

// Namespace sd/sd
// Params 4, eflags: 0x0
// Checksum 0x4f47e260, Offset: 0xf60
// Size: 0x6cc
function function_610d3790( einflictor, victim, *idamage, weapon )
{
    attacker = self;
    var_1cfdf798 = isdefined( idamage.lastattacker ) ? idamage.lastattacker === attacker : 0;
    
    if ( isplayer( attacker ) && attacker.pers[ #"team" ] != idamage.pers[ #"team" ] )
    {
        if ( var_1cfdf798 )
        {
            attacker.var_badeb470 = ( isdefined( attacker.var_badeb470 ) ? attacker.var_badeb470 : 0 ) + 1;
            scoreevents::processscoreevent( #"kill_sd", attacker, idamage, weapon );
        }
    }
    
    inbombzone = 0;
    
    for (index = 0; index < level.bombzones.size; index++) {
        dist = distance2dsquared( idamage.origin, level.bombzones[ index ].curorigin );
        
        if ( dist < level.defaultoffenseradiussq )
        {
            inbombzone = 1;
            currentobjective = level.bombzones[ index ];
            break;
        }
    }
    
    if ( inbombzone && isplayer( attacker ) && attacker.pers[ #"team" ] != idamage.pers[ #"team" ] )
    {
        attacker challenges::function_2f462ffd( idamage, weapon, victim, currentobjective );
        attacker.pers[ #"objectiveekia" ]++;
        attacker.objectiveekia = attacker.pers[ #"objectiveekia" ];
        attacker.pers[ #"objectives" ]++;
        attacker.objectives = attacker.pers[ #"objectives" ];
        
        if ( var_1cfdf798 )
        {
            if ( game.defenders == idamage.pers[ #"team" ] )
            {
                attacker medals::offenseglobalcount();
                attacker thread challenges::killedbasedefender( currentobjective );
                scoreevents::function_2a2e1723( #"killed_defender", attacker, idamage, weapon );
                level thread telemetry::function_18135b72( #"hash_37f96a1d3c57a089", { #player:idamage, #var_bdc4bbd2:#"defending" } );
            }
            else
            {
                if ( isdefined( attacker.pers[ #"defends" ] ) )
                {
                    attacker.pers[ #"defends" ]++;
                    attacker.defends = attacker.pers[ #"defends" ];
                }
                
                attacker medals::defenseglobalcount();
                attacker thread challenges::killedbaseoffender( currentobjective, weapon, victim );
                scoreevents::function_2a2e1723( #"killed_attacker", attacker, idamage, weapon );
                level thread telemetry::function_18135b72( #"hash_37f96a1d3c57a089", { #player:idamage, #var_bdc4bbd2:#"assaulting" } );
            }
        }
    }
    
    if ( isplayer( attacker ) && attacker.pers[ #"team" ] != idamage.pers[ #"team" ] && isdefined( idamage.isbombcarrier ) && idamage.isbombcarrier == 1 )
    {
        attacker recordgameevent( "kill_carrier" );
        level thread telemetry::function_18135b72( #"hash_540cddd637f71a5e", { #player:attacker, #eventtype:#"kill_carrier" } );
        level thread telemetry::function_18135b72( #"hash_37f96a1d3c57a089", { #player:idamage, #var_bdc4bbd2:#"carrying" } );
    }
    
    if ( idamage.isplanting == 1 )
    {
        level thread telemetry::function_18135b72( #"hash_37f96a1d3c57a089", { #player:idamage, #var_bdc4bbd2:#"planting" } );
    }
    
    if ( idamage.isdefusing == 1 )
    {
        level thread telemetry::function_18135b72( #"hash_37f96a1d3c57a089", { #player:idamage, #var_bdc4bbd2:#"defusing" } );
        util::function_a3f7de13( 14, idamage.team, idamage getentitynumber() );
    }
    
    if ( inbombzone && var_1cfdf798 )
    {
        attacker challenges::function_82bb78f7( weapon, idamage );
    }
}

// Namespace sd/sd
// Params 2, eflags: 0x0
// Checksum 0x9d8436, Offset: 0x1638
// Size: 0x30, Type: bool
function function_a800815( victim, *attacker )
{
    if ( attacker.isplanting === 1 )
    {
        return true;
    }
    
    return false;
}

// Namespace sd/sd
// Params 0, eflags: 0x0
// Checksum 0x8b04144, Offset: 0x1670
// Size: 0x5c
function ontimelimit()
{
    if ( level.bombexploded || level.bombdefused || level.var_baf3bb47 === 1 )
    {
        return;
    }
    
    level.var_baf3bb47 = 1;
    globallogic::function_61e80d63();
}

// Namespace sd/sd
// Params 9, eflags: 0x0
// Checksum 0x9a241ad7, Offset: 0x16d8
// Size: 0x224
function onplayerkilled( einflictor, attacker, idamage, smeansofdeath, weapon, vdir, shitloc, psoffsettime, deathanimduration )
{
    clientfield::set_player_uimodel( "hudItems.playerLivesCount", level.numlives - self.var_a7d7e50a );
    
    if ( isdefined( self ) && isdefined( attacker ) && attacker != self && isplayer( attacker ) && attacker.team != self.team )
    {
        scoreevents::processscoreevent( #"eliminated_enemy", attacker, self, weapon );
        attacker contracts::function_fd9fb79b( #"contract_mp_eliminations" );
        
        if ( isdefined( self.lastmansd ) && self.lastmansd == 1 )
        {
            attacker stats::function_dad108fa( #"eliminated_final_enemy", 1 );
        }
    }
    
    if ( is_true( level.droppedtagrespawn ) )
    {
        should_spawn_tags = self dogtags::should_spawn_tags( einflictor, attacker, idamage, smeansofdeath, weapon, vdir, shitloc, psoffsettime, deathanimduration );
        should_spawn_tags = should_spawn_tags && !globallogic_spawn::mayspawn();
        
        if ( should_spawn_tags )
        {
            level thread dogtags::spawn_dog_tag( self, attacker, &dogtags::onusedogtag, 0 );
        }
    }
    
    if ( isdefined( self.team ) )
    {
        level.var_ee2324e4[ self.team ]++;
    }
    
    function_8f5272b2( self );
}

// Namespace sd/sd
// Params 1, eflags: 0x4
// Checksum 0xd8c397b4, Offset: 0x1908
// Size: 0xa4
function private function_8f5272b2( player )
{
    if ( isdefined( player.team ) )
    {
        globallogic_audio::play_2d_on_team( #"hash_7f0c9c0ec4410623", player.team );
        otherteam = util::getotherteam( player.team );
        
        if ( isdefined( otherteam ) && otherteam != player.team )
        {
            globallogic_audio::play_2d_on_team( #"hash_14b3ab2971ce1112", otherteam );
        }
    }
}

// Namespace sd/sd
// Params 1, eflags: 0x0
// Checksum 0xad146778, Offset: 0x19b8
// Size: 0x20c
function ondeadevent( team )
{
    if ( level.bombexploded || level.bombdefused || level.var_baf3bb47 === 1 )
    {
        return;
    }
    
    if ( getdvarint( #"hash_da55c6d97d1dc52", 1 ) && spawn_beacon::function_6b437265( team ) )
    {
        return;
    }
    
    if ( team == "all" )
    {
        if ( level.bombplanted )
        {
            globallogic::function_a3e3bd39( game.attackers, 6 );
        }
        else
        {
            globallogic::function_a3e3bd39( game.defenders, 6 );
        }
    }
    else if ( team == game.attackers )
    {
        enemyteam = util::get_enemy_team( team );
        challenges::last_man_defeat_3_enemies( enemyteam );
        thread function_d9c14343( enemyteam, team );
        
        if ( level.bombplanted )
        {
            return;
        }
        
        globallogic::function_a3e3bd39( game.defenders, 6 );
    }
    else if ( team == game.defenders )
    {
        enemyteam = util::get_enemy_team( team );
        challenges::last_man_defeat_3_enemies( enemyteam );
        thread function_d9c14343( enemyteam, team );
        globallogic::function_a3e3bd39( game.attackers, 6 );
    }
    
    level.var_baf3bb47 = 1;
}

// Namespace sd/sd
// Params 1, eflags: 0x0
// Checksum 0x699dc598, Offset: 0x1bd0
// Size: 0x6c
function ononeleftevent( team )
{
    if ( level.bombexploded || level.bombdefused )
    {
        return;
    }
    
    level notify( #"hash_15b8b6edc4ed3032", { #var_7090bf53:1 } );
    warnlastplayer( team );
}

// Namespace sd/sd
// Params 1, eflags: 0x0
// Checksum 0x50188e96, Offset: 0x1c48
// Size: 0x184
function warnlastplayer( team )
{
    if ( !isdefined( level.warnedlastplayer ) )
    {
        level.warnedlastplayer = [];
    }
    
    if ( isdefined( level.warnedlastplayer[ team ] ) )
    {
        return;
    }
    
    level.warnedlastplayer[ team ] = 1;
    players = level.players;
    
    for (i = 0; i < players.size; i++) {
        player = players[ i ];
        
        if ( isdefined( player.pers[ #"team" ] ) && player.pers[ #"team" ] == team && isdefined( player.pers[ #"class" ] ) )
        {
            if ( player.sessionstate == "playing" && !player.afk )
            {
                break;
            }
        }
    }
    
    if ( i == players.size )
    {
        return;
    }
    
    players[ i ] thread givelastattackerwarning( team );
    util::function_a3f7de13( 17, player.team, player getentitynumber() );
}

// Namespace sd/sd
// Params 1, eflags: 0x0
// Checksum 0x1d02c08, Offset: 0x1dd8
// Size: 0x15c
function givelastattackerwarning( team )
{
    self endon( #"death", #"disconnect" );
    fullhealthtime = 0;
    interval = 0.05;
    self.lastmansd = 1;
    enemyteam = game.defenders;
    
    if ( team == enemyteam )
    {
        enemyteam = game.attackers;
    }
    
    if ( function_a1ef346b( enemyteam ).size > 2 )
    {
        self.var_66cfa07f = 1;
    }
    
    while ( true )
    {
        if ( self.health != self.maxhealth )
        {
            fullhealthtime = 0;
        }
        else
        {
            fullhealthtime += interval;
        }
        
        wait interval;
        
        if ( self.health == self.maxhealth && fullhealthtime >= 3 )
        {
            break;
        }
    }
    
    self thread globallogic_audio::leader_dialog_on_player( "roundEncourageLastPlayer" );
    thread globallogic_audio::leader_dialog_for_other_teams( "roundEncourageLastPlayerEnemy", self.team, undefined, undefined );
}

// Namespace sd/sd
// Params 2, eflags: 0x4
// Checksum 0x8693f432, Offset: 0x1f40
// Size: 0x130
function private function_d9c14343( team, deadteam )
{
    if ( !isdefined( team ) || !isdefined( deadteam ) )
    {
        return;
    }
    
    waittillframeend();
    var_fbd29ffa = isdefined( level.var_ee2324e4[ deadteam ] ) ? level.var_ee2324e4[ deadteam ] : 0;
    
    if ( var_fbd29ffa < 1 )
    {
        return;
    }
    
    foreach ( player in getplayers( team ) )
    {
        if ( isdefined( player.var_badeb470 ) && player.var_badeb470 >= var_fbd29ffa )
        {
            scoreevents::processscoreevent( #"hash_262e6fe6640db556", player );
        }
    }
}

// Namespace sd/sd
// Params 0, eflags: 0x0
// Checksum 0x4be5d8a5, Offset: 0x2078
// Size: 0x144
function updategametypedvars()
{
    level.planttime = getgametypesetting( #"planttime" );
    level.defusetime = getgametypesetting( #"defusetime" );
    level.bombtimer = getgametypesetting( #"bombtimer" );
    level.multibomb = getgametypesetting( #"multibomb" );
    level.teamkillpenaltymultiplier = getgametypesetting( #"teamkillpenalty" );
    level.teamkillscoremultiplier = getgametypesetting( #"teamkillscore" );
    level.playerkillsmax = getgametypesetting( #"playerkillsmax" );
    level.totalkillsmax = getgametypesetting( #"totalkillsmax" );
}

// Namespace sd/sd
// Params 0, eflags: 0x0
// Checksum 0xb37d2af6, Offset: 0x21c8
// Size: 0xb84
function bombs()
{
    level.bombplanted = 0;
    level.bombdefused = 0;
    level.bombexploded = 0;
    trigger = getent( "sd_bomb_pickup_trig", "targetname" );
    
    if ( !isdefined( trigger ) )
    {
        /#
            util::error( "<dev string:x38>" );
        #/
        
        return;
    }
    
    visuals[ 0 ] = getent( "sd_bomb", "targetname" );
    
    if ( !isdefined( visuals[ 0 ] ) )
    {
        /#
            util::error( "<dev string:x68>" );
        #/
        
        return;
    }
    
    if ( !level.multibomb )
    {
        level.sdbomb = gameobjects::create_carry_object( game.attackers, trigger, visuals, ( 0, 0, 0 ), #"sd_bomb" );
        function_18fbab10( level.sdbomb.objectiveid, #"hash_407a600707950fea" );
        function_9a8950ee( level.sdbomb.objectiveid, 1 );
        level.sdbomb gameobjects::allow_carry( #"group_friendly" );
        level.sdbomb gameobjects::set_visible( #"group_friendly" );
        level.sdbomb gameobjects::set_model_visibility( 1 );
        level.sdbomb gameobjects::set_use_time( 0 );
        level.sdbomb gameobjects::function_b03b5362( 1 );
        level.sdbomb.allowweapons = 1;
        level.sdbomb.onpickup = &onpickup;
        level.sdbomb.ondrop = &ondrop;
        level.sdbomb.var_22389d70 = 0;
        level.sdbomb.var_3517bb1 = 1;
        var_a319c814 = getgametypesetting( #"carrier_manualdrop" );
        
        if ( var_a319c814 === 1 )
        {
            level.sdbomb gameobjects::function_a8c842d6( 1, 1, 0 );
        }
        else if ( var_a319c814 === 2 )
        {
            level.sdbomb gameobjects::function_98c39cbc( 1 );
        }
        
        foreach ( visual in level.sdbomb.visuals )
        {
            visual.team = #"neutral";
        }
    }
    else
    {
        trigger delete();
        visuals[ 0 ] delete();
    }
    
    level.bombzones = [];
    level.var_b10236da = [];
    bombzones = getentarray( "bombzone", "targetname" );
    
    for (index = 0; index < bombzones.size; index++) {
        trigger = bombzones[ index ];
        visuals = getentarray( bombzones[ index ].target, "targetname" );
        smart_cover::addprotectedzone( trigger );
        concertina_wire::addprotectedzone( trigger );
        name = #"sd" + trigger.script_label;
        var_70d8f2ac = name + "_codcaster";
        waypointname = #"sd_waypoint" + trigger.script_label;
        trigger.angles = visuals[ 0 ].angles;
        trigger function_682f34cf( -800 );
        trigger usetriggerignoreuseholdtime();
        trigger function_268e4500();
        bombzone = gameobjects::create_use_object( game.defenders, trigger, visuals, ( 0, 0, 0 ), name, 1, 1 );
        function_18fbab10( bombzone.objectiveid, var_70d8f2ac );
        bombzone.angles = visuals[ 0 ].angles;
        bombzone gameobjects::allow_use( #"group_enemy" );
        bombzone gameobjects::set_use_time( level.planttime );
        trigger setcursorhint( "HINT_INTERACTIVE_PROMPT" );
        
        if ( !level.multibomb )
        {
            bombzone gameobjects::set_key_object( level.sdbomb );
        }
        
        label = bombzone gameobjects::get_label();
        bombzone.label = label;
        bombzone gameobjects::set_visible( #"group_enemy" );
        bombzone.onbeginuse = &function_5416db8d;
        bombzone.onuseclear = &onuseclear;
        bombzone.onuseupdate = &onuseupdate;
        bombzone.onenduse = &function_941367ab;
        bombzone.onuse = &onuseplantobject;
        bombzone.oncantuse = &oncantuse;
        bombzone.var_1567ba56 = &function_1567ba56;
        bombzone.useweapon = getweapon( #"briefcase_bomb" );
        bombzone.visuals[ 0 ].killcament = spawn( "script_model", bombzone.visuals[ 0 ].origin + ( 0, 0, 128 ) );
        bombzone.var_3517bb1 = 1;
        var_69bc8821 = spawn( "script_model", trigger.origin );
        var_69bc8821.objectiveid = gameobjects::get_next_obj_id();
        var_69bc8821.curorigin = trigger.origin;
        var_69bc8821.ownerteam = game.defenders;
        var_69bc8821.team = game.defenders;
        var_69bc8821.type = "Waypoint";
        objective_add( var_69bc8821.objectiveid, "invisible", var_69bc8821, waypointname );
        function_18fbab10( var_69bc8821.objectiveid, waypointname + "_codcaster" );
        var_69bc8821 gameobjects::set_visible( #"group_all" );
        bombzone.waypoint = var_69bc8821;
        
        if ( isdefined( level.bomb_zone_fixup ) )
        {
            [[ level.bomb_zone_fixup ]]( bombzone );
        }
        
        if ( !level.multibomb )
        {
            bombzone.trigger setinvisibletoall();
        }
        
        for (i = 0; i < visuals.size; i++) {
            if ( isdefined( visuals[ i ].script_exploder ) )
            {
                bombzone.exploderindex = visuals[ i ].script_exploder;
                break;
            }
        }
        
        foreach ( visual in bombzone.visuals )
        {
            visual.team = #"neutral";
        }
        
        level.bombzones[ level.bombzones.size ] = bombzone;
        level.var_b10236da[ level.var_b10236da.size ] = var_69bc8821;
        bombzone.bombdefusetrig = getent( visuals[ 0 ].target, "targetname" );
        assert( isdefined( bombzone.bombdefusetrig ) );
        bombzone.bombdefusetrig.origin += ( 0, 0, -10000 );
        bombzone.bombdefusetrig.label = label;
    }
    
    for (index = 0; index < level.bombzones.size; index++) {
        array = [];
        
        for (otherindex = 0; otherindex < level.bombzones.size; otherindex++) {
            if ( otherindex != index )
            {
                array[ array.size ] = level.bombzones[ otherindex ];
            }
        }
        
        level.bombzones[ index ].otherbombzones = array;
    }
    
    thread function_d45df32e();
}

// Namespace sd/sd
// Params 0, eflags: 0x0
// Checksum 0xa507747, Offset: 0x2d58
// Size: 0x1b0
function function_d45df32e()
{
    level endon( #"game_ended" );
    
    while ( level.inprematchperiod )
    {
        waitframe( 1 );
    }
    
    luinotifyevent( #"prematch_over" );
    entitynum = isdefined( level.sdbomb.visuals[ 0 ] ) ? level.sdbomb.visuals[ 0 ] getentitynumber() : -1;
    
    if ( isdefined( level.sdbomb ) )
    {
        level.sdbomb clientfield::set( "entityModelsNum", entitynum );
    }
    
    foreach ( bombzone in level.bombzones )
    {
        entitynum = isdefined( bombzone.visuals[ 0 ] ) && isdefined( bombzone.b_enabled ) ? bombzone.visuals[ 0 ] getentitynumber() : -1;
        bombzone clientfield::set( "entityModelsNum", entitynum );
    }
}

// Namespace sd/sd
// Params 3, eflags: 0x0
// Checksum 0xb08364b3, Offset: 0x2f10
// Size: 0xbc
function setbomboverheatingafterweaponchange( useobject, overheated, heat )
{
    self endon( #"death", #"disconnect", #"joined_team", #"joined_spectators" );
    waitresult = self waittill( #"weapon_change" );
    
    if ( waitresult.weapon == useobject.useweapon )
    {
        self setweaponoverheating( overheated, heat, waitresult.weapon );
    }
}

// Namespace sd/sd
// Params 1, eflags: 0x0
// Checksum 0x7aa092f9, Offset: 0x2fd8
// Size: 0x184
function function_5416db8d( player )
{
    player.isplanting = 1;
    player thread setbomboverheatingafterweaponchange( self, 0, 0 );
    
    if ( level.multibomb )
    {
        for (i = 0; i < self.otherbombzones.size; i++) {
            self.otherbombzones[ i ] gameobjects::disable_object();
            self.otherbombzones[ i ].waypoint gameobjects::disable_object();
        }
    }
    
    if ( self.label == "_a" )
    {
        var_2989dcef = 1;
    }
    else if ( self.label == "_b" )
    {
        var_2989dcef = 2;
    }
    
    util::function_a3f7de13( 15, player.team, player getentitynumber(), var_2989dcef );
    player playsound( #"fly_bomb_raise_plr" );
    waypoint = self.waypoint;
    objective_setplayerusing( waypoint.objectiveid, player );
    self.trigger setinvisibletoplayer( player );
}

// Namespace sd/sd
// Params 1, eflags: 0x0
// Checksum 0x14233743, Offset: 0x3168
// Size: 0x114
function function_a8c87bae( player )
{
    player playsound( #"mpl_sd_bomb_defuse" );
    player.isdefusing = 1;
    player thread setbomboverheatingafterweaponchange( self, 0, 0 );
    
    if ( isdefined( level.sdbombmodel ) )
    {
        level.sdbombmodel hide();
    }
    
    util::function_a3f7de13( 5, player.team, player getentitynumber() );
    waypoint = self.waypoint;
    objective_setplayerusing( waypoint.objectiveid, player );
    player playsound( #"fly_bomb_raise_plr" );
    self.trigger setinvisibletoplayer( player );
}

// Namespace sd/sd
// Params 3, eflags: 0x0
// Checksum 0x8b3ce53b, Offset: 0x3288
// Size: 0xb4
function onuseupdate( *team, progress, *change )
{
    waypoint = self.waypoint;
    var_2349519b = math::clamp( change, 0, 1 );
    objective_setprogress( waypoint.objectiveid, var_2349519b );
    
    if ( isdefined( level.sdbomb.objectiveid ) )
    {
        objective_setprogress( level.sdbomb.objectiveid, var_2349519b );
    }
}

// Namespace sd/sd
// Params 0, eflags: 0x0
// Checksum 0x57ce7c4f, Offset: 0x3348
// Size: 0x84
function onuseclear()
{
    waypoint = self.waypoint;
    
    if ( isdefined( waypoint.objectiveid ) )
    {
        objective_setprogress( waypoint.objectiveid, 0 );
    }
    
    if ( isdefined( level.sdbomb.objectiveid ) )
    {
        objective_setprogress( level.sdbomb.objectiveid, 0 );
    }
}

// Namespace sd/sd
// Params 3, eflags: 0x0
// Checksum 0x6c32afe5, Offset: 0x33d8
// Size: 0x10c
function function_941367ab( *team, player, result )
{
    waypoint = self.waypoint;
    objective_clearallusing( waypoint.objectiveid );
    
    if ( !isdefined( player ) )
    {
        return;
    }
    
    player.isplanting = 0;
    player notify( #"event_ended" );
    
    if ( level.multibomb && !result )
    {
        for (i = 0; i < self.otherbombzones.size; i++) {
            self.otherbombzones[ i ] gameobjects::enable_object();
            self.otherbombzones[ i ].waypoint gameobjects::enable_object();
        }
    }
    
    self.trigger setvisibletoplayer( player );
}

// Namespace sd/sd
// Params 3, eflags: 0x0
// Checksum 0x22462a92, Offset: 0x34f0
// Size: 0xc4
function function_46031620( *team, player, result )
{
    waypoint = self.waypoint;
    objective_clearallusing( waypoint.objectiveid );
    
    if ( !isdefined( player ) )
    {
        return;
    }
    
    player.isdefusing = 0;
    player notify( #"event_ended" );
    
    if ( isdefined( level.sdbombmodel ) && !result )
    {
        level.sdbombmodel show();
    }
    
    self.trigger setvisibletoplayer( player );
}

// Namespace sd/sd
// Params 1, eflags: 0x0
// Checksum 0x196719bc, Offset: 0x35c0
// Size: 0x2c
function oncantuse( player )
{
    player iprintlnbold( #"mp/cant_plant_without_bomb" );
}

// Namespace sd/sd
// Params 1, eflags: 0x0
// Checksum 0x7d0274d7, Offset: 0x35f8
// Size: 0x434
function onuseplantobject( player )
{
    assert( isplayer( player ) );
    self gameobjects::set_flags( 1 );
    self.waypoint gameobjects::hide_waypoint();
    level thread bombplanted( self, player );
    
    /#
        print( "<dev string:x91>" + self.label );
    #/
    
    for (index = 0; index < level.bombzones.size; index++) {
        if ( level.bombzones[ index ] == self )
        {
            level.bombzones[ index ].isplanted = 1;
        }
        else
        {
            level.bombzones[ index ] gameobjects::disable_object();
        }
        
        level.bombzones[ index ].waypoint gameobjects::disable_object();
    }
    
    player notify( #"bomb_planted" );
    level thread popups::displayteammessagetoall( #"hash_12473d7e6ed6e752", player );
    
    if ( isdefined( player.pers[ #"plants" ] ) )
    {
        player.pers[ #"plants" ]++;
        player.plants = player.pers[ #"plants" ];
    }
    
    player.pers[ #"objectives" ]++;
    player.objectives = player.pers[ #"objectives" ];
    
    if ( self.label == "_a" )
    {
        var_2989dcef = 1;
    }
    else if ( self.label == "_b" )
    {
        var_2989dcef = 2;
    }
    
    util::function_a3f7de13( 4, player.team, player getentitynumber(), var_2989dcef );
    demo::bookmark( #"event", gettime(), player );
    potm::bookmark( #"event", gettime(), player );
    player stats::function_bb7eedf0( #"plants", 1 );
    player stats::function_dad108fa( #"plants_defuses", 1 );
    player globallogic_score::incpersstat( #"objectivescore", 1, 0, 1 );
    player contracts::increment_contract( #"hash_7fb3342ea8ac7e7c" );
    globallogic_audio::leader_dialog( "bombPlanted" );
    scoreevents::processscoreevent( #"planted_bomb", player, undefined, undefined );
    player recordgameevent( "plant" );
    level thread telemetry::function_18135b72( #"hash_540cddd637f71a5e", { #player:player, #eventtype:#"plant" } );
    thread function_d45df32e();
}

// Namespace sd/sd
// Params 1, eflags: 0x0
// Checksum 0xa6227130, Offset: 0x3a38
// Size: 0x484
function onusedefuseobject( player )
{
    assert( isplayer( player ) );
    self.waypoint gameobjects::set_flags( 0 );
    player notify( #"bomb_defused" );
    
    /#
        print( "<dev string:xa3>" + self.label );
    #/
    
    bb::function_95a5b5c2( "sd_bombdefuse", self.label, player.pers[ #"team" ], player.origin );
    self gameobjects::set_owner_team( player.pers[ #"team" ] );
    level thread bombdefused( self, player );
    self gameobjects::disable_object();
    self.waypoint gameobjects::disable_object();
    
    for (index = 0; index < level.bombzones.size; index++) {
        level.bombzones[ index ].isplanted = 0;
    }
    
    level thread popups::displayteammessagetoall( #"mp/explosives_defused_by", player );
    
    if ( isdefined( player.pers[ #"defuses" ] ) )
    {
        player.pers[ #"defuses" ]++;
        player.defuses = player.pers[ #"defuses" ];
    }
    
    player.pers[ #"objectives" ]++;
    player.objectives = player.pers[ #"objectives" ];
    player stats::function_bb7eedf0( #"defuses", 1 );
    player stats::function_dad108fa( #"plants_defuses", 1 );
    player contracts::increment_contract( #"hash_7fb3342ea8ac7e7c" );
    demo::bookmark( #"event", gettime(), player );
    potm::bookmark( #"event", gettime(), player );
    globallogic_audio::leader_dialog( "bombDefused" );
    
    if ( player.lastmansd === 1 && function_a1ef346b( game.attackers ).size > 0 )
    {
        scoreevents::processscoreevent( #"defused_bomb_last_man_alive", player, undefined, undefined );
        player stats::function_dad108fa( #"defused_bomb_last_man_alive", 1 );
        player stats::function_dad108fa( #"hash_55f8a59c6d7132a8", 1 );
    }
    else
    {
        scoreevents::processscoreevent( #"defused_bomb", player, undefined, undefined );
    }
    
    player globallogic_score::incpersstat( #"objectivedefends", 1, 0, 1 );
    player recordgameevent( "defuse" );
    level thread telemetry::function_18135b72( #"hash_540cddd637f71a5e", { #player:player, #eventtype:#"defuse" } );
}

// Namespace sd/sd
// Params 1, eflags: 0x0
// Checksum 0xeb04d261, Offset: 0x3ec8
// Size: 0xbc
function ondrop( player )
{
    self gameobjects::set_model_visibility( 1 );
    
    if ( !level.bombplanted )
    {
        globallogic_audio::leader_dialog( "bombFriendlyDropped", game.attackers );
    }
    
    player notify( #"event_ended" );
    sound::play_on_players( game.bomb_dropped_sound, game.attackers );
    
    if ( isdefined( level.bombdropbotevent ) )
    {
        [[ level.bombdropbotevent ]]();
    }
    
    thread function_d45df32e();
}

// Namespace sd/sd
// Params 1, eflags: 0x0
// Checksum 0x6b04c9a3, Offset: 0x3f90
// Size: 0x34c
function onpickup( player )
{
    assert( isplayer( player ) );
    player.isbombcarrier = 1;
    player recordgameevent( "pickup" );
    level thread telemetry::function_18135b72( #"hash_540cddd637f71a5e", { #player:player, #eventtype:#"pickup" } );
    self gameobjects::set_model_visibility( 0 );
    
    if ( !level.bombdefused )
    {
        if ( isdefined( player ) && isdefined( player.name ) )
        {
            player stats::function_bb7eedf0( #"pickups", 1 );
        }
        
        util::function_a3f7de13( 16, player.team, player getentitynumber() );
        team = self gameobjects::get_owner_team();
        otherteam = util::getotherteam( team );
        globallogic_audio::leader_dialog( "bombFriendlyTaken", game.attackers );
        
        /#
            print( "<dev string:xb5>" );
        #/
    }
    
    player playsound( #"fly_bomb_pickup_plr" );
    
    for (i = 0; i < level.bombzones.size; i++) {
        foreach ( p in getplayers() )
        {
            if ( p getentitynumber() != player getentitynumber() )
            {
                level.bombzones[ i ].trigger setinvisibletoplayer( p );
            }
        }
        
        level.bombzones[ i ].trigger setvisibletoplayer( player );
        level.bombzones[ i ] gameobjects::show_waypoint( player );
    }
    
    if ( isdefined( level.bombpickupbotevent ) )
    {
        [[ level.bombpickupbotevent ]]();
    }
}

// Namespace sd/sd
// Params 2, eflags: 0x0
// Checksum 0x4cc4d22c, Offset: 0x42e8
// Size: 0x102c
function bombplanted( destroyedobj, player )
{
    assert( isplayer( player ) );
    globallogic_utils::pausetimer();
    level.bombplanted = 1;
    player setweaponoverheating( 1, 100, destroyedobj.useweapon );
    team = player.pers[ #"team" ];
    destroyedobj.visuals[ 0 ] thread globallogic_utils::playtickingsound( "mpl_sab_ui_suitcasebomb_timer" );
    var_a2509eb6 = 0;
    
    if ( level.bombtimer - 8 >= 1 )
    {
        var_a2509eb6 = level.bombtimer - 10;
    }
    
    level notify( #"hash_15b8b6edc4ed3032", { #var_7090bf53:1 } );
    level notify( #"hash_28434e94a8844dc5", { #n_delay:var_a2509eb6 } );
    level.tickingobject = destroyedobj.visuals[ 0 ];
    level.timelimitoverride = 1;
    setgameendtime( gettime() + int( level.bombtimer * 1000 ) );
    label = destroyedobj gameobjects::get_label();
    setmatchflag( "bomb_timer" + label, 1 );
    
    if ( label == "_a" )
    {
        setbombtimer( "A", gettime() + int( level.bombtimer * 1000 ) );
        setmatchflag( "bomb_timer_a", 1 );
    }
    else
    {
        setbombtimer( "B", gettime() + int( level.bombtimer * 1000 ) );
        setmatchflag( "bomb_timer_b", 1 );
    }
    
    bb::function_95a5b5c2( "sd_bombplant", label, team, player.origin );
    
    if ( !level.multibomb )
    {
        level.sdbomb gameobjects::allow_carry( #"group_none" );
        level.sdbomb gameobjects::set_visible( #"group_none" );
        level.sdbomb.dropoffset = 1;
        level.sdbomb gameobjects::set_dropped();
        level.sdbombmodel = level.sdbomb.visuals[ 0 ];
    }
    else
    {
        /#
            for (index = 0; index < level.players.size; index++) {
                if ( isdefined( level.players[ index ].carryicon ) )
                {
                    level.players[ index ].carryicon hud::destroyelem();
                }
            }
        #/
        
        trace = bullettrace( player.origin + ( 0, 0, 20 ), player.origin - ( 0, 0, 2000 ), 0, player );
        tempangle = randomfloat( 360 );
        forward = ( cos( tempangle ), sin( tempangle ), 0 );
        forward = vectornormalize( forward - vectorscale( trace[ #"normal" ], vectordot( forward, trace[ #"normal" ] ) ) );
        dropangles = vectortoangles( forward );
        level.sdbombmodel = spawn( "script_model", trace[ #"position" ] + ( 0, 0, 3 ) );
        level.sdbombmodel.angles = dropangles;
        level.sdbombmodel setmodel( #"wpn_t9_eqp_c4_bomb_world" );
    }
    
    destroyedobj gameobjects::allow_use( #"group_none" );
    destroyedobj gameobjects::set_visible( #"group_none" );
    label = destroyedobj gameobjects::get_label();
    trigger = destroyedobj.bombdefusetrig;
    trigger function_682f34cf( -800 );
    trigger usetriggerignoreuseholdtime();
    trigger function_268e4500();
    trigger.origin = level.sdbombmodel.origin;
    trigger setcursorhint( "HINT_INTERACTIVE_PROMPT" );
    visuals = [];
    defuseobject = gameobjects::create_use_object( game.attackers, trigger, visuals, ( 0, 0, 0 ), #"hash_7b74e27a1a2facf8", 1, 1 );
    defuseobject gameobjects::allow_use( #"group_enemy" );
    defuseobject gameobjects::set_use_time( level.defusetime );
    defuseobject gameobjects::set_visible( #"group_all" );
    defuseobject.label = label;
    defuseobject.onbeginuse = &function_a8c87bae;
    defuseobject.onuseclear = &onuseclear;
    defuseobject.onuseupdate = &onuseupdate;
    defuseobject.onenduse = &function_46031620;
    defuseobject.onuse = &onusedefuseobject;
    defuseobject.var_1567ba56 = &function_1567ba56;
    defuseobject.useweapon = getweapon( #"briefcase_bomb_defuse" );
    defuseobject.var_3517bb1 = 1;
    var_3df9aa45 = spawn( "script_model", trigger.origin );
    var_3df9aa45.objectiveid = gameobjects::get_next_obj_id();
    var_3df9aa45.curorigin = trigger.origin;
    var_3df9aa45.ownerteam = game.attackers;
    var_3df9aa45.team = game.attackers;
    var_3df9aa45.type = "Waypoint";
    waypointname = #"sd_defuse" + label;
    objective_add( var_3df9aa45.objectiveid, "invisible", var_3df9aa45, waypointname );
    function_18fbab10( var_3df9aa45.objectiveid, waypointname + "_codcaster" );
    var_3df9aa45 gameobjects::set_visible( #"group_all" );
    var_3df9aa45 gameobjects::set_flags( 1 );
    defuseobject.waypoint = var_3df9aa45;
    level.defuseobject = defuseobject;
    level.var_3df9aa45 = var_3df9aa45;
    thread function_8c5ec1b();
    player.isbombcarrier = 0;
    player playbombplant();
    globallogic::function_3305e557( player, "bombPlanted", 0 );
    player function_ef823e71( 5, player.pers[ #"bombplanted" ] );
    bombtimerwait();
    setbombtimer( "A", 0 );
    setbombtimer( "B", 0 );
    setmatchflag( "bomb_timer_a", 0 );
    setmatchflag( "bomb_timer_b", 0 );
    
    if ( isdefined( destroyedobj.visuals[ 0 ] ) )
    {
        destroyedobj.visuals[ 0 ] globallogic_utils::stoptickingsound();
    }
    
    if ( level.gameended || level.bombdefused )
    {
        return;
    }
    
    level.bombexploded = 1;
    defuseobject gameobjects::disable_object( 1, 1, 0, 1 );
    origin = ( 0, 0, 0 );
    
    if ( isdefined( player ) )
    {
        origin = player.origin;
    }
    
    bb::function_95a5b5c2( "sd_bombexplode", label, team, origin );
    explosionorigin = level.sdbombmodel.origin + ( 0, 0, 12 );
    level.sdbombmodel hide();
    
    if ( isdefined( destroyedobj.visuals[ 0 ] ) )
    {
        if ( isdefined( player ) )
        {
            destroyedobj.visuals[ 0 ] radiusdamage( explosionorigin, 512, 800, 800, player, "MOD_EXPLOSIVE", getweapon( #"briefcase_bomb" ) );
            level thread popups::displayteammessagetoall( #"hash_74fa1e5aa0983f9", player );
            scoreevents::processscoreevent( #"bomb_detonated", player, undefined, undefined );
            player stats::function_bb7eedf0( #"destructions", 1 );
            player recordgameevent( "destroy" );
            level thread telemetry::function_18135b72( #"hash_540cddd637f71a5e", { #player:player, #eventtype:#"destroy" } );
        }
        else
        {
            destroyedobj.visuals[ 0 ] radiusdamage( explosionorigin, 512, 600, 400, undefined, "MOD_EXPLOSIVE", getweapon( #"briefcase_bomb" ) );
        }
    }
    
    rot = randomfloat( 360 );
    explosioneffect = spawnfx( level._effect[ #"bombexplosion" ], explosionorigin + ( 0, 0, 0 ), ( 0, 0, 1 ), ( cos( rot ), sin( rot ), 0 ) );
    triggerfx( explosioneffect );
    thread sound::play_in_space( "mpl_sd_exp_suitcase_bomb_main", explosionorigin );
    
    if ( isdefined( destroyedobj.visuals[ 0 ] ) )
    {
        var_d46e7070 = destroyedobj.visuals[ 0 ].origin;
        var_e6397375 = anglestoforward( destroyedobj.visuals[ 0 ].angles );
        var_213527e2 = anglestoup( destroyedobj.visuals[ 0 ].angles );
        wait 0.1;
        var_238e7468 = spawnfx( level._effect[ #"hash_568509fa2561a75d" ], var_d46e7070, var_e6397375, var_213527e2 );
        triggerfx( var_238e7468 );
    }
    
    if ( isdefined( destroyedobj.exploderindex ) )
    {
        exploder::exploder( destroyedobj.exploderindex );
    }
    
    defuseobject.waypoint gameobjects::set_flags( 2 );
    
    foreach ( zone in level.bombzones )
    {
        zone gameobjects::disable_object();
        zone.waypoint gameobjects::disable_object();
    }
    
    setgameendtime( 0 );
    
    if ( is_true( level.roundending ) )
    {
        return;
    }
    
    wait 3;
    globallogic::function_a3e3bd39( game.attackers, 1 );
}

// Namespace sd/sd
// Params 0, eflags: 0x0
// Checksum 0xc7e1beec, Offset: 0x5320
// Size: 0x2c
function function_8c5ec1b()
{
    wait 0.1;
    luinotifyevent( #"hash_1ddd47914421827e" );
}

// Namespace sd/sd
// Params 0, eflags: 0x0
// Checksum 0xd668642, Offset: 0x5358
// Size: 0x44
function bombtimerwait()
{
    level endon( #"game_ended", #"bomb_defused" );
    hostmigration::waitlongdurationwithgameendtimeupdate( level.bombtimer );
}

// Namespace sd/sd
// Params 2, eflags: 0x0
// Checksum 0xd65b0cd7, Offset: 0x53a8
// Size: 0x1b4
function bombdefused( defusedobject, player )
{
    level.tickingobject globallogic_utils::stoptickingsound();
    level.bombdefused = 1;
    player setweaponoverheating( 1, 100, defusedobject.useweapon );
    setbombtimer( "A", 0 );
    setbombtimer( "B", 0 );
    setmatchflag( "bomb_timer_a", 0 );
    setmatchflag( "bomb_timer_b", 0 );
    player playbombdefuse();
    globallogic::function_3305e557( player, "bombDefused", 0 );
    player function_ef823e71( 4, player.pers[ #"bombdefused" ] );
    level notify( #"bomb_defused" );
    thread globallogic_audio::set_music_on_team( "silent" );
    
    if ( is_true( level.roundending ) )
    {
        return;
    }
    
    wait 1.5;
    setgameendtime( 0 );
    globallogic::function_a3e3bd39( game.defenders, 12 );
}

// Namespace sd/sd
// Params 0, eflags: 0x4
// Checksum 0x9831e0a2, Offset: 0x5568
// Size: 0x64
function private set_ui_team()
{
    wait 0.05;
    
    if ( game.attackers == #"allies" )
    {
        clientfield::set_world_uimodel( "hudItems.war.attackingTeam", 1 );
        return;
    }
    
    clientfield::set_world_uimodel( "hudItems.war.attackingTeam", 2 );
}

// Namespace sd/sd
// Params 0, eflags: 0x0
// Checksum 0x9631ccd, Offset: 0x55d8
// Size: 0x136, Type: bool
function sd_iskillboosting()
{
    if ( !isplayer( self ) )
    {
        return false;
    }
    
    roundsplayed = util::getroundsplayed();
    
    if ( level.playerkillsmax == 0 )
    {
        return false;
    }
    
    if ( game.totalkills > level.totalkillsmax * ( roundsplayed + 1 ) )
    {
        return true;
    }
    
    if ( ( isdefined( self.kills ) ? self.kills : 0 ) > level.playerkillsmax * ( roundsplayed + 1 ) )
    {
        return true;
    }
    
    if ( level.teambased && isdefined( self.team ) && ( self.team == #"allies" || self.team == #"axis" ) )
    {
        if ( game.totalkillsteam[ self.team ] > level.playerkillsmax * ( roundsplayed + 1 ) )
        {
            return true;
        }
    }
    
    return false;
}

// Namespace sd/sd
// Params 1, eflags: 0x0
// Checksum 0x9e0c0cd5, Offset: 0x5718
// Size: 0x7e
function figureoutgametypefriendlyfire( victim )
{
    if ( ( level.hardcoremode || level.var_73e51905 ) && level.friendlyfire > 0 && isdefined( victim ) && ( victim.isplanting === 1 || victim.isdefusing === 1 ) )
    {
        return 2;
    }
    
    return level.friendlyfire;
}

// Namespace sd/sd
// Params 0, eflags: 0x4
// Checksum 0x1c513ba4, Offset: 0x57a0
// Size: 0x118
function private function_4c593022()
{
    roundsplayed = util::getroundsplayed() + 1;
    
    foreach ( player in level.players )
    {
        if ( player.team != #"spectator" )
        {
            player function_ef823e71( 7, player.pers[ #"kills" ], roundsplayed );
            player function_ef823e71( 8, player.pers[ #"damagedone" ], roundsplayed );
        }
    }
}

// Namespace sd/sd
// Params 0, eflags: 0x4
// Checksum 0xb4382085, Offset: 0x58c0
// Size: 0x24a
function private function_7996e36d()
{
    foreach ( player in level.players )
    {
        if ( player.team != #"spectator" )
        {
            if ( !isdefined( game.var_629fe99f[ player.playername ] ) )
            {
                game.var_629fe99f[ player.playername ] = [];
            }
            
            game.var_629fe99f[ player.playername ][ #"shotsfired" ] = player.pers[ #"shotsfired" ];
            game.var_629fe99f[ player.playername ][ #"shotshit" ] = player.pers[ #"shotshit" ];
            game.var_629fe99f[ player.playername ][ #"bombdefused" ] = player.pers[ #"bombdefused" ];
            game.var_629fe99f[ player.playername ][ #"bombplanted" ] = player.pers[ #"bombplanted" ];
            game.var_629fe99f[ player.playername ][ #"firstdeath" ] = player.pers[ #"firstdeath" ];
            game.var_629fe99f[ player.playername ][ #"cur_total_kill_streak" ] = player.pers[ #"cur_total_kill_streak" ];
            game.var_629fe99f[ player.playername ][ #"best_kill_streak" ] = player.pers[ #"best_kill_streak" ];
        }
    }
}

// Namespace sd/sd
// Params 1, eflags: 0x4
// Checksum 0x49568451, Offset: 0x5b18
// Size: 0x314
function private function_f9bfc5ca( player )
{
    if ( game.var_629fe99f.size == 0 || !isdefined( game.var_629fe99f[ player.playername ] ) )
    {
        if ( !isdefined( player.pers[ #"shotsfired" ] ) )
        {
            player.pers[ #"shotsfired" ] = 0;
        }
        
        if ( !isdefined( player.pers[ #"shotshit" ] ) )
        {
            player.pers[ #"shotshit" ] = 0;
        }
        
        if ( !isdefined( player.pers[ #"bombdefused" ] ) )
        {
            player.pers[ #"bombdefused" ] = 0;
        }
        
        if ( !isdefined( player.pers[ #"bombplanted" ] ) )
        {
            player.pers[ #"bombplanted" ] = 0;
        }
        
        if ( !isdefined( player.pers[ #"firstdeath" ] ) )
        {
            player.pers[ #"firstdeath" ] = 0;
        }
        
        return;
    }
    
    player.pers[ #"shotsfired" ] = game.var_629fe99f[ player.playername ][ #"shotsfired" ];
    player.pers[ #"shotshit" ] = game.var_629fe99f[ player.playername ][ #"shotshit" ];
    player.pers[ #"bombdefused" ] = game.var_629fe99f[ player.playername ][ #"bombdefused" ];
    player.pers[ #"bombplanted" ] = game.var_629fe99f[ player.playername ][ #"bombplanted" ];
    player.pers[ #"firstdeath" ] = game.var_629fe99f[ player.playername ][ #"firstdeath" ];
    player.pers[ #"cur_total_kill_streak" ] = game.var_629fe99f[ player.playername ][ #"cur_total_kill_streak" ];
    player.pers[ #"best_kill_streak" ] = game.var_629fe99f[ player.playername ][ #"best_kill_streak" ];
    player setplayercurrentstreak( player.pers[ #"cur_total_kill_streak" ] );
}

// Namespace sd/sd
// Params 1, eflags: 0x4
// Checksum 0x1a18ea1b, Offset: 0x5e38
// Size: 0xee, Type: bool
function private function_1567ba56( player )
{
    trigger = self.trigger;
    
    if ( !isdefined( self.trigger ) || !isplayer( player ) )
    {
        return false;
    }
    
    if ( player istouching( trigger ) )
    {
        return true;
    }
    
    if ( player.cursorhintent === self )
    {
        return true;
    }
    
    var_19f32842 = trigger.mins * 2;
    var_343f08a2 = trigger.maxs * 2;
    
    if ( player istouchingvolume( trigger.origin, var_19f32842, var_343f08a2 ) )
    {
        return true;
    }
    
    return false;
}

