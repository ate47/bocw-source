// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace explode;

// Namespace explode/explode
// Params 0, eflags: 0x5
// Checksum 0x4062e12, Offset: 0xc8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"explode", &preinit, undefined, undefined, undefined);
}

// Namespace explode/explode
// Params 0, eflags: 0x4
// Checksum 0x6ff53cc8, Offset: 0x110
// Size: 0xcc
function private preinit() {
    level.dirt_enable_explosion = getdvarint(#"scr_dirt_enable_explosion", 1);
    level.dirt_enable_slide = getdvarint(#"scr_dirt_enable_slide", 1);
    level.dirt_enable_fall_damage = getdvarint(#"scr_dirt_enable_fall_damage", 1);
    callback::on_localplayer_spawned(&localplayer_spawned);
    /#
        level thread updatedvars();
    #/
}

/#

    // Namespace explode/explode
    // Params 0, eflags: 0x0
    // Checksum 0x969e341a, Offset: 0x1e8
    // Size: 0xb0
    function updatedvars() {
        while (true) {
            level.dirt_enable_explosion = getdvarint(#"scr_dirt_enable_explosion", level.dirt_enable_explosion);
            level.dirt_enable_slide = getdvarint(#"scr_dirt_enable_slide", level.dirt_enable_slide);
            level.dirt_enable_fall_damage = getdvarint(#"scr_dirt_enable_fall_damage", level.dirt_enable_fall_damage);
            wait(1);
        }
    }

#/

// Namespace explode/explode
// Params 1, eflags: 0x0
// Checksum 0x1cd3aa8e, Offset: 0x2a0
// Size: 0xcc
function localplayer_spawned(localclientnum) {
    if (!self function_21c0fa55()) {
        return;
    }
    if (level.dirt_enable_explosion || level.dirt_enable_slide || level.dirt_enable_fall_damage) {
        if (level.dirt_enable_explosion) {
            self thread watchforexplosion(localclientnum);
        }
        if (level.dirt_enable_slide) {
            self thread watchforplayerslide(localclientnum);
        }
        if (level.dirt_enable_fall_damage) {
            self thread watchforplayerfalldamage(localclientnum);
        }
    }
}

// Namespace explode/explode
// Params 1, eflags: 0x0
// Checksum 0xf67a29da, Offset: 0x378
// Size: 0xa0
function watchforplayerfalldamage(localclientnum) {
    self endon(#"death");
    seed = 0;
    xdir = 0;
    ydir = 270;
    while (true) {
        self waittill(#"fall_damage");
        self thread dothedirty(localclientnum, xdir, ydir, 1, 1000, 500);
    }
}

// Namespace explode/explode
// Params 1, eflags: 0x0
// Checksum 0xb0fbb81b, Offset: 0x420
// Size: 0x124
function watchforplayerslide(localclientnum) {
    self endon(#"death");
    seed = 0;
    self.wasplayersliding = 0;
    xdir = 0;
    ydir = 6000;
    while (true) {
        self.isplayersliding = self isplayersliding();
        if (self.isplayersliding) {
            if (!self.wasplayersliding) {
                self notify(#"endthedirty");
                seed = randomfloatrange(0, 1);
            }
        } else if (self.wasplayersliding) {
            self thread dothedirty(localclientnum, xdir, ydir, 1, 300, 300);
        }
        self.wasplayersliding = self.isplayersliding;
        waitframe(1);
    }
}

// Namespace explode/explode
// Params 6, eflags: 0x0
// Checksum 0x2d6ab409, Offset: 0x550
// Size: 0xac
function dothedirty(localclientnum, right, up, distance, dirtduration, dirtfadetime) {
    self endon(#"death");
    self notify(#"dothedirty");
    self endon(#"dothedirty");
    self endon(#"endthedirty");
    util::lerp_generic(localclientnum, dirtduration, &do_the_dirty_lerp_helper, right, up, distance, dirtfadetime);
}

// Namespace explode/explode
// Params 8, eflags: 0x0
// Checksum 0x846990c, Offset: 0x608
// Size: 0x44
function do_the_dirty_lerp_helper(*currenttime, *elapsedtime, *localclientnum, *dirtduration, *right, *up, *distance, *dirtfadetime) {
    
}

// Namespace explode/explode
// Params 1, eflags: 0x0
// Checksum 0x1459085c, Offset: 0x658
// Size: 0x388
function watchforexplosion(localclientnum) {
    self endon(#"death");
    while (true) {
        waitresult = level waittill(#"explode");
        mod = waitresult.mod;
        position = waitresult.position;
        localclientnum = waitresult.localclientnum;
        explosiondistance = distance(self.origin, position);
        if ((mod == "MOD_GRENADE_SPLASH" || mod == "MOD_PROJECTILE_SPLASH") && explosiondistance < 600 && !function_1cbf351b(localclientnum) && !isthirdperson(localclientnum)) {
            cameraangles = self getcamangles();
            if (!isdefined(cameraangles)) {
                continue;
            }
            forwardvec = vectornormalize(anglestoforward(cameraangles));
            upvec = vectornormalize(anglestoup(cameraangles));
            rightvec = vectornormalize(anglestoright(cameraangles));
            explosionvec = vectornormalize(position - self getcampos());
            if (vectordot(forwardvec, explosionvec) > 0) {
                trace = bullettrace(getlocalclienteyepos(localclientnum), position, 0, self);
                if (trace[#"fraction"] >= 0.9) {
                    udot = -1 * vectordot(explosionvec, upvec);
                    rdot = vectordot(explosionvec, rightvec);
                    udotabs = abs(udot);
                    rdotabs = abs(rdot);
                    if (udotabs > rdotabs) {
                        if (udot > 0) {
                            udot = 1;
                        } else {
                            udot = -1;
                        }
                    } else if (rdot > 0) {
                        rdot = 1;
                    } else {
                        rdot = -1;
                    }
                    self thread dothedirty(localclientnum, rdot, udot, 1 - explosiondistance / 600, 2000, 500);
                }
            }
        }
    }
}

