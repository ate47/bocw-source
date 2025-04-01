#using script_3dc93ca9902a9cda;
#using scripts\cp_common\snd;

#namespace snd;

// Namespace snd/namespace_33f8f0d7
// Params 2, eflags: 0x0
// Checksum 0x953d0737, Offset: 0x90
// Size: 0x2a
function function_9ae4fc6f( soundalias, targets )
{
    return play( soundalias, targets );
}

// Namespace snd/namespace_33f8f0d7
// Params 2, eflags: 0x0
// Checksum 0x64b493f, Offset: 0xc8
// Size: 0x2c
function function_4286bd2c( soundobject, fadeoutseconds )
{
    stop( soundobject, fadeoutseconds );
}

// Namespace snd/namespace_33f8f0d7
// Params 3, eflags: 0x0
// Checksum 0x1a2e6e7, Offset: 0x100
// Size: 0x34
function function_2e9b6265( soundobject, levelnotifystring, fadeoutseconds )
{
    function_d4e10f97( soundobject, levelnotifystring, fadeoutseconds );
}

// Namespace snd/namespace_33f8f0d7
// Params 3, eflags: 0x0
// Checksum 0x72853d4a, Offset: 0x140
// Size: 0x34
function function_b33d1cfe( soundobject, volume, timeinseconds )
{
    set_volume( soundobject, volume, timeinseconds );
}

