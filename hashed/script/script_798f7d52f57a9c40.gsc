#using script_1b9f100b85b7e21d;
#using script_1fd2c6e5fc8cb1c3;
#using script_3dc93ca9902a9cda;
#using script_4134e1e2e7684c4c;
#using script_4c90e79630523e91;
#using script_4ec222619bffcfd1;
#using script_7901e9dc8618be8a;
#using scripts\core_common\ai_shared;
#using scripts\core_common\animation_shared;
#using scripts\core_common\array_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\exploder_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\status_effects\status_effect_util;
#using scripts\core_common\struct;
#using scripts\core_common\trigger_shared;
#using scripts\core_common\util_shared;
#using scripts\core_common\values_shared;
#using scripts\cp_common\dialog_tree;
#using scripts\cp_common\dialogue;
#using scripts\cp_common\gametypes\battlechatter;
#using scripts\cp_common\gametypes\save;
#using scripts\cp_common\objectives_ui;
#using scripts\cp_common\skipto;
#using scripts\cp_common\snd;
#using scripts\cp_common\spawn_manager;
#using scripts\cp_common\ui\prompts;
#using scripts\cp_common\util;

#namespace kgb_aslt_vault;

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 1, eflags: 0x0
// Checksum 0xa266ac5a, Offset: 0xf08
// Size: 0x54
function starting( *var_d3440450 )
{
    level thread namespace_e77bf565::function_277bceaa( 0 );
    level thread scene::init_streamer( "scene_kgb_env_server_loops", getplayers() );
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 2, eflags: 0x0
// Checksum 0x8332d7ad, Offset: 0xf68
// Size: 0x38c
function main( var_d3440450, var_50cc0d4f )
{
    level flag::set( "aslt_vault_begin" );
    level battlechatter::function_2ab9360b( 1 );
    
    if ( is_true( var_50cc0d4f ) )
    {
        level.adler = namespace_e77bf565::function_52fe0eb3( var_d3440450 );
        level.adler namespace_e77bf565::function_5770c74( "assault" );
        level thread scene::skipto_end_noai( "scene_kgb_door_kick", "Last_Frame", undefined, 1 );
        level thread scene::skipto_end_noai( "scene_kgb_utility_room_adler", "Door_Closed", undefined, 1 );
        level scene::init( "scene_kgb_open_vault" );
        level thread scene::play_from_time( "scene_kgb_open_vault", "Open_Vault", undefined, 1, 1, 1, 0, 0 );
        level thread scene::init( "scene_kgb_door_shoulder" );
        level flag::set( "adler_entered_vault" );
        level flag::set( "vault_opened" );
        level thread function_833a9413( var_50cc0d4f );
        level thread function_46fe3d22( undefined );
        level thread kgb_aslt_bunker_escape::function_bfe40bf0();
        level thread kgb_aslt_escape_lights_out::function_a0d18564();
        level thread function_259d8d6f();
        level thread namespace_e77bf565::function_1067ebf5( "rotating_object_bunker", "player_grabbed_armor" );
    }
    
    level thread namespace_e77bf565::function_7feb07bb( var_d3440450, var_50cc0d4f );
    namespace_353d803e::music( "12.0_intel" );
    level thread function_cb6665bc();
    level thread function_b735db01();
    level thread function_25df3863();
    level thread scene::init( "scene_kgb_tunnel_catwalk_transition" );
    level thread scene::init( "scene_kgb_lights_out" );
    spawner::add_spawn_function_ai_group( "macguffin_vault_door_closing_guys", &function_c35f7ff1 );
    level flag::wait_till( "aslt_vault_complete" );
    
    if ( isdefined( var_d3440450 ) )
    {
        skipto::function_4e3ab877( var_d3440450 );
    }
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 4, eflags: 0x0
// Checksum 0x5962221a, Offset: 0x1300
// Size: 0x3c
function cleanup( *name, *starting, *direct, *player )
{
    namespace_6f1d35e1::function_b2911127( 1 );
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0xdf208488, Offset: 0x1348
// Size: 0xac
function function_cb6665bc()
{
    namespace_6f1d35e1::function_b2911127( 0 );
    wait 0.5;
    namespace_6f1d35e1::function_eea42dd9( #"hash_27050e599034898f" );
    namespace_6f1d35e1::function_487b4340( #"hash_6dd620902fe6b283" );
    namespace_6f1d35e1::function_5d2e6f6a( 1 );
    namespace_6f1d35e1::function_4951a2c8( 1, 1 );
    namespace_6f1d35e1::function_4951a2c8( 2, 1 );
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0x3679ad7b, Offset: 0x1400
// Size: 0x284
function init_flags()
{
    level flag::init( "aslt_vault_begin" );
    level flag::init( "aslt_vault_complete" );
    level flag::init( "macguffin_download_started" );
    level flag::init( "macguffin_found" );
    level flag::init( "remove_macguffin_disk" );
    level flag::init( "macguffin_disk_removed" );
    level flag::init( "login_func_called" );
    level flag::init( "search_database_func_called" );
    level flag::init( "copy_to_disk_func_called" );
    level flag::init( "dragovich_func_called" );
    level flag::init( "yamantau_func_called" );
    level flag::init( "sleeper_agents_func_called" );
    level flag::init( "vault_opened" );
    level flag::init( "vault_door_closed" );
    level flag::init( "player_exited_computer" );
    level flag::init( "vault_breached" );
    level flag::init( "vault_download_75_percent_played" );
    level flag::init( "vault_download_50_percent_played" );
    level flag::init( "vault_download_25_percent_played" );
    level flag::init( "macguffin_org_obj_created" );
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0xabfcf7e5, Offset: 0x1690
// Size: 0xc4
function init_clientfields()
{
    clientfield::register( "scriptmover", "vault_torch_vfx", 1, 1, "int" );
    clientfield::register( "world", "vault_breach_dmg_models_and_vol_decals", 1, 1, "int" );
    clientfield::register( "scriptmover", "vault_hanging_light_vfx", 1, 1, "int" );
    clientfield::register( "scriptmover", "vault_hanging_light_flicker_vfx", 1, 1, "int" );
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0x383cb92d, Offset: 0x1760
// Size: 0x5c
function function_22b7fffd()
{
    scene::add_scene_func( "scene_kgb_vault_breach_weld", &function_8981072f, "Shot_0" );
    animation::add_notetrack_func( "kgb_aslt_vault::destroy_vault_control_panel", &function_66b280b8 );
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0x4161f8c1, Offset: 0x17c8
// Size: 0x22c
function function_b735db01()
{
    level flag::wait_till( "adler_entered_vault" );
    level thread scene::play( "scene_kgb_vault_approach", "Wait_For_Vault_Open_Idle" );
    level flag::wait_till( "close_vault" );
    scene::play( "scene_kgb_vault_approach", "Close_Vault" );
    level thread scene::play( "scene_kgb_vault_approach", "Close_Vault_Loop" );
    level thread function_b9b2f24d();
    level flag::wait_till( "copy_to_disk_func_called" );
    level scene::stop( "scene_kgb_vault_approach" );
    level.adler util::stop_magic_bullet_shield();
    level.adler delete();
    level.adler = namespace_e77bf565::function_52fe0eb3( undefined, "adler_shotgun" );
    vault_adler_node = getnode( "vault_adler_node", "targetname" );
    level.adler forceteleport( vault_adler_node.origin, vault_adler_node.angles );
    level.adler allowedstances( "crouch", "stand" );
    level.adler.goalradius = 125;
    level.adler.fixednode = 0;
    level.adler thread spawner::go_to_node( vault_adler_node );
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0x3b4e551, Offset: 0x1a00
// Size: 0x20c
function function_25df3863()
{
    level.player endon( #"death" );
    level.adler dialogue::queue( "vox_cp_rkgb_04100_adlr_yougrabtheintel_2a" );
    macguffin_org = struct::get( "macguffin_org", "targetname" );
    macguffin_org util::create_cursor_hint( undefined, undefined, #"hash_40869a54fc7cd4f3", 48, undefined, undefined, undefined, undefined, undefined, 0, 0 );
    level flag::wait_till( "macguffin_org_obj_created" );
    macguffin_org prompts::set_objective( "obj_goto" );
    level thread close_vault();
    macguffin_org waittill( #"trigger" );
    level.player val::set( #"scene_kgb_vault_hack", "disable_weapons", 1 );
    level flag::set( "macguffin_download_started" );
    macguffin_org util::remove_cursor_hint();
    level notify( #"hash_18700fd393b438a9" );
    thread namespace_353d803e::function_977ae254();
    scene::play( "scene_kgb_vault_hack", "Center" );
    level thread scene::play( "scene_kgb_vault_hack", "Loop" );
    wait 0.5;
    function_819bc4e6();
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0xa8dc49a2, Offset: 0x1c18
// Size: 0xbc
function close_vault()
{
    level flag::wait_till( "close_vault" );
    level thread kgb_aslt_bunker_escape::function_bfe40bf0( 1 );
    thread namespace_353d803e::function_3873d8bb();
    thread namespace_353d803e::function_9488b7a7();
    level scene::play( "scene_kgb_open_vault", "Close_Vault" );
    level flag::set( "vault_door_closed" );
    level thread namespace_e77bf565::cleanup_corpses();
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0xc422327a, Offset: 0x1ce0
// Size: 0x14c
function function_b9b2f24d()
{
    level endon( #"hash_18700fd393b438a9" );
    level.adler endon( #"death" );
    level.player endon( #"death" );
    
    if ( flag::get( "macguffin_download_started" ) )
    {
        return;
    }
    
    level.adler dialogue::queue( "vox_cp_rkgb_04100_adlr_hurryupandgetth_9d" );
    var_b9b2f24d = [];
    var_b9b2f24d[ var_b9b2f24d.size ] = "vox_cp_rkgb_04100_adlr_gettheintelwego_0b";
    var_b9b2f24d[ var_b9b2f24d.size ] = "vox_cp_rkgb_04100_adlr_bellgrabtheinte_32";
    wait 10;
    i = 0;
    
    while ( true )
    {
        level.player thread objectives_ui::show_objectives();
        level.adler dialogue::queue( "" + var_b9b2f24d[ i ] );
        i++;
        
        if ( i + 1 > var_b9b2f24d.size )
        {
            i = 0;
        }
        
        wait 10;
    }
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0xb21015b4, Offset: 0x1e38
// Size: 0x2c
function function_6459782b()
{
    function_d889763b();
    level thread function_cd6f4f9c();
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0xbe00df51, Offset: 0x1e70
// Size: 0x98
function function_d889763b()
{
    level endon( #"hash_5794714005eae043" );
    level.var_cdea8414 = 4;
    level.var_61ab3c37 = 6;
    spawn_manager::enable( "macguffin_guys_spawn_manager" );
    
    while ( true )
    {
        wait randomfloatrange( level.var_cdea8414, level.var_61ab3c37 );
        level thread function_c9d4e5ab();
    }
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0x4dc271d9, Offset: 0x1f10
// Size: 0x170
function function_cd6f4f9c()
{
    spawn_manager::disable( "macguffin_guys_spawn_manager" );
    guys = spawn_manager::get_ai( "macguffin_guys_spawn_manager" );
    namespace_e77bf565::function_5dfd7fb1( "vault_retreat_unused_nodes", "script_noteworthy", 0 );
    namespace_e77bf565::function_5dfd7fb1( "vault_retreat_used_nodes", "script_noteworthy", 1 );
    
    if ( isdefined( guys ) )
    {
        volume = getent( "macguffin_guys_retreat_node", "targetname" );
        
        if ( isdefined( volume ) )
        {
            foreach ( guy in guys )
            {
                if ( isdefined( guy ) && isalive( guy ) )
                {
                    guy thread retreat( volume );
                }
            }
        }
    }
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 1, eflags: 0x0
// Checksum 0x64e3a352, Offset: 0x2088
// Size: 0xac
function retreat( volume )
{
    self endon( #"death" );
    wait randomfloatrange( 1, 4 );
    self.var_d951f1c2 = 0;
    self ai::set_behavior_attribute( "demeanor", "cqb" );
    self thread spawner::go_to_node( volume );
    self thread namespace_e77bf565::function_7d2d1987( 2250000 );
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0x7081481f, Offset: 0x2140
// Size: 0x94
function function_819bc4e6()
{
    namespace_6f1d35e1::function_487b4340( #"hash_2830fd6cdc71ab59" );
    namespace_6f1d35e1::function_5d2e6f6a( 2 );
    namespace_6f1d35e1::function_4951a2c8( 1, 50 );
    thread namespace_353d803e::function_8785f966();
    level waittill( #"typing_complete" );
    level thread function_141307f2();
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0x60dc9ba4, Offset: 0x21e0
// Size: 0x1ec
function function_141307f2()
{
    function_17f054b8();
    function_c59f3e2f();
    level.adler thread dialogue::queue( "vox_cp_rkgb_04100_adlr_thatsitbellyoug_38" );
    level.var_a6c79953 = dialog_tree::new_tree( undefined, undefined, 1 );
    level.var_a6c79953 dialog_tree::function_6bb91351( 1 );
    level.var_a6c79953 dialog_tree::add_option( #"hash_2e54e1701e5e69bf", undefined, undefined, undefined, undefined, undefined, "forever", &function_ef3775d7 );
    level.var_a6c79953 dialog_tree::add_option( #"hash_884c0b0de4368bc", undefined, undefined, undefined, undefined, undefined, "forever", &function_1967c4b6 );
    level.var_a6c79953 dialog_tree::add_option( #"hash_5af22c9d13a055f5", undefined, undefined, undefined, undefined, undefined, "forever", &function_2d5943c4 );
    level.var_a6c79953 dialog_tree::add_option( #"hash_5b21c68c6cbbfb69", undefined, undefined, undefined, 1, undefined, "forever", &function_df22b978 );
    level.var_a6c79953 dialog_tree::function_6ebd37a4();
    level.var_a6c79953 thread dialog_tree::run( undefined, undefined, undefined, undefined, 1, 4, 1 );
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0x47dcddc6, Offset: 0x23d8
// Size: 0x13c
function function_17f054b8()
{
    namespace_6f1d35e1::function_487b4340( #"hash_7e330d6f797d5d88" );
    namespace_6f1d35e1::function_5d2e6f6a( 3 );
    thread namespace_353d803e::function_eeeee919();
    namespace_6f1d35e1::function_4951a2c8( 1, 1 );
    level waittill( #"typing_complete" );
    namespace_6f1d35e1::function_4951a2c8( 2, 1 );
    level waittill( #"typing_complete" );
    namespace_6f1d35e1::function_4951a2c8( 3, 1 );
    level waittill( #"typing_complete" );
    namespace_6f1d35e1::function_4951a2c8( 4, 1 );
    level waittill( #"typing_complete" );
    namespace_6f1d35e1::function_4951a2c8( 5, 1 );
    level waittill( #"typing_complete" );
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0x46d15b62, Offset: 0x2520
// Size: 0x16c
function function_c59f3e2f()
{
    wait 1;
    namespace_6f1d35e1::function_487b4340( #"hash_29e5d1b731771567" );
    namespace_6f1d35e1::function_5d2e6f6a( 2 );
    namespace_6f1d35e1::function_4951a2c8( 1, 10 );
    thread namespace_353d803e::function_50d6a850();
    wait 1;
    namespace_6f1d35e1::function_5d2e6f6a( 4 );
    thread namespace_353d803e::function_56c95a7e();
    wait 3;
    namespace_6f1d35e1::function_5d2e6f6a( 7 );
    thread namespace_353d803e::function_7a79a1de();
    wait 2;
    namespace_6f1d35e1::function_487b4340( #"hash_3d1ba8ca98db9b7" );
    namespace_6f1d35e1::function_5d2e6f6a( 6 );
    namespace_6f1d35e1::function_4951a2c8( 1, 10 );
    thread namespace_353d803e::function_515a5d5a();
    wait 1;
    namespace_6f1d35e1::function_4951a2c8( 2, 10 );
    level waittill( #"typing_complete" );
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0xb5056b3c, Offset: 0x2698
// Size: 0x12c
function function_ef3775d7()
{
    level thread savegame::checkpoint_save();
    namespace_6f1d35e1::function_b2911127( 0 );
    waittillframeend();
    namespace_6f1d35e1::function_eea42dd9( #"hash_27050e599034898f" );
    namespace_6f1d35e1::function_487b4340( #"hash_64c36c1200285612" );
    namespace_6f1d35e1::function_5d2e6f6a( 9 );
    thread namespace_353d803e::function_50885ec2();
    namespace_6f1d35e1::function_4951a2c8( 1, 50, 1 );
    level waittill( #"typing_complete" );
    namespace_6f1d35e1::function_4951a2c8( 2, 100, 1 );
    level waittill( #"typing_complete" );
    level flag::set( "macguffin_found" );
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0xbd409c4e, Offset: 0x27d0
// Size: 0x10c
function function_1967c4b6()
{
    namespace_6f1d35e1::function_487b4340( #"hash_208fbf208175ea49" );
    namespace_6f1d35e1::function_5d2e6f6a( 5 );
    thread namespace_353d803e::function_39867bb0();
    namespace_6f1d35e1::function_4951a2c8( 1, 100 );
    level waittill( #"typing_complete" );
    namespace_6f1d35e1::function_4951a2c8( 2, 100 );
    level waittill( #"typing_complete" );
    namespace_6f1d35e1::function_4951a2c8( 3, 50 );
    level waittill( #"typing_complete" );
    namespace_6f1d35e1::function_4951a2c8( 4, 50 );
    level waittill( #"typing_complete" );
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0xe14585f, Offset: 0x28e8
// Size: 0x1ec
function function_2d5943c4()
{
    namespace_6f1d35e1::function_14291ddf( #"hash_1ae34f51544931aa" );
    namespace_6f1d35e1::function_487b4340( #"hash_375a7b8b525491c6" );
    namespace_6f1d35e1::function_93dd719c( #"hash_ca9fa49e8a95cdc", 1 );
    namespace_6f1d35e1::function_5d2e6f6a( 11 );
    thread namespace_353d803e::function_56d2fda5();
    wait 1;
    namespace_6f1d35e1::function_4951a2c8( 1, 50 );
    level waittill( #"typing_complete" );
    namespace_6f1d35e1::function_4951a2c8( 2, 50 );
    level waittill( #"typing_complete" );
    namespace_6f1d35e1::function_4951a2c8( 3, 50 );
    level waittill( #"typing_complete" );
    namespace_6f1d35e1::function_4951a2c8( 4, 50 );
    level waittill( #"typing_complete" );
    namespace_6f1d35e1::function_4951a2c8( 5, 50 );
    level waittill( #"typing_complete" );
    namespace_6f1d35e1::function_4951a2c8( 6, 50 );
    level waittill( #"typing_complete" );
    namespace_6f1d35e1::function_4951a2c8( 7, 30 );
    level waittill( #"typing_complete" );
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0x744f830d, Offset: 0x2ae0
// Size: 0x3c
function function_df22b978()
{
    level flag::set( "copy_to_disk_func_called" );
    level thread function_f7fd6a9d();
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0xd5f15466, Offset: 0x2b28
// Size: 0x54c
function function_f7fd6a9d()
{
    level.player endon( #"death" );
    var_ba327877 = 80;
    level thread savegame::checkpoint_save();
    level thread function_93564051();
    scene::play( "scene_kgb_vault_hack", "Exit" );
    level.player val::reset( #"scene_kgb_vault_hack", "disable_weapons" );
    level flag::set( "player_exited_computer" );
    namespace_6f1d35e1::function_5d2e6f6a( 10 );
    namespace_6f1d35e1::function_6f3be7df( 0 );
    wait 0.5;
    
    for (i = var_ba327877; i > -1; i--) {
        var_2da430e6 = float( i / var_ba327877 );
        
        if ( i != var_ba327877 )
        {
            namespace_6f1d35e1::function_6f3be7df( var_2da430e6 );
        }
        
        wait 1;
        
        if ( var_2da430e6 <= 0.75 )
        {
            if ( !level flag::get( "vault_download_25_percent_played" ) )
            {
                level flag::set( "vault_download_25_percent_played" );
                level.var_cdea8414 = 3;
                level.var_61ab3c37 = 5;
                level thread savegame::checkpoint_save();
            }
        }
        
        if ( var_2da430e6 <= 0.5 )
        {
            if ( !level flag::get( "vault_download_50_percent_played" ) )
            {
                level.adler thread dialogue::queue( "vox_cp_rkgb_04100_adlr_halfwaythere_25" );
                level flag::set( "vault_download_50_percent_played" );
                level.var_cdea8414 = 2;
                level.var_61ab3c37 = 4;
                level thread savegame::checkpoint_save();
            }
        }
        
        if ( var_2da430e6 <= 0.25 )
        {
            if ( !level flag::get( "vault_download_75_percent_played" ) )
            {
                level.adler thread dialogue::queue( "vox_cp_rkgb_04100_adlr_itsalmostdoneco_db" );
                level flag::set( "vault_download_75_percent_played" );
                level.var_cdea8414 = 1;
                level.var_61ab3c37 = 3;
                level thread savegame::checkpoint_save();
            }
        }
        
        if ( i == 0 )
        {
            namespace_6f1d35e1::function_6f3be7df( -1 );
            break;
        }
    }
    
    level notify( #"hash_5794714005eae043" );
    wait 0.5;
    vault_enemy_volume = getent( "vault_enemy_volume", "targetname" );
    
    while ( true )
    {
        enemies = getaiteamarray( "axis" );
        function_1eaaceab( enemies );
        var_5edaa495 = 0;
        
        foreach ( enemy in enemies )
        {
            if ( enemy istouching( vault_enemy_volume ) )
            {
                var_5edaa495 = 1;
            }
        }
        
        if ( var_5edaa495 )
        {
            wait 0.1;
            continue;
        }
        
        break;
    }
    
    level flag::set( "macguffin_disk_removed" );
    namespace_353d803e::music( "13.3_lockdown_tension" );
    thread namespace_353d803e::function_2f74668e();
    level scene::play( "scene_kgb_vault_hack", "Adler_Eject_Disk" );
    level flag::set( "aslt_vault_complete" );
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 1, eflags: 0x0
// Checksum 0x9f45753c, Offset: 0x3080
// Size: 0xcc
function function_833a9413( var_50cc0d4f = 0 )
{
    var_23d03ce = struct::get_array( "vault_reel_to_reel", "targetname" );
    array::thread_all( var_23d03ce, &function_74aac033, "scene_kgb_env_server_loops", var_50cc0d4f );
    var_708f97a7 = struct::get_array( "vault_reel_to_reel_no_glass", "targetname" );
    array::thread_all( var_708f97a7, &function_74aac033, "scene_kgb_env_server_loops_no_glass", var_50cc0d4f );
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 2, eflags: 0x0
// Checksum 0x37a7ee0, Offset: 0x3158
// Size: 0x120
function function_74aac033( var_40498194, var_50cc0d4f = 0 )
{
    level endon( #"aslt_bunker_escape_complete" );
    loops = [];
    loops[ loops.size ] = "loop_a";
    loops[ loops.size ] = "loop_b";
    loops[ loops.size ] = "loop_c";
    
    if ( is_true( var_50cc0d4f ) )
    {
        self scene::play( var_40498194, array::random( loops ) );
    }
    
    while ( true )
    {
        wait randomfloatrange( 0, 8 );
        self scene::play( var_40498194, array::random( loops ) );
    }
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0x9253ab35, Offset: 0x3280
// Size: 0x67c
function function_93564051()
{
    level.player endon( #"death" );
    wait 2.5;
    vault_breach_guys_audio_org = getent( "vault_breach_guys_audio_org", "targetname" );
    sndobj = snd::function_9ae4fc6f( "vox_cp_rkgb_04100_rms2_thedoorsaretoot_86", vault_breach_guys_audio_org.origin );
    snd::function_2fdc4fb( sndobj );
    sndobj = snd::function_9ae4fc6f( "vox_cp_rkgb_04100_rms1_usethetorchcutt_3a", vault_breach_guys_audio_org.origin );
    snd::function_2fdc4fb( sndobj );
    wait 2;
    vault_torch_vfx_org = struct::get( "vault_torch_vfx_org", "targetname" );
    namespace_353d803e::function_33c1b7fa();
    var_1a0773bd = util::spawn_anim_model( "p9_rus_kgb_welding_ribbon_01", vault_torch_vfx_org.origin );
    var_1a0773bd.angles = vault_torch_vfx_org.angles;
    var_1a0773bd.n_script_anim_rate = 2.5;
    var_1a0773bd clientfield::set( "vault_torch_vfx", 1 );
    scene::play( "scene_kgb_vault_breach_weld", "Shot_0", array( var_1a0773bd ) );
    scene::play( "scene_kgb_vault_breach_weld", "Shot_1", array( var_1a0773bd ) );
    scene::play( "scene_kgb_vault_breach_weld", "Shot_2", array( var_1a0773bd ) );
    scene::play( "scene_kgb_vault_breach_weld", "Shot_3", array( var_1a0773bd ) );
    level.adler thread dialogue::queue( "vox_cp_rkgb_04100_adlr_theyrealmostthr_93" );
    scene::play( "scene_kgb_vault_breach_weld", "Shot_4", array( var_1a0773bd ) );
    var_1a0773bd clientfield::set( "vault_torch_vfx", 0 );
    thread namespace_353d803e::function_d9c39917();
    level.adler dialogue::queue( "vox_cp_rkgb_04100_adlr_getreadyherethe_fa" );
    wait 1;
    vault_breach_explosion_org = struct::get( "vault_breach_explosion_org", "targetname" );
    e_grenade = var_1a0773bd magicgrenadetype( getweapon( #"hash_3d69608df21d9085" ), vault_breach_explosion_org.origin, ( 0, 0, 0 ), 0.05 );
    radiusdamage( vault_breach_explosion_org.origin, 200, 300, 50, undefined, "MOD_GRENADE", getweapon( #"hash_3d69608df21d9085" ) );
    wait 0.05;
    namespace_353d803e::music( "13.0_combat3" );
    snd::play( "evt_kgb_vault_door_explo", ( -5800, 1796, -1603 ) );
    playrumbleonposition( "artillery_rumble", vault_breach_explosion_org.origin );
    earthquake( 0.5, 1, vault_breach_explosion_org.origin, 800 );
    radiusdamage( vault_breach_explosion_org.origin, 300, 100, 25, undefined, "MOD_GRENADE", getweapon( #"hash_3d69608df21d9085" ) );
    exploder::exploder( "vault_breach" );
    exploder::exploder( "vault_breach_aftermath" );
    level thread model_swap( "a_lights_model_01", "p9_usa_hotel_sundowner_light_porch_overhead_chained_01_flicker" );
    level thread function_2a6f3b1( "a_lights_model_01", "vault_hanging_light_flicker_vfx" );
    level thread scene::play( "scene_kgb_open_vault", "Enemies_Breach_Vault" );
    level thread namespace_e77bf565::function_378ac0da( "vault_smod", 1, #"hash_3fc26496edc99ec" );
    level thread kgb_aslt_bunker_escape::function_bfe40bf0();
    level flag::set( "vault_breached" );
    wait 0.05;
    level.player thread function_17afb30c();
    var_1a0773bd delete();
    level thread scene::skipto_end( "scene_kgb_door_shoulder" );
    wait 0.5;
    spawner::simple_spawn( "macguffin_breach_guys", &function_495b1b1f );
    level thread function_6459782b();
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 1, eflags: 0x0
// Checksum 0xbb0f4e35, Offset: 0x3908
// Size: 0x54
function function_8981072f( *var_1db4c609 )
{
    level.adler endon( #"death" );
    wait 0.5;
    level.adler thread dialogue::queue( "vox_cp_rkgb_04100_adlr_wererunningouto_fd" );
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0x61b9aa5c, Offset: 0x3968
// Size: 0x4c
function function_495b1b1f()
{
    self.ignoresuppression = 1;
    self.var_d951f1c2 = 1;
    self.goalradius = 300;
    self setgoal( level.player, 1 );
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0x54471415, Offset: 0x39c0
// Size: 0x1b4
function function_c9d4e5ab()
{
    level.player endon( #"death" );
    guys = spawn_manager::get_ai( "macguffin_guys_spawn_manager" );
    guys = arraysortclosest( guys, level.player.origin );
    
    foreach ( guy in guys )
    {
        if ( isdefined( guy ) && isalive( guy ) )
        {
            if ( is_true( guy.rushing_player ) )
            {
                continue;
            }
            
            guy.rushing_player = 1;
            guy.ignoresuppression = 1;
            guy.var_d951f1c2 = 1;
            guy ai::set_behavior_attribute( "demeanor", "combat" );
            guy ai::set_behavior_attribute( "sprint", 1 );
            guy.goalradius = 300;
            guy setgoal( level.player, 1 );
            break;
        }
    }
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 2, eflags: 0x0
// Checksum 0x68e6f4dc, Offset: 0x3b80
// Size: 0x49c
function function_46fe3d22( delay, var_270faa93 )
{
    vault_hanging_lights = struct::get_array( "vault_hanging_lights", "targetname" );
    
    foreach ( struct in vault_hanging_lights )
    {
        if ( !isdefined( struct.light_model ) )
        {
            struct.light_model = util::spawn_model( struct.model, struct.origin, struct.angles );
            struct.light_model.targetname = struct.script_noteworthy;
        }
    }
    
    if ( isdefined( delay ) )
    {
        wait delay;
    }
    
    snd::play( "evt_kgb_vault_light_a", ( -5927, 1784, -1509 ) );
    exploder::exploder( "a_lights" );
    exploder::exploder( "x_lights" );
    
    if ( is_true( var_270faa93 ) )
    {
        level thread model_swap( "a_lights_model_01", "p9_usa_hotel_sundowner_light_porch_overhead_chained_01_flicker" );
        level thread function_2a6f3b1( "a_lights_model_01", "vault_hanging_light_flicker_vfx" );
    }
    else
    {
        level thread model_swap( "a_lights_model_01", "p9_usa_hotel_sundowner_light_porch_overhead_chained_01_on" );
        level thread function_2a6f3b1( "a_lights_model_01" );
    }
    
    level thread model_swap( "a_lights_model_02", "p9_usa_hotel_sundowner_light_porch_overhead_chained_01_on" );
    level thread function_2a6f3b1( "a_lights_model_02" );
    
    if ( isdefined( delay ) )
    {
        wait 1;
    }
    
    snd::play( "evt_kgb_vault_light_b", ( -6168, 1784, -1509 ) );
    exploder::exploder( "b_lights" );
    exploder::exploder( "y_lights" );
    level thread model_swap( "b_lights_model_03", "p9_usa_hotel_sundowner_light_porch_overhead_chained_01_on" );
    level thread function_2a6f3b1( "b_lights_model_03" );
    level thread model_swap( "b_lights_model_04", "p9_usa_hotel_sundowner_light_porch_overhead_chained_01_on" );
    level thread function_2a6f3b1( "b_lights_model_04" );
    
    if ( isdefined( delay ) )
    {
        wait 1;
    }
    
    snd::play( "evt_kgb_vault_light_c", ( -6347, 1784, -1509 ) );
    exploder::exploder( "c_lights" );
    exploder::exploder( "z_lights" );
    level thread model_swap( "c_lights_model_05", "p9_usa_hotel_sundowner_light_porch_overhead_chained_01_on" );
    level thread function_2a6f3b1( "c_lights_model_05" );
    level thread model_swap( "c_lights_model_06", "p9_usa_hotel_sundowner_light_porch_overhead_chained_01_on" );
    level thread function_2a6f3b1( "c_lights_model_06" );
    
    if ( isdefined( delay ) )
    {
        wait 1;
    }
    
    snd::play( "evt_kgb_vault_light_d", ( -6347, 1784, -1509 ) );
    exploder::exploder( "d_lights" );
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 2, eflags: 0x0
// Checksum 0xbf5545cf, Offset: 0x4028
// Size: 0x74
function function_2a6f3b1( lighttargetname, clientfield = "vault_hanging_light_vfx" )
{
    light = getent( lighttargetname, "targetname" );
    
    if ( !isdefined( light ) )
    {
        return;
    }
    
    light clientfield::set( clientfield, 1 );
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 2, eflags: 0x0
// Checksum 0xbbdf1ff1, Offset: 0x40a8
// Size: 0xe0
function model_swap( var_4c4368f0, modelname )
{
    models = getentarray( var_4c4368f0, "targetname" );
    
    if ( isdefined( models ) )
    {
        foreach ( model in models )
        {
            model setmodel( modelname );
            model thread function_410ee58f();
        }
    }
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0x33112a10, Offset: 0x4190
// Size: 0x54
function function_410ee58f()
{
    self endon( #"death" );
    level flag::wait_till( "aslt_bunker_escape_complete" );
    
    if ( isdefined( self ) )
    {
        self delete();
    }
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0xdc1e7ee4, Offset: 0x41f0
// Size: 0x4e
function function_9526f13c()
{
    level.player endon( #"death" );
    
    while ( true )
    {
        level.player function_17afb30c();
        wait 12;
    }
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0xadaeb81c, Offset: 0x4248
// Size: 0x4c
function function_17afb30c()
{
    self thread status_effect::status_effect_apply( getstatuseffect( #"hash_2c4f4dece43d5cf8" ), self.currentweapon, level.adler, 1 );
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0xee771e2, Offset: 0x42a0
// Size: 0xa4
function function_c35f7ff1()
{
    self endon( #"death" );
    self.ignoresuppression = 1;
    self ai::set_behavior_attribute( "demeanor", "cqb" );
    level flag::wait_till( "vault_door_closed" );
    wait randomfloatrange( 0.25, 1 );
    self delete();
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0x8d30f197, Offset: 0x4350
// Size: 0x198
function function_de62c0a0()
{
    vault_breach_dmg_model_clips = getentarray( "vault_breach_dmg_model_clips", "targetname" );
    
    foreach ( clip in vault_breach_dmg_model_clips )
    {
        clip notsolid();
        clip connectpaths();
    }
    
    level flag::wait_till( "vault_breached" );
    clientfield::set( "vault_breach_dmg_models_and_vol_decals", 1 );
    
    foreach ( clip in vault_breach_dmg_model_clips )
    {
        clip solid();
        clip disconnectpaths();
    }
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0x54f4e578, Offset: 0x44f0
// Size: 0x15e
function function_259d8d6f()
{
    vault_approach_red_tunnel_blocker_clip = getent( "vault_approach_red_tunnel_blocker_clip", "targetname" );
    
    if ( isdefined( vault_approach_red_tunnel_blocker_clip ) )
    {
        vault_approach_red_tunnel_blocker_clip.origin += ( 0, 0, 160 );
        vault_approach_red_tunnel_blocker_clip disconnectpaths();
    }
    
    vault_approach_red_tunnel_blocker_padlock = getent( "vault_approach_red_tunnel_blocker_padlock", "targetname" );
    
    if ( isdefined( vault_approach_red_tunnel_blocker_padlock ) )
    {
        vault_approach_red_tunnel_blocker_padlock.origin += ( 0, 0, 160 );
    }
    
    vault_approach_red_tunnel_blocker_left = getent( "vault_approach_red_tunnel_blocker_left", "targetname" );
    
    if ( isdefined( vault_approach_red_tunnel_blocker_left ) )
    {
        vault_approach_red_tunnel_blocker_left.angles += ( 0, 97.5, 0 );
    }
    
    vault_approach_red_tunnel_blocker_right = getent( "vault_approach_red_tunnel_blocker_right", "targetname" );
    
    if ( isdefined( vault_approach_red_tunnel_blocker_right ) )
    {
        vault_approach_red_tunnel_blocker_right.angles += ( 0, -112, 0 );
    }
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 1, eflags: 0x0
// Checksum 0xcd8a5ea6, Offset: 0x4658
// Size: 0xc4
function function_66b280b8( *parms )
{
    vault_control_panel = getent( "vault_control_panel", "targetname" );
    vault_control_panel setmodel( "p9_rus_control_panel_02_dest" );
    exploder::exploder( "panel_sparks" );
    level flag::wait_till( "aslt_bunker_escape_complete" );
    
    if ( isdefined( vault_control_panel ) )
    {
        vault_control_panel delete();
    }
    
    exploder::exploder_stop( "panel_sparks" );
}

// Namespace kgb_aslt_vault/namespace_968becd2
// Params 0, eflags: 0x0
// Checksum 0x803c77eb, Offset: 0x4728
// Size: 0xdc
function vault_close_player_clip()
{
    vault_close_player_clip = getent( "vault_close_player_clip", "targetname" );
    
    if ( isdefined( vault_close_player_clip ) )
    {
        vault_close_player_clip notsolid();
        level flag::wait_till( "close_vault" );
        vault_close_player_clip solid();
        wait 6;
        vault_close_player_clip movex( 76, 6 );
        vault_close_player_clip waittill( #"movedone" );
        vault_close_player_clip delete();
    }
}

