% PART_II

IS=0.2; overlap=wlen-inc;               % ����IS
NIS=fix((IS*fs-wlen)/inc +1);           % ����NIS
fn=fix((N-wlen)/inc)+1;                 % ��֡��
frameTime=frame2time(fn, wlen, inc, fs);% ����ÿ֡��Ӧ��ʱ��