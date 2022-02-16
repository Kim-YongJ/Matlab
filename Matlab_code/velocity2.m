# 201400875 ±è¿ëÁØ Example Case 3.6(2)

function vend = velocity2(dt, ti, tf, vi)
  t = ti;
  v = vi;
  h = dt;
  n = (tf - ti) / dt;
  while(1)
  if t + dt > tf, h = tf - t; end
    dvdt = deriv(v);
    v = v + dvdt * h;
    t = t + h;
    if t >= tf, break, end
  end
  vend = v;
end


function dv = deriv(v)
  dv = 9.81 - (0.25 / 68.1) * v * abs(v);
end