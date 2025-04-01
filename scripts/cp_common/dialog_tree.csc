#using scripts\core_common\clientfield_shared;
#using scripts\core_common\easing;
#using scripts\core_common\load_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;
#using scripts\cp_common\util;

#namespace dialog_tree;

// Namespace dialog_tree/dialog_tree
// Params 0, eflags: 0x5
// Checksum 0x62ffb14b, Offset: 0x128
// Size: 0x34
function private autoexec __init__system__()
{
    system::register( "dialog_tree", &preinit, undefined, undefined, undefined );
}

// Namespace dialog_tree/dialog_tree
// Params 0, eflags: 0x4
// Checksum 0x9aa74bcc, Offset: 0x168
// Size: 0xdc
function private preinit()
{
    clientfield::register( "toplayer", "dt_set_fov", 1, 3, "int", &set_fov, 0, 0 );
    clientfield::register( "toplayer", "dt_set_dof", 1, 3, "int", &set_dof, 0, 0 );
    clientfield::register( "toplayer", "dt_set_hide_reticle_dot", 1, 1, "int", &function_356192f3, 0, 0 );
}

// Namespace dialog_tree/dialog_tree
// Params 7, eflags: 0x0
// Checksum 0x6e7eda68, Offset: 0x250
// Size: 0x192
function set_fov( *localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    n_time = 2;
    
    switch ( bwastimejump )
    {
        case 1:
            self function_9298adaf( 1 );
            break;
        case 2:
            self easing::function_f95cb457( undefined, 17, n_time, #"linear" );
            break;
        case 3:
            self easing::function_f95cb457( undefined, 20, n_time, #"linear" );
            break;
        case 4:
            self easing::function_f95cb457( undefined, 25, n_time, #"linear" );
            break;
        case 5:
            self easing::function_f95cb457( undefined, 30, n_time, #"linear" );
            break;
    }
}

// Namespace dialog_tree/dialog_tree
// Params 7, eflags: 0x4
// Checksum 0xe816f349, Offset: 0x3f0
// Size: 0xac
function private function_356192f3( localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    var_baa65467 = function_1df4c3b0( fieldname, #"cp_hud_data" );
    var_b3a126ea = getuimodel( var_baa65467, "hideNoReticleDot" );
    
    if ( isdefined( var_b3a126ea ) )
    {
        setuimodelvalue( var_b3a126ea, bwastimejump );
    }
}

// Namespace dialog_tree/dialog_tree
// Params 7, eflags: 0x0
// Checksum 0x30c9531, Offset: 0x4a8
// Size: 0x192
function set_dof( *localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    n_time = 2;
    
    switch ( bwastimejump )
    {
        case 1:
            self function_9e574055( 0 );
            self function_3c54e2b8( n_time );
            self function_9ea7b4eb( n_time );
            break;
        case 2:
            self function_9e574055( 2 );
            self function_1816c600( 1.5, n_time );
            self function_d7be9a9f( 50, n_time );
            break;
        case 3:
            self function_9e574055( 2 );
            self function_1816c600( 1.5, n_time );
            self function_d7be9a9f( 90, n_time );
            break;
    }
}

