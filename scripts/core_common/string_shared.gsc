#namespace string;

/#

    // Namespace string/string_shared
    // Params 3, eflags: 0x0
    // Checksum 0x11ee3b5, Offset: 0x80
    // Size: 0x8e, Type: dev
    function rjust( str_input, n_length, str_fill )
    {
        if ( !isdefined( str_fill ) )
        {
            str_fill = "<dev string:x38>";
        }
        
        str_input = isdefined( str_input ) ? "<dev string:x3d>" + str_input : "<dev string:x3d>";
        n_fill_length = n_length - str_input.size;
        str_fill = fill( n_fill_length, str_fill );
        return str_fill + str_input;
    }

    // Namespace string/string_shared
    // Params 3, eflags: 0x0
    // Checksum 0x4143e771, Offset: 0x118
    // Size: 0x8e, Type: dev
    function ljust( str_input, n_length, str_fill )
    {
        if ( !isdefined( str_fill ) )
        {
            str_fill = "<dev string:x38>";
        }
        
        str_input = isdefined( str_input ) ? "<dev string:x3d>" + str_input : "<dev string:x3d>";
        n_fill_length = n_length - str_input.size;
        str_fill = fill( n_fill_length, str_fill );
        return str_input + str_fill;
    }

    // Namespace string/string_shared
    // Params 2, eflags: 0x0
    // Checksum 0x6e18efa6, Offset: 0x1b0
    // Size: 0xa6, Type: dev
    function fill( n_length, str_fill )
    {
        if ( !isdefined( str_fill ) || str_fill == "<dev string:x3d>" )
        {
            str_fill = "<dev string:x38>";
        }
        
        str_return = "<dev string:x3d>";
        
        while ( n_length > 0 )
        {
            str = getsubstr( str_fill, 0, n_length );
            n_length -= str.size;
            str_return += str;
        }
        
        return str_return;
    }

#/
