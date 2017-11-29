function music = ArmToData(datalist)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
listlength = length(datalist);
music = [];
fflag = 0;
for k = 1:listlength
    fflag = fopen(datalist(k).name);
    [DATA]= fread(fflag);
%[DATA]=textread('G:\FPGA_Design\Cyclone_3\Desktop\ADC_SYS\Eight_Endingend\成像.txt','%s');%%%
% [DATA]=textread('C:\Users\jjliu\Desktop\test\A0.txt','%s');
    s='-*';
    Channel=3;
%%删除数据中的连续四个aa
%%for i=1:size(DATA,1)
    j=1;
    for i=1:size(DATA,1)
        if isempty(DATA(i,1))~=1 
           NEW_DATA(j,1)=DATA(i,1);  
           j=j+1;
        end
    end
%%删除帧头
% NEW_DATA(1:2)=[];
% DataLength_1=length(NEW_DATA);
%%删除帧尾
% NEW_DATA(DataLength_1-1:DataLength_1)=[];
%%开始处理数据
%%判断数据,将数据分为8*N形式
    DataLength_2=length(NEW_DATA);
    MOD=mod(DataLength_2,6);
    if MOD==0
        END_DATA=NEW_DATA;
    else if MOD~=0
            NEW_DATA(DataLength_2-MOD+1:DataLength_2)=[];
            END_DATA=NEW_DATA;
        end
    end
    DataLength_3=length(END_DATA);
    for i=2:2:DataLength_3
        END_DATA(i) = NEW_DATA(i)*256 + NEW_DATA(i-1);
    end  
USE_DATA_1=END_DATA(2:2:DataLength_3);
Scale=length(USE_DATA_1)/Channel;
USE_DATA=reshape(USE_DATA_1,Channel,Scale);
music = [music USE_DATA];
end
fclose('all');
end

