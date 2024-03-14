// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai_shared.csc;

#namespace notetracks;

// Namespace notetracks/archetype_notetracks
// Params 0, eflags: 0x1
// Checksum 0xefc74dd9, Offset: 0x100
// Size: 0x6c
function autoexec main() {
    if (sessionmodeiszombiesgame() && getdvarint(#"splitscreen_playercount", 0) > 2) {
        return;
    }
    ai::add_ai_spawn_function(&initializenotetrackhandlers);
}

// Namespace notetracks/archetype_notetracks
// Params 1, eflags: 0x6 linked
// Checksum 0x6dd722c8, Offset: 0x178
// Size: 0x84
function private initializenotetrackhandlers(localclientnum) {
    addsurfacenotetrackfxhandler(localclientnum, "jumping", "surfacefxtable_jumping");
    addsurfacenotetrackfxhandler(localclientnum, "landing", "surfacefxtable_landing");
    addsurfacenotetrackfxhandler(localclientnum, "vtol_landing", "surfacefxtable_vtollanding");
}

// Namespace notetracks/archetype_notetracks
// Params 3, eflags: 0x6 linked
// Checksum 0x200b123f, Offset: 0x208
// Size: 0x44
function private addsurfacenotetrackfxhandler(localclientnum, notetrack, surfacetable) {
    entity = self;
    entity thread handlesurfacenotetrackfx(localclientnum, notetrack, surfacetable);
}

// Namespace notetracks/archetype_notetracks
// Params 3, eflags: 0x6 linked
// Checksum 0x4bb412d1, Offset: 0x258
// Size: 0xa0
function private handlesurfacenotetrackfx(localclientnum, notetrack, surfacetable) {
    entity = self;
    entity endon(#"death");
    while (true) {
        entity waittill(notetrack);
        fxname = entity getaifxname(localclientnum, surfacetable);
        if (isdefined(fxname)) {
            playfx(localclientnum, fxname, entity.origin);
        }
    }
}

