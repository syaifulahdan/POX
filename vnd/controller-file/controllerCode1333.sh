#!/usr/bin/python
"""
#Script created by VND - Visual Network Description (SDN version) 
"""
from pox.core import core
from pox.lib.addresses import IPAddr
from pox.lib.addresses import EthAddr
import pox.openflow.libopenflow_01 as of

log = core.getLogger()

#rule1: 
switch0 = 0000000000000003
flow0msg = of.ofp_flow_mod() 
flow0msg.cookie = 0 
flow0msg.match.in_port = 1
# ACTIONS---------------------------------
flow0out = of.ofp_action_output (port = 2)
flow0msg.actions = [flow0out] 

#rule2: 
switch1 = 0000000000000003
flow1msg = of.ofp_flow_mod() 
flow1msg.cookie = 0 
flow1msg.match.in_port = 2
# ACTIONS---------------------------------
flow1out = of.ofp_action_output (port = 1)
flow1msg.actions = [flow1out] 

#rule3: 
switch2 = 0000000000000004
flow2msg = of.ofp_flow_mod() 
flow2msg.cookie = 0 
flow2msg.match.in_port = 1
# ACTIONS---------------------------------
flow2out = of.ofp_action_output (port = 2)
flow2msg.actions = [flow2out] 

#rule4: 
switch3 = 0000000000000004
flow3msg = of.ofp_flow_mod() 
flow3msg.cookie = 0 
flow3msg.match.in_port = 2
# ACTIONS---------------------------------
flow3out = of.ofp_action_output (port = 1)
flow3msg.actions = [flow3out] 

def install_flows(): 
   log.info("    *** Installing static flows... ***")
   # Push flows to switches
   core.openflow.sendToDPID(switch0, flow0msg)
   core.openflow.sendToDPID(switch1, flow1msg)
   core.openflow.sendToDPID(switch2, flow2msg)
   core.openflow.sendToDPID(switch3, flow3msg)
   log.info("    *** Static flows installed. ***")

def launch (): 
   log.info("*** Starting... ***")
   core.callDelayed (15, install_flows)
   log.info("*** Waiting for switches to connect.. ***")
