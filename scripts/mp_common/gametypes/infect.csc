// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\player\player.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\renderoverridebundle.csc;
#using scripts\core_common\clientfield_shared.csc;
#using script_5978de81803f618a;
#using scripts\core_common\struct.csc;

#namespace infect;

// Namespace infect/gametype_init
// Params 1, eflags: 0x20
// Checksum 0xaf4566a8, Offset: 0x158
// Size: 0x184
function event_handler[gametype_init] main(*eventstruct) {
    level.var_433dea4 = 1;
    level.infect_timer = mp_infect_timer::register();
    clientfield::register("allplayers", "Infected.player_infected", 15000, 1, "int", &function_fd78da38, 0, 0);
    clientfield::register("toplayer", "infected_zombie_postfx", 17000, 1, "int", &function_55d0c68a, 0, 0);
    clientfield::register_clientuimodel("hud_items_cranked.infectedSurvivorTier", #"hash_6f4b11a0bee9b73d", #"hash_393bb7750e4c7fe3", 17000, 3, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.isInfected", #"hash_6f4b11a0bee9b73d", #"isinfected", 17000, 1, "int", undefined, 0, 0);
    callback::on_localplayer_spawned(&on_localplayer_spawned);
}

// Namespace infect/infect
// Params 1, eflags: 0x0
// Checksum 0x997b67ba, Offset: 0x2e8
// Size: 0x94
function on_localplayer_spawned(*localclientnum) {
    if (self function_da43934d()) {
        if (level.var_f7dea912 === 1 && !self postfx::function_556665f2(#"hash_e79032d85cb47d4")) {
            self postfx::playpostfxbundle(#"hash_e79032d85cb47d4");
            level.var_f7dea912 = 1;
        }
    }
}

// Namespace infect/infect
// Params 7, eflags: 0x0
// Checksum 0x8ce9781d, Offset: 0x388
// Size: 0x20c
function function_fd78da38(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump == 1) {
        if (self getlocalclientnumber() === fieldname) {
            foreach (player in getplayers(fieldname)) {
                if (player.team !== self.team && !player function_21c0fa55()) {
                    if (player flag::exists(#"friendly")) {
                        player renderoverridebundle::stop_bundle(#"friendly", sessionmodeiscampaigngame() ? #"hash_1cbf6d26721c59a7" : #"hash_1c90592671f4c6e9", 0);
                    }
                }
            }
            return;
        }
        if (self flag::exists(#"friendly")) {
            self renderoverridebundle::stop_bundle(#"friendly", sessionmodeiscampaigngame() ? #"hash_1cbf6d26721c59a7" : #"hash_1c90592671f4c6e9", 0);
        }
    }
}

// Namespace infect/infect
// Params 7, eflags: 0x0
// Checksum 0xeaf8f306, Offset: 0x5a0
// Size: 0xfc
function function_55d0c68a(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        if (!self postfx::function_556665f2(#"hash_e79032d85cb47d4")) {
            self postfx::playpostfxbundle(#"hash_e79032d85cb47d4");
            if (self function_da43934d()) {
                level.var_f7dea912 = 1;
            }
        }
        return;
    }
    self postfx::stoppostfxbundle(#"hash_e79032d85cb47d4");
    if (self function_da43934d()) {
        level.var_f7dea912 = 0;
    }
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x6a8
// Size: 0x4
function onprecachegametype() {
    
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x6b8
// Size: 0x4
function onstartgametype() {
    
}

