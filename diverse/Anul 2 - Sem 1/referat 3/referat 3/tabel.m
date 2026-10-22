function res = tabel()
    a = 0.24 / 1000;
    D = 165.5 / 100;

    % TABEL 1

    Xsn1 = [ -3, -6.5, -10, -2.5, -6, -9.5,  -3, -6.5, -10];
    Xdn1 = [2.5,    6, 9.5,    3,  6,  9.5, 2.5,    6, 9.5];

    for i = 1 : 9
        Xmn(i) = (Xsn1(i) - Xdn1(i)) / 2;

        if (Xmn(i) < 0) Xmn(i) = -Xmn(i); endif
    endfor

    Xmn = Xmn / 1000;

    for i = 1 : 3
        lambda(i)     = (Xmn(i) * a) / (D * i);
        lambda(i + 3) = (Xmn(i + 3) * a) / (D * i);
        lambda(i + 6) = (Xmn(i + 6) * a) / (D * i);
    endfor

    lambda = lambda * 10^9;

    lambda_sum = 0;

    for i = 1 : 9
        lambda_sum += lambda(i);
    endfor

    lambda_sum /= 9;

    sum = 0;

    for i = 1 : 9
        sum += (lambda(i) - lambda_sum)^2;
    endfor

    N = 9;

    sigma_lambda = sqrt(sum / (N * (N - 1)));

    % TABEL 2

    Xsn2 = [22, 11,  4,   11,  6,    3];
    Xdn2 = [42, 54, 61, 20.5, 24, 27.5];

    for i = 1 : 6
        XMne(i) = (Xsn2(i) - Xdn2(i)) / 2;

        if (XMne(i) < 0) XMne(i) = -XMne(i); endif
    endfor

    lambda_t1 = lambda_sum + sigma_lambda;
    lambda_t2 = lambda_sum - sigma_lambda;

    lambda_t1 *= 10^(-6);
    lambda_t2 *= 10^(-6);

    epsilon   = [4.493, 7.725, 10.904];
    In        = [0.0472, 0.0168, 0.00834];
    a         = 0.24;
    b         = 0.48;
    D         = 1655;

    XMnt1(1)  = (lambda_t1 * D * epsilon(1)) / (pi * a);
    XMnt1(2)  = (lambda_t1 * D * epsilon(2)) / (pi * a);
    XMnt1(3)  = (lambda_t1 * D * epsilon(3)) / (pi * a);
    XMnt1(4)  = (lambda_t1 * D * epsilon(1)) / (pi * b);
    XMnt1(5)  = (lambda_t1 * D * epsilon(2)) / (pi * b);
    XMnt1(6)  = (lambda_t1 * D * epsilon(3)) / (pi * b);

    XMnt2(1)  = (lambda_t2 * D * epsilon(1)) / (pi * a);
    XMnt2(2)  = (lambda_t2 * D * epsilon(2)) / (pi * a);
    XMnt2(3)  = (lambda_t2 * D * epsilon(3)) / (pi * a);
    XMnt2(4)  = (lambda_t2 * D * epsilon(1)) / (pi * b);
    XMnt2(5)  = (lambda_t2 * D * epsilon(2)) / (pi * b);
    XMnt2(6)  = (lambda_t2 * D * epsilon(3)) / (pi * b);

    XMnt1 *= 2;
    XMnt2 *= 2;

    for i = 1 : 6
        kxM(i) = XMne(i) / XMnt1(i);
    endfor

    k_sum = 0;

    for i = 1 : 6
        k_sum += kxM(i);
    endfor

    k_sum /= 6;

    sumk = 0;

    for i = 1 : 6
        sumk += (kxM(i) - k_sum)^2;
    endfor

    N = 6;

    sigma_k = sqrt(sumk / (N * (N - 1)));

    I0a = 46.6;
    I0b = 104.4;

    Ik = [3.17, 1.05, 0.73, 6.41, 3.27, 1.33];

    Ine(1) = Ik(1) / I0a;
    Ine(2) = Ik(2) / I0a;
    Ine(3) = Ik(3) / I0a;
    Ine(4) = Ik(4) / I0b;
    Ine(5) = Ik(5) / I0b;
    Ine(6) = Ik(6) / I0b;

    kI(1) = Ine(1) / In(1);
    kI(2) = Ine(2) / In(2);
    kI(3) = Ine(3) / In(3);
    kI(4) = Ine(4) / In(1);
    kI(5) = Ine(5) / In(2);
    kI(6) = Ine(6) / In(3);

    kI_sum = 0;

    for i = 1 : 6
        kI_sum += kI(i);
    endfor

    kI_sum /= 6;

    sumkI = 0;

    for i = 1 : 6
        sumkI += (kI(i) - kI_sum)^2;
    endfor

    N = 6;

    sigma_kI = sqrt(sumkI / (N * (N - 1)));

    Xmn
    lambda
    lambda_sum
    sigma_lambda

    XMne
    lambda_t1
    lambda_t2
    XMnt1
    XMnt2

    kxM
    k_sum
    sigma_k

    Ine

    kI
    kI_sum
    sigma_kI

endfunction