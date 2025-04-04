#using script_164a456ce05c3483;
#using script_17dcb1172e441bf6;
#using script_1a9763988299e68d;
#using script_1b01e95a6b5270fd;
#using script_1b0b07ff57d1dde3;
#using script_1ee011cd0961afd7;
#using script_2a5bf5b4a00cee0d;
#using script_350cffecd05ef6cf;
#using script_3bbf85ab4cb9f3c2;
#using script_40f967ad5d18ea74;
#using script_47851dbeea22fe66;
#using script_4d748e58ce25b60c;
#using script_5701633066d199f2;
#using script_5f20d3b434d24884;
#using script_6b6510e124bad778;
#using script_74a56359b7d02ab6;
#using script_f38dc50f0e82277;
#using scripts\core_common\array_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\math_shared;
#using scripts\core_common\player\player_stats;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\spawning_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;

#namespace namespace_eccff4fb;

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 0, eflags: 0x0
// Checksum 0x71c5c8eb, Offset: 0x278
// Size: 0x244
function init()
{
    level.doa.var_aeb69827 = array( 0, 0, 22, 40, 80, 160, 350, 850, 1500, 2800, 4800 );
    
    if ( is_true( level.doa.hardcoremode ) )
    {
        level.doa.var_aeb69827 = array( 0, 0, 80, 160, 320, 640, 1280, 2040, 3800, 5000, 5000 );
    }
    
    level.doa.var_88be0b68 = 0;
    
    foreach ( item in level.doa.var_aeb69827 )
    {
        level.doa.var_88be0b68 += item;
    }
    
    level.doa.var_c3842d93 = array( 0 );
    total = 0;
    
    for (i = 1; i <= 9; i++) {
        next = level.doa.var_aeb69827[ i + 1 ];
        level.doa.var_c3842d93[ level.doa.var_c3842d93.size ] = total + next;
        total += next;
    }
    
    callback::on_ai_killed( &function_41ce2473 );
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 1, eflags: 0x0
// Checksum 0xcea394c7, Offset: 0x4c8
// Size: 0x54
function function_4c9d8712( var_49838c63 )
{
    assert( var_49838c63 < level.doa.var_c3842d93.size );
    return level.doa.var_c3842d93[ var_49838c63 ];
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 0, eflags: 0x0
// Checksum 0x11cacfd1, Offset: 0x528
// Size: 0x78
function initplayer()
{
    profilestart();
    self.doa.score = spawnstruct();
    self.doa.var_e46a9e57 = spawnstruct();
    self resetplayer();
    self.doa.score.var_4e33830e = 1;
    profilestop();
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 0, eflags: 0x0
// Checksum 0x551a5189, Offset: 0x5a8
// Size: 0x26c
function resetplayer()
{
    self.doa.score.points = 0;
    self.doa.score.var_1397c196 = 0;
    self.doa.score.var_96798a01 = 0;
    self.doa.score.kills = 0;
    self.doa.score.killstotal = 0;
    self.doa.score.var_194c59ae = 1;
    self.doa.score.var_33ae24 = 0;
    self.doa.score.var_c31799a1 = 0;
    self.doa.score.gems = 0;
    self.doa.score.var_a928c52e = 0;
    self.doa.score.var_e49e3de7 = function_4c9d8712( self.doa.score.var_194c59ae );
    self.doa.score.var_6ec1ad9d = 0;
    self.doa.score.deaths = 0;
    self.doa.score.var_267d0586 = 0;
    self.doa.score.keys = 0;
    self.doa.score.bombs = 1;
    self.doa.score.boosts = 2;
    self.doa.score.lives = 3;
    self.doa.score.var_5eac81d0 = 200000;
    
    if ( is_true( level.doa.hardcoremode ) )
    {
        self.doa.score.var_5eac81d0 = 1000000;
    }
    
    namespace_d2efac9a::function_d717ee7b();
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 0, eflags: 0x0
// Checksum 0x374517c, Offset: 0x820
// Size: 0x45e
function function_4ae6488b()
{
    self notify( "6e6760a4e3171ad6" );
    self endon( "6e6760a4e3171ad6" );
    self endon( #"disconnect" );
    level endon( #"game_over" );
    self.doa.score.var_b5acb7a2 = 0;
    self.doa.score.var_14b9da0e = 0;
    self.doa.score.var_a4105a25 = 0;
    
    for (i = 0; i < 60; i++) {
        var_49787e19[ i ] = 0;
    }
    
    self.doa.score.var_8bd11e9c = 0;
    self.doa.score.var_2b624d62 = 0;
    self.doa.score.var_ccfd3a86 = 0;
    
    for (i = 0; i < 60; i++) {
        var_bf384b50[ i ] = 0;
    }
    
    idx = 0;
    nextidx = idx + 1;
    loops = 0;
    var_6399b44b = 0;
    var_9225fc4e = 0;
    var_fd869b30 = 0;
    var_cd4c12da = 0;
    samples = 0;
    var_e7a7a8d9 = self.doa.score.points;
    lastkills = self.doa.score.killstotal;
    
    while ( true )
    {
        wait 1;
        var_d7ab2705 = self.doa.score.points - var_e7a7a8d9;
        var_e7a7a8d9 = self.doa.score.points;
        var_ebf015ab = self.doa.score.killstotal - lastkills;
        lastkills = self.doa.score.killstotal;
        
        if ( level.doa.world_state != 0 )
        {
            continue;
        }
        
        if ( isdefined( level.doa.var_6f3d327 ) )
        {
            continue;
        }
        
        if ( level flag::get( "doa_round_spawning" ) == 0 )
        {
            continue;
        }
        
        var_49787e19[ idx ] = var_d7ab2705;
        var_6399b44b -= var_49787e19[ nextidx ];
        var_6399b44b += var_49787e19[ idx ];
        var_bf384b50[ idx ] = var_ebf015ab;
        var_9225fc4e -= var_bf384b50[ nextidx ];
        var_9225fc4e += var_bf384b50[ idx ];
        idx = ( idx + 1 ) % 60;
        nextidx = ( idx + 1 ) % 60;
        samples++;
        
        if ( var_6399b44b > self.doa.score.var_a4105a25 )
        {
            self.doa.score.var_a4105a25 = var_6399b44b;
        }
        
        if ( var_9225fc4e > self.doa.score.var_ccfd3a86 )
        {
            self.doa.score.var_ccfd3a86 = var_9225fc4e;
        }
        
        self.doa.score.var_b5acb7a2 = var_6399b44b;
        self.doa.score.var_8bd11e9c = var_9225fc4e;
        var_fd869b30 += var_6399b44b;
        var_cd4c12da += var_9225fc4e;
        self.doa.score.var_14b9da0e = var_fd869b30 / samples;
        self.doa.score.var_2b624d62 = var_cd4c12da / samples;
    }
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 2, eflags: 0x0
// Checksum 0x8d5f086d, Offset: 0xc88
// Size: 0xc4
function function_6c15a74e( amount = 1, commit = 1 )
{
    self.doa.score.keys += amount;
    assert( self.doa.score.keys <= self function_9d6bf0a9(), "<dev string:x38>" );
    namespace_d2efac9a::function_6c15a74e( amount, commit );
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 2, eflags: 0x0
// Checksum 0x2aa833b1, Offset: 0xd58
// Size: 0xb4
function function_849a9028( amount = 1, commit = 1 )
{
    self.doa.score.keys -= amount;
    assert( self.doa.score.keys >= 0, "<dev string:x4d>" );
    namespace_d2efac9a::function_849a9028( amount, commit );
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 2, eflags: 0x0
// Checksum 0x2d784d55, Offset: 0xe18
// Size: 0x1f2
function enemykill( *type, score = 100 )
{
    if ( !isdefined( self.doa.score ) )
    {
        return;
    }
    
    var_194c59ae = self.doa.score.var_194c59ae;
    
    if ( is_true( self.doa.infps ) && level.doa.world_state == 0 && !is_true( level.doa.var_318aa67a ) )
    {
        if ( var_194c59ae < 4 )
        {
            var_194c59ae = 4;
        }
    }
    
    self.doa.score.var_1397c196 += score * var_194c59ae;
    
    if ( self.doa.score.var_1397c196 > 500000000 )
    {
        self.doa.score.var_1397c196 = 500000000;
    }
    
    self.doa.score.var_96798a01 += score * self.doa.score.var_194c59ae;
    self.doa.var_e46a9e57.var_8f4c7e23 += score * self.doa.score.var_194c59ae;
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 2, eflags: 0x0
// Checksum 0x2dfe863b, Offset: 0x1018
// Size: 0x3be
function function_9e8690e0( item, type )
{
    if ( !isdefined( self.doa.score ) )
    {
        return;
    }
    
    score = 0;
    gems = 0.2;
    
    switch ( type )
    {
        case 1:
            score = 500;
            gems = 1;
            break;
        case 2:
            score = 250;
            break;
        case 3:
            score = 150;
            break;
        case 5:
            score = 100;
            break;
        case 4:
            score = 75;
            break;
        case 7:
            score = 50;
            break;
        case 6:
            score = 25;
            break;
        case 8:
            var_6cec06ef = int( math::clamp( item.scale, 1, 10 ) );
            score = 250 * var_6cec06ef;
            gems = item.var_d34e5888;
            self.headshots++;
            self.doa.score.var_c31799a1++;
            self.doa.score.var_33ae24++;
            
            if ( item.scale > 8.5 )
            {
                self thread namespace_6e90e490::function_47e11416( 4 );
            }
            
            break;
    }
    
    var_194c59ae = self.doa.score.var_194c59ae;
    
    if ( is_true( self.doa.infps ) && level.doa.world_state == 0 && !is_true( level.doa.var_318aa67a ) )
    {
        if ( var_194c59ae < 4 )
        {
            var_194c59ae = 4;
        }
    }
    
    self.doa.score.var_1397c196 += score * var_194c59ae;
    self.doa.score.var_96798a01 += score * var_194c59ae;
    self.doa.var_e46a9e57.var_8f4c7e23 += score * var_194c59ae;
    
    if ( self.doa.score.var_1397c196 > 500000000 )
    {
        self.doa.score.var_1397c196 = 500000000;
    }
    
    self.doa.score.var_a928c52e += gems;
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 0, eflags: 0x0
// Checksum 0x80bd4b91, Offset: 0x13e0
// Size: 0x7c
function function_f6ac4585()
{
    self.doa.score.deaths++;
    self.doa.score.var_267d0586++;
    self.doa.var_e46a9e57.var_dded67ba++;
    
    if ( !is_true( level.var_40d076a7 ) )
    {
        self thread function_1dd66aa1();
    }
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 0, eflags: 0x0
// Checksum 0xd43908b1, Offset: 0x1468
// Size: 0x696
function function_1dd66aa1()
{
    self notify( "d2a984f7d17f687" );
    self endon( "d2a984f7d17f687" );
    self endon( #"disconnect" );
    self.doa.var_ecfd5bbd = 1;
    deathorigin = self.origin;
    var_8508d81d = math::clamp( int( self.doa.score.gems / 5 ), 0, 30 );
    var_84128236 = 2;
    
    if ( var_8508d81d > 0 )
    {
        var_70c7d050 = int( self.doa.score.gems / var_8508d81d );
        var_817e0b00 = function_4c9d8712( self.doa.score.var_194c59ae - 1 );
        var_6f324de4 = var_70c7d050;
        
        if ( is_true( level.doa.hardcoremode ) )
        {
            while ( var_8508d81d > 0 )
            {
                level namespace_dfc652ee::function_b8f6a8cd( undefined, deathorigin, 1, undefined, 1 );
                waitframe( 1 );
                var_8508d81d--;
            }
            
            self.doa.score.gems = 0;
            self.doa.score.var_194c59ae = self namespace_1c2a96f9::function_d438e371() ? 2 : 1;
            self.doa.score.var_6ec1ad9d = 0;
        }
        else
        {
            while ( self.doa.score.gems > 0 && is_true( self.laststand ) )
            {
                decrement = int( self.doa.score.var_194c59ae * self.doa.score.var_194c59ae * self.doa.score.var_194c59ae / 9 ) + self.doa.score.var_194c59ae;
                self.doa.score.gems -= decrement;
                
                if ( self.doa.score.gems < 0 )
                {
                    self.doa.score.gems = 0;
                }
                
                var_6f324de4 -= decrement;
                
                if ( var_6f324de4 <= 0 )
                {
                    var_6f324de4 = var_70c7d050;
                    level namespace_dfc652ee::function_b8f6a8cd( undefined, deathorigin, 1, undefined, 1 );
                }
                
                if ( self.doa.score.gems <= var_817e0b00 )
                {
                    self.doa.score.var_194c59ae--;
                    
                    if ( self.doa.score.var_194c59ae < 1 )
                    {
                        self.doa.score.var_194c59ae = 1;
                    }
                    
                    if ( self namespace_1c2a96f9::function_d438e371() && self.doa.score.var_194c59ae < 2 )
                    {
                        self.doa.score.var_194c59ae = 2;
                        self.doa.score.gems = function_4c9d8712( 1 );
                        break;
                    }
                    
                    self.doa.score.var_e49e3de7 = function_4c9d8712( self.doa.score.var_194c59ae );
                    var_817e0b00 = function_4c9d8712( self.doa.score.var_194c59ae - 1 );
                    self.doa.score.var_6ec1ad9d = var_817e0b00;
                }
                
                waitframe( 1 );
            }
        }
    }
    
    if ( self.doa.score.gems <= 0 )
    {
        self.doa.score.gems = 0;
        self.doa.score.var_194c59ae = self namespace_1c2a96f9::function_d438e371() ? 2 : 1;
        self.doa.score.var_6ec1ad9d = 0;
    }
    
    self.doa.score.var_a928c52e = self.doa.score.gems;
    self.doa.score.var_e49e3de7 = function_4c9d8712( self.doa.score.var_194c59ae );
    
    if ( self.doa.score.var_6ec1ad9d == self.doa.score.var_e49e3de7 )
    {
        self.doa.score.var_6ec1ad9d = self.doa.score.var_e49e3de7 - 1;
    }
    
    self.doa.var_ecfd5bbd = undefined;
    self notify( #"hash_4e4e55afb99d1a6b" );
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 1, eflags: 0x0
// Checksum 0x9ff04a9d, Offset: 0x1b08
// Size: 0x206
function function_41ce2473( parms )
{
    if ( isdefined( parms.eattacker ) && isplayer( parms.eattacker ) )
    {
        parms.eattacker.doa.score.kills++;
        parms.eattacker.doa.score.killstotal++;
        parms.eattacker.doa.var_e46a9e57.var_832beab2++;
        
        if ( parms.eattacker.kills < 1048576 - 1 )
        {
            parms.eattacker.kills++;
        }
        
        time = gettime();
        parms.eattacker.doa.var_9f897c4d = time;
        
        if ( !is_true( self.shieldhit ) )
        {
            parms.eattacker.doa.var_de92b533 = 1;
            parms.eattacker.doa.var_e45f072b = time;
            
            if ( parms.eattacker.doa.var_b8232cd0 === level.doa.roundnumber )
            {
                parms.eattacker.doa.var_c739e4eb += 1;
                return;
            }
            
            parms.eattacker.doa.var_b8232cd0 = level.doa.roundnumber;
            parms.eattacker.doa.var_c739e4eb = 1;
        }
    }
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 0, eflags: 0x0
// Checksum 0x323bfc0d, Offset: 0x1d18
// Size: 0x1a
function function_5ce79923()
{
    return self.doa.score.points;
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 1, eflags: 0x0
// Checksum 0x723ccde9, Offset: 0x1d40
// Size: 0x144, Type: bool
function function_f3b382da( me )
{
    players = namespace_7f5aeb59::function_23e1f90f();
    
    if ( players.size == 1 )
    {
        return false;
    }
    
    if ( me.doa.score.points == 0 )
    {
        return false;
    }
    
    if ( me.doa.score.points == 500000000 )
    {
        return true;
    }
    
    foreach ( guy in players )
    {
        if ( guy == me )
        {
            continue;
        }
        
        if ( guy.doa.score.points >= me.doa.score.points )
        {
            return false;
        }
    }
    
    return true;
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 0, eflags: 0x0
// Checksum 0xdd076655, Offset: 0x1e90
// Size: 0x2b2
function function_619ae3a0()
{
    self endon( #"disconnect" );
    var_ca445d97 = self function_77cbfb85() - self.doa.score.lives;
    var_6bd539e9 = self function_4091beb5() - self.doa.score.bombs;
    var_4c3457f5 = self function_fd3d9ee0() - self.doa.score.boosts;
    var_363e80d7 = self function_9d6bf0a9() - self.doa.score.keys;
    self namespace_83eb6304::function_3ecfde67( "lightningStrike" );
    self namespace_e32bb68::function_3a59ec34( "evt_doa_lightning_bolt" );
    
    while ( var_ca445d97 && isdefined( self ) )
    {
        level thread namespace_dfc652ee::itemspawn( namespace_dfc652ee::function_6265bde4( "zombietron_extra_life" ), self.origin, undefined, undefined, 1, undefined, undefined, undefined, self );
        var_ca445d97--;
        wait 1;
    }
    
    while ( var_6bd539e9 && isdefined( self ) )
    {
        level thread namespace_dfc652ee::itemspawn( namespace_dfc652ee::function_6265bde4( "zombietron_nuke" ), self.origin, undefined, undefined, 1, undefined, undefined, undefined, self );
        var_6bd539e9--;
        wait 1;
    }
    
    while ( var_4c3457f5 && isdefined( self ) )
    {
        level thread namespace_dfc652ee::itemspawn( namespace_dfc652ee::function_6265bde4( "zombietron_boost" ), self.origin, undefined, undefined, 1, undefined, undefined, undefined, self );
        var_4c3457f5--;
        wait 1;
    }
    
    while ( var_363e80d7 && isdefined( self ) )
    {
        level thread namespace_dfc652ee::itemspawn( namespace_dfc652ee::function_6265bde4( "zombietron_skeleton_key" ), self.origin, undefined, undefined, 1, undefined, undefined, undefined, self );
        var_363e80d7--;
        wait 1;
    }
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 0, eflags: 0x0
// Checksum 0xf81c0690, Offset: 0x2150
// Size: 0x90
function function_8ff4d53f()
{
    foreach ( player in getplayers() )
    {
        player thread function_619ae3a0();
    }
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 0, eflags: 0x0
// Checksum 0xdf092ee, Offset: 0x21e8
// Size: 0x81a
function function_7752515d()
{
    if ( !isdefined( self.doa ) || !isdefined( self.doa.score ) )
    {
        return;
    }
    
    if ( !is_true( self.doa.var_ecfd5bbd ) && self.doa.score.gems < self.doa.score.var_a928c52e )
    {
        delta = self.doa.score.var_a928c52e - self.doa.score.gems;
        
        if ( delta >= self.doa.score.var_194c59ae )
        {
            increment = self.doa.score.var_194c59ae;
        }
        else
        {
            increment = 0.05;
        }
        
        self.doa.score.gems += increment;
        
        if ( self.doa.score.gems > level.doa.var_88be0b68 )
        {
            self.doa.score.gems = level.doa.var_88be0b68;
            
            if ( !is_true( level.doa.var_9da5bdfd ) )
            {
                level.doa.var_9da5bdfd = 1;
                level thread function_8ff4d53f();
                level doa_banner::function_7a0e5387( 58 );
                namespace_7f5aeb59::function_f8645db3( getdvarint( #"hash_654342a2b1ff63d4", 2500 ) );
            }
        }
        
        if ( self.doa.score.gems > self.doa.score.var_e49e3de7 )
        {
            if ( self.doa.score.var_194c59ae <= 9 )
            {
                self.doa.score.var_6ec1ad9d = self.doa.score.var_e49e3de7;
                self.doa.score.var_e49e3de7 = function_4c9d8712( self.doa.score.var_194c59ae + 1 );
            }
            
            self.doa.score.var_194c59ae++;
            
            if ( self.doa.score.var_194c59ae >= 9 )
            {
                self.doa.score.var_194c59ae = 9;
            }
            
            self namespace_d2efac9a::function_a9f863ca( self.doa.score.var_194c59ae );
        }
    }
    
    if ( self.doa.score.points < self.doa.score.var_1397c196 )
    {
        delta = self.doa.score.var_1397c196 - self.doa.score.points;
        frac = int( 0.025 * delta );
        frac = int( frac / 25 ) * 25;
        
        if ( frac < 25 )
        {
            frac = 25;
        }
        
        self.doa.score.points += frac;
        
        if ( self.doa.score.points > self.doa.score.var_1397c196 )
        {
            self.doa.score.points = self.doa.score.var_1397c196;
        }
        
        if ( self.doa.score.points > self.doa.score.var_5eac81d0 )
        {
            if ( self.doa.score.lives < self function_77cbfb85() )
            {
                level namespace_dfc652ee::itemspawn( namespace_dfc652ee::function_6265bde4( "zombietron_extra_life" ), self.origin, undefined, undefined, 1, undefined, undefined, undefined, self );
            }
            else
            {
                roll = randomint( 100 );
                
                if ( roll < 30 && namespace_ec06fe4a::function_38de0ce8() <= 44 )
                {
                    level namespace_dfc652ee::itemspawn( namespace_dfc652ee::function_6265bde4( "zombietron_skeleton_fb" ), self.origin, undefined, undefined, 1, undefined, undefined, undefined, self );
                }
                else if ( roll < 60 )
                {
                    level namespace_dfc652ee::itemspawn( namespace_dfc652ee::function_6265bde4( "zombietron_boxing_glove" ), self.origin, undefined, undefined, 1, undefined, undefined, undefined, self );
                }
                else
                {
                    level namespace_dfc652ee::itemspawn( namespace_dfc652ee::function_6265bde4( "zombietron_coat_of_arms" ), self.origin, undefined, undefined, 1, undefined, undefined, undefined, self );
                }
            }
            
            if ( self namespace_1c2a96f9::function_b01c3b20() )
            {
                self.doa.score.var_5eac81d0 += is_true( level.doa.hardcoremode ) ? 250000 : 150000;
            }
            else
            {
                self.doa.score.var_5eac81d0 += is_true( level.doa.hardcoremode ) ? 1000000 : 200000;
            }
        }
    }
    
    if ( self.doa.score.points > 500000000 )
    {
        self.doa.score.points = 500000000;
    }
    
    self.score = int( self.doa.score.points / 25 );
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 0, eflags: 0x0
// Checksum 0x14ff88df, Offset: 0x2a10
// Size: 0x28
function function_77cbfb85()
{
    if ( self namespace_1c2a96f9::function_b01c3b20() )
    {
        return 10;
    }
    
    return 9;
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 0, eflags: 0x0
// Checksum 0x59cf4997, Offset: 0x2a40
// Size: 0x28
function function_4091beb5()
{
    if ( self namespace_1c2a96f9::function_8a19ece() )
    {
        return 10;
    }
    
    return 9;
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 0, eflags: 0x0
// Checksum 0x4f01dcbb, Offset: 0x2a70
// Size: 0x28
function function_9d6bf0a9()
{
    if ( self namespace_1c2a96f9::function_d438e371() )
    {
        return 10;
    }
    
    return 9;
}

// Namespace namespace_eccff4fb/namespace_eccff4fb
// Params 0, eflags: 0x0
// Checksum 0x5c510c43, Offset: 0x2aa0
// Size: 0x28
function function_fd3d9ee0()
{
    if ( self namespace_1c2a96f9::function_d17f9bcb() )
    {
        return 10;
    }
    
    return 9;
}

