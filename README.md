# WithIndex

Benchmarks of existing `Enum.with_index/2` vs a new implementation.

## Installation

``` bash
mix deps.get
mix run -e "WithIndex.Benchmark.with_index_for_list()"
```

Other benchmarks
- `WithIndex.Benchmark.with_index_for_map()`
- `WithIndex.Benchmark.with_index_for_mapset()`
- `WithIndex.Benchmark.with_index_for_range()`
- `WithIndex.Benchmark.with_index_for_stream()`

## Benchmarking Synopsis

- List: The updated function is approximately twice as fast and uses half the memory.
- Map: The updated function is approximately twice as fast and uses half the memory.
- MapSet: The updated function is moderately faster and uses moderately less memory.
- Range: The updated function is moderately faster and uses moderately less memory.
- Stream: The updated function is minimally faster and uses minimally less memory.

## List Benchmarks

```
##### With input List A of 1 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      100.30 M        9.97 ns ±45267.05%           0 ns           0 ns
enum                     17.85 M       56.03 ns ±25332.20%           0 ns           0 ns

Comparison: 
updated_with_index      100.30 M
enum                     17.85 M - 5.62x slower +46.05 ns

Memory usage statistics:

Name                  Memory usage
updated_with_index            40 B
enum                         112 B - 2.80x memory usage +72 B

**All measurements for memory usage were the same**

##### With input List B of 5 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       58.27 M       17.16 ns ±88489.90%           0 ns           0 ns
enum                      8.87 M      112.79 ns ±26882.04%           0 ns           0 ns

Comparison: 
updated_with_index       58.27 M
enum                      8.87 M - 6.57x slower +95.63 ns

Memory usage statistics:

Name                  Memory usage
updated_with_index           200 B
enum                         464 B - 2.32x memory usage +264 B

**All measurements for memory usage were the same**

##### With input List C of 10 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        6.55 M      152.63 ns ±24794.70%           0 ns           0 ns
enum                      6.14 M      162.75 ns ±21553.63%           0 ns        1000 ns

Comparison: 
updated_with_index        6.55 M
enum                      6.14 M - 1.07x slower +10.12 ns

Memory usage statistics:

Name                  Memory usage
updated_with_index           400 B
enum                         904 B - 2.26x memory usage +504 B

**All measurements for memory usage were the same**

##### With input List D of 50 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      977.08 K        1.02 μs  ±3010.81%           1 μs           2 μs
enum                    343.10 K        2.91 μs   ±540.40%           3 μs           6 μs

Comparison: 
updated_with_index      977.08 K
enum                    343.10 K - 2.85x slower +1.89 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         1.95 KB
enum                       4.32 KB - 2.21x memory usage +2.37 KB

**All measurements for memory usage were the same**

##### With input List E of 100 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      378.71 K        2.64 μs   ±451.84%           2 μs           5 μs
enum                    159.95 K        6.25 μs   ±205.25%           6 μs          15 μs

Comparison: 
updated_with_index      378.71 K
enum                    159.95 K - 2.37x slower +3.61 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         3.91 KB
enum                       8.62 KB - 2.21x memory usage +4.71 KB

**All measurements for memory usage were the same**

##### With input List F of 500 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       64.04 K       15.62 μs   ±157.65%          15 μs          37 μs
enum                     29.34 K       34.09 μs   ±146.80%          32 μs          74 μs

Comparison: 
updated_with_index       64.04 K
enum                     29.34 K - 2.18x slower +18.47 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        19.53 KB
enum                      42.99 KB - 2.20x memory usage +23.46 KB

**All measurements for memory usage were the same**

##### With input List G of 1000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       32.01 K       31.24 μs    ±73.94%          29 μs          70 μs
enum                     14.16 K       70.61 μs   ±103.98%          69 μs         130 μs

Comparison: 
updated_with_index       32.01 K
enum                     14.16 K - 2.26x slower +39.37 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        39.06 KB
enum                      85.96 KB - 2.20x memory usage +46.90 KB

**All measurements for memory usage were the same**

##### With input List H of 5000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        6.25 K      159.93 μs    ±54.82%         151 μs      268.05 μs
enum                      2.82 K      354.44 μs    ±46.80%         349 μs      533.56 μs

Comparison: 
updated_with_index        6.25 K
enum                      2.82 K - 2.22x slower +194.51 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index       195.31 KB
enum                     429.71 KB - 2.20x memory usage +234.40 KB

**All measurements for memory usage were the same**

##### With input List I of 10000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        2.96 K      337.88 μs    ±49.32%         328 μs      569.83 μs
enum                      1.35 K      742.43 μs    ±35.53%         718 μs     1060.22 μs

Comparison: 
updated_with_index        2.96 K
enum                      1.35 K - 2.20x slower +404.55 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index       390.63 KB
enum                     859.40 KB - 2.20x memory usage +468.77 KB

**All measurements for memory usage were the same**

##### With input List J of 50000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        497.12        2.01 ms    ±25.37%        1.93 ms        2.85 ms
enum                      219.35        4.56 ms    ±17.84%        4.61 ms        5.80 ms

Comparison: 
updated_with_index        497.12
enum                      219.35 - 2.27x slower +2.55 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         1.91 MB
enum                       4.20 MB - 2.20x memory usage +2.29 MB

**All measurements for memory usage were the same**

##### With input List K of 100000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        199.81        5.00 ms    ±15.69%        4.88 ms        6.15 ms
enum                      121.05        8.26 ms    ±18.47%           8 ms       11.09 ms

Comparison: 
updated_with_index        199.81
enum                      121.05 - 1.65x slower +3.26 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         3.81 MB
enum                       8.39 MB - 2.20x memory usage +4.58 MB

**All measurements for memory usage were the same**

##### With input List L of 500000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index         37.49       26.67 ms    ±24.32%       25.63 ms       69.79 ms
enum                       15.34       65.20 ms    ±22.36%       62.81 ms      119.55 ms

Comparison: 
updated_with_index         37.49
enum                       15.34 - 2.44x slower +38.53 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index        19.07 MB
enum                      41.96 MB - 2.20x memory usage +22.89 MB

**All measurements for memory usage were the same**

##### With input List M of 1000000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index         13.22       75.64 ms    ±40.28%       66.24 ms      161.92 ms
enum                        6.33      157.89 ms     ±4.00%      157.50 ms      179.37 ms

Comparison: 
updated_with_index         13.22
enum                        6.33 - 2.09x slower +82.25 ms

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
updated_with_index        9.45 M      105.80 ns ±22404.18%           0 ns           0 ns
enum                      5.00 M      199.82 ns ±23988.16%           0 ns           0 ns

Comparison: 
updated_with_index        9.45 M
enum                      5.00 M - 1.89x slower +94.01 ns

Memory usage statistics:

Name                  Memory usage
updated_with_index            80 B
enum                         320 B - 4.00x memory usage +240 B

**All measurements for memory usage were the same**

##### With input Map B of 5 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        6.83 M      146.35 ns ±26988.54%           0 ns           0 ns
enum                      2.11 M      474.38 ns  ±9548.92%           0 ns        1000 ns

Comparison: 
updated_with_index        6.83 M
enum                      2.11 M - 3.24x slower +328.03 ns

Memory usage statistics:

Name                  Memory usage
updated_with_index           400 B
enum                         976 B - 2.44x memory usage +576 B

**All measurements for memory usage were the same**

##### With input Map C of 10 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        7.44 M       0.134 μs  ±9809.04%           0 μs           0 μs
enum                      0.85 M        1.17 μs  ±2894.49%           1 μs           3 μs

Comparison: 
updated_with_index        7.44 M
enum                      0.85 M - 8.70x slower +1.04 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         0.78 KB
enum                       1.73 KB - 2.22x memory usage +0.95 KB

**All measurements for memory usage were the same**

##### With input Map D of 50 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      576.20 K        1.74 μs  ±5071.68%           1 μs           3 μs
enum                    137.84 K        7.25 μs   ±639.12%           7 μs          20 μs

Comparison: 
updated_with_index      576.20 K
enum                    137.84 K - 4.18x slower +5.52 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         2.69 KB
enum                          8 KB - 2.98x memory usage +5.31 KB

**All measurements for memory usage were the same**

##### With input Map E of 100 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      280.03 K        3.57 μs  ±1252.67%           3 μs           7 μs
enum                     68.33 K       14.64 μs   ±429.91%          14 μs          35 μs

Comparison: 
updated_with_index      280.03 K
enum                     68.33 K - 4.10x slower +11.06 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         5.19 KB
enum                      13.69 KB - 2.64x memory usage +8.50 KB

**All measurements for memory usage were the same**

##### With input Map F of 500 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       48.39 K       20.66 μs   ±552.95%          19 μs          46 μs
enum                     14.30 K       69.93 μs   ±284.56%          64 μs         130 μs

Comparison: 
updated_with_index       48.39 K
enum                     14.30 K - 3.38x slower +49.26 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        20.81 KB
enum                      63.69 KB - 3.06x memory usage +42.88 KB

**All measurements for memory usage were the same**

##### With input Map G of 1000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       23.85 K       41.94 μs   ±232.85%          38 μs          89 μs
enum                      6.70 K      149.36 μs   ±196.00%         145 μs         235 μs

Comparison: 
updated_with_index       23.85 K
enum                      6.70 K - 3.56x slower +107.42 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        40.49 KB
enum                     151.23 KB - 3.73x memory usage +110.74 KB

**All measurements for memory usage were the same**

##### With input Map H of 5000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        4.32 K      231.69 μs    ±93.21%         228 μs         387 μs
enum                      1.29 K      777.90 μs    ±52.89%         766 μs     1069.63 μs

Comparison: 
updated_with_index        4.32 K
enum                      1.29 K - 3.36x slower +546.21 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index       351.88 KB
enum                     734.44 KB - 2.09x memory usage +382.55 KB

**All measurements for memory usage were the same**

##### With input Map I of 10000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        2.03 K        0.49 ms    ±67.98%        0.47 ms        0.74 ms
enum                      0.61 K        1.63 ms    ±36.11%        1.58 ms        2.12 ms

Comparison: 
updated_with_index        2.03 K
enum                      0.61 K - 3.30x slower +1.13 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         0.69 MB
enum                       1.47 MB - 2.13x memory usage +0.78 MB

**All measurements for memory usage were the same**

##### With input Map J of 50000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        360.13        2.78 ms    ±34.52%        2.54 ms        4.31 ms
enum                      105.59        9.47 ms    ±19.36%        9.23 ms       13.28 ms

Comparison: 
updated_with_index        360.13
enum                      105.59 - 3.41x slower +6.69 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         3.70 MB
enum                       7.54 MB - 2.03x memory usage +3.83 MB

**All measurements for memory usage were the same**

##### With input Map K of 100000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        124.55        8.03 ms    ±39.37%        8.30 ms       12.62 ms
enum                       58.96       16.96 ms    ±19.80%       16.67 ms       22.43 ms

Comparison: 
updated_with_index        124.55
enum                       58.96 - 2.11x slower +8.93 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         7.60 MB
enum                      15.22 MB - 2.00x memory usage +7.62 MB

**All measurements for memory usage were the same**

##### With input Map L of 500000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index         23.97       41.72 ms    ±35.23%       38.27 ms      143.21 ms
enum                        8.23      121.48 ms    ±27.57%      106.29 ms      214.65 ms

Comparison: 
updated_with_index         23.97
enum                        8.23 - 2.91x slower +79.76 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index        37.99 MB
enum                      74.74 MB - 1.97x memory usage +36.75 MB

**All measurements for memory usage were the same**

##### With input Map M of 1000000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index          9.44      105.98 ms    ±32.52%      103.37 ms      213.64 ms
enum                        3.74      267.15 ms    ±20.68%      256.49 ms      389.11 ms

Comparison: 
updated_with_index          9.44
enum                        3.74 - 2.52x slower +161.17 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index        76.24 MB
enum                     150.75 MB - 1.98x memory usage +74.51 MB

**All measurements for memory usage were the same**
```

