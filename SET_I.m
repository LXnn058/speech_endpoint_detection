% SET_I
% �����ļ��Ͳ���

filedir='./DATA/';                      % ָ���ļ�·��
filename='demo2.wav';               % ָ���ļ���
fle=[filedir filename]                  % ����·�����ļ������ַ���

% ���÷�֡����
wlen=200; inc=80;
% ���������
SNR = 5;
SNR_flag = false;
% ��������������Ĳ���
m = 3;
m_flag = false;
% �����˲�����
fp = 500; fs1 = 750;
Fs = 8000; Fs2 = Fs/2;
Wp = fp/Fs2; Ws = fs1/Fs2;
Rp = 3; Rs = 50;
filter_flag = false;