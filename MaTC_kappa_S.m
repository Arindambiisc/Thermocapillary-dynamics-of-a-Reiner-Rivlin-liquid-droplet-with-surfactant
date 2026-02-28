% Reiner-Rivlin drop % Poiseuille flow %
% 28-09-2024, Arindam Basak, IIT Kharagpur %
%%*************************************************************************
clear all; close all; clc;
%**************************************************************************
% Critical Marangoni Number

MaG=1; MaT=1; G=-1; mu=2; R0=5; 
% S=linspace(0,10,1e4);
L1=1e-1; L2=1e1;
kappaa=linspace(log10(L1),log10(L2),251);
kappa=10.^(kappaa);
% SS=linspace(log10(L1),log10(L2),151);
% S=10.^(SS);



S=0;
MaT_star1=-(((2 + kappa).*(378.*R0^2 - 378.*mu + 567.*R0^2.*mu + 32.*R0^2.*S.^2.*mu - 252.*MaG +... 
    378.*R0^2.*MaG))./(378.*G.*R0^2));

S=0.3;
MaT_star2=-(((2 + kappa).*(378.*R0^2 - 378.*mu + 567.*R0^2.*mu + 32.*R0^2.*S.^2.*mu - 252.*MaG +... 
    378.*R0^2.*MaG))./(378.*G.*R0^2));

S=0.6;
MaT_star3=-(((2 + kappa).*(378.*R0^2 - 378.*mu + 567.*R0^2.*mu + 32.*R0^2.*S.^2.*mu - 252.*MaG +... 
    378.*R0^2.*MaG))./(378.*G.*R0^2));

%%
beginx=0.13; beginy=0.14; xsize=1; ysize=1;
figure1= figure('Color',[1 1 1],'Visible','on');  
axes1  = axes('fontsize',16,'LineWidth',3,'Parent',figure1,'XScale','linear','Yscale','linear',...
    'Position',[0.156785714285714 0.171428571428572 0.8 0.79],...
    'Position',[0.18 0.20 0.80 0.79]); % adjust by hand
box(axes1,'on'); hold(axes1,'all');
%

h(1)=plot(kappa,MaT_star1,'r','LineWidth',2,'Color',[0.8 0 0],'DisplayName','$S=0$'); hold on
h(2)=plot(kappa,MaT_star2,'b','LineWidth',2,'Color',[0 0 1],'DisplayName','$S=0.3$'); hold on
h(3)=plot(kappa,MaT_star3,'g','LineWidth',2,'Color',[0 0.5 0],'DisplayName','$S=0.6$'); hold on


%
xlabel('$\kappa$','interpreter','latex','fontsize',28);
ylabel('$Ma_T^*$','interpreter','latex','fontsize',28);
% 
% xlim([0 5]); 
% ylim([0.8,4]);

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
    'String',{'(a)'},...
    'FontSize',24,...
    'EdgeColor','none');
%-----------------------------------------