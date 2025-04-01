#namespace animationstatenetwork;

// Namespace animationstatenetwork/animation_state_machine_mocomp
// Params 0, eflags: 0x1
// Checksum 0xbb9cff9d, Offset: 0xc8
// Size: 0x10
function autoexec initanimationmocomps()
{
    level._animationmocomps = [];
}

// Namespace animationstatenetwork/runanimationmocomp
// Params 1, eflags: 0x20
// Checksum 0x2aa9897, Offset: 0xe0
// Size: 0x162
function event_handler[runanimationmocomp] runanimationmocomp( eventstruct )
{
    assert( eventstruct.status >= 0 && eventstruct.status <= 2, "<dev string:x38>" + eventstruct.status + "<dev string:x5b>" );
    assert( isdefined( level._animationmocomps[ eventstruct.name ] ), "<dev string:x77>" + eventstruct.name + "<dev string:x9e>" );
    
    if ( eventstruct.status == 0 )
    {
        eventstruct.status = "asm_mocomp_start";
    }
    else if ( eventstruct.status == 1 )
    {
        eventstruct.status = "asm_mocomp_update";
    }
    else
    {
        eventstruct.status = "asm_mocomp_terminate";
    }
    
    animationmocompresult = eventstruct.entity [[ level._animationmocomps[ eventstruct.name ][ eventstruct.status ] ]]( eventstruct.entity, eventstruct.delta_anim, eventstruct.blend_out_time, "", eventstruct.duration );
    return animationmocompresult;
}

// Namespace animationstatenetwork/animation_state_machine_mocomp
// Params 4, eflags: 0x0
// Checksum 0x60c00029, Offset: 0x250
// Size: 0x232
function registeranimationmocomp( mocompname, startfuncptr, updatefuncptr, terminatefuncptr )
{
    mocompname = tolower( mocompname );
    assert( isstring( mocompname ), "<dev string:xb3>" );
    assert( !isdefined( level._animationmocomps[ mocompname ] ), "<dev string:xf5>" + mocompname + "<dev string:x10a>" );
    level._animationmocomps[ mocompname ] = array();
    assert( isdefined( startfuncptr ) && isfunctionptr( startfuncptr ), "<dev string:x125>" );
    level._animationmocomps[ mocompname ][ #"asm_mocomp_start" ] = startfuncptr;
    
    if ( isdefined( updatefuncptr ) )
    {
        assert( isfunctionptr( updatefuncptr ), "<dev string:x185>" );
        level._animationmocomps[ mocompname ][ #"asm_mocomp_update" ] = updatefuncptr;
    }
    else
    {
        level._animationmocomps[ mocompname ][ #"asm_mocomp_update" ] = &animationmocompemptyfunc;
    }
    
    if ( isdefined( terminatefuncptr ) )
    {
        assert( isfunctionptr( terminatefuncptr ), "<dev string:x1e2>" );
        level._animationmocomps[ mocompname ][ #"asm_mocomp_terminate" ] = terminatefuncptr;
        return;
    }
    
    level._animationmocomps[ mocompname ][ #"asm_mocomp_terminate" ] = &animationmocompemptyfunc;
}

// Namespace animationstatenetwork/animation_state_machine_mocomp
// Params 5, eflags: 0x0
// Checksum 0x8e4c8652, Offset: 0x490
// Size: 0x2c
function animationmocompemptyfunc( *entity, *mocompanim, *mocompanimblendouttime, *mocompanimflag, *mocompduration )
{
    
}

