// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\systems\planner_blackboard.gsc;

#namespace planner;

// Namespace planner/planner
// Params 2, eflags: 0x6 linked
// Checksum 0x4671e8c0, Offset: 0xe0
// Size: 0x11c
function private _blackboardsapplyundostate(planner, state) {
    assert(isstruct(planner));
    assert(isarray(planner.blackboards));
    foreach (key, blackboard in planner.blackboards) {
        if (isdefined(state[key])) {
            plannerblackboard::undo(blackboard, state[key]);
            continue;
        }
        planner.blackboards[key] = undefined;
    }
}

// Namespace planner/planner
// Params 1, eflags: 0x6 linked
// Checksum 0x1c1eddf3, Offset: 0x208
// Size: 0x10a
function private _blackboardscalculateundostate(planner) {
    assert(isstruct(planner));
    assert(isarray(planner.blackboards));
    state = [];
    foreach (key, blackboard in planner.blackboards) {
        state[key] = plannerblackboard::getundostacksize(blackboard) - 1;
    }
    return state;
}

// Namespace planner/planner
// Params 1, eflags: 0x6 linked
// Checksum 0x416cbc5e, Offset: 0x320
// Size: 0xe8
function private _blackboardsreadmode(planner) {
    assert(isstruct(planner));
    assert(isarray(planner.blackboards));
    foreach (blackboard in planner.blackboards) {
        plannerblackboard::setreadmode(blackboard);
    }
}

// Namespace planner/planner
// Params 1, eflags: 0x6 linked
// Checksum 0x1859c474, Offset: 0x410
// Size: 0xe8
function private _blackboardsreadwritemode(planner) {
    assert(isstruct(planner));
    assert(isarray(planner.blackboards));
    foreach (blackboard in planner.blackboards) {
        plannerblackboard::setreadwritemode(blackboard);
    }
}

// Namespace planner/planner
// Params 1, eflags: 0x6 linked
// Checksum 0x51618099, Offset: 0x500
// Size: 0x50
function private _initializeplannerfunctions(functype) {
    if (!isdefined(level._plannerscriptfunctions)) {
        level._plannerscriptfunctions = [];
    }
    if (!isdefined(level._plannerscriptfunctions[functype])) {
        level._plannerscriptfunctions[functype] = [];
    }
}

// Namespace planner/planner
// Params 1, eflags: 0x6 linked
// Checksum 0xc9dba70d, Offset: 0x558
// Size: 0x1e
function private _plancalculateplanindex(planner) {
    return planner.plan.size - 1;
}

