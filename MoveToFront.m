function output = MoveToFront(s)

    alfabeto = unique(s);
    output = zeros(length(s),1);
    for n=1:length(s)
        simbolo = s(n);
        index = find(alfabeto==simbolo,1);
        alfabeto = alfabeto([1:index-1,index+1:end]);
        alfabeto(2:end+1) = alfabeto;
        alfabeto(1) = simbolo;
        output(n) = index;
    end
    
end 
