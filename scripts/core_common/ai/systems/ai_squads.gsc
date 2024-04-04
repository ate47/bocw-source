// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace aisquads;

// Namespace aisquads
// Method(s) 9 Total 9
class aisquad {

    var squadbreadcrumb;
    var squadleader;
    var squadmembers;

    // Namespace aisquad/ai_squads
    // Params 0, eflags: 0xa linked
    // Checksum 0x51397290, Offset: 0x188
    // Size: 0x26
    constructor() {
        squadleader = 0;
        squadmembers = [];
        squadbreadcrumb = [];
    }

    // Namespace aisquad/ai_squads
    // Params 0, eflags: 0x2 linked
    // Checksum 0xed6f75d4, Offset: 0x290
    // Size: 0xa
    function getmembers() {
        return squadmembers;
    }

    // Namespace aisquad/ai_squads
    // Params 1, eflags: 0x2 linked
    // Checksum 0x88dac8df, Offset: 0x330
    // Size: 0x5e
    function removeaifromsqaud(ai) {
        if (isinarray(squadmembers, ai)) {
            arrayremovevalue(squadmembers, ai, 0);
            if (squadleader === ai) {
                squadleader = undefined;
            }
        }
    }

    // Namespace aisquad/ai_squads
    // Params 0, eflags: 0x2 linked
    // Checksum 0xf7785400, Offset: 0x260
    // Size: 0xa
    function getsquadbreadcrumb() {
        return squadbreadcrumb;
    }

    // Namespace aisquad/ai_squads
    // Params 0, eflags: 0x2 linked
    // Checksum 0xcf91a374, Offset: 0x398
    // Size: 0x86
    function think() {
        if (isint(squadleader) && squadleader == 0 || !isdefined(squadleader)) {
            if (squadmembers.size > 0) {
                squadleader = squadmembers[0];
                squadbreadcrumb = squadleader.origin;
            } else {
                return false;
            }
        }
        return true;
    }

    // Namespace aisquad/ai_squads
    // Params 1, eflags: 0x2 linked
    // Checksum 0xc15294c5, Offset: 0x1b8
    // Size: 0x9e
    function addsquadbreadcrumbs(ai) {
        assert(squadleader == ai);
        if (distance2dsquared(squadbreadcrumb, ai.origin) >= 9216) {
            /#
                recordcircle(ai.origin, 4, (0, 0, 1), "<unknown string>", ai);
            #/
            squadbreadcrumb = ai.origin;
        }
    }

    // Namespace aisquad/ai_squads
    // Params 1, eflags: 0x2 linked
    // Checksum 0x5140d50d, Offset: 0x2a8
    // Size: 0x7c
    function addaitosquad(ai) {
        if (!isinarray(squadmembers, ai)) {
            if (ai.archetype == #"robot") {
                ai ai::set_behavior_attribute("move_mode", "squadmember");
            }
            squadmembers[squadmembers.size] = ai;
        }
    }

    // Namespace aisquad/ai_squads
    // Params 0, eflags: 0x2 linked
    // Checksum 0x8932a8e6, Offset: 0x278
    // Size: 0xa
    function getleader() {
        return squadleader;
    }

}

// Namespace aisquads/ai_squads
// Params 0, eflags: 0x5
// Checksum 0x84ab5536, Offset: 0xc8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"ai_squads", &preinit, undefined, undefined, undefined);
}

