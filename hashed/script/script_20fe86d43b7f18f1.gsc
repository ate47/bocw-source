// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace namespace_14ee8104;

// Namespace namespace_14ee8104/namespace_14ee8104
// Params 1, eflags: 0x2 linked
// Checksum 0xc017a4d, Offset: 0x230
// Size: 0x2d4
function function_54d0d2d1(localclientnum) {
    if (isdefined(self.var_553a42c)) {
        return;
    }
    if (!isdefined(self) || !isentity(self)) {
        return;
    }
    self.var_553a42c = [];
    zombie = self function_b439ef43(localclientnum, #"hash_5615713147132e0a", "tag_zom1_LE", "ai_t9_zm_hulkingsum_attached_zombie_01");
    array::add(self.var_553a42c, zombie);
    zombie = self function_b439ef43(localclientnum, #"hash_5615703147132c57", "tag_zom2_LE", "ai_t9_zm_hulkingsum_attached_zombie_02");
    array::add(self.var_553a42c, zombie);
    zombie = self function_b439ef43(localclientnum, #"hash_56156f3147132aa4", "tag_zom3_LE", "ai_t9_zm_hulkingsum_attached_zombie_03");
    array::add(self.var_553a42c, zombie);
    zombie = self function_b439ef43(localclientnum, #"hash_5615713147132e0a", "tag_zom1_RI", "ai_t9_zm_hulkingsum_attached_zombie_04");
    array::add(self.var_553a42c, zombie);
    zombie = self function_b439ef43(localclientnum, #"hash_5615703147132c57", "tag_zom2_RI", "ai_t9_zm_hulkingsum_attached_zombie_05");
    array::add(self.var_553a42c, zombie);
    zombie = self function_b439ef43(localclientnum, #"hash_56156f3147132aa4", "tag_zom3_RI", "ai_t9_zm_hulkingsum_attached_zombie_06");
    array::add(self.var_553a42c, zombie);
    zombie = self function_b439ef43(localclientnum, #"hash_56156e31471328f1", "tag_zom4_RI", "ai_t9_zm_hulkingsum_attached_zombie_07");
    array::add(self.var_553a42c, zombie);
    self thread function_65300f49();
}

// Namespace namespace_14ee8104/namespace_14ee8104
// Params 4, eflags: 0x6 linked
// Checksum 0xac51966f, Offset: 0x510
// Size: 0xf8
function private function_b439ef43(localclientnum, model, tag, animname) {
    tag_origin = self gettagorigin(tag);
    tag_angles = self gettagangles(tag);
    zombie = util::spawn_model(localclientnum, model, tag_origin, tag_angles);
    zombie linkto(self, tag);
    zombie useanimtree("zm_ai_hulk");
    zombie setanim(animname, 1, 0, 1);
    return zombie;
}

// Namespace namespace_14ee8104/namespace_14ee8104
// Params 0, eflags: 0x6 linked
// Checksum 0xd3a6267c, Offset: 0x610
// Size: 0xe2
function private function_65300f49() {
    level endon(#"end_game");
    self waittill(#"death");
    var_553a42c = self.var_553a42c;
    foreach (zombie in var_553a42c) {
        if (isdefined(zombie)) {
            zombie delete();
        }
    }
    if (isdefined(self)) {
        self.var_553a42c = undefined;
    }
}

