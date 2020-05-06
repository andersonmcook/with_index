# OTP 21 Benchmarks

```
Operating System: macOS
CPU Information: Intel(R) Core(TM) i7-8750H CPU @ 2.20GHz
Number of Available Cores: 12
Available memory: 16 GB
Elixir 1.10.3
Erlang 21.3.8.15
```

## Synopsis

- List: The updated function is approximately twice as fast and uses half the memory.
- Map: The updated function is approximately twice as fast and uses half the memory.
- MapSet: The updated function is moderately faster and uses moderately less memory. 
- Range: The updated function is moderately faster and uses moderately less memory.
- Stream: The updated function is minimally faster and uses minimally less memory.


## List Benchmarks

```
##### With input List A of 1 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       33.42 M       29.92 ns  ±8477.76%           0 ns         318 ns
enum                     15.53 M       64.39 ns ±17908.53%           0 ns         388 ns

Comparison: 
updated_with_index       33.42 M
enum                     15.53 M - 2.15x slower +34.47 ns

Memory usage statistics:

Name                  Memory usage
updated_with_index            40 B
enum                         160 B - 4.00x memory usage +120 B

**All measurements for memory usage were the same**

##### With input List B of 5 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        6.84 M      146.30 ns  ±7736.49%          78 ns         429 ns
enum                      1.81 M      551.62 ns  ±5022.75%         309 ns        1587 ns

Comparison: 
updated_with_index        6.84 M
enum                      1.81 M - 3.77x slower +405.32 ns

Memory usage statistics:

Name                  Memory usage
updated_with_index           200 B
enum                         512 B - 2.56x memory usage +312 B

**All measurements for memory usage were the same**

##### With input List C of 10 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        2.69 M      371.07 ns  ±3854.53%         231 ns         574 ns
enum                      1.20 M      834.89 ns  ±1567.86%         640 ns        2074 ns

Comparison: 
updated_with_index        2.69 M
enum                      1.20 M - 2.25x slower +463.83 ns

Memory usage statistics:

Name                  Memory usage
updated_with_index           400 B
enum                         952 B - 2.38x memory usage +552 B

**All measurements for memory usage were the same**

##### With input List D of 50 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      550.28 K        1.82 μs   ±297.56%        1.56 μs        3.12 μs
enum                    252.39 K        3.96 μs   ±352.51%        3.41 μs        6.67 μs

Comparison: 
updated_with_index      550.28 K
enum                    252.39 K - 2.18x slower +2.14 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         1.95 KB
enum                       4.37 KB - 2.24x memory usage +2.41 KB

**All measurements for memory usage were the same**

##### With input List E of 100 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      258.83 K        3.86 μs   ±464.91%        3.44 μs        5.73 μs
enum                    138.43 K        7.22 μs   ±170.24%        6.76 μs       10.05 μs

Comparison: 
updated_with_index      258.83 K
enum                    138.43 K - 1.87x slower +3.36 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         3.91 KB
enum                       8.66 KB - 2.22x memory usage +4.76 KB

**All measurements for memory usage were the same**

##### With input List F of 500 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       53.13 K       18.82 μs   ±200.08%       17.64 μs       27.51 μs
enum                     28.69 K       34.86 μs    ±71.27%       33.98 μs       75.38 μs

Comparison: 
updated_with_index       53.13 K
enum                     28.69 K - 1.85x slower +16.04 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        19.53 KB
enum                      43.04 KB - 2.20x memory usage +23.51 KB

**All measurements for memory usage were the same**

##### With input List G of 1000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       25.77 K       38.81 μs   ±132.86%       36.95 μs       64.55 μs
enum                     14.25 K       70.17 μs    ±38.01%       68.23 μs      115.97 μs

Comparison: 
updated_with_index       25.77 K
enum                     14.25 K - 1.81x slower +31.36 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        39.06 KB
enum                      86.01 KB - 2.20x memory usage +46.95 KB

**All measurements for memory usage were the same**

##### With input List H of 5000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        5.45 K      183.51 μs    ±51.99%      178.01 μs      265.27 μs
enum                      2.81 K      355.45 μs    ±19.16%      345.22 μs      479.25 μs

Comparison: 
updated_with_index        5.45 K
enum                      2.81 K - 1.94x slower +171.93 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index       195.31 KB
enum                     429.76 KB - 2.20x memory usage +234.45 KB

**All measurements for memory usage were the same**

##### With input List I of 10000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        2.52 K      396.20 μs    ±40.57%      369.74 μs      559.89 μs
enum                      1.40 K      716.08 μs    ±31.00%      688.25 μs      935.27 μs

Comparison: 
updated_with_index        2.52 K
enum                      1.40 K - 1.81x slower +319.88 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index       390.63 KB
enum                     859.45 KB - 2.20x memory usage +468.82 KB

**All measurements for memory usage were the same**

##### With input List J of 50000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        465.68        2.15 ms    ±22.88%        2.15 ms        2.70 ms
enum                      234.73        4.26 ms    ±17.99%        4.24 ms        5.48 ms

Comparison: 
updated_with_index        465.68
enum                      234.73 - 1.98x slower +2.11 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         1.91 MB
enum                       4.20 MB - 2.20x memory usage +2.29 MB

**All measurements for memory usage were the same**

##### With input List K of 100000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        197.12        5.07 ms    ±15.35%        4.91 ms        5.95 ms
enum                      128.09        7.81 ms    ±21.06%        7.45 ms       11.30 ms

Comparison: 
updated_with_index        197.12
enum                      128.09 - 1.54x slower +2.73 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         3.81 MB
enum                       8.39 MB - 2.20x memory usage +4.58 MB

**All measurements for memory usage were the same**

##### With input List L of 500000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index         33.86       29.54 ms    ±20.21%       28.52 ms       69.21 ms
enum                       16.06       62.26 ms    ±21.92%       62.31 ms      106.17 ms

Comparison: 
updated_with_index         33.86
enum                       16.06 - 2.11x slower +32.73 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index        19.07 MB
enum                      41.96 MB - 2.20x memory usage +22.89 MB

**All measurements for memory usage were the same**

##### With input List M of 1000000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index         12.74       78.47 ms    ±35.54%       68.87 ms      157.53 ms
enum                        7.42      134.69 ms    ±21.31%      132.79 ms      203.88 ms

Comparison: 
updated_with_index         12.74
enum                        7.42 - 1.72x slower +56.22 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index        38.15 MB
enum                      83.92 MB - 2.20x memory usage +45.78 MB

**All measurements for memory usage were the same**
```

