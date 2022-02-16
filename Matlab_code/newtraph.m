#201400875 ����� Example 6.4
# ��ư - ������
function [root, ea, iter] = newtraph(func, dfunc, xr, error, maxit, varargin)
  
  if nargin < 3, error('at least 3 input arguments required'), end
  if nargin < 4 || error <= 0, error = 0.0001; end
  if nargin < 5 || maxit <= 0, maxit = 50; end
  
  iter = 0;
  while (1)
    xrold = xr;
    xr = xr - (func(xr)/dfunc(xr));
    iter = iter + 1;
    if xr ~= 0; ea = abs((xr - xrold) / xr) * 100; end
    if ea <= error || iter >= maxit, break, end
  end
  root = xr;
end