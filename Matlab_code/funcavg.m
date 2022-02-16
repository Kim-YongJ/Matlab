# 201400875 ±è¿ëÁØ Example 3.8

function favg = funcavg(f, a, b, n)
  x = linspace(a, b, n);
  y = func(x);
  favg = mean(y);
end
function f = func(t)
  f = sqrt(9.81 * 68.1 / 0.25) * tanh(sqrt(9.81 * 0.25 / 68.1) * t);
end