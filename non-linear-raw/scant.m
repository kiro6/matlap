x0 = -3 
x1 = 2  
eps = 1e-4 ;

expr_str = 'x*cosh(x+1)-tan(x^2+1)+2' ;
f = str2func(['@(x)' expr_str]) ;

x2 = x1 - ( ( f(x1)*(x1-x0) ) / ( f(x1) - f(x0) ) )
iteration = 1

while abs( f(x2) ) > eps
    x0 = x1 ;
    x1 = x2 ;
    x2 = x1 - ( ( f(x1)*(x1-x0) ) / ( f(x1) - f(x0) )  ) 
    iteration = iteration +1 
end