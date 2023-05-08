eps = 1e-4 ; 
expr_str = 'x^3+4*x^2-10'  ;
f = str2func(['@(x)' expr_str])  ;
a=1 
b=2 

c = ( (a*f(b)) - (b*f(a)) ) / (f(b) - f(a)) 
iteration = 1 

while abs(f(c)) > eps
    if f(a)*f(c) > 0
        a=c ;
    else
        b=c ;
    end
 c = ( (a*f(b)) - (b*f(a)) ) / (f(b) - f(a))
 f(c)
 iteration = iteration + 1
end