## Map Benchmarks

```
##### With input Map A of 1 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       16.15 M       61.91 ns ±19112.53%           0 ns          76 ns
enum                      5.55 M      180.31 ns ±26212.67%           0 ns        1127 ns

Comparison: 
updated_with_index       16.15 M
enum                      5.55 M - 2.91x slower +118.40 ns

Memory usage statistics:

Name                  Memory usage
updated_with_index            80 B
enum                         368 B - 4.60x memory usage +288 B

**All measurements for memory usage were the same**

##### With input Map B of 5 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        8.01 M      124.90 ns ±10849.49%           0 ns         166 ns
enum                      1.18 M      848.36 ns  ±6336.22%         529 ns     1985.10 ns

Comparison: 
updated_with_index        8.01 M
enum                      1.18 M - 6.79x slower +723.46 ns

Memory usage statistics:

Name                  Memory usage
updated_with_index         0.39 KB
enum                          1 KB - 2.56x memory usage +0.61 KB

**All measurements for memory usage were the same**

##### With input Map C of 10 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        3.12 M        0.32 μs ±15581.26%      0.0550 μs        1.52 μs
enum                      0.62 M        1.62 μs  ±3098.94%        1.16 μs        3.35 μs

Comparison: 
updated_with_index        3.12 M
enum                      0.62 M - 5.06x slower +1.30 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         0.78 KB
enum                       1.78 KB - 2.28x memory usage +1 KB

**All measurements for memory usage were the same**

##### With input Map D of 50 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      500.22 K        2.00 μs  ±1538.07%        1.68 μs        3.27 μs
enum                    143.84 K        6.95 μs  ±1013.72%        6.24 μs       10.08 μs

Comparison: 
updated_with_index      500.22 K
enum                    143.84 K - 3.48x slower +4.95 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         2.69 KB
enum                       8.05 KB - 2.99x memory usage +5.36 KB

**All measurements for memory usage were the same**

##### With input Map E of 100 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      245.41 K        4.07 μs  ±1598.23%        3.60 μs        6.46 μs
enum                     74.84 K       13.36 μs   ±620.71%       12.44 μs       25.47 μs

Comparison: 
updated_with_index      245.41 K
enum                     74.84 K - 3.28x slower +9.29 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         5.19 KB
enum                      13.73 KB - 2.65x memory usage +8.55 KB

**All measurements for memory usage were the same**

##### With input Map F of 500 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       45.17 K       22.14 μs   ±527.24%       21.30 μs       39.00 μs
enum                     14.93 K       67.00 μs   ±256.17%       64.31 μs      115.49 μs

Comparison: 
updated_with_index       45.17 K
enum                     14.93 K - 3.03x slower +44.86 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        20.81 KB
enum                      63.73 KB - 3.06x memory usage +42.92 KB

**All measurements for memory usage were the same**

##### With input Map G of 1000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       22.87 K       43.72 μs   ±195.60%       41.94 μs       87.39 μs
enum                      7.41 K      135.03 μs   ±193.65%      128.35 μs      207.40 μs

Comparison: 
updated_with_index       22.87 K
enum                      7.41 K - 3.09x slower +91.32 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        40.45 KB
enum                     151.31 KB - 3.74x memory usage +110.86 KB

**All measurements for memory usage were the same**

##### With input Map H of 5000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        4.22 K      237.22 μs    ±80.91%      227.70 μs      364.11 μs
enum                      1.43 K      701.31 μs    ±45.95%      672.05 μs      938.01 μs

Comparison: 
updated_with_index        4.22 K
enum                      1.43 K - 2.96x slower +464.08 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index       351.88 KB
enum                     738.38 KB - 2.10x memory usage +386.49 KB

**All measurements for memory usage were the same**

##### With input Map I of 10000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        2.03 K        0.49 ms    ±55.54%        0.46 ms        0.71 ms
enum                      0.65 K        1.53 ms    ±34.52%        1.46 ms        2.14 ms

Comparison: 
updated_with_index        2.03 K
enum                      0.65 K - 3.09x slower +1.03 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         0.69 MB
enum                       1.47 MB - 2.13x memory usage +0.78 MB

**All measurements for memory usage were the same**

##### With input Map J of 50000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        382.75        2.61 ms    ±31.47%        2.41 ms        3.83 ms
enum                      122.58        8.16 ms    ±16.89%        7.95 ms       10.20 ms

Comparison: 
updated_with_index        382.75
enum                      122.58 - 3.12x slower +5.55 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         3.70 MB
enum                       7.55 MB - 2.04x memory usage +3.84 MB

**All measurements for memory usage were the same**

##### With input Map K of 100000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        121.43        8.24 ms    ±37.58%        8.52 ms       12.06 ms
enum                       61.20       16.34 ms    ±31.35%       15.50 ms       48.65 ms

Comparison: 
updated_with_index        121.43
enum                       61.20 - 1.98x slower +8.10 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         7.60 MB
enum                      15.23 MB - 2.01x memory usage +7.64 MB

**All measurements for memory usage were the same**

##### With input Map L of 500000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index         21.68       46.12 ms    ±27.90%       44.64 ms      128.50 ms
enum                        8.88      112.59 ms    ±22.64%      111.65 ms      203.87 ms

Comparison: 
updated_with_index         21.68
enum                        8.88 - 2.44x slower +66.47 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index        37.99 MB
enum                      76.31 MB - 2.01x memory usage +38.32 MB

**All measurements for memory usage were the same**

##### With input Map M of 1000000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index          9.62      103.96 ms    ±28.94%      101.79 ms      201.92 ms
enum                        4.23      236.33 ms    ±21.90%      219.23 ms      340.25 ms

Comparison: 
updated_with_index          9.62
enum                        4.23 - 2.27x slower +132.37 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index        76.24 MB
enum                     151.61 MB - 1.99x memory usage +75.37 MB

**All measurements for memory usage were the same**
```

