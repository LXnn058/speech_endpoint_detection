% ��ʱ�����Ͷ�ʱ������

clear all; clc; close all;

run SET_I;
run PART_I;

win = hanning(wlen);
X = enframe(x,win,inc)';
fn = size(X,2);

for i = 1 : fn
    u = X(:,i);
    u2 = u.*u;
    En(i) = sum(u2);
end

zcr = zeros(1,fn);
for i = 1 : fn
    zcr(i) = sum(X(1:end-1, i).* X(2:end,i)<0);
end

subplot 311; plot(time, x, 'k');
title('��������');
ylabel('��ֵ'); xlabel(['ʱ��/s' 10 '(a)']);
frameTime = frame2time(fn,wlen,inc,Fs);
subplot 312; plot(frameTime, En, 'k');
title('��ʱ����');
ylabel('��ֵ'); xlabel(['ʱ��/s' 10 '(b)']);
subplot 313; plot(frameTime, zcr, 'k'); grid;
title('��ʱƽ��������');
ylabel('��ֵ'); xlabel(['ʱ��/s' 10 '(c)']);

