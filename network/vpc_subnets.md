# Definition of a public/private subnet

- From [AWS](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Internet_Gateway.html#:~:text=If%20a%20subnet%20is%20associated%20with%20a%20route%20table%20that%20has%20a%20route%20to%20an%20internet%20gateway%2C%20it%27s%20known%20as%20a%20public%20subnet.%20If%20a%20subnet%20is%20associated%20with%20a%20route%20table%20that%20does%20not%20have%20a%20route%20to%20an%20internet%20gateway%2C%20it%27s%20known%20as%20a%20private%20subnet.)

`If a subnet is associated with a route table that has a route to an internet gateway, it's known as a public subnet. If a subnet is associated with a route table that does not have a route to an internet gateway, it's known as a private subnet.`

- Is disk slower than network now? :
  - [what-happens-when-an-internet-connection-is-faster-than-the-storage-write](https://cs.stackexchange.com/questions/84487/what-happens-when-an-internet-connection-is-faster-than-the-storage-write-speed#:~:text=Both%20network%20traffic%20and%20HDD,slower%20speed%20of%20your%20HDD.)
  - [are-networks-now-faster-than-disks](https://serverfault.com/a/238534/93523)

```
L1 cache reference                             0.5 ns
Branch mispredict                              5 ns
L2 cache reference                             7 ns
Mutex lock/unlock                            100 ns (25)
Main memory reference                        100 ns
Compress 1K bytes with Zippy              10,000 ns (3,000)
Send 2K bytes over 1 Gbps network         20,000 ns
Read 1 MB sequentially from memory       250,000 ns
Round trip within same datacenter        500,000 ns
Disk seek                             10,000,000 ns
Read 1 MB sequentially from network   10,000,000 ns
Read 1 MB sequentially from disk      30,000,000 ns (20,000,000)
Send packet CA->Netherlands->CA      150,000,000 ns
```

- A key driver for in-memory databases/caches ex:  redis and voltDB. Thus enabling lambda architectures which combines streaming and batch together to aid two concurrent and different use cases
  - get me quick count
  - let's handle/see/analyze data a bit.