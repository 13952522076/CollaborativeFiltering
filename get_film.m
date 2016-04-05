function films = get_film( id )
    %��ȡǰ�������ƶȾ���
    sim_value_userId = get_similarity(id);
    base = load('u1.base');
    %��ȡ��Ӱ����
    items = importdata('u.item','|',0);
    %�ȶ�����Ƽ���Ӱ�Ŀռ�
    films = [];
    %ǰ5�����ƶȱ�����Ӱ
    for n=1:5
        %��ȡ�������û������־���
        first_base = base(base(:,1)==sim_value_userId(n,2),:);
        %��ȡ���û�����Ϊ5�ֵ���ߵĵ�Ӱ���־���
        first_base_top = first_base(find(first_base(:,3)==5),:);
        %��ȡ��Ӱ��
        films_items = items.textdata(first_base_top(:,2),2);
        %׷�ӵ�Ӱ������ǰ����õĿռ���
        films = [films;films_items];
    end
    %ȥ�أ���ֹ5���������û��Ƽ��ĵ�Ӱ���ظ�
    films = unique(films);
end