// Namespace planner/planner
// Params 2, eflags: 0x6 linked
// Checksum 0x35f15c77, Offset: 0x580
// Size: 0x280
function private _planexpandaction(planner, action) {
    planner.api = action.api;
    pixbeginevent(action.api);
    aiprofile_beginentry(action.api);
    assert(isstruct(planner));
    assert(isstruct(action));
    assert(action.type == "<unknown string>");
    assert(isarray(planner.plan));
    actionfuncs = plannerutility::getplanneractionfunctions(action.api);
    actioninfo = spawnstruct();
    actioninfo.name = action.api;
    if (isdefined(actionfuncs[#"parameterize"])) {
        _blackboardsreadwritemode(planner);
        actioninfo.params = [[ actionfuncs[#"parameterize"] ]](planner, action.constants);
        assert(isstruct(actioninfo.params), "<unknown string>" + action.api + "<unknown string>");
        _blackboardsreadmode(planner);
    } else {
        actioninfo.params = spawnstruct();
    }
    planner.plan[planner.plan.size] = actioninfo;
    planner.api = undefined;
    aiprofile_endentry();
    pixendevent();
    return true;
}

// Namespace planner/planner
// Params 2, eflags: 0x6 linked
// Checksum 0x4ffcf083, Offset: 0x808
// Size: 0x170
function private _planexpandpostcondition(planner, postcondition) {
    planner.api = postcondition.api;
    pixbeginevent(postcondition.api);
    aiprofile_beginentry(postcondition.api);
    assert(isstruct(planner));
    assert(isstruct(postcondition));
    assert(postcondition.type == "<unknown string>");
    _blackboardsreadwritemode(planner);
    postconditionfunc = plannerutility::getplannerapifunction(postcondition.api);
    [[ postconditionfunc ]](planner, postcondition.constants);
    _blackboardsreadmode(planner);
    planner.api = undefined;
    aiprofile_endentry();
    pixendevent();
    return true;
}

// Namespace planner/planner
// Params 2, eflags: 0x6 linked
// Checksum 0xc7433e3e, Offset: 0x980
// Size: 0x160
function private _planexpandprecondition(planner, precondition) {
    planner.api = precondition.api;
    pixbeginevent(precondition.api);
    aiprofile_beginentry(precondition.api);
    assert(isstruct(planner));
    assert(isstruct(precondition));
    assert(precondition.type == "<unknown string>");
    _blackboardsreadmode(planner);
    preconditionfunc = plannerutility::getplannerapifunction(precondition.api);
    result = [[ preconditionfunc ]](planner, precondition.constants);
    planner.api = undefined;
    aiprofile_endentry();
    pixendevent();
    return result;
}

// Namespace planner/planner
// Params 3, eflags: 0x6 linked
// Checksum 0xcc0f854b, Offset: 0xae8
// Size: 0x60
function private _planfindnextsibling(planner, parentnodeentry, currentchildindex) {
    assert(isstruct(planner));
    return parentnodeentry.node.children[currentchildindex + 1];
}

// Namespace planner/planner
// Params 1, eflags: 0x6 linked
// Checksum 0x5e3e4ce4, Offset: 0xb50
// Size: 0x44
function private _planstackhasnodes(planner) {
    assert(isstruct(planner));
    return planner.nodestack.size > 0;
}

// Namespace planner/planner
// Params 1, eflags: 0x6 linked
// Checksum 0x2fb1061d, Offset: 0xba0
// Size: 0x88
function private _planstackpeeknode(planner) {
    assert(isstruct(planner));
    assert(planner.nodestack.size > 0);
    nodeentry = planner.nodestack[planner.nodestack.size - 1];
    return nodeentry;
}

// Namespace planner/planner
// Params 1, eflags: 0x6 linked
// Checksum 0x185295db, Offset: 0xc30
// Size: 0xa4
function private _planstackpopnode(planner) {
    assert(isstruct(planner));
    assert(planner.nodestack.size > 0);
    nodeentry = planner.nodestack[planner.nodestack.size - 1];
    planner.nodestack[planner.nodestack.size - 1] = undefined;
    return nodeentry;
}

// Namespace planner/planner
// Params 3, eflags: 0x6 linked
// Checksum 0x769ee01e, Offset: 0xce0
// Size: 0x10c
function private _planstackpushnode(planner, node, childindex = undefined) {
    assert(isstruct(planner));
    assert(isstruct(node));
    nodeentry = spawnstruct();
    nodeentry.childindex = isdefined(childindex) ? childindex : -1;
    nodeentry.node = node;
    nodeentry.planindex = _plancalculateplanindex(planner);
    nodeentry.undostate = _blackboardscalculateundostate(planner);
    planner.nodestack[planner.nodestack.size] = nodeentry;
}

// Namespace planner/planner
// Params 3, eflags: 0x6 linked
// Checksum 0xb45865cd, Offset: 0xdf8
// Size: 0x272
function private _planpushvalidparent(planner, childnodeentry, result) {
    while (_planstackhasnodes(planner)) {
        parentnodeentry = _planstackpeeknode(planner);
        assert(isdefined(parentnodeentry));
        switch (parentnodeentry.node.type) {
        case #"sequence":
            if (result) {
                nextchildnode = _planfindnextsibling(planner, parentnodeentry, childnodeentry.childindex);
                if (isdefined(nextchildnode)) {
                    _planstackpushnode(planner, nextchildnode, childnodeentry.childindex + 1);
                    return 1;
                }
            } else {
                _undoplan(planner, parentnodeentry.planindex);
                _blackboardsapplyundostate(planner, parentnodeentry.undostate);
            }
            _planstackpopnode(planner);
            break;
        case #"selector":
        case #"planner":
            if (!result) {
                _undoplan(planner, parentnodeentry.planindex);
                _blackboardsapplyundostate(planner, parentnodeentry.undostate);
                nextchildnode = _planfindnextsibling(planner, parentnodeentry, childnodeentry.childindex);
                if (isdefined(nextchildnode)) {
                    _planstackpushnode(planner, nextchildnode, childnodeentry.childindex + 1);
                    return 1;
                }
            }
            _planstackpopnode(planner);
            break;
        default:
            _planstackpopnode(planner);
            break;
        }
        childnodeentry = parentnodeentry;
    }
    return result;
}

// Namespace planner/planner
// Params 1, eflags: 0x6 linked
// Checksum 0xd9d3c7b, Offset: 0x1078
// Size: 0x23a
function private _planprocessstack(planner) {
    assert(isstruct(planner));
    result = 1;
    waitedinthrottle = 0;
    while (_planstackhasnodes(planner)) {
        planner.planstarttime = getrealtime();
        nodeentry = _planstackpeeknode(planner);
        switch (nodeentry.node.type) {
        case #"action":
            result = _planexpandaction(planner, nodeentry.node);
            break;
        case #"postcondition":
            result = _planexpandpostcondition(planner, nodeentry.node);
            break;
        case #"precondition":
            result = _planexpandprecondition(planner, nodeentry.node);
            break;
        case #"selector":
        case #"sequence":
        case #"planner":
            _planstackpushnode(planner, nodeentry.node.children[0], 0);
            continue;
        default:
            assert(0, "<unknown string>" + nodeentry.node.type + "<unknown string>");
            break;
        }
        result = _planpushvalidparent(planner, nodeentry, result);
    }
}

// Namespace planner/planner
// Params 2, eflags: 0x6 linked
// Checksum 0xd5167be4, Offset: 0x12c0
// Size: 0xe0
function private _undoplan(planner, planindex) {
    assert(isstruct(planner));
    assert(isarray(planner.plan));
    assert(planindex < planner.plan.size);
    for (index = planner.plan.size - 1; index > planindex && index >= 0; index--) {
        planner.plan[index] = undefined;
    }
}

// Namespace planner/planner
// Params 3, eflags: 0x0
// Checksum 0xea919706, Offset: 0x13a8
// Size: 0x58
function addaction(parent, actionname, constants) {
    node = createaction(actionname, constants);
    addchild(parent, node);
    return node;
}

// Namespace planner/planner
// Params 2, eflags: 0x2 linked
// Checksum 0x2eac0d2a, Offset: 0x1408
// Size: 0xac
function addchild(parent, node) {
    assert(isstruct(parent));
    assert(isstruct(node));
    assert(isarray(parent.children));
    parent.children[parent.children.size] = node;
}

// Namespace planner/planner
// Params 2, eflags: 0x0
// Checksum 0xa55f629b, Offset: 0x14c0
// Size: 0x2c
function addgoto(parent, gotonode) {
    addchild(parent, gotonode);
}

// Namespace planner/planner
// Params 1, eflags: 0x0
// Checksum 0x342ead68, Offset: 0x14f8
// Size: 0x40
function addselector(parent) {
    node = createselector();
    addchild(parent, node);
    return node;
}

// Namespace planner/planner
// Params 1, eflags: 0x0
// Checksum 0xb3d021c7, Offset: 0x1540
// Size: 0x40
function addsequence(parent) {
    node = createsequence();
    addchild(parent, node);
    return node;
}

// Namespace planner/planner
// Params 3, eflags: 0x0
// Checksum 0x345fcb95, Offset: 0x1588
// Size: 0x58
function addpostcondition(parent, functionname, constants) {
    node = createpostcondition(functionname, constants);
    addchild(parent, node);
    return node;
}

// Namespace planner/planner
// Params 3, eflags: 0x0
// Checksum 0x7980ef41, Offset: 0x15e8
// Size: 0x58
function addprecondition(parent, functionname, constants) {
    node = createprecondition(functionname, constants);
    addchild(parent, node);
    return node;
}

// Namespace planner/planner
// Params 1, eflags: 0x0
// Checksum 0xb05fab50, Offset: 0x1648
// Size: 0x42
function cancel(planner) {
    assert(isstruct(planner));
    planner.cancel = 1;
}

// Namespace planner/planner
// Params 2, eflags: 0x2 linked
// Checksum 0xa16dca72, Offset: 0x1698
// Size: 0xba
function createaction(actionname, constants) {
    assert(!isdefined(constants) || isarray(constants));
    assert(ishash(actionname));
    node = spawnstruct();
    node.type = "action";
    node.api = actionname;
    node.constants = constants;
    return node;
}

// Namespace planner/planner
// Params 1, eflags: 0x2 linked
// Checksum 0xc89dfdd7, Offset: 0x1760
// Size: 0xbc
function createplanner(name) {
    assert(ishash(name));
    planner = spawnstruct();
    planner.cancel = 0;
    planner.children = [];
    planner.name = name;
    planner.planning = 0;
    planner.type = "planner";
    planner.blackboards = [];
    planner.blackboards[0] = plannerblackboard::create([]);
    return planner;
}

// Namespace planner/planner
// Params 2, eflags: 0x2 linked
// Checksum 0xaeaa4476, Offset: 0x1828
// Size: 0x11a
function createpostcondition(functionname, constants) {
    assert(ishash(functionname));
    assert(!isdefined(constants) || isarray(constants));
    assert(isfunctionptr(plannerutility::getplannerapifunction(functionname)), "<unknown string>" + function_9e72a96(functionname) + "<unknown string>");
    node = spawnstruct();
    node.type = "postcondition";
    node.api = functionname;
    node.constants = constants;
    return node;
}

// Namespace planner/planner
// Params 2, eflags: 0x2 linked
// Checksum 0x4c436c77, Offset: 0x1950
// Size: 0x11a
function createprecondition(functionname, constants) {
    assert(ishash(functionname));
    assert(!isdefined(constants) || isarray(constants));
    assert(isfunctionptr(plannerutility::getplannerapifunction(functionname)), "<unknown string>" + function_9e72a96(functionname) + "<unknown string>");
    node = spawnstruct();
    node.type = "precondition";
    node.api = functionname;
    node.constants = constants;
    return node;
}

// Namespace planner/planner
// Params 0, eflags: 0x2 linked
// Checksum 0xd8aa8d04, Offset: 0x1a78
// Size: 0x3e
function createselector() {
    node = spawnstruct();
    node.children = [];
    node.type = "selector";
    return node;
}

// Namespace planner/planner
// Params 0, eflags: 0x2 linked
// Checksum 0x248db1d1, Offset: 0x1ac0
// Size: 0x3e
function createsequence() {
    node = spawnstruct();
    node.children = [];
    node.type = "sequence";
    return node;
}

// Namespace planner/planner
// Params 1, eflags: 0x0
// Checksum 0xa9a45ab5, Offset: 0x1b08
// Size: 0xd0
function createsubblackboard(planner) {
    assert(isstruct(planner));
    assert(isarray(planner.blackboards));
    newblackboardindex = planner.blackboards.size;
    defaultvalues = [];
    planner.blackboards[newblackboardindex] = plannerblackboard::create(defaultvalues);
    plannerblackboard::setreadwritemode(planner.blackboards[newblackboardindex]);
    return newblackboardindex;
}

// Namespace planner/planner
// Params 3, eflags: 0x0
// Checksum 0x2947245, Offset: 0x1be0
// Size: 0x11a
function getblackboardattribute(planner, attribute, blackboardindex = 0) {
    assert(isstruct(planner));
    assert(isstring(attribute) || ishash(attribute));
    assert(isarray(planner.blackboards));
    assert(isstruct(planner.blackboards[blackboardindex]));
    return plannerblackboard::getattribute(planner.blackboards[blackboardindex], attribute);
}

// Namespace planner/planner
// Params 2, eflags: 0x0
// Checksum 0xd2087329, Offset: 0x1d08
// Size: 0xb6
function getblackboardvalues(planner, blackboardindex) {
    assert(isstruct(planner));
    assert(isarray(planner.blackboards));
    assert(isstruct(planner.blackboards[blackboardindex]));
    return planner.blackboards[blackboardindex].values;
}

// Namespace planner/planner
// Params 2, eflags: 0x0
// Checksum 0x29da32b7, Offset: 0x1dc8
// Size: 0xa8
function getsubblackboard(planner, blackboardindex) {
    assert(isstruct(planner));
    assert(isarray(planner.blackboards));
    assert(blackboardindex > 0 && blackboardindex < planner.blackboards.size);
    return planner.blackboards[blackboardindex];
}

// Namespace planner/planner
// Params 5, eflags: 0x0
// Checksum 0xeefd03bc, Offset: 0x1e78
// Size: 0x276
function plan(planner, blackboardvalues, maxframetime = 3, starttime = undefined, var_302e19d3 = 0) {
    pixbeginevent(planner.name);
    aiprofile_beginentry(planner.name);
    assert(isstruct(planner));
    assert(isarray(blackboardvalues));
    planner.cancel = 0;
    planner.maxframetime = maxframetime;
    planner.plan = [];
    planner.planning = 1;
    planner.planstarttime = starttime;
    if (!isdefined(planner.planstarttime)) {
        planner.planstarttime = getrealtime();
    }
    if (!var_302e19d3) {
        planner.blackboards = [];
        planner.blackboards[0] = plannerblackboard::create(blackboardvalues);
    }
    planner.nodestack = [];
    _planstackpushnode(planner, planner);
    _planprocessstack(planner);
    planner.nodestack = [];
    planner.planning = 0;
    foreach (subblackboard in planner.blackboards) {
        plannerblackboard::clearundostack(subblackboard);
    }
    aiprofile_endentry();
    pixendevent();
    return planner.plan;
}

/#

    // Namespace planner/planner
    // Params 2, eflags: 0x0
    // Checksum 0x1692c516, Offset: 0x20f8
    // Size: 0xdc
    function printplanner(planner, filename) {
        assert(isstruct(planner));
        file = openfile(filename, "<unknown string>");
        printid = randomint(2147483647);
        _printplannernode(file, planner, 0, printid);
        _printclearprintid(planner);
        closefile(file);
    }

    // Namespace planner/planner
    // Params 1, eflags: 0x4
    // Checksum 0x41dd3b30, Offset: 0x21e0
    // Size: 0x8c
    function private _printclearprintid(plannernode) {
        plannernode.printid = undefined;
        if (isdefined(plannernode.children)) {
            for (index = 0; index < plannernode.children.size; index++) {
                if (isdefined(plannernode.children[index].printid)) {
                    _printclearprintid(plannernode.children[index]);
                }
            }
        }
    }

    // Namespace planner/planner
    // Params 1, eflags: 0x4
    // Checksum 0x87d7b86a, Offset: 0x2278
    // Size: 0x24e
    function private function_3af5bab0(node) {
        text = node.type;
        if (isdefined(node.name)) {
            text += "<unknown string>" + node.name;
        }
        if (isdefined(node.api)) {
            text += "<unknown string>" + node.api;
        }
        if (isdefined(node.constants)) {
            text += "<unknown string>";
            first = 1;
            foreach (key, value in node.constants) {
                if (!first) {
                    text += "<unknown string>";
                }
                if (isint(value) || isfloat(value)) {
                    text += key + "<unknown string>" + value;
                } else if (isstring(value)) {
                    text += key + "<unknown string>" + value + "<unknown string>";
                } else if (isarray(value)) {
                    text += key + "<unknown string>";
                } else if (!isdefined(value)) {
                    text += key + "<unknown string>";
                }
                first = 0;
            }
        }
        if (isdefined(node.name) || isdefined(node.api)) {
            text += "<unknown string>";
        }
        return text;
    }

    // Namespace planner/planner
    // Params 4, eflags: 0x4
    // Checksum 0x27d0ec12, Offset: 0x24d0
    // Size: 0x1a4
    function private _printplannernode(file, plannernode, indent, printid) {
        assert(isstruct(plannernode));
        indentspace = "<unknown string>";
        for (index = 0; index < indent; index++) {
            indentspace += "<unknown string>";
        }
        text = "<unknown string>";
        if (plannernode.printid === printid) {
            text += "<unknown string>";
            text += function_3af5bab0(plannernode);
            fprintln(file, indentspace + text);
            return;
        }
        plannernode.printid = printid;
        text = function_3af5bab0(plannernode);
        fprintln(file, indentspace + text);
        if (isdefined(plannernode.children)) {
            for (index = 0; index < plannernode.children.size; index++) {
                _printplannernode(file, plannernode.children[index], indent + 1, printid);
            }
        }
    }

#/

// Namespace planner/planner
// Params 5, eflags: 0x0
// Checksum 0x826b3a66, Offset: 0x2680
// Size: 0x144
function setblackboardattribute(planner, attribute, value, blackboardindex = 0, readonly = 0) {
    assert(isstruct(planner));
    assert(isstring(attribute) || ishash(attribute));
    assert(isarray(planner.blackboards));
    assert(isstruct(planner.blackboards[blackboardindex]));
    plannerblackboard::setattribute(planner.blackboards[blackboardindex], attribute, value, readonly);
}

// Namespace planner/planner
// Params 1, eflags: 0x0
// Checksum 0x5f1163f4, Offset: 0x27d0
// Size: 0x76
function subblackboardcount(planner) {
    assert(isstruct(planner));
    assert(isarray(planner.blackboards));
    return planner.blackboards.size - 1;
}

#namespace plannerutility;

// Namespace plannerutility/planner
// Params 1, eflags: 0x0
// Checksum 0x8835333d, Offset: 0x2850
// Size: 0x45c
function createplannerfromasset(assetname) {
    htnasset = gethierarchicaltasknetwork(assetname);
    if (isdefined(htnasset) && htnasset.nodes.size > 0) {
        plannernodes = [];
        if (htnasset.nodes.size >= 1) {
            node = htnasset.nodes[0];
            plannernodes[0] = planner::createplanner(node.name);
        }
        for (nodeindex = 1; nodeindex < htnasset.nodes.size; nodeindex++) {
            node = htnasset.nodes[nodeindex];
            switch (node.type) {
            case #"action":
                plannernodes[nodeindex] = planner::createaction(node.name, node.constants);
                break;
            case #"postcondition":
                plannernodes[nodeindex] = planner::createpostcondition(node.name, node.constants);
                break;
            case #"precondition":
                plannernodes[nodeindex] = planner::createprecondition(node.name, node.constants);
                break;
            case #"planner":
                plannernodes[nodeindex] = planner::createplanner(node.name);
                break;
            case #"selector":
                plannernodes[nodeindex] = planner::createselector();
                break;
            case #"sequence":
                plannernodes[nodeindex] = planner::createsequence();
                break;
            case #"goto":
                plannernodes[nodeindex] = spawnstruct();
                break;
            }
        }
        for (nodeindex = 0; nodeindex < htnasset.nodes.size; nodeindex++) {
            parentnode = plannernodes[nodeindex];
            htnnode = htnasset.nodes[nodeindex];
            if (!isdefined(htnnode.childindexes) || htnnode.type == #"goto") {
                continue;
            }
            for (childindex = 0; childindex < htnnode.childindexes.size; childindex++) {
                assert(htnnode.childindexes[childindex] < plannernodes.size);
                childnum = htnnode.childindexes[childindex];
                childnode = plannernodes[childnum];
                for (htnchildnode = htnasset.nodes[childnum]; htnchildnode.type === #"goto"; htnchildnode = htnasset.nodes[childnum]) {
                    assert(isdefined(htnchildnode.childindexes));
                    assert(htnchildnode.childindexes.size == 1);
                    childnum = htnchildnode.childindexes[0];
                    childnode = plannernodes[childnum];
                }
                planner::addchild(parentnode, childnode);
            }
        }
        return plannernodes[0];
    }
}

// Namespace plannerutility/planner
// Params 1, eflags: 0x2 linked
// Checksum 0xff1e9835, Offset: 0x2cb8
// Size: 0xbe
function getplannerapifunction(functionname) {
    assert(ishash(functionname) && functionname != "<unknown string>", "<unknown string>");
    assert(isdefined(level._plannerscriptfunctions[#"api"][functionname]), "<unknown string>" + function_9e72a96(functionname) + "<unknown string>");
    return level._plannerscriptfunctions[#"api"][functionname];
}

// Namespace plannerutility/planner
// Params 1, eflags: 0x2 linked
// Checksum 0xe4c34250, Offset: 0x2d80
// Size: 0xbe
function getplanneractionfunctions(actionname) {
    assert(ishash(actionname) && actionname != "<unknown string>", "<unknown string>");
    assert(isdefined(level._plannerscriptfunctions[#"action"][actionname]), "<unknown string>" + function_9e72a96(actionname) + "<unknown string>");
    return level._plannerscriptfunctions[#"action"][actionname];
}

// Namespace plannerutility/planner
// Params 2, eflags: 0x0
// Checksum 0xbb85df0f, Offset: 0x2e48
// Size: 0x12e
function registerplannerapi(functionname, functionptr) {
    assert(ishash(functionname) && functionname != "<unknown string>", "<unknown string>");
    assert(isfunctionptr(functionptr), "<unknown string>" + function_9e72a96(functionname) + "<unknown string>");
    planner::_initializeplannerfunctions(#"api");
    assert(!isdefined(level._plannerscriptfunctions[#"api"][functionname]), "<unknown string>" + functionname + "<unknown string>");
    level._plannerscriptfunctions[#"api"][functionname] = functionptr;
}

// Namespace plannerutility/planner
// Params 5, eflags: 0x0
// Checksum 0x5db4f242, Offset: 0x2f80
// Size: 0x220
function registerplanneraction(actionname, paramfuncptr, initializefuncptr, updatefuncptr, terminatefuncptr) {
    assert(ishash(actionname) && actionname != "<unknown string>", "<unknown string>");
    planner::_initializeplannerfunctions("Action");
    assert(!isdefined(level._plannerscriptfunctions[#"action"][actionname]), "<unknown string>" + function_9e72a96(actionname) + "<unknown string>");
    level._plannerscriptfunctions[#"action"][actionname] = [];
    if (isfunctionptr(paramfuncptr)) {
        level._plannerscriptfunctions[#"action"][actionname][#"parameterize"] = paramfuncptr;
    }
    if (isfunctionptr(initializefuncptr)) {
        level._plannerscriptfunctions[#"action"][actionname][#"initialize"] = initializefuncptr;
    }
    if (isfunctionptr(updatefuncptr)) {
        level._plannerscriptfunctions[#"action"][actionname][#"update"] = updatefuncptr;
    }
    if (isfunctionptr(terminatefuncptr)) {
        level._plannerscriptfunctions[#"action"][actionname][#"terminate"] = terminatefuncptr;
    }
}

