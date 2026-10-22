function res = valgraf()

    fid  = fopen('valori.txt','r');
    I    = fscanf(fid, '%f %f %f %f', [4 10]);
    fclose(fid);

    r    = [0.05; 0.04; 0.03; 0.02];
    U    = [120 140 160 180 200 220 240 260 280 300];

    for i = 1 : 10
        for j = 1 : 4
            I(j, i) = I(j, i) ^ 2;
        endfor
    endfor
    
    Ur2  = zeros()
    k    = 1;
    
    for i = 1 : 10
        for j = 1 : 4
            Ur2(i, j) = U(i) / (r(j) ^ 2);
        endfor
    endfor

    I(1:3,1)  = 0;
    I(4,8:10) = 0;
    Ur2(1,1:3)  = 0;
    Ur2(8:10,4) = 0;

    r
    U
    I = I';
    I
    Ur2

endfunction