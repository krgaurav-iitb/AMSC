

[G,edges,K,p] = MakePowerLawRandomGraph(10000,2.2);
T=0.4

u = fzero(@(x)G1(x,T,K,p)-x,0.3);
S=1-(G0(u,T,K,p))

%calculate giant component in T=1 and T=0.4
%disp(S)

a=2.2;
%calculating Tc
Tc=Tfun(a,K,p)

function u=G1(x,T,K,p)
num=0;
den=0;
for i = 1:K
    num=num+(((i)*p(i)*((1-T+T*x)^(i-1))));
    den=den+(i*p(i));
end
u=num/den;
end

function u=G0(x,T,K,p)
u=0;
for i = 1:K
    u=u+(p(i)*((1-T+T*x)^(i)));
end
end

function u=Tfun(a,K,p)
num=0;
den=0;
for i = 1:K
    num=num+(i*p(i));
    den=den+(i*(i-1)*p(i));
end
u=num/den;
end


