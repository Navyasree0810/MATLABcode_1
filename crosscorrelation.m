clc;
clear all;
close all;
x=input('enter the input sequence1');
h=input('enter the input sequence2');
M=length(x);
N=length(h);
op_len=M+N-1;
%******step1 :change of axis***************
xm=[zeros(1,N-1),x];
hm=[h,zeros(1,M-1)];

%******step 3:shift the folded to right****
for i=1:op_len
    hrm=[zeros(1,i-1),hm(1:op_len-i+1)];
    y(i)=(xm*hrm');
end
%*****step 4:display output ***************
display('user defined function');
y
display('predefined function output');
xcorr(x,y)
nx=0:M-1;
nh=0:N-1;
ny=0:op_len-1;
subplot(311)
stem(nx,x);
xlabel('time');
ylabel('amplitude');
title('input signal Sequence');
subplot(312)
stem(nh,h);
xlabel('time');
ylabel('amplitude');
title('impulse signal');
subplot(313)
stem(ny,y);
xlabel('time');
ylabel('amplitude');
title('output signal crosscorrelation ');


  