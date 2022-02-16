# 201400875 김용준 연습문제 3.5

function taysin(x, y)

  for n = 1 : 8
    z = (-1)^(n+1) * x^(2*n-1) / factorial(2*n-1);
    y = y + z;
    w = (sin(x) - y) / sin(x) * 100;
    disp([y w])
  end
end