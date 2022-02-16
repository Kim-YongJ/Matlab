# 201400875 김용준 연습문제 3.22

function phasor(r, nt, nm)
  
  clc; clf
  
  dtheta = 2 * pi / nt;
  th = 0;
  fac = 1; # 원 크기조절
  x1 = r; y1 = 0;
  for i = 1 : nt + 1
    x2 = r * cos(th); y2 = r * sin(th);
    x1 = [x1 x2]; y1 = [y1 y2];
    plot([0 x2], [0 y2], x1, y1, ':', x2, y2, 'o', 'MarkerFaceColor', 'b', 'MarkerSize', 8)
    axis([-fac * r fac * r -fac * r fac * r]);
    axis square
    M(i) = getframe;
    th = th + dtheta;
  end
  pause
  clf
  axis([-fac * r fac * r -fac * r fac * r]);
  axis square
  movie(M, 1, 36)