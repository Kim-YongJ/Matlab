#201400875 김용준 연습문제 15.12

x =[1 2 3 4 5]'; 
y =[2.2 2.8 3.6 4.5 5.5]'; 
Z = [ones(size(x)) x 1./x]; 
a = (Z' * Z)\(Z' * y) 
Sr = sum((y - Z * a).^2) 
r2 = 1 - Sr / sum((y - mean(y)).^2) 
syx = sqrt(Sr / (length(x) - length(a))) 

clf 

xp = [1 : 0.125 : 5]; 
yp = a(1) + a(2) * xp + a(3)./xp; 
plot(x, y, 'o', xp, yp) 
xlim([0 6]), ylim([0 6]) 
