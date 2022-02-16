# 201400875 ±è¿ëÁØ Ex 5.5

function root = false_loc(func, xl, xu, error, maxit)

i = 1;       
xrold = 0; 
xr = xl;
if nargin < 3, error('at least 3 input arguments required'), end
if nargin < 4 | error <= 0, error = 0.0001; end
if nargin < 5 | maxit <= 0, maxit = 50; end
fprintf('iteration        xl               xu              root            error\n')

while(1)                      
    test = func(xl) * func(xu); 
    if test > 0              
        fprintf('Error : choose different range of function');
    else
        xrold = xr;            
        a = (func(xu) - func(xl)) / (xu - xl) ;  
        xr = -func(xl) / a + xl ;
        er = (xr - xrold) / xr; 

        test_2 = func(xr) * func(xl); 
        if test_2 < 0                 
            xu = xr;
        else
            xl = xr;
        end
    end
    fprintf('    %d        %f        %f        %f        %f\n',i,xl,xu,xr,er)
    i = i + 1;                                          

if i == maxit || abs(er) <= error, break, end 
                                                                                   
end