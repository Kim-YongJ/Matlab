#201400875 김용준 연습문제 9.16

function x = pentasol(A, b) 

  [m, n] = size(A); 
  if m ~= n, error('Matrix must be square'); end 
  if length(b) ~= m, error('Matrix and vector must have the same number of rows'); end 
  x = zeros(n, 1);
  
  d = [0; 0; diag(A, -2)]; 
  e = [0; diag(A, -1)]; 
  f = diag(A); 
  g = diag(A, 1); 
  h = diag(A, 2); 
  delta = zeros(n, 1); 
  epsilon = zeros(n-1, 1); 
  gamma = zeros(n-2, 1); 
  alpha = zeros(n, 1); 
  c = zeros(n, 1); 
  z = zeros(n, 1); 

  delta(1) = f(1); 
  epsilon(1) = g(1) / delta(1); 
  gamma(1) = h(1) / delta(1); 
  alpha(2) = e(2); 
  delta(2) = f(2) - alpha(2) * epsilon(1); 
  epsilon(2) = (g(2) - alpha(2) * gamma(1)) / delta(2);
  
  gamma(2) = h(2) / delta(2); 
  for k = 3 : n-2 
    alpha(k) = e(k) - d(k) * epsilon(k - 2); 
    delta(k) = f(k) - d(k) * gamma(k - 2) - alpha(k) * epsilon(k-1); 
    epsilon(k) = (g(k) - alpha(k) * gamma(k-1)) / delta(k); 
    gamma(k) = h(k) / delta(k); 
  end 
  alpha(n - 1) = e(n - 1) - d(n - 1) * epsilon(n - 3); 
  delta(n - 1) = f(n - 1) - d(n - 1) * gamma(n - 3) - alpha(n - 1) * epsilon(n - 2); 
  epsilon(n - 1) = (g(n - 1) - alpha(n - 1) * gamma(n - 2)) / delta(n - 1); 
  alpha(n) = e(n) - d(n) * epsilon(n - 2); 
  delta(n) = f(n) - d(n) * gamma(n - 2) - alpha(n) * epsilon(n - 1); 
  
  c(1) = b(1) / delta(1); 
  c(2) = (b(2) - alpha(2) * c(1)) / delta(2); 
  for k = 3 : n 
    c(k) = (b(k) - d(k) * c(k - 2) - alpha(k) * c(k - 1)) / delta(k); 
  end 
 
  x(n) = c(n); 
  x(n - 1) = c(n - 1) - epsilon(n - 1) * x(n); 
  for k = n - 2 : -1 : 1 
    x(k) = c(k) - epsilon(k) * x(k + 1) - gamma(k) * x(k + 2); 
  end
end
