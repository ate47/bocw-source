#using script_1cdcb9e0e5c220f6;
#using script_1fd2c6e5fc8cb1c3;
#using script_3dc93ca9902a9cda;
#using script_44aef2868ad2e317;
#using script_4ec222619bffcfd1;
#using script_779f525443585713;
#using scripts\core_common\ai_shared;
#using scripts\core_common\array_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\districts;
#using scripts\core_common\doors_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\gameobjects_shared;
#using scripts\core_common\lui_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\stealth\corpse;
#using scripts\core_common\stealth\enemy;
#using scripts\core_common\stealth\threat_sight;
#using scripts\core_common\stealth\utility;
#using scripts\core_common\struct;
#using scripts\core_common\trigger_shared;
#using scripts\core_common\util_shared;
#using scripts\core_common\values_shared;
#using scripts\cp_common\dialog_tree;
#using scripts\cp_common\dialogue;
#using scripts\cp_common\objectives;
#using scripts\cp_common\skipto;
#using scripts\cp_common\snd;
#using scripts\cp_common\snd_draw;
#using scripts\cp_common\snd_sp;
#using scripts\cp_common\snd_utility;
#using scripts\cp_common\util;

#namespace kgb_aslt_entry;

// Namespace kgb_aslt_entry/namespace_46f1d96e
// Params 1, eflags: 0x0
// Checksum 0xa0bbc456, Offset: 0x780
// Size: 0xec
function starting( *var_d3440450 )
{
    level thread namespace_e77bf565::function_277bceaa( 1 );
    level thread function_272c06e0();
    level thread namespace_e77bf565::function_8191bcdc( 1 );
    level.adler = namespace_e77bf565::function_52fe0eb3( "kgb_aslt_entry" );
    level.adler.ignoreme = 1;
    level.adler.ignoreall = 1;
    level flag::set( "flag_aslt_entry_prompt_door" );
    level thread namespace_99e99ffa::function_1d90bc4a();
    namespace_e77bf565::function_e2e72d4( 0 );
}

