#using scripts\core_common\clientfield_shared;
#using scripts\core_common\load_shared;
#using scripts\core_common\struct;
#using scripts\core_common\util_shared;
#using scripts\cp_common\util;

#namespace namespace_1512c89a;

// Namespace namespace_1512c89a/level_init
// Params 1, eflags: 0x20
// Checksum 0x81bc28ab, Offset: 0x1c0
// Size: 0x34
function event_handler[level_init] main( *eventstruct )
{
    load::main();
    util::waitforclient( 0 );
}

// Namespace namespace_1512c89a/namespace_1512c89a
// Params 7, eflags: 0x0
// Checksum 0xa1ea8aec, Offset: 0x200
// Size: 0x84
function function_11fba536( *localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    var_11196acd = getent( 0, "nuke_cloud_ring_a_rest", "targetname" );
    var_11196acd hide();
}

// Namespace namespace_1512c89a/namespace_1512c89a
// Params 7, eflags: 0x0
// Checksum 0x1812829b, Offset: 0x290
// Size: 0x1ec
function function_685e7492( *localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    var_11196acd = getent( 0, "nuke_cloud_ring_a", "targetname" );
    var_6c6ea17e = getent( 0, "nuke_cloud_ring_a_rest", "targetname" );
    var_a2de0e58 = getent( 0, "nuke_cloud_ring_b", "targetname" );
    var_1d4dedf6 = getent( 0, "nuke_cloud_ring_b_rest", "targetname" );
    var_ac9f21da = getent( 0, "nuke_cloud_ring_c", "targetname" );
    var_a173cea7 = getent( 0, "nuke_cloud_ring_c_rest", "targetname" );
    var_11196acd hide();
    var_6c6ea17e hide();
    var_a2de0e58 hide();
    var_1d4dedf6 hide();
    var_ac9f21da hide();
    var_a173cea7 hide();
}

// Namespace namespace_1512c89a/namespace_1512c89a
// Params 7, eflags: 0x0
// Checksum 0x6eb4351b, Offset: 0x488
// Size: 0x84
function function_4a6ad8d7( *localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( bwastimejump )
    {
        thread function_b25ca84b();
        thread function_5b0bca7f();
        thread function_9fe1697d();
        thread function_9fccf47b();
    }
}

// Namespace namespace_1512c89a/namespace_1512c89a
// Params 0, eflags: 0x0
// Checksum 0xf6208809, Offset: 0x518
// Size: 0xf4
function function_b25ca84b()
{
    shockwave = getent( 0, "nuke_shockwave_a", "targetname" );
    wait 1;
    
    for (loopcount = 0; loopcount < 1; loopcount++) {
        steps = 0;
        
        while ( steps < 161 )
        {
            time = gettime();
            var_b76b4560 = time / 1000;
            var_78623e67 = steps * 0.009;
            timeoffset = var_b76b4560 - var_78623e67 * 10;
            steps += 1;
            wait 0.05;
        }
        
        wait 1;
    }
}

// Namespace namespace_1512c89a/namespace_1512c89a
// Params 0, eflags: 0x0
// Checksum 0x844163c7, Offset: 0x618
// Size: 0x8c
function function_5b0bca7f()
{
    cloud = getent( 0, "nuke_cloud_ring_a_rest", "targetname" );
    function_aa5bd1e8( "nuke_cloud_ring_a", "nuke_cloud_ring_a_rest" );
    cloud playrenderoverridebundle( "rob_nuke_cloud_ring_fade_01" );
    wait 16;
    cloud hide();
}

// Namespace namespace_1512c89a/namespace_1512c89a
// Params 0, eflags: 0x0
// Checksum 0xa85ff34d, Offset: 0x6b0
// Size: 0x24
function function_9fe1697d()
{
    function_aa5bd1e8( "nuke_cloud_ring_b", "nuke_cloud_ring_b_rest" );
}

// Namespace namespace_1512c89a/namespace_1512c89a
// Params 0, eflags: 0x0
// Checksum 0x33e3a9fe, Offset: 0x6e0
// Size: 0x24
function function_9fccf47b()
{
    function_aa5bd1e8( "nuke_cloud_ring_c", "nuke_cloud_ring_c_rest" );
}

// Namespace namespace_1512c89a/namespace_1512c89a
// Params 2, eflags: 0x0
// Checksum 0xfced7cb9, Offset: 0x710
// Size: 0x244
function function_aa5bd1e8( var_6c1da019, var_37749f24 )
{
    cloud = getent( 0, var_6c1da019, "targetname" );
    var_6c6ea17e = getent( 0, var_37749f24, "targetname" );
    steps = 0;
    maxsteps = 81;
    timeoffset = 0;
    var_78623e67 = 0;
    var_5b9dea0b = 0.43;
    var_da44ea59 = var_5b9dea0b / maxsteps;
    wait 2;
    starttime = gettime();
    cloud show();
    cloud playrenderoverridebundle( "rob_nuke_cloud_ring_reveal_01" );
    
    while ( var_78623e67 < var_5b9dea0b )
    {
        time = gettime();
        var_b76b4560 = time / 1000;
        var_341ccdfc = max( ( maxsteps - steps / 4 ) / maxsteps, 0.006 );
        var_78623e67 = steps * var_da44ea59 * var_341ccdfc;
        timeoffset = var_b76b4560 - var_78623e67 * 10;
        cloud function_78233d29( "rob_nuke_cloud_ring_reveal_01", "", "StartTime", timeoffset );
        steps += 1;
        wait 0.05;
    }
    
    endtime = gettime();
    cloud function_f6e99a8d( "rob_nuke_cloud_ring_reveal_01" );
    var_6c6ea17e show();
    cloud hide();
}

// Namespace namespace_1512c89a/namespace_1512c89a
// Params 0, eflags: 0x0
// Checksum 0xf5776836, Offset: 0x960
// Size: 0xc8
function function_d79ef530()
{
    cloud = getent( 0, "nuke_shockwave_a", "targetname" );
    brightness = 0;
    
    while ( true )
    {
        result = cloud mapshaderconstant( 0, "scriptControl", brightness * 20, 0, 1 );
        brightness += 0.01;
        
        if ( brightness >= 1 )
        {
            brightness = 0;
        }
        
        wait 0.1;
    }
}

