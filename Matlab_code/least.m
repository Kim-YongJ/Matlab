# 201400875 김용준 연습문제 4.5

function l = least
  
  le = 1;
  while (1)
    l = le / 2;
    if l == 0, break, end
    le = l;
  end
  l = le;
end
