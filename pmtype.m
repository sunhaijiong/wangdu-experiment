clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\球载升空期间数据-常规.xlsx','Sheet2'); 
pm=RAW(3:2134,8);
height=RAW(3:2134,10);
PM1=cell2mat(pm);
HEIGHT1=cell2mat(height);

pm3=PM1(373:404,1);
height3=HEIGHT1(373:404,1);
plot(pm3,height3,'g',...
   'LineWidth',1.5,...
    'MarkerSize',7);
hold on;
pm2=PM1(957:982,1);
height2=HEIGHT1(957:982,1);
plot(pm2,height2,'r',...
   'LineWidth',1.5,...
    'MarkerSize',7);
hold on;
pm1=PM1(1:55,1);
height1=HEIGHT1(1:55,1);
plot(pm1,height1,'k',...
   'LineWidth',1.5,...
    'MarkerSize',7);



set(gcf,'unit','centimeters','position',[3 5 15 15]);
set(gca,'Position',[.15 .2 .75 .6]);
set(gca,'fontsize',10,'YColor','k','linewidth',1.5);
% set(gca,'ylim',[20,120],'ytick',0:20:120); %左轴的范围
% set(gca,'xlim',[0,35],'xtick',0:5:35); 
ylabel('Height(m)','color','k');
xlabel('Mass Conc.','color','k'); 
legend('Type 1','Type 2','Type 3');

