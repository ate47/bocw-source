#using script_20b8e1a789215df0;
#using script_3919f386abede84;
#using script_3c70d86dfe255354;
#using script_4b6505921addc7bc;
#using script_549b1f81e7dfe241;
#using script_758226507b1afa11;
#using script_86ebb5dd573a003;
#using scripts\core_common\ai\systems\ai_interface;
#using scripts\core_common\ai_shared;
#using scripts\core_common\animation_shared;
#using scripts\core_common\array_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\doors_shared;
#using scripts\core_common\exploder_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\stealth\utility;
#using scripts\core_common\struct;
#using scripts\core_common\teleport_shared;
#using scripts\core_common\trigger_shared;
#using scripts\core_common\util_shared;
#using scripts\core_common\values_shared;
#using scripts\core_common\vehicle_shared;
#using scripts\cp_common\dialogue;
#using scripts\cp_common\gametypes\save;
#using scripts\cp_common\objectives;
#using scripts\cp_common\player_decision;
#using scripts\cp_common\skipto;
#using scripts\cp_common\util;

#namespace namespace_fba81a7f;

// Namespace namespace_fba81a7f/namespace_fba81a7f
// Params 1, eflags: 0x0
// Checksum 0xe66d0641, Offset: 0x928
// Size: 0xfc
function start( *str_objective )
{
    level namespace_e6b6aea1::function_3141d875();
    level thread function_6b5a40ef();
    level thread function_37acd633();
    level thread function_47620ece();
    level thread namespace_11998b8f::function_25120710();
    level scene::play( "scene_z_stk_lazar_meetup", "courtyard_branch" );
    level thread scene::play( "scene_z_stk_lazar_meetup", "hall_walk" );
    level thread scene::play( "scene_z_stk_electronics_store", "repair_room_enter" );
}

// Namespace namespace_fba81a7f/namespace_fba81a7f
// Params 2, eflags: 0x0
// Checksum 0xfc8f1962, Offset: 0xa30
// Size: 0x574
function main( str_objective, var_50cc0d4f )
{
    player = getplayers()[ 0 ];
    namespace_5ceacc03::music( "12.0_company" );
    
    if ( var_50cc0d4f )
    {
        level thread namespace_11998b8f::function_7ad4f5cb();
        util::function_268bdf4f( "lazar", &namespace_11998b8f::function_2f0f0a84 );
        level.lazar val::set( "meetup", "ignoreme", 1 );
        level.lazar val::set( "meetup", "ignoreall", 1 );
        level thread scene::play( "scene_z_stk_electronics_store", "end_loops" );
        level thread namespace_afd0968c::function_36a9bec7( var_50cc0d4f );
        player setmovespeedscale( 0.72 );
        player setcinematicmotionoverride( "cinematicmotion_kgb" );
    }
    
    if ( !isdefined( level.var_38f30672 ) )
    {
        level.var_38f30672 = struct::get( "tag_align_lobby_hall", "targetname" );
    }
    
    if ( !isdefined( level.var_54b83d35 ) )
    {
        level.var_54b83d35 = struct::get( "tag_align_target_apt_first_floor", "targetname" );
    }
    
    level thread namespace_3e1df757::function_fabce54();
    thread namespace_5ceacc03::function_9c766945();
    level thread function_4cb44581();
    level thread function_26abb5e9();
    level thread namespace_11998b8f::function_973a721b( "apt_street_car", "apt_street_done" );
    level thread namespace_11998b8f::function_973a721b( "apt_street_vista_car", "apt_street_done" );
    level thread function_7b1998a8();
    level thread namespace_e6b6aea1::function_fb12384e();
    level thread function_e05e8838();
    windows::lock( "apt_bedroom_window", "script_noteworthy" );
    level thread namespace_c80e7f5f::function_28def7d4();
    level thread namespace_c80e7f5f::function_a1d5baeb();
    level thread namespace_c80e7f5f::function_a9c3a1f0();
    level thread function_468b938d();
    level flag::wait_till( "start_apt_street_train" );
    level thread function_3dfe810();
    level thread function_847bd54f();
    level flag::wait_till( "flag_park_vo_street" );
    doors::close( "door_electronics_store" );
    level flag::wait_till( "flag_dart_gun_ready" );
    level thread scene::play( "aib_vign_stakeout_safehouse_surveillance_wife", "z_stk_surveillance_smoking_edda_exit", level.var_3559e9e );
    doors::lock( "door_electronics_store" );
    waitframe( 1 );
    player thread namespace_11998b8f::function_d30792f2();
    level flag::wait_till( "apt_street_done" );
    
    if ( !isdefined( level.var_54b83d35 ) )
    {
        level.var_54b83d35 = struct::get( "tag_align_target_apt_first_floor", "targetname" );
    }
    
    level.var_3559e9e animation::first_frame( "z_stk_apt_front_door_entry_wife_answers_phone", level.var_54b83d35 );
    skipto::function_4e3ab877( str_objective );
    level flag::wait_till( "flag_close_front_door" );
    util::unmake_hero( "lazar", 1 );
    util::unmake_hero( "park", 1 );
    level thread function_720adc4e();
}

