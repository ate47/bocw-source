// Atian COD Tools GSC CW decompiler test
#using script_2c8f0cd222d353a3;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace weapons;

// Namespace weapons/weapons
// Params 0, eflags: 0x2 linked
// Checksum 0xe119fcef, Offset: 0xe0
// Size: 0xbc
function init_shared() {
    level.weaponnone = getweapon(#"none");
    clientfield::register_clientuimodel("hudItems.pickupHintWeaponIndex", #"hash_6f4b11a0bee9b73d", #"pickuphintweaponindex", 1, 10, "int", &function_160c9d99, 0, 0);
    namespace_daf1661f::init();
    callback::on_localclient_connect(&on_localclient_connect);
}

// Namespace weapons/weapons
// Params 1, eflags: 0x6 linked
// Checksum 0x3d1da818, Offset: 0x1a8
// Size: 0xb4
function private on_localclient_connect(localclientnum) {
    if (!isdefined(level.var_d46a9367)) {
        level.var_d46a9367 = [];
    }
    objid = util::getnextobjid(localclientnum);
    objective_add(localclientnum, objid, "invisible", #"weapon_pickup");
    objective_setprogress(localclientnum, objid, 0);
    objective_setstate(localclientnum, objid, "invisible");
    level.var_d46a9367[localclientnum] = objid;
}

// Namespace weapons/weapons
// Params 7, eflags: 0x2 linked
// Checksum 0x9c31b644, Offset: 0x268
// Size: 0x124
function function_160c9d99(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(level.var_d46a9367)) {
        level.var_d46a9367 = [];
    }
    objid = level.var_d46a9367[fieldname];
    if (!isdefined(objid)) {
        return;
    }
    if (bwastimejump) {
        var_9b882d22 = function_ee839fac(fieldname);
        if (isdefined(var_9b882d22)) {
            objective_setposition(fieldname, objid, var_9b882d22.origin);
        }
        objective_setstate(fieldname, objid, "active");
        objective_setgamemodeflags(fieldname, objid, 0);
        return;
    }
    objective_setstate(fieldname, objid, "invisible");
}