// Namespace aisquads/ai_squads
// Params 0, eflags: 0x6 linked
// Checksum 0x9a3ee5a5, Offset: 0x110
// Size: 0x6c
function private preinit() {
    level._squads = [];
    actorspawnerarray = getactorspawnerteamarray(#"axis");
    array::run_all(actorspawnerarray, &spawner::add_spawn_function, &squadmemberthink);
}

// Namespace aisquads/ai_squads
// Params 1, eflags: 0x6 linked
// Checksum 0xfcd440c6, Offset: 0x610
// Size: 0x3c
function private createsquad(squadname) {
    level._squads[squadname] = new aisquad();
    return level._squads[squadname];
}

// Namespace aisquads/ai_squads
// Params 1, eflags: 0x6 linked
// Checksum 0x6f1cbe8f, Offset: 0x658
// Size: 0x44
function private removesquad(squadname) {
    if (isdefined(level._squads) && isdefined(level._squads[squadname])) {
        level._squads[squadname] = undefined;
    }
}

// Namespace aisquads/ai_squads
// Params 1, eflags: 0x6 linked
// Checksum 0x90e46b14, Offset: 0x6a8
// Size: 0x1c
function private getsquad(squadname) {
    return level._squads[squadname];
}

// Namespace aisquads/ai_squads
// Params 1, eflags: 0x6 linked
// Checksum 0x2a075094, Offset: 0x6d0
// Size: 0x5c
function private thinksquad(squadname) {
    while (true) {
        if ([[ level._squads[squadname] ]]->think()) {
            wait(0.5);
            continue;
        }
        removesquad(squadname);
        break;
    }
}

// Namespace aisquads/ai_squads
// Params 0, eflags: 0x6 linked
// Checksum 0xe7969a, Offset: 0x738
// Size: 0x60
function private squadmemberdeath() {
    self waittill(#"death");
    if (isdefined(self.squadname) && isdefined(level._squads[self.squadname])) {
        [[ level._squads[self.squadname] ]]->removeaifromsqaud(self);
    }
}

// Namespace aisquads/ai_squads
// Params 0, eflags: 0x6 linked
// Checksum 0xeb0c129c, Offset: 0x7a0
// Size: 0x40e
function private squadmemberthink() {
    self endon(#"death");
    if (!isdefined(self.script_aisquadname)) {
        return;
    }
    wait(0.5);
    self.squadname = self.script_aisquadname;
    if (isdefined(self.squadname)) {
        if (!isdefined(level._squads[self.squadname])) {
            squad = createsquad(self.squadname);
            newsquadcreated = 1;
        } else {
            squad = getsquad(self.squadname);
        }
        [[ squad ]]->addaitosquad(self);
        self thread squadmemberdeath();
        if (is_true(newsquadcreated)) {
            level thread thinksquad(self.squadname);
        }
        while (true) {
            squadleader = [[ level._squads[self.squadname] ]]->getleader();
            if (isdefined(squadleader) && !(isint(squadleader) && squadleader == 0)) {
                if (squadleader == self) {
                    /#
                        recordenttext(self.squadname + "<unknown string>", self, (0, 1, 0), "<unknown string>");
                    #/
                    /#
                        recordenttext(self.squadname + "<unknown string>", self, (0, 1, 0), "<unknown string>");
                    #/
                    /#
                        recordcircle(self.origin, 300, (1, 0.5, 0), "<unknown string>", self);
                    #/
                    if (isdefined(self.enemy)) {
                        self setgoal(self.enemy);
                    }
                    [[ squad ]]->addsquadbreadcrumbs(self);
                } else {
                    /#
                        recordline(self.origin, squadleader.origin, (0, 1, 0), "<unknown string>", self);
                    #/
                    /#
                        recordenttext(self.squadname + "<unknown string>", self, (0, 1, 0), "<unknown string>");
                    #/
                    followposition = [[ squad ]]->getsquadbreadcrumb();
                    followdistsq = distance2dsquared(self.goalpos, followposition);
                    if (isdefined(squadleader.enemy)) {
                        if (!isdefined(self.enemy) || isdefined(self.enemy) && self.enemy != squadleader.enemy) {
                            self setentitytarget(squadleader.enemy, 1);
                        }
                    }
                    if (isdefined(self.goalpos) && followdistsq >= 256) {
                        if (followdistsq >= 22500) {
                            self ai::set_behavior_attribute("sprint", 1);
                        } else {
                            self ai::set_behavior_attribute("sprint", 0);
                        }
                        self setgoal(followposition, 1);
                    }
                }
            }
            wait(1);
        }
    }
}

// Namespace aisquads/ai_squads
// Params 1, eflags: 0x0
// Checksum 0xc936459d, Offset: 0xbb8
// Size: 0xb6
function isfollowingsquadleader(ai) {
    if (ai ai::get_behavior_attribute("move_mode") != "squadmember") {
        return false;
    }
    squadmember = issquadmember(ai);
    currentsquadleader = getsquadleader(ai);
    isaisquadleader = isdefined(currentsquadleader) && currentsquadleader == ai;
    if (squadmember && !isaisquadleader) {
        return true;
    }
    return false;
}

// Namespace aisquads/ai_squads
// Params 1, eflags: 0x2 linked
// Checksum 0x7bef44b1, Offset: 0xc78
// Size: 0x66
function issquadmember(ai) {
    if (isdefined(ai.squadname)) {
        squad = getsquad(ai.squadname);
        if (isdefined(squad)) {
            return isinarray([[ squad ]]->getmembers(), ai);
        }
    }
    return 0;
}

// Namespace aisquads/ai_squads
// Params 1, eflags: 0x0
// Checksum 0xbd9e2338, Offset: 0xce8
// Size: 0x72
function issquadleader(ai) {
    if (isdefined(ai.squadname)) {
        squad = getsquad(ai.squadname);
        if (isdefined(squad)) {
            squadleader = [[ squad ]]->getleader();
            return (isdefined(squadleader) && squadleader == ai);
        }
    }
    return false;
}

// Namespace aisquads/ai_squads
// Params 1, eflags: 0x2 linked
// Checksum 0xd1be2f8, Offset: 0xd68
// Size: 0x56
function getsquadleader(ai) {
    if (isdefined(ai.squadname)) {
        squad = getsquad(ai.squadname);
        if (isdefined(squad)) {
            return [[ squad ]]->getleader();
        }
    }
    return undefined;
}