// Namespace namespace_fba81a7f/namespace_fba81a7f
// Params 0, eflags: 0x0
// Checksum 0xcc102a5d, Offset: 0xfb0
// Size: 0xfc
function function_720adc4e()
{
    if ( isdefined( level.lobby_mail_woman ) )
    {
        level.lobby_mail_woman delete();
    }
    
    triggers = getentarray( "apt_street_triggers", "targetname" );
    array::delete_all( triggers );
    level scene::stop( "scene_z_stk_electronics_store" );
    waitframe( 1 );
    
    if ( isdefined( level.lazar ) )
    {
        level.lazar delete();
    }
    
    if ( isdefined( level.park ) )
    {
        level.park delete();
    }
    
    doors::function_3353d645( "tgt_apt_lobby_door" );
}

// Namespace namespace_fba81a7f/namespace_fba81a7f
// Params 0, eflags: 0x0
// Checksum 0x9dfb743b, Offset: 0x10b8
// Size: 0x4f0
function function_847bd54f()
{
    level endon( #"apt_street_done" );
    var_22386ba3 = getentarray( "apartment_light1_fill", "targetname" );
    var_13f6cf20 = getent( "apartment_light1_spot", "targetname" );
    var_f5b792a2 = getentarray( "apartment_light2_fill", "targetname" );
    var_6799f665 = getent( "apartment_light2_spot", "targetname" );
    
    foreach ( light in var_22386ba3 )
    {
        light.default_intensity = light getlightintensity();
    }
    
    var_13f6cf20.default_intensity = var_13f6cf20 getlightintensity();
    
    foreach ( light in var_f5b792a2 )
    {
        light.default_intensity = light getlightintensity();
    }
    
    var_6799f665.default_intensity = var_6799f665 getlightintensity();
    
    while ( true )
    {
        level flag::wait_till( "flag_remove_apt_fake_lights" );
        
        foreach ( light in var_22386ba3 )
        {
            light setlightintensity( 0 );
        }
        
        var_13f6cf20 setlightintensity( 0 );
        
        foreach ( light in var_f5b792a2 )
        {
            light setlightintensity( 0 );
        }
        
        var_6799f665 setlightintensity( 0 );
        level flag::wait_till_clear( "flag_remove_apt_fake_lights" );
        
        foreach ( light in var_22386ba3 )
        {
            if ( isdefined( light.default_intensity ) )
            {
                light setlightintensity( light.default_intensity );
            }
        }
        
        if ( isdefined( light.default_intensity ) )
        {
            var_13f6cf20 setlightintensity( var_13f6cf20.default_intensity );
        }
        
        foreach ( light in var_f5b792a2 )
        {
            if ( isdefined( light.default_intensity ) )
            {
                light setlightintensity( light.default_intensity );
            }
        }
        
        if ( isdefined( light.default_intensity ) )
        {
            var_6799f665 setlightintensity( var_6799f665.default_intensity );
        }
    }
}

// Namespace namespace_fba81a7f/namespace_fba81a7f
// Params 0, eflags: 0x0
// Checksum 0x17927c1, Offset: 0x15b0
// Size: 0xec
function function_26abb5e9()
{
    player = getplayers()[ 0 ];
    
    if ( !isdefined( level.stealth.disguised ) )
    {
        player namespace_979752dc::set_disguised( 1 );
    }
    
    player.takedown.disabled = 1;
    level flag::wait_till( "apt_street_done" );
    player.takedown.disabled = 0;
    player util::blend_movespeedscale( 0.5, 0.5 );
    player val::set( "apartment", "allow_sprint", 0 );
}

// Namespace namespace_fba81a7f/namespace_fba81a7f
// Params 0, eflags: 0x0
// Checksum 0x5e82f674, Offset: 0x16a8
// Size: 0x2bc
function function_37acd633()
{
    level endon( #"apt_street_done" );
    level flag::wait_till_any( array( "stealth_spotted", "flag_fail_apt_street" ) );
    
    if ( level flag::get( "apt_street_done" ) )
    {
        return;
    }
    
    ai_array = getaiteamarray( "axis" );
    
    foreach ( guy in ai_array )
    {
        guy val::reset( "electronics_store", "ignoreall" );
        
        if ( guy.archetype != #"civilian" )
        {
            ai::setaiattribute( guy, "can_melee", 0 );
        }
    }
    
    player = getplayers()[ 0 ];
    player namespace_979752dc::set_disguised( 0 );
    closest_guy = arraygetclosest( player.origin, ai_array );
    closest_guy thread dialogue::queue( "vox_cp_stkt_07130_gms2_stoppolice_64" );
    wait 2;
    var_ac09f234 = arraysortclosest( ai_array, player.origin, 3 );
    
    foreach ( guy in var_ac09f234 )
    {
        guy.holdfire = 0;
    }
    
    wait 1;
    util::missionfailedwrapper( #"hash_4c5af5a1cd80371", #"hash_18b8caabd523d66b" );
}

// Namespace namespace_fba81a7f/namespace_fba81a7f
// Params 1, eflags: 0x0
// Checksum 0x35a47e5b, Offset: 0x1970
// Size: 0x1dc
function function_fadf5523( str_id )
{
    self endon( #"death" );
    level endon( #"apt_street_done" );
    self.var_34415c06 = str_id;
    self val::set( str_id, "ignoreall", 1 );
    self val::set( str_id, "ignoreme", 1 );
    self callback::on_death( &function_e5e997f3 );
    util::waittill_any_ents( self, "alert_level_increase", self, "damage", self, "stealth_investigate", self, "stealth_combat", level, "stealth_spotted", level, "flag_fail_apt_street", level, "guard_killed" );
    level flag::set( "flag_fail_apt_street" );
    self notify( #"alert" );
    self animation::stop();
    self val::reset( str_id, "ignoreall" );
    self val::reset( str_id, "ignoreme" );
    player = getplayers()[ 0 ];
    self function_a3fcf9e0( "attack", player, player.origin );
}

// Namespace namespace_fba81a7f/namespace_fba81a7f
// Params 1, eflags: 0x0
// Checksum 0x6cccc37c, Offset: 0x1b58
// Size: 0x50
function function_e5e997f3( params )
{
    if ( isdefined( params.attacker ) && isplayer( params.attacker ) )
    {
        level notify( #"guard_killed" );
    }
}

// Namespace namespace_fba81a7f/namespace_fba81a7f
// Params 0, eflags: 0x0
// Checksum 0x8d797a1a, Offset: 0x1bb0
// Size: 0x64
function function_742bc3ab()
{
    spawner::add_spawn_function_group( "apt_street_police", "targetname", &function_e7549abc );
    spawner::add_spawn_function_group( "apt_street_police", "targetname", &function_26a2480e );
}

// Namespace namespace_fba81a7f/namespace_fba81a7f
// Params 0, eflags: 0x0
// Checksum 0x509c6c0d, Offset: 0x1c20
// Size: 0x3c
function function_e7549abc()
{
    self.var_c681e4c1 = 1;
    self.holdfire = 1;
    self thread function_fadf5523( "electronics_store" );
}

// Namespace namespace_fba81a7f/namespace_fba81a7f
// Params 2, eflags: 0x0
// Checksum 0xe83b6459, Offset: 0x1c68
// Size: 0xc0
function function_bcfecd03( ai_group, str_id )
{
    wait 1.5;
    var_57b95aeb = spawner::get_ai_group_ai( ai_group );
    
    foreach ( guy in var_57b95aeb )
    {
        guy thread function_fadf5523( str_id );
    }
}

// Namespace namespace_fba81a7f/namespace_fba81a7f
// Params 0, eflags: 0x0
// Checksum 0xfa34bf3, Offset: 0x1d30
// Size: 0x2d0
function function_47620ece()
{
    level.player endon( #"death" );
    level.apt_street_police = spawner::simple_spawn( "apt_street_police" );
    level thread namespace_11998b8f::function_91a7f501( "apt_street_ambient_harass_loop", "apartment_2_done" );
    level thread function_bcfecd03( "apt_street_looper", "electronics_store" );
    level.lobby_mail_woman = spawner::simple_spawn_single( "lobby_mail_woman", &lobby_mail_woman );
    level thread intro_civs();
    level flag::wait_till( "apt_street_first_guard_move" );
    scene::add_scene_func( "aib_vign_stakeout_harass_ask_questions", &function_79b92b87, "play" );
    level thread namespace_11998b8f::function_91a7f501( "apt_street_lobby_ambient_harass_loop", "flag_close_front_door" );
    ai_array = getaiteamarray( "axis" );
    
    foreach ( guy in ai_array )
    {
        guy val::set( "electronics_store", "ignoreall", 1 );
    }
    
    util::waittill_any_ents_two( level, "dart_gun_enabled", level, "apt_street_done" );
    ai_array = getaiteamarray( "axis" );
    
    foreach ( guy in ai_array )
    {
        guy val::reset( "electronics_store", "ignoreall" );
    }
}

// Namespace namespace_fba81a7f/namespace_fba81a7f
// Params 0, eflags: 0x0
// Checksum 0xa444ebea, Offset: 0x2008
// Size: 0x134
function function_6b5a40ef()
{
    while ( !isdefined( level.var_3559e9e ) )
    {
        waitframe( 1 );
    }
    
    level thread scene::play( "aib_vign_stakeout_safehouse_surveillance_wife", "z_stk_surveillance_stove_smoking_edda_transition", level.var_3559e9e );
    kitchen_window_right_closed = getent( "kitchen_window_right_closed", "targetname" );
    kitchen_window_right_closed hide();
    kitchen_window_left_closed = getent( "kitchen_window_left_closed", "targetname" );
    kitchen_window_left_closed hide();
    
    while ( !isdefined( level.var_49a292bb ) )
    {
        waitframe( 1 );
    }
    
    level.var_bd5c9b86 = struct::get( "tag_align_target_apt_second_floor", "targetname" );
    level.var_49a292bb animation::last_frame( "z_stk_surveillance_desk_kraus_exit", level.var_bd5c9b86 );
}

// Namespace namespace_fba81a7f/namespace_fba81a7f
// Params 0, eflags: 0x0
// Checksum 0x9eec9a5b, Offset: 0x2148
// Size: 0x9c
function intro_civs()
{
    animnode = struct::get( "scared_civs_animnode", "targetname" );
    level flag::wait_till( "flag_meetup_park" );
    civs = spawner::simple_spawn( "apt_street_intro_civs", &function_34770465 );
    animnode scene::play( "aib_vign_stakeout_apt_street_hustle_across", civs );
}

// Namespace namespace_fba81a7f/namespace_fba81a7f
// Params 0, eflags: 0x0
// Checksum 0xd61ad4a2, Offset: 0x21f0
// Size: 0x4c
function function_34770465()
{
    self endon( #"death" );
    self.goalradius = 16;
    self waittill( #"goal" );
    self deletedelay();
}

// Namespace namespace_fba81a7f/namespace_fba81a7f
// Params 1, eflags: 0x0
// Checksum 0x4dbde471, Offset: 0x2248
// Size: 0x7c
function function_d5cab286( a_ents )
{
    mailbox = a_ents[ #"hash_475ee55621b83ca0" ];
    var_e864861d = getent( "apt_mailbox_door", "targetname" );
    var_e864861d linkto( mailbox, "j_prop_1", ( 0, 0, 0 ), ( 0, 0, 0 ) );
}

// Namespace namespace_fba81a7f/namespace_fba81a7f
// Params 0, eflags: 0x0
// Checksum 0xb7602614, Offset: 0x22d0
// Size: 0x114
function lobby_mail_woman()
{
    self val::set( "apt_street", "ignoreall", 1 );
    self val::set( "apt_street", "ignoreme", 1 );
    self.var_66f1a336 = &function_8266a99e;
    self setmodel( "body_civ_f_ger_berlin_05" );
    scene::add_scene_func( "aib_vign_stakeout_safehouse_mail_woman", &function_d5cab286, "init" );
    level scene::init( "aib_vign_stakeout_safehouse_mail_woman", self );
    level flag::wait_till( "apt_street_lobby_entry" );
    level thread scene::play( "aib_vign_stakeout_safehouse_mail_woman", self );
}

// Namespace namespace_fba81a7f/namespace_fba81a7f
// Params 0, eflags: 0x0
// Checksum 0x7c8d651a, Offset: 0x23f0
// Size: 0x5c
function function_8266a99e()
{
    if ( isdefined( self ) )
    {
        self dialogue::function_47b06180();
    }
    
    wait 2;
    util::missionfailedwrapper( #"hash_4c5af5a1cd80371", #"hash_b4302157d22e1af" );
}

// Namespace namespace_fba81a7f/namespace_fba81a7f
// Params 0, eflags: 0x0
// Checksum 0xfa89b9ac, Offset: 0x2458
// Size: 0x5c
function function_29c32c17()
{
    if ( isdefined( self ) )
    {
        self dialogue::function_47b06180();
    }
    
    wait 2;
    util::missionfailedwrapper( #"hash_4c5af5a1cd80371", #"hash_4e9d4bf1d65f17f5" );
}

// Namespace namespace_fba81a7f/namespace_fba81a7f
// Params 0, eflags: 0x0
// Checksum 0xa20744f8, Offset: 0x24c0
// Size: 0xa4
function function_5aa8f217()
{
    self endon( #"hash_339e977c12dc1f67" );
    self waittill( #"death", #"damage", #"stealth_combat", #"stealth_investigate", #"set_alert_level" );
    wait 2;
    util::missionfailedwrapper( #"hash_4c5af5a1cd80371", #"hash_4039ceec8d9c7c5e" );
}

// Namespace namespace_fba81a7f/namespace_fba81a7f
// Params 1, eflags: 0x0
// Checksum 0x34988e1f, Offset: 0x2570
// Size: 0xfe
function function_79b92b87( a_ents )
{
    foreach ( guy in a_ents )
    {
        if ( isai( guy ) )
        {
            if ( isdefined( guy.animname ) )
            {
                if ( issubstr( guy.animname, "guard" ) )
                {
                    guy.var_66f1a336 = &function_29c32c17;
                    guy thread function_5aa8f217();
                    continue;
                }
                
                guy.var_66f1a336 = &function_8266a99e;
            }
        }
    }
}

// Namespace namespace_fba81a7f/namespace_fba81a7f
// Params 0, eflags: 0x0
// Checksum 0xa8a46926, Offset: 0x2678
// Size: 0x12c
function function_7b1998a8()
{
    doors::waittill_door_opened( "tgt_apt_lobby_door" );
    level notify( #"lobby_door_opened" );
    level flag::wait_till( "flag_inside_lobby" );
    doors::lock( "tgt_apt_lobby_door" );
    var_b6ac0499 = struct::get( "obj_entry_apartment", "targetname" );
    objectives::goto( #"hash_315ac0f45babe4d3", var_b6ac0499.origin, undefined, 0 );
    objectives::function_67f87f80( #"hash_315ac0f45babe4d3", undefined, #"hash_5f670550d4e97f41" );
    level flag::wait_till( "apt_street_done" );
    objectives::complete( #"hash_315ac0f45babe4d3" );
}

// Namespace namespace_fba81a7f/namespace_fba81a7f
// Params 0, eflags: 0x0
// Checksum 0xe376b9c6, Offset: 0x27b0
// Size: 0x44
function function_e05e8838()
{
    doors::waittill_door_opened( "tgt_apt_front_door" );
    wait 1.85;
    level flag::set( "apt_street_done" );
}

// Namespace namespace_fba81a7f/namespace_fba81a7f
// Params 0, eflags: 0x0
// Checksum 0xdb97ee5e, Offset: 0x2800
// Size: 0x208
function function_3dfe810()
{
    level endon( #"apartment_2_done" );
    level scene::init( "apt_street_train_01", "targetname" );
    level scene::init( "apt_street_train_02", "targetname" );
    thread namespace_5ceacc03::function_a6cbd395();
    level scene::play_from_time( "apt_street_train_01", "targetname", undefined, 8, 0 );
    
    while ( true )
    {
        wait randomintrange( 35, 55 );
        trains = randomint( 3 );
        level thread function_f9e32536( trains );
        
        if ( trains == 0 )
        {
            thread namespace_5ceacc03::function_26ef53da();
            level scene::play( "apt_street_train_01", "targetname" );
            continue;
        }
        
        if ( trains == 1 )
        {
            thread namespace_5ceacc03::function_d8a1373f();
            level scene::play( "apt_street_train_02", "targetname" );
            continue;
        }
        
        thread namespace_5ceacc03::function_ca2a1a51();
        level thread scene::play( "apt_street_train_02", "targetname" );
        wait 2;
        level scene::play( "apt_street_train_01", "targetname" );
    }
}

// Namespace namespace_fba81a7f/namespace_fba81a7f
// Params 1, eflags: 0x0
// Checksum 0x8f1a05e0, Offset: 0x2a10
// Size: 0xbc
function function_f9e32536( trains )
{
    if ( trains == 0 )
    {
        wait 5.2;
        exploder::exploder( "fx_exp_kraus_train" );
        return;
    }
    
    if ( trains == 1 )
    {
        wait 3.3;
        exploder::exploder( "fx_exp_kraus_train" );
        return;
    }
    
    wait 5.2;
    exploder::exploder( "fx_exp_kraus_train" );
    wait 2;
    exploder::exploder( "fx_exp_kraus_train" );
}

// Namespace namespace_fba81a7f/namespace_fba81a7f
// Params 0, eflags: 0x0
// Checksum 0x65f03b65, Offset: 0x2ad8
// Size: 0x44
function function_468b938d()
{
    level endon( #"apt_street_done" );
    level flag::wait_till( "flag_inside_lobby" );
    savegame::checkpoint_save();
}

// Namespace namespace_fba81a7f/namespace_fba81a7f
// Params 0, eflags: 0x0
// Checksum 0x934c7a90, Offset: 0x2b28
// Size: 0x4c
function function_26a2480e()
{
    self endon( #"death" );
    level flag::wait_till( "apartment_2_done" );
    self deletedelay();
}

// Namespace namespace_fba81a7f/namespace_fba81a7f
// Params 4, eflags: 0x0
// Checksum 0x9e3ed0fb, Offset: 0x2b80
// Size: 0x8c
function function_f62cf54d( *str_objective, var_50cc0d4f, *var_aa1a6455, *player )
{
    if ( player )
    {
        level flag::set( "flag_dart_gun_ready" );
        level flag::set( "apt_street_done" );
        level flag::set( "apt_street_lobby_entry" );
    }
}

// Namespace namespace_fba81a7f/namespace_fba81a7f
// Params 0, eflags: 0x0
// Checksum 0xf99fa799, Offset: 0x2c18
// Size: 0x2e
function function_4cb44581()
{
    var_f7ee01ca = struct::get( "temp_audio_stairwell_walla", "targetname" );
}