## MapSet Benchmarks

```
##### With input MapSet A of 1 #####
Name                         ips        average  deviation         median         99th %
enum                     36.08 M       27.71 ns±124123.54%           0 ns           0 ns
updated_with_index       25.36 M       39.43 ns ±29487.23%           0 ns           0 ns

Comparison: 
enum                     36.08 M
updated_with_index       25.36 M - 1.42x slower +11.72 ns

Memory usage statistics:

Name                  Memory usage
enum                         336 B
updated_with_index           176 B - 0.52x memory usage -160 B

**All measurements for memory usage were the same**

##### With input MapSet B of 5 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        7.19 M      139.12 ns ±10649.09%           0 ns        1000 ns
enum                      3.64 M      274.84 ns ±13693.96%           0 ns        1000 ns

Comparison: 
updated_with_index        7.19 M
enum                      3.64 M - 1.98x slower +135.72 ns

Memory usage statistics:

Name                  Memory usage
updated_with_index           640 B
enum                         928 B - 1.45x memory usage +288 B

**All measurements for memory usage were the same**

##### With input MapSet C of 10 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        1.84 M      543.12 ns  ±8705.70%           0 ns        1000 ns
enum                      1.21 M      824.43 ns  ±4851.39%        1000 ns        1000 ns

Comparison: 
updated_with_index        1.84 M
enum                      1.21 M - 1.52x slower +281.31 ns

Memory usage statistics:

Name                  Memory usage
updated_with_index         1.17 KB
enum                       1.61 KB - 1.37x memory usage +0.44 KB

**All measurements for memory usage were the same**

##### With input MapSet D of 50 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      223.39 K        4.48 μs   ±696.38%           4 μs           5 μs
enum                    180.50 K        5.54 μs   ±671.77%           5 μs           8 μs

Comparison: 
updated_with_index      223.39 K
enum                    180.50 K - 1.24x slower +1.06 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         5.05 KB
enum                       7.06 KB - 1.40x memory usage +2.02 KB

**All measurements for memory usage were the same**

##### With input MapSet E of 100 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      102.84 K        9.72 μs   ±680.03%           9 μs          13 μs
enum                     87.10 K       11.48 μs   ±396.61%          11 μs          16 μs

Comparison: 
updated_with_index      102.84 K
enum                     87.10 K - 1.18x slower +1.76 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        11.02 KB
enum                      11.47 KB - 1.04x memory usage +0.45 KB

**All measurements for memory usage were the same**

##### With input MapSet F of 500 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       20.44 K       48.92 μs   ±272.19%          48 μs          85 μs
enum                     17.00 K       58.81 μs   ±269.13%          56 μs         101 μs

Comparison: 
updated_with_index       20.44 K
enum                     17.00 K - 1.20x slower +9.88 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        44.28 KB
enum                      62.70 KB - 1.42x memory usage +18.42 KB

**All measurements for memory usage were the same**

##### With input MapSet G of 1000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       10.03 K       99.73 μs   ±190.84%          97 μs         147 μs
enum                      8.42 K      118.83 μs   ±171.32%         114 μs         174 μs

Comparison: 
updated_with_index       10.03 K
enum                      8.42 K - 1.19x slower +19.09 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        93.83 KB
enum                     115.27 KB - 1.23x memory usage +21.44 KB

**All measurements for memory usage were the same**

##### With input MapSet H of 5000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        1.93 K      516.92 μs    ±51.52%         506 μs         655 μs
enum                      1.64 K      610.32 μs    ±50.10%         588 μs         807 μs

Comparison: 
updated_with_index        1.93 K
enum                      1.64 K - 1.18x slower +93.40 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index       468.83 KB
enum                     625.20 KB - 1.33x memory usage +156.38 KB

**All measurements for memory usage were the same**

##### With input MapSet I of 10000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        948.59        1.05 ms    ±37.00%        1.03 ms        1.31 ms
enum                      735.97        1.36 ms    ±33.84%        1.34 ms        1.65 ms

Comparison: 
updated_with_index        948.59
enum                      735.97 - 1.29x slower +0.30 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         0.80 MB
enum                       1.22 MB - 1.52x memory usage +0.42 MB

**All measurements for memory usage were the same**

##### With input MapSet J of 50000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        176.86        5.65 ms    ±24.84%        5.41 ms       11.79 ms
enum                      140.13        7.14 ms    ±21.54%        6.81 ms        9.27 ms

Comparison: 
updated_with_index        176.86
enum                      140.13 - 1.26x slower +1.48 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         4.58 MB
enum                       6.10 MB - 1.33x memory usage +1.53 MB

**All measurements for memory usage were the same**

##### With input MapSet K of 100000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index         88.23       11.33 ms    ±13.66%       11.16 ms       14.39 ms
enum                       62.03       16.12 ms    ±32.14%       15.51 ms       48.44 ms

Comparison: 
updated_with_index         88.23
enum                       62.03 - 1.42x slower +4.79 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         8.64 MB
enum                      12.21 MB - 1.41x memory usage +3.56 MB

**All measurements for memory usage were the same**

##### With input MapSet L of 500000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index         11.23       89.06 ms    ±10.80%       89.35 ms      132.46 ms
enum                        9.00      111.15 ms    ±20.57%      106.39 ms      179.22 ms

Comparison: 
updated_with_index         11.23
enum                        9.00 - 1.25x slower +22.09 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index        45.78 MB
enum                      60.43 MB - 1.32x memory usage +14.66 MB

**All measurements for memory usage were the same**

##### With input MapSet M of 1000000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index          6.01      166.46 ms     ±7.36%      165.29 ms      220.19 ms
enum                        4.88      205.06 ms    ±20.93%      197.16 ms      349.18 ms

Comparison: 
updated_with_index          6.01
enum                        4.88 - 1.23x slower +38.60 ms

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
updated_with_index        2.86 M      349.16 ns  ±5954.88%           0 ns        1000 ns
enum                      2.51 M      397.68 ns  ±5027.17%           0 ns        1000 ns

Comparison: 
updated_with_index        2.86 M
enum                      2.51 M - 1.14x slower +48.52 ns

Memory usage statistics:

Name                  Memory usage
updated_with_index            56 B
enum                         192 B - 3.43x memory usage +136 B

**All measurements for memory usage were the same**

##### With input Range B of 5 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        1.55 M      645.62 ns  ±2341.10%        1000 ns        1000 ns
enum                      1.16 M      858.58 ns  ±3798.07%        1000 ns        1000 ns

Comparison: 
updated_with_index        1.55 M
enum                      1.16 M - 1.33x slower +212.97 ns

Memory usage statistics:

Name                  Memory usage
updated_with_index           360 B
enum                         624 B - 1.73x memory usage +264 B

**All measurements for memory usage were the same**

##### With input Range C of 10 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      979.43 K        1.02 μs  ±2328.30%           1 μs           1 μs
enum                    759.51 K        1.32 μs  ±1811.87%           1 μs           2 μs

Comparison: 
updated_with_index      979.43 K
enum                    759.51 K - 1.29x slower +0.30 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         0.70 KB
enum                       1.12 KB - 1.59x memory usage +0.41 KB

**All measurements for memory usage were the same**

##### With input Range D of 50 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      262.87 K        3.80 μs   ±456.24%           4 μs           5 μs
enum                    216.14 K        4.63 μs   ±262.90%           4 μs           6 μs

Comparison: 
updated_with_index      262.87 K
enum                    216.14 K - 1.22x slower +0.82 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         3.52 KB
enum                       4.76 KB - 1.35x memory usage +1.24 KB

**All measurements for memory usage were the same**

##### With input Range E of 100 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      138.14 K        7.24 μs   ±429.32%           7 μs          10 μs
enum                    114.75 K        8.71 μs    ±93.45%           9 μs          13 μs

Comparison: 
updated_with_index      138.14 K
enum                    114.75 K - 1.20x slower +1.48 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         5.59 KB
enum                       8.85 KB - 1.58x memory usage +3.26 KB

**All measurements for memory usage were the same**

##### With input Range F of 500 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       28.24 K       35.41 μs    ±13.22%          34 μs          52 μs
enum                     22.71 K       44.03 μs    ±15.34%          42 μs          64 μs

Comparison: 
updated_with_index       28.24 K
enum                     22.71 K - 1.24x slower +8.63 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        27.48 KB
enum                      50.88 KB - 1.85x memory usage +23.40 KB

**All measurements for memory usage were the same**

##### With input Range G of 1000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       14.10 K       70.93 μs     ±9.76%          71 μs          99 μs
enum                     10.44 K       95.75 μs    ±12.68%          96 μs      150.53 μs

Comparison: 
updated_with_index       14.10 K
enum                     10.44 K - 1.35x slower +24.82 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        60.50 KB
enum                      95.20 KB - 1.57x memory usage +34.70 KB

**All measurements for memory usage were the same**

##### With input Range H of 5000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        2.50 K      399.90 μs     ±6.23%         401 μs      493.31 μs
enum                      1.97 K      507.15 μs    ±15.02%         501 μs      754.64 μs

Comparison: 
updated_with_index        2.50 K
enum                      1.97 K - 1.27x slower +107.25 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index       280.66 KB
enum                     503.96 KB - 1.80x memory usage +223.30 KB

**All measurements for memory usage were the same**

##### With input Range I of 10000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        966.11        1.04 ms    ±13.59%        0.99 ms        1.40 ms
enum                      873.44        1.14 ms    ±13.83%        1.09 ms        1.56 ms

Comparison: 
updated_with_index        966.11
enum                      873.44 - 1.11x slower +0.110 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index       561.42 KB
enum                     881.79 KB - 1.57x memory usage +320.37 KB

**All measurements for memory usage were the same**

##### With input Range J of 50000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        232.48        4.30 ms    ±14.42%        3.97 ms        5.47 ms
enum                      201.15        4.97 ms     ±4.40%        4.90 ms        5.87 ms

Comparison: 
updated_with_index        232.48
enum                      201.15 - 1.16x slower +0.67 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         2.92 MB
enum                       4.87 MB - 1.67x memory usage +1.95 MB

**All measurements for memory usage were the same**

##### With input Range K of 100000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        128.23        7.80 ms     ±6.35%        7.72 ms       10.32 ms
enum                       78.68       12.71 ms     ±4.43%       12.60 ms       16.46 ms

Comparison: 
updated_with_index        128.23
enum                       78.68 - 1.63x slower +4.91 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         6.46 MB
enum                       9.79 MB - 1.52x memory usage +3.33 MB

**All measurements for memory usage were the same**

##### With input Range L of 500000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index         18.05       55.40 ms    ±10.78%       54.68 ms      107.43 ms
enum                       14.18       70.53 ms    ±14.20%       68.43 ms      102.91 ms

Comparison: 
updated_with_index         18.05
enum                       14.18 - 1.27x slower +15.12 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index        34.01 MB
enum                      49.27 MB - 1.45x memory usage +15.26 MB

**All measurements for memory usage were the same**

##### With input Range M of 1000000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index          8.49      117.84 ms    ±19.60%      111.60 ms      223.62 ms
enum                        6.34      157.76 ms    ±17.37%      151.42 ms      251.27 ms

Comparison: 
updated_with_index          8.49
enum                        6.34 - 1.34x slower +39.92 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index        65.25 MB
enum                      96.55 MB - 1.48x memory usage +31.30 MB

**All measurements for memory usage were the same**
```

