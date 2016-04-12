


Buka Browser anda ketik alamat : 

![alt tag](https://github.com/syaifulahdan/POX/blob/master/vnd/image/Screenshot%20from%202016-04-12%2023:53:02.png)


Buatlah topology seperti diwabah ini :

![alt tag](https://github.com/syaifulahdan/POX/blob/master/vnd/image/Screenshot%20from%202016-04-12%2023:57:27.png)


<b>Membuat FLow Tabel : click double in controller your choose</b>

- id                    : controller_2
- name                  : controller_2
- actove                : true
- controller ip address : 127.0.0.1
- controller port       : 6633
- remote controller     : true
- openflow controller   : pox {beacon,floodlight, jackson, maestro, mul, nodeflow, nox, opendaylight, ovs-controller, pox, trema}

![alt tag](https://github.com/syaifulahdan/POX/blob/master/vnd/image/Screenshot%20from%202016-04-13%2000:40:40.png)



<b>click flow table for create</b>

--- Flow Table ---

- flowtable           :-
- flowname            : -
- priority            : -
- Switch MAC Addrss_  : -
- ingress port        : -
- vlanID              : -
- vlanPriority        : -
- ethernet type       : -
- TOS                 : -
- Protocol number     : -
- Source IP           : -
- Destination IP      : -
- Source TCP/UDP Port :-
- Destination TCP/UDP Port : -

------- Actions -------

- set output          : -
- set source mac      : -
- set enqueue         : -
- set Vlan ID         : -
- set Vlan Priority   : -
- set strip Vlan      : - 
- set TOS             : -
- set Source IP       : -
- set Destination IP  : -
- set Source TCP/UDP Port :-
- set Destination TCP/UDP Port : -
- note                : -


##### Create Rule Secenario

- id                    : <b>controller_2</b>
- name                  : <b>controller_2</b>
- actove                : <b>true</b>
- controller ip address : <b>127.0.0.1</b>
- controller port       : <b>6633</b>
- remote controller     : <b>true</b>
- openflow controller   : <b>pox</b> 
-------------------------------------------

- flowname : <b>rule1</b>
- Switch MAC Addrss_  : <b>00.00.00.00.00.03</b>
- ingress port        : <b>1</b>
- set output          : <b>2</b>

- flowname : <b>rule2</b>
- Switch MAC Addrss_  : <b>00.00.00.00.00.03</b>
- ingress port        : <b>2</b>
- set output          : <b>1</b>


- flowname : <b>rule3</b>
- Switch MAC Addrss_  : <b>00.00.00.00.00.04</b>
- ingress port        : <b>2</b>
- set output          : <b>1</b>

- flowname : <b>rule4</b>
- Switch MAC Addrss_  : <b>00.00.00.00.00.04</b>
- ingress port        : <b>2</b>
- set output          : <b>1</b> 

click apply seeting for create rule

##### Save to Controller and Mininet

- File > Export > Export to Openflow Controller > Download > Save file > Ok 
   
![alt tag] (https://github.com/syaifulahdan/POX/blob/master/vnd/image/Screenshot%20from%202016-04-13%2000:46:11.png)
 
- File > Export > Export to Mininet (or Mininet-Wifi) > Download > Save file > Ok 
-
![alt tag](https://github.com/syaifulahdan/POX/blob/master/vnd/image/Screenshot%20from%202016-04-13%2000:49:44.png)
