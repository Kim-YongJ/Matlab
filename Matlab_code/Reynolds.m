#201400875 ±è¿ëÁØ Case Example 6.7

rho = 1.23;
mu = 1.79e-5;
D = 0.005;
V = 40;
e = 0.0015/1000;
Re = rho * V * D / mu;
g = @(f) (1 / sqrt(f)) + (2 * log10((e / (3.7 * D)) + (2.51 / (Re * sqrt(f)))))
fplot(g, [0.008 0.08]), grid, xlabel('f'), ylabel('g(f)')

dg = @(f) -2/log(10) * 1.255/Re*f^(-3/2) / (e/D/3.7+2.51/Re/sqrt(f)) - 0.5 / f^(3/2);
[f ea iter] = newtraph(g, dg, 0.008)

fSJ = 1.325 / log(e / (3.7 * D) + 5.74 / Re^(0.9)) ^ 2
[f ea iter] = newtraph(g, dg, fSJ)