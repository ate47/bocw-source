// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\flowgraph\flowgraph_core.csc;

#namespace flowgraph_trigger;

// Namespace flowgraph_trigger/flowgraph_trigger
// Params 2, eflags: 0x0
// Checksum 0xa0ec920, Offset: 0x88
// Size: 0x98
function ontriggerentered(*x, e_trigger) {
    e_trigger endon(#"death");
    while (true) {
        waitresult = e_trigger waittill(#"trigger");
        e_entity = waitresult.activator;
        self flowgraph::kick(array(1, e_entity));
    }
}

