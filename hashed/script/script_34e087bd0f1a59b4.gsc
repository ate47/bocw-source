// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\snd_utility.csc;
#using script_1cd690a97dfca36e;
#using scripts\cp_common\snd.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\vehicle_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\fx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_19249ec2;

// Namespace namespace_19249ec2/namespace_19249ec2
// Params 0, eflags: 0x5
// Checksum 0x38c7d138, Offset: 0xd0
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_1f9b35320bb8d58a", &_preload, &function_fa076c68, undefined, undefined);
}

// Namespace namespace_19249ec2/namespace_19249ec2
// Params 0, eflags: 0x6 linked
// Checksum 0x4d58faac, Offset: 0x128
// Size: 0x34
function private _preload() {
    if (!isdefined(level._fx)) {
        level._fx = {};
    }
    function_bc948200();
}

// Namespace namespace_19249ec2/namespace_19249ec2
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x168
// Size: 0x4
function private function_fa076c68() {
    
}

// Namespace namespace_19249ec2/namespace_19249ec2
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x178
// Size: 0x4
function private function_bc948200() {
    
}