## MapSet Benchmarks

```
##### With input MapSet A of 1 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        6.51 M      153.59 ns  ±3277.48%          37 ns        1393 ns
enum                      3.71 M      269.87 ns ±21127.71%          71 ns        1432 ns

Comparison: 
updated_with_index        6.51 M
enum                      3.71 M - 1.76x slower +116.29 ns

Memory usage statistics:

Name                  Memory usage
updated_with_index           224 B
enum                         384 B - 1.71x memory usage +160 B

**All measurements for memory usage were the same**

##### With input MapSet B of 5 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        1.41 M      707.95 ns  ±4668.73%         495 ns        1878 ns
enum                      1.07 M      935.16 ns  ±6098.09%         571 ns        2222 ns

Comparison: 
updated_with_index        1.41 M
enum                      1.07 M - 1.32x slower +227.22 ns

Memory usage statistics:

Name                  Memory usage
updated_with_index           688 B
enum                         976 B - 1.42x memory usage +288 B

**All measurements for memory usage were the same**

##### With input MapSet C of 10 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      869.83 K        1.15 μs  ±2682.60%        1.00 μs        2.47 μs
enum                    694.41 K        1.44 μs  ±3515.12%        1.11 μs        2.80 μs

Comparison: 
updated_with_index      869.83 K
enum                    694.41 K - 1.25x slower +0.29 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         1.22 KB
enum                       1.66 KB - 1.36x memory usage +0.44 KB

**All measurements for memory usage were the same**

##### With input MapSet D of 50 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      173.08 K        5.78 μs   ±683.71%        5.28 μs        8.43 μs
enum                    156.55 K        6.39 μs  ±1079.33%        5.78 μs        9.61 μs

Comparison: 
updated_with_index      173.08 K
enum                    156.55 K - 1.11x slower +0.61 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         5.02 KB
enum                       7.02 KB - 1.40x memory usage +2 KB

**All measurements for memory usage were the same**

##### With input MapSet E of 100 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       84.94 K       11.77 μs   ±766.22%       10.53 μs       19.25 μs
enum                     80.04 K       12.49 μs   ±706.70%       11.53 μs       18.88 μs

Comparison: 
updated_with_index       84.94 K
enum                     80.04 K - 1.06x slower +0.72 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         9.50 KB
enum                      11.47 KB - 1.21x memory usage +1.97 KB

**All measurements for memory usage were the same**

##### With input MapSet F of 500 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       17.15 K       58.30 μs   ±289.47%       54.19 μs       99.77 μs
enum                     14.82 K       67.47 μs   ±269.05%       63.40 μs      120.76 μs

Comparison: 
updated_with_index       17.15 K
enum                     14.82 K - 1.16x slower +9.16 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        44.28 KB
enum                      62.75 KB - 1.42x memory usage +18.47 KB

**All measurements for memory usage were the same**

##### With input MapSet G of 1000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        8.61 K      116.10 μs   ±198.17%      109.74 μs      171.88 μs
enum                      7.67 K      130.42 μs   ±182.58%      123.17 μs      198.00 μs

Comparison: 
updated_with_index        8.61 K
enum                      7.67 K - 1.12x slower +14.31 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        93.88 KB
enum                     115.28 KB - 1.23x memory usage +21.41 KB

**All measurements for memory usage were the same**

##### With input MapSet H of 5000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        1.69 K      592.21 μs    ±51.27%      567.71 μs      815.38 μs
enum                      1.46 K      683.57 μs    ±48.35%      643.89 μs      934.69 μs

Comparison: 
updated_with_index        1.69 K
enum                      1.46 K - 1.15x slower +91.36 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index       468.88 KB
enum                     625.25 KB - 1.33x memory usage +156.38 KB

**All measurements for memory usage were the same**

##### With input MapSet I of 10000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        809.05        1.24 ms    ±37.43%        1.19 ms        1.51 ms
enum                      740.01        1.35 ms    ±36.93%        1.30 ms        1.76 ms

Comparison: 
updated_with_index        809.05
enum                      740.01 - 1.09x slower +0.115 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         0.80 MB
enum                       1.22 MB - 1.52x memory usage +0.42 MB

**All measurements for memory usage were the same**

##### With input MapSet J of 50000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        164.75        6.07 ms    ±19.35%        5.90 ms        7.90 ms
enum                      128.81        7.76 ms    ±18.98%        7.79 ms       10.14 ms

Comparison: 
updated_with_index        164.75
enum                      128.81 - 1.28x slower +1.69 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         4.58 MB
enum                       6.10 MB - 1.33x memory usage +1.53 MB

**All measurements for memory usage were the same**

##### With input MapSet K of 100000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index         78.60       12.72 ms    ±13.53%       12.35 ms       14.88 ms
enum                       63.19       15.82 ms    ±32.03%       14.96 ms       49.20 ms

Comparison: 
updated_with_index         78.60
enum                       63.19 - 1.24x slower +3.10 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         8.64 MB
enum                      12.21 MB - 1.41x memory usage +3.56 MB

**All measurements for memory usage were the same**

##### With input MapSet L of 500000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index         11.58       86.35 ms    ±18.30%       84.82 ms      161.09 ms
enum                        8.69      115.04 ms    ±22.88%      109.58 ms      183.08 ms

Comparison: 
updated_with_index         11.58
enum                        8.69 - 1.33x slower +28.69 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index        45.78 MB
enum                      60.12 MB - 1.31x memory usage +14.34 MB

**All measurements for memory usage were the same**

##### With input MapSet M of 1000000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index          5.87      170.45 ms    ±12.39%      164.82 ms      270.40 ms
enum                        4.17      239.88 ms    ±18.56%      233.35 ms      320.99 ms

Comparison: 
updated_with_index          5.87
enum                        4.17 - 1.41x slower +69.44 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index        91.55 MB
enum                     119.91 MB - 1.31x memory usage +28.36 MB

**All measurements for memory usage were the same**
```

