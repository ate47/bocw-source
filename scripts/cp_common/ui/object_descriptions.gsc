#using script_35ae72be7b4fec10;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;

#namespace object_descriptions;

// Namespace object_descriptions/object_descriptions
// Params 0, eflags: 0x5
// Checksum 0x6808cedb, Offset: 0x140
// Size: 0x3c
function private autoexec __init__system__()
{
    system::register( #"object_descriptions", &preload, undefined, undefined, undefined );
}

// Namespace object_descriptions/object_descriptions
// Params 0, eflags: 0x0
// Checksum 0x9ef3db1c, Offset: 0x188
// Size: 0xc4
function preload()
{
    level.object_descriptions = {};
    level.object_descriptions.ents = [];
    level.object_descriptions.triggers = [];
    level.object_descriptions.points = [];
    level.object_descriptions.objects = [];
    level.object_descriptions.trace_dist = 0;
    callback::on_spawned( &on_player_spawned );
    
    /#
        util::init_dvar( "<dev string:x38>", 0, &function_5120dfdb );
    #/
}

// Namespace object_descriptions/object_descriptions
// Params 0, eflags: 0x0
// Checksum 0xb90fbe45, Offset: 0x258
// Size: 0x250
function on_player_spawned()
{
    var_7edfa20f = struct::get_array( "obj_desc_rect", "variantname" );
    circles = struct::get_array( "obj_desc_circle", "variantname" );
    
    foreach ( index, rect in var_7edfa20f )
    {
        link_ent = undefined;
        
        if ( isdefined( rect.target ) )
        {
            link_ent = getent( rect.target, "targetname" );
        }
        
        function_23e7a30a( "rect" + index, rect.origin, rect.angles, rect.script_width, rect.script_height, hash( rect.script_string ), rect.script_maxdist, link_ent );
    }
    
    foreach ( index, circle in circles )
    {
        link_ent = undefined;
        
        if ( isdefined( circle.target ) )
        {
            link_ent = getent( circle.target, "targetname" );
        }
        
        register_circle( "circle" + index, circle.origin, circle.angles, circle.script_radius, hash( circle.script_string ), circle.script_maxdist, link_ent );
    }
}

// Namespace object_descriptions/object_descriptions
// Params 4, eflags: 0x0
// Checksum 0x15d5de97, Offset: 0x4b0
// Size: 0xc4
function register_ent( uid, ent, loc_string, max_dist = 500 )
{
    data = {};
    data.ent = ent;
    data.loc_string = loc_string;
    data.max_dist = max_dist;
    data.test_func = &function_73b1e949;
    data.var_f03d5bb1 = &function_136c1375;
    _register( uid, data );
    ent thread function_50676d1( uid );
}

// Namespace object_descriptions/object_descriptions
// Params 6, eflags: 0x0
// Checksum 0x6fe3d726, Offset: 0x580
// Size: 0xe4
function register_trigger( uid, trigger, loc_string, max_dist = 500, var_36247bfb, var_774d5d03 = 1 )
{
    data = {};
    data.trigger = trigger;
    data.loc_string = loc_string;
    data.var_36247bfb = var_36247bfb;
    data.max_dist = max_dist;
    data.test_func = &function_fc5ed81d;
    data.var_f03d5bb1 = &function_f56da461;
    data.var_774d5d03 = var_774d5d03;
    _register( uid, data );
}

// Namespace object_descriptions/object_descriptions
// Params 10, eflags: 0x0
// Checksum 0x1f0bd7fe, Offset: 0x670
// Size: 0x1e4
function function_23e7a30a( uid, center, angles, width, height, loc_string, max_dist = 500, link_ent, var_36247bfb, var_774d5d03 = 1 )
{
    data = {};
    data.center = center;
    data.axis = anglestoaxis( angles );
    data.width = width / 2;
    data.height = height / 2;
    data.loc_string = loc_string;
    data.max_dist = max_dist;
    data.test_func = &function_f08e8278;
    data.var_f03d5bb1 = &function_3c2d7742;
    data.var_36247bfb = var_36247bfb;
    data.var_774d5d03 = var_774d5d03;
    
    /#
        data.var_ffc04e84 = &function_1ee1bf29;
        data.angles = angles;
    #/
    
    if ( isdefined( link_ent ) )
    {
        data.angles = angles;
        data.link_ent = link_ent;
        data.var_9a145184 = center - link_ent.origin;
        data.var_1321588e = angleclamp180( angles - link_ent.angles );
        data.link_ent thread function_50676d1( uid );
    }
    
    _register( uid, data );
}

// Namespace object_descriptions/object_descriptions
// Params 9, eflags: 0x0
// Checksum 0x39ee167, Offset: 0x860
// Size: 0x1b4
function register_circle( uid, center, angles, radius, loc_string, max_dist = 500, link_ent, var_36247bfb, var_774d5d03 = 1 )
{
    data = {};
    data.center = center;
    data.axis = anglestoaxis( angles );
    data.radius = radius;
    data.loc_string = loc_string;
    data.max_dist = max_dist;
    data.test_func = &function_d0acce99;
    data.var_f03d5bb1 = &function_3c2d7742;
    data.var_36247bfb = var_36247bfb;
    data.var_774d5d03 = var_774d5d03;
    
    /#
        data.var_ffc04e84 = &_draw_circle;
    #/
    
    if ( isdefined( link_ent ) )
    {
        data.angles = angles;
        data.link_ent = link_ent;
        data.var_9a145184 = center - link_ent.origin;
        data.var_1321588e = angleclamp180( angles - link_ent.angles );
        data.link_ent thread function_50676d1( uid );
    }
    
    _register( uid, data );
}

// Namespace object_descriptions/object_descriptions
// Params 1, eflags: 0x0
// Checksum 0x827f16ef, Offset: 0xa20
// Size: 0x13c
function remove( uid )
{
    level notify( "remove_object_description_" + uid );
    arrayremoveindex( level.object_descriptions.ents, uid, 1 );
    arrayremoveindex( level.object_descriptions.triggers, uid, 1 );
    arrayremoveindex( level.object_descriptions.points, uid, 1 );
    level.object_descriptions.objects = arraycombine( level.object_descriptions.ents, level.object_descriptions.triggers, 1, 0 );
    level.object_descriptions.objects = arraycombine( level.object_descriptions.objects, level.object_descriptions.points, 1, 0 );
    function_e8419844();
}

// Namespace object_descriptions/object_descriptions
// Params 0, eflags: 0x0
// Checksum 0xf1ed3898, Offset: 0xb68
// Size: 0x7e
function remove_all()
{
    level notify( #"hash_54c689354421dd79" );
    level.object_descriptions.objects = [];
    level.object_descriptions.ents = [];
    level.object_descriptions.triggers = [];
    level.object_descriptions.points = [];
    level.object_descriptions.trace_dist = 0;
}

// Namespace object_descriptions/object_descriptions
// Params 2, eflags: 0x4
// Checksum 0xbebd0381, Offset: 0xbf0
// Size: 0x184
function private _register( uid, data )
{
    if ( !isdefined( data.var_774d5d03 ) )
    {
        data.var_774d5d03 = 0;
    }
    
    if ( isdefined( data.ent ) )
    {
        level.object_descriptions.ents[ uid ] = data;
    }
    else if ( isdefined( data.trigger ) )
    {
        level.object_descriptions.triggers[ uid ] = data;
    }
    else
    {
        level.object_descriptions.points[ uid ] = data;
    }
    
    level.object_descriptions.objects = arraycombine( level.object_descriptions.ents, level.object_descriptions.triggers, 1, 0 );
    level.object_descriptions.objects = arraycombine( level.object_descriptions.objects, level.object_descriptions.points, 1, 0 );
    function_e8419844();
    
    if ( !level flag::get( "object_descriptions_active" ) )
    {
        getplayers()[ 0 ] thread _think();
    }
}

// Namespace object_descriptions/object_descriptions
// Params 0, eflags: 0x4
// Checksum 0xda2d9e22, Offset: 0xd80
// Size: 0xce
function private function_e8419844()
{
    level.object_descriptions.trace_dist = 0;
    
    foreach ( data in level.object_descriptions.objects )
    {
        level.object_descriptions.trace_dist = max( level.object_descriptions.trace_dist, data.max_dist );
    }
}

// Namespace object_descriptions/object_descriptions
// Params 1, eflags: 0x4
// Checksum 0xe710f4dc, Offset: 0xe58
// Size: 0x54
function private function_50676d1( uid )
{
    level endon( #"hash_54c689354421dd79", "remove_object_description_" + uid );
    self waittill( #"death" );
    thread remove( uid );
}

// Namespace object_descriptions/object_descriptions
// Params 3, eflags: 0x4
// Checksum 0x7c0a0a68, Offset: 0xeb8
// Size: 0x38, Type: bool
function private function_73b1e949( data, trace, *eye_dir )
{
    return eye_dir[ #"entity" ] === trace.ent;
}

// Namespace object_descriptions/object_descriptions
// Params 3, eflags: 0x4
// Checksum 0xb0378d8a, Offset: 0xef8
// Size: 0x42
function private function_fc5ed81d( data, trace, *eye_dir )
{
    return istouching( eye_dir[ #"position" ], trace.trigger );
}

// Namespace object_descriptions/object_descriptions
// Params 3, eflags: 0x4
// Checksum 0x47d0260, Offset: 0xf48
// Size: 0x166, Type: bool
function private function_f08e8278( data, trace, eye_dir )
{
    function_975e779f( data );
    to_focus = trace[ #"position" ] - data.center;
    
    if ( abs( vectordot( to_focus, data.axis.forward ) ) > 6 || vectordot( eye_dir, data.axis.forward ) > -0.17 )
    {
        return false;
    }
    
    if ( abs( vectordot( to_focus, data.axis.right ) ) > data.width )
    {
        return false;
    }
    
    if ( abs( vectordot( to_focus, data.axis.up ) ) > data.height )
    {
        return false;
    }
    
    return true;
}

// Namespace object_descriptions/object_descriptions
// Params 3, eflags: 0x4
// Checksum 0xaa27470f, Offset: 0x10b8
// Size: 0xfe, Type: bool
function private function_d0acce99( data, trace, eye_dir )
{
    function_975e779f( data );
    to_focus = trace[ #"position" ] - data.center;
    
    if ( abs( vectordot( to_focus, data.axis.forward ) ) > 6 || vectordot( eye_dir, data.axis.forward ) > -0.17 )
    {
        return false;
    }
    
    return lengthsquared( to_focus ) < data.radius * data.radius;
}

// Namespace object_descriptions/object_descriptions
// Params 1, eflags: 0x4
// Checksum 0xeeef75d0, Offset: 0x11c0
// Size: 0x1e
function private function_136c1375( data )
{
    return data.ent.origin;
}

// Namespace object_descriptions/object_descriptions
// Params 1, eflags: 0x4
// Checksum 0xe2b66e70, Offset: 0x11e8
// Size: 0x1e
function private function_f56da461( data )
{
    return data.trigger.origin;
}

// Namespace object_descriptions/object_descriptions
// Params 1, eflags: 0x4
// Checksum 0x7257c788, Offset: 0x1210
// Size: 0x16
function private function_3c2d7742( data )
{
    return data.center;
}

// Namespace object_descriptions/object_descriptions
// Params 1, eflags: 0x4
// Checksum 0x88a0443e, Offset: 0x1230
// Size: 0x10e
function private function_975e779f( data )
{
    if ( isdefined( data.link_ent ) )
    {
        angle_delta = angleclamp180( data.var_1321588e - data.angles - data.link_ent.angles );
        
        if ( lengthsquared( angle_delta ) > 1 )
        {
            data.var_9a145184 = rotatepoint( data.var_9a145184, angle_delta );
            data.angles = data.link_ent.angles + data.var_1321588e;
            data.axis = anglestoaxis( data.angles );
        }
        
        data.center = data.link_ent.origin + data.var_9a145184;
    }
}

// Namespace object_descriptions/object_descriptions
// Params 0, eflags: 0x4
// Checksum 0xd01a283, Offset: 0x1348
// Size: 0x544
function private _think()
{
    self endon( #"death" );
    level endon( #"level_restarting" );
    level flag::set( "object_descriptions_active" );
    namespace_61e6d095::create( #"object_descriptions", #"hash_1dbb8163d29524c9" );
    var_ebb41806 = undefined;
    
    while ( level.object_descriptions.trace_dist > 0 )
    {
        eye = self getplayercamerapos();
        eye_dir = anglestoforward( self getplayerangles() );
        text = #"";
        var_36247bfb = #"";
        
        if ( !namespace_61e6d095::exists( #"hint_tutorial" ) && !self flag::get( #"lockpicking" ) && function_185fc34e( eye, eye_dir ) )
        {
            end = eye + eye_dir * level.object_descriptions.trace_dist;
            trace = bullettrace( eye, end, 1, self, 1, 0 );
            
            if ( trace[ #"fraction" ] < 1 )
            {
                distance = level.object_descriptions.trace_dist * trace[ #"fraction" ];
                start_index = 0;
                
                if ( !isdefined( trace[ #"entity" ] ) )
                {
                    start_index = level.object_descriptions.ents.size;
                }
                
                for (i = start_index; i < level.object_descriptions.objects.size; i++) {
                    data = level.object_descriptions.objects[ i ];
                    
                    /#
                        if ( level.object_descriptions.debug_draw && isdefined( data.var_ffc04e84 ) )
                        {
                            [[ data.var_ffc04e84 ]]( data );
                        }
                    #/
                    
                    if ( data.max_dist > distance && [[ data.test_func ]]( data, trace, eye_dir ) )
                    {
                        text = data.loc_string;
                        var_36247bfb = data.var_36247bfb;
                        break;
                    }
                }
            }
        }
        
        if ( var_ebb41806 !== text )
        {
            var_ebb41806 = text;
            
            if ( isdefined( data ) && isdefined( var_ebb41806 ) && var_ebb41806 != #"" )
            {
                if ( isdefined( var_36247bfb ) && var_36247bfb != #"" )
                {
                    namespace_61e6d095::set_text( #"object_descriptions", var_36247bfb );
                    namespace_61e6d095::function_bfdab223( #"object_descriptions", text );
                }
                else if ( data.var_774d5d03 == 3 )
                {
                    namespace_61e6d095::set_text( #"object_descriptions", text );
                }
                else
                {
                    namespace_61e6d095::function_bfdab223( #"object_descriptions", text );
                }
                
                namespace_61e6d095::set_state( #"object_descriptions", data.var_774d5d03 );
            }
            else
            {
                namespace_61e6d095::set_text( #"object_descriptions", #"" );
                namespace_61e6d095::function_bfdab223( #"object_descriptions", #"" );
                namespace_61e6d095::set_state( #"object_descriptions", 0 );
            }
        }
        
        waitframe( 1 );
    }
    
    namespace_61e6d095::remove( #"object_descriptions" );
    level flag::clear( "object_descriptions_active" );
}

// Namespace object_descriptions/object_descriptions
// Params 2, eflags: 0x4
// Checksum 0x19006e3f, Offset: 0x1898
// Size: 0x10e, Type: bool
function private function_185fc34e( eye, eye_dir )
{
    foreach ( data in level.object_descriptions.objects )
    {
        origin = [[ data.var_f03d5bb1 ]]( data );
        
        if ( distancesquared( eye, origin ) < data.max_dist * data.max_dist && vectordot( eye_dir, origin - eye ) > 0 )
        {
            return true;
        }
    }
    
    return false;
}

/#

    // Namespace object_descriptions/object_descriptions
    // Params 1, eflags: 0x4
    // Checksum 0x3a7d7f65, Offset: 0x19b0
    // Size: 0x2a, Type: dev
    function private function_5120dfdb( dvar )
    {
        level.object_descriptions.debug_draw = dvar.value;
    }

    // Namespace object_descriptions/object_descriptions
    // Params 1, eflags: 0x4
    // Checksum 0x3db3437c, Offset: 0x19e8
    // Size: 0xd4, Type: dev
    function private function_1ee1bf29( data )
    {
        half_width = data.width / 2;
        half_height = data.height / 2;
        box( data.center, ( -3, data.width * -1, data.height * -1 ), ( 3, data.width, data.height ), data.angles, ( 1, 0.5, 0 ), 1, 1, 1 );
    }

    // Namespace object_descriptions/object_descriptions
    // Params 1, eflags: 0x4
    // Checksum 0x1daeca35, Offset: 0x1ac8
    // Size: 0x54, Type: dev
    function private _draw_circle( data )
    {
        circle( data.center, data.radius, ( 1, 0.5, 0 ), 1, 0, 1 );
    }

#/
