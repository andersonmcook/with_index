# OTP 23 Benchmarks

```
Operating System: macOS
CPU Information: Intel(R) Core(TM) i7-8750H CPU @ 2.20GHz
Number of Available Cores: 12
Available memory: 16 GB
Elixir 1.10.3
Erlang 23.0-rc3
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
updated_with_index        4.59 M      217.79 ns  ±9918.34%           0 ns        1000 ns
enum                      3.65 M      274.34 ns  ±1261.84%           0 ns        1000 ns

Comparison: 
updated_with_index        4.59 M
enum                      3.65 M - 1.26x slower +56.55 ns

Memory usage statistics:

Name                  Memory usage
updated_with_index            40 B
enum                         112 B - 2.80x memory usage +72 B

**All measurements for memory usage were the same**

##### With input List B of 5 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        2.72 M      367.45 ns  ±7634.86%           0 ns        1000 ns
enum                      1.56 M      639.51 ns  ±5771.39%        1000 ns        1000 ns

Comparison: 
updated_with_index        2.72 M
enum                      1.56 M - 1.74x slower +272.06 ns

Memory usage statistics:

Name                  Memory usage
updated_with_index           200 B
enum                         464 B - 2.32x memory usage +264 B

**All measurements for memory usage were the same**

##### With input List C of 10 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        1.79 M      557.89 ns  ±7124.21%           0 ns        1000 ns
enum                      1.08 M      926.79 ns  ±3480.97%        1000 ns        1000 ns

Comparison: 
updated_with_index        1.79 M
enum                      1.08 M - 1.66x slower +368.90 ns

Memory usage statistics:

Name                  Memory usage
updated_with_index           400 B
enum                         904 B - 2.26x memory usage +504 B

**All measurements for memory usage were the same**

##### With input List D of 50 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      604.26 K        1.65 μs   ±798.30%           2 μs           2 μs
enum                    278.58 K        3.59 μs   ±649.29%           3 μs           4 μs

Comparison: 
updated_with_index      604.26 K
enum                    278.58 K - 2.17x slower +1.93 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         1.95 KB
enum                       4.32 KB - 2.21x memory usage +2.37 KB

**All measurements for memory usage were the same**

##### With input List E of 100 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      311.78 K        3.21 μs  ±1085.90%           3 μs           4 μs
enum                    146.81 K        6.81 μs   ±207.83%           7 μs           8 μs

Comparison: 
updated_with_index      311.78 K
enum                    146.81 K - 2.12x slower +3.60 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         3.91 KB
enum                       8.62 KB - 2.21x memory usage +4.71 KB

**All measurements for memory usage were the same**

##### With input List F of 500 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       65.96 K       15.16 μs   ±106.49%          15 μs          23 μs
enum                     30.96 K       32.30 μs   ±119.38%          31 μs          57 μs

Comparison: 
updated_with_index       65.96 K
enum                     30.96 K - 2.13x slower +17.14 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        19.53 KB
enum                      42.99 KB - 2.20x memory usage +23.46 KB

**All measurements for memory usage were the same**

##### With input List G of 1000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       32.89 K       30.40 μs   ±129.10%          30 μs          56 μs
enum                     15.59 K       64.16 μs    ±34.91%          62 μs          96 μs

Comparison: 
updated_with_index       32.89 K
enum                     15.59 K - 2.11x slower +33.76 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        39.06 KB
enum                      85.96 KB - 2.20x memory usage +46.90 KB

**All measurements for memory usage were the same**

##### With input List H of 5000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        6.43 K      155.56 μs    ±23.07%         150 μs         224 μs
enum                      3.06 K      327.11 μs    ±41.35%         325 μs         430 μs

Comparison: 
updated_with_index        6.43 K
enum                      3.06 K - 2.10x slower +171.54 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index       195.31 KB
enum                     429.71 KB - 2.20x memory usage +234.40 KB

**All measurements for memory usage were the same**

##### With input List I of 10000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        3.14 K      318.76 μs    ±38.85%         306 μs         469 μs
enum                      1.46 K      685.58 μs    ±28.92%         669 μs      923.44 μs

Comparison: 
updated_with_index        3.14 K
enum                      1.46 K - 2.15x slower +366.83 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index       390.63 KB
enum                     859.40 KB - 2.20x memory usage +468.77 KB

**All measurements for memory usage were the same**

##### With input List J of 50000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        580.40        1.72 ms    ±22.25%        1.63 ms        2.48 ms
enum                      240.44        4.16 ms    ±17.56%        4.08 ms        6.09 ms

Comparison: 
updated_with_index        580.40
enum                      240.44 - 2.41x slower +2.44 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         1.91 MB
enum                       4.20 MB - 2.20x memory usage +2.29 MB

**All measurements for memory usage were the same**

##### With input List K of 100000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        242.19        4.13 ms    ±16.24%        4.05 ms        5.37 ms
enum                      134.24        7.45 ms    ±21.70%        7.10 ms       11.07 ms

Comparison: 
updated_with_index        242.19
enum                      134.24 - 1.80x slower +3.32 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         3.81 MB
enum                       8.39 MB - 2.20x memory usage +4.58 MB

**All measurements for memory usage were the same**

##### With input List L of 500000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index         40.18       24.89 ms    ±21.43%       24.35 ms       66.62 ms
enum                       17.37       57.57 ms    ±24.66%       57.14 ms      100.11 ms

Comparison: 
updated_with_index         40.18
enum                       17.37 - 2.31x slower +32.68 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index        19.07 MB
enum                      41.96 MB - 2.20x memory usage +22.89 MB

**All measurements for memory usage were the same**

##### With input List M of 1000000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index         14.46       69.16 ms    ±36.87%       63.56 ms      151.73 ms
enum                        8.14      122.82 ms    ±21.80%      119.54 ms      201.04 ms

Comparison: 
updated_with_index         14.46
enum                        8.14 - 1.78x slower +53.66 ms

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
updated_with_index      755.43 M        1.32 ns±168566.38%           0 ns           0 ns
enum                      7.44 M      134.40 ns ±25569.73%           0 ns           0 ns

Comparison: 
updated_with_index      755.43 M
enum                      7.44 M - 101.53x slower +133.07 ns

Memory usage statistics:

Name                  Memory usage
updated_with_index            80 B
enum                         320 B - 4.00x memory usage +240 B

**All measurements for memory usage were the same**

##### With input Map B of 5 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        9.61 M      104.10 ns ±47175.38%           0 ns           0 ns
enum                      5.47 M      182.89 ns ±30145.67%           0 ns           0 ns

Comparison: 
updated_with_index        9.61 M
enum                      5.47 M - 1.76x slower +78.79 ns

Memory usage statistics:

Name                  Memory usage
updated_with_index           400 B
enum                         976 B - 2.44x memory usage +576 B

**All measurements for memory usage were the same**

##### With input Map C of 10 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       12.00 M       83.34 ns ±42072.11%           0 ns           0 ns
enum                      4.86 M      205.83 ns ±19758.19%           0 ns           0 ns

Comparison: 
updated_with_index       12.00 M
enum                      4.86 M - 2.47x slower +122.48 ns

Memory usage statistics:

Name                  Memory usage
updated_with_index         0.78 KB
enum                       1.73 KB - 2.22x memory usage +0.95 KB

**All measurements for memory usage were the same**

##### With input Map D of 50 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        8.26 M      121.07 ns ±29003.25%           0 ns           0 ns
enum                      5.24 M      190.97 ns ±17205.21%           0 ns           0 ns

Comparison: 
updated_with_index        8.26 M
enum                      5.24 M - 1.58x slower +69.90 ns

Memory usage statistics:

Name                  Memory usage
updated_with_index         2.69 KB
enum                          8 KB - 2.98x memory usage +5.31 KB

**All measurements for memory usage were the same**

##### With input Map E of 100 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       16.12 M      0.0620 μs ±64852.20%           0 μs           0 μs
enum                      0.94 M        1.06 μs ±13591.14%           0 μs           0 μs

Comparison: 
updated_with_index       16.12 M
enum                      0.94 M - 17.16x slower +1.00 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         5.19 KB
enum                      13.69 KB - 2.64x memory usage +8.50 KB

**All measurements for memory usage were the same**

##### With input Map F of 500 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        4.83 M        0.21 μs ±44419.53%           0 μs           0 μs
enum                    0.0754 M       13.27 μs  ±3735.85%           0 μs       75.20 μs

Comparison: 
updated_with_index        4.83 M
enum                    0.0754 M - 64.12x slower +13.06 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        20.81 KB
enum                      63.69 KB - 3.06x memory usage +42.88 KB

**All measurements for memory usage were the same**

##### With input Map G of 1000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        4.08 M        0.25 μs ±30203.40%           0 μs           0 μs
enum                    0.0194 M       51.65 μs   ±492.82%       43.80 μs      120.80 μs

Comparison: 
updated_with_index        4.08 M
enum                    0.0194 M - 210.80x slower +51.40 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        40.49 KB
enum                     151.23 KB - 3.73x memory usage +110.74 KB

**All measurements for memory usage were the same**

##### With input Map H of 5000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        9.09 K      110.04 μs   ±144.35%      102.80 μs      233.80 μs
enum                      1.61 K      621.32 μs    ±50.71%      596.80 μs      828.30 μs

Comparison: 
updated_with_index        9.09 K
enum                      1.61 K - 5.65x slower +511.29 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index       351.88 KB
enum                     734.45 KB - 2.09x memory usage +382.57 KB

**All measurements for memory usage were the same**

##### With input Map I of 10000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        3.07 K        0.33 ms    ±71.93%        0.30 ms        0.57 ms
enum                      0.74 K        1.36 ms    ±31.19%        1.32 ms        1.75 ms

Comparison: 
updated_with_index        3.07 K
enum                      0.74 K - 4.18x slower +1.03 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         0.69 MB
enum                       1.46 MB - 2.12x memory usage +0.77 MB

**All measurements for memory usage were the same**

##### With input Map J of 50000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        456.73        2.19 ms    ±31.36%        2.00 ms        3.43 ms
enum                      118.27        8.46 ms    ±15.38%        8.16 ms       10.63 ms

Comparison: 
updated_with_index        456.73
enum                      118.27 - 3.86x slower +6.27 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         3.70 MB
enum                       7.59 MB - 2.05x memory usage +3.88 MB

**All measurements for memory usage were the same**

##### With input Map K of 100000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        149.78        6.68 ms    ±39.92%        6.59 ms       10.62 ms
enum                       54.22       18.44 ms    ±32.27%       17.61 ms       61.75 ms

Comparison: 
updated_with_index        149.78
enum                       54.22 - 2.76x slower +11.77 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         7.60 MB
enum                      15.20 MB - 2.00x memory usage +7.60 MB

**All measurements for memory usage were the same**

##### With input Map L of 500000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index         26.15       38.24 ms    ±29.23%       37.20 ms      114.60 ms
enum                        9.32      107.31 ms    ±22.15%       98.98 ms      201.42 ms

Comparison: 
updated_with_index         26.15
enum                        9.32 - 2.81x slower +69.07 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index        37.99 MB
enum                      76.00 MB - 2.00x memory usage +38.01 MB

**All measurements for memory usage were the same**

##### With input Map M of 1000000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index         10.57       94.62 ms    ±30.00%       95.12 ms      196.01 ms
enum                        4.76      209.97 ms    ±22.14%      193.58 ms      361.91 ms

Comparison: 
updated_with_index         10.57
enum                        4.76 - 2.22x slower +115.35 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index        76.24 MB
enum                     151.99 MB - 1.99x memory usage +75.75 MB

**All measurements for memory usage were the same**
```

