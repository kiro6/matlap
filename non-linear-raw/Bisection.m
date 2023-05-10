
a = 0  ;
b = 1   ;
eps = 1e-4 ;

fs = '3*(x^2) - exp(x)' ;
f = str2func(['@(x)' fs]) ;

c = (a+b)/2 
disp("f(c) = " + f(c));
iteration  = 1 

while abs(f(c)) > eps
    if f(a)*f(c) > 0
       a=c  ;
   elseif f(a)*f(c) < 0
       b=c ;
   end
 c=(a+b)/2 
 disp("f(c) = " + f(c));
 iteration = iteration +1    
end