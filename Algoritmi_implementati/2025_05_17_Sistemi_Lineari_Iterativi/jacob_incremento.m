function [solution] = jacob_incremento(A, b,tolleranza,x)
    D = diag(diag(A));
    C = A - D;
    x_old = [1:3]';
    x_new = x_old.*2;
    inv_D = inv(D);
    mat_iter = -inv(D)*C;


    while abs(x_old-x_new) > tolleranza
        x_old = x_new;
        x_new = mat_iter * x_old + inv(D)*b;
    end

    solution = x_new;

end