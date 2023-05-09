expr_str = 'x^3+4*x^2-10' ;
f = str2func(['@(x)' expr_str]) ; 

expr_symp = str2sym(expr_str) 
expr_symp_diff = diff(expr_symp) 
df = matlabFunction(expr_symp_diff) ;

x0 = 1 ;
eps  = 1e-4 ;
err = 1 ;
iteration = 0 ;
while err > eps    
x1 = x0 - (f(x0) / df(x0))
err = abs((x1-x0)/x1)
x0=x1 ;
iteration = iteration +1 
end