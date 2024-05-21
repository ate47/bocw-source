// Atian COD Tools GSC CW decompiler test
#using script_3dc93ca9902a9cda;
#using scripts\cp_common\snd.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\cp\cp_takedown_af_wreck.gsc;
#using scripts\cp\cp_takedown_af_skid.gsc;
#using scripts\cp\cp_takedown_af_chase.gsc;
#using scripts\cp\cp_takedown_af_tarmac.gsc;
#using scripts\cp\cp_takedown_af_hill.gsc;
#using scripts\cp\cp_takedown_af_intro.gsc;
#using scripts\cp\cp_takedown_raid_capture.gsc;
#using scripts\cp\cp_takedown_raid_slide.gsc;
#using scripts\cp\cp_takedown_raid_rooftops.gsc;
#using scripts\cp\cp_takedown_raid_apt.gsc;
#using script_26850092de25d970;
#using scripts\cp\cp_takedown_raid_bar.gsc;
#using script_51c03a543ea0ed19;
#using script_6b47294865dc34b5;
#using script_70b6424f429d140;
#using script_7cf3e180e994d17f;
#using script_31e9b35aaacbbd93;
#using script_61cfc2ab8e60625;
#using script_3626f1b2cf51a99c;
#using script_4ab78e327b76395f;
#using scripts\core_common\values_shared.gsc;
#using scripts\cp_common\hms_util.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\abilities\ability_player.gsc;
#using scripts\abilities\ability_util.gsc;
#using scripts\core_common\lui_shared.gsc;
#using script_67c9a990c0db216c;
#using scripts\core_common\player\player_loadout.gsc;
#using scripts\core_common\loadout_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\player\player_role.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\cp_common\util.gsc;
#using scripts\cp_common\skipto.gsc;
#using scripts\core_common\load_shared.gsc;

#namespace tkdn;

