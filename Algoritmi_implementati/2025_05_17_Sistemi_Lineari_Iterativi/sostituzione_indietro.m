function [x] = sostituzione_indietro(A,b)
    x = ones(length(A),1);

    for i=length(A):-1:1
        sum = 0;
        for j=i+1:length(A)
            sum = sum + A(i,j)*x(j);
        end
        x(i) = (b(i) - sum) / (A(i,i));
    end
end