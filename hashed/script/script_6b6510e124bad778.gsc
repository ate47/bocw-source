#using script_164a456ce05c3483;
#using script_17dcb1172e441bf6;
#using script_1a9763988299e68d;
#using script_1b01e95a6b5270fd;
#using script_1b0b07ff57d1dde3;
#using script_1ce46999727f2f2b;
#using script_1ee011cd0961afd7;
#using script_2a5bf5b4a00cee0d;
#using script_40f967ad5d18ea74;
#using script_47851dbeea22fe66;
#using script_4d748e58ce25b60c;
#using script_5701633066d199f2;
#using script_5f20d3b434d24884;
#using script_74a56359b7d02ab6;
#using scripts\core_common\array_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\hud_message_shared;
#using scripts\core_common\math_shared;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\spawning_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;

#namespace namespace_6e90e490;

// Namespace namespace_6e90e490/namespace_6e90e490
// Params 0, eflags: 0x0
// Checksum 0x73908d6b, Offset: 0x460
// Size: 0x87c
function init()
{
    for (i = 1; i <= 4; i++) {
        toks = strtok( "doaGlobal.player$.hudVisible", "$" );
        model = toks[ 0 ] + i + toks[ 1 ];
        clientfield::function_5b7d846d( model, 1, 1, "int" );
        toks = strtok( "doaGlobal.player$.bombs", "$" );
        model = toks[ 0 ] + i + toks[ 1 ];
        clientfield::function_5b7d846d( model, 1, 4, "int" );
        toks = strtok( "doaGlobal.player$.boosts", "$" );
        model = toks[ 0 ] + i + toks[ 1 ];
        clientfield::function_5b7d846d( model, 1, 4, "int" );
        toks = strtok( "doaGlobal.player$.keys", "$" );
        model = toks[ 0 ] + i + toks[ 1 ];
        clientfield::function_5b7d846d( model, 1, 4, "int" );
        toks = strtok( "doaGlobal.player$.lives", "$" );
        model = toks[ 0 ] + i + toks[ 1 ];
        clientfield::function_5b7d846d( model, 1, 4, "int" );
        toks = strtok( "doaGlobal.player$.score", "$" );
        model = toks[ 0 ] + i + toks[ 1 ];
        clientfield::function_5b7d846d( model, 1, 30, "int" );
        toks = strtok( "doaGlobal.player$.health", "$" );
        model = toks[ 0 ] + i + toks[ 1 ];
        clientfield::function_5b7d846d( model, 1, 8, "float" );
        toks = strtok( "doaGlobal.player$.scoreMultiplier", "$" );
        model = toks[ 0 ] + i + toks[ 1 ];
        clientfield::function_5b7d846d( model, 1, 4, "int" );
        toks = strtok( "doaGlobal.player$.scoreMultiProgressBar", "$" );
        model = toks[ 0 ] + i + toks[ 1 ];
        clientfield::function_5b7d846d( model, 1, 8, "float" );
        toks = strtok( "doaGlobal.player$.weaponType", "$" );
        model = toks[ 0 ] + i + toks[ 1 ];
        clientfield::function_5b7d846d( model, 1, 3, "int" );
        toks = strtok( "doaGlobal.player$.weaponLevel", "$" );
        model = toks[ 0 ] + i + toks[ 1 ];
        clientfield::function_5b7d846d( model, 1, 2, "int" );
        toks = strtok( "doaGlobal.player$.weaponDecayBar", "$" );
        model = toks[ 0 ] + i + toks[ 1 ];
        clientfield::function_5b7d846d( model, 1, 8, "float" );
        toks = strtok( "doaGlobal.player$.leader", "$" );
        model = toks[ 0 ] + i + toks[ 1 ];
        clientfield::function_5b7d846d( model, 1, 1, "int" );
        toks = strtok( "doaGlobal.player$.respawnTimer", "$" );
        model = toks[ 0 ] + i + toks[ 1 ];
        clientfield::function_5b7d846d( model, 1, 8, "float" );
        toks = strtok( "doaGlobal.player$.respawnSeconds", "$" );
        model = toks[ 0 ] + i + toks[ 1 ];
        clientfield::function_5b7d846d( model, 1, 16, "int" );
        toks = strtok( "doaGlobal.player$.respawnHelpers", "$" );
        model = toks[ 0 ] + i + toks[ 1 ];
        clientfield::function_5b7d846d( model, 1, 2, "int" );
    }
    
    clientfield::register( "scriptmover", "set_health_bar", 1, 8, "int" );
    clientfield::register( "scriptmover", "show_health_bar", 1, 1, "int" );
    clientfield::register( "actor", "set_health_bar", 1, 8, "int" );
    clientfield::register( "actor", "show_health_bar", 1, 1, "int" );
    clientfield::register( "scriptmover", "set_text_bubble", 1, 6, "int" );
    clientfield::register( "actor", "set_text_bubble", 1, 6, "int" );
    clientfield::register( "allplayers", "set_text_bubble", 1, 6, "int" );
    clientfield::register( "scriptmover", "setPlayerOwner", 1, 3, "int" );
    clientfield::register( "scriptmover", "set_name_bubble", 1, 1, "int" );
    clientfield::register( "toplayer", "showPlayerHint", 1, 4, "int" );
    clientfield::register( "scriptmover", "setTutorialEnt", 1, 1, "int" );
    clientfield::register( "toplayer", "setCompassVis", 1, 1, "counter" );
}

