function res = tabel1()

    r = 0.04;
    U = 160;
    I1 = 1.613;
    I2 = 1.610;
    I3 = 1.606;
    I4 = 1.616;
    I5 = 1.615;

    Im = (I1 + I2 + I3 + I4 + I5) / 5;

    sum1 = I1 - Im;
    sum2 = I2 - Im;
    sum3 = I3 - Im;
    sum4 = I4 - Im;
    sum5 = I5 - Im;

    N = 5;

    sigma = sqrt((sum1^2 + sum2^2 + sum3^2 + sum4^2 + sum5^2) / (N * (N - 1)));

    epsilon = sigma / Im;

    miu0 = 4*pi*(10^(-7));
    n = 154;
    R = 0.2;

    B = (4 / 5)^(3 / 2) * miu0 * n * (Im / R);
    em = (2 * U) / ((B^2) * (r^2));
    eps2 = 2 * epsilon;
    sigma2 = eps2 * em;

    Im
    sigma
    epsilon
    B
    em
    eps2
    sigma2