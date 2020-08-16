% % % % % % % % % % % % % % % % % % % % %  1
clear all;clc;
all_data = xlsread('D:\3d\data\windprofile处理数据\201812181201-2050.xlsx');   
windspeed=all_data(6279:7007,6:8:158);%水平风速
winddirection=all_data(6279:7007,7:8:159);%方位角
%角度转化为弧度
theta=deg2rad(winddirection);
w=all_data(6279:7007,8:8:160);%垂直气流
%算出u，v分量
u=windspeed.*sin(theta);
v=windspeed.*cos(theta);
%u,v,w横轴表示高度，纵轴表示时间，转置为横轴表示时间，纵轴表示高度，
%即38组50米高度；1173组时间
U=u';V=v';W=w';
%做十分钟平均，约为233组时间数据,可计算出5组三维十分钟平均分量
U_ave=mean(U,2);%求矩阵中各行值
V_ave=mean(V,2);%求矩阵中各行值
W_ave=mean(W,2);%求矩阵中各行值
U_instant=U-U_ave;
V_instant=V-V_ave;
W_instant=W-W_ave;

TKE=1/2*(U_instant.^2+V_instant.^2+W_instant.^2);
TKE_ave=mean(TKE,2);
    %有38组每50米高度数据
Height=50:50:1000;
subplot(3,3,1);
plot(TKE_ave,Height,'-ro',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','r');
set(gcf,'unit','centimeters','position',[3 5 16 16]);
set(gca,'unit','centimeters','Position',[2 11 4 4]);
set(gca,'fontsize',10,'YColor','k','linewidth',1.5);
set(gca, 'XLim',[0 0.8]); 
set(gca,'XTick',[0:0.2:0.8]);

% % % % % % % % % % % % % % % % % % % % %  2
all_data = xlsread('D:\3d\data\windprofile处理数据\201812191201-2359.xlsx');   
windspeed=all_data(4087:5524,6:8:158);%水平风速
winddirection=all_data(4087:5524,7:8:159);%方位角
%角度转化为弧度
theta=deg2rad(winddirection);
w=all_data(4087:5524,8:8:160);%垂直气流
%算出u，v分量
u=windspeed.*sin(theta);
v=windspeed.*cos(theta);
%u,v,w横轴表示高度，纵轴表示时间，转置为横轴表示时间，纵轴表示高度，
%即38组50米高度；1173组时间
U=u';V=v';W=w';
%做十分钟平均，约为233组时间数据,可计算出5组三维十分钟平均分量
U_ave=mean(U,2);%求矩阵中各行值
V_ave=mean(V,2);%求矩阵中各行值
W_ave=mean(W,2);%求矩阵中各行值
U_instant=U-U_ave;
V_instant=V-V_ave;
W_instant=W-W_ave;

TKE=1/2*(U_instant.^2+V_instant.^2+W_instant.^2);
TKE_ave=mean(TKE,2);
    %有38组每50米高度数据
Height=50:50:1000;

subplot(3,3,2);
plot(TKE_ave,Height,'-ro',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','r');
set(gca,'yticklabel',[]);
set(gcf,'unit','centimeters','position',[3 5 16 16]);
set(gca,'unit','centimeters','Position',[6.5 11 4 4]);
set(gca,'fontsize',10,'YColor','k','linewidth',1.5);
set(gca, 'XLim',[0 0.8]); 
set(gca,'XTick',[0:0.2:0.8]);

% % % % % % % % % % % % % % % % % % % % %  3
all_data = xlsread('D:\3d\data\windprofile处理数据\201812201201-2359.xlsx');   
windspeed=all_data(13031:13235,6:8:158);%水平风速
winddirection=all_data(13031:13235,7:8:159);%方位角
%角度转化为弧度
theta=deg2rad(winddirection);
w=all_data(13031:13235,8:8:160);%垂直气流
%算出u，v分量
u=windspeed.*sin(theta);
v=windspeed.*cos(theta);
%u,v,w横轴表示高度，纵轴表示时间，转置为横轴表示时间，纵轴表示高度，
%即38组50米高度；1173组时间
U=u';V=v';W=w';
%做十分钟平均，约为233组时间数据,可计算出5组三维十分钟平均分量
U_ave=mean(U,2);%求矩阵中各行值
V_ave=mean(V,2);%求矩阵中各行值
W_ave=mean(W,2);%求矩阵中各行值
U_instant=U-U_ave;
V_instant=V-V_ave;
W_instant=W-W_ave;

TKE=1/2*(U_instant.^2+V_instant.^2+W_instant.^2);
TKE_ave=mean(TKE,2);
    %有38组每50米高度数据
Height=50:50:1000;

subplot(3,3,3);
plot(TKE_ave,Height,'-ro',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','r');
set(gca,'yticklabel',[]);
set(gcf,'unit','centimeters','position',[3 5 16 16]);
set(gca,'unit','centimeters','Position',[11 11 4 4]);
set(gca,'fontsize',10,'YColor','k','linewidth',1.5);
set(gca, 'XLim',[0 0.8]); 
set(gca,'XTick',[0:0.2:0.8]);

% % % % % % % % % % % % % % % % % % % % %  4
all_data = xlsread('D:\3d\data\windprofile处理数据\201812191201-2359.xlsx');   
windspeed=all_data(9473:10271,6:8:158);%水平风速
winddirection=all_data(9473:10271,7:8:159);%方位角
%角度转化为弧度
theta=deg2rad(winddirection);
w=all_data(9473:10271,8:8:160);%垂直气流
%算出u，v分量
u=windspeed.*sin(theta);
v=windspeed.*cos(theta);
%u,v,w横轴表示高度，纵轴表示时间，转置为横轴表示时间，纵轴表示高度，
%即38组50米高度；1173组时间
U=u';V=v';W=w';
%做十分钟平均，约为233组时间数据,可计算出5组三维十分钟平均分量
U_ave=mean(U,2);%求矩阵中各行值
V_ave=mean(V,2);%求矩阵中各行值
W_ave=mean(W,2);%求矩阵中各行值
U_instant=U-U_ave;
V_instant=V-V_ave;
W_instant=W-W_ave;

TKE=1/2*(U_instant.^2+V_instant.^2+W_instant.^2);
TKE_ave=mean(TKE,2);
    %有38组每50米高度数据
Height=50:50:1000;

subplot(3,3,4);
plot(TKE_ave,Height,'-ro',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','r');
ylabel('Height(m)','color','k');
set(gcf,'unit','centimeters','position',[3 5 16 16]);
set(gca,'unit','centimeters','Position',[2 6.25 4 4]);
set(gca,'fontsize',10,'YColor','k','linewidth',1.5);
set(gca, 'XLim',[0 0.8]); 
set(gca,'XTick',[0:0.2:0.8]);

% % % % % % % % % % % % % % % % % % % % %  5
all_data = xlsread('D:\3d\data\windprofile处理数据\201812200000-1200.xlsx');   
windspeed=all_data(12668:13283,6:8:158);%水平风速
winddirection=all_data(12668:13283,7:8:159);%方位角666
%角度转化为弧度
theta=deg2rad(winddirection);
w=all_data(12668:13283,8:8:160);%垂直气流
%算出u，v分量
u=windspeed.*sin(theta);
v=windspeed.*cos(theta);
%u,v,w横轴表示高度，纵轴表示时间，转置为横轴表示时间，纵轴表示高度，
%即38组50米高度；1173组时间
U=u';V=v';W=w';
%做十分钟平均，约为233组时间数据,可计算出5组三维十分钟平均分量
U_ave=mean(U,2);%求矩阵中各行值
V_ave=mean(V,2);%求矩阵中各行值
W_ave=mean(W,2);%求矩阵中各行值
U_instant=U-U_ave;
V_instant=V-V_ave;
W_instant=W-W_ave;

TKE=1/2*(U_instant.^2+V_instant.^2+W_instant.^2);
TKE_ave=mean(TKE,2);
    %有38组每50米高度数据
Height=50:50:1000;

subplot(3,3,5);
plot(TKE_ave,Height,'-ro',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','r');
set(gca,'yticklabel',[]);
set(gcf,'unit','centimeters','position',[3 5 16 16]);
set(gca,'unit','centimeters','Position',[6.5 6.25 4 4]);
set(gca,'fontsize',10,'YColor','k','linewidth',1.5);
set(gca, 'XLim',[0 0.8]); 
set(gca,'XTick',[0:0.2:0.8]);

% % % % % % % % % % % % % % % % % % % % %  6
windspeed=all_data(14380:14950,6:8:158);%水平风速
winddirection=all_data(14380:14950,7:8:159);%方位角
%角度转化为弧度
theta=deg2rad(winddirection);
w=all_data(14380:14950,8:8:160);%垂直气流
%算出u，v分量
u=windspeed.*sin(theta);
v=windspeed.*cos(theta);
%u,v,w横轴表示高度，纵轴表示时间，转置为横轴表示时间，纵轴表示高度，
%即38组50米高度；1173组时间
U=u';V=v';W=w';
%做十分钟平均，约为233组时间数据,可计算出5组三维十分钟平均分量
U_ave=mean(U,2);%求矩阵中各行值
V_ave=mean(V,2);%求矩阵中各行值
W_ave=mean(W,2);%求矩阵中各行值
U_instant=U-U_ave;
V_instant=V-V_ave;
W_instant=W-W_ave;

TKE=1/2*(U_instant.^2+V_instant.^2+W_instant.^2);
TKE_ave=mean(TKE,2);
    %有38组每50米高度数据
Height=50:50:1000;

subplot(3,3,6);
plot(TKE_ave,Height,'-ro',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','r');
set(gca,'yticklabel',[]);
set(gcf,'unit','centimeters','position',[3 5 16 16]);
set(gca,'unit','centimeters','Position',[11 6.25 4 4]);
set(gca,'fontsize',10,'YColor','k','linewidth',1.5);
set(gca, 'XLim',[0 0.8]); 
set(gca,'XTick',[0:0.2:0.8]);

% % % % % % % % % % % % % % % % % % % % %  7
all_data = xlsread('D:\3d\data\windprofile处理数据\12151156-1243.xlsx');   
windspeed=all_data(1:1096,6:8:158);%水平风速
winddirection=all_data(1:1096,7:8:159);%方位角
%角度转化为弧度
theta=deg2rad(winddirection);
w=all_data(1:1096,8:8:160);%垂直气流
%算出u，v分量
u=windspeed.*sin(theta);
v=windspeed.*cos(theta);
%u,v,w横轴表示高度，纵轴表示时间，转置为横轴表示时间，纵轴表示高度，
%即38组50米高度；1173组时间
U=u';V=v';W=w';
%做十分钟平均，约为233组时间数据,可计算出5组三维十分钟平均分量
U_ave=mean(U,2);%求矩阵中各行值
V_ave=mean(V,2);%求矩阵中各行值
W_ave=mean(W,2);%求矩阵中各行值
U_instant=U-U_ave;
V_instant=V-V_ave;
W_instant=W-W_ave;

TKE=1/2*(U_instant.^2+V_instant.^2+W_instant.^2);
TKE_ave=mean(TKE,2);
    %有38组每50米高度数据
Height=50:50:1000;

subplot(3,3,7);
plot(TKE_ave,Height,'-ro',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','r');
set(gcf,'unit','centimeters','position',[3 5 16 16]);
set(gca,'unit','centimeters','Position',[2 1.5 4 4]);
set(gca,'fontsize',10,'YColor','k','linewidth',1.5);
set(gca, 'XLim',[0 0.8]); 
set(gca,'XTick',[0:0.2:0.8]);

% % % % % % % % % % % % % % % % % % % % %  8
all_data = xlsread('D:\3d\data\windprofile处理数据\201812151201-2359.xlsx');   
windspeed=all_data(5092:5433,6:8:158);%水平风速
winddirection=all_data(5092:5433,7:8:159);%方位角
%角度转化为弧度
theta=deg2rad(winddirection);
w=all_data(5092:5433,8:8:160);%垂直气流
%算出u，v分量
u=windspeed.*sin(theta);
v=windspeed.*cos(theta);
%u,v,w横轴表示高度，纵轴表示时间，转置为横轴表示时间，纵轴表示高度，
%即38组50米高度；1173组时间
U=u';V=v';W=w';
%做十分钟平均，约为233组时间数据,可计算出5组三维十分钟平均分量
U_ave=mean(U,2);%求矩阵中各行值
V_ave=mean(V,2);%求矩阵中各行值
W_ave=mean(W,2);%求矩阵中各行值
U_instant=U-U_ave;
V_instant=V-V_ave;
W_instant=W-W_ave;

TKE=1/2*(U_instant.^2+V_instant.^2+W_instant.^2);
TKE_ave=mean(TKE,2);
    %有38组每50米高度数据
Height=50:50:1000;

subplot(3,3,8);
plot(TKE_ave,Height,'-ro',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','r');
xlabel('TKE()','color','k');
set(gca,'yticklabel',[]);
set(gcf,'unit','centimeters','position',[3 5 16 16]);
set(gca,'unit','centimeters','Position',[6.5 1.5 4 4]);
set(gca,'fontsize',10,'YColor','k','linewidth',1.5);
set(gca, 'XLim',[0 0.8]); 
set(gca,'XTick',[0:0.2:0.8]);

% % % % % % % % % % % % % % % % % % % % %  9
windspeed=all_data(6005:6506,6:8:158);%水平风速
winddirection=all_data(6005:6506,7:8:159);%方位角
%角度转化为弧度
theta=deg2rad(winddirection);
w=all_data(6005:6506,8:8:160);%垂直气流
%算出u，v分量
u=windspeed.*sin(theta);
v=windspeed.*cos(theta);
%u,v,w横轴表示高度，纵轴表示时间，转置为横轴表示时间，纵轴表示高度，
%即38组50米高度；1173组时间
U=u';V=v';W=w';
%做十分钟平均，约为233组时间数据,可计算出5组三维十分钟平均分量
U_ave=mean(U,2);%求矩阵中各行值
V_ave=mean(V,2);%求矩阵中各行值
W_ave=mean(W,2);%求矩阵中各行值
U_instant=U-U_ave;
V_instant=V-V_ave;
W_instant=W-W_ave;

TKE=1/2*(U_instant.^2+V_instant.^2+W_instant.^2);
TKE_ave=mean(TKE,2);
    %有38组每50米高度数据
Height=50:50:1000;

subplot(3,3,9);
plot(TKE_ave,Height,'-ro',...
   'LineWidth',1.5,...
    'MarkerSize',2,...
    'MarkerFaceColor','r');
set(gca,'yticklabel',[]);
set(gcf,'unit','centimeters','position',[3 5 16 16]);
set(gca,'unit','centimeters','Position',[11 1.5 4 4]);
set(gca,'fontsize',10,'YColor','k','linewidth',1.5);
set(gca, 'XLim',[0 0.8]); 
set(gca,'XTick',[0:0.2:0.8]);