// Namespace namespace_6e90e490/namespace_6e90e490
// Params 0, eflags: 0x0
// Checksum 0xe1cbed34, Offset: 0xce8
// Size: 0xac
function function_db945ce9()
{
    waitframe( 1 );
    function_fa6f7ba7();
    
    for (i = 1; i <= 4; i++) {
        toks = strtok( "doaGlobal.player$.hudVisible", "$" );
        model = toks[ 0 ] + i + toks[ 1 ];
        level clientfield::set_world_uimodel( model, 0 );
    }
}

// Namespace namespace_6e90e490/namespace_6e90e490
// Params 0, eflags: 0x0
// Checksum 0x764203f7, Offset: 0xda0
// Size: 0x61c
function function_3332c6a1()
{
    toks = strtok( "doaGlobal.player$.hudVisible", "$" );
    self.doa.score.var_d252ca7f = toks[ 0 ] + self.doa.entnum + 1 + toks[ 1 ];
    toks = strtok( "doaGlobal.player$.bombs", "$" );
    self.doa.score.var_37920e93 = toks[ 0 ] + self.doa.entnum + 1 + toks[ 1 ];
    toks = strtok( "doaGlobal.player$.boosts", "$" );
    self.doa.score.var_e3acbd27 = toks[ 0 ] + self.doa.entnum + 1 + toks[ 1 ];
    toks = strtok( "doaGlobal.player$.keys", "$" );
    self.doa.score.var_27660984 = toks[ 0 ] + self.doa.entnum + 1 + toks[ 1 ];
    toks = strtok( "doaGlobal.player$.lives", "$" );
    self.doa.score.var_3c0cc2d1 = toks[ 0 ] + self.doa.entnum + 1 + toks[ 1 ];
    toks = strtok( "doaGlobal.player$.score", "$" );
    self.doa.score.var_234fa0ba = toks[ 0 ] + self.doa.entnum + 1 + toks[ 1 ];
    toks = strtok( "doaGlobal.player$.health", "$" );
    self.doa.score.var_b45b1692 = toks[ 0 ] + self.doa.entnum + 1 + toks[ 1 ];
    toks = strtok( "doaGlobal.player$.scoreMultiplier", "$" );
    self.doa.score.var_66579589 = toks[ 0 ] + self.doa.entnum + 1 + toks[ 1 ];
    toks = strtok( "doaGlobal.player$.scoreMultiProgressBar", "$" );
    self.doa.score.var_16ec5307 = toks[ 0 ] + self.doa.entnum + 1 + toks[ 1 ];
    toks = strtok( "doaGlobal.player$.weaponType", "$" );
    self.doa.score.var_52144f6f = toks[ 0 ] + self.doa.entnum + 1 + toks[ 1 ];
    toks = strtok( "doaGlobal.player$.weaponLevel", "$" );
    self.doa.score.var_18b2a561 = toks[ 0 ] + self.doa.entnum + 1 + toks[ 1 ];
    toks = strtok( "doaGlobal.player$.weaponDecayBar", "$" );
    self.doa.score.var_a5236080 = toks[ 0 ] + self.doa.entnum + 1 + toks[ 1 ];
    toks = strtok( "doaGlobal.player$.leader", "$" );
    self.doa.score.var_68162a1e = toks[ 0 ] + self.doa.entnum + 1 + toks[ 1 ];
    toks = strtok( "doaGlobal.player$.respawnTimer", "$" );
    self.doa.score.var_5cb9ca20 = toks[ 0 ] + self.doa.entnum + 1 + toks[ 1 ];
    toks = strtok( "doaGlobal.player$.respawnSeconds", "$" );
    self.doa.score.var_85987bae = toks[ 0 ] + self.doa.entnum + 1 + toks[ 1 ];
    toks = strtok( "doaGlobal.player$.respawnHelpers", "$" );
    self.doa.score.var_ac6c4aee = toks[ 0 ] + self.doa.entnum + 1 + toks[ 1 ];
    self updatehud();
}

