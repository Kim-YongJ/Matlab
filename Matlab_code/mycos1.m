# 201400875 김용준 연습문제 4.11

function cosx = mycos1(x)
  
  cosx = 1;
  i = 2;
  n = 1;
  eps_s = 0.5 * 10^(2-i);
  while (1)  
    add = ((-1)^n)*(x^(2*n)) / factorial(2*n)
    ccos = cosx
    cosx = cosx + add
    eps_a = (cosx - ccos) / cosx * 100
    if abs(eps_a) < eps_s, break, end
    n = n + 1
  end
end