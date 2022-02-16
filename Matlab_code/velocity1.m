# 201400875 ±è¿ëÁØ Example Case 3.6(1)

function vend = velocity1(dt, ti, tf, vi)
  t = ti;
  v = vi;
  n = (tf - ti) / dt;
  for i = 1 : n
    dvdt = deriv(v);
    v = v + dvdt * dt;
    t = t + dt;
  end
  vend = v;
end


function dv = deriv(v)
  dv = 9.81 - (0.25 / 68.1) * v * abs(v);
end