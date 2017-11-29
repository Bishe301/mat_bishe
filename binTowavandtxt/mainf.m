clear all
clc;
%修改数据路径。Sx_00y：x是第几块板子，y是以10为进制的录音序号，和前一个文件夹的个位数相同。
datapath1 = 'E:\1研究生\毕设\音乐资源\88单音\12\S1_002\';
datapath2 = 'E:\1研究生\毕设\音乐资源\88单音\12\S2_002\';
datapath3 = 'E:\1研究生\毕设\音乐资源\88单音\12\S3_002\';
datapath4 = 'E:\1研究生\毕设\音乐资源\88单音\12\S4_002\';
datapath5 = 'E:\1研究生\毕设\音乐资源\88单音\12\S5_002\';
datapath6 = 'E:\1研究生\毕设\音乐资源\88单音\12\S6_002\';

datalist1 = dir([datapath1 '*.bin']);datalist2 = dir([datapath2 '*.bin']);
datalist3 = dir([datapath3 '*.bin']);datalist4 = dir([datapath4 '*.bin']);
datalist5 = dir([datapath5 '*.bin']);datalist6 = dir([datapath6 '*.bin']);

addpath(datapath1);addpath(datapath2);addpath(datapath3);addpath(datapath4);
addpath(datapath5);addpath(datapath6);

%%将bin文件转化为原始数据，未归一化。
music1 = ArmToData(datalist1);music2 = ArmToData(datalist2);
music3 = ArmToData(datalist3);music4 = ArmToData(datalist4);
music5 = ArmToData(datalist5);music6 = ArmToData(datalist6);

%%设置wav和txt文件名字；musicfilename是wav文件名，txtfilename是txt文件名
musicfilename1 = 'ch1.wav';musicfilename2 = 'ch2.wav';musicfilename3 = 'ch3.wav';
txtfilename1 = 'ch1.txt';txtfilename2 = 'ch2.txt';txtfilename3 = 'ch3.txt';
musicfilename4 = 'ch4.wav';musicfilename5 = 'ch5.wav';musicfilename6 = 'ch6.wav';
txtfilename4 = 'ch4.txt';txtfilename5 = 'ch5.txt';txtfilename6 = 'ch6.txt';
musicfilename7 = 'ch7.wav';musicfilename8 = 'ch8.wav';musicfilename9 = 'ch9.wav';
txtfilename7 = 'ch7.txt';txtfilename8 = 'ch8.txt';txtfilename9 = 'ch9.txt';
musicfilename10 = 'ch10.wav';musicfilename11 = 'ch11.wav';musicfilename12 = 'ch12.wav';
txtfilename10 = 'ch10.txt';txtfilename11 = 'ch11.txt';txtfilename12 = 'ch12.txt';
musicfilename13 = 'ch13.wav';musicfilename14 = 'ch14.wav';musicfilename15 = 'ch15.wav';
txtfilename13 = 'ch13.txt';txtfilename14 = 'ch14.txt';txtfilename15 = 'ch15.txt';
musicfilename16 = 'ch16.wav';musicfilename17 = 'ch17.wav';musicfilename18 = 'ch18.wav';
txtfilename16 = 'ch16.txt';txtfilename17 = 'ch17.txt';txtfilename18 = 'ch18.txt';

Fs = 100000;
%%转化为wav文件和txt文件；
[ music_1,music_2,music_3 ] = wavandtxtdata(music1,musicfilename1,musicfilename2,musicfilename3,txtfilename1,txtfilename2,txtfilename3,Fs );
[ music_4,music_5,music_6 ] = wavandtxtdata(music2,musicfilename4,musicfilename5,musicfilename6,txtfilename4,txtfilename5,txtfilename6,Fs );
[ music_7,music_8,music_9 ] = wavandtxtdata(music3,musicfilename7,musicfilename8,musicfilename9,txtfilename7,txtfilename8,txtfilename9,Fs );
[ music_10,music_11,music_12] = wavandtxtdata(music4,musicfilename10,musicfilename11,musicfilename12,txtfilename10,txtfilename11,txtfilename12,Fs );
[ music_13,music_14,music_15 ] = wavandtxtdata(music5,musicfilename13,musicfilename14,musicfilename15,txtfilename13,txtfilename14,txtfilename15,Fs );
[ music_16,music_17,music_18 ] = wavandtxtdata(music6,musicfilename16,musicfilename17,musicfilename18,txtfilename16,txtfilename17,txtfilename18,Fs );


% figure
% subplot(6,3,1);plot(music_1);title('ch1音乐数据')
% subplot(6,3,2);plot(music_2);title('ch2音乐数据')
% subplot(6,3,3);plot(music_3);title('ch3音乐数据')
% subplot(6,3,4);plot(music_4);title('ch4音乐数据')
% subplot(6,3,5);plot(music_5);title('ch5音乐数据')
% subplot(6,3,6);plot(music_6);title('ch6音乐数据')
% subplot(6,3,7);plot(music_7);title('ch7音乐数据')
% subplot(6,3,8);plot(music_8);title('ch8音乐数据')
% subplot(6,3,9);plot(music_9);title('ch9音乐数据')
% subplot(6,3,10);plot(music_10);title('ch10音乐数据')
% subplot(6,3,11);plot(music_11);title('ch11音乐数据')
% subplot(6,3,12);plot(music_12);title('ch12音乐数据')
% subplot(6,3,13);plot(music_13);title('ch13音乐数据')
% subplot(6,3,14);plot(music_14);title('ch14音乐数据')
% subplot(6,3,15);plot(music_15);title('ch15音乐数据')
% subplot(6,3,16);plot(music_16);title('ch16音乐数据')
% subplot(6,3,17);plot(music_17);title('ch17音乐数据')
% subplot(6,3,18);plot(music_18);title('ch18音乐数据')


