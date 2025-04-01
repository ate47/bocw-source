#using script_38867f943fb86135;
#using script_6f47ce61add0f75d;
#using script_7198e82f67d7691;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\easing;
#using scripts\core_common\flashlight;
#using scripts\core_common\load_shared;
#using scripts\core_common\postfx_shared;
#using scripts\core_common\struct;
#using scripts\core_common\util_shared;

#namespace cp_rus_kgb;

// Namespace cp_rus_kgb/level_init
// Params 1, eflags: 0x20
// Checksum 0x592f287a, Offset: 0x8a8
// Size: 0x104
function event_handler[level_init] main( *eventstruct )
{
    setsaveddvar( #"enable_global_wind", 1 );
    setsaveddvar( #"wind_global_vector", "88 0 0" );
    setsaveddvar( #"wind_global_low_altitude", 0 );
    setsaveddvar( #"wind_global_hi_altitude", 10000 );
    setsaveddvar( #"wind_global_low_strength_percent", 100 );
    init_clientfields();
    load::main();
    util::waitforclient( 0 );
}

// Namespace cp_rus_kgb/cp_rus_kgb
// Params 0, eflags: 0x0
// Checksum 0x66469951, Offset: 0x9b8
// Size: 0x6d4
function init_clientfields()
{
    clientfield::register( "toplayer", "set_player_pbg_bank", 1, 2, "int", &set_player_pbg_bank, 0, 0 );
    clientfield::register( "actor", "set_flashlight_fx", 1, 1, "int", &set_flashlight_fx, 0, 0 );
    clientfield::register( "actor", "set_flashlight_gun_tag", 1, 1, "int", &set_flashlight_gun_tag, 0, 0 );
    clientfield::register( "scriptmover", "set_camera_fx", 1, 1, "int", &set_camera_fx, 0, 0 );
    clientfield::register( "scriptmover", "vault_torch_vfx", 1, 1, "int", &vault_torch_vfx, 0, 0 );
    evidence_board_mission_preview::register();
    clientfield::register( "toplayer", "set_fov", 1, 3, "int", &set_fov, 0, 0 );
    clientfield::register( "toplayer", "set_dof", 1, 3, "int", &set_dof, 0, 0 );
    clientfield::register( "world", "elevator_hall_dmg_models_and_vol_decals", 1, 1, "int", &function_a61974ab, 0, 1 );
    clientfield::register( "world", "break_c4_explosion_dynents", 1, 1, "int", &break_c4_explosion_dynents, 0, 1 );
    clientfield::register( "world", "exfil_cover_models", 1, 1, "int", &function_79ff9f83, 0, 1 );
    clientfield::register( "world", "vault_breach_dmg_models_and_vol_decals", 1, 1, "int", &function_d1d32f56, 0, 1 );
    clientfield::register( "scriptmover", "vault_hanging_light_vfx", 1, 1, "int", &vault_hanging_light_vfx, 0, 0 );
    clientfield::register( "scriptmover", "vault_hanging_light_flicker_vfx", 1, 1, "int", &vault_hanging_light_flicker_vfx, 0, 0 );
    clientfield::register( "world", "vault_explosion_dynents", 1, 1, "int", &vault_explosion_dynents, 0, 1 );
    clientfield::register( "scriptmover", "clf_fx_c4_on", 1, 1, "int", &function_12315dac, 0, 0 );
    clientfield::register( "scriptmover", "clf_fx_c4_blink", 1, 1, "int", &function_f8229597, 0, 0 );
    clientfield::register( "toplayer", "gasmask_clf", 1, 1, "int", &function_e067b5e6, 0, 0 );
    clientfield::register( "toplayer", "exfilmask_clf", 1, 1, "int", &function_4479bcfe, 0, 0 );
    clientfield::register( "toplayer", "stream_belikov_rv_assets", 1, 1, "int", &stream_belikov_rv_assets, 0, 0 );
    clientfield::register( "toplayer", "stream_elevator_exfil_assets", 1, 1, "int", &stream_elevator_exfil_assets, 0, 0 );
    clientfield::register( "toplayer", "stream_deploy_gas_assets", 1, 1, "int", &stream_deploy_gas_assets, 0, 0 );
    clientfield::register( "toplayer", "stream_adler_assault_assets", 1, 1, "int", &stream_adler_assault_assets, 0, 0 );
    clientfield::register( "scriptmover", "slide_projector_anim", 1, 1, "int", &function_cad5695c, 0, 0 );
    clientfield::register( "world", "toggle_occluder", 1, 1, "int", &toggle_occluder, 0, 1 );
}

// Namespace cp_rus_kgb/cp_rus_kgb
// Params 7, eflags: 0x0
// Checksum 0x9fc5947a, Offset: 0x1098
// Size: 0x3d2
function function_a61974ab( *localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    a_n_decals = findvolumedecalindexarray( "elevator_hall_dmg_vol_decals" );
    var_648616bf = findstaticmodelindexarray( "elevator_hall_dmg_models" );
    elevator_hall_clean_models = findstaticmodelindexarray( "elevator_hall_clean_models" );
    
    switch ( bwastimejump )
    {
        case 0:
            foreach ( model in elevator_hall_clean_models )
            {
                unhidestaticmodel( model );
            }
            
            foreach ( n_decal in a_n_decals )
            {
                hidevolumedecal( n_decal );
            }
            
            foreach ( model in var_648616bf )
            {
                hidestaticmodel( model );
            }
            
            break;
        case 1:
            foreach ( model in elevator_hall_clean_models )
            {
                hidestaticmodel( model );
            }
            
            foreach ( model in var_648616bf )
            {
                unhidestaticmodel( model );
            }
            
            foreach ( n_decal in a_n_decals )
            {
                unhidevolumedecal( n_decal );
            }
            
            break;
        default:
            break;
    }
}

// Namespace cp_rus_kgb/cp_rus_kgb
// Params 7, eflags: 0x0
// Checksum 0x21a18d6a, Offset: 0x1478
// Size: 0x1a2
function break_c4_explosion_dynents( localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    switch ( bwastimejump )
    {
        case 1:
            struct = struct::get( "exfil_escape_elevator_explosion_org", "targetname" );
            physicsexplosionsphere( fieldname, struct.origin, 400, 0, 1, 300, 200, 1, 1 );
            var_5ff9756e = struct::get_array( "exfil_escape_elevator_light_post_explosion_org", "targetname" );
            
            foreach ( org in var_5ff9756e )
            {
                physicsexplosionsphere( fieldname, org.origin, 200, 0, 1, 100, 50, 1, 1 );
            }
            
            break;
        default:
            break;
    }
}

// Namespace cp_rus_kgb/cp_rus_kgb
// Params 7, eflags: 0x0
// Checksum 0xd6381a4a, Offset: 0x1628
// Size: 0x3d2
function function_d1d32f56( *localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    var_689aebca = findstaticmodelindexarray( "vault_breach_undamaged_models" );
    a_n_decals = findvolumedecalindexarray( "vault_breach_dmg_vol_decals" );
    var_648616bf = findstaticmodelindexarray( "vault_breach_dmg_models" );
    
    switch ( bwastimejump )
    {
        case 0:
            foreach ( n_decal in a_n_decals )
            {
                hidevolumedecal( n_decal );
            }
            
            foreach ( model in var_648616bf )
            {
                hidestaticmodel( model );
            }
            
            foreach ( model in var_689aebca )
            {
                unhidestaticmodel( model );
            }
            
            break;
        case 1:
            foreach ( n_decal in a_n_decals )
            {
                unhidevolumedecal( n_decal );
            }
            
            foreach ( model in var_648616bf )
            {
                unhidestaticmodel( model );
            }
            
            foreach ( model in var_689aebca )
            {
                hidestaticmodel( model );
            }
            
            break;
        default:
            break;
    }
}

// Namespace cp_rus_kgb/cp_rus_kgb
// Params 7, eflags: 0x0
// Checksum 0x894eb869, Offset: 0x1a08
// Size: 0x2ba
function function_79ff9f83( *localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    var_648616bf = findstaticmodelindexarray( "exfil_cover_models" );
    var_1fb7432d = findstaticmodelindexarray( "exfil_cover_models_og" );
    
    switch ( bwastimejump )
    {
        case 0:
            foreach ( model in var_648616bf )
            {
                hidestaticmodel( model );
            }
            
            foreach ( model in var_1fb7432d )
            {
                unhidestaticmodel( model );
            }
            
            break;
        case 1:
            foreach ( model in var_648616bf )
            {
                unhidestaticmodel( model );
            }
            
            foreach ( model in var_1fb7432d )
            {
                hidestaticmodel( model );
            }
            
            break;
        default:
            break;
    }
}

// Namespace cp_rus_kgb/cp_rus_kgb
// Params 7, eflags: 0x0
// Checksum 0x3895d2f8, Offset: 0x1cd0
// Size: 0x172
function set_player_pbg_bank( localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump )
{
    self notify( #"hash_2866809d9cfd329b" );
    
    switch ( bwasdemojump )
    {
        case 1:
            function_be93487f( fieldname, 2, 0, 1, 0, 0 );
            break;
        case 2:
            self thread function_22f4412d( fieldname );
            break;
        case 3:
            function_be93487f( fieldname, 8, 0, 0, 0, 1 );
            break;
        default:
            function_be93487f( fieldname, 1, 1, 0, 0, 0 );
            break;
    }
}

// Namespace cp_rus_kgb/cp_rus_kgb
// Params 2, eflags: 0x4
// Checksum 0xb830eefa, Offset: 0x1e50
// Size: 0xfc
function private function_22f4412d( localclientnum, transitiontime = 5 )
{
    self notify( "7fcf421cf89e7e10" );
    self endon( "7fcf421cf89e7e10" );
    self endon( #"death", #"hash_2866809d9cfd329b" );
    progress = 0;
    increment = 1 / transitiontime / 0.016;
    
    while ( progress < 1 )
    {
        function_be93487f( localclientnum, 5, 1, 0, progress, 0 );
        progress += increment;
        waitframe( 1 );
    }
    
    function_be93487f( localclientnum, 4, 0, 0, 1, 0 );
}

// Namespace cp_rus_kgb/cp_rus_kgb
// Params 7, eflags: 0x0
// Checksum 0x57d601a7, Offset: 0x1f58
// Size: 0xb4
function set_flashlight_fx( localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump )
{
    switch ( bwasdemojump )
    {
        case 1:
            flashlightfx = "maps/cp_kgb/fx9_kgb_lo_flashlight";
            break;
        default:
            flashlightfx = "light/fx9_light_cp_flashlight";
            break;
    }
    
    self flashlight::function_69258685( fieldname, flashlightfx );
}

// Namespace cp_rus_kgb/cp_rus_kgb
// Params 7, eflags: 0x0
// Checksum 0xb8fd5bd, Offset: 0x2018
// Size: 0xe2
function set_flashlight_gun_tag( localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump )
{
    switch ( bwasdemojump )
    {
        case 1:
            if ( !isdefined( self.var_499c9ce ) )
            {
                self.var_499c9ce = util::playfxontag( fieldname, "maps/cp_kgb/fx9_kgb_lo_flashlight", self, "tag_flashlight_fx" );
            }
            
            break;
        default:
            if ( isdefined( self.var_499c9ce ) )
            {
                killfx( fieldname, self.var_499c9ce );
            }
            
            break;
    }
}

// Namespace cp_rus_kgb/cp_rus_kgb
// Params 7, eflags: 0x0
// Checksum 0x1e65bc39, Offset: 0x2108
// Size: 0x20a
function set_fov( *localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    n_time = 0.5;
    
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
        case 6:
            self function_9298adaf( 2 );
            break;
        case 7:
            self easing::function_f95cb457( undefined, 20, 0.8, #"linear" );
            break;
    }
}

// Namespace cp_rus_kgb/cp_rus_kgb
// Params 7, eflags: 0x0
// Checksum 0x274b5a04, Offset: 0x2320
// Size: 0x1ea
function set_dof( *localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    n_time = 0.5;
    
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
        case 4:
            self function_9e574055( 0 );
            self function_3c54e2b8( 2 );
            self function_9ea7b4eb( 2 );
            break;
    }
}

// Namespace cp_rus_kgb/cp_rus_kgb
// Params 7, eflags: 0x0
// Checksum 0xad0ae150, Offset: 0x2518
// Size: 0xae
function set_camera_fx( localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump )
{
    if ( bwasdemojump == 1 )
    {
        self.var_ace0380 = util::playfxontag( fieldname, "maps/cp_kgb/fx9_kgb_camera_fov", self, "tag_origin" );
        return;
    }
    
    if ( isdefined( self.var_ace0380 ) )
    {
        killfx( fieldname, self.var_ace0380 );
        self.var_7a1ac572 = undefined;
    }
}

// Namespace cp_rus_kgb/cp_rus_kgb
// Params 7, eflags: 0x0
// Checksum 0x31df2197, Offset: 0x25d0
// Size: 0x9c
function vault_torch_vfx( localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump )
{
    if ( bwasdemojump == 1 )
    {
        self.vault_torch_vfx = util::playfxontag( fieldname, #"hash_5e3ecff0db09def2", self, "tag_fx" );
        return;
    }
    
    killfx( fieldname, self.vault_torch_vfx );
}

// Namespace cp_rus_kgb/cp_rus_kgb
// Params 7, eflags: 0x4
// Checksum 0x879b99a6, Offset: 0x2678
// Size: 0xae
function private function_12315dac( localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( bwastimejump )
    {
        fxid = util::playfxontag( fieldname, "maps/cp_kgb/fx9_kgb_c4_light_green", self, "tag_origin" );
        self thread function_e360e5ab( fieldname, fxid, "stop_c4_on_fx" );
        return;
    }
    
    self notify( #"stop_c4_on_fx" );
}

// Namespace cp_rus_kgb/cp_rus_kgb
// Params 7, eflags: 0x4
// Checksum 0xfa613326, Offset: 0x2730
// Size: 0xae
function private function_f8229597( localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( bwastimejump )
    {
        fxid = util::playfxontag( fieldname, "maps/cp_kgb/fx9_kgb_c4_light_red", self, "tag_origin" );
        self thread function_e360e5ab( fieldname, fxid, "stop_c4_blink_fx" );
        return;
    }
    
    self notify( #"stop_c4_blink_fx" );
}

// Namespace cp_rus_kgb/cp_rus_kgb
// Params 3, eflags: 0x4
// Checksum 0x568ddbae, Offset: 0x27e8
// Size: 0x5c
function private function_e360e5ab( localclientnum, fxid, end_notify )
{
    self waittill( #"death", #"fx_death", end_notify );
    stopfx( localclientnum, fxid );
}

// Namespace cp_rus_kgb/cp_rus_kgb
// Params 7, eflags: 0x4
// Checksum 0x9b4a65ff, Offset: 0x2850
// Size: 0xc4
function private function_e067b5e6( *localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( bwastimejump )
    {
        if ( self postfx::function_556665f2( "pstfx_gasmask_cp" ) )
        {
            self postfx::stoppostfxbundle( "pstfx_gasmask_cp" );
        }
        
        self postfx::playpostfxbundle( "pstfx_gasmask_cp" );
        return;
    }
    
    self postfx::stoppostfxbundle( "pstfx_gasmask_cp" );
}

// Namespace cp_rus_kgb/cp_rus_kgb
// Params 7, eflags: 0x4
// Checksum 0x150ab5d8, Offset: 0x2920
// Size: 0xc4
function private function_4479bcfe( *localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( bwastimejump )
    {
        if ( self postfx::function_556665f2( "pstfx_exfilmask_cp" ) )
        {
            self postfx::stoppostfxbundle( "pstfx_exfilmask_cp" );
        }
        
        self postfx::playpostfxbundle( "pstfx_exfilmask_cp" );
        return;
    }
    
    self postfx::stoppostfxbundle( "pstfx_exfilmask_cp" );
}

// Namespace cp_rus_kgb/cp_rus_kgb
// Params 7, eflags: 0x0
// Checksum 0xa7122a41, Offset: 0x29f0
// Size: 0xac
function stream_belikov_rv_assets( *localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump )
{
    if ( bwasdemojump )
    {
        forcestreamxmodel( "c_t9_cp_rus_kgb_hq_officer_body1_nolod" );
        forcestreamxmodel( "wpn_t9_eqp_ru_radio_handheld_view" );
        return;
    }
    
    stopforcestreamingxmodel( "c_t9_cp_rus_kgb_hq_officer_body1_nolod" );
    stopforcestreamingxmodel( "wpn_t9_eqp_ru_radio_handheld_view" );
}

// Namespace cp_rus_kgb/cp_rus_kgb
// Params 7, eflags: 0x0
// Checksum 0xff4bdd0d, Offset: 0x2aa8
// Size: 0x13c
function stream_elevator_exfil_assets( *localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump )
{
    if ( bwasdemojump )
    {
        forcestreamxmodel( "c_t9_cp_usa_hero_adler_kgb_exfil_armor_body" );
        forcestreamxmodel( "c_t9_cp_usa_hero_adler_head1_kgb_officer_exfil_visor_down" );
        forcestreamxmodel( "c_t9_cp_rus_belikov_kgb_exfil_armor_body1" );
        forcestreamxmodel( "c_t9_cp_rus_kgb_hq_vip_belikov_head_exfil_visor_down" );
        forcestreamxmodel( "emb_cabinet_file_single_open_dmg_anim" );
        return;
    }
    
    stopforcestreamingxmodel( "c_t9_cp_usa_hero_adler_kgb_exfil_armor_body" );
    stopforcestreamingxmodel( "c_t9_cp_usa_hero_adler_head1_kgb_officer_exfil_visor_down" );
    stopforcestreamingxmodel( "c_t9_cp_rus_belikov_kgb_exfil_armor_body1" );
    stopforcestreamingxmodel( "c_t9_cp_rus_kgb_hq_vip_belikov_head_exfil_visor_down" );
    stopforcestreamingxmodel( "emb_cabinet_file_single_open_dmg_anim" );
}

// Namespace cp_rus_kgb/cp_rus_kgb
// Params 7, eflags: 0x0
// Checksum 0xb37ee67b, Offset: 0x2bf0
// Size: 0x10c
function stream_deploy_gas_assets( *localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump )
{
    if ( bwasdemojump )
    {
        forcestreamxmodel( "c_t9_cp_usa_hero_adler_head1_kgb_gasmask" );
        forcestreamxmodel( "c_t9_cp_usa_hero_adler_prop_kgb_gasmask" );
        forcestreamxmodel( "c_t9_cp_rus_kgb_hq_vip_belikov_head_gasmask" );
        forcestreamxmodel( "c_t9_cp_rus_hero_belikov_prop_kgb_gasmask" );
        return;
    }
    
    stopforcestreamingxmodel( "c_t9_cp_usa_hero_adler_head1_kgb_gasmask" );
    stopforcestreamingxmodel( "c_t9_cp_usa_hero_adler_prop_kgb_gasmask" );
    stopforcestreamingxmodel( "c_t9_cp_rus_kgb_hq_vip_belikov_head_gasmask" );
    stopforcestreamingxmodel( "c_t9_cp_rus_hero_belikov_prop_kgb_gasmask" );
}

// Namespace cp_rus_kgb/cp_rus_kgb
// Params 7, eflags: 0x0
// Checksum 0x7f5453fb, Offset: 0x2d08
// Size: 0xae
function vault_hanging_light_vfx( localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( bwastimejump )
    {
        self.var_a2f0a0e3 = util::playfxontag( fieldname, "light/fx9_light_cp_kgb_vault_hanging", self, "tag_fx" );
        return;
    }
    
    if ( isdefined( self.var_a2f0a0e3 ) )
    {
        killfx( fieldname, self.var_a2f0a0e3 );
        self.var_a2f0a0e3 = undefined;
    }
}

// Namespace cp_rus_kgb/cp_rus_kgb
// Params 7, eflags: 0x0
// Checksum 0x6987910c, Offset: 0x2dc0
// Size: 0xde
function vault_hanging_light_flicker_vfx( localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( bwastimejump )
    {
        if ( isdefined( self.var_a2f0a0e3 ) )
        {
            killfx( fieldname, self.var_a2f0a0e3 );
            self.var_a2f0a0e3 = undefined;
        }
        
        self.var_a2f0a0e3 = util::playfxontag( fieldname, "light/fx9_light_cp_kgb_vault_hanging_flicker", self, "tag_fx" );
        return;
    }
    
    if ( isdefined( self.var_a2f0a0e3 ) )
    {
        killfx( fieldname, self.var_a2f0a0e3 );
        self.var_a2f0a0e3 = undefined;
    }
}

// Namespace cp_rus_kgb/cp_rus_kgb
// Params 7, eflags: 0x0
// Checksum 0x2eb61f66, Offset: 0x2ea8
// Size: 0x94
function function_cad5695c( *localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    if ( bwastimejump == 1 )
    {
        self setanimrestart( #"hash_5ded2bc1daee5a9b" );
        return;
    }
    
    self clearanim( #"hash_5ded2bc1daee5a9b", 0 );
}

// Namespace cp_rus_kgb/cp_rus_kgb
// Params 7, eflags: 0x0
// Checksum 0xd27f22a7, Offset: 0x2f48
// Size: 0xc2
function toggle_occluder( *localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    switch ( bwastimejump )
    {
        case 0:
            function_e7647ecd( "exfil_courtyard_occluder", 1 );
            break;
        case 1:
            function_e7647ecd( "exfil_courtyard_occluder", 0 );
            break;
        default:
            break;
    }
}

// Namespace cp_rus_kgb/cp_rus_kgb
// Params 7, eflags: 0x0
// Checksum 0x9aeb6963, Offset: 0x3018
// Size: 0x142
function vault_explosion_dynents( localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    switch ( bwastimejump )
    {
        case 1:
            vault_post_explosion_orgs = struct::get_array( "vault_post_explosion_orgs", "targetname" );
            
            foreach ( org in vault_post_explosion_orgs )
            {
                physicsexplosionsphere( fieldname, org.origin, 100, 0, 1, 20, 5, 1, 1 );
            }
            
            break;
        default:
            break;
    }
}

// Namespace cp_rus_kgb/cp_rus_kgb
// Params 7, eflags: 0x0
// Checksum 0x9c4b7300, Offset: 0x3168
// Size: 0xac
function stream_adler_assault_assets( *localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump )
{
    if ( bwasdemojump )
    {
        forcestreamxmodel( "c_t9_cp_usa_hero_adler_head1" );
        forcestreamxmodel( "c_t9_cp_usa_hero_adler_kgb_exfil_body" );
        return;
    }
    
    stopforcestreamingxmodel( "c_t9_cp_usa_hero_adler_head1" );
    stopforcestreamingxmodel( "c_t9_cp_usa_hero_adler_kgb_exfil_body" );
}