// Namespace kgb_aslt_entry/namespace_46f1d96e
// Params 2, eflags: 0x0
// Checksum 0x6edb1e83, Offset: 0x878
// Size: 0x1fc
function main( var_d3440450, var_50cc0d4f )
{
    level.player endon( #"death" );
    
    if ( is_true( var_50cc0d4f ) )
    {
        kgb_ins_prepare::function_52f0fcb3( var_d3440450 );
        kgb_ins_prepare::function_84d00884();
        level thread namespace_99e99ffa::function_99e99ffa( var_d3440450 );
        level thread namespace_e77bf565::function_ada6d016();
        level thread scene::play( "scene_kgb_walkup_adler", "Shot 4", [ level.adler ] );
        namespace_e77bf565::function_c4de67de();
        namespace_e77bf565::function_a43c15af();
        level thread namespace_e77bf565::function_1067ebf5( "rotating_object_inside_man", "team_in_elevator" );
    }
    
    level thread util::function_3e65fe0b( 1 );
    level.player.ignoreme = 1;
    level.player.ignoreall = 1;
    level thread function_b8027a11();
    level flag::set( "flag_prep_elevator" );
    level thread function_9e8ed6b4();
    function_5c4d2cf9( var_50cc0d4f );
    level thread function_c7b22bd4();
    
    if ( isdefined( var_d3440450 ) )
    {
        skipto::function_4e3ab877( var_d3440450 );
    }
}

// Namespace kgb_aslt_entry/namespace_46f1d96e
// Params 4, eflags: 0x0
// Checksum 0xdf5de483, Offset: 0xa80
// Size: 0x24
function cleanup( *name, *starting, *direct, *player )
{
    
}

// Namespace kgb_aslt_entry/namespace_46f1d96e
// Params 0, eflags: 0x0
// Checksum 0x96a7c7f, Offset: 0xab0
// Size: 0x24
function init_flags()
{
    level flag::init( "aslt_entry_complete" );
}

// Namespace kgb_aslt_entry/namespace_46f1d96e
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0xae0
// Size: 0x4
function init_clientfields()
{
    
}

// Namespace kgb_aslt_entry/namespace_46f1d96e
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0xaf0
// Size: 0x4
function function_22b7fffd()
{
    
}

// Namespace kgb_aslt_entry/namespace_46f1d96e
// Params 0, eflags: 0x0
// Checksum 0x4ba00042, Offset: 0xb00
// Size: 0x23c
function function_272c06e0()
{
    getent( "guard_behind_counter", "targetname" ) spawner::add_spawn_function( &function_f073a9ac );
    getent( "guard_metal_detector_left", "targetname" ) spawner::add_spawn_function( &function_7f349869 );
    getent( "guard_side_counter", "targetname" ) spawner::add_spawn_function( &function_8a02be13 );
    level.var_aaa7acce = spawner::simple_spawn_single( "checkpoint_guy", &function_e1286843 );
    level.var_aaa7acce thread kgb_ins_prepare::function_3cf5b786();
    level thread scene::play( "scene_kgb_security_checkpoint", "Intro_Loop" );
    level thread scene::play( "scene_kgb_security_intro_guard", "Intro" );
    level thread scene::play( "scene_kgb_security_checkpoint_ambient_right" );
    level thread scene::play( "scene_kgb_security_checkpoint_ambient" );
    level.checkpoint_clip = getent( "checkpoint_clip", "targetname" );
    level.checkpoint_clip solid();
    level.checkpoint_clip_right = getent( "checkpoint_clip_right", "targetname" );
    level.checkpoint_clip_right solid();
    doors::function_f35467ac( "checkpoint_door", "targetname" );
}

// Namespace kgb_aslt_entry/namespace_46f1d96e
// Params 1, eflags: 0x0
// Checksum 0x157d1cd6, Offset: 0xd48
// Size: 0x44
function function_5c4d2cf9( var_50cc0d4f )
{
    level thread function_c844d59a( var_50cc0d4f );
    level flag::wait_till( "checkpoint_crossed" );
}

// Namespace kgb_aslt_entry/namespace_46f1d96e
// Params 0, eflags: 0x0
// Checksum 0x50d21ea9, Offset: 0xd98
// Size: 0x12c
function function_b6138231()
{
    wait 11;
    function_32e31449();
    level.belikov = namespace_e77bf565::function_e4660071( undefined );
    level.belikov.ignoreme = 1;
    level.belikov.ignoreall = 1;
    level thread function_bdc1f930();
    level thread scene::play( "scene_kgb_security_player" );
    level thread scene::play( "scene_kgb_security_inside" );
    level thread scene::play( "scene_kgb_security_checkpoint", "Checkpoint" );
    level scene::play( "scene_kgb_security_adler", level.adler );
    level flag::set( "checkpoint_crossed" );
}

// Namespace kgb_aslt_entry/namespace_46f1d96e
// Params 1, eflags: 0x0
// Checksum 0xf555a919, Offset: 0xed0
// Size: 0x4fc
function function_c844d59a( var_50cc0d4f )
{
    struct = struct::get( "checkpoint_interact", "targetname" );
    struct util::create_cursor_hint( undefined, ( 0, 0, 0 ), #"hash_1b2da47a0dd85d2d", 80 );
    
    if ( var_50cc0d4f )
    {
        level flag::set( "flag_aslt_entry_prompt_door" );
        level thread kgb_ins_rv::function_eb4677fe();
    }
    
    struct waittill( #"trigger" );
    level flag::set( "flag_aslt_entry_door" );
    struct util::remove_cursor_hint();
    level thread scene::play( "scene_kgb_walkup_adler", "Init" );
    level.player districts::function_930f8c81( [ "kgb_hq_basement" ] );
    namespace_353d803e::music( "8.1_gate" );
    namespace_353d803e::music( "8.2_cello_stingers_1" );
    level scene::stop( "scene_kgb_security_intro_guard" );
    level scene::stop( "scene_kgb_security_checkpoint_ambient_right", 1 );
    level thread function_c99d812a();
    level thread scene::play( "scene_kgb_security_intro_final_player", "Intro" );
    level scene::play( "scene_kgb_security_intro_final", "Intro" );
    level thread scene::play( "scene_kgb_security_intro_final_player", "DT Loop" );
    level thread scene::play( "scene_kgb_security_intro_final", "DT Loop" );
    level thread function_a3c75b89();
    var_dee2ca2d = dialog_tree::new_tree( undefined, undefined, 1, 1, undefined );
    var_dee2ca2d dialog_tree::add_option( #"hash_4b2b78e6a833b04f", undefined, undefined, undefined, 1 );
    var_dee2ca2d dialog_tree::add_option( #"hash_4b2b79e6a833b202", undefined, undefined, undefined, 1 );
    var_dee2ca2d dialog_tree::add_option( #"hash_4b2b7ae6a833b3b5", undefined, undefined, undefined, 1 );
    var_dee2ca2d dialog_tree::run( undefined, undefined, 5, undefined, 1 );
    level notify( #"hash_5b084334e0429d91" );
    level thread function_c9d5e36c();
    level scene::play( "scene_kgb_security_intro_final", "Walk Through Checkpoint" );
    level thread scene::play( "scene_kgb_security_intro_final", "Checkpoint Wait" );
    level flag::wait_till( "flag_player_checkpoint_start" );
    level.checkpoint_clip_right solid();
    spawncollision( "collision_clip_wall_128x128x10", "collider", ( 24, -834, 440 ), ( 0, 270, 0 ) );
    level snd::play( "evt_kgb_aslt_entry_metdet_alarm", ( 26, -850, 440 ) );
    level thread function_b6138231();
    level scene::play( "scene_kgb_security_intro_final", "Player Enter" );
    
    if ( !level flag::get( "flag_player_bag" ) )
    {
        level thread scene::play( "scene_kgb_security_intro_final", "Bag Wait" );
    }
}

// Namespace kgb_aslt_entry/namespace_46f1d96e
// Params 0, eflags: 0x0
// Checksum 0x25c97c02, Offset: 0x13d8
// Size: 0x74
function function_a3c75b89()
{
    level.player endon( #"death" );
    level waittill( #"hash_5b084334e0429d91" );
    wait 5;
    level scene::stop( "scene_kgb_security_intro_final_player" );
    wait 8.5;
    level.checkpoint_clip_right notsolid();
}

// Namespace kgb_aslt_entry/namespace_46f1d96e
// Params 0, eflags: 0x0
// Checksum 0xf4d518c5, Offset: 0x1458
// Size: 0x94
function function_f13fa17e()
{
    level thread scene::play( "scene_kgb_security_intro_guard", "failure", [ level.var_aaa7acce ] );
    level flag::wait_till( "flag_player_checkpoint_start" );
    level thread scene::play( "scene_kgb_security_intro_guard", "block", [ level.var_aaa7acce ] );
}

// Namespace kgb_aslt_entry/namespace_46f1d96e
// Params 0, eflags: 0x0
// Checksum 0x4ea099db, Offset: 0x14f8
// Size: 0x74
function function_c99d812a()
{
    level.player endon( #"death" );
    wait 3.1;
    level.player thread clientfield::set_to_player( "set_dof", 2 );
    level.player thread clientfield::set_to_player( "set_fov", 7 );
}

// Namespace kgb_aslt_entry/namespace_46f1d96e
// Params 1, eflags: 0x0
// Checksum 0x5643ebcb, Offset: 0x1578
// Size: 0x8c
function function_c9d5e36c( delay = 4 )
{
    level.player endon( #"death" );
    wait delay;
    level.player thread clientfield::set_to_player( "set_dof", 4 );
    level.player thread clientfield::set_to_player( "set_fov", 6 );
}

// Namespace kgb_aslt_entry/namespace_46f1d96e
// Params 0, eflags: 0x0
// Checksum 0x71f75f1b, Offset: 0x1610
// Size: 0x24
function function_521104dc()
{
    level flag::set( "flag_door_picked" );
}

// Namespace kgb_aslt_entry/namespace_46f1d96e
// Params 0, eflags: 0x0
// Checksum 0xe6816ced, Offset: 0x1640
// Size: 0xb4
function function_e1286843()
{
    self.ignoreme = 1;
    self.ignoreall = 1;
    self.animname = "checkpoint_guy";
    self.var_c681e4c1 = 1;
    weapon = getweapon( "smg_heavy_t9_kgb_cp" );
    self setweapon( weapon );
    self detach( self.head );
    waitframe( 1 );
    self attach( "c_t9_shg_npc_c_lutz_kgb" );
}

// Namespace kgb_aslt_entry/namespace_46f1d96e
// Params 0, eflags: 0x0
// Checksum 0x98096ea5, Offset: 0x1700
// Size: 0xac
function function_32e31449()
{
    tag = struct::get( "struct_player_checkpoint", "targetname" );
    tag util::create_cursor_hint( undefined, ( 0, 0, 0 ), #"hash_3b72af0b8e4b647f", 64 );
    tag waittill( #"trigger" );
    tag util::remove_cursor_hint();
    level flag::set( "flag_player_bag" );
}

// Namespace kgb_aslt_entry/namespace_46f1d96e
// Params 0, eflags: 0x0
// Checksum 0x8ffdcb2d, Offset: 0x17b8
// Size: 0x44
function function_bdc1f930()
{
    wait 6;
    namespace_353d803e::music( "9.0_infiltrating" );
    wait 9;
    namespace_353d803e::music( "8.3_cello_stingers_2" );
}

// Namespace kgb_aslt_entry/namespace_46f1d96e
// Params 1, eflags: 0x0
// Checksum 0x5fa4ff78, Offset: 0x1808
// Size: 0x146
function function_79dac42c( a_ents )
{
    level.var_db3f76f3 = a_ents[ #"guard_metal_detector_left" ];
    
    if ( isdefined( level.var_db3f76f3 ) )
    {
        level.var_db3f76f3.ignoreme = 1;
        level.var_db3f76f3.ignoreall = 1;
        level.var_db3f76f3.var_c681e4c1 = 1;
    }
    
    level.var_c98bb014 = a_ents[ #"guard_side_counter" ];
    
    if ( isdefined( level.var_c98bb014 ) )
    {
        level.var_c98bb014.ignoreme = 1;
        level.var_c98bb014.ignoreall = 1;
        level.var_c98bb014.var_c681e4c1 = 1;
    }
    
    level.var_e77c1147 = a_ents[ #"guard_behind_counter" ];
    
    if ( isdefined( level.var_e77c1147 ) )
    {
        level.var_e77c1147.ignoreme = 1;
        level.var_e77c1147.ignoreall = 1;
        level.var_e77c1147.var_c681e4c1 = 1;
    }
}

// Namespace kgb_aslt_entry/namespace_46f1d96e
// Params 0, eflags: 0x0
// Checksum 0x772560d4, Offset: 0x1958
// Size: 0xfc
function function_c7b22bd4()
{
    level flag::wait_till( "team_in_elevator" );
    level.belikov util::stop_magic_bullet_shield();
    level scene::stop( "scene_kgb_security_checkpoint_ambient", 1 );
    level scene::stop( "scene_kgb_security_intro_guard", 1 );
    level scene::stop( "scene_kgb_security_inside", 1 );
    level scene::stop( "scene_kgb_security_checkpoint", 1 );
    level scene::stop( "scene_kgb_security_intro_final", 1 );
    level scene::stop( "scene_kgb_walkup_adler" );
}

// Namespace kgb_aslt_entry/namespace_46f1d96e
// Params 0, eflags: 0x0
// Checksum 0x2520df1f, Offset: 0x1a60
// Size: 0x2c
function function_f3c6e044()
{
    wait 3;
    level.var_aaa7acce thread dialogue::queue( "vox_cp_rkgb_02510_rms1_whatdoyouthinky_45" );
}

// Namespace kgb_aslt_entry/namespace_46f1d96e
// Params 0, eflags: 0x0
// Checksum 0x67a97324, Offset: 0x1a98
// Size: 0x230
function function_9e8ed6b4()
{
    level scene::add_scene_func( "scene_kgb_bodybag_vignette", &function_ae4ff0e2 );
    
    if ( isdefined( level.var_594e55d7 ) )
    {
        var_fc1d94f8 = getentarray( "bodybag_scenes_collision", "targetname" );
        
        foreach ( location in level.var_594e55d7 )
        {
            var_1b008e47 = getent( location + "_collision", "script_noteworthy" );
            var_1b008e47.origin -= ( 0, 0, 128 );
            arrayremovevalue( var_fc1d94f8, var_1b008e47 );
            
            switch ( location )
            {
                case #"hash_29430aa710cd437c":
                    var_515424a3 = "flag_player_near_elevator";
                    break;
                default:
                    var_515424a3 = undefined;
                    break;
            }
            
            level thread function_8c2ff160( location, var_515424a3 );
        }
        
        foreach ( brushmodel in var_fc1d94f8 )
        {
            brushmodel delete();
        }
    }
}

// Namespace kgb_aslt_entry/namespace_46f1d96e
// Params 2, eflags: 0x0
// Checksum 0x564d5d1d, Offset: 0x1cd0
// Size: 0x11c
function function_8c2ff160( scene_name, var_515424a3 )
{
    level thread scene::play( scene_name, "Duo_Loop" );
    
    if ( isdefined( var_515424a3 ) )
    {
        level flag::wait_till( var_515424a3 );
        level scene::play( scene_name, "Transition" );
        level thread scene::play( scene_name, "Trio_Loop" );
    }
    
    level flag::wait_till( "team_in_elevator" );
    level scene::stop( scene_name, 1 );
    var_1b008e47 = getent( scene_name + "_collision", "script_noteworthy" );
    var_1b008e47 delete();
}

// Namespace kgb_aslt_entry/namespace_46f1d96e
// Params 1, eflags: 0x0
// Checksum 0x858b906d, Offset: 0x1df8
// Size: 0xaa
function function_ae4ff0e2( a_ents )
{
    foreach ( ent in a_ents )
    {
        if ( isai( ent ) )
        {
            ent.ignoreme = 1;
            ent.var_7b71465f = 1;
        }
    }
}

// Namespace kgb_aslt_entry/namespace_46f1d96e
// Params 0, eflags: 0x0
// Checksum 0xd6aa3b63, Offset: 0x1eb0
// Size: 0xb4
function function_f073a9ac()
{
    self detach( self.head );
    self.ignoreme = 1;
    self.ignoreall = 1;
    self.var_c681e4c1 = 1;
    level.var_e77c1147 = self;
    weapon = getweapon( "smg_heavy_t9_kgb_cp" );
    self setweapon( weapon );
    waitframe( 1 );
    self attach( "c_t9_shg_npc_a_smirnov_kgb" );
}

// Namespace kgb_aslt_entry/namespace_46f1d96e
// Params 0, eflags: 0x0
// Checksum 0x27bd026e, Offset: 0x1f70
// Size: 0xb4
function function_7f349869()
{
    self detach( self.head );
    self.ignoreme = 1;
    self.ignoreall = 1;
    self.var_c681e4c1 = 1;
    level.var_db3f76f3 = self;
    weapon = getweapon( "smg_heavy_t9_kgb_cp" );
    self setweapon( weapon );
    waitframe( 1 );
    self attach( "c_t9_shg_npc_e_reshetnikov_kgb" );
}

// Namespace kgb_aslt_entry/namespace_46f1d96e
// Params 0, eflags: 0x0
// Checksum 0x4d71ed70, Offset: 0x2030
// Size: 0x74
function function_8a02be13()
{
    self.ignoreme = 1;
    self.ignoreall = 1;
    self.var_c681e4c1 = 1;
    level.var_c98bb014 = self;
    weapon = getweapon( "smg_heavy_t9_kgb_cp" );
    self setweapon( weapon );
}

// Namespace kgb_aslt_entry/namespace_46f1d96e
// Params 0, eflags: 0x0
// Checksum 0x2199bd39, Offset: 0x20b0
// Size: 0x24
function function_b8027a11()
{
    doors::open( "camera_room", "targetname" );
}

