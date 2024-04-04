// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\callbacks_shared.gsc;

#namespace globallogic_scriptmover;

// Namespace globallogic_scriptmover/globallogic_scriptmover
// Params 17, eflags: 0x2 linked
// Checksum 0x65c1a878, Offset: 0x88
// Size: 0x24c
function function_8c7ec52f(einflictor, eattacker, idamage, idflags, smeansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, vdamageorigin, psoffsettime, iboneindex, imodelindex, spartname, isurfacetype, vsurfacenormal) {
    if (isdefined(self.var_86a21346)) {
        idamage = self [[ self.var_86a21346 ]](einflictor, eattacker, idamage, idflags, smeansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, psoffsettime, iboneindex, imodelindex);
    } else if (isdefined(level.var_86a21346)) {
        idamage = self [[ level.var_86a21346 ]](einflictor, eattacker, idamage, idflags, smeansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, psoffsettime, iboneindex, imodelindex);
    }
    params = spawnstruct();
    params.einflictor = einflictor;
    params.eattacker = eattacker;
    params.idamage = idamage;
    params.idflags = idflags;
    params.smeansofdeath = smeansofdeath;
    params.weapon = weapon;
    params.var_fd90b0bb = var_fd90b0bb;
    params.vpoint = vpoint;
    params.vdir = vdir;
    params.shitloc = shitloc;
    params.vdamageorigin = vdamageorigin;
    params.psoffsettime = psoffsettime;
    params.iboneindex = iboneindex;
    params.imodelindex = imodelindex;
    params.spartname = spartname;
    params.isurfacetype = isurfacetype;
    params.vsurfacenormal = vsurfacenormal;
    self callback::callback(#"hash_2e68909d4e4ed889", params);
    self function_f7f9c3eb(einflictor, eattacker, idamage, idflags, smeansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, vdamageorigin, psoffsettime, iboneindex, imodelindex, spartname, isurfacetype, vsurfacenormal);
}

