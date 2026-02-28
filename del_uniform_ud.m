% Reiner-Rivlin drop % Poiseuille flow %
% 16-01-2025, Arindam Basak, IIT Kharagpur %
%%*************************************************************************
clear all; close all; clc;
%**************************************************************************


MaT=1; G=1; kappa=1; MaG=1;
s=linspace(0,0.9,1e3);
muu=linspace(1e-2,10,1e3);
[S,mu]=meshgrid(s,muu);

Ud_uniform = 1+ (32.*mu.*S^2)./(189.*(3.*mu+2.*MaG+2))+(2.*G.*MaT)./((kappa+2).*(3.*mu+2.*MaG+2));
Ud_f = 1+ (2.*G.*MaT)./((kappa+2).*(3.*mu+2.*MaG+2));

Del_Ud_uniform = ((Ud_uniform - Ud_f)./Ud_f).*100;


%%
contourf(S,mu,(Del_Ud_uniform));


%
xlabel('$S$','interpreter','latex','fontsize',28);
ylabel('$\mu$','interpreter','latex','fontsize',28);
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
    'String','$log(\Delta_{\%} U_d)$',...
    'Interpreter','latex',...
    'FontSize',18,...
    'FitBoxToText','off',...
    'EdgeColor','none');
