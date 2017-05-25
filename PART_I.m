% PART_I
% ���������źŲ�����������������������ź�Ԥ����

[x,fs] = audioread(fle);
if SNR_flag
    x=Gnoisegen(x,SNR);                 % ������������ڲ���
end
x=x/max(abs(x));
N=length(x);
time=(0:N-1)/fs;
if m_flag
    [x,xtrend]=polydetrend(x,fs,m);     % ����������
end
if filter_flag
    [n, Wn] = cheb2ord(Wp, Ws, Rp, Rs);
    [b, a] = cheby2(n, Rs, Wn);
    x = filter(b, a, x);                % �˲�
end