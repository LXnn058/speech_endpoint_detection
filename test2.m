%
% test2 
clear all; clc; close all;
run SET_I
run PART_I

pos = get(gcf,'Position');              % ��ͼ
set(gcf,'Position',[pos(1), pos(2)-100,pos(3),(pos(4)-200)]);
plot(time,x,'k');         
title('��¼�������������źţ�������');
ylabel('��ֵ'); axis([0 max(time) -1 1]); grid;
xlabel('ʱ��/s');
run PART_II
[voiceseg,vsl,SF,NF]=vad_ezrm(x,wlen,inc,NIS);  % �˵���

for k=1 : vsl                           % ������ֹ��λ��
    nx1=voiceseg(k).begin; nx2=voiceseg(k).end;
    nxl=voiceseg(k).duration;
    if nx2-nx1 > 100
    fprintf('%4d   %4d   %4d   %4d\n',k,nx1,nx2,nxl);
        line([frameTime(nx1) frameTime(nx1)],[-1.5 1.5],'color','k','LineStyle','-');
        line([frameTime(nx2) frameTime(nx2)],[-1.5 1.5],'color','k','LineStyle','--');
    end
end
