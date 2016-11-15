## Generate files using Teragen (removing speculative execution speed things up)
### Resulting in 50 files each one less than a regular block (128 MB), could be optimized to have a block size of 128 MB by tuning the number of map tasks of the number of columns
<pre><code>
hadoop jar /opt/cloudera/parcels/CDH/lib/hadoop-0.20-mapreduce/hadoop-examples.jar teragen -Dmapred.map.tasks=50 -Dmapred.map.tasks.speculative.execution=false 10000000 terasort
</code></pre>


## On a private VPC so copying to myself in another folder
<pre><code>
hadoop distcp terasort terasort_distcp
hadoop distcp hdfs://nn1:8020/terasort hdfs://nn2:8020/terasort_distcp
</code></pre>

## Running fsck on source folder in my cluster
### Everything looks fine
hdfs fsck /user/root/terasort -files -blocks
<pre><code>
Connecting to namenode via http://ip-172-31-9-37.eu-west-1.compute.internal:50070
FSCK started by hdfs (auth:SIMPLE) from /172.31.9.37 for path /user/root/terasort at Tue Nov 15 16:07:43 UTC 2016
/user/root/terasort <dir>
/user/root/terasort/_SUCCESS 0 bytes, 0 block(s):  OK

/user/root/terasort/part-m-00000 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743292_2468 len=20000000 Live_repl=3

/user/root/terasort/part-m-00001 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743297_2473 len=20000000 Live_repl=3

/user/root/terasort/part-m-00002 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743298_2474 len=20000000 Live_repl=3

/user/root/terasort/part-m-00003 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743299_2475 len=20000000 Live_repl=3

/user/root/terasort/part-m-00004 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743294_2470 len=20000000 Live_repl=3

/user/root/terasort/part-m-00005 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743296_2472 len=20000000 Live_repl=3

/user/root/terasort/part-m-00006 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743295_2471 len=20000000 Live_repl=3

/user/root/terasort/part-m-00007 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743291_2467 len=20000000 Live_repl=3

/user/root/terasort/part-m-00008 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743293_2469 len=20000000 Live_repl=3

/user/root/terasort/part-m-00009 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743305_2481 len=20000000 Live_repl=3

/user/root/terasort/part-m-00010 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743307_2483 len=20000000 Live_repl=3

/user/root/terasort/part-m-00011 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743301_2477 len=20000000 Live_repl=3

/user/root/terasort/part-m-00012 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743306_2482 len=20000000 Live_repl=3

/user/root/terasort/part-m-00013 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743302_2478 len=20000000 Live_repl=3

/user/root/terasort/part-m-00014 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743304_2480 len=20000000 Live_repl=3

/user/root/terasort/part-m-00015 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743303_2479 len=20000000 Live_repl=3

/user/root/terasort/part-m-00016 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743309_2485 len=20000000 Live_repl=3

/user/root/terasort/part-m-00017 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743308_2484 len=20000000 Live_repl=3

/user/root/terasort/part-m-00018 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743311_2487 len=20000000 Live_repl=3

/user/root/terasort/part-m-00019 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743310_2486 len=20000000 Live_repl=3

/user/root/terasort/part-m-00020 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743316_2492 len=20000000 Live_repl=3

/user/root/terasort/part-m-00021 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743315_2491 len=20000000 Live_repl=3

/user/root/terasort/part-m-00022 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743313_2489 len=20000000 Live_repl=3

/user/root/terasort/part-m-00023 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743317_2493 len=20000000 Live_repl=3

/user/root/terasort/part-m-00024 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743314_2490 len=20000000 Live_repl=3

/user/root/terasort/part-m-00025 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743318_2494 len=20000000 Live_repl=3

/user/root/terasort/part-m-00026 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743312_2488 len=20000000 Live_repl=3

/user/root/terasort/part-m-00027 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743321_2497 len=20000000 Live_repl=3

/user/root/terasort/part-m-00028 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743319_2495 len=20000000 Live_repl=3

/user/root/terasort/part-m-00029 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743325_2501 len=20000000 Live_repl=3

/user/root/terasort/part-m-00030 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743323_2499 len=20000000 Live_repl=3

/user/root/terasort/part-m-00031 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743322_2498 len=20000000 Live_repl=3

/user/root/terasort/part-m-00032 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743324_2500 len=20000000 Live_repl=3

/user/root/terasort/part-m-00033 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743327_2503 len=20000000 Live_repl=3

/user/root/terasort/part-m-00034 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743328_2504 len=20000000 Live_repl=3

/user/root/terasort/part-m-00035 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743326_2502 len=20000000 Live_repl=3

/user/root/terasort/part-m-00036 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743329_2505 len=20000000 Live_repl=3

/user/root/terasort/part-m-00037 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743330_2506 len=20000000 Live_repl=3

