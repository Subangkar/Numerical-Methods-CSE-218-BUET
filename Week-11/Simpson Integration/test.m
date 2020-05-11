%{
err=100;
es = 0.01;

It=1;

n=0;
Ic=0;
while err>es
    Ic=0;
    n=n+5;
    %i=n;
    i=0;
    l=1;
    x=linspace(-pi/2,pi,n+1);

    ten = floor(n/10);
    
    for t=1:ten
        i=t-1;
        I1=simpson13(@f,x((i*10+1):(i*10+3)));
        I2=simpson38(@f,x((i*10+3):(i*10+6)));
        I3=simpson38(@f,x((i*10+6):(i*10+9)));
        I4=simpson13(@f,x((i*10+9):(i*10+11)));
        Ic=Ic+I1+I2+I3+I4;
        l=(i*10+11);
    end
    
    if(n-ten*10==5)
        
        %I1=simpson13(@f,x((i*10+1):(i*10+3)));
        %I2=simpson38(@f,x((i*10+3):(i*10+6)));
        I1=simpson13(@f,x(l:l+2));
        I2=simpson38(@f,x((l+2):(l+5)));
        Ic=Ic+I1+I2;
    end
    
    err = abs((Ic-It)/It)*100;
end
Ic
err
clear all;
%}
[I,Error,n] = run()


