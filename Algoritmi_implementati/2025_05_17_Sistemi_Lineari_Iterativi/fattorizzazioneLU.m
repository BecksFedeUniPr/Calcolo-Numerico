function [x] = fattorizzazioneLU(A,b)
    U = A;
    n = length(A);
    L = eye(n);
  
    for i=2:n
        for j=i:n
            m = U(j,i-1)/U(i-1,i-1);
            U(j,:) = U(j,:) -m*U(i-1,:);
            L(j,i-1) = m;
        end
    
    end
        %L*y = b;
        y = sostituzione_avanti(L,b);
        %U*x = y
        x = sostituzione_indietro(U, y);
end