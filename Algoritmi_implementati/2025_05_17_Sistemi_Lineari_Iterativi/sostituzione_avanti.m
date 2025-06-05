function [x] = sostituzione_avanti(A,b)
    x = ones(length(A),1);

    for i=1:length(A)
        sum = 0;
        for j=1:i-1
            sum = sum + A(i,j)*x(j);
        end
        x(i) = (b(i) - sum) / (A(i,i));
    end
end