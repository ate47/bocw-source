#using script_396f7d71538c9677;
#using script_437ce686d29bb81b;
#using scripts\core_common\array_shared;
#using scripts\core_common\battlechatter;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\globallogic\globallogic_audio;
#using scripts\core_common\item_inventory;
#using scripts\core_common\item_inventory_util;
#using scripts\core_common\math_shared;
#using scripts\core_common\player\player_role;
#using scripts\core_common\scene_shared;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;
#using scripts\zm_common\zm_audio;
#using scripts\zm_common\zm_characters;
#using scripts\zm_common\zm_round_logic;
#using scripts\zm_common\zm_round_spawning;
#using scripts\zm_common\zm_trial;
#using scripts\zm_common\zm_utility;
#using scripts\zm_common\zm_weapons;

#namespace zm_vo;

// Namespace zm_vo/zm_vo
// Params 0, eflags: 0x5
// Checksum 0xcf8f8c59, Offset: 0x210
// Size: 0x54
function private autoexec __init__system__()
{
    system::register( #"zm_vo", &preinit, &postinit, undefined, #"killstreaks" );
}

// Namespace zm_vo/zm_vo
// Params 0, eflags: 0x4
// Checksum 0xabab74a5, Offset: 0x270
// Size: 0x248
function private preinit()
{
    level.var_98eae67a = [];
    level.var_5388c8f9 = [];
    level.var_62281818 = [];
    callback::on_connect( &on_player_connect );
    callback::on_spawned( &on_player_spawned );
    callback::on_item_pickup( &on_item_pickup );
    callback::on_grenade_fired( &on_grenade_fired );
    callback::on_weapon_change( &function_d773f2e );
    level.var_3602c1be = &function_b47e0399;
    level.var_4edd846 = &function_d1711916;
    level.var_3727097e = &function_58a8c5ba;
    level.var_9f234058 = &function_e5ba46e0;
    level.var_695f6028 = &function_c0e744e6;
    level.var_28ebc1e8 = 1;
    level.var_9a1b7fdf = &function_f577c17d;
    level.play_killstreak_start_dialog = &function_7bed52a;
    level.play_taacom_dialog_response_on_owner = &function_3cf68327;
    level.play_taacom_dialog = &function_3d6e0cd9;
    level.play_pilot_dialog_on_owner = &function_9716fce9;
    level.play_pilot_dialog = &function_f6370f75;
    function_318f41b6();
    level.a_speakers = getscriptbundle( #"zm_commanders_speakers" );
    clientfield::register_clientuimodel( "zm_hud.commander_speaking", 1, 5, "int", 0 );
    
    /#
    #/
}

// Namespace zm_vo/zm_vo
// Params 0, eflags: 0x0
// Checksum 0xbf6a94cd, Offset: 0x4c0
// Size: 0x48, Type: bool
function function_32464c29()
{
    if ( isdedicated() || getdvarint( #"hash_214ae173d5af78a2", 0 ) )
    {
        return true;
    }
    
    return false;
}

// Namespace zm_vo/zm_vo
// Params 2, eflags: 0x0
// Checksum 0xdde5c0e5, Offset: 0x510
// Size: 0x10c
function function_f577c17d( str_vo_alias, var_7382ea8b )
{
    if ( function_32464c29() )
    {
        if ( isdefined( level.var_cb439651[ str_vo_alias ] ) )
        {
            var_2690dae = level.var_cb439651[ str_vo_alias ];
        }
        else
        {
            if ( isdefined( var_7382ea8b ) && isplayer( self ) )
            {
                var_2690dae = self globallogic_audio::function_14964eb8( var_7382ea8b );
            }
            
            if ( !isdefined( var_2690dae ) )
            {
                var_2690dae = 3;
            }
        }
    }
    else
    {
        var_2690dae = float( max( isdefined( soundgetplaybacktime( str_vo_alias ) ) ? soundgetplaybacktime( str_vo_alias ) : 500, 500 ) ) / 1000;
    }
    
    return var_2690dae;
}

// Namespace zm_vo/zm_vo
// Params 2, eflags: 0x0
// Checksum 0xb7ecea18, Offset: 0x628
// Size: 0xc0
function function_778b84a3( str_vo_alias, var_2690dae )
{
    if ( function_32464c29() )
    {
        var_db4208eb = zm_audio::get_valid_lines( str_vo_alias );
        
        foreach ( var_56f97c91 in var_db4208eb )
        {
            level.var_cb439651[ var_56f97c91 ] = var_2690dae;
        }
    }
}

// Namespace zm_vo/zm_vo
// Params 0, eflags: 0x0
// Checksum 0x8b0d8664, Offset: 0x6f0
// Size: 0x2fc
function function_318f41b6()
{
    if ( isdefined( level.var_74f5c47d ) )
    {
        [[ level.var_74f5c47d ]]();
        return;
    }
    
    function_2cf4b07f( #"full_ammo", #"hash_15cb79e906605461" );
    function_2cf4b07f( #"double_points", #"hash_64189f4639819331" );
    function_2cf4b07f( #"insta_kill", #"hash_5075330907645a15" );
    function_2cf4b07f( #"fire_sale", #"hash_3ed5fa07d17a7cc2" );
    function_2cf4b07f( #"carpenter", #"hash_42d85f0b6534d522" );
    function_2cf4b07f( #"nuke", #"hash_3245913d882a8c0e" );
    function_2cf4b07f( #"bonus_points_team", #"hash_78c9bfab1a9278bd" );
    function_2cf4b07f( #"bonus_points_player", #"hash_78c9bfab1a9278bd" );
    function_2cf4b07f( #"bonus_points_player_shared", #"hash_78c9bfab1a9278bd" );
    function_2cf4b07f( #"hero_weapon_power", #"hash_3228b9bb6d91f7c6" );
    function_2cf4b07f( #"free_perk", #"hash_796989b8ef666e16" );
    function_2cf4b07f( #"ammo_mod", #"hash_69fb2ede79df7f3a" );
    function_2cf4b07f( #"dogstart", #"hash_28b132dc4f25cf4c" );
    function_2cf4b07f( #"boxmove", #"hash_69675122993fc5ca" );
    function_2cf4b07f( #"game_over", #"hash_3f1eca72dab56b29" );
}

// Namespace zm_vo/zm_vo
// Params 0, eflags: 0x4
// Checksum 0x80f724d1, Offset: 0x9f8
// Size: 0x4
function private postinit()
{
    
}

// Namespace zm_vo/zm_vo
// Params 0, eflags: 0x4
// Checksum 0xefc2c00a, Offset: 0xa08
// Size: 0x3e
function private on_player_connect()
{
    self.isspeaking = 0;
    self.playleaderdialog = 1;
    self.n_vo_priority = 0;
    self.var_671911e9 = [];
    self.var_29e6a032 = [];
}

// Namespace zm_vo/zm_vo
// Params 0, eflags: 0x4
// Checksum 0x6d889f40, Offset: 0xa50
// Size: 0xe
function private on_player_spawned()
{
    self.isspeaking = 0;
}

// Namespace zm_vo/zm_vo
// Params 1, eflags: 0x4
// Checksum 0x11b69aaa, Offset: 0xa68
// Size: 0x23e
function private function_d773f2e( params )
{
    if ( !isplayer( self ) || params.weapon === level.weaponnone || is_player_speaking( self ) || self scene::is_igc_active() || !self function_2d3f319c() )
    {
        return;
    }
    
    switch ( params.weapon.name )
    {
        case #"ray_gun_mk2":
        case #"ray_gun":
            var_64edfc97 = #"hash_47911e56b3253861";
            break;
        case #"ww_ray_rifle_t9":
            var_64edfc97 = #"hash_6d5b8296c64bfe35";
            break;
        case #"ww_ieu_shockwave_t9":
        case #"ww_ieu_electric_t9":
        case #"ww_ieu_acid_t9":
        case #"ww_ieu_gas_t9":
        case #"ww_ieu_plasma_t9":
            var_64edfc97 = #"hash_763fd19c812336";
            break;
        case #"sig_bow_flame":
            return;
        case #"hero_flamethrower":
            return;
        case #"hero_annihilator":
            return;
        case #"sig_lmg":
            return;
        case #"hero_pineapplegun":
            return;
        default:
            if ( zm_weapons::is_wonder_weapon( params.weapon ) )
            {
                var_64edfc97 = #"hash_5c81d3724f900e7";
            }
            
            break;
    }
    
    if ( isdefined( var_64edfc97 ) )
    {
        self thread function_d342796e( var_64edfc97 );
        self.var_f502715d = gettime();
    }
}

// Namespace zm_vo/zm_vo
// Params 1, eflags: 0x4
// Checksum 0x5edffe8, Offset: 0xcb0
// Size: 0x4c
function private on_grenade_fired( params )
{
    if ( params.weapon.name === #"cymbal_monkey" )
    {
        params.projectile thread function_1084cf1d();
    }
}

// Namespace zm_vo/zm_vo
// Params 0, eflags: 0x0
// Checksum 0x5f00f9eb, Offset: 0xd08
// Size: 0x194
function function_1084cf1d()
{
    mdl_monkey = self.mdl_monkey;
    
    if ( !isdefined( mdl_monkey ) )
    {
        return;
    }
    
    self endon( #"death" );
    mdl_monkey endon( #"death" );
    n_index = randomintrangeinclusive( 0, 3 );
    var_64edfc97 = #"hash_1df2b33f0eb8bf56" + n_index;
    mdl_monkey playsound( var_64edfc97 );
    s_waitresult = self waittill( #"stationary" );
    v_origin = mdl_monkey.origin;
    mdl_monkey stopsound( var_64edfc97 );
    n_index = randomintrangeinclusive( 0, 3 );
    var_64edfc97 = #"hash_35fa8d80060451c1" + n_index;
    mdl_monkey playsoundwithnotify( var_64edfc97, "sounddone" );
    wait 5;
    n_index = randomintrangeinclusive( 0, 11 );
    var_64edfc97 = #"hash_73e4d6659cb4dda3" + n_index;
    playsoundatposition( var_64edfc97, v_origin );
}

// Namespace zm_vo/zm_vo
// Params 1, eflags: 0x4
// Checksum 0x134a02c5, Offset: 0xea8
// Size: 0x65c
function private on_item_pickup( params )
{
    item = params.item;
    
    if ( !isplayer( self ) || is_player_speaking( self ) || self scene::is_igc_active() || !level flag::get( "start_zombie_round_logic" ) || is_true( item.var_99628f67 ) )
    {
        return;
    }
    
    weapon = item_inventory_util::function_2b83d3ff( item );
    
    if ( item.itementry.name === #"self_revive_sr_item" && is_true( item.var_14948fd ) )
    {
        var_64edfc97 = #"hash_761fd0a07d2e04f";
    }
    else if ( isdefined( item ) && isdefined( weapon ) )
    {
        switch ( item.itementry.itemtype )
        {
            case #"scorestreak":
                if ( is_true( item.var_14948fd ) )
                {
                    if ( weapon.name == #"chopper_gunner" || weapon.name == #"inventory_napalm_strike_zm" )
                    {
                        var_64edfc97 = #"hash_1451a78cbf91a4e3";
                    }
                    else if ( weapon.name == #"ultimate_turret" )
                    {
                        var_64edfc97 = #"hash_61917b06ef391bae";
                    }
                    else
                    {
                        var_64edfc97 = #"hash_6b760a9e97d27ca3";
                    }
                    
                    item.var_14948fd = undefined;
                    n_timeout = 3;
                }
                
                break;
            case #"tactical":
            case #"equipment":
                if ( is_true( item.var_14948fd ) )
                {
                    var_64edfc97 = #"hash_7ae658278829f860";
                    item.var_14948fd = undefined;
                }
                
                n_timeout = 3;
                break;
            case #"weapon":
                if ( is_true( item.var_5b4ae99d ) )
                {
                }
                else if ( function_5fef4201( weapon ) || weapon.name === #"ww_ray_rifle_t9" || weapon.name === #"hash_ac86d29509a8939" )
                {
                    if ( self function_2d3f319c() )
                    {
                        var_64edfc97 = #"hash_62aba8e16a728e4";
                        self.var_f502715d = gettime();
                    }
                }
                else if ( self function_99262cf3() )
                {
                    self.var_ce67a5b1 = gettime();
                    
                    if ( is_true( item.var_14948fd ) || is_true( item.wallbuy_weapon ) || is_true( item.var_519e776c ) )
                    {
                        switch ( weapon.weapclass )
                        {
                            case #"mg":
                                var_64edfc97 = #"hash_52e3a2e29f0f0544";
                                break;
                            case #"spread":
                                var_64edfc97 = #"hash_245da60fd43ac21a";
                                break;
                            case #"pistol":
                                if ( weapon.name == #"ray_gun" || weapon.name == #"ray_gun_mk2" )
                                {
                                    if ( self function_2d3f319c() )
                                    {
                                        var_64edfc97 = #"hash_56d268fc5786455e";
                                        self.var_f502715d = gettime();
                                    }
                                }
                                else
                                {
                                    var_64edfc97 = #"hash_e36abf6446d1c67";
                                }
                                
                                break;
                            case #"rocketlauncher":
                                var_64edfc97 = #"hash_1f9d617af9161090";
                                break;
                            case #"smg":
                                var_64edfc97 = #"hash_103dc1e2c2034ff1";
                                break;
                            case #"rifle":
                                if ( weapon.issniperweapon )
                                {
                                    var_64edfc97 = #"hash_6f77ec873d50a5a3";
                                }
                                else if ( zm_weapons::is_tactical_rifle( weapon ) )
                                {
                                    var_64edfc97 = #"hash_65a5f39e9b407c79";
                                }
                                else if ( weapon.name === #"special_crossbow_t9" )
                                {
                                    var_64edfc97 = #"hash_54d519e96ca368ad";
                                }
                                else
                                {
                                    var_64edfc97 = #"hash_17608d93085cc567";
                                }
                                
                                break;
                            default:
                                var_64edfc97 = #"hash_54d519e96ca368ad";
                                break;
                        }
                    }
                    else
                    {
                        var_64edfc97 = #"hash_54d519e96ca368ad";
                    }
                    
                    n_timeout = 3;
                }
                
                break;
            default:
                break;
        }
    }
    
    if ( isdefined( var_64edfc97 ) )
    {
        self thread function_d342796e( var_64edfc97, 0.75, undefined, undefined, undefined, n_timeout );
    }
}

// Namespace zm_vo/zm_vo
// Params 1, eflags: 0x0
// Checksum 0x97d7258d, Offset: 0x1510
// Size: 0xa4, Type: bool
function function_5fef4201( weapon )
{
    if ( isdefined( weapon ) )
    {
        w_root = zm_weapons::function_386dacbc( weapon );
        
        switch ( w_root.name )
        {
            case #"ww_ieu_shockwave_t9":
            case #"ww_ieu_electric_t9":
            case #"ww_ieu_acid_t9":
            case #"ww_ieu_gas_t9":
            case #"ww_ieu_plasma_t9":
                return true;
        }
    }
    
    return false;
}

// Namespace zm_vo/zm_vo
// Params 0, eflags: 0x0
// Checksum 0xfd54ac6e, Offset: 0x15c0
// Size: 0x5a, Type: bool
function function_2d3f319c()
{
    var_19a9f270 = int( 45 * 1000 );
    
    if ( isdefined( self.var_f502715d ) && self.var_f502715d + var_19a9f270 > gettime() )
    {
        return false;
    }
    
    return true;
}

// Namespace zm_vo/zm_vo
// Params 0, eflags: 0x0
// Checksum 0x6fd7cca5, Offset: 0x1628
// Size: 0x5a, Type: bool
function function_99262cf3()
{
    var_19a9f270 = int( 3 * 1000 );
    
    if ( isdefined( self.var_ce67a5b1 ) && self.var_ce67a5b1 + var_19a9f270 > gettime() )
    {
        return false;
    }
    
    return true;
}

// Namespace zm_vo/zm_vo
// Params 2, eflags: 0x0
// Checksum 0x137191d1, Offset: 0x1690
// Size: 0x7ca
function function_d1711916( var_332276f2, dialogkey )
{
    switch ( dialogkey )
    {
        case #"hash_1561254978f7d1ed":
            return var_332276f2.var_a18357b0;
        case #"hash_d6e9cf445a840a":
            return var_332276f2.var_7197146;
        case #"hash_4d97a2cf6c712d4e":
            return var_332276f2.var_b75d6820;
        case #"hash_7e2f32f691207aca":
            return var_332276f2.var_c6a87967;
        case #"hash_56bc9b3d6947b8b6":
            return var_332276f2.var_2a0d1f09;
        case #"se_vehiclekill":
            return var_332276f2.se_vehiclekill;
        case #"hash_28808125fce8c8e7":
            return var_332276f2.var_2ede36b7;
        case #"hash_4bd8ffae8d5281c9":
            return var_332276f2.var_a7cd67b9;
        case #"hash_3449e69a233e305f":
            return var_332276f2.var_79d2f568;
        case #"hash_3449e19a233e27e0":
            return var_332276f2.var_30a9e317;
        case #"hash_343f749a23351a24":
            return var_332276f2.var_8c5b9bd9;
        case #"hash_343f719a2335150b":
            return var_332276f2.var_e70f5143;
        case #"hash_406609dcd40a348e":
            return var_332276f2.var_b63eeb6b;
        case #"hash_31d075ffaf2c230a":
            return var_332276f2.var_3a42c1d5;
        case #"hash_68d4ef9c937aa223":
            return var_332276f2.var_113e7d50;
        case #"hash_6b704db2e152d216":
            return var_332276f2.var_546b28ea;
        case #"hash_3e454dbd28a162b0":
            return var_332276f2.var_c00403c2;
        case #"hash_2af4d13403d833e5":
            return var_332276f2.var_730dde6b;
        case #"hash_2d45724fc1a86740":
            return var_332276f2.var_f306595c;
        case #"hash_684963f03f8a86a5":
            return var_332276f2.var_9ff5cdcc;
        case #"hash_5dc5c0d8c259c02d":
            return var_332276f2.var_72e8c256;
        case #"hash_541ae7332eba41be":
            return var_332276f2.var_b7835026;
        case #"hash_6e779060a26706e1":
            return var_332276f2.var_87dee9d8;
        case #"hash_35b4f1037b7d4ed1":
            return var_332276f2.var_f122552;
        case #"hash_394f4a59df1d0c17":
            return var_332276f2.var_dfbf98e1;
        case #"hash_7e50fb36129dc24b":
            return var_332276f2.var_bf6e4ac;
        case #"hash_7ae658278829f860":
            return var_332276f2.var_2cecf015;
        case #"hash_761fd0a07d2e04f":
            return var_332276f2.var_66209010;
        case #"hash_1451a78cbf91a4e3":
            return var_332276f2.var_f4cd0e25;
        case #"hash_61917b06ef391bae":
            return var_332276f2.var_87c03899;
        case #"hash_6b760a9e97d27ca3":
            return var_332276f2.var_b4d315f0;
        case #"hash_17608d93085cc567":
            return var_332276f2.var_d6081434;
        case #"hash_54d519e96ca368ad":
            return var_332276f2.var_93a555d;
        case #"hash_1f9d617af9161090":
            return var_332276f2.var_6d143dab;
        case #"hash_52e3a2e29f0f0544":
            return var_332276f2.var_11bab4ea;
        case #"hash_e36abf6446d1c67":
            return var_332276f2.var_d3bc2ad1;
        case #"hash_245da60fd43ac21a":
            return var_332276f2.var_3f0128df;
        case #"hash_103dc1e2c2034ff1":
            return var_332276f2.var_ff9ef39;
        case #"hash_6f77ec873d50a5a3":
            return var_332276f2.var_33d6065e;
        case #"hash_65a5f39e9b407c79":
            return var_332276f2.var_ae6aac16;
        case #"hash_56d268fc5786455e":
            return var_332276f2.var_63cacd8;
        case #"hash_62aba8e16a728e4":
            return var_332276f2.var_981c7b13;
        case #"hash_97e18b450a8ee6c":
            return var_332276f2.var_4167c49f;
        case #"hash_3db45a32611292d9":
            return var_332276f2.var_2bd61d23;
        case #"hash_3db46b326112afbc":
            return var_332276f2.var_8fc7e499;
        case #"hash_290cd5d81be48f4e":
            return var_332276f2.var_7b9a379a;
        case #"hash_28201f7edff3dce6":
            return var_332276f2.var_e656ac85;
        case #"hash_17f91747a02fd957":
            return var_332276f2.var_ee428cd2;
        case #"hash_15ca4dea4f166f7f":
            return var_332276f2.var_1a961cee;
        case #"hash_6c397b7fc04e50e8":
            return var_332276f2.var_d8459fc5;
        case #"hash_7dcb4fc78a4f1b59":
            return var_332276f2.var_9b022db3;
        case #"hash_5cf6ca680b92367e":
            return var_332276f2.var_97b15249;
        case #"hash_24cdd0678cac5169":
            return var_332276f2.var_a359c69c;
        case #"hash_792e587a5f0a0c6e":
            return var_332276f2.var_e0da7061;
        case #"hash_4e60623e376d0aaf":
            return var_332276f2.var_cb9bea7e;
        case #"hash_5931f6d8a41cbb82":
            return var_332276f2.var_4ffec500;
        case #"hash_7beb683fd1b089cb":
            return var_332276f2.var_535a32a5;
        case #"hash_48b9fc7637fbd1bd":
            return var_332276f2.var_ade00a2;
        case #"hash_64548a5004b0f44a":
            return var_332276f2.var_805c2248;
        case #"hash_41278a4ac5aae0af":
            return var_332276f2.var_7d24c591;
        case #"hash_6f557d811bbead82":
            return var_332276f2.var_c9f0371e;
        case #"hash_6eb2904c5fee5fcb":
            return var_332276f2.var_712ac879;
        case #"hash_12c12be7b517df26":
            return var_332276f2.var_4b8f6dd6;
        case #"hash_578c414ebe6e097":
            return var_332276f2.var_1591b920;
        case #"hash_47911e56b3253861":
            return var_332276f2.var_7c47cc4f;
        case #"hash_763fd19c812336":
            return var_332276f2.var_c097847f;
        case #"hash_6d5b8296c64bfe35":
            return var_332276f2.var_4d7d1d3a;
        case #"hash_523f5d72ee488db1":
            return var_332276f2.var_a7daf1b2;
        case #"hash_361fef4fda618ebe":
            return var_332276f2.var_5bf416db;
        case #"hash_5c81d3724f900e7":
            return var_332276f2.var_673f0ab3;
    }
}

// Namespace zm_vo/zm_vo
// Params 2, eflags: 0x0
// Checksum 0x4421b3c6, Offset: 0x1e68
// Size: 0x5f2
function function_58a8c5ba( var_a6e45682, dialogkey )
{
    switch ( dialogkey )
    {
        case #"infil":
            return var_a6e45682.infil;
        case #"matchstart":
            return var_a6e45682.matchstart;
        case #"hash_1c2b56fb48ce36fa":
            return var_a6e45682.var_5293f361;
        case #"matchendlose":
            return var_a6e45682.matchendlose;
        case #"hash_5575881191efb302":
            return var_a6e45682.var_d67228c2;
        case #"hash_2788496d7ed6f0ef":
            return var_a6e45682.var_540835ef;
        case #"hash_2a4c39d0533e577d":
            return var_a6e45682.var_b1a8e60d;
        case #"hash_684b542bf103e4fe":
            return var_a6e45682.var_9a18d1d3;
        case #"hash_42e688981c992280":
            return var_a6e45682.var_50041482;
        case #"hash_4e85c1603ed42114":
            return var_a6e45682.var_3df5fd3f;
        case #"hash_362860f460a29841":
            return var_a6e45682.var_5f3898a;
        case #"hash_6fdeb623f1cd8f6":
            return var_a6e45682.var_af695653;
        case #"hash_3c826fece0b3646c":
            return var_a6e45682.var_cd47f341;
        case #"hash_785b3e9905f6511d":
            return var_a6e45682.var_53b98c2c;
        case #"hash_2aeb990c0cb76e97":
            return var_a6e45682.var_b8155728;
        case #"hash_eab292e698335c7":
            return var_a6e45682.var_64248d62;
        case #"hash_6779beacf80a7a26":
            return var_a6e45682.var_36c4edc0;
        case #"hash_2bfa170c2577a2c0":
            return var_a6e45682.var_3c57a507;
        case #"hash_2c86ec42e4ab7ef6":
            return var_a6e45682.var_35526bc7;
        case #"hash_1224d15cf609ed6":
            return var_a6e45682.var_75de98a4;
        case #"hash_26e569fb2e7fabe":
            return var_a6e45682.var_746b6118;
        case #"hash_477a4a51045495a0":
            return var_a6e45682.var_7f50ff2b;
        case #"hash_1f327a042fd14498":
            return var_a6e45682.var_d17a7aac;
        case #"hash_7ca80ff4ecb29f8e":
            return var_a6e45682.var_4dc2d12;
        case #"hash_37fac4fc5c027a69":
            return var_a6e45682.var_2536fc80;
        case #"hash_55bd8afbd48fb16e":
            return var_a6e45682.var_43be8abf;
        case #"hash_534a8eea154bbf18":
            return var_a6e45682.var_f23e58fa;
        case #"hash_514a3b399c691364":
            return var_a6e45682.var_6b494f06;
        case #"hash_2e75932f6eedc934":
            return var_a6e45682.var_b4cbe0e0;
        case #"hash_22531ed3b67a2a77":
            return var_a6e45682.var_dec4416b;
        case #"hash_482f677bdbe28fd1":
            return var_a6e45682.var_8ef0b73a;
        case #"hash_83f9a444e5f5963":
            return var_a6e45682.var_e2a2bb;
        case #"hash_586699a0dc62b981":
            return var_a6e45682.var_9a3a8c93;
        case #"hash_42f1b5c3d59fbf0a":
            return var_a6e45682.var_bfc2fbeb;
        case #"objectivekillhvtapproach":
            return var_a6e45682.objectivekillhvtapproach;
        case #"objectivekillhvtapproachresponse":
            return var_a6e45682.objectivekillhvtapproachresponse;
        case #"objectivekillhvtstart":
            return var_a6e45682.objectivekillhvtstart;
        case #"objectivekillhvtmoves":
            return var_a6e45682.objectivekillhvtmoves;
        case #"objectivekillhvtspotted":
            return var_a6e45682.objectivekillhvtspotted;
        case #"objectivekillhvtspottedresponse":
            return var_a6e45682.objectivekillhvtspottedresponse;
        case #"objectivekillhvtendsuccess":
            return var_a6e45682.objectivekillhvtendsuccess;
        case #"objectivekillhvtendsuccessresponse":
            return var_a6e45682.objectivekillhvtendsuccessresponse;
        case #"objectivekillhvtmegatonsplit":
            return var_a6e45682.objectivekillhvtmegatonsplit;
        case #"objectivekillhvttargetnorth":
            return var_a6e45682.objectivekillhvttargetnorth;
        case #"objectivekillhvttargetnortheast":
            return var_a6e45682.objectivekillhvttargetnortheast;
        case #"objectivekillhvttargetnorthwest":
            return var_a6e45682.objectivekillhvttargetnorthwest;
        case #"objectivekillhvttargeteast":
            return var_a6e45682.objectivekillhvttargeteast;
        case #"objectivekillhvttargetsoutheast":
            return var_a6e45682.objectivekillhvttargetsoutheast;
        case #"objectivekillhvttargetsouthwest":
            return var_a6e45682.objectivekillhvttargetsouthwest;
        case #"objectivekillhvttargetsouth":
            return var_a6e45682.objectivekillhvttargetsouth;
        case #"objectivekillhvttargetwest":
            return var_a6e45682.objectivekillhvttargetwest;
        case #"hash_37d8017a04a1565d":
            return var_a6e45682.var_3de3b9b7;
        case #"hash_447deedfb079840a":
            return var_a6e45682.var_66563c5f;
    }
}

// Namespace zm_vo/zm_vo
// Params 2, eflags: 0x0
// Checksum 0xecbf4a77, Offset: 0x2468
// Size: 0x5ba
function function_e5ba46e0( var_a6e45682, dialogkey )
{
    switch ( dialogkey )
    {
        case #"hash_536a2c98440e4182":
            return var_a6e45682.var_cffcf9ba;
        case #"hash_73cc12d03789ad3f":
            return var_a6e45682.var_41c83546;
        case #"hash_50ec2bacc50d8363":
            return var_a6e45682.var_fd1d8944;
        case #"hash_410d84fbae567967":
            return var_a6e45682.var_c653c561;
        case #"hash_14f76b27d54494b":
            return var_a6e45682.var_613e6426;
        case #"hash_804a63ecb41614":
            return var_a6e45682.var_d151963a;
        case #"hash_31288740d17d78d2":
            return var_a6e45682.var_5686ab6c;
        case #"hash_221eb61e78fea147":
            return var_a6e45682.var_1e94b3c6;
        case #"hash_5dcf562ff3f5cc61":
            return var_a6e45682.var_8f0b8b61;
        case #"hash_126c527875ac2725":
            return var_a6e45682.var_20a8f9b4;
        case #"hash_4ec8db10c8c4d7e6":
            return var_a6e45682.var_2dec4f66;
        case #"hash_377f1b72d8b2059f":
            return var_a6e45682.var_397b5d17;
        case #"hash_44b56c4f38f7a3d":
            return var_a6e45682.var_6daff7ef;
        case #"hash_29a97799810191f2":
            return var_a6e45682.var_252cce96;
        case #"hash_38a21b9cce47391c":
            return var_a6e45682.var_5206420d;
        case #"hash_399fbba4d9cee56c":
            return var_a6e45682.var_f4d5d9ae;
        case #"hash_39bd346fa50b356f":
            return var_a6e45682.var_77f75a13;
        case #"hash_2c29d5e7d1b21ca1":
            return var_a6e45682.var_ffd45054;
        case #"hash_23a67f3c7ed2779f":
            return var_a6e45682.var_53ef4307;
        case #"hash_54a6f55a5cb443ff":
            return var_a6e45682.var_d2395646;
        case #"hash_330e06d2732bf307":
            return var_a6e45682.var_72d40b0a;
        case #"hash_7b6f43280f5fc701":
            return var_a6e45682.var_7f6a4590;
        case #"hash_19781c91142b66b9":
            return var_a6e45682.var_e5d58bf8;
        case #"hash_c662fbf1fce1777":
            return var_a6e45682.var_ad909ba2;
        case #"hash_6b68eeb911f07ece":
            return var_a6e45682.var_93c5c4b3;
        case #"hash_6a290793842890d7":
            return var_a6e45682.var_6765ed01;
        case #"hash_53ec390fc9a8b639":
            return var_a6e45682.var_d6770e90;
        case #"hash_27a62b517cc8c55":
            return var_a6e45682.var_293214d9;
        case #"hash_5a475357d9efcbc5":
            return var_a6e45682.var_16e8ad6f;
        case #"hash_4f0b86cd5b9bf77c":
            return var_a6e45682.var_a0eda6f3;
        case #"hash_1440fff0c80bfb96":
            return var_a6e45682.var_a1e29b0e;
        case #"hash_5ae7ce1fcd2554b8":
            return var_a6e45682.var_f34c57;
        case #"hash_5a1f8d481d0cb526":
            return var_a6e45682.var_36736399;
        case #"hash_2ba0db40dddbef93":
            return var_a6e45682.var_3c069068;
        case #"hash_5deb9fb0966dbadb":
            return var_a6e45682.var_5b48a348;
        case #"hash_ddeeb5d7ab7d53a":
            return var_a6e45682.var_522f1f4c;
        case #"hash_70ffa115c0f25013":
            return var_a6e45682.var_f7fac7c7;
        case #"hash_502241ddc21df285":
            return var_a6e45682.var_6eeaa2d;
        case #"hash_5972f731c699ad68":
            return var_a6e45682.var_293a08a0;
        case #"hash_2e8af7e400912221":
            return var_a6e45682.var_963b68c8;
        case #"hash_e18650567a2accb":
            return var_a6e45682.var_3654aec5;
        case #"hash_621cf38b396dae6a":
            return var_a6e45682.var_dca1309e;
        case #"hash_5d49718d002bc0d4":
            return var_a6e45682.var_e12c80fc;
        case #"hash_25a861604ea5bc8b":
            return var_a6e45682.var_acc1056c;
        case #"hash_1791f8a4a5744090":
            return var_a6e45682.var_596a17f7;
        case #"hash_5a5dfc9395514a5e":
            return var_a6e45682.var_9b5581c0;
        case #"hash_47e1c08d6f5e6f47":
            return var_a6e45682.var_c549da4;
        case #"hash_1ffc49ef5d4c176":
            return var_a6e45682.var_ca2b01a7;
        case #"hash_2c11c1da3045be88":
            return var_a6e45682.var_dfdffcd;
        case #"hash_7d5ab9e9713ab0f5":
            return var_a6e45682.var_9e7d6ed9;
        case #"hash_1d290eb8175cbc25":
            return var_a6e45682.var_f4b88602;
    }
}

// Namespace zm_vo/zm_vo
// Params 2, eflags: 0x0
// Checksum 0x2b930677, Offset: 0x2a30
// Size: 0x5ba
function function_c0e744e6( var_a6e45682, dialogkey )
{
    switch ( dialogkey )
    {
        case #"hash_5c84693aff05762d":
            return var_a6e45682.var_74a0459d;
        case #"hash_7a50325a21c1a7be":
            return var_a6e45682.var_2332818a;
        case #"hash_5971b5080788658a":
            return var_a6e45682.var_b335c3cd;
        case #"hash_2e81687ead844b46":
            return var_a6e45682.var_1f1903ad;
        case #"hash_494b5d69e5841732":
            return var_a6e45682.var_c9f6cb59;
        case #"hash_3c3caf9539baa95f":
            return var_a6e45682.var_8c0c835e;
        case #"hash_40d436bd2a40b2fd":
            return var_a6e45682.var_1c550ed1;
        case #"hash_4632285c00ea5266":
            return var_a6e45682.var_c46f3226;
        case #"hash_6ed8423425372e90":
            return var_a6e45682.var_1fb468a;
        case #"hash_1d24265c8082ec7c":
            return var_a6e45682.var_58da336f;
        case #"hash_5cf2305ad75e6ad9":
            return var_a6e45682.var_71f78f57;
        case #"hash_504b5e2a6915e35e":
            return var_a6e45682.var_9b469873;
        case #"hash_14ff9e99547f5e94":
            return var_a6e45682.var_dec5fe86;
        case #"hash_6e985d1bb5a48cdd":
            return var_a6e45682.var_13b6038e;
        case #"hash_1a98e9336d503347":
            return var_a6e45682.var_d66ac8ee;
        case #"hash_258caac0dd2b4157":
            return var_a6e45682.var_1b1bc929;
        case #"hash_4a223e341ab25d6e":
            return var_a6e45682.var_7ad7dec6;
        case #"hash_10632cbe319c4ad0":
            return var_a6e45682.var_33e7945e;
        case #"hash_5ae0cac21a5b695e":
            return var_a6e45682.var_138654be;
        case #"hash_3a5e2058ba53c57e":
            return var_a6e45682.var_8ce5e1fd;
        case #"hash_42ccef1808d13c26":
            return var_a6e45682.var_cdeb45c6;
        case #"hash_348ff6425e068a70":
            return var_a6e45682.var_64c1ba5e;
        case #"hash_12538c462627c368":
            return var_a6e45682.var_69e2c246;
        case #"hash_4ae262b9095b49d6":
            return var_a6e45682.var_7df59090;
        case #"hash_845cc69d42ce761":
            return var_a6e45682.var_31fd12fb;
        case #"hash_a2551c842419476":
            return var_a6e45682.var_25611034;
        case #"hash_68a374fc3a11c5e8":
            return var_a6e45682.var_11b48f85;
        case #"hash_20b30c760183a5ec":
            return var_a6e45682.var_8eb3d1;
        case #"hash_7012b7b27baa195c":
            return var_a6e45682.var_c0958c6f;
        case #"hash_519b078eb72a3ae7":
            return var_a6e45682.var_2d6b54f0;
        case #"hash_7a22c0026ec53c9":
            return var_a6e45682.var_b6dea6d4;
        case #"hash_1ffa21a8ad4bf14b":
            return var_a6e45682.var_d0d3a2a4;
        case #"hash_5c56ed4cee5f5e19":
            return var_a6e45682.var_7f78f3f8;
        case #"hash_27b2d8007be6a3a":
            return var_a6e45682.var_5aec0335;
        case #"hash_39e173e82c1a2a02":
            return var_a6e45682.var_82992411;
        case #"hash_1692e45c1b361305":
            return var_a6e45682.var_57040d51;
        case #"hash_1695d1e0b08bf7ba":
            return var_a6e45682.var_e850993b;
        case #"hash_63ceecbbf5c10d1c":
            return var_a6e45682.var_4221c8a8;
        case #"hash_210819a59aaa00bb":
            return var_a6e45682.var_c5040dfb;
        case #"hash_43e8c77c4568ff50":
            return var_a6e45682.var_7b4ffaa3;
        case #"hash_e3951a426b235b2":
            return var_a6e45682.var_82d14e90;
        case #"hash_2997045383dac335":
            return var_a6e45682.var_d218b07b;
        case #"hash_4d238b6500f2101f":
            return var_a6e45682.var_3b935b21;
        case #"hash_785e82c6743fed72":
            return var_a6e45682.var_19becf0;
        case #"hash_5667a214ce6350c3":
            return var_a6e45682.var_5d13110e;
        case #"hash_6f3aca1ffddc27b1":
            return var_a6e45682.var_33f735f8;
        case #"hash_1ba3888825db8c66":
            return var_a6e45682.var_5b10ae5a;
        case #"hash_15f68cc8693182e9":
            return var_a6e45682.var_633c6bfc;
        case #"hash_e3bec212c4df9b":
            return var_a6e45682.var_a6771c69;
        case #"hash_75ccbaaea375ab4c":
            return var_a6e45682.var_b2365;
        case #"hash_2467d91e7bcc637c":
            return var_a6e45682.var_d0cb679a;
    }
}

// Namespace zm_vo/zm_vo
// Params 1, eflags: 0x0
// Checksum 0x14a2339a, Offset: 0x2ff8
// Size: 0x24
function vo_clear( str_endon )
{
    self thread _vo_clear( str_endon );
}

// Namespace zm_vo/zm_vo
// Params 1, eflags: 0x0
// Checksum 0x2ffb15a2, Offset: 0x3028
// Size: 0x188
function _vo_clear( str_endon )
{
    profilestart();
    
    if ( isdefined( str_endon ) && isdefined( self.str_vo_being_spoken ) )
    {
        /#
            if ( getdvarint( #"debug_vo", 0 ) )
            {
                iprintlnbold( "<dev string:x38>" );
                println( "<dev string:x38>" );
            }
        #/
        
        self stopsound( self.str_vo_being_spoken );
    }
    
    if ( isplayer( self ) )
    {
        self clientfield::set_to_player( "isspeaking", 0 );
    }
    
    self.str_vo_being_spoken = "";
    self.n_vo_priority = 0;
    self.isspeaking = 0;
    self.var_54ddcd0c = undefined;
    self.playingdialog = 0;
    self.var_5b6ebfd0 = 0;
    self.var_472e3448 = undefined;
    self.last_vo_played_time = gettime();
    arrayremovevalue( level.var_62281818, self );
    zm_audio::sndvoxoverride( 0 );
    self notify( #"done_speaking" );
    self notify( #"vo_clear" );
    profilestop();
}

// Namespace zm_vo/zm_vo
// Params 1, eflags: 0x0
// Checksum 0xaaae0da7, Offset: 0x31b8
// Size: 0x2a
function is_player_valid( e_player )
{
    return zm_utility::is_player_valid( e_player, 0, 0, 0 );
}

// Namespace zm_vo/zm_vo
// Params 0, eflags: 0x0
// Checksum 0xa364892a, Offset: 0x31f0
// Size: 0xf2
function function_347f7d34()
{
    a_valid_players = [];
    
    foreach ( player in getplayers() )
    {
        if ( zm_utility::is_player_valid( player ) )
        {
            if ( !isdefined( a_valid_players ) )
            {
                a_valid_players = [];
            }
            else if ( !isarray( a_valid_players ) )
            {
                a_valid_players = array( a_valid_players );
            }
            
            a_valid_players[ a_valid_players.size ] = player;
        }
    }
    
    return a_valid_players;
}

// Namespace zm_vo/zm_vo
// Params 1, eflags: 0x0
// Checksum 0xc0f65fef, Offset: 0x32f0
// Size: 0x60
function function_2ee2ece4( var_79dbc69 = 1 )
{
    while ( true )
    {
        a_valid_players = function_347f7d34();
        
        if ( a_valid_players.size >= var_79dbc69 )
        {
            break;
        }
        
        waitframe( 5 );
    }
    
    return a_valid_players;
}

// Namespace zm_vo/zm_vo
// Params 5, eflags: 0x0
// Checksum 0x6348956e, Offset: 0x3358
// Size: 0x47e
function function_8abe0568( str_type, n_delay, str_sound, b_wait_if_busy = 0, var_92885147 = 0 )
{
    if ( isdefined( level.var_bec5bf67 ) )
    {
        b_exit = self [[ level.var_bec5bf67 ]]( str_type );
        
        if ( b_exit )
        {
            return;
        }
    }
    
    if ( !isdefined( str_sound ) )
    {
        str_sound = function_1eac234a( str_type );
        
        if ( !isdefined( str_sound ) )
        {
            return;
        }
    }
    
    n_wait = function_f577c17d( str_sound );
    n_wait = max( n_wait - 2, 2.5 );
    
    if ( isdefined( n_delay ) )
    {
        wait n_delay;
    }
    
    if ( isplayer( self ) )
    {
        player = self;
        player endon( #"disconnect" );
        
        if ( !isdefined( player.var_85ea4daf ) )
        {
            player.var_85ea4daf = [];
        }
        
        if ( var_92885147 )
        {
            arrayinsert( player.var_85ea4daf, str_sound, 0 );
        }
        else
        {
            if ( !isdefined( player.var_85ea4daf ) )
            {
                player.var_85ea4daf = [];
            }
            else if ( !isarray( player.var_85ea4daf ) )
            {
                player.var_85ea4daf = array( player.var_85ea4daf );
            }
            
            player.var_85ea4daf[ player.var_85ea4daf.size ] = str_sound;
        }
        
        if ( is_true( player.zmannouncertalking ) && ( b_wait_if_busy || var_92885147 ) )
        {
            do
            {
                player waittill( #"hash_26a44682c9fd6f62" );
            }
            while ( isdefined( player.var_85ea4daf[ 0 ] ) && player.var_85ea4daf[ 0 ] != str_sound );
        }
        
        if ( function_a076708f( str_type ) )
        {
            player.zmannouncertalking = 1;
            
            /#
                if ( getdvarint( #"debug_vo", 0 ) )
                {
                    if ( !soundexists( str_sound ) )
                    {
                        var_2dbe34fe = "<dev string:x44>" + "<dev string:x52>" + function_9e72a96( str_sound ) + "<dev string:x63>";
                        iprintlnbold( var_2dbe34fe );
                        println( var_2dbe34fe );
                    }
                }
            #/
            
            if ( isdefined( level.var_14fa5e76[ str_type ] ) )
            {
                self.var_7d8fdfe9[ str_type ] = gettime();
            }
            
            player playlocalsound( str_sound );
            wait n_wait;
            player.zmannouncertalking = undefined;
            player notify( #"hash_26a44682c9fd6f62", { #str_type:str_type, #str_sound:str_sound } );
        }
        
        arrayremovevalue( player.var_85ea4daf, str_sound );
        return;
    }
    
    foreach ( player in getplayers() )
    {
        player thread function_8abe0568( str_type, undefined, str_sound, b_wait_if_busy, var_92885147 );
    }
    
    wait n_wait;
}

// Namespace zm_vo/zm_vo
// Params 2, eflags: 0x0
// Checksum 0xbcd65458, Offset: 0x37e0
// Size: 0x34
function function_47cf6c76( str_type, n_time = 45 )
{
    level.var_14fa5e76[ str_type ] = n_time;
}

// Namespace zm_vo/zm_vo
// Params 1, eflags: 0x4
// Checksum 0x3309e317, Offset: 0x3820
// Size: 0x9e, Type: bool
function private function_a076708f( str_type )
{
    if ( is_true( self.zmannouncertalking ) )
    {
        return false;
    }
    
    if ( isdefined( level.var_14fa5e76[ str_type ] ) && isdefined( self.var_7d8fdfe9[ str_type ] ) && self.var_7d8fdfe9[ str_type ] + int( level.var_14fa5e76[ str_type ] * 1000 ) >= gettime() )
    {
        return false;
    }
    
    return true;
}

// Namespace zm_vo/zm_vo
// Params 1, eflags: 0x4
// Checksum 0xc9228bcb, Offset: 0x38c8
// Size: 0xf0
function private function_1eac234a( str_type )
{
    if ( isdefined( level.var_9182a974[ str_type ] ) )
    {
        str_alias = function_d3fc42dc( level.var_9182a974[ str_type ] );
    }
    else
    {
        /#
            if ( getdvarint( #"debug_vo", 0 ) )
            {
                iprintlnbold( "<dev string:x77>" + function_9e72a96( str_type ) + "<dev string:x89>" );
                println( "<dev string:x77>" + function_9e72a96( str_type ) + "<dev string:x89>" );
            }
        #/
    }
    
    return str_alias;
}

// Namespace zm_vo/zm_vo
// Params 2, eflags: 0x0
// Checksum 0xe8718b6d, Offset: 0x39c0
// Size: 0x24
function function_2cf4b07f( str_type, str_alias )
{
    level.var_9182a974[ str_type ] = str_alias;
}

// Namespace zm_vo/zm_vo
// Params 5, eflags: 0x0
// Checksum 0x99ab4cf1, Offset: 0x39f0
// Size: 0x16c
function function_b47e0399( var_7382ea8b, attacker, weapon, *victim, *einflictor )
{
    if ( weapon === #"hash_1561254978f7d1ed" || weapon === #"hash_d6e9cf445a840a" )
    {
        if ( zm_weapons::is_wonder_weapon( einflictor ) )
        {
            return;
        }
        
        if ( weapon === #"hash_1561254978f7d1ed" && math::cointoss() )
        {
            weapon = "killGeneric";
        }
    }
    
    if ( isdefined( weapon ) )
    {
        var_ba7af842 = function_384269f( weapon );
        
        if ( var_ba7af842 )
        {
            if ( isdefined( level.var_644df7b4 ) && gettime() < level.var_644df7b4 )
            {
                return;
            }
            else
            {
                level.var_644df7b4 = gettime() + int( 10 * 1000 );
            }
        }
        
        n_timeout = var_ba7af842 ? undefined : 30;
        victim function_d342796e( weapon, 0, 0, 1, var_ba7af842, n_timeout );
    }
}

// Namespace zm_vo/zm_vo
// Params 1, eflags: 0x0
// Checksum 0xe16be946, Offset: 0x3b68
// Size: 0x1c4, Type: bool
function function_384269f( var_7382ea8b )
{
    switch ( var_7382ea8b )
    {
        case #"se_semtexmultikill":
        case #"se_concussiongrenademultikill":
        case #"se_nightingalemultikill":
        case #"hash_28808125fce8c8e7":
        case #"hash_2af4d13403d833e5":
        case #"hash_2af4d13403d833e5":
        case #"hash_2d45724fc1a86740":
        case #"hash_31d075ffaf2c230a":
        case #"hash_343f719a2335150b":
        case #"hash_343f749a23351a24":
        case #"hash_3449e19a233e27e0":
        case #"hash_3449e69a233e305f":
        case #"se_satchelchargemultikill":
        case #"hash_394f4a59df1d0c17":
        case #"hash_3e454dbd28a162b0":
        case #"hash_406609dcd40a348e":
        case #"hash_4bd8ffae8d5281c9":
        case #"hash_541ae7332eba41be":
        case #"hash_5dc5c0d8c259c02d":
        case #"hash_62579373c5d67ce0":
        case #"se_fragmultikill":
        case #"hash_684963f03f8a86a5":
        case #"hash_68d4ef9c937aa223":
        case #"hash_6b704db2e152d216":
        case #"hash_6e779060a26706e1":
        case #"se_molotovcocktailmultikill":
            return true;
    }
    
    return false;
}

// Namespace zm_vo/zm_vo
// Params 6, eflags: 0x0
// Checksum 0x67672740, Offset: 0x3d38
// Size: 0x534
function function_d342796e( var_7382ea8b, n_delay, var_67fee570 = 0, var_299a320 = 1, var_b9582129 = 0, n_timeout )
{
    self endoncallback( &vo_clear, #"death" );
    
    if ( isplayer( self ) && isdefined( var_7382ea8b ) )
    {
        if ( !zm_utility::is_player_valid( self, 0, var_67fee570, 0 ) || is_true( self.dontspeak ) || is_true( self.var_54ddcd0c ) )
        {
            return;
        }
        
        str_vo_alias = battlechatter::get_player_dialog_alias( var_7382ea8b );
        
        if ( !isdefined( str_vo_alias ) )
        {
            /#
                if ( getdvarint( #"debug_vo", 0 ) )
                {
                    iprintlnbold( "<dev string:xba>" + function_9e72a96( var_7382ea8b ) + "<dev string:xd2>" + function_9e72a96( self getmpdialogname() ) + "<dev string:xe9>" );
                    println( "<dev string:xba>" + function_9e72a96( var_7382ea8b ) + "<dev string:xd2>" + function_9e72a96( self getmpdialogname() ) + "<dev string:xe9>" );
                }
            #/
            
            return;
        }
        
        if ( isdefined( n_delay ) && n_delay > 0 )
        {
            wait n_delay;
        }
        
        if ( isdefined( n_timeout ) )
        {
            if ( isdefined( self.var_c93d56b6[ var_7382ea8b ] ) )
            {
                if ( gettime() >= self.var_c93d56b6[ var_7382ea8b ] )
                {
                    self.var_c93d56b6[ var_7382ea8b ] = gettime() + int( n_timeout * 1000 );
                }
                else
                {
                    return;
                }
            }
            else if ( !isdefined( self.var_c93d56b6[ var_7382ea8b ] ) )
            {
                self.var_c93d56b6[ var_7382ea8b ] = gettime() + int( n_timeout * 1000 );
            }
        }
        
        dialogflags = 0;
        
        if ( var_299a320 )
        {
            dialogflags |= 2;
        }
        
        if ( var_b9582129 )
        {
            dialogflags |= 4;
        }
        
        self.isspeaking = 1;
        self.var_5b6ebfd0 = !var_299a320;
        self.str_vo_being_spoken = str_vo_alias;
        
        if ( !isdefined( level.var_62281818 ) )
        {
            level.var_62281818 = [];
        }
        else if ( !isarray( level.var_62281818 ) )
        {
            level.var_62281818 = array( level.var_62281818 );
        }
        
        level.var_62281818[ level.var_62281818.size ] = self;
        var_2690dae = function_f577c17d( str_vo_alias );
        
        /#
            if ( getdvarint( #"debug_vo", 0 ) )
            {
                iprintlnbold( "<dev string:xfa>" + function_9e72a96( str_vo_alias ) + "<dev string:x106>" + function_9e72a96( self getmpdialogname() ) + "<dev string:xe9>" );
                println( "<dev string:xfa>" + function_9e72a96( str_vo_alias ) + "<dev string:x106>" + function_9e72a96( self getmpdialogname() ) + "<dev string:xe9>" );
            }
        #/
        
        self battlechatter::function_a48c33ff( str_vo_alias, dialogflags );
        s_waitresult = self waittilltimeout( var_2690dae, #"done_speaking" );
        self vo_clear();
    }
}

// Namespace zm_vo/zm_vo
// Params 5, eflags: 0x0
// Checksum 0x827a720e, Offset: 0x4278
// Size: 0x11a4
function function_7622cb70( var_b58a6345, n_delay, b_wait_if_busy = 1, var_54c38d65, var_92885147 = 0 )
{
    self endon( #"death" );
    self endoncallback( &function_58f7f768, #"hash_1ca30bf3bc01d214" );
    
    if ( !isdefined( var_b58a6345 ) )
    {
        return;
    }
    
    if ( level flag::get( #"hash_43c360bf8cccea00" ) )
    {
        return;
    }
    
    if ( isdefined( n_delay ) )
    {
        wait n_delay;
    }
    
    if ( !isdefined( self ) )
    {
        return;
    }
    
    if ( isdefined( var_54c38d65 ) )
    {
        if ( !isdefined( var_54c38d65 ) )
        {
            var_54c38d65 = [];
        }
        else if ( !isarray( var_54c38d65 ) )
        {
            var_54c38d65 = array( var_54c38d65 );
        }
        
        if ( level flag::get_any( var_54c38d65 ) )
        {
            return;
        }
        
        level endoncallback( &function_58f7f768, var_54c38d65 );
    }
    
    if ( isplayer( self ) )
    {
        if ( !var_92885147 && ( is_player_speaking( self ) || function_c10c4064( self ) ) )
        {
            if ( b_wait_if_busy )
            {
                do
                {
                    waitframe( 1 );
                }
                while ( is_player_speaking( self ) || function_c10c4064( self ) );
            }
            else
            {
                return;
            }
        }
        
        str_vo_alias = self globallogic_audio::get_commander_dialog_alias( var_b58a6345 );
        var_b4dd2e62 = self globallogic_audio::function_2523d20f( var_b58a6345 );
    }
    else
    {
        players = function_a1ef346b();
        var_adc203cc = 0;
        
        foreach ( player in players )
        {
            if ( is_player_speaking( player ) || function_c10c4064( player ) )
            {
                var_adc203cc = 1;
                break;
            }
        }
        
        if ( var_adc203cc && !var_92885147 )
        {
            if ( b_wait_if_busy )
            {
                while ( true )
                {
                    var_adc203cc = 0;
                    players = function_a1ef346b();
                    
                    foreach ( player in players )
                    {
                        if ( is_player_speaking( player ) || function_c10c4064( player ) )
                        {
                            var_adc203cc = 1;
                            break;
                        }
                    }
                    
                    if ( !var_adc203cc )
                    {
                        break;
                    }
                    
                    waitframe( 1 );
                }
            }
            else
            {
                return;
            }
        }
        
        player = getplayers()[ 0 ];
        
        if ( isplayer( player ) )
        {
            str_vo_alias = player globallogic_audio::get_commander_dialog_alias( var_b58a6345 );
            var_b4dd2e62 = player globallogic_audio::function_2523d20f( var_b58a6345 );
        }
        else
        {
            return;
        }
    }
    
    if ( !isdefined( var_b4dd2e62 ) )
    {
        var_b4dd2e62 = #"";
    }
    
    if ( isdefined( str_vo_alias ) )
    {
        str_vo_alias = function_d3fc42dc( str_vo_alias );
        
        if ( !isdefined( str_vo_alias ) )
        {
            return;
        }
        
        if ( isplayer( self ) )
        {
            var_2690dae = self function_f577c17d( str_vo_alias, var_b58a6345 );
            self thread globallogic_audio::leader_dialog_on_player( var_b58a6345, undefined, undefined, undefined, undefined, str_vo_alias );
            
            if ( !isdefined( self.var_671911e9 ) )
            {
                self.var_671911e9 = [];
            }
            else if ( !isarray( self.var_671911e9 ) )
            {
                self.var_671911e9 = array( self.var_671911e9 );
            }
            
            self.var_671911e9[ self.var_671911e9.size ] = str_vo_alias;
            
            if ( !isdefined( self.var_29e6a032 ) )
            {
                self.var_29e6a032 = [];
            }
            else if ( !isarray( self.var_29e6a032 ) )
            {
                self.var_29e6a032 = array( self.var_29e6a032 );
            }
            
            self.var_29e6a032[ self.var_29e6a032.size ] = var_b4dd2e62;
            self function_730589a6();
            self.dontspeak = 1;
            self thread _end_vo_say_commander_line( str_vo_alias, var_b4dd2e62, self, var_2690dae );
            s_waitresult = self waittilltimeout( var_2690dae, #"death", #"hash_73f839d8939452ad" );
            arrayremovevalue( self.var_671911e9, str_vo_alias );
            arrayremovevalue( self.var_29e6a032, var_b4dd2e62 );
            self function_730589a6();
            self.dontspeak = 0;
            self notify( str_vo_alias + "_end_vo_say_commander_line" );
        }
        else
        {
            a_players = function_a1ef346b();
            var_2690dae = getplayers()[ 0 ] function_f577c17d( str_vo_alias, var_b58a6345 );
            level globallogic_audio::function_61e17de0( var_b58a6345, a_players, undefined, undefined, undefined, str_vo_alias );
            
            foreach ( player in a_players )
            {
                if ( !isdefined( player.var_671911e9 ) )
                {
                    player.var_671911e9 = [];
                }
                else if ( !isarray( player.var_671911e9 ) )
                {
                    player.var_671911e9 = array( player.var_671911e9 );
                }
                
                player.var_671911e9[ player.var_671911e9.size ] = str_vo_alias;
                
                if ( !isdefined( player.var_29e6a032 ) )
                {
                    player.var_29e6a032 = [];
                }
                else if ( !isarray( player.var_29e6a032 ) )
                {
                    player.var_29e6a032 = array( player.var_29e6a032 );
                }
                
                player.var_29e6a032[ player.var_29e6a032.size ] = var_b4dd2e62;
                player function_730589a6();
                player.dontspeak = 1;
            }
            
            self thread _end_vo_say_commander_line( str_vo_alias, var_b4dd2e62, a_players, var_2690dae );
            array::wait_till( a_players, [ "death", #"hash_73f839d8939452ad" ], var_2690dae );
            
            foreach ( player in a_players )
            {
                if ( isdefined( player ) )
                {
                    arrayremovevalue( player.var_671911e9, str_vo_alias );
                    arrayremovevalue( player.var_29e6a032, var_b4dd2e62 );
                    player function_730589a6();
                    player.dontspeak = 0;
                }
            }
            
            self notify( str_vo_alias + "_end_vo_say_commander_line" );
        }
        
        return;
    }
    
    if ( isplayer( self ) )
    {
        str_bundle = self.pers[ level.var_7ee6af9f ];
    }
    else
    {
        str_bundle = isdefined( level.var_e2f95698 ) ? level.var_e2f95698 : getplayers()[ 0 ].pers[ level.var_7ee6af9f ];
    }
    
    var_a6e45682 = getscriptbundle( str_bundle );
    
    if ( isarray( var_a6e45682.conversations ) )
    {
        foreach ( s_conversation in var_a6e45682.conversations )
        {
            if ( s_conversation.conversationname === var_b58a6345 )
            {
                var_d8d8b84c = s_conversation;
                break;
            }
        }
    }
    
    if ( !isdefined( var_d8d8b84c ) )
    {
        return;
    }
    
    if ( isarray( var_d8d8b84c.var_aa02f35a ) && var_d8d8b84c.var_aa02f35a.size )
    {
        var_ce5964ab = [];
        
        if ( var_d8d8b84c.var_824bf975 === #"random_select" )
        {
            var_73a92203 = array::random( var_d8d8b84c.var_aa02f35a );
            level.var_f6ea0657 = 1;
            
            if ( isarray( level.var_a43447e4 ) )
            {
                foreach ( var_5c5fbd97 in level.var_a43447e4 )
                {
                    if ( !isdefined( var_ce5964ab ) )
                    {
                        var_ce5964ab = [];
                    }
                    else if ( !isarray( var_ce5964ab ) )
                    {
                        var_ce5964ab = array( var_ce5964ab );
                    }
                    
                    if ( !isinarray( var_ce5964ab, var_5c5fbd97 ) )
                    {
                        var_ce5964ab[ var_ce5964ab.size ] = var_5c5fbd97;
                    }
                }
            }
            
            self function_f2efbd1c( var_73a92203.soundevent, var_73a92203.var_aebcb4b1, var_73a92203.var_f35c5951, undefined, var_ce5964ab, var_73a92203.var_5d4b5964 );
        }
        else if ( var_d8d8b84c.var_824bf975 === #"timeline" )
        {
            foreach ( index, var_73a92203 in var_d8d8b84c.var_aa02f35a )
            {
                if ( index == var_d8d8b84c.var_aa02f35a.size - 1 )
                {
                    level.var_f6ea0657 = 1;
                    
                    if ( isdefined( level.var_a43447e4 ) )
                    {
                        foreach ( var_5c5fbd97 in level.var_a43447e4 )
                        {
                            if ( !isdefined( var_ce5964ab ) )
                            {
                                var_ce5964ab = [];
                            }
                            else if ( !isarray( var_ce5964ab ) )
                            {
                                var_ce5964ab = array( var_ce5964ab );
                            }
                            
                            if ( !isinarray( var_ce5964ab, var_5c5fbd97 ) )
                            {
                                var_ce5964ab[ var_ce5964ab.size ] = var_5c5fbd97;
                            }
                        }
                    }
                    
                    self function_f2efbd1c( var_73a92203.soundevent, var_73a92203.var_aebcb4b1, var_73a92203.var_f35c5951, undefined, var_ce5964ab, var_73a92203.var_5d4b5964 );
                    continue;
                }
                
                level.var_f6ea0657 = 1;
                
                if ( isdefined( level.var_a43447e4 ) )
                {
                    foreach ( var_5c5fbd97 in level.var_a43447e4 )
                    {
                        if ( !isdefined( var_ce5964ab ) )
                        {
                            var_ce5964ab = [];
                        }
                        else if ( !isarray( var_ce5964ab ) )
                        {
                            var_ce5964ab = array( var_ce5964ab );
                        }
                        
                        if ( !isinarray( var_ce5964ab, var_5c5fbd97 ) )
                        {
                            var_ce5964ab[ var_ce5964ab.size ] = var_5c5fbd97;
                        }
                    }
                }
                
                self thread function_f2efbd1c( var_73a92203.soundevent, var_73a92203.var_aebcb4b1, var_73a92203.var_f35c5951, undefined, var_ce5964ab );
            }
        }
        else
        {
            foreach ( var_73a92203 in var_d8d8b84c.var_aa02f35a )
            {
                level.var_f6ea0657 = 1;
                
                if ( isdefined( level.var_a43447e4 ) )
                {
                    foreach ( var_5c5fbd97 in level.var_a43447e4 )
                    {
                        if ( !isdefined( var_ce5964ab ) )
                        {
                            var_ce5964ab = [];
                        }
                        else if ( !isarray( var_ce5964ab ) )
                        {
                            var_ce5964ab = array( var_ce5964ab );
                        }
                        
                        if ( !isinarray( var_ce5964ab, var_5c5fbd97 ) )
                        {
                            var_ce5964ab[ var_ce5964ab.size ] = var_5c5fbd97;
                        }
                    }
                }
                
                self function_f2efbd1c( var_73a92203.soundevent, var_73a92203.var_aebcb4b1, undefined, var_73a92203.var_f35c5951, var_ce5964ab, var_73a92203.var_5d4b5964 );
            }
        }
        
        level.var_f6ea0657 = 0;
    }
}

// Namespace zm_vo/zm_vo
// Params 1, eflags: 0x4
// Checksum 0xede0e5cc, Offset: 0x5428
// Size: 0x114
function private function_730589a6( var_b4dd2e62 )
{
    var_b4dd2e62 = self.var_29e6a032[ self.var_29e6a032.size - 1 ];
    n_index = function_cb39455f( var_b4dd2e62 );
    
    /#
        str_message = "<dev string:x110>" + n_index + "<dev string:x135>" + ( isdefined( var_b4dd2e62 ) ? var_b4dd2e62 : "<dev string:x141>" ) + "<dev string:x14f>" + self getentitynumber();
        
        if ( getdvarint( #"debug_vo", 0 ) )
        {
            iprintlnbold( str_message );
            println( str_message );
        }
    #/
    
    self clientfield::set_player_uimodel( "zm_hud.commander_speaking", n_index );
}

// Namespace zm_vo/zm_vo
// Params 6, eflags: 0x4
// Checksum 0x532fbc03, Offset: 0x5548
// Size: 0x62c
function private function_f2efbd1c( var_64edfc97, var_b4dd2e62, var_dcfc156f, var_c736b731 = 0, var_ce5964ab, var_70da3e8f )
{
    level endon( #"end_game" );
    
    if ( !isdefined( var_64edfc97 ) )
    {
        return;
    }
    
    if ( !isdefined( var_b4dd2e62 ) )
    {
        var_b4dd2e62 = #"";
    }
    
    if ( isdefined( var_dcfc156f ) )
    {
        wait var_dcfc156f;
    }
    
    if ( isplayer( self ) )
    {
        self endon( #"disconnect" );
        
        if ( isarray( var_ce5964ab ) )
        {
            if ( isinarray( var_ce5964ab, self ) )
            {
                return;
            }
        }
        
        a_players = array( self );
    }
    else
    {
        a_players = getplayers();
        
        if ( isarray( var_ce5964ab ) )
        {
            a_players = array::exclude( a_players, var_ce5964ab );
            
            if ( a_players.size == 0 )
            {
                return;
            }
        }
    }
    
    var_a44937e5 = var_64edfc97;
    var_64edfc97 = function_d3fc42dc( var_a44937e5 );
    
    if ( !isdefined( var_64edfc97 ) )
    {
        /#
            if ( getdvarint( #"debug_vo", 0 ) )
            {
                iprintlnbold( "<dev string:x15f>" + function_9e72a96( var_a44937e5 ) + "<dev string:x16f>" );
                println( "<dev string:x15f>" + function_9e72a96( var_a44937e5 ) + "<dev string:x16f>" );
            }
        #/
        
        return;
    }
    
    /#
        str_bundle = isdefined( level.var_e2f95698 ) ? level.var_e2f95698 : a_players[ 0 ].pers[ level.var_7ee6af9f ];
        
        if ( getdvarint( #"debug_vo", 0 ) )
        {
            iprintlnbold( function_9e72a96( str_bundle ) + "<dev string:x182>" + function_9e72a96( var_a44937e5 ) );
            println( function_9e72a96( str_bundle ) + "<dev string:x182>" + function_9e72a96( var_a44937e5 ) );
        }
    #/
    
    foreach ( player in a_players )
    {
        player playlocalsound( var_64edfc97 );
        
        if ( !isdefined( player.var_671911e9 ) )
        {
            player.var_671911e9 = [];
        }
        else if ( !isarray( player.var_671911e9 ) )
        {
            player.var_671911e9 = array( player.var_671911e9 );
        }
        
        player.var_671911e9[ player.var_671911e9.size ] = var_64edfc97;
        
        if ( !isdefined( player.var_29e6a032 ) )
        {
            player.var_29e6a032 = [];
        }
        else if ( !isarray( player.var_29e6a032 ) )
        {
            player.var_29e6a032 = array( player.var_29e6a032 );
        }
        
        player.var_29e6a032[ player.var_29e6a032.size ] = var_b4dd2e62;
        player function_730589a6();
        player.dontspeak = 1;
    }
    
    if ( function_32464c29() )
    {
        if ( isdefined( var_70da3e8f ) )
        {
            var_2690dae = var_70da3e8f;
        }
        else
        {
            var_2690dae = 3;
        }
    }
    else
    {
        var_2690dae = function_f577c17d( var_64edfc97 );
    }
    
    self thread _end_vo_say_commander_line( var_64edfc97, var_b4dd2e62, a_players, var_2690dae + var_c736b731 );
    wait var_2690dae + var_c736b731;
    
    foreach ( player in a_players )
    {
        if ( isdefined( player ) )
        {
            arrayremovevalue( player.var_671911e9, var_64edfc97 );
            arrayremovevalue( player.var_29e6a032, var_b4dd2e62 );
            player function_730589a6();
            player.dontspeak = 0;
            player notify( #"hash_73f839d8939452ad" );
        }
    }
    
    self notify( var_64edfc97 + "_end_vo_say_commander_line" );
}

// Namespace zm_vo/zm_vo
// Params 4, eflags: 0x0
// Checksum 0x29f5c933, Offset: 0x5b80
// Size: 0x1bc
function _end_vo_say_commander_line( var_64edfc97, var_b4dd2e62, a_players, n_wait )
{
    if ( !isdefined( a_players ) )
    {
        a_players = [];
    }
    else if ( !isarray( a_players ) )
    {
        a_players = array( a_players );
    }
    
    self endon( var_64edfc97 + "_end_vo_say_commander_line" );
    self waittilltimeout( n_wait + float( function_60d95f53() ) / 1000, #"hash_1ca30bf3bc01d214", #"disconnect" );
    
    foreach ( player in a_players )
    {
        if ( isdefined( player ) )
        {
            arrayremovevalue( player.var_671911e9, var_64edfc97 );
            arrayremovevalue( player.var_29e6a032, var_b4dd2e62 );
            player function_730589a6();
            player.dontspeak = 0;
            player notify( #"hash_73f839d8939452ad" );
        }
    }
}

// Namespace zm_vo/zm_vo
// Params 1, eflags: 0x0
// Checksum 0x49341f9d, Offset: 0x5d48
// Size: 0x5c
function function_1ac9c00e( var_4dbbc41f )
{
    self endon( #"death" );
    
    for (i = 0; i < var_4dbbc41f.size; i++) {
        self function_d6f8bbd9( var_4dbbc41f[ i ] );
    }
}

// Namespace zm_vo/zm_vo
// Params 1, eflags: 0x0
// Checksum 0x7e2b9334, Offset: 0x5db0
// Size: 0xe0
function function_58f7f768( *str_notify )
{
    if ( isplayer( self ) )
    {
        self function_604084ea();
        return;
    }
    
    players = getplayers();
    
    foreach ( player in players )
    {
        player function_604084ea();
    }
}

// Namespace zm_vo/zm_vo
// Params 0, eflags: 0x0
// Checksum 0xfc27b008, Offset: 0x5e98
// Size: 0xe6
function function_604084ea()
{
    foreach ( vo in self.var_671911e9 )
    {
        self stopsound( vo );
    }
    
    self.var_671911e9 = [];
    self.var_29e6a032 = [];
    self function_730589a6();
    self.dontspeak = 0;
    self globallogic_audio::flush_dialog_on_player();
    self notify( #"hash_73f839d8939452ad" );
}

// Namespace zm_vo/zm_vo
// Params 3, eflags: 0x0
// Checksum 0x8190f205, Offset: 0x5f88
// Size: 0x33c
function function_c4303dda( str_vo_alias, n_delay, b_wait_if_busy )
{
    self endoncallback( &vo_clear, #"death" );
    var_d9dd4565 = str_vo_alias;
    str_vo_alias = function_d3fc42dc( var_d9dd4565 );
    
    if ( !isdefined( str_vo_alias ) )
    {
        /#
            if ( getdvarint( #"debug_vo", 0 ) )
            {
                iprintlnbold( "<dev string:x15f>" + function_9e72a96( var_d9dd4565 ) + "<dev string:x16f>" );
                println( "<dev string:x15f>" + function_9e72a96( var_d9dd4565 ) + "<dev string:x16f>" );
            }
        #/
        
        return;
    }
    
    if ( isdefined( n_delay ) )
    {
        wait n_delay;
    }
    
    if ( isplayer( self ) )
    {
        if ( is_player_speaking( self ) || function_c10c4064( self ) )
        {
            if ( is_true( b_wait_if_busy ) )
            {
                do
                {
                    waitframe( 1 );
                }
                while ( is_player_speaking( self ) || function_c10c4064( self ) );
            }
            else if ( is_false( b_wait_if_busy ) )
            {
                return;
            }
        }
    }
    else
    {
        return;
    }
    
    /#
        if ( getdvarint( #"debug_vo", 0 ) )
        {
            iprintlnbold( "<dev string:x198>" + function_9e72a96( str_vo_alias ) );
            println( "<dev string:x198>" + function_9e72a96( str_vo_alias ) );
        }
    #/
    
    self.str_vo_being_spoken = str_vo_alias;
    self.isspeaking = 1;
    self playlocalsound( str_vo_alias );
    var_2690dae = function_f577c17d( str_vo_alias );
    
    /#
        if ( getdvarint( #"debug_vo", 0 ) )
        {
            iprintlnbold( "<dev string:x1ae>" + var_2690dae + "<dev string:x1c2>" );
            println( "<dev string:x1ae>" + var_2690dae + "<dev string:x1c2>" );
        }
    #/
    
    wait var_2690dae;
    self vo_clear();
}

// Namespace zm_vo/zm_vo
// Params 4, eflags: 0x0
// Checksum 0x824c79a8, Offset: 0x62d0
// Size: 0x4dc
function function_d6f8bbd9( str_vo_alias, n_delay, a_players, b_wait_if_busy )
{
    self endoncallback( &vo_clear, #"death" );
    
    if ( !isentity( self ) && isdefined( a_players ) )
    {
        if ( !isdefined( a_players ) )
        {
            a_players = [];
        }
        else if ( !isarray( a_players ) )
        {
            a_players = array( a_players );
        }
        
        foreach ( player in a_players )
        {
            if ( isalive( player ) )
            {
                player thread function_c4303dda( str_vo_alias, n_delay, b_wait_if_busy );
            }
        }
    }
    else
    {
        var_d9dd4565 = str_vo_alias;
        str_vo_alias = function_d3fc42dc( var_d9dd4565 );
        
        if ( !isdefined( str_vo_alias ) )
        {
            /#
                if ( getdvarint( #"debug_vo", 0 ) )
                {
                    iprintlnbold( "<dev string:x15f>" + function_9e72a96( var_d9dd4565 ) + "<dev string:x16f>" );
                    println( "<dev string:x15f>" + function_9e72a96( var_d9dd4565 ) + "<dev string:x16f>" );
                }
            #/
            
            return;
        }
        
        if ( isdefined( n_delay ) )
        {
            wait n_delay;
        }
        
        if ( is_true( b_wait_if_busy ) )
        {
            while ( is_true( self.isspeaking ) )
            {
                waitframe( 1 );
            }
        }
        else if ( is_false( b_wait_if_busy ) && is_true( self.isspeaking ) )
        {
            return;
        }
        
        /#
            if ( getdvarint( #"debug_vo", 0 ) )
            {
                iprintlnbold( "<dev string:x198>" + function_9e72a96( str_vo_alias ) );
                println( "<dev string:x198>" + function_9e72a96( str_vo_alias ) );
            }
        #/
        
        self.str_vo_being_spoken = str_vo_alias;
        self.isspeaking = 1;
        
        if ( isdefined( a_players ) )
        {
            if ( !isdefined( a_players ) )
            {
                a_players = [];
            }
            else if ( !isarray( a_players ) )
            {
                a_players = array( a_players );
            }
            
            foreach ( player in a_players )
            {
                self playsoundtoplayer( str_vo_alias, player );
            }
        }
        else
        {
            self playsound( str_vo_alias );
        }
    }
    
    var_2690dae = function_f577c17d( str_vo_alias );
    
    /#
        if ( getdvarint( #"debug_vo", 0 ) )
        {
            iprintlnbold( "<dev string:x1ae>" + var_2690dae + "<dev string:x1c2>" );
            println( "<dev string:x1ae>" + var_2690dae + "<dev string:x1c2>" );
        }
    #/
    
    wait var_2690dae;
    self vo_clear();
}

// Namespace zm_vo/zm_vo
// Params 1, eflags: 0x4
// Checksum 0x54d82beb, Offset: 0x67b8
// Size: 0x1da
function private function_d3fc42dc( str_vo_alias )
{
    var_db4208eb = zm_audio::get_valid_lines( str_vo_alias );
    
    if ( var_db4208eb.size >= 1 && isdefined( self.var_8bde5cff[ str_vo_alias ] ) )
    {
        var_66e8b16d = array::exclude( var_db4208eb, self.var_8bde5cff[ str_vo_alias ] );
        
        if ( var_66e8b16d.size === 0 )
        {
            var_66e8b16d = var_db4208eb;
            self.var_8bde5cff[ str_vo_alias ] = array::exclude( self.var_8bde5cff[ str_vo_alias ], var_db4208eb );
        }
    }
    else
    {
        var_66e8b16d = var_db4208eb;
    }
    
    var_e0c5c8ec = array::random( var_66e8b16d );
    
    if ( isdefined( var_e0c5c8ec ) && var_db4208eb.size >= 1 )
    {
        if ( !isdefined( self.var_8bde5cff ) )
        {
            self.var_8bde5cff = [];
        }
        
        if ( !isdefined( self.var_8bde5cff[ str_vo_alias ] ) )
        {
            self.var_8bde5cff[ str_vo_alias ] = [];
        }
        else if ( !isarray( self.var_8bde5cff[ str_vo_alias ] ) )
        {
            self.var_8bde5cff[ str_vo_alias ] = array( self.var_8bde5cff[ str_vo_alias ] );
        }
        
        if ( !isinarray( self.var_8bde5cff[ str_vo_alias ], var_e0c5c8ec ) )
        {
            self.var_8bde5cff[ str_vo_alias ][ self.var_8bde5cff[ str_vo_alias ].size ] = var_e0c5c8ec;
        }
    }
    
    return var_e0c5c8ec;
}

// Namespace zm_vo/zm_vo
// Params 0, eflags: 0x0
// Checksum 0x53dfc71f, Offset: 0x69a0
// Size: 0xaa, Type: bool
function function_45e29f06()
{
    var_5eb47b1d = function_a1ef346b();
    
    foreach ( player in var_5eb47b1d )
    {
        if ( is_player_speaking( player ) )
        {
            return true;
        }
    }
    
    return false;
}

// Namespace zm_vo/zm_vo
// Params 1, eflags: 0x0
// Checksum 0x691a023, Offset: 0x6a58
// Size: 0x78, Type: bool
function is_player_speaking( e_player )
{
    if ( !isdefined( e_player ) && isplayer( self ) )
    {
        e_player = self;
    }
    
    if ( isalive( e_player ) && is_true( e_player.isspeaking ) )
    {
        return true;
    }
    
    return false;
}

// Namespace zm_vo/zm_vo
// Params 1, eflags: 0x0
// Checksum 0xbb033e0d, Offset: 0x6ad8
// Size: 0x8a, Type: bool
function function_c10c4064( e_player )
{
    if ( !isdefined( e_player ) && isplayer( self ) )
    {
        e_player = self;
    }
    
    if ( isalive( e_player ) && isarray( e_player.var_671911e9 ) && e_player.var_671911e9.size )
    {
        return true;
    }
    
    return false;
}

// Namespace zm_vo/zm_vo
// Params 7, eflags: 0x0
// Checksum 0xfd5d7724, Offset: 0x6b70
// Size: 0x3e, Type: bool
function function_a2bd5a0c( *var_cadd3b0c, *n_delay, *b_wait_if_busy, *n_priority, *var_34e7887, *var_d7714e4e, *var_67fee570 )
{
    return false;
}

// Namespace zm_vo/zm_vo
// Params 8, eflags: 0x0
// Checksum 0xa39c8d83, Offset: 0x6bb8
// Size: 0x46, Type: bool
function vo_say( *str_vo_alias, *n_delay, *b_wait_if_busy, *n_priority, *var_34e7887, *var_d7714e4e, *var_9c64da7c, *var_67fee570 )
{
    return false;
}

// Namespace zm_vo/zm_vo
// Params 5, eflags: 0x0
// Checksum 0x27761074, Offset: 0x6c08
// Size: 0x4c
function function_cf1e151c( *a_str_vo, var_604e94aa, *b_wait_if_busy, *n_priority, *var_34e7887 = [] )
{
    b_played = 0;
    return b_played;
}

// Namespace zm_vo/zm_vo
// Params 7, eflags: 0x0
// Checksum 0x53b04484, Offset: 0x6c60
// Size: 0x6a
function function_7e4562d7( *var_3505e2ee, var_604e94aa, *b_wait_if_busy, *n_priority, *var_34e7887, *var_39ed8245, *var_dcc9a85f = [] )
{
    b_played = 0;
    var_cd5bda0c = [];
    return b_played;
}

// Namespace zm_vo/zm_vo
// Params 0, eflags: 0x0
// Checksum 0xa692a17d, Offset: 0x6cd8
// Size: 0x8c
function vo_stop()
{
    if ( isdefined( self.str_vo_being_spoken ) && self.str_vo_being_spoken != "" )
    {
        if ( isplayer( self ) )
        {
            self battlechatter::stop_dialog( self.str_vo_being_spoken );
        }
        else
        {
            self stopsound( self.str_vo_being_spoken );
        }
    }
    
    vo_clear();
}

// Namespace zm_vo/zm_vo
// Params 2, eflags: 0x0
// Checksum 0x89b5d6a0, Offset: 0x6d70
// Size: 0x110
function function_3c173d37( v_pos, n_range = 1000 )
{
    level notify( #"hash_1ca30bf3bc01d214" );
    
    foreach ( player in getplayers() )
    {
        if ( !isdefined( v_pos ) || distancesquared( player.origin, v_pos ) <= n_range * n_range )
        {
            player function_604084ea();
            player vo_stop();
        }
    }
}

// Namespace zm_vo/zm_vo
// Params 0, eflags: 0x0
// Checksum 0xf15a4652, Offset: 0x6e88
// Size: 0xa
function function_82f9bc9f()
{
    return "NONE";
}

// Namespace zm_vo/zm_vo
// Params 1, eflags: 0x0
// Checksum 0x9d249efd, Offset: 0x6ea0
// Size: 0xaa
function function_cb39455f( speaker )
{
    if ( !isdefined( speaker ) || speaker == #"" || !isdefined( level.a_speakers ) )
    {
        return 0;
    }
    
    for (i = 0; i < level.a_speakers.var_73aa0673.size; i++) {
        if ( speaker === level.a_speakers.var_73aa0673[ i ].speaker )
        {
            return ( i + 1 );
        }
    }
    
    return 0;
}

// Namespace zm_vo/zm_vo
// Params 3, eflags: 0x4
// Checksum 0x22b9c269, Offset: 0x6f58
// Size: 0x2a0
function private function_7bed52a( killstreaktype, team, killstreakid )
{
    if ( !isdefined( killstreaktype ) || !isdefined( killstreakid ) )
    {
        return;
    }
    
    self notify( "killstreak_start_" + killstreaktype );
    self notify( "killstreak_start_inventory_" + killstreaktype );
    scriptbundle = level.killstreaks[ killstreaktype ].script_bundle;
    dialogkey = scriptbundle.var_2451b1f2;
    
    if ( level.teambased )
    {
        if ( !isdefined( self.currentkillstreakdialog ) )
        {
            self thread battlechatter::function_fff18afc( scriptbundle.var_c236921c, scriptbundle.var_f5871fe4 );
        }
        
        if ( isdefined( level.killstreakrules[ killstreaktype ] ) && level.killstreakrules[ killstreaktype ].curteam[ team ] > 1 )
        {
            dialogkey = scriptbundle.var_7742570a;
        }
    }
    else
    {
        if ( !isdefined( self.currentkillstreakdialog ) && isdefined( scriptbundle.var_c236921c ) )
        {
            self thread battlechatter::function_576ff6fe( killstreaktype );
        }
        
        if ( isdefined( level.killstreakrules[ killstreaktype ] ) && level.killstreakrules[ killstreaktype ].cur > 1 )
        {
            dialogkey = scriptbundle.var_7742570a;
        }
    }
    
    if ( !isdefined( scriptbundle.var_e23aed46 ) || scriptbundle.var_e23aed46 <= 0 )
    {
        globallogic_audio::leader_dialog_for_other_teams( dialogkey, team, undefined, killstreakid );
        return;
    }
    
    foreach ( currentteam, _ in level.teams )
    {
        if ( currentteam != team )
        {
            players = getplayers( currentteam, self.origin, scriptbundle.var_e23aed46 );
            globallogic_audio::function_61e17de0( dialogkey, players, undefined, killstreakid );
        }
    }
}

// Namespace zm_vo/zm_vo
// Params 7, eflags: 0x4
// Checksum 0xd378670a, Offset: 0x7200
// Size: 0x74
function private function_3d6e0cd9( dialogkey, killstreaktype, killstreakid, soundevent, var_8a6b001a, weapon, priority )
{
    if ( namespace_cf6efd05::function_85b812c9() )
    {
        return;
    }
    
    self globallogic_audio::play_taacom_dialog( dialogkey, killstreaktype, killstreakid, soundevent, var_8a6b001a, weapon, priority );
}

// Namespace zm_vo/zm_vo
// Params 3, eflags: 0x4
// Checksum 0xdeaa7952, Offset: 0x7280
// Size: 0xb4
function private function_3cf68327( dialogkey, killstreaktype, killstreakid )
{
    assert( isdefined( dialogkey ) );
    assert( isdefined( killstreaktype ) );
    
    if ( !isdefined( self.owner ) || !isdefined( self.team ) || self.team != self.owner.team )
    {
        return;
    }
    
    self.owner play_taacom_dialog_response( dialogkey, killstreaktype, killstreakid, self.pilotindex );
}

// Namespace zm_vo/zm_vo
// Params 4, eflags: 0x0
// Checksum 0xd8fb4c29, Offset: 0x7340
// Size: 0x7c
function play_taacom_dialog_response( dialogkey, killstreaktype, killstreakid, pilotindex )
{
    assert( isdefined( dialogkey ) );
    assert( isdefined( killstreaktype ) );
    
    if ( !isdefined( pilotindex ) )
    {
        return;
    }
    
    self play_taacom_dialog( dialogkey + pilotindex, killstreaktype, killstreakid );
}

// Namespace zm_vo/zm_vo
// Params 7, eflags: 0x0
// Checksum 0x2e62c286, Offset: 0x73c8
// Size: 0x6c
function play_taacom_dialog( dialogkey, killstreaktype, killstreakid, soundevent, var_8a6b001a, weapon, priority )
{
    if ( isdefined( level.play_taacom_dialog ) )
    {
        self [[ level.play_taacom_dialog ]]( dialogkey, killstreaktype, killstreakid, soundevent, var_8a6b001a, weapon, priority );
    }
}

// Namespace zm_vo/zm_vo
// Params 4, eflags: 0x0
// Checksum 0x45e8e704, Offset: 0x7440
// Size: 0x50
function play_pilot_dialog( dialogkey, killstreaktype, killstreakid, pilotindex )
{
    if ( isdefined( level.play_pilot_dialog ) )
    {
        self [[ level.play_pilot_dialog ]]( dialogkey, killstreaktype, killstreakid, pilotindex );
    }
}

// Namespace zm_vo/zm_vo
// Params 3, eflags: 0x4
// Checksum 0xf28508ec, Offset: 0x7498
// Size: 0xcc
function private function_9716fce9( dialogkey, killstreaktype, killstreakid )
{
    if ( !isdefined( self.owner ) || !isdefined( self.owner.team ) || !isdefined( self.team ) || self.team != self.owner.team )
    {
        return;
    }
    
    if ( dialogkey === "timecheck" && is_true( self.completely_shutdown ) )
    {
        return;
    }
    
    self.owner play_pilot_dialog( dialogkey, killstreaktype, killstreakid, self.pilotindex );
}

// Namespace zm_vo/zm_vo
// Params 4, eflags: 0x4
// Checksum 0xcd8d1dde, Offset: 0x7570
// Size: 0x5c
function private function_f6370f75( dialogkey, killstreaktype, killstreakid, pilotindex )
{
    if ( !isdefined( killstreaktype ) || !isdefined( pilotindex ) )
    {
        return;
    }
    
    self globallogic_audio::killstreak_dialog_on_player( dialogkey, killstreaktype, killstreakid, pilotindex );
}

