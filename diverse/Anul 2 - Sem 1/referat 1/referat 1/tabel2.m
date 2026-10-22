function res = tabel2()

    fid  = fopen('valori.txt','r');
    I    = fscanf(fid, '%f %f %f %f', [4 10]);
    fclose(fid);

    miu0 = 4 * pi * (10^(-7));
    n    = 154;
    R    = 0.2;
    r    = [0.05 0.04 0.03 0.02];
    U    = [120 140 160 180 200 220 240 260 280 300];

    em = zeros(4, 10);

    dummy = (125/32) * ((R^2) / ((miu0^2) * (n^2)));

    for i = 1 : 10
        for j = 1 : 4
            em(j, i) = dummy * (U(i) / (((r(j))^2) * ((I(j,i))^2)));
        endfor
    endfor

    em(1:3,1)  = 0;
    em(4,8:10) = 0;
    
    K = 34;
    trash = 0;

    for i = 1 : 10
        for j = 1 : 4
            trash += em(j,i);
        endfor
    endfor

    em_m = trash / K;

    sum = (1.5291e+11 - 1.5728e+11)^2;

    for i = 2 : 7
        for j = 1 : 4
            sum += (em(j,i) - em_m)^2;
        endfor
    endfor

    for i = 7 : 10
        for j = 1 : 3
            sum += (em(j,i) - em_m)^2;
        endfor
    endfor

    sigma_em = sqrt(sum / (K * (K - 1)));

    eps_em = sigma_em / em_m;

    I'
    em'
    trash
    em_m
    sum
    sigma_em
    eps_em