%�����ṹ�� by Asmir /2019.5.11
%
S =table2struct(text1); ��text1���tableת��struct
t = text(:,1)  ��ȡtext1�ĵ�һ��id��
t_id = table2array(t) ��table t ת����
for i=1:length(S)
    s=S(i);%S�ǵ���workspace��csv�ļ�
    tid=t_id(i);%tid��csv��id��
    
    eval(['save(','''E:\xzfcwl\bilibili_struct\aid',num2str(tid),'.mat''',',','''s''',')']);%�����ݱ���Ϊmat�ļ���eval�Ǻϳ���䣬�ϳ���������������Ҫ��tidתstr��Ȼ���������
    
end
    
 
 


% save('aid620.mat','a') %save��������aҪ������
% for i = 1:length(file) %��������CSV�ļ�
%     csvpath = fullfile('E:\xzfcwl\bilibili_csv_447500\csv_1_10000\part1\',file(i).name); % ��ȡCSV�ļ�������·��
%     csvtext = csvread(csvpath); % ��ȡ�ļ�
%     str1 = datenum(result(i:15,45),'yyyy-mm-dd HH:MM:SS');
%     
%     
%     
% end
% s = struct('strings',{{'hello','yes'}},'lengths',[5 3])
% for n = 1:6
%      eval(['EEG_',num2str(n),'=','s']);
% end