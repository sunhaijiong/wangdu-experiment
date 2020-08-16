clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\球载升空期间数据-常规.xlsx','Sheet2'); 
pm=RAW(3:2134,8);
height=RAW(3:2134,10);
PM=cell2mat(pm);
HEIGHT=cell2mat(height);
% % % % % % % % % % % % % % % % % % % % % % % % % 
% 1
subplot(3,5,1);
pm11=PM(373:404,1);
height11=HEIGHT(373:404,1);
plot(pm11,height11,'-ro',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','r');
hold on;
pm17=PM(629:668,1);
height17=HEIGHT(629:668,1);
plot(pm17,height17,'-ko',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','k');
hold on;
pm24=PM(1145:1171,1);
height24=HEIGHT(1145:1171,1);
plot(pm24,height24,'-bo',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','b');

set(gcf,'unit','centimeters','position',[3 5 25 16]);
set(gca,'unit','centimeters','Position',[2 11 4 4]);
set(gca,'fontsize',10,'YColor','k','linewidth',1.5);
set(gca, 'XLim',[0 150]); 
set(gca,'XTick',[0:50:150]);

l1=legend('No.11','No.17','No.24');
set(l1,'Fontname', 'Times New Roman',...
    'FontSize',10,...
    'Box','off')
% % % % % % % % % % % % % % % % % % % % % % % % % 
% 2
subplot(3,5,2);
[NUM,TXT,RAW] = xlsread('D:\3d\data\望都实验部分数据\上海球载常规六项\球载-20181218-19-1min-常规气象.xlsx'); 
shidu11=NUM(999:1027,3);
wendu11=NUM(999:1027,4);
height11=NUM(999:1027,7);

shidu17=NUM(2237:2271,3);
wendu17=NUM(2237:2271,4);
height17=NUM(2237:2271,7);

[NUM,TXT,RAW] = xlsread('D:\3d\data\望都实验部分数据\上海球载常规六项\球载-20181220-22-1min-常规气象.xlsx'); 
shidu24=NUM(819:845,3);
wendu24=NUM(819:845,4);
height24=NUM(819:845,7);

plot(wendu11,height11,'-ro',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','r');
hold on;
plot(wendu17,height17,'-ko',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','k');
hold on;
plot(wendu24,height24,'-bo',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','b');
set(gca,'yticklabel',[]);
set(gca, 'XLim',[0 10]); 
set(gca,'XTick',[0:2:10]);
set(gcf,'unit','centimeters','position',[3 5 25 16]);
set(gca,'unit','centimeters','Position',[6.5 11 4 4]);
set(gca,'fontsize',10,'YColor','k','linewidth',1.5);
% % % % % % % % % % % % % % % % % % % % % % % % % 
% 3
subplot(3,5,3);
plot(shidu11,height11,'-ro',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','r');
hold on;
plot(shidu17,height17,'-ko',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','k');
hold on;
plot(shidu24,height24,'-bo',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','b');
set(gca,'yticklabel',[]);
set(gca, 'XLim',[20 60]); 
set(gca,'XTick',[20:20:60]);
set(gcf,'unit','centimeters','position',[3 5 25 16]);
set(gca,'unit','centimeters','Position',[11 11 4 4]);
set(gca,'fontsize',10,'YColor','k','linewidth',1.5);

all_data = xlsread('D:\3d\data\windprofile处理数据\201812181201-2050.xlsx');   
windspeed=all_data(6279:7007,6:8:158);
winddirection=all_data(6279:7007,7:8:159);
V11=windspeed';
V11_ave=mean(V11,2);
WD11=winddirection';
WD11_ave=mean(WD11,2);

all_data = xlsread('D:\3d\data\windprofile处理数据\201812191201-2359.xlsx');   
windspeed=all_data(4087:5524,6:8:158);
winddirection=all_data(4087:5524,7:8:159);
V17=windspeed';
V17_ave=mean(V17,2);
WD17=winddirection';
WD17_ave=mean(WD17,2);

all_data = xlsread('D:\3d\data\windprofile处理数据\201812201201-2359.xlsx');   
windspeed=all_data(2192:2784,6:8:158);
winddirection=all_data(2192:2784,7:8:159);
V24=windspeed';
V24_ave=mean(V24,2);
WD24=winddirection';
WD24_ave=mean(WD24,2);


Height=50:50:1000;
% % % % % % % % % % % % % % % % % % % % % % % % % 
% 4
subplot(3,5,4);
plot(V11_ave,Height,'-ro',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','r');
hold on;
plot(V17_ave,Height,'-ko',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','k');
hold on;
plot(V24_ave,Height,'-bo',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','b');
set(gca,'yticklabel',[]);
set(gca, 'XLim',[0 10]); 
set(gca,'XTick',[0:2:10]);
set(gcf,'unit','centimeters','position',[3 5 25 16]);
set(gca,'unit','centimeters','Position',[15.5 11 4 4]);
set(gca,'fontsize',10,'YColor','k','linewidth',1.5);
% % % % % % % % % % % % % % % % % % % % % % % % % 
% 5
subplot(3,5,5);
plot(WD11_ave,Height,'-ro',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','r');
hold on;
plot(WD17_ave,Height,'-ko',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','k');
hold on;
plot(WD24_ave,Height,'-bo',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','b');
set(gca,'yticklabel',[]);
set(gca, 'XLim',[0 360]); 
set(gca,'XTick',[0:90:360]);
set(gcf,'unit','centimeters','position',[3 5 25 16]);
set(gca,'unit','centimeters','Position',[20 11 4 4]);
set(gca,'fontsize',10,'YColor','k','linewidth',1.5);
% % % % % % % % % % % % % % % % % % % % % % % % % 

[NUM,TXT,RAW] = xlsread('D:\3d\data\球载升空期间数据-常规.xlsx','Sheet2'); 
pm=RAW(3:2134,8);
height=RAW(3:2134,10);
PM=cell2mat(pm);
HEIGHT=cell2mat(height);
% % % % % % % % % % % % % % % % % % % % % % % % % 
% 6
subplot(3,5,6);
%减2
pm20=PM(843:877,1);
height20=HEIGHT(843:877,1);
plot(pm20,height20,'-ro',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','r');
hold on;
pm21=PM(882:908,1);
height21=HEIGHT(882:908,1);
plot(pm21,height21,'-ko',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','k');
hold on;
pm22=PM(957:982,1);
height22=HEIGHT(957:982,1);
plot(pm22,height22,'-bo',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','b');

set(gcf,'unit','centimeters','position',[3 5 25 16]);
set(gca,'unit','centimeters','Position',[2 6.25 4 4]);

set(gca,'fontsize',10,'YColor','k','linewidth',1.5);
ylabel('Height(m)','color','k');
% xlabel('Mass Conc.','color','k'); 
l1=legend('No.20','No.21','No.22');
set(l1,'Fontname', 'Times New Roman',...
    'FontSize',10,...
    'Box','off')
% % % % % % % % % % % % % % % % % % % % % % % % % 
% 7
subplot(3,5,7);
[NUM,TXT,RAW] = xlsread('D:\3d\data\望都实验部分数据\上海球载常规六项\球载-20181218-19-1min-常规气象.xlsx'); 
shidu20=NUM(2442:2472,3);
wendu20=NUM(2442:2472,4);
height20=NUM(2442:2472,7);

[NUM,TXT,RAW] = xlsread('D:\3d\data\望都实验部分数据\上海球载常规六项\球载-20181220-22-1min-常规气象.xlsx'); 
shidu21=NUM(555:582,3);
wendu21=NUM(555:582,4);
height21=NUM(555:582,7);

shidu22=NUM(630:656,3);
wendu22=NUM(630:656,4);
height22=NUM(630:656,7);

plot(wendu20,height20,'-ro',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','r');
hold on;
plot(wendu21,height21,'-ko',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','k');
hold on;
plot(wendu22,height22,'-bo',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','b');
set(gca,'yticklabel',[]);
set(gca, 'XLim',[-2 8]); 
set(gca,'XTick',[-2:2:8]);
set(gcf,'unit','centimeters','position',[3 5 25 16]);
set(gca,'unit','centimeters','Position',[6.5 6.25 4 4]);
set(gca,'fontsize',10,'YColor','k','linewidth',1.5);
% % % % % % % % % % % % % % % % % % % % % % % % % 
% 8
subplot(3,5,8);
plot(shidu20,height20,'-ro',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','r');
hold on;
plot(shidu21,height21,'-ko',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','k');
hold on;
plot(shidu22,height22,'-bo',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','b');
set(gca,'yticklabel',[]);
set(gca, 'XLim',[20 60]); 
set(gca,'XTick',[20:20:60]);
set(gcf,'unit','centimeters','position',[3 5 25 16]);
set(gca,'unit','centimeters','Position',[11 6.25 4 4]);
set(gca,'fontsize',10,'YColor','k','linewidth',1.5);

all_data = xlsread('D:\3d\data\windprofile处理数据\201812191201-2359.xlsx');   
windspeed=all_data(9473:10271,6:8:158);
winddirection=all_data(9473:10271,7:8:159);
V20=windspeed';
V20_ave=mean(V20,2);
WD20=winddirection';
WD20_ave=mean(WD20,2);

all_data = xlsread('D:\3d\data\windprofile处理数据\201812200000-1200.xlsx');   
windspeed=all_data(12668:13283,6:8:158);
winddirection=all_data(12668:13283,7:8:159);
V21=windspeed';
V21_ave=mean(V21,2);
WD21=winddirection';
WD21_ave=mean(WD21,2);

windspeed=all_data(14380:14950,6:8:158);
winddirection=all_data(14380:14950,7:8:159);
V22=windspeed';
V22_ave=mean(V22,2);
WD22=winddirection';
WD22_ave=mean(WD22,2);


Height=50:50:1000;
% % % % % % % % % % % % % % % % % % % % % % % % % 
% 9
subplot(3,5,9);
plot(V20_ave,Height,'-ro',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','r');
hold on;
plot(V21_ave,Height,'-ko',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','k');
hold on;
plot(V22_ave,Height,'-bo',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','b');
set(gca,'yticklabel',[]);
set(gca, 'XLim',[0 10]); 
set(gca,'XTick',[0:2:10]);
set(gcf,'unit','centimeters','position',[3 5 25 16]);
set(gca,'unit','centimeters','Position',[15.5 6.25 4 4]);
set(gca,'fontsize',10,'YColor','k','linewidth',1.5);
% % % % % % % % % % % % % % % % % % % % % % % % % 
% 10
subplot(3,5,10);
plot(WD20_ave,Height,'-ro',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','r');
hold on;
plot(WD21_ave,Height,'-ko',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','k');
hold on;
plot(WD22_ave,Height,'-bo',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','b');
set(gca,'yticklabel',[]);
set(gca, 'XLim',[0 360]); 
set(gca,'XTick',[0:90:360]);
set(gcf,'unit','centimeters','position',[3 5 25 16]);
set(gca,'unit','centimeters','Position',[20 6.25 4 4]);
set(gca,'fontsize',10,'YColor','k','linewidth',1.5);

[NUM,TXT,RAW] = xlsread('D:\3d\data\球载升空期间数据-常规.xlsx','Sheet2'); 
pm=RAW(3:2134,8);
height=RAW(3:2134,10);
PM=cell2mat(pm);
HEIGHT=cell2mat(height);
% % % % % % % % % % % % % % % % % % % % % % % % % 
% 11
subplot(3,5,11);
%减2
pm1=PM(1:55,1);
height1=HEIGHT(1:55,1);
plot(pm1,height1,'-ro',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','r');
hold on;
pm5=PM(197:212,1);
height5=HEIGHT(197:212,1);
plot(pm5,height5,'-ko',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','k');
hold on;
pm6=PM(238:259,1);
height6=HEIGHT(238:259,1);
plot(pm6,height6,'-bo',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','b');

set(gcf,'unit','centimeters','position',[3 5 25 16]);
set(gca,'unit','centimeters','Position',[2 1.5 4 4]);

set(gca,'fontsize',10,'YColor','k','linewidth',1.5);
% ylabel('Height(m)','color','k');
xlabel('Mass Conc.','color','k'); 
l1=legend('No.1','No.5','No.6');
set(l1,'Fontname', 'Times New Roman',...
    'FontSize',10,...
    'Box','off')
% % % % % % % % % % % % % % % % % % % % % % % % % 
% 12
subplot(3,5,12);
[NUM,TXT,RAW] = xlsread('D:\3d\data\望都实验部分数据\上海球载常规六项\球载-20181215~1216-1min-常规气象.xlsx'); 
shidu1=NUM(136:173,3);
wendu1=NUM(136:173,4);
height1=NUM(136:173,7);

shidu5=NUM(296:314,3);
wendu5=NUM(296:314,4);
height5=NUM(296:314,7);

shidu6=NUM(314:327,3);
wendu6=NUM(314:327,4);
height6=NUM(314:327,7);

plot(wendu1,height1,'-ro',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','r');
hold on;
plot(wendu5,height5,'-ko',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','k');
hold on;
plot(wendu6,height6,'-bo',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','b');
set(gca,'yticklabel',[]);
set(gca, 'XLim',[-2 8]); 
set(gca,'XTick',[-2:2:8]);
xlabel('T()','color','k'); 

set(gcf,'unit','centimeters','position',[3 5 25 16]);
set(gca,'unit','centimeters','Position',[6.5 1.5 4 4]);
set(gca,'fontsize',10,'YColor','k','linewidth',1.5);
% % % % % % % % % % % % % % % % % % % % % % % % % 
% 13
subplot(3,5,13);
plot(shidu1,height1,'-ro',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','r');
hold on;
plot(shidu5,height5,'-ko',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','k');
hold on;
plot(shidu6,height6,'-bo',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','b');
set(gca,'yticklabel',[]);
set(gca, 'XLim',[20 60]); 
set(gca,'XTick',[20:20:60]);
xlabel('RH()','color','k'); 
set(gcf,'unit','centimeters','position',[3 5 25 16]);
set(gca,'unit','centimeters','Position',[11 1.5 4 4]);
set(gca,'fontsize',10,'YColor','k','linewidth',1.5);

all_data = xlsread('D:\3d\data\windprofile处理数据\12151156-1243.xlsx');   
windspeed=all_data(1:1096,6:8:158);
winddirection=all_data(1:1096,7:8:159);
V1=windspeed';
V1_ave=mean(V1,2);
WD1=winddirection';
WD1_ave=mean(WD1,2);

all_data = xlsread('D:\3d\data\windprofile处理数据\201812151201-2359.xlsx');   
windspeed=all_data(5092:5433,6:8:158);
winddirection=all_data(5092:5433,7:8:159);
V5=windspeed';
V5_ave=mean(V5,2);
WD5=winddirection';
WD5_ave=mean(WD5,2);

windspeed=all_data(6005:6506,6:8:158);
winddirection=all_data(6005:6506,7:8:159);
V6=windspeed';
V6_ave=mean(V6,2);
WD6=winddirection';
WD6_ave=mean(WD6,2);


Height=50:50:1000;
% % % % % % % % % % % % % % % % % % % % % % % % % 
% 14
subplot(3,5,14);
plot(V1_ave,Height,'-ro',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','r');
hold on;
plot(V5_ave,Height,'-ko',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','k');
hold on;
plot(V6_ave,Height,'-bo',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','b');
set(gca,'yticklabel',[]);
set(gca, 'XLim',[0 10]); 
set(gca,'XTick',[0:2:10]);
xlabel('WS(m s)','color','k'); 
set(gcf,'unit','centimeters','position',[3 5 25 16]);
set(gca,'unit','centimeters','Position',[15.5 1.5 4 4]);
set(gca,'fontsize',10,'YColor','k','linewidth',1.5);
% % % % % % % % % % % % % % % % % % % % % % % % % 
% 15
subplot(3,5,15);
plot(WD1_ave,Height,'-ro',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','r');
hold on;
plot(WD5_ave,Height,'-ko',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','k');
hold on;
plot(WD6_ave,Height,'-bo',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','b');
set(gca,'yticklabel',[]);
set(gca, 'XLim',[0 360]); 
set(gca,'XTick',[0:90:360]);
xlabel('WD()','color','k'); 
set(gcf,'unit','centimeters','position',[3 5 25 16]);
set(gca,'unit','centimeters','Position',[20 1.5 4 4]);
set(gca,'fontsize',10,'YColor','k','linewidth',1.5);








