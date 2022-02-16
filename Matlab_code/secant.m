#201400875 김용준 연습문제 6.6

function root = secant(func, xrold, xr, error, maxit)
  
  if nargin < 3, error('at least 3 input arguments required'), end
  if nargin < 4 || error <= 0, error = 0.0001; end
  if nargin < 5 || maxit <= 0, maxit = 50; end
  iter = 0; 
  while (1) 
    xrn = xr - func(xr)*(xrold - xr)/(func(xrold) - func(xr)); 
    iter = iter + 1; 
    if xrn ~= 0, ea = abs((xrn - xr) / xrn) * 100; end 
    if ea <= error || iter >= maxit, break, end 
    xrold = xr; 
    xr = xrn; 
  end 
  root = xrn;
end
