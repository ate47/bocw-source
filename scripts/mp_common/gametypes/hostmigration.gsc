// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\hostmigration_shared.gsc;

#namespace hostmigration;

// Namespace hostmigration/hostmigration
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x88
// Size: 0x4
function callback_hostmigrationsave() {
    
}

// Namespace hostmigration/hostmigration
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x98
// Size: 0x4
function callback_prehostmigrationsave() {
    
}

// Namespace hostmigration/hostmigration
// Params 0, eflags: 0x2 linked
// Checksum 0x9ca184a8, Offset: 0xa8
// Size: 0x1d8
function callback_hostmigration() {
    setslowmotion(1, 1, 0);
    level.hostmigrationreturnedplayercount = 0;
    if (level.inprematchperiod) {
        level waittill(#"prematch_over");
    }
    if (level.gameended) {
        println("<unknown string>" + gettime() + "<unknown string>");
        return;
    }
    println("<unknown string>" + gettime());
    level.hostmigrationtimer = 1;
    sethostmigrationstatus(1);
    level notify(#"host_migration_begin");
    thread locktimer();
    players = level.players;
    for (i = 0; i < players.size; i++) {
        player = players[i];
        player thread hostmigrationtimerthink();
    }
    level endon(#"host_migration_begin");
    hostmigrationwait();
    level.hostmigrationtimer = undefined;
    sethostmigrationstatus(0);
    println("<unknown string>" + gettime());
    level notify(#"host_migration_end");
}