## Range Benchmarks

```
##### With input Range A of 1 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        3.46 M      288.91 ns  ±4873.29%         200 ns         746 ns
enum                      2.91 M      344.15 ns  ±4351.26%         219 ns         615 ns

Comparison: 
updated_with_index        3.46 M
enum                      2.91 M - 1.19x slower +55.24 ns

Memory usage statistics:

Name                  Memory usage
updated_with_index           104 B
enum                         240 B - 2.31x memory usage +136 B

**All measurements for memory usage were the same**

##### With input Range B of 5 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        1.44 M        0.70 μs  ±2714.65%        0.53 μs        1.78 μs
enum                      0.90 M        1.11 μs  ±1408.48%        0.90 μs        2.51 μs

Comparison: 
updated_with_index        1.44 M
enum                      0.90 M - 1.59x slower +0.41 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index           408 B
enum                         672 B - 1.65x memory usage +264 B

**All measurements for memory usage were the same**

##### With input Range C of 10 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      906.88 K        1.10 μs   ±906.85%        0.91 μs        2.46 μs
enum                    672.38 K        1.49 μs  ±1234.51%        1.34 μs        2.96 μs

Comparison: 
updated_with_index      906.88 K
enum                    672.38 K - 1.35x slower +0.38 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         0.75 KB
enum                       1.16 KB - 1.55x memory usage +0.41 KB

**All measurements for memory usage were the same**

##### With input Range D of 50 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      252.75 K        3.96 μs   ±108.76%        3.73 μs        5.99 μs
enum                    200.06 K        5.00 μs   ±193.00%        4.53 μs        7.90 μs

Comparison: 
updated_with_index      252.75 K
enum                    200.06 K - 1.26x slower +1.04 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         3.52 KB
enum                       4.74 KB - 1.35x memory usage +1.23 KB

**All measurements for memory usage were the same**

##### With input Range E of 100 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      122.62 K        8.16 μs    ±31.61%        7.70 μs       15.36 μs
enum                    101.79 K        9.82 μs    ±25.72%        9.76 μs       15.85 μs

Comparison: 
updated_with_index      122.62 K
enum                    101.79 K - 1.20x slower +1.67 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         5.55 KB
enum                       8.85 KB - 1.60x memory usage +3.30 KB

**All measurements for memory usage were the same**

##### With input Range F of 500 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       25.75 K       38.83 μs    ±14.48%       37.70 μs       58.70 μs
enum                     20.13 K       49.68 μs    ±11.38%       49.41 μs       66.30 μs

Comparison: 
updated_with_index       25.75 K
enum                     20.13 K - 1.28x slower +10.85 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        27.52 KB
enum                      50.93 KB - 1.85x memory usage +23.41 KB

**All measurements for memory usage were the same**

##### With input Range G of 1000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       12.68 K       78.89 μs    ±11.43%       77.29 μs      116.74 μs
enum                      9.17 K      109.03 μs     ±9.54%      110.63 μs      134.24 μs

Comparison: 
updated_with_index       12.68 K
enum                      9.17 K - 1.38x slower +30.14 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        60.52 KB
enum                      95.18 KB - 1.57x memory usage +34.66 KB

**All measurements for memory usage were the same**

##### With input Range H of 5000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        2.36 K      423.00 μs     ±6.97%      423.79 μs      550.01 μs
enum                      1.93 K      518.85 μs    ±14.19%      510.61 μs      777.99 μs

Comparison: 
updated_with_index        2.36 K
enum                      1.93 K - 1.23x slower +95.85 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index       280.66 KB
enum                     503.93 KB - 1.80x memory usage +223.27 KB

**All measurements for memory usage were the same**

##### With input Range I of 10000 #####
Name                         ips        average  deviation         median         99th %
enum                      877.70        1.14 ms    ±12.64%        1.09 ms        1.51 ms
updated_with_index        863.03        1.16 ms    ±21.07%        1.05 ms        1.73 ms

Comparison: 
enum                      877.70
updated_with_index        863.03 - 1.02x slower +0.0194 ms

Memory usage statistics:

Name                  Memory usage
enum                     881.74 KB
updated_with_index       561.44 KB - 0.64x memory usage -320.30469 KB

**All measurements for memory usage were the same**

##### With input Range J of 50000 #####
Name                         ips        average  deviation         median         99th %
enum                      199.70        5.01 ms     ±4.25%        4.94 ms        5.95 ms
updated_with_index        187.77        5.33 ms    ±18.04%        5.13 ms        8.21 ms

Comparison: 
enum                      199.70
updated_with_index        187.77 - 1.06x slower +0.32 ms

Memory usage statistics:

Name                  Memory usage
enum                       4.87 MB
updated_with_index         2.92 MB - 0.60x memory usage -1.95670 MB

**All measurements for memory usage were the same**

##### With input Range K of 100000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        114.68        8.72 ms     ±9.15%        8.37 ms       11.29 ms
enum                       75.50       13.25 ms     ±9.68%       13.12 ms       17.02 ms

Comparison: 
updated_with_index        114.68
enum                       75.50 - 1.52x slower +4.53 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         6.46 MB
enum                       9.79 MB - 1.52x memory usage +3.33 MB

**All measurements for memory usage were the same**

##### With input Range L of 500000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index         14.92       67.04 ms    ±10.88%       64.97 ms      108.93 ms
enum                       13.30       75.16 ms    ±12.23%       76.10 ms      107.12 ms

Comparison: 
updated_with_index         14.92
enum                       13.30 - 1.12x slower +8.12 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index        34.02 MB
enum                      48.26 MB - 1.42x memory usage +14.24 MB

**All measurements for memory usage were the same**

##### With input Range M of 1000000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index          8.25      121.17 ms    ±17.67%      116.19 ms      214.08 ms
enum                        6.47      154.61 ms    ±19.18%      153.26 ms      252.64 ms

Comparison: 
updated_with_index          8.25
enum                        6.47 - 1.28x slower +33.44 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index        65.25 MB
enum                      95.67 MB - 1.47x memory usage +30.42 MB

**All measurements for memory usage were the same**
```

