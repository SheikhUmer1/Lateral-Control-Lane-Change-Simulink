% %% CLOSE ALL AND CLEAN THE WORKSPACE
% clear all
% close all
% clc

%% RUN CONFIGURATION FILES
Folder = strcat('OUTPUT_Simulation');
mkdir(Folder)
 
%% Robustness
n=10; % number of different values that I want 
p=3; % parameters that I want to change 
min=[0 0 0];
max=[1 1 1];
X=lhsdesignbnd(n,p,min,max);
perc_Caf =X(:,1);                                    
perc_lf =X(:,2);                                         
perc_m =X(:,3);                                      
run('parameters.m');

for index =1:n 
    Caf_unc= Caf+Caf*perc_Caf(index);
    lf_unc= lf+lf*perc_lf(index);
    m_unc= m+m*perc_m(index);    
    sim('Challenge_Lat_2023_Sim.slx')
    attuale = cd;
    name = strcat('Simulation_',num2str(index),'.mat');  
    save(name,'ans')
    movefile(name,Folder)
end

plot(ans.tout,ans.y,'b.-');
hold on
plot(out.tout,out.y,'r.-')