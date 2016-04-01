function sim_value_userId = get_similarity( id )
    load('rating');
    oneLine = getOneLine(id);
    rating = [rating;oneLine];
    rating = rating';
    corr = corrcoef(rating);
    [corr_line,corr_row] = size(corr);
    similarity = corr(:,corr_row);
    similarity(corr_line)=[];
    
    %% �õ�ǰ5�����ƶ�ֵ���û�id����
    [sim_v sim_i]=sort(similarity,1,'descend');
    sim_value_userId = [sim_v(1:5),sim_i(1:5)];
    
    
    
end

