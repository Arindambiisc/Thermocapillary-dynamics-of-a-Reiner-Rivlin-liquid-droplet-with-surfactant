% Reiner-Rivlin drop % Poiseuille flow %
% 27-09-2024, Arindam Basak, IIT Kharagpur %
%%*************************************************************************
clear all; close all; clc;
%**************************************************************************
MaG=1; MaT=1; G=1; kappa=1; R0=5;
S=linspace(0,0.9,1e4);

mu=0.1;
MigU1=(378.*G.*R0.^2.*MaT + (2 + kappa).*(-378.*mu + R0.^2.*(378 + 567.*mu + 32.*S.^2.*mu) +... 
    126.*(-2 + 3.*R0.^2).*MaG))./(189.*R0.^2.*(2 + kappa).*(2 + 3.*mu + 2.*MaG));
mu=1;
MigU2=(378.*G.*R0.^2.*MaT + (2 + kappa).*(-378.*mu + R0.^2.*(378 + 567.*mu + 32.*S.^2.*mu) +... 
    126.*(-2 + 3.*R0.^2).*MaG))./(189.*R0.^2.*(2 + kappa).*(2 + 3.*mu + 2.*MaG));
mu=10;
MigU3=(378.*G.*R0.^2.*MaT + (2 + kappa).*(-378.*mu + R0.^2.*(378 + 567.*mu + 32.*S.^2.*mu) +... 
    126.*(-2 + 3.*R0.^2).*MaG))./(189.*R0.^2.*(2 + kappa).*(2 + 3.*mu + 2.*MaG));

%%
beginx=0.13; beginy=0.14; xsize=1; ysize=1;
figure1= figure('Color',[1 1 1],'Visible','on');  
axes1  = axes('fontsize',16,'LineWidth',3,'Parent',figure1,'XScale','linear','Yscale','linear',...
    'Position',[0.156785714285714 0.171428571428572 0.8 0.79],...
    'Position',[0.18 0.20 0.80 0.79]); % adjust by hand
box(axes1,'on'); hold(axes1,'all');
%

h(1)=plot(S,MigU1,'r','LineWidth',2,'Color',[0.8 0 0],'DisplayName','$\mu=0.1$'); hold on
h(2)=plot(S,MigU2,'b','LineWidth',2,'Color',[0 0 1],'DisplayName','$\mu=1$'); hold on
h(3)=plot(S,MigU3,'g','LineWidth',2,'Color',[0 0.5 0],'DisplayName','$\mu=10$'); hold on
% h(4)=plot(MaT,MigU4,'k','LineWidth',2,'Color',[0.5 0 0.5],'DisplayName','$S=0.5$'); hold on
% h(5)=plot(MaT,MigU5,'k','LineWidth',2,'Color',[0.9 0 0.5],'DisplayName','$S=0.9$'); hold on

%
xlabel('$S$','interpreter','latex','fontsize',28);
ylabel('$U_d$','interpreter','latex','fontsize',28);
% 
% xlim([0.9 1.2]); 
ylim([0.95,1.17]);

%------------------------------------------------------------------------------
% % Create legend
legend1 = legend(axes1,[h(1) h(2) h(3)],'Location','NorthEast');
set(legend1,...
    'Position',[0.220805906123809 0.446391373801799 0.234551236733334 0.217619042850676],...
    'LineWidth',1,...
    'Interpreter','latex',...
    'FontSize',18,...
    'EdgeColor',[0 0 0],...
    'Color','none');
%%------------------------------------------------------------------------------------
% Create textbox
annotation(figure1,'textbox',...
    [0.00 0.87 0.152631574921441 0.114285711589314],...
    'String',{'(c)'},...
    'FontSize',24,...
    'EdgeColor','none');
%-----------------------------------------