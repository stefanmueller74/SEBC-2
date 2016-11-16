## Slowest 
Teragen 
<pre><code>
real	2m2.410s
user	0m7.359s
sys	0m0.358s

-Dmapreduce.map.memory.mb=1024 
-Dmapreduce.job.maps=8 
-Dmapreduce.map.java.opts.max.heap=819
</code></pre>
       

Terasort :
<pre><code>
real	3m34.602s
user	0m8.212s
sys	0m0.354s

-Dmapreduce.job.maps=80 \
-Dmapreduce.job.reduces=8 \
-Dmapreduce.map.memory.mb=1024 \
-Dmapreduce.map.java.opts.max.heap=819 \
-Dmapreduce.reduce.memory.mb=1024 \
-Dmapreduce.reduce.java.opts.max.heap=819 \
</code></pre>

## Fastest
### Teragen :
<pre><code>
real	1m55.846s
user	0m6.032s
sys	0m0.301s

-Dmapreduce.map.memory.mb=512 
-Dmapreduce.job.maps=10 
-Dmapreduce.map.java.opts.max.heap=409
</code></pre>

Terasort :
###<pre><code>
real	2m56.511s
user	0m7.962s
sys	0m0.359s

-Dmapreduce.job.maps=80 \
-Dmapreduce.job.reduces=8 \
-Dmapreduce.map.memory.mb=1024 \
-Dmapreduce.map.java.opts.max.heap=409 \
-Dmapreduce.reduce.memory.mb=1024 \
-Dmapreduce.reduce.java.opts.max.heap=819 \
</code></pre>