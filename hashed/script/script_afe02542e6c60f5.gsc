#using script_164a456ce05c3483;
#using script_17dcb1172e441bf6;
#using script_1a9763988299e68d;
#using script_1b01e95a6b5270fd;
#using script_1b0b07ff57d1dde3;
#using script_1ee011cd0961afd7;
#using script_2a5bf5b4a00cee0d;
#using script_350cffecd05ef6cf;
#using script_40f967ad5d18ea74;
#using script_47851dbeea22fe66;
#using script_4d748e58ce25b60c;
#using script_5701633066d199f2;
#using script_5f20d3b434d24884;
#using script_74a56359b7d02ab6;
#using scripts\core_common\animation_shared;
#using scripts\core_common\array_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\math_shared;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\spawning_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;

#namespace namespace_e7f07a2a;

// Namespace namespace_e7f07a2a/namespace_c3d7ed87
// Params 2, eflags: 0x0
// Checksum 0x4df4cfd2, Offset: 0x240
// Size: 0x414
function timeshifterupdate( player, origin )
{
    var_d98803e1 = namespace_ec06fe4a::function_65ee50ba( origin );
    origin = ( origin[ 0 ], origin[ 1 ], var_d98803e1[ 2 ] );
    clock = namespace_ec06fe4a::spawnmodel( origin + ( 0, 0, 12 ) );
    
    if ( !isdefined( clock ) )
    {
        return;
    }
    
    org = namespace_ec06fe4a::spawnmodel( origin + ( 0, 0, 12 ), "tag_origin" );
    
    if ( !isdefined( org ) )
    {
        clock delete();
        return;
    }
    
    org setmodel( "tag_origin" );
    trigger = namespace_ec06fe4a::spawntrigger( "trigger_radius", clock.origin, 1 | 512 | 8, 245, 60 );
    
    if ( !isdefined( trigger ) )
    {
        clock delete();
        org delete();
        return;
    }
    
    clock.targetname = "clock";
    clock setmodel( "zombietron_clock" );
    clock namespace_e32bb68::function_3a59ec34( "evt_doa_pickup_clock_active_lp" );
    clock playloopsound( "zmb_pwup_clock_loop", 2 );
    trigger.targetname = "timeShifterUpdate";
    trigger enablelinkto();
    trigger linkto( clock );
    trigger.opentime = 3000;
    trigger.var_6de1c43b = gettime() + trigger.opentime;
    trigger.radiussq = sqr( 245 );
    timetowait = player namespace_1c2a96f9::function_4808b985( 20 );
    
    /#
    #/
    
    org namespace_83eb6304::function_3ecfde67( "timeshift" );
    clock thread namespace_ec06fe4a::function_2d920b3c( 0.6, 0 );
    trigger thread function_dd66aa61();
    waitresult = player waittilltimeout( timetowait, #"death", #"entering_last_stand", #"doa_exit_taken", #"disconnect" );
    org namespace_83eb6304::turnofffx( "timeshift" );
    org namespace_83eb6304::function_3ecfde67( "timeshift_fade" );
    clock namespace_e32bb68::function_ae271c0b( "evt_doa_pickup_clock_active_lp" );
    clock namespace_e32bb68::function_3a59ec34( "evt_doa_pickup_clock_active_end" );
    wait 1;
    
    if ( isdefined( clock ) )
    {
        clock delete();
    }
    
    if ( isdefined( trigger ) )
    {
        trigger delete();
    }
    
    if ( isdefined( org ) )
    {
        org delete();
    }
}

// Namespace namespace_e7f07a2a/namespace_c3d7ed87
// Params 1, eflags: 0x4
// Checksum 0xc179928b, Offset: 0x660
// Size: 0x146
function private function_91bc1c0d( trigger )
{
    self endon( #"death" );
    self notify( "5c87918814496529" );
    self endon( "5c87918814496529" );
    self.var_d33de52f = 1;
    self namespace_83eb6304::function_3ecfde67( "timeshift_contact" );
    self asmsetanimationrate( 0.65 );
    
    while ( isalive( self ) && isdefined( trigger ) && self istouching( trigger ) )
    {
        /#
        #/
        
        wait 0.5;
    }
    
    self namespace_83eb6304::turnofffx( "timeshift_contact" );
    wait 0.75;
    self asmsetanimationrate( isdefined( self.doa.anim_rate ) ? self.doa.anim_rate : 1 );
    self.var_d33de52f = undefined;
}

// Namespace namespace_e7f07a2a/namespace_c3d7ed87
// Params 0, eflags: 0x4
// Checksum 0xfb5f6e91, Offset: 0x7b0
// Size: 0x200
function private function_dd66aa61()
{
    self endon( #"death" );
    
    while ( true )
    {
        result = self waittill( #"trigger" );
        guy = result.activator;
        
        if ( is_true( guy.var_d33de52f ) )
        {
            continue;
        }
        
        if ( !isactor( guy ) )
        {
            continue;
        }
        
        if ( is_true( guy.var_abe67a20 ) || is_true( guy.boss ) )
        {
            continue;
        }
        
        if ( guy function_dd070839() )
        {
            continue;
        }
        
        if ( guy isragdoll() )
        {
            continue;
        }
        
        if ( !isalive( guy ) || guy.health <= 0 )
        {
            continue;
        }
        
        if ( isdefined( self.var_6de1c43b ) )
        {
            time = gettime();
            
            if ( time < self.var_6de1c43b )
            {
                distsq = distancesquared( guy.origin, self.origin );
                frac = distsq / self.radiussq;
                diff = time - self.birthtime;
                var_9794857f = diff / self.opentime;
                
                if ( frac > var_9794857f )
                {
                    continue;
                }
            }
        }
        
        guy thread function_91bc1c0d( self );
    }
}

