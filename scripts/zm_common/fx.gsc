#using scripts\core_common\exploder_shared;
#using scripts\core_common\fx_shared;
#using scripts\core_common\sound_shared;
#using scripts\core_common\struct;
#using scripts\zm_common\util;

#namespace fx;

/#

    // Namespace fx/fx
    // Params 4, eflags: 0x0
    // Checksum 0xd071e24a, Offset: 0xa8
    // Size: 0x17c
    function print_org(fxcommand, fxid, fxpos, waittime) {
        if (getdvarint(#"debug", 0)) {
            println("<dev string:x38>");
            println("<dev string:x3d>" + fxpos[0] + "<dev string:x4b>" + fxpos[1] + "<dev string:x4b>" + fxpos[2] + "<dev string:x50>");
            println("<dev string:x55>");
            println("<dev string:x73>");
            println("<dev string:x83>" + fxcommand + "<dev string:x50>");
            println("<dev string:x9b>" + fxid + "<dev string:x50>");
            println("<dev string:xae>" + waittime + "<dev string:x50>");
            println("<dev string:xc2>");
        }
    }

#/

// Namespace fx/fx
// Params 8, eflags: 0x0
// Checksum 0x67dcb2dc, Offset: 0x230
// Size: 0x6c
function gunfireloopfx(fxid, fxpos, shotsmin, shotsmax, shotdelaymin, shotdelaymax, betweensetsmin, betweensetsmax) {
    thread gunfireloopfxthread(fxid, fxpos, shotsmin, shotsmax, shotdelaymin, shotdelaymax, betweensetsmin, betweensetsmax);
}

// Namespace fx/fx
// Params 8, eflags: 0x0
// Checksum 0x1a46702c, Offset: 0x2a8
// Size: 0x1ea
function gunfireloopfxthread(fxid, fxpos, shotsmin, shotsmax, shotdelaymin, shotdelaymax, betweensetsmin, betweensetsmax) {
    level endon(#"stop all gunfireloopfx");
    waitframe(1);
    if (betweensetsmax < betweensetsmin) {
        temp = betweensetsmax;
        betweensetsmax = betweensetsmin;
        betweensetsmin = temp;
    }
    betweensetsbase = betweensetsmin;
    betweensetsrange = betweensetsmax - betweensetsmin;
    if (shotdelaymax < shotdelaymin) {
        temp = shotdelaymax;
        shotdelaymax = shotdelaymin;
        shotdelaymin = temp;
    }
    shotdelaybase = shotdelaymin;
    shotdelayrange = shotdelaymax - shotdelaymin;
    if (shotsmax < shotsmin) {
        temp = shotsmax;
        shotsmax = shotsmin;
        shotsmin = temp;
    }
    shotsbase = shotsmin;
    shotsrange = shotsmax - shotsmin;
    fxent = spawnfx(level._effect[fxid], fxpos);
    for (;;) {
        shotnum = shotsbase + randomint(shotsrange);
        for (i = 0; i < shotnum; i++) {
            triggerfx(fxent);
            wait shotdelaybase + randomfloat(shotdelayrange);
        }
        wait betweensetsbase + randomfloat(betweensetsrange);
    }
}

// Namespace fx/fx
// Params 9, eflags: 0x0
// Checksum 0x57d51bbb, Offset: 0x4a0
// Size: 0x74
function gunfireloopfxvec(fxid, fxpos, fxpos2, shotsmin, shotsmax, shotdelaymin, shotdelaymax, betweensetsmin, betweensetsmax) {
    thread gunfireloopfxvecthread(fxid, fxpos, fxpos2, shotsmin, shotsmax, shotdelaymin, shotdelaymax, betweensetsmin, betweensetsmax);
}

// Namespace fx/fx
// Params 9, eflags: 0x0
// Checksum 0x74e5d1bc, Offset: 0x520
// Size: 0x282
function gunfireloopfxvecthread(fxid, fxpos, fxpos2, shotsmin, shotsmax, shotdelaymin, shotdelaymax, betweensetsmin, betweensetsmax) {
    level endon(#"stop all gunfireloopfx");
    waitframe(1);
    if (betweensetsmax < betweensetsmin) {
        temp = betweensetsmax;
        betweensetsmax = betweensetsmin;
        betweensetsmin = temp;
    }
    betweensetsbase = betweensetsmin;
    betweensetsrange = betweensetsmax - betweensetsmin;
    if (shotdelaymax < shotdelaymin) {
        temp = shotdelaymax;
        shotdelaymax = shotdelaymin;
        shotdelaymin = temp;
    }
    shotdelaybase = shotdelaymin;
    shotdelayrange = shotdelaymax - shotdelaymin;
    if (shotsmax < shotsmin) {
        temp = shotsmax;
        shotsmax = shotsmin;
        shotsmin = temp;
    }
    shotsbase = shotsmin;
    shotsrange = shotsmax - shotsmin;
    fxpos2 = vectornormalize(fxpos2 - fxpos);
    fxent = spawnfx(level._effect[fxid], fxpos, fxpos2);
    for (;;) {
        shotnum = shotsbase + randomint(shotsrange);
        for (i = 0; i < int(shotnum / level.fxfireloopmod); i++) {
            triggerfx(fxent);
            delay = (shotdelaybase + randomfloat(shotdelayrange)) * level.fxfireloopmod;
            if (delay < 0.05) {
                delay = 0.05;
            }
            wait delay;
        }
        wait shotdelaybase + randomfloat(shotdelayrange);
        wait betweensetsbase + randomfloat(betweensetsrange);
    }
}

// Namespace fx/fx
// Params 1, eflags: 0x0
// Checksum 0xb4c22309, Offset: 0x7b0
// Size: 0x5c
function grenadeexplosionfx(pos) {
    playfx(level._effect[#"hash_38faf2be38a9b539"], pos);
    earthquake(0.15, 0.5, pos, 250);
}

