# 201400875 ±è¿ëÁØ Example 3.7

function quadroots(a, b, c)
  if a == 0
    if b ~= 0
      r1 = -c / b
    else
      disp('Trivial solution. Try again')
    end
  else
    d = b ^ 2 - 4 * a * c;
    if d >= 0
      r1 = (-b + sqrt(d)) / 2 * a
      r2 = (-b - sqrt(d)) / 2 * a
    else
      r1 = -b / (2 * a)
      i1 = sqrt(abs(d)) / (2 * a)
      r2 = r1
      i2 = -i1  
    end
  end
end
