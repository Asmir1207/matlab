%制作结构体 by Asmir /2019.5.11
%
S =table2struct(text1); 将text1这个table转成struct
t = text(:,1)  获取text1的第一列id号
t_id = table2array(t) 将table t 转数组
for i=1:length(S)
    s=S(i);%S是导在workspace的csv文件
    tid=t_id(i);%tid是csv的id号
    
    eval(['save(','''E:\xzfcwl\bilibili_struct\aid',num2str(tid),'.mat''',',','''s''',')']);%将数据保存为mat文件，eval是合成语句，合成整个命令，语句中需要把tid转str不然会出现乱码
    
end
    
 
 


% save('aid620.mat','a') %save函数变量a要加引号
% for i = 1:length(file) %遍历所有CSV文件
%     csvpath = fullfile('E:\xzfcwl\bilibili_csv_447500\csv_1_10000\part1\',file(i).name); % 获取CSV文件的完整路径
%     csvtext = csvread(csvpath); % 读取文件
%     str1 = datenum(result(i:15,45),'yyyy-mm-dd HH:MM:SS');
%     
%     
%     
% end
% s = struct('strings',{{'hello','yes'}},'lengths',[5 3])
% for n = 1:6
%      eval(['EEG_',num2str(n),'=','s']);
% end