# 201400875 김용준 연습문제 17.9


#(b)
format long 
x = [3 4 5]; 
y = x.^2./ (1 + x.^2); 
p = polyfit(x, y, 2)


#(c)
format long 
xx = [2 3 4 5]; 
yy = xx.^2./ (1 + xx.^2);
p = polyfit(xx, yy, 3)