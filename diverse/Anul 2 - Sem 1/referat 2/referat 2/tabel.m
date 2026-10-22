function res = tabel()
    fid  = fopen('valoriD.txt','r');
    D    = fscanf(fid, '%f %f', [2 5]);

    d1 = 2.13 * 10^(-10);
    d2 = 1.23 * 10^(-10);
    L  = 0.135;
    e  = 1.602 * 10^(-19);
    m  = 9.109 * 10^(-31);
    h  = 6.625 * 10^(-34);
    U  = [3000; 3500; 4000; 4500; 5000];

    for i = 1 : 5
        Urad(i) = 1 / sqrt(U(i));
    endfor

    lambdaexp = zeros(2, 5);

    for i = 1 : 5
        lambdaexp(1, i) = ( ( d1 * D(1, i) ) / (2 * L) ) * 10^(12);
        lambdaexp(2, i) = ( ( d2 * D(2, i) ) / (2 * L) ) * 10^(12);
    endfor

    for i = 1 : 5
        lambdat(i) = ( h / sqrt(2 * m * e * U(i)) ) * 10^(12);
    endfor

    kd1 = 1.6690639046;
    kd2 = 2.8703597613;

    d1c = (2 * h * L) / (kd1 * sqrt(2 * m * e));
    d2c = (2 * h * L) / (kd2 * sqrt(2 * m * e));

    % res1 = (2 * h * L) / (d1 * sqrt(2 * m * e));
    % res2 = (2 * h * L) / (d2 * sqrt(2 * m * e));

    Urad'
    U
    lambdaexp'
    lambdat'
    d1c
    d2c
    % res1
    % res2
    
    fclose(fid);