/user/root/terasort/part-m-00038 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743332_2508 len=20000000 Live_repl=3

/user/root/terasort/part-m-00039 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743331_2507 len=20000000 Live_repl=3

/user/root/terasort/part-m-00040 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743333_2509 len=20000000 Live_repl=3

/user/root/terasort/part-m-00041 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743336_2512 len=20000000 Live_repl=3

/user/root/terasort/part-m-00042 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743335_2511 len=20000000 Live_repl=3

/user/root/terasort/part-m-00043 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743334_2510 len=20000000 Live_repl=3

/user/root/terasort/part-m-00044 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743337_2513 len=20000000 Live_repl=3

/user/root/terasort/part-m-00045 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743338_2514 len=20000000 Live_repl=3

/user/root/terasort/part-m-00046 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743340_2516 len=20000000 Live_repl=3

/user/root/terasort/part-m-00047 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743341_2517 len=20000000 Live_repl=3

/user/root/terasort/part-m-00048 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743339_2515 len=20000000 Live_repl=3

/user/root/terasort/part-m-00049 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743342_2518 len=20000000 Live_repl=3

Status: HEALTHY
 Total size:	1000000000 B
 Total dirs:	1
 Total files:	51
 Total symlinks:		0
 Total blocks (validated):	50 (avg. block size 20000000 B)
 Minimally replicated blocks:	50 (100.0 %)
 Over-replicated blocks:	0 (0.0 %)
 Under-replicated blocks:	0 (0.0 %)
 Mis-replicated blocks:		0 (0.0 %)
 Default replication factor:	3
 Average block replication:	3.0
 Corrupt blocks:		0
 Missing replicas:		0 (0.0 %)
 Number of data-nodes:		4
 Number of racks:		1
FSCK ended at Tue Nov 15 16:07:43 UTC 2016 in 8 milliseconds
</code></pre>


## Running fsck on target folder (still in my cluster)
### Everthing is also fine
<pre><code>
hdfs fsck /user/root/terasort_distcp -files -blocks
Connecting to namenode via http://ip-172-31-9-37.eu-west-1.compute.internal:50070
FSCK started by hdfs (auth:SIMPLE) from /172.31.9.37 for path /user/root/terasort_distcp at Tue Nov 15 16:11:44 UTC 2016
/user/root/terasort_distcp <dir>
/user/root/terasort_distcp/_SUCCESS 0 bytes, 0 block(s):  OK

/user/root/terasort_distcp/part-m-00000 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743371_2547 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00001 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743375_2551 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00002 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743374_2550 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00003 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743380_2556 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00004 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743370_2546 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00005 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743376_2552 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00006 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743372_2548 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00007 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743378_2554 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00008 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743373_2549 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00009 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743379_2555 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00010 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743369_2545 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00011 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743377_2553 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00012 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743384_2560 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00013 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743387_2563 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00014 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743382_2558 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00015 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743385_2561 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00016 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743383_2559 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00017 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743386_2562 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00018 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743392_2568 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00019 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743399_2575 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00020 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743388_2564 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00021 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743394_2570 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00022 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743391_2567 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00023 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743397_2573 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00024 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743389_2565 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00025 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743395_2571 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00026 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743393_2569 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00027 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743398_2574 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00028 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743390_2566 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00029 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743396_2572 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00030 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743402_2578 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00031 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743405_2581 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00032 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743400_2576 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00033 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743403_2579 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00034 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743401_2577 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00035 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743404_2580 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00036 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743406_2582 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00037 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743407_2583 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00038 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743408_2584 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00039 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743411_2587 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00040 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743414_2590 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00041 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743415_2591 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00042 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743409_2585 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00043 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743412_2588 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00044 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743416_2592 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00045 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743417_2593 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00046 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743410_2586 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00047 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743413_2589 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00048 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743418_2594 len=20000000 Live_repl=3

/user/root/terasort_distcp/part-m-00049 20000000 bytes, 1 block(s):  OK
0. BP-1419853780-172.31.9.37-1479218285049:blk_1073743419_2595 len=20000000 Live_repl=3

Status: HEALTHY
 Total size:	1000000000 B
 Total dirs:	1
 Total files:	51
 Total symlinks:		0
 Total blocks (validated):	50 (avg. block size 20000000 B)
 Minimally replicated blocks:	50 (100.0 %)
 Over-replicated blocks:	0 (0.0 %)
 Under-replicated blocks:	0 (0.0 %)
 Mis-replicated blocks:		0 (0.0 %)
 Default replication factor:	3
 Average block replication:	3.0
 Corrupt blocks:		0
 Missing replicas:		0 (0.0 %)
 Number of data-nodes:		4
 Number of racks:		1
FSCK ended at Tue Nov 15 16:11:44 UTC 2016 in 8 milliseconds


The filesystem under path '/user/root/terasort_distcp' is HEALTHY
</code></pre>


