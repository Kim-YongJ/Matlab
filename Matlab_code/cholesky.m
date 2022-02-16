# 201400875 김용준 연습문제 10.9

function U = cholesky(A) 
   [m, n] = size(A); 
   if m ~= n, error('Matrix A must be square'); end 
   for i = 1 : n 
   s = 0; 
   for k = 1 : i - 1 
    s = s + U(k, i) ^ 2; 
   end 
   U(i, i) = sqrt(A(i, i) - s); 
   for j = i + 1 : n 
    s = 0; 
    for k = 1 : i - 1 
      s = s + U(k, i) * U(k, j); 
    end 
    U(i, j) = (A(i, j) - s) / U(i, i); 
   end 
end