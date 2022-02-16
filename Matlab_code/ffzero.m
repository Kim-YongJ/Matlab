#201400875 ±è¿ëÁØ Example 6.7
#fzero

options = optimset('display', 'iter');
fun = @(x) x^10-1;
[x, fx] = fzero(fun, 0.5, options)

options = optimset('tolx', 1e-3);
funx = @(x) x^10-1;
[xx, fxx] = fzero(funx, 0.5, options)