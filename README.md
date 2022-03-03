We use LIF(Leaky Integrate-and-Fire) model to show how program's performance can be improved making appropriate
code suffling and changes. Finaly we increase performance using openmp in order to run the program on more cpu
cores in parallel.

Serial code.

1. The process start given the C program lif1d.c
   -Compile using the following command: gcc -O3 -Wall -Wextra -o lif1d lif1d.c
   -Run the executable as ./lif1d --n N --r R , where N: number of neurons and R: number of neighbors
   we run for --n 1000 --r 350
              --n 2000 --r 700
              --n 3000 --r 1000
              --n 4000 --r 1300
              --n 5000 --r 1600
   pairs and take the execution time.

2. Afterward in file 1a_lif1d.c the for loop(line 329, file lif1d.c), where network elements is updated and u[i] = 0 if u[i] > uth is set 
is removed and it is replaced by:

   temp = u;
   u = uplus;
   uplus = temp;

with these commands pointers u and uplus change address using the pointer temp.

3. In file 1b_lif1d.c the code performance gets more improvement by reorganizing the
basic calculation.


So     ∑σij•[uj(t) – ui(t)] = ∑σij•uj(t) – ui(t)•∑σij,

where the second part is constant and it can computed one time out of the three fro loops
decrease the amount of computations per iteration.

4. After doing the previous step in file 1c_lif1d.c MKL's cblas_dgemv is used in order 
to multiply the matrix σij with vector uj(t). So the j loop that computes (∑σij•uj(t))
is droped.

Parallel code.

5. The performance gets more improvement when openmp is used in order to parallelize i 
for loop, so the workload is distributed to different threads that runs parallel in the
cpu. In order to parallelize i for loop we use the directive:

           #pragma omp parallel for private(j, sum).

Some more files.

code_performance_improvement.png: diagram that shows the code performance.