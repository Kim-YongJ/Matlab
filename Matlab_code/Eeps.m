# 201400875 김용준 연습문제 4.4

function eps1 = Eeps
  
  e = 1;
  while (1)
    if e + 1 <= 1, break, end
    e = e / 2;
  end
  eps1 = 2 * e;
end