## MapSet Benchmarks

```
##### With input MapSet A of 1 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        7.39 M      135.35 ns ±40384.63%           0 ns           0 ns
enum                      6.41 M      155.89 ns ±25647.40%           0 ns           0 ns

Comparison: 
updated_with_index        7.39 M
enum                      6.41 M - 1.15x slower +20.55 ns

Memory usage statistics:

Name                  Memory usage
updated_with_index           176 B
enum                         336 B - 1.91x memory usage +160 B

**All measurements for memory usage were the same**

##### With input MapSet B of 5 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        6.71 M      149.04 ns ±10552.12%           0 ns        1000 ns
enum                      3.35 M      298.31 ns ±10937.28%           0 ns        1000 ns

Comparison: 
updated_with_index        6.71 M
enum                      3.35 M - 2.00x slower +149.27 ns

Memory usage statistics:

Name                  Memory usage
updated_with_index           640 B
enum                         928 B - 1.45x memory usage +288 B

**All measurements for memory usage were the same**

##### With input MapSet C of 10 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        1.78 M      561.60 ns  ±7997.79%           0 ns        1000 ns
enum                      1.20 M      832.11 ns  ±4496.74%        1000 ns        1000 ns

Comparison: 
updated_with_index        1.78 M
enum                      1.20 M - 1.48x slower +270.52 ns

Memory usage statistics:

Name                  Memory usage
updated_with_index         1.17 KB
enum                       1.61 KB - 1.37x memory usage +0.44 KB

**All measurements for memory usage were the same**

##### With input MapSet D of 50 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      224.72 K        4.45 μs   ±643.96%           4 μs           5 μs
enum                    167.82 K        5.96 μs   ±538.08%           6 μs           9 μs

Comparison: 
updated_with_index      224.72 K
enum                    167.82 K - 1.34x slower +1.51 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         5.05 KB
enum                       7.05 KB - 1.40x memory usage +2 KB

**All measurements for memory usage were the same**

##### With input MapSet E of 100 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      102.26 K        9.78 μs   ±704.56%           9 μs          14 μs
enum                     84.45 K       11.84 μs   ±648.79%          11 μs          19 μs

Comparison: 
updated_with_index      102.26 K
enum                     84.45 K - 1.21x slower +2.06 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        11.02 KB
enum                      11.47 KB - 1.04x memory usage +0.45 KB

**All measurements for memory usage were the same**

##### With input MapSet F of 500 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       18.78 K       53.24 μs   ±198.22%          50 μs          98 μs
enum                     16.14 K       61.94 μs   ±229.30%          60 μs          97 μs

Comparison: 
updated_with_index       18.78 K
enum                     16.14 K - 1.16x slower +8.70 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        44.28 KB
enum                      62.70 KB - 1.42x memory usage +18.42 KB

**All measurements for memory usage were the same**

##### With input MapSet G of 1000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        8.93 K      112.03 μs   ±193.76%         102 μs         178 μs
enum                      7.95 K      125.76 μs   ±160.33%         121 μs         180 μs

Comparison: 
updated_with_index        8.93 K
enum                      7.95 K - 1.12x slower +13.73 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        93.83 KB
enum                     115.20 KB - 1.23x memory usage +21.38 KB

**All measurements for memory usage were the same**

##### With input MapSet H of 5000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        1.87 K      533.74 μs    ±46.33%         522 μs      712.46 μs
enum                      1.55 K      647.20 μs    ±44.40%         630 μs      878.56 μs

Comparison: 
updated_with_index        1.87 K
enum                      1.55 K - 1.21x slower +113.46 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index       468.83 KB
enum                     625.20 KB - 1.33x memory usage +156.38 KB

**All measurements for memory usage were the same**

##### With input MapSet I of 10000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        875.92        1.14 ms    ±40.57%        1.08 ms        1.59 ms
enum                      744.54        1.34 ms    ±36.49%        1.29 ms        1.95 ms

Comparison: 
updated_with_index        875.92
enum                      744.54 - 1.18x slower +0.20 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         0.80 MB
enum                       1.22 MB - 1.52x memory usage +0.42 MB

**All measurements for memory usage were the same**

##### With input MapSet J of 50000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        180.30        5.55 ms    ±16.58%        5.50 ms        6.63 ms
enum                      143.08        6.99 ms    ±18.79%        6.79 ms        8.52 ms

Comparison: 
updated_with_index        180.30
enum                      143.08 - 1.26x slower +1.44 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         4.58 MB
enum                       6.10 MB - 1.33x memory usage +1.53 MB

**All measurements for memory usage were the same**

##### With input MapSet K of 100000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index         85.73       11.66 ms    ±13.84%       11.47 ms       13.44 ms
enum                       67.16       14.89 ms    ±26.99%       14.25 ms       33.39 ms

Comparison: 
updated_with_index         85.73
enum                       67.16 - 1.28x slower +3.23 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         8.64 MB
enum                      12.21 MB - 1.41x memory usage +3.56 MB

**All measurements for memory usage were the same**

##### With input MapSet L of 500000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index         11.60       86.23 ms    ±16.45%       84.36 ms      157.03 ms
enum                        9.85      101.56 ms    ±19.88%       96.11 ms      163.80 ms

Comparison: 
updated_with_index         11.60
enum                        9.85 - 1.18x slower +15.32 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index        45.78 MB
enum                      60.44 MB - 1.32x memory usage +14.66 MB

**All measurements for memory usage were the same**

##### With input MapSet M of 1000000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index          5.93      168.58 ms     ±7.27%      168.76 ms      219.66 ms
enum                        4.67      214.20 ms    ±17.03%      207.01 ms      293.54 ms

Comparison: 
updated_with_index          5.93
enum                        4.67 - 1.27x slower +45.62 ms

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
updated_with_index        2.98 M      335.36 ns  ±6121.87%           0 ns        1000 ns
enum                      2.44 M      410.53 ns  ±5277.42%           0 ns        1000 ns

Comparison: 
updated_with_index        2.98 M
enum                      2.44 M - 1.22x slower +75.17 ns

Memory usage statistics:

Name                  Memory usage
updated_with_index            56 B
enum                         192 B - 3.43x memory usage +136 B

**All measurements for memory usage were the same**

##### With input Range B of 5 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        1.54 M      648.78 ns  ±3988.42%        1000 ns        1000 ns
enum                      1.14 M      879.36 ns  ±3709.70%        1000 ns        1000 ns

Comparison: 
updated_with_index        1.54 M
enum                      1.14 M - 1.36x slower +230.58 ns

Memory usage statistics:

Name                  Memory usage
updated_with_index           360 B
enum                         624 B - 1.73x memory usage +264 B

**All measurements for memory usage were the same**

##### With input Range C of 10 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      970.53 K        1.03 μs  ±2005.39%           1 μs           2 μs
enum                    780.63 K        1.28 μs  ±2196.03%           1 μs           2 μs

Comparison: 
updated_with_index      970.53 K
enum                    780.63 K - 1.24x slower +0.25 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         0.70 KB
enum                       1.12 KB - 1.59x memory usage +0.41 KB

**All measurements for memory usage were the same**

##### With input Range D of 50 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      261.63 K        3.82 μs   ±451.95%           4 μs           5 μs
enum                    210.64 K        4.75 μs   ±267.17%           5 μs           7 μs

Comparison: 
updated_with_index      261.63 K
enum                    210.64 K - 1.24x slower +0.93 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         3.52 KB
enum                       4.74 KB - 1.35x memory usage +1.23 KB

**All measurements for memory usage were the same**

##### With input Range E of 100 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      137.95 K        7.25 μs   ±116.87%           7 μs          14 μs
enum                    106.60 K        9.38 μs    ±83.76%           9 μs          16 μs

Comparison: 
updated_with_index      137.95 K
enum                    106.60 K - 1.29x slower +2.13 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         5.59 KB
enum                       8.84 KB - 1.58x memory usage +3.24 KB

**All measurements for memory usage were the same**

##### With input Range F of 500 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       28.75 K       34.78 μs    ±15.15%          33 μs          52 μs
enum                     21.80 K       45.88 μs    ±14.13%          44 μs          66 μs

Comparison: 
updated_with_index       28.75 K
enum                     21.80 K - 1.32x slower +11.10 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        27.47 KB
enum                      50.88 KB - 1.85x memory usage +23.41 KB

**All measurements for memory usage were the same**

##### With input Range G of 1000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       14.33 K       69.77 μs    ±11.63%          69 μs         106 μs
enum                      9.77 K      102.40 μs    ±12.43%         101 μs         156 μs

Comparison: 
updated_with_index       14.33 K
enum                      9.77 K - 1.47x slower +32.64 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        60.47 KB
enum                      95.18 KB - 1.57x memory usage +34.71 KB

**All measurements for memory usage were the same**

##### With input Range H of 5000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        2.60 K      384.77 μs     ±7.97%         384 μs      502.42 μs
enum                      1.90 K      527.32 μs    ±14.34%         530 μs         778 μs

Comparison: 
updated_with_index        2.60 K
enum                      1.90 K - 1.37x slower +142.55 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index       280.66 KB
enum                     503.93 KB - 1.80x memory usage +223.27 KB

**All measurements for memory usage were the same**

##### With input Range I of 10000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        1.03 K        0.97 ms    ±14.09%        0.90 ms        1.31 ms
enum                      0.79 K        1.27 ms    ±23.61%        1.18 ms        2.44 ms

Comparison: 
updated_with_index        1.03 K
enum                      0.79 K - 1.31x slower +0.30 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index       561.41 KB
enum                     881.77 KB - 1.57x memory usage +320.37 KB

**All measurements for memory usage were the same**

##### With input Range J of 50000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        238.03        4.20 ms    ±14.33%        3.86 ms        5.33 ms
enum                      180.84        5.53 ms    ±10.21%        5.35 ms        7.42 ms

Comparison: 
updated_with_index        238.03
enum                      180.84 - 1.32x slower +1.33 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         2.92 MB
enum                       4.87 MB - 1.67x memory usage +1.96 MB

**All measurements for memory usage were the same**

##### With input Range K of 100000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        130.29        7.68 ms     ±6.02%        7.55 ms        9.25 ms
enum                       75.28       13.28 ms     ±7.60%       12.91 ms       16.30 ms

Comparison: 
updated_with_index        130.29
enum                       75.28 - 1.73x slower +5.61 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         6.46 MB
enum                       9.79 MB - 1.52x memory usage +3.33 MB

**All measurements for memory usage were the same**

##### With input Range L of 500000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index         17.73       56.41 ms    ±14.73%       53.39 ms       97.41 ms
enum                       12.29       81.37 ms    ±15.54%       81.85 ms      116.68 ms

Comparison: 
updated_with_index         17.73
enum                       12.29 - 1.44x slower +24.96 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index        34.02 MB
enum                      49.45 MB - 1.45x memory usage +15.44 MB

**All measurements for memory usage were the same**

##### With input Range M of 1000000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index          9.31      107.35 ms    ±15.19%      103.64 ms      201.68 ms
enum                        6.89      145.08 ms    ±16.36%      140.85 ms      209.80 ms

Comparison: 
updated_with_index          9.31
enum                        6.89 - 1.35x slower +37.72 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index        65.26 MB
enum                      97.84 MB - 1.50x memory usage +32.59 MB

**All measurements for memory usage were the same**
```

