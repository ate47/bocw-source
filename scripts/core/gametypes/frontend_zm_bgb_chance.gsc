#using scripts\core_common\clientfield_shared;

#namespace zm_frontend_zm_bgb_chance;

/#

    // Namespace zm_frontend_zm_bgb_chance/frontend_zm_bgb_chance
    // Params 0, eflags: 0x0
    // Checksum 0x6dce7e0a, Offset: 0x88
    // Size: 0x1c, Type: dev
    function zm_frontend_bgb_slots_logic()
    {
        level thread zm_frontend_bgb_devgui();
    }

    // Namespace zm_frontend_zm_bgb_chance/frontend_zm_bgb_chance
    // Params 0, eflags: 0x0
    // Checksum 0xedec958f, Offset: 0xb0
    // Size: 0x1bc, Type: dev
    function zm_frontend_bgb_devgui()
    {
        setdvar( #"bgb_test_power_boost_devgui", "<dev string:x38>" );
        setdvar( #"bgb_test_success_fail_devgui", "<dev string:x38>" );
        bgb_devgui_base = "<dev string:x3c>";
        a_n_amounts = array( 1, 5, 10, 100 );
        
        for (i = 0; i < a_n_amounts.size; i++) {
            n_amount = a_n_amounts[ i ];
            adddebugcommand( bgb_devgui_base + i + "<dev string:x59>" + n_amount + "<dev string:x64>" + n_amount + "<dev string:x78>" );
        }
        
        adddebugcommand( "<dev string:x7f>" + "<dev string:xaf>" + "<dev string:xb6>" + "<dev string:xd5>" + 1 + "<dev string:xda>" );
        adddebugcommand( "<dev string:xe0>" + "<dev string:xaf>" + "<dev string:x111>" + "<dev string:xd5>" + 1 + "<dev string:xda>" );
        level thread bgb_devgui_think();
    }

    // Namespace zm_frontend_zm_bgb_chance/frontend_zm_bgb_chance
    // Params 0, eflags: 0x0
    // Checksum 0x5d2121af, Offset: 0x278
    // Size: 0x1c8, Type: dev
    function bgb_devgui_think()
    {
        b_powerboost_toggle = 0;
        b_successfail_toggle = 0;
        
        for ( ;; )
        {
            n_val_powerboost = getdvarstring( #"bgb_test_power_boost_devgui" );
            n_val_successfail = getdvarstring( #"bgb_test_success_fail_devgui" );
            
            if ( n_val_powerboost != "<dev string:x38>" )
            {
                b_powerboost_toggle = !b_powerboost_toggle;
                level clientfield::set( "<dev string:x131>", b_powerboost_toggle );
                
                if ( b_powerboost_toggle )
                {
                    iprintlnbold( "<dev string:x14f>" );
                }
                else
                {
                    iprintlnbold( "<dev string:x168>" );
                }
            }
            
            if ( n_val_successfail != "<dev string:x38>" )
            {
                b_successfail_toggle = !b_successfail_toggle;
                level clientfield::set( "<dev string:x182>", b_successfail_toggle );
                
                if ( b_successfail_toggle )
                {
                    iprintlnbold( "<dev string:x1a1>" );
                }
                else
                {
                    iprintlnbold( "<dev string:x1b1>" );
                }
            }
            
            setdvar( #"bgb_test_power_boost_devgui", "<dev string:x38>" );
            setdvar( #"bgb_test_success_fail_devgui", "<dev string:x38>" );
            wait 0.5;
        }
    }

#/
