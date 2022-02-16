# 201400875 김용준 연습문제 4.18

function func1 = myfunc1(x)
  
  func1 = 1;
  i = 2;
  n = 1;
  eps_s = 0.5 * 10^(2-i);
  while (1)  
    add = x^n
    ffunc = func1
    func1 = func1 + add
    eps_a = (func1 - ffunc) / func1 * 100
    if abs(eps_a) < eps_s, break, end
    n = n + 1
  end
end