## Stream Benchmarks

```
##### With input Stream A of 1 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      715.44 K        1.40 μs  ±1441.71%           1 μs           2 μs
enum                    599.19 K        1.67 μs  ±1380.95%           1 μs           2 μs

Comparison: 
updated_with_index      715.44 K
enum                    599.19 K - 1.19x slower +0.27 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index           856 B
enum                        1016 B - 1.19x memory usage +160 B

**All measurements for memory usage were the same**

##### With input Stream B of 5 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      359.10 K        2.78 μs   ±586.55%           3 μs           4 μs
enum                    290.19 K        3.45 μs  ±2024.54%           3 μs           6 μs

Comparison: 
updated_with_index      359.10 K
enum                    290.19 K - 1.24x slower +0.66 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         2.35 KB
enum                       2.63 KB - 1.12x memory usage +0.28 KB

**All measurements for memory usage were the same**

##### With input Stream C of 10 #####
Name                         ips        average  deviation         median         99th %
updated_with_index      216.22 K        4.62 μs   ±348.76%           4 μs           7 μs
enum                    185.35 K        5.40 μs  ±2117.76%           5 μs          11 μs

Comparison: 
updated_with_index      216.22 K
enum                    185.35 K - 1.17x slower +0.77 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index         4.23 KB
enum                       4.66 KB - 1.10x memory usage +0.44 KB

**All measurements for memory usage were the same**

##### With input Stream D of 50 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       55.07 K       18.16 μs    ±48.04%          17 μs          34 μs
enum                     51.81 K       19.30 μs    ±22.98%          18 μs          35 μs

Comparison: 
updated_with_index       55.07 K
enum                     51.81 K - 1.06x slower +1.14 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        18.99 KB
enum                      20.91 KB - 1.10x memory usage +1.92 KB

**All measurements for memory usage were the same**

##### With input Stream E of 100 #####
Name                         ips        average  deviation         median         99th %
updated_with_index       28.16 K       35.51 μs    ±15.15%          34 μs          51 μs
enum                     26.78 K       37.35 μs    ±13.81%          36 μs          56 μs

Comparison: 
updated_with_index       28.16 K
enum                     26.78 K - 1.05x slower +1.84 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index        36.77 KB
enum                      41.23 KB - 1.12x memory usage +4.45 KB

**All measurements for memory usage were the same**

##### With input Stream F of 500 #####
Name                         ips        average  deviation         median         99th %
enum                      4.98 K      200.84 μs    ±12.96%         195 μs         317 μs
updated_with_index        4.71 K      212.20 μs    ±18.60%         208 μs         337 μs

Comparison: 
enum                      4.98 K
updated_with_index        4.71 K - 1.06x slower +11.35 μs

Memory usage statistics:

Name                  Memory usage
enum                     201.57 KB
updated_with_index       187.98 KB - 0.93x memory usage -13.59375 KB

**All measurements for memory usage were the same**

##### With input Stream G of 1000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        2.66 K      376.51 μs    ±12.78%         357 μs         562 μs
enum                      2.40 K      416.06 μs    ±14.01%         395 μs         626 μs

Comparison: 
updated_with_index        2.66 K
enum                      2.40 K - 1.11x slower +39.55 μs

Memory usage statistics:

Name                  Memory usage
updated_with_index       371.02 KB
enum                     401.40 KB - 1.08x memory usage +30.38 KB

**All measurements for memory usage were the same**

##### With input Stream H of 5000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        502.08        1.99 ms     ±8.33%        1.94 ms        2.60 ms
enum                      459.24        2.18 ms    ±10.99%        2.16 ms        2.99 ms

Comparison: 
updated_with_index        502.08
enum                      459.24 - 1.09x slower +0.186 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         1.77 MB
enum                       1.91 MB - 1.08x memory usage +0.139 MB

**All measurements for memory usage were the same**

##### With input Stream I of 10000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index        249.43        4.01 ms     ±5.78%        3.94 ms        4.86 ms
enum                      233.53        4.28 ms     ±7.08%        4.39 ms        4.99 ms

Comparison: 
updated_with_index        249.43
enum                      233.53 - 1.07x slower +0.27 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index         3.54 MB
enum                       3.92 MB - 1.11x memory usage +0.38 MB

**All measurements for memory usage were the same**

##### With input Stream J of 50000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index         49.80       20.08 ms     ±8.96%       20.00 ms       28.96 ms
enum                       44.80       22.32 ms    ±10.54%       21.58 ms       33.27 ms

Comparison: 
updated_with_index         49.80
enum                       44.80 - 1.11x slower +2.24 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index        17.67 MB
enum                      19.30 MB - 1.09x memory usage +1.63 MB

**All measurements for memory usage were the same**

##### With input Stream K of 100000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index         25.07       39.89 ms     ±4.12%       39.82 ms       51.65 ms
enum                       22.07       45.31 ms     ±7.34%       45.19 ms       56.88 ms

Comparison: 
updated_with_index         25.07
enum                       22.07 - 1.14x slower +5.42 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index        35.41 MB
enum                      38.80 MB - 1.10x memory usage +3.39 MB

**All measurements for memory usage were the same**

##### With input Stream L of 500000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index          4.04      247.76 ms    ±10.31%      234.50 ms      291.27 ms
enum                        3.83      261.03 ms     ±7.85%      259.84 ms      299.44 ms

Comparison: 
updated_with_index          4.04
enum                        3.83 - 1.05x slower +13.27 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index       181.35 MB
enum                     195.96 MB - 1.08x memory usage +14.61 MB

**All measurements for memory usage were the same**

##### With input Stream M of 1000000 #####
Name                         ips        average  deviation         median         99th %
updated_with_index          1.93      517.19 ms     ±5.65%      511.64 ms      592.26 ms
enum                        1.82      549.71 ms     ±4.45%      544.72 ms      588.98 ms

Comparison: 
updated_with_index          1.93
enum                        1.82 - 1.06x slower +32.53 ms

Memory usage statistics:

Name                  Memory usage
updated_with_index       362.99 MB
enum                     393.68 MB - 1.08x memory usage +30.69 MB

**All measurements for memory usage were the same**
```
