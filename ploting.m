clear all;
clc;
close all;
n = 1000:1000:5000;
x1 = [797.360671 3169.363008 7077.327858 12528.370581 19518.456902];
x2 = [413.500673 1776.593745	3946.689160	6695.704059	10638.286699];
x3 = [341.612187 1273.348192 2754.408502 4718.239895 7244.971913];
x4 = [189.319953 714.705905 1440.290326 2386.589338 3642.778038]
plot(n,x1, "linewidth", 2)
hold on
plot(n,x2, "linewidth", 2)
plot(n,x3, "linewidth", 2)
plot(n,x4, "linewidth", 2)
title ("Code performance improvement")
xlabel ("Num of neurons")
ylabel ("Time")
legend ({"lif1d", "1b_lif1d", "1c_lif1d", "i_lif1d_omp"}, "location", "north")