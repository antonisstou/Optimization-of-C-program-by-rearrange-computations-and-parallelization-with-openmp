We use LIF(Leaky Integrate-and-Fire) model to show how program's performance can be improved making appropriate
code suffling and changes. Finaly we increase performance using openmp in order to run the program on more cpu
cores in parallel.

1. The process start given the C program lif1d.c
   -Compile using the following command: gcc -O3 -Wall -Wextra -o lif1d lif1d.c
   -Run the executable as ./lif1d --n N --r R , where N: number of neyrons and R: number of neighbours
   we run for --n 1000 --r 350
              --n 2000 --r 700
              --n 3000 --r 1000
              --n 4000 --r 1300
              --n 5000 --r 1600
   pairs and take the execution time.

2. 