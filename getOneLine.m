function [ oneLine ] = getOneLine( id )
%ͨ���û���ID��ȡ�Ը�����Ӱ�����ֵ�0����
test = load('u1.test');
test = test(:,1:3);
oneTest = test(test(:,1)==id,:);
info = textread('u.info','%n%*[^\n]');
oneLine = zeros(1,info(2));

%% ����Ӱ������ֵ
[oneTestNum,v] = size(oneTest);
for n=1:oneTestNum
    oneTestLine = oneTest(n,:);
    oneLine(oneTestLine(2)) = oneTestLine(3);
end



end