## Stream Benchmarks

```
##### With input Stream A of 1 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      660.39 K        1.51 μs   ±909.12%        1.29 μs        2.76 μs
enum                    618.69 K        1.62 μs   ±746.37%        1.33 μs        3.29 μs

Comparison: 
updated_with_index      660.39 K
enum                    618.69 K - 1.07x slower +0.102 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         0.98 KB
enum                       1.13 KB - 1.16x memory usage +0.156 KB

**All measurements for memory usage were the same**

##### With input Stream B of 5 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      294.00 K        3.40 μs   ±268.81%        3.00 μs        5.41 μs
enum                    289.18 K        3.46 μs   ±371.03%        2.89 μs        6.95 μs

Comparison: 
updated_with_index      294.00 K
enum                    289.18 K - 1.02x slower +0.0567 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         2.49 KB
enum                       2.77 KB - 1.11x memory usage +0.28 KB

**All measurements for memory usage were the same**

##### With input Stream C of 10 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      188.83 K        5.30 μs   ±246.56%        4.60 μs        9.03 μs
enum                    188.42 K        5.31 μs   ±167.39%        4.63 μs       11.14 μs

Comparison: 
updated_with_index      188.83 K
enum                    188.42 K - 1.00x slower +0.0116 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         4.32 KB
enum                       4.80 KB - 1.11x memory usage +0.48 KB

**All measurements for memory usage were the same**

##### With input Stream D of 50 #####
Name                         ips        average  deviation         median         99th %
enum                     50.07 K       19.97 μs    ±25.41%       18.81 μs       37.58 μs
updated_with_index       45.90 K       21.79 μs    ±28.78%       20.57 μs       42.55 μs

Comparison: 
enum                     50.07 K
updated_with_index       45.90 K - 1.09x slower +1.81 μs

Memory usage statistics:

Name                  Memory usage
enum                      21.05 KB
updated_with_index        18.84 KB - 0.89x memory usage -2.21875 KB

**All measurements for memory usage were the same**

##### With input Stream E of 100 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       26.13 K       38.27 μs    ±14.74%       36.83 μs       56.19 μs
enum                     25.64 K       39.01 μs    ±14.72%       37.69 μs       58.08 μs

Comparison: 
updated_with_index       26.13 K
enum                     25.64 K - 1.02x slower +0.74 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        36.65 KB
enum                      41.37 KB - 1.13x memory usage +4.72 KB

**All measurements for memory usage were the same**

##### With input Stream F of 500 #####
Name                         ips        average  deviation         median         99th %
enum                      4.91 K      203.71 μs    ±12.34%      198.34 μs      318.78 μs
updated_with_index        4.50 K      222.04 μs    ±21.67%      206.50 μs      385.24 μs

Comparison: 
enum                      4.91 K
updated_with_index        4.50 K - 1.09x slower +18.33 μs

Memory usage statistics:

Name                  Memory usage
enum                     200.51 KB
updated_with_index       186.27 KB - 0.93x memory usage -14.23438 KB

**All measurements for memory usage were the same**

##### With input Stream G of 1000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        2.57 K      389.57 μs     ±8.28%      377.07 μs      518.69 μs
enum                      2.42 K      413.93 μs    ±10.36%      399.83 μs      600.80 μs

Comparison: 
updated_with_index        2.57 K
enum                      2.42 K - 1.06x slower +24.37 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index       368.32 KB
enum                     400.32 KB - 1.09x memory usage +32 KB

**All measurements for memory usage were the same**

##### With input Stream H of 5000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        509.85        1.96 ms     ±7.03%        1.91 ms        2.45 ms
enum                      483.03        2.07 ms     ±6.92%        2.04 ms        2.61 ms

Comparison: 
updated_with_index        509.85
enum                      483.03 - 1.06x slower +0.109 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         1.76 MB
enum                       1.91 MB - 1.09x memory usage +0.150 MB

**All measurements for memory usage were the same**

##### With input Stream I of 10000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        250.39        3.99 ms     ±3.50%        3.97 ms        4.46 ms
enum                      229.30        4.36 ms     ±6.42%        4.38 ms        5.22 ms

Comparison: 
updated_with_index        250.39
enum                      229.30 - 1.09x slower +0.37 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         3.55 MB
enum                       3.92 MB - 1.10x memory usage +0.37 MB

**All measurements for memory usage were the same**

##### With input Stream J of 50000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index         49.21       20.32 ms     ±2.24%       20.39 ms       21.35 ms
enum                       46.34       21.58 ms     ±1.54%       21.55 ms       23.00 ms

Comparison: 
updated_with_index         49.21
enum                       46.34 - 1.06x slower +1.26 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index        17.55 MB
enum                      19.30 MB - 1.10x memory usage +1.75 MB

**All measurements for memory usage were the same**

##### With input Stream K of 100000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index         24.87       40.20 ms     ±3.05%       40.32 ms       42.77 ms
enum                       21.60       46.29 ms     ±5.67%       46.12 ms       52.29 ms

Comparison: 
updated_with_index         24.87
enum                       21.60 - 1.15x slower +6.09 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index        35.76 MB
enum                      38.80 MB - 1.09x memory usage +3.05 MB

**All measurements for memory usage were the same**

##### With input Stream L of 500000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index          3.80      263.33 ms    ±11.10%      256.32 ms      313.38 ms
enum                        3.46      289.38 ms     ±4.83%      288.98 ms      313.18 ms

Comparison: 
updated_with_index          3.80
enum                        3.46 - 1.10x slower +26.05 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index       180.60 MB
enum                     195.95 MB - 1.09x memory usage +15.36 MB

**All measurements for memory usage were the same**

##### With input Stream M of 1000000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index          1.79      559.53 ms     ±3.46%      555.11 ms      591.96 ms
enum                        1.66      600.91 ms     ±7.14%      593.44 ms      647.01 ms

Comparison: 
updated_with_index          1.79
enum                        1.66 - 1.07x slower +41.38 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index       361.28 MB
enum                     393.71 MB - 1.09x memory usage +32.43 MB

**All measurements for memory usage were the same**
```
