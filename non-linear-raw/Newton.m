x0 = -0.4 ;
eps = 1e-4 ; 
err = 1 ; 
iteration =0 ; 

fs = 'sin(x) - ( (x+1) / (x-1) )' ;
f = str2func(['@(x)' fs]) ; 


f_symp = str2sym(fs) 
f_symp_diff = diff(f_symp)  
df = matlabFunction(f_symp_diff); 


while err > eps
    x1 = x0 - ( f(x0) / df(x0) );
    err = abs( (x1 -x0) / x1 ) ;
    disp("x1 = " +x1);
    disp("err = "+err*100 + "%");
    x0 = x1 ; 
    iteration =iteration +1
end