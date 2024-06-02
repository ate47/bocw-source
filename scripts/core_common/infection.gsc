// Atian COD Tools GSC CW decompiler test
#using script_3d703ef87a841fe4;
#using scripts\core_common\player\player_role.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\spectating.gsc;

#namespace infection;

// Namespace infection/infection
// Params 0, eflags: 0x5
// Checksum 0xee7f00fa, Offset: 0xc8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"infection", &__init__, undefined, undefined, undefined);
}

// Namespace infection/infection
// Params 0, eflags: 0x0
// Checksum 0xac203d43, Offset: 0x110
// Size: 0x4c
function __init__() {
    if (!isdefined(level.infection) && getgametypesetting("infectionMode", 0)) {
        initialize();
    }
}

// Namespace infection/infection
// Params 0, eflags: 0x0
// Checksum 0xdc58a804, Offset: 0x168
// Size: 0x80
function initialize() {
    level.infection = {#perks:[], #bodies:[], #primary_weapon:undefined, #offhand_weapon:undefined, #team:#"none", #var_c4b373ef:[]};
}

// Namespace infection/infection
// Params 0, eflags: 0x0
// Checksum 0x7d0b775d, Offset: 0x1f0
// Size: 0x1c
function function_74650d7() {
    if (isdefined(level.infection)) {
        return true;
    }
    return false;
}

// Namespace infection/infection
// Params 0, eflags: 0x0
// Checksum 0x263aa5a6, Offset: 0x218
// Size: 0x1a
function is_infected() {
    return is_true(self.infected);
}

// Namespace infection/infection
// Params 1, eflags: 0x0
// Checksum 0x8264f6e3, Offset: 0x240
// Size: 0x36
function function_a2d73bc3(team) {
    if (!function_74650d7()) {
        return;
    }
    level.infection.team = team;
}

// Namespace infection/infection
// Params 2, eflags: 0x0
// Checksum 0xf9acd9bb, Offset: 0x280
// Size: 0x9c
function function_153000d0(male, female) {
    assert(isdefined(male));
    assert(isdefined(female));
    male_index = player_role::function_97d19493(male);
    female_index = player_role::function_97d19493(female);
    function_e8cc8373(male_index, female_index);
}

// Namespace infection/infection
// Params 2, eflags: 0x4
// Checksum 0x55623d4a, Offset: 0x328
// Size: 0x8c
function private function_e8cc8373(male, female) {
    assert(isdefined(male));
    assert(isdefined(female));
    if (!function_74650d7()) {
        return;
    }
    level.infection.bodies[0] = male;
    level.infection.bodies[1] = female;
}

// Namespace infection/infection
// Params 1, eflags: 0x0
// Checksum 0xb9ab7823, Offset: 0x3c0
// Size: 0xec
function function_db5ddd5f(perk) {
    assert(isdefined(perk));
    if (!function_74650d7()) {
        return;
    }
    if (!isdefined(level.infection.perks)) {
        level.infection.perks = [];
    } else if (!isarray(level.infection.perks)) {
        level.infection.perks = array(level.infection.perks);
    }
    level.infection.perks[level.infection.perks.size] = perk;
}

// Namespace infection/infection
// Params 0, eflags: 0x0
// Checksum 0x1b84f029, Offset: 0x4b8
// Size: 0xc0
function function_ff357d24() {
    if (!function_74650d7()) {
        return;
    }
    foreach (perk in level.infection.perks) {
        if (!self hasperk(perk)) {
            self setperk(perk);
        }
    }
}

// Namespace infection/infection
// Params 0, eflags: 0x0
// Checksum 0xdbcbf404, Offset: 0x580
// Size: 0x4c
function give_loadout() {
    self function_e6f9e3cd();
    self clearperks();
    self function_ff357d24();
}

// Namespace infection/infection
// Params 0, eflags: 0x0
// Checksum 0xbe7b9efc, Offset: 0x5d8
// Size: 0x124
function give_body() {
    current_role = self player_role::get();
    foreach (body in level.infection.bodies) {
        if (current_role == body) {
            return;
        }
    }
    body_index = self getplayergendertype() == "male" ? 0 : 1;
    self player_role::set(level.infection.bodies[body_index], 1);
    self thread function_da08f4d0();
}

// Namespace infection/infection
// Params 0, eflags: 0x0
// Checksum 0xda6b541f, Offset: 0x708
// Size: 0x60
function function_da08f4d0() {
    self endon(#"death");
    while (true) {
        wait(randomintrange(3, 5));
        self playsound(#"hash_4325dee8081cb1b3");
    }
}

// Namespace infection/infection
// Params 0, eflags: 0x0
// Checksum 0xc1673e6b, Offset: 0x770
// Size: 0x40
function function_882350c() {
    xuid = self getxuid();
    level.infection.var_c4b373ef[xuid] = 1;
}

// Namespace infection/infection
// Params 0, eflags: 0x0
// Checksum 0x70edb41d, Offset: 0x7b8
// Size: 0x56
function function_687661ea() {
    xuid = self getxuid();
    if (is_true(level.infection.var_c4b373ef[xuid])) {
        return true;
    }
    return false;
}

// Namespace infection/infection
// Params 0, eflags: 0x0
// Checksum 0xdde53aac, Offset: 0x818
// Size: 0x16
function get_infected_team() {
    return level.infection.team;
}

// Namespace infection/infection
// Params 0, eflags: 0x0
// Checksum 0x28d43cfd, Offset: 0x838
// Size: 0x11c
function function_d3da95cf() {
    team = self get_infected_team();
    if (self.sessionstate != "dead") {
        self.switching_teams = 1;
        self.switchedteamsresetgadgets = 1;
        self.joining_team = team;
        self.leaving_team = self.pers[#"team"];
    }
    self teams::function_dc7eaabd(team);
    self.pers[#"weapon"] = undefined;
    self.pers[#"spawnweapon"] = undefined;
    self.pers[#"savedmodel"] = undefined;
    self.pers[#"teamtime"] = undefined;
    self.infected = 1;
    self spectating::set_permissions();
}

