#using script_18910f59cc847b42;
#using script_30c7fb449869910;
#using script_3314b730521b9666;
#using script_38635d174016f682;
#using script_42cbbdcd1e160063;
#using script_64e5d3ad71ce8140;
#using script_67049b48b589d81;
#using script_6b71c9befed901f2;
#using script_71603a58e2da0698;
#using script_75c3996cce8959f7;
#using script_76abb7986de59601;
#using script_77163d5a569e2071;
#using script_771f5bff431d8d57;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;

#namespace namespace_41f5b853;

// Namespace namespace_41f5b853/namespace_41f5b853
// Params 0, eflags: 0x0
// Checksum 0x4730bbb2, Offset: 0x140
// Size: 0x4c
function init()
{
    clientfield::register( "scriptmover", "world_loot_type", 1, 8, "int", &function_6def98d8, 0, 0 );
}

// Namespace namespace_41f5b853/namespace_41f5b853
// Params 7, eflags: 0x4
// Checksum 0x57088c26, Offset: 0x198
// Size: 0x72
function private function_6def98d8( localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    self endon( #"death" );
    self util::waittill_dobj( fieldname );
    self.loottype = bwastimejump;
}

