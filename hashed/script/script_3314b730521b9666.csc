#using script_11ba8be6bc92cc93;
#using script_128acb45166cfa6a;
#using script_18910f59cc847b42;
#using script_1c91b680ee44e52f;
#using script_1ef7d1474227776b;
#using script_30c7fb449869910;
#using script_3314b730521b9666;
#using script_360361c04e5597fb;
#using script_38635d174016f682;
#using script_3e08d2cf8647ff17;
#using script_418f3893cc11fe9f;
#using script_42cbbdcd1e160063;
#using script_5063c0f0fd4214a0;
#using script_522f0cde7ae380a4;
#using script_52789a07d5e5f979;
#using script_576535ad6bcfc329;
#using script_59459072fead1eb4;
#using script_6126d188b0a04d94;
#using script_64e5d3ad71ce8140;
#using script_66fce716b8bb2133;
#using script_67049b48b589d81;
#using script_68c7e01d9c5ad5fd;
#using script_6b71c9befed901f2;
#using script_6d9a320bbc1fee93;
#using script_71603a58e2da0698;
#using script_72e737e284fe1703;
#using script_755843ebfd5af306;
#using script_75c3996cce8959f7;
#using script_76abb7986de59601;
#using script_77163d5a569e2071;
#using script_771f5bff431d8d57;
#using scripts\core_common\array_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\math_shared;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\spawning_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;

#namespace namespace_250e9486;

// Namespace namespace_250e9486/namespace_250e9486
// Params 0, eflags: 0x0
// Checksum 0x7e3290d9, Offset: 0x1f8
// Size: 0x1c4
function init()
{
    function_32d5e898();
    namespace_81522b3c::init();
    namespace_df4fbf0::init();
    namespace_be2ae534::init();
    namespace_2e61cc4b::init();
    namespace_f6712ec9::init();
    namespace_514c8ebc::init();
    namespace_a204c0f4::init();
    namespace_a0fa2b5::init();
    namespace_d1abdcb5::init();
    namespace_58e19d6::init();
    namespace_b5ca279a::init();
    namespace_2a445563::init();
    namespace_53a8fe5e::init();
    namespace_6479037a::init();
    namespace_146875e::init();
    namespace_8c89a9e9::init();
    namespace_6e561646::init();
    namespace_7457b8d5::init();
    clientfield::register( "actor", "enable_on_radar", 1, 1, "int", &function_c85f904d, 0, 0 );
    clientfield::register( "vehicle", "enable_on_radar", 1, 1, "int", &function_c85f904d, 0, 0 );
}

// Namespace namespace_250e9486/namespace_250e9486
// Params 1, eflags: 0x0
// Checksum 0xa34645e0, Offset: 0x3c8
// Size: 0xc
function function_32d5e898( *localclientnum )
{
    
}

// Namespace namespace_250e9486/namespace_250e9486
// Params 7, eflags: 0x0
// Checksum 0xebfdaafc, Offset: 0x3e0
// Size: 0x54
function function_c85f904d( *localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump )
{
    self enableonradar();
}

