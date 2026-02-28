% Reiner-Rivlin drop % Poiseuille flow %
% 28-09-2024, Arindam Basak, IIT Kharagpur %
%%*************************************************************************
clear all; close all; clc;
%**************************************************************************
% Critical Marangoni Number

MaT=1; G=-1; mu=2; kappa=1; R0=5;
s=linspace(0,1,1e3);
mag=linspace(0,1,1e3);
[S,MaG]=meshgrid(s,mag);


MaT_star=-(((2 + kappa).*(378.*R0^2 - 378.*mu + 567.*R0^2.*mu + 32.*R0^2.*S.^2.*mu - 252.*MaG +... 
    378.*R0^2.*MaG))./(378.*G.*R0^2));


%%
contourf(S,MaG,log(MaT_star));


%
xlabel('$S$','interpreter','latex','fontsize',28);
ylabel('$Ma_\Gamma$','interpreter','latex','fontsize',28);
% 
% xlim([0 5]); 
% ylim([0.8,4]);

% Create textbox
annotation('textbox',...
    [0.00 0.87 0.152631574921441 0.114285711589314],...
    'String',{'(b)'},...
    'FontSize',24,...
    'EdgeColor','none');


% Create textbox
annotation('textbox',...
    [0.847428571428569 0.947619047619055 0.095428571428572 0.0476190476190477],...
    'String','$log(Ma_T^*)$',...
    'Interpreter','latex',...
    'FontSize',18,...
    'FitBoxToText','off',...
    'EdgeColor','none');
