# 201400875 김용준 연습문제 3.6

# x = [2 2 0 -3 -2 -1 0 0 2];
# y = [0 1 3 1 0 -2 0 -2 2];
 
function coordinate(x, y)
  r = sqrt(x.^2 + y.^2);
  
  for i = 1 : 9
    if x(i) < 0
      if y(i) > 0
        theta(i) = atan(y/x) + pi;
      elseif y(i) < 0
        theta(i) = atan(y/x) - pi;
      else
        theta(i) = pi;
      end
    elseif x(i) > 0
      theta(i) = atan(y/x);
    else
      if y(i) > 0
        theta(i) = pi/2;
      elseif y(i) < 0
        theta(i) = -pi/2;
      else
        theta(i) = 0;
      end
    end
  end
  
  disp('      x             y         r       theta')
  A = [x', y', r', (theta * 180/pi)'];
  disp(A)
end

