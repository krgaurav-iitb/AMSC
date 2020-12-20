a = 2.2;
G0 = @(x)polylog(a,x)/polylog(a,1);
G1 = @(x)polylog(a-1,x)./(x*polylog(a-1,1));

%for T=1
T=1
u = fzero(@(x)G1(1-T+T*x)-x,0.3);
S= 1 - G0(1-T+T*u)
%disp(S);

%for T=0.4
T=0.4
u = fzero(@(x)G1(1-T+T*x)-x,0.3);
S= 1 - G0(1-T+T*u)
%disp(S);