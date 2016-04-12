#!/usr/bin/python

"""
Script created by VND - Visual Network Description (SDN version)
"""
from mininet.net import Mininet
from mininet.node import Controller, RemoteController, OVSKernelSwitch, IVSSwitch, UserSwitch
from mininet.link import Link, TCLink
from mininet.cli import CLI
from mininet.log import setLogLevel

def topology():

    "Create a network."
    net = Mininet( controller=RemoteController, link=TCLink, switch=OVSKernelSwitch )

    print "*** Creating nodes"
    h1 = net.addHost( 'h1', mac='00:00:00:00:00:01', ip='10.0.0.1/8' )
    c2 = net.addController( 'c2', ip='127.0.0.1', port=6633 )
    s3 = net.addSwitch( 's3', listenPort=6673, mac='00:00:00:00:00:03' )
    s4 = net.addSwitch( 's4', listenPort=6674, mac='00:00:00:00:00:04' )
    h5 = net.addHost( 'h5', mac='00:00:00:00:00:05', ip='10.0.0.5/8' )

    print "*** Creating links"
    net.addLink(s3, h5)
    net.addLink(s4, h1)

    print "*** Starting network"
    net.build()
    c2.start()
    s3.start( [c2] )
    s4.start( [c2] )

    print "*** Running CLI"
    CLI( net )

    print "*** Stopping network"
    net.stop()

if __name__ == '__main__':
    setLogLevel( 'info' )
    topology()