// Namespace namespace_6e90e490/namespace_6e90e490
// Params 0, eflags: 0x0
// Checksum 0x525206d, Offset: 0x13c8
// Size: 0x38
function function_fa6f7ba7()
{
    level clientfield::set_world_uimodel( "DOA_GLOBALUIMODEL_COUNTDOWN", 0 );
    level notify( #"hash_4254d6c79b4ea2bc" );
}

// Namespace namespace_6e90e490/namespace_6e90e490
// Params 1, eflags: 0x0
// Checksum 0xa18a4a99, Offset: 0x1408
// Size: 0x144
function function_c937e51f( var_f40cf449 )
{
    assert( var_f40cf449 < 2048, "<dev string:x38>" );
    level endon( #"game_over", #"hash_4254d6c79b4ea2bc" );
    self notify( "25862a390086cba3" );
    self endon( "25862a390086cba3" );
    level clientfield::set_world_uimodel( "DOA_GLOBALUIMODEL_COUNTDOWN", var_f40cf449 );
    
    while ( var_f40cf449 > 0 )
    {
        result = level waittilltimeout( 1, #"hash_d075b46833ffc79" );
        
        if ( result._notify == #"timeout" )
        {
            var_f40cf449--;
            
            if ( !is_true( level.var_efd3338c ) )
            {
                level clientfield::set_world_uimodel( "DOA_GLOBALUIMODEL_COUNTDOWN", var_f40cf449 );
            }
            
            continue;
        }
        
        var_f40cf449 = 0;
    }
    
    function_fa6f7ba7();
}

// Namespace namespace_6e90e490/namespace_6e90e490
// Params 0, eflags: 0x0
// Checksum 0x6c6217a0, Offset: 0x1558
// Size: 0x6ac
function updatehud()
{
    if ( !isdefined( self.doa ) || !isdefined( self.doa.score ) )
    {
        return;
    }
    
    level clientfield::set_world_uimodel( self.doa.score.var_d252ca7f, 1 );
    level clientfield::set_world_uimodel( self.doa.score.var_37920e93, self.doa.score.bombs );
    level clientfield::set_world_uimodel( self.doa.score.var_e3acbd27, self.doa.score.boosts );
    level clientfield::set_world_uimodel( self.doa.score.var_27660984, self.doa.score.keys );
    level clientfield::set_world_uimodel( self.doa.score.var_3c0cc2d1, self.doa.score.lives );
    level clientfield::set_world_uimodel( self.doa.score.var_234fa0ba, self.doa.score.points );
    level clientfield::set_world_uimodel( self.doa.score.var_b45b1692, self.health / 150 );
    var_194c59ae = self.doa.score.var_194c59ae;
    
    if ( is_true( self.doa.infps ) && level.doa.world_state == 0 && !is_true( level.doa.var_318aa67a ) )
    {
        if ( var_194c59ae < 4 )
        {
            var_194c59ae = 4;
        }
    }
    
    level clientfield::set_world_uimodel( self.doa.score.var_66579589, var_194c59ae );
    level clientfield::set_world_uimodel( self.doa.score.var_52144f6f, self.doa.weapontype );
    level clientfield::set_world_uimodel( self.doa.score.var_18b2a561, self.doa.weaponlevel );
    level clientfield::set_world_uimodel( self.doa.score.var_a5236080, self.doa.var_d8955419 / 1024 );
    level clientfield::set_world_uimodel( self.doa.score.var_68162a1e, namespace_eccff4fb::function_f3b382da( self ) );
    var_20367411 = self.doa.score.gems - self.doa.score.var_6ec1ad9d;
    var_fd0181fe = self.doa.score.var_e49e3de7 - self.doa.score.var_6ec1ad9d;
    level clientfield::set_world_uimodel( self.doa.score.var_16ec5307, var_20367411 / var_fd0181fe );
    
    if ( is_true( self.doa.respawning ) )
    {
        var_2e0e9ad1 = self.doa.var_ac8a92d4 / self.doa.var_22e62f63;
        var_a40917f6 = ( 1 - var_2e0e9ad1 ) * self.doa.var_22e62f63 / 1000;
        level clientfield::set_world_uimodel( self.doa.score.var_5cb9ca20, 1 - var_2e0e9ad1 );
        var_41a785dc = int( var_a40917f6 );
        var_b096e444 = var_a40917f6 - var_41a785dc;
        var_be72147f = int( ( var_41a785dc << 8 ) + var_b096e444 * 255 );
        level clientfield::set_world_uimodel( self.doa.score.var_85987bae, var_be72147f );
        self.health = int( var_2e0e9ad1 * self.maxhealth );
        level clientfield::set_world_uimodel( self.doa.score.var_ac6c4aee, self.doa.var_f64d2ac0 );
        return;
    }
    
    level clientfield::set_world_uimodel( self.doa.score.var_5cb9ca20, 0 );
    level clientfield::set_world_uimodel( self.doa.score.var_85987bae, 0 );
    level clientfield::set_world_uimodel( self.doa.score.var_ac6c4aee, 0 );
}

// Namespace namespace_6e90e490/namespace_6e90e490
// Params 1, eflags: 0x0
// Checksum 0xf6ddb85e, Offset: 0x1c10
// Size: 0x6c
function function_9aff0a25( var_9ba84610 )
{
    self endon( #"disconnect" );
    self clientfield::set_to_player( "showPlayerHint", var_9ba84610 );
    util::wait_network_frame();
    self clientfield::set_to_player( "showPlayerHint", 0 );
}

// Namespace namespace_6e90e490/namespace_6e90e490
// Params 2, eflags: 0x0
// Checksum 0xef772df9, Offset: 0x1c88
// Size: 0xd4
function showhint( var_9ba84610, set = 1 )
{
    level.doa.hintmask |= 1 << var_9ba84610;
    
    if ( set && isdefined( self.doa ) )
    {
        if ( !isdefined( self.doa.hintmask ) )
        {
            self.doa.hintmask = 0;
        }
        
        self.doa.hintmask |= 1 << var_9ba84610;
    }
    
    self thread function_9aff0a25( var_9ba84610 );
}

// Namespace namespace_6e90e490/namespace_6e90e490
// Params 3, eflags: 0x0
// Checksum 0x88700326, Offset: 0x1d68
// Size: 0xf0
function function_c28bc3eb( var_9ba84610, set = 1, delay = 0 )
{
    level endon( #"game_over" );
    
    if ( delay > 0 )
    {
        wait delay;
    }
    
    foreach ( player in getplayers() )
    {
        player showhint( var_9ba84610, set );
    }
}

// Namespace namespace_6e90e490/namespace_6e90e490
// Params 4, eflags: 0x0
// Checksum 0x7babb476, Offset: 0x1e60
// Size: 0x1d2
function function_47e11416( id, time = 4, force = 0, var_84f4f42e = 0 )
{
    if ( !isdefined( self.doa ) )
    {
        self.doa = {};
    }
    
    if ( !isdefined( self.doa.var_578b6ad4 ) )
    {
        self.doa.var_578b6ad4 = 0;
    }
    
    if ( !force && is_true( self.doa.var_91fab440 ) )
    {
        return;
    }
    
    if ( !force && gettime() < self.doa.var_578b6ad4 )
    {
        return;
    }
    
    while ( isdefined( self ) && is_true( self.doa.var_91fab440 ) )
    {
        wait 0.5;
    }
    
    if ( isdefined( self ) )
    {
        self.doa.var_91fab440 = id;
        self clientfield::set( "set_text_bubble", id );
    }
    else
    {
        return;
    }
    
    if ( !is_true( var_84f4f42e ) )
    {
        self.doa.var_578b6ad4 = gettime() + 10000 + time * 1000;
    }
    
    wait time;
    
    if ( isdefined( self ) )
    {
        self clientfield::set( "set_text_bubble", 0 );
        self.doa.var_91fab440 = undefined;
    }
}

