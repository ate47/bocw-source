// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\util.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace shellshock;

// Namespace shellshock/shellshock
// Params 0, eflags: 0x5
// Checksum 0xb6c78eca, Offset: 0x120
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"shellshock", &preinit, undefined, undefined, undefined);
}

// Namespace shellshock/shellshock
// Params 0, eflags: 0x6 linked
// Checksum 0x902d744c, Offset: 0x168
// Size: 0x3c
function private preinit() {
    callback::on_start_gametype(&init);
    level.shellshockonplayerdamage = &on_damage;
}

// Namespace shellshock/shellshock
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x1b0
// Size: 0x4
function init() {
    
}

// Namespace shellshock/shellshock
// Params 5, eflags: 0x2 linked
// Checksum 0x9aadf72, Offset: 0x1c0
// Size: 0xec
function on_damage(*eattacker, *einflictor, *weapon, smeansofdeath, idamage) {
    if (self util::isflashbanged()) {
        return;
    }
    if (smeansofdeath == "MOD_EXPLOSIVE" || smeansofdeath == "MOD_GRENADE" || smeansofdeath == "MOD_GRENADE_SPLASH" || smeansofdeath == "MOD_PROJECTILE" || smeansofdeath == "MOD_PROJECTILE_SPLASH") {
        if (idamage > 10) {
            if (self util::mayapplyscreeneffect()) {
                self shellshock(#"frag_grenade_mp", 0.5);
            }
        }
    }
}

// Namespace shellshock/shellshock
// Params 0, eflags: 0x0
// Checksum 0x4642cbbf, Offset: 0x2b8
// Size: 0x2e
function end_on_death() {
    self waittill(#"death");
    waittillframeend();
    self notify(#"end_explode");
}

// Namespace shellshock/shellshock
// Params 1, eflags: 0x0
// Checksum 0x7227d39e, Offset: 0x2f0
// Size: 0x36
function end_on_timer(timer) {
    self endon(#"disconnect");
    wait(timer);
    self notify(#"end_on_timer");
}

// Namespace shellshock/shellshock
// Params 1, eflags: 0x0
// Checksum 0x79e4f1b7, Offset: 0x330
// Size: 0x54
function rcbomb_earthquake(position) {
    playrumbleonposition("grenade_rumble", position);
    earthquake(0.5, 0.5, self.origin, 512);
}

