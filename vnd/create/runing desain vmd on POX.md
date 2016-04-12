How to running desain mypox.py on pox 

1. open terminal

<pre>
bertopeng17@bertopeng17-ThinkPad-T520:~$ <b>cd pox</b>
bertopeng17@bertopeng17-ThinkPad-T520:~/pox$ <b>./pox.py mypox1</b>
POX 0.2.0 (carp) / Copyright 2011-2013 James McCauley, et al.
INFO:mypox1:*** Starting... ***
INFO:mypox1:*** Waiting for switches to connect.. ***
INFO:core:POX 0.2.0 (carp) is up.
ERROR:openflow.of_01:Error 98 while binding socket: Address already in use
ERROR:openflow.of_01: You may have another controller running.
ERROR:openflow.of_01: Use openflow.of_01 --port=<port> to run POX on another port.
INFO:mypox1:    *** Installing static flows... ***
WARNING:openflow:Couldn't send to 00-00-00-00-00-04 because we're not connected to it!
WARNING:openflow:Couldn't send to 00-00-00-00-00-04 because we're not connected to it!
WARNING:openflow:Couldn't send to 00-00-00-00-00-05 because we're not connected to it!
WARNING:openflow:Couldn't send to 00-00-00-00-00-05 because we're not connected to it!
INFO:mypox1:    *** Static flows installed. ***
<pre>