## Stream Benchmarks

```
##### With input Stream A of 1 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      679.98 K        1.47 μs  ±1453.78%        0.98 μs        1.98 μs
enum                    651.86 K        1.53 μs  ±1551.87%        0.98 μs        1.98 μs

Comparison: 
updated_with_index      679.98 K
enum                    651.86 K - 1.04x slower +0.0634 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index           856 B
enum                        1016 B - 1.19x memory usage +160 B

**All measurements for memory usage were the same**

##### With input Stream B of 5 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      356.89 K        2.80 μs   ±496.64%        2.98 μs        3.98 μs
enum                    329.63 K        3.03 μs   ±687.59%        2.98 μs        3.98 μs

Comparison: 
updated_with_index      356.89 K
enum                    329.63 K - 1.08x slower +0.23 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         2.35 KB
enum                       2.63 KB - 1.12x memory usage +0.28 KB

**All measurements for memory usage were the same**

##### With input Stream C of 10 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      215.39 K        4.64 μs   ±337.85%        3.98 μs        5.98 μs
enum                    204.52 K        4.89 μs   ±259.29%        4.98 μs        6.98 μs

Comparison: 
updated_with_index      215.39 K
enum                    204.52 K - 1.05x slower +0.25 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         4.23 KB
enum                       4.66 KB - 1.10x memory usage +0.44 KB

**All measurements for memory usage were the same**

##### With input Stream D of 50 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       53.71 K       18.62 μs    ±30.26%       17.98 μs       33.98 μs
enum                     50.50 K       19.80 μs    ±20.79%       18.98 μs       33.98 μs

Comparison: 
updated_with_index       53.71 K
enum                     50.50 K - 1.06x slower +1.18 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        18.98 KB
enum                      20.91 KB - 1.10x memory usage +1.94 KB

**All measurements for memory usage were the same**

##### With input Stream E of 100 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       27.86 K       35.89 μs    ±13.72%       34.98 μs       51.98 μs
enum                     24.47 K       40.87 μs    ±16.74%       38.98 μs       67.98 μs

Comparison: 
updated_with_index       27.86 K
enum                     24.47 K - 1.14x slower +4.98 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        36.77 KB
enum                      41.23 KB - 1.12x memory usage +4.45 KB

**All measurements for memory usage were the same**

##### With input Stream F of 500 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        4.77 K      209.56 μs    ±16.24%      203.98 μs      307.98 μs
enum                      4.73 K      211.58 μs    ±12.80%      203.98 μs      320.96 μs

Comparison: 
updated_with_index        4.77 K
enum                      4.73 K - 1.01x slower +2.02 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index       187.98 KB
enum                     201.54 KB - 1.07x memory usage +13.56 KB

**All measurements for memory usage were the same**

##### With input Stream G of 1000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        2.59 K      385.37 μs    ±10.50%      373.98 μs      553.58 μs
enum                      2.31 K      433.45 μs    ±12.49%      417.98 μs      643.98 μs

Comparison: 
updated_with_index        2.59 K
enum                      2.31 K - 1.12x slower +48.08 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index       369.93 KB
enum                     401.32 KB - 1.08x memory usage +31.39 KB

**All measurements for memory usage were the same**

##### With input Stream H of 5000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        506.59        1.97 ms     ±6.40%        1.94 ms        2.40 ms
enum                      478.66        2.09 ms     ±7.01%        2.07 ms        2.51 ms

Comparison: 
updated_with_index        506.59
enum                      478.66 - 1.06x slower +0.115 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         1.77 MB
enum                       1.91 MB - 1.08x memory usage +0.141 MB

**All measurements for memory usage were the same**

##### With input Stream I of 10000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        253.89        3.94 ms     ±5.26%        3.86 ms        4.47 ms
enum                      232.80        4.30 ms     ±6.41%        4.39 ms        4.90 ms

Comparison: 
updated_with_index        253.89
enum                      232.80 - 1.09x slower +0.36 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         3.53 MB
enum                       3.92 MB - 1.11x memory usage +0.38 MB

**All measurements for memory usage were the same**

##### With input Stream J of 50000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index         47.98       20.84 ms     ±4.07%       20.77 ms       22.94 ms
enum                       46.08       21.70 ms     ±1.41%       21.67 ms       22.82 ms

Comparison: 
updated_with_index         47.98
enum                       46.08 - 1.04x slower +0.86 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index        17.67 MB
enum                      19.30 MB - 1.09x memory usage +1.63 MB

**All measurements for memory usage were the same**

##### With input Stream K of 100000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index         24.84       40.25 ms     ±4.34%       39.94 ms       51.99 ms
enum                       22.03       45.40 ms     ±7.20%       45.33 ms       56.72 ms

Comparison: 
updated_with_index         24.84
enum                       22.03 - 1.13x slower +5.15 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index        35.41 MB
enum                      38.80 MB - 1.10x memory usage +3.39 MB

**All measurements for memory usage were the same**

##### With input Stream L of 500000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index          4.27      234.28 ms     ±6.49%      229.83 ms      278.66 ms
enum                        3.69      271.27 ms     ±7.16%      272.38 ms      313.30 ms

Comparison: 
updated_with_index          4.27
enum                        3.69 - 1.16x slower +36.99 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index       178.59 MB
enum                     195.95 MB - 1.10x memory usage +17.36 MB

**All measurements for memory usage were the same**

##### With input Stream M of 1000000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index          1.81      551.13 ms     ±7.32%      564.31 ms      594.60 ms
enum                        1.78      560.41 ms     ±6.54%      548.19 ms      625.64 ms

Comparison: 
updated_with_index          1.81
enum                        1.78 - 1.02x slower +9.28 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index       363.12 MB
enum                     393.73 MB - 1.08x memory usage +30.62 MB

**All measurements for memory usage were the same**
```
