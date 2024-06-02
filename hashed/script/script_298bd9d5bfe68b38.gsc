// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\territory_util.gsc;
#using scripts\core_common\territory.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\player\player_loadout.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace weapon_cache;

// Namespace weapon_cache/weapon_cache
// Params 0, eflags: 0x5
// Checksum 0xf1d5cf45, Offset: 0x1d8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"weapon_cache", &preinit, undefined, &finalize, undefined);
}

// Namespace weapon_cache/weapon_cache
// Params 0, eflags: 0x6 linked
// Checksum 0x84585ae8, Offset: 0x228
// Size: 0x128
function private preinit() {
    if (!is_true(getgametypesetting(#"hash_6143c4e1e18f08fd"))) {
        return;
    }
    clientfield::register("scriptmover", "register_weapon_cache", 1, 1, "int");
    clientfield::register("toplayer", "weapon_cache_ammo_cooldown", 1, 1, "int");
    clientfield::register("toplayer", "weapon_cache_cac_cooldown", 1, 1, "int");
    callback::on_connect(&onplayerconnect);
    level.var_b24258 = &function_b24258;
    level.var_f830a9db = &function_f830a9db;
    level.var_50c35573 = [];
}

// Namespace weapon_cache/weapon_cache
// Params 0, eflags: 0x2 linked
// Checksum 0x92778c9b, Offset: 0x358
// Size: 0x24
function onplayerconnect() {
    level.var_50c35573[self getentitynumber()] = 1;
}

// Namespace weapon_cache/weapon_cache
// Params 0, eflags: 0x2 linked
// Checksum 0xa1527727, Offset: 0x388
// Size: 0xe8
function finalize() {
    if (!is_true(getgametypesetting(#"hash_6143c4e1e18f08fd"))) {
        return;
    }
    var_b5f67dff = territory::function_5c7345a3("weapon_cache");
    foreach (var_73b9e48e in var_b5f67dff) {
        var_73b9e48e.var_331b8fa4 = 0;
        var_73b9e48e function_4c6228cd();
    }
}

// Namespace weapon_cache/weapon_cache
// Params 0, eflags: 0x2 linked
// Checksum 0x9720f5f2, Offset: 0x478
// Size: 0x1f2
function function_4c6228cd() {
    usetrigger = spawn("trigger_radius_use", self.origin, 0, 96, 32);
    usetrigger setcursorhint("HINT_INTERACTIVE_PROMPT");
    usetrigger function_dae4ab9b(0);
    useobject = gameobjects::create_use_object(#"any", usetrigger, [], undefined, #"weapon_cache", 1, 1, 1, self.angles);
    useobject gameobjects::set_visible(#"hash_5ccfd7bbbf07c770");
    useobject gameobjects::allow_use(#"hash_5ccfd7bbbf07c770");
    useobject gameobjects::set_use_time(0);
    useobject gameobjects::set_onuse_event(&function_692bd0bc);
    useobject.canuseobject = &function_43017839;
    useobject.dontlinkplayertotrigger = 1;
    useobject.keepweapon = 1;
    useobject clientfield::set("register_weapon_cache", 1);
    useobject disconnectpaths();
    self.entity = util::spawn_model(#"hash_334445b2169a33a9", self.origin, self.angles);
    self.mdl_gameobject = useobject;
    useobject.var_73b9e48e = self;
}

// Namespace weapon_cache/weapon_cache
// Params 1, eflags: 0x2 linked
// Checksum 0x8a13c96f, Offset: 0x678
// Size: 0x2ac
function function_692bd0bc(player) {
    primaryweapons = player getweaponslistprimaries();
    givemaxammo = player hasperk(#"specialty_extraammo") || player function_db654c9(player.class_num, #"hash_4a12859000892dda");
    foreach (weapon in primaryweapons) {
        player setweaponammoclip(weapon, player function_b7f1fd2c(weapon));
        if (givemaxammo) {
            player givemaxammo(weapon);
            continue;
        }
        player givestartammo(weapon);
    }
    primaryoffhand = player function_826ed2dd();
    player setweaponammoclip(primaryoffhand, player function_b7f1fd2c(primaryoffhand));
    loadout = player loadout::get_loadout_slot("secondarygrenade");
    secondaryoffhand = loadout.weapon;
    if (isdefined(secondaryoffhand) && player hasweapon(secondaryoffhand)) {
        player setweaponammoclip(secondaryoffhand, player function_b7f1fd2c(secondaryoffhand));
    }
    player.var_864fb19 = gettime();
    player notify(#"resupply");
    player playsoundtoplayer(#"hash_da34d63dbce7ba7", player);
    player thread function_2909dca6(self.var_73b9e48e);
    player thread function_f9502d83();
}

// Namespace weapon_cache/weapon_cache
// Params 0, eflags: 0x2 linked
// Checksum 0x39fc9e3, Offset: 0x930
// Size: 0x1d0
function function_f9502d83() {
    self endon(#"disconnect");
    var_b5f67dff = territory::function_5c7345a3("weapon_cache");
    self clientfield::set_to_player("weapon_cache_ammo_cooldown", 1);
    level.var_50c35573[self getentitynumber()] = 0;
    foreach (var_73b9e48e in var_b5f67dff) {
        var_73b9e48e gameobjects::function_7a00d78c(self);
    }
    self waittilltimeout(60, #"death");
    self clientfield::set_to_player("weapon_cache_ammo_cooldown", 0);
    level.var_50c35573[self getentitynumber()] = 1;
    foreach (var_73b9e48e in var_b5f67dff) {
        var_73b9e48e gameobjects::function_664b40(self);
    }
}

// Namespace weapon_cache/weapon_cache
// Params 1, eflags: 0x6 linked
// Checksum 0x6e5f231b, Offset: 0xb08
// Size: 0x3e
function private function_43017839(player) {
    if (level.var_50c35573[player getentitynumber()] != 1) {
        return false;
    }
    return true;
}

// Namespace weapon_cache/weapon_cache
// Params 1, eflags: 0x6 linked
// Checksum 0x5aab1f87, Offset: 0xb50
// Size: 0x2c
function private function_b24258(*eventstruct) {
    self luinotifyevent(#"hash_c893e57629c7648");
}

// Namespace weapon_cache/weapon_cache
// Params 0, eflags: 0x2 linked
// Checksum 0x619fd154, Offset: 0xb88
// Size: 0x84
function function_f830a9db() {
    self endon(#"disconnect");
    self clientfield::set_to_player("weapon_cache_cac_cooldown", 1);
    self notify(#"hash_2bc8de932f7212e7");
    self waittilltimeout(120, #"death");
    self clientfield::set_to_player("weapon_cache_cac_cooldown", 0);
}

// Namespace weapon_cache/weapon_cache
// Params 0, eflags: 0x6 linked
// Checksum 0x64f8b0bc, Offset: 0xc18
// Size: 0x54
function private function_6f438290() {
    var_b5f67dff = territory::function_5c7345a3("weapon_cache");
    var_8794b467 = arraysortclosest(var_b5f67dff, self.origin);
    return var_8794b467[0];
}

// Namespace weapon_cache/weapon_cache
// Params 0, eflags: 0x4
// Checksum 0x7e3135ac, Offset: 0xc78
// Size: 0x7c
function private function_74547745() {
    var_73b9e48e = self function_6f438290();
    if (!isdefined(var_73b9e48e)) {
        return;
    }
    var_73b9e48e function_4ac19c4f();
    self waittill(#"death", #"hash_2bc8de932f7212e7");
    var_73b9e48e function_70db7bab();
}

// Namespace weapon_cache/weapon_cache
// Params 1, eflags: 0x6 linked
// Checksum 0xa3e0af6a, Offset: 0xd00
// Size: 0x3c
function private function_2909dca6(var_73b9e48e) {
    var_73b9e48e function_4ac19c4f();
    wait(1);
    var_73b9e48e function_70db7bab();
}

// Namespace weapon_cache/weapon_cache
// Params 0, eflags: 0x6 linked
// Checksum 0xf0c75e1d, Offset: 0xd48
// Size: 0x58
function private function_4ac19c4f() {
    if (!self.var_331b8fa4 && isdefined(self.entity)) {
        self.entity thread scene::play("p9_usa_large_ammo_crate_01_bundle", "open", self.entity);
    }
    self.var_331b8fa4++;
}

// Namespace weapon_cache/weapon_cache
// Params 0, eflags: 0x6 linked
// Checksum 0xfd4e62fc, Offset: 0xda8
// Size: 0x64
function private function_70db7bab() {
    if (self.var_331b8fa4 && isdefined(self.entity)) {
        self.var_331b8fa4--;
        if (!self.var_331b8fa4) {
            self.entity thread scene::play("p9_usa_large_ammo_crate_01_bundle", "close", self.entity);
        }
    }
}

