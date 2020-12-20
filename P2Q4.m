

%N=[10 100 1000 10000 100000];
N=10000;
%Legend=cell(length(N),1);

for k = 1 : length(N)
   
T=1.0; 
n=N(k);
[G,edges,K,p] = MakePowerLawRandomGraph(n,2.2);


g=graph(G);

figure(3);

hold on;

for  i=1:100
     
v=length(bfsearch(g,randi(n))):-1:0;
%disp(length(v));
v=T*v/n;
plot(v,'Linewidth',2);


end
 %Legend{k}=strcat('n=',num2str(n));

end

%legend(Legend);
xlabel('time step');  
ylabel(strcat('fraction of infecting nodes for ',strcat(' n=',num2str(n))))
hold off;