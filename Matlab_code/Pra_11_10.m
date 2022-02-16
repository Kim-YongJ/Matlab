# 201400875 김용준 연습문제 11.10

A = [16 4 1;4 2 1;49 7 1];
cond(A)
cond(A, 'fro')

A = hilb(10);
N = cond(A)
c = log10(N)

b = [sum(A(1, :)); sum(A(2, :)); sum(A(3, :)); sum(A(4, :)); sum(A(5, :)); sum(A(6, :)); 
sum(A(7, :)); sum(A(8, :)); sum(A(9, :)); sum(A(10, :))]

x = A \ b
e = max(abs(x - 1))
e = mean(abs(x - 1))