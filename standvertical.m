clear all;clc;
[NUM,TXT,RAW] = xlsread('D:\3d\data\球载升空期间数据-常规.xlsx','Sheet2'); 
pm=RAW(3:2134,8);
PM1=cell2mat(pm);
pm1=PM1(1:55,1);
change=zeros(1,33);
average=zeros(1,33);
p=zeros(1,33);
change(1)=std(pm1);
average(1)=mean(pm1);
p(1)=(max(pm1)+min(pm1))/(2*mean(pm1));

pm2=PM1(121:152,1);
change(2)=std(pm2);
average(2)=mean(pm2);
p(2)=(max(pm2)+min(pm2))/(2*mean(pm2));

pm3=PM1(152:166,1);
change(3)=std(pm3);
average(3)=mean(pm3);
p(3)=(max(pm3)+min(pm3))/(2*mean(pm3));

pm4=PM1(178:197,1);
change(4)=std(pm4);
average(4)=mean(pm4);
p(4)=(max(pm4)+min(pm4))/(2*mean(pm4));

pm5=PM1(197:212,1);
change(5)=std(pm5);
average(5)=mean(pm5);
p(5)=(max(pm5)+min(pm5))/(2*mean(pm5));

pm6=PM1(238:259,1);
change(6)=std(pm6);
average(6)=mean(pm6);
p(6)=(max(pm6)+min(pm6))/(2*mean(pm6));

pm7=PM1(261:278,1);
change(7)=std(pm7);
average(7)=mean(pm7);
p(7)=(max(pm7)+min(pm7))/(2*mean(pm7));

pm8=PM1(322:340,1);
change(8)=std(pm8);
average(8)=mean(pm8);
p(8)=(max(pm8)+min(pm8))/(2*mean(pm8));

pm9=PM1(340:356,1);
change(9)=std(pm9);
average(9)=mean(pm9);
p(9)=(max(pm9)+min(pm9))/(2*mean(pm9));

pm10=PM1(359:371,1);
change(10)=std(pm10);
average(10)=mean(pm10);
p(10)=(max(pm10)+min(pm10))/(2*mean(pm10));

pm11=PM1(373:404,1);
change(11)=std(pm11);
average(11)=mean(pm11);
p(11)=(max(pm11)+min(pm11))/(2*mean(pm11));

pm12=PM1(437:465,1);
change(12)=std(pm12);
average(12)=mean(pm12);
p(12)=(max(pm12)+min(pm12))/(2*mean(pm12));

pm13=PM1(465:495,1);
change(13)=std(pm13);
average(13)=mean(pm13);
p(13)=(max(pm13)+min(pm13))/(2*mean(pm13));

pm14=PM1(496:525,1);
change(14)=std(pm14);
average(14)=mean(pm14);
p(14)=(max(pm14)+min(pm14))/(2*mean(pm14));

pm15=PM1(531:555,1);
change(15)=std(pm15);
average(15)=mean(pm15);
p(15)=(max(pm15)+min(pm15))/(2*mean(pm15));

pm16=PM1(597:627,1);
change(16)=std(pm16);
average(16)=mean(pm16);
p(16)=(max(pm16)+min(pm16))/(2*mean(pm16));

pm17=PM1(629:668,1);
change(17)=std(pm17);
average(17)=mean(pm17);
p(17)=(max(pm17)+min(pm17))/(2*mean(pm17));

pm18=PM1(732:757,1);
change(18)=std(pm18);
average(18)=mean(pm18);
p(18)=(max(pm18)+min(pm18))/(2*mean(pm18));

pm19=PM1(759:782,1);
change(19)=std(pm19);
average(19)=mean(pm19);
p(19)=(max(pm19)+min(pm19))/(2*mean(pm19));

pm20=PM1(840:877,1);
change(20)=std(pm20);
average(20)=mean(pm20);
p(20)=(max(pm20)+min(pm20))/(2*mean(pm20));

pm21=PM1(881:908,1);
change(21)=std(pm21);
average(21)=mean(pm21);
p(21)=(max(pm21)+min(pm21))/(2*mean(pm21));

pm22=PM1(957:982,1);
change(22)=std(pm22);
average(22)=mean(pm22);
p(22)=(max(pm22)+min(pm22))/(2*mean(pm22));

pm23=PM1(982:1007,1);
change(23)=std(pm23);
average(23)=mean(pm23);
p(23)=(max(pm23)+min(pm23))/(2*mean(pm23));

pm24=PM1(1145:1171,1);
change(24)=std(pm24);
average(24)=mean(pm24);
p(24)=(max(pm24)+min(pm24))/(2*mean(pm24));

pm25=PM1(1171:1197,1);
change(25)=std(pm25);
average(25)=mean(pm25);
p(25)=(max(pm25)+min(pm25))/(2*mean(pm25));

pm26=PM1(1280:1305,1);
change(26)=std(pm26);
average(26)=mean(pm26);
p(26)=(max(pm26)+min(pm26))/(2*mean(pm26));

pm27=PM1(1305:1331,1);
change(27)=std(pm27);
average(27)=mean(pm27);
p(27)=(max(pm27)+min(pm27))/(2*mean(pm27));

pm28=PM1(1405:1431,1);
change(28)=std(pm28);
average(28)=mean(pm28);
p(28)=(max(pm28)+min(pm28))/(2*mean(pm28));

pm29=PM1(1431:1439,1);
change(29)=std(pm29);
average(29)=mean(pm29);
p(29)=(max(pm29)+min(pm29))/(2*mean(pm29));

pm30=PM1(1623:1632,1);
change(30)=std(pm30);
average(30)=mean(pm30);
p(30)=(max(pm30)+min(pm30))/(2*mean(pm30));

pm31=PM1(1632:1652,1);
change(31)=std(pm31);
average(31)=mean(pm31);
p(31)=(max(pm31)+min(pm31))/(2*mean(pm31));

pm32=PM1(1681:1691,1);
change(32)=std(pm32);
average(32)=mean(pm32);
p(32)=(max(pm32)+min(pm32))/(2*mean(pm32));

pm33=PM1(2113:2128,1);
change(33)=std(pm33);
average(33)=mean(pm33);
p(33)=(max(pm33)+min(pm33))/(2*mean(pm33));

x=1:1:33;
% figure
% bar(change,0.5);
% set(gcf,'unit','centimeters','position',[3 5 8 10]);
% set(gca,'Position',[.15 .2 .75 .6]);
% set(gca,'fontsize',10,'YColor','k',...
%     'YAxisLocation','left',...
%     'linewidth',1.5);
% set(gca,'ylim',[0,70],'ytick',0:10:70); %左轴的范围
% set(gca,'xlim',[0,35],'xtick',0:5:35); 
%     ylabel('Std.');

figure
plot(x,average,'-rs',...
    'LineWidth',1.5,...
    'MarkerSize',4,...
    'MarkerFaceColor','r');
set(gcf,'unit','centimeters','position',[3 5 8 10]);
set(gca,'unit','centimeters','Position',[0.5 1.5 5.5 8]);
% set(gca,'Position',[.075 .2 .75 .6]);
set(gca,'fontsize',10,'YColor','r','YAxisLocation','right','linewidth',1.5);
set(gca,'ylim',[20,120],'ytick',0:20:120); %左轴的范围
set(gca,'xlim',[0,35],'xtick',0:5:35); 
ylabel('Mean Conc.','color','r');
xlabel('No.','color','k');

figure
subplot(1,2,1)
% plot(x,p,'-rs',...
%     'LineWidth',1.5,...
%     'MarkerSize',7,...
%     'MarkerFaceColor','r');
bar(p,0.5);
set(gcf,'unit','centimeters','position',[3 5 16 10]);
set(gca,'unit','centimeters','Position',[1.5 1.5 5.5 8]);
set(gca,'fontsize',10,'YColor','k','YAxisLocation','left','linewidth',1.5);
set(gca,'ylim',[0.8,2.6],'ytick',0:0.2:2.6); %左轴的范围
set(gca,'xlim',[0,35],'xtick',0:5:35); 
ylabel('Diff.','color','k');
xlabel('No.','color','k');
subplot(1,2,2)
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

set(gcf,'unit','centimeters','position',[3 5 16 10]);
set(gca,'unit','centimeters','Position',[10 1.5 5.5 8]);

set(gca,'fontsize',10,'YColor','k','linewidth',1.5);
% set(gca,'ylim',[20,120],'ytick',0:20:120); %左轴的范围
% set(gca,'xlim',[0,35],'xtick',0:5:35); 
ylabel('Height(m)','color','k');
xlabel('Mass Conc.','color','k'); 
legend('Type 1','Type 2','Type 3');











