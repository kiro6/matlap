
a = 1  
b = 2   
eps = 1e-4 ;
fs = 'x^3+4*x^2-10' ;
f = str2func(['@(x)' fs]) ;

c = (a+b)/2 
iteration  = 1 

while abs(f(c)) > eps
    if f(a)*f(c) > 0
       a=c  ;
   elseif f(a)*f(c) < 0
       b=c ;
   end
 c=(a+b)/2 
 f(c)
 iteration = iteration +1    
end