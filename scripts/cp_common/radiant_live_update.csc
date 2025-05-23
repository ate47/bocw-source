#using scripts\core_common\system_shared;

#namespace radiant_live_update;

/#

    // Namespace radiant_live_update/radiant_live_update
    // Params 0, eflags: 0x5
    // Checksum 0x6faf7aaf, Offset: 0x88
    // Size: 0x3c, Type: dev
    function private autoexec __init__system__()
    {
        system::register( #"radiant_live_update", &preinit, undefined, undefined, undefined );
    }

    // Namespace radiant_live_update/radiant_live_update
    // Params 0, eflags: 0x4
    // Checksum 0x3c153ba0, Offset: 0xd0
    // Size: 0x1c, Type: dev
    function private preinit()
    {
        thread scriptstruct_debug_render();
    }

    // Namespace radiant_live_update/radiant_live_update
    // Params 0, eflags: 0x0
    // Checksum 0x577f7f4a, Offset: 0xf8
    // Size: 0x84, Type: dev
    function scriptstruct_debug_render()
    {
        while ( true )
        {
            waitresult = level waittill( #"liveupdate" );
            
            if ( isdefined( waitresult.selected_struct ) )
            {
                level thread render_struct( waitresult.selected_struct );
                continue;
            }
            
            level notify( #"stop_struct_render" );
        }
    }

    // Namespace radiant_live_update/radiant_live_update
    // Params 1, eflags: 0x0
    // Checksum 0xb360ca52, Offset: 0x188
    // Size: 0x90, Type: dev
    function render_struct( selected_struct )
    {
        self endon( #"stop_struct_render" );
        
        while ( isdefined( selected_struct ) && isdefined( selected_struct.origin ) )
        {
            box( selected_struct.origin, ( -16, -16, -16 ), ( 16, 16, 16 ), 0, ( 1, 0.4, 0.4 ) );
            wait 0.01;
        }
    }

#/
