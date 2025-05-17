function [solution] = jacob_residuo(A, b,tolleranza,x)
    D = diag(diag(A));
    C = A - D;
    x_k = x;
    inv_D = inv(D);


    if(det(D) == 0)
        solution = [];
        return
    end

    if(det(-inv_D*C) > 1)
        solution = [];
        return
    end

    
    while norm(b - A*x_k) > tolleranza
        x_k = inv_D*(b - C*x_k);
    end

    solution = x_k;

end