// Namespace tkdn/level_init
// Params 1, eflags: 0x20
// Checksum 0x5bc61f08, Offset: 0x4b8
// Size: 0x1c4
function event_handler[level_init] main(*eventstruct) {
    setclearanceceiling(16);
    init_flags();
    init_clientfields();
    function_37dfd679();
    level thread lui::add_luimenu("full_screen_movie", &full_screen_movie::register);
    load::main();
    function_22b7fffd();
    init_callbacks();
    thread function_7ea0ce5f();
    level thread tkdn_af_wreck::function_70dd6f0e();
    level.player = getplayers()[0];
    level flag::set("no_corpse_pickup");
    setdvar(#"hash_76c0d7e6385ee6de", 0.3);
    setdvar(#"hash_4466b01c6d8d7307", 4);
    if (!function_72a9e321()) {
        setdvar(#"r_maxspotshadowupdates", 12);
        setdvar(#"r_localshadowdropsizescale", 2);
    }
}

// Namespace tkdn/cp_takedown
// Params 0, eflags: 0x2 linked
// Checksum 0x8b9f969b, Offset: 0x688
// Size: 0x6d4
function function_37dfd679() {
    skipto::function_eb91535d("tkdn_raid_bar", &tkdn_raid_bar::main, &tkdn_raid_bar::starting, "Hit 2: Bar", &tkdn_raid_bar::cleanup, ["amsterdam_intro"]);
    skipto::function_eb91535d("tkdn_raid_gearup", &namespace_c9f7b6af::main, &namespace_c9f7b6af::starting, "Hit 2: Gear Up", &namespace_c9f7b6af::cleanup, ["amsterdam_intro", "amsterdam_main"]);
    skipto::function_eb91535d("tkdn_raid_apt", &tkdn_raid_apt::main, &tkdn_raid_apt::starting, "Hit 2: Apartment", &tkdn_raid_apt::cleanup, ["amsterdam_intro", "amsterdam_main"]);
    skipto::function_eb91535d("tkdn_raid_rooftops", &tkdn_raid_roof::main, &tkdn_raid_roof::starting, "Hit 2: Rooftops", &tkdn_raid_roof::cleanup, ["amsterdam_main"]);
    skipto::function_eb91535d("tkdn_raid_slide", &tkdn_raid_slide::main, &tkdn_raid_slide::starting, "Hit 2: Slide", &tkdn_raid_slide::cleanup, ["amsterdam_main"]);
    skipto::function_eb91535d("tkdn_raid_capture", &tkdn_raid_capture::main, &tkdn_raid_capture::starting, "Hit 2: Capture", &tkdn_raid_capture::cleanup, ["amsterdam_main"]);
    skipto::function_eb91535d("tkdn_af_intro", &tkdn_af_intro::main, &tkdn_af_intro::starting, "Hit 3: Intro", &tkdn_af_intro::cleanup, ["airfield_intro", "airfield_base"]);
    skipto::function_eb91535d("tkdn_af_hill", &tkdn_af_hill::main, &tkdn_af_hill::starting, "Hit 3: Hill", &tkdn_af_hill::cleanup, ["airfield_intro", "airfield_base"]);
    skipto::add("tkdn_af_tarmac", &tkdn_af_tarmac::main, &tkdn_af_tarmac::starting, "Hit 3: Tarmac", &tkdn_af_tarmac::cleanup, ["airfield_intro", "airfield_base"]);
    skipto::function_eb91535d("tkdn_af_chase", &tkdn_af_chase::main, &tkdn_af_chase::starting, "Hit 3: Chase", &tkdn_af_chase::cleanup, ["airfield_intro", "airfield_base"]);
    skipto::function_eb91535d("tkdn_af_rc_chase", &tkdn_af_chase::function_2ccc781e, &tkdn_af_chase::function_614083bb, "Hit 3: RC Chase", &tkdn_af_chase::function_cca97e77, ["airfield_base"]);
    skipto::add("tkdn_af_skid", &tkdn_af_skid::main, &tkdn_af_skid::starting, "Hit 3: Skid", &tkdn_af_skid::cleanup, ["airfield_base"]);
    skipto::function_eb91535d("tkdn_af_wreck", &tkdn_af_wreck::main, &tkdn_af_wreck::starting, "Hit 3: Wreck", &tkdn_af_wreck::cleanup, ["airfield_base"]);
    /#
        skipto::add_dev("<unknown string>", &tkdn_raid_bar::main, &tkdn_raid_bar::starting, "<unknown string>", &tkdn_raid_bar::cleanup, undefined, undefined, ["<unknown string>"]);
        skipto::add_dev("<unknown string>", &tkdn_raid_bar::main, &tkdn_raid_bar::starting, "<unknown string>", &tkdn_raid_bar::cleanup, undefined, undefined, ["<unknown string>", "<unknown string>", "<unknown string>", "<unknown string>"]);
        skipto::add_dev("<unknown string>", &tkdn_af_intro::main, &tkdn_af_intro::starting, "<unknown string>", &tkdn_af_intro::cleanup, undefined, undefined, ["<unknown string>"]);
        skipto::add_dev("<unknown string>", &function_5bef74d0);
    #/
}

/#

    // Namespace tkdn/cp_takedown
    // Params 2, eflags: 0x0
    // Checksum 0xf725e976, Offset: 0xd68
    // Size: 0x18
    function function_5bef74d0(*var_d3440450, *var_50cc0d4f) {
        
    }

#/

// Namespace tkdn/cp_takedown
// Params 0, eflags: 0x2 linked
// Checksum 0xa19742fc, Offset: 0xd88
// Size: 0xc4
function init_flags() {
    tkdn_heli_intro::init_flags();
    namespace_cb0d537d::init_flags();
    namespace_29b42773::init_flags();
    tkdn_raid_bar::init_flags();
    namespace_c9f7b6af::init_flags();
    tkdn_raid_apt::init_flags();
    tkdn_raid_capture::init_flags();
    tkdn_af_hill::init_flags();
    tkdn_af_tarmac::init_flags();
    tkdn_af_chase::init_flags();
    tkdn_af_skid::init_flags();
    tkdn_af_wreck::init_flags();
}

// Namespace tkdn/cp_takedown
// Params 0, eflags: 0x2 linked
// Checksum 0x1dad651b, Offset: 0xe58
// Size: 0xd4
function init_clientfields() {
    namespace_b100dd86::init_clientfields();
    tkdn_heli_intro::init_clientfields();
    namespace_cb0d537d::init_clientfields();
    namespace_29b42773::init_clientfields();
    tkdn_raid_bar::init_clientfields();
    namespace_c9f7b6af::init_clientfields();
    tkdn_raid_apt::init_clientfields();
    tkdn_raid_capture::init_clientfields();
    tkdn_af_hill::init_clientfields();
    tkdn_af_tarmac::init_clientfields();
    tkdn_af_chase::init_clientfields();
    tkdn_af_skid::init_clientfields();
    tkdn_af_wreck::init_clientfields();
}

// Namespace tkdn/cp_takedown
// Params 0, eflags: 0x2 linked
// Checksum 0xd33f6c87, Offset: 0xf38
// Size: 0xc4
function function_22b7fffd() {
    tkdn_heli_intro::function_22b7fffd();
    namespace_cb0d537d::function_22b7fffd();
    namespace_29b42773::function_22b7fffd();
    tkdn_raid_bar::function_22b7fffd();
    namespace_c9f7b6af::function_22b7fffd();
    tkdn_raid_apt::function_22b7fffd();
    tkdn_raid_capture::function_22b7fffd();
    tkdn_af_hill::function_22b7fffd();
    tkdn_af_tarmac::function_22b7fffd();
    tkdn_af_chase::function_22b7fffd();
    tkdn_af_skid::function_22b7fffd();
    tkdn_af_wreck::function_22b7fffd();
}

// Namespace tkdn/cp_takedown
// Params 0, eflags: 0x2 linked
// Checksum 0xf37f5f02, Offset: 0x1008
// Size: 0x44
function init_callbacks() {
    callback::on_spawned(&function_8106e2e1);
    callback::on_connect(&on_player_connect);
}

// Namespace tkdn/cp_takedown
// Params 0, eflags: 0x2 linked
// Checksum 0x61f1f653, Offset: 0x1058
// Size: 0xbc
function on_player_connect() {
    if (isdefined(level.var_28c22d88) && array::contains(level.var_28c22d88, "tkdn_raid_bar") || level.var_28c22d88.size == 0) {
        util::function_f3cadc9a("cp_takedown_player_ready");
        if (isdefined(level.var_d7d201ba) && !self flag::exists(level.var_d7d201ba)) {
            self flag::init(level.var_d7d201ba);
        }
    }
}

// Namespace tkdn/cp_takedown
// Params 0, eflags: 0x2 linked
// Checksum 0x3739e5bd, Offset: 0x1120
// Size: 0x38a
function function_8106e2e1() {
    self setcharacterbodytype(1);
    if (strstartswith(level.var_28c22d88[0], "tkdn_af_")) {
        self setcharacteroutfit(9);
    } else {
        self setcharacteroutfit(2);
    }
    thread namespace_b100dd86::setup_objectives(level.var_28c22d88[0]);
    knife = getweapon(#"knife_held");
    player = getplayers()[0];
    if (player hasweapon(knife, 1)) {
        player takeweapon(knife, 1);
    }
    switch (level.var_28c22d88[0]) {
    case #"tkdn_raid_bar":
        var_4f2ba130 = self getweaponslist();
        foreach (e_w in var_4f2ba130) {
            self takeweapon(e_w);
        }
        break;
    case #"tkdn_raid_gearup":
        var_4f2ba130 = self getweaponslist();
        foreach (e_w in var_4f2ba130) {
            self takeweapon(e_w);
        }
        break;
    case #"tkdn_raid_apt":
        function_95b5afc9();
        break;
    case #"tkdn_raid_capture":
        function_95b5afc9();
        break;
    case #"tkdn_af_tarmac":
    case #"tkdn_af_chase":
    case #"tkdn_af_intro":
    case #"tkdn_af_hill":
    case #"tkdn_af_wreck":
    case #"tkdn_af_skid":
        function_43593d7d();
        break;
    default:
        function_95b5afc9();
        break;
    }
}

// Namespace tkdn/cp_takedown
// Params 0, eflags: 0x2 linked
// Checksum 0x35dbc06f, Offset: 0x14b8
// Size: 0x184
function function_95b5afc9() {
    var_4f2ba130 = self getweaponslist();
    foreach (e_w in var_4f2ba130) {
        self takeweapon(e_w);
    }
    var_9f43fd46 = getweapon(#"smg_standard_t9", "steadyaim", "elo2", "grip");
    pistol = getweapon(#"pistol_semiauto_t9", "steadyaim", "fastreload", "reflex_pistol");
    self hms_util::function_2e7c81f6(var_9f43fd46, pistol, #"frag_grenade");
    self switchtoweapon(var_9f43fd46);
    self initialweaponraise(var_9f43fd46);
}

// Namespace tkdn/cp_takedown
// Params 0, eflags: 0x0
// Checksum 0xdcaacc66, Offset: 0x1648
// Size: 0x1cc
function function_6154e4c2() {
    var_4f2ba130 = self getweaponslist();
    foreach (e_w in var_4f2ba130) {
        self takeweapon(e_w);
    }
    primary_weapon = getweapon(#"smg_standard_t9", array("reflex", "fastreload"));
    primaryoffhand = getweapon(#"frag_grenade");
    secondary_weapon = getweapon(#"sniper_quickscope_t9");
    w_pistol = getweapon(#"pistol_semiauto_t9", "steadyaim", "fastreload", "reflex_pistol");
    self giveweapon(primary_weapon);
    self giveweapon(secondary_weapon);
    self switchtoweapon(primary_weapon);
}

// Namespace tkdn/cp_takedown
// Params 0, eflags: 0x0
// Checksum 0x91ca3fe1, Offset: 0x1820
// Size: 0xdc
function function_13f6e85() {
    secondaryoffhand = getweapon(#"gadget_health_regen");
    secondaryoffhandcount = 0;
    slot = "secondarygrenade";
    if (!self hasweapon(secondaryoffhand)) {
        self giveweapon(secondaryoffhand);
        self setweaponammoclip(secondaryoffhand, secondaryoffhandcount);
        self switchtooffhand(secondaryoffhand);
        self.grenadetypesecondary = secondaryoffhand;
        self.grenadetypesecondarycount = secondaryoffhandcount;
        self ability_util::function_36a15b60(secondaryoffhand);
    }
}

// Namespace tkdn/cp_takedown
// Params 0, eflags: 0x2 linked
// Checksum 0x6a2c5d19, Offset: 0x1908
// Size: 0x2a6
function function_43593d7d() {
    player = getplayers()[0];
    var_4f2ba130 = self getweaponslist();
    foreach (e_w in var_4f2ba130) {
        if (isdefined(e_w) && e_w != getweapon(#"null_offhand_primary") && e_w != getweapon("gadget_health_regen")) {
            self takeweapon(e_w);
        }
    }
    primary_weapon = getweapon(#"ar_standard_t9", array("holo", "steadyaim", "grip", "extclip"));
    secondary_weapon = getweapon(#"sniper_quickscope_t9");
    w_pistol = getweapon(#"pistol_semiauto_t9", "steadyaim", "fastreload", "reflex_pistol");
    self giveweapon(primary_weapon);
    player setweaponammoclip(primary_weapon, primary_weapon.clipsize);
    player givemaxammo(primary_weapon);
    self giveweapon(secondary_weapon);
    player setweaponammoclip(secondary_weapon, secondary_weapon.clipsize);
    self switchtoweapon(primary_weapon);
    weapons = player getweaponslist(1);
}

// Namespace tkdn/cp_takedown
// Params 0, eflags: 0x0
// Checksum 0x9ae0f653, Offset: 0x1bb8
// Size: 0x2c0
function function_acddd8f1() {
    player = getplayers()[0];
    var_4f2ba130 = self getweaponslist();
    foreach (e_w in var_4f2ba130) {
        self takeweapon(e_w);
    }
    level waittill(#"hash_47b9f42b49b80814");
    wait(1);
    primary_weapon = getweapon(#"ar_standard_t9", "steadyaim", "reflex");
    primaryoffhand = getweapon(#"frag_grenade");
    secondary_weapon = getweapon(#"sniper_quickscope_t9");
    w_pistol = getweapon(#"pistol_semiauto_t9", "steadyaim", "fastreload", "reflex_pistol");
    self giveweapon(primary_weapon);
    self giveweapon(secondary_weapon);
    self switchtoweapon(primary_weapon);
    weapons = player getweaponslist(1);
    foreach (weap in weapons) {
        player setweaponammoclip(weap, weap.clipsize);
        player setweaponammostock(weap, weap.maxammo);
    }
}

// Namespace tkdn/cp_takedown
// Params 0, eflags: 0x2 linked
// Checksum 0x4ec929f3, Offset: 0x1e80
// Size: 0x5c
function function_7ea0ce5f() {
    level flag::wait_till("oob_fail");
    level util::missionfailedwrapper(#"hash_32ab03edc2a4077d");
    level waittill(#"forever");
}

