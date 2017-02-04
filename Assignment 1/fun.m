function [fval, fjac] = fun(x)
    f1 = 200*x(1)*(x(2) - x(1)^2)-x(1)+1;
    f2 = 100*(x(1)^2 - x(2));
    
    fval = [f1; f2];
    
    df11 = 200*x(2) - 600*x(1)^2 - 1;
    df12 = 200*x(1);
    df21 = 200*x(1);
    df22 = -100;
   
    fjac = [df11 df12; df21 df22];
end