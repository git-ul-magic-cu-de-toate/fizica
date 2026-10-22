function alpha = Plot()

    % Read data

    Data = dlmread('valori-grafic.txt');

    % x, y refer to the points from the processed input data

    x = Data(:, 1);
    y = Data(:, 2);
    m = length(x);

    % ML Algorithm to obtain regression line its slope(alpha)

    X = [ones(m, 1), x];

    alpha   = 0.001;
    weights = [0; 0];

    for i = 1 : 100000
        hypothesis = X * weights;
        weights    = weights - alpha * (1 / m) * X' * (hypothesis - y);
    end

    % X, Y refer to the regression line

    Y = X .* (-weights(1)) + weights(2);

    % plot the points and their regression line figure;

    plot(x, y, 'bs', "markersize", 5);
    xlabel('U/r^2 (V/cm^2)  -->', 'fontsize', 14);
    ylabel('I^2 (A^2)      -->', 'fontsize', 14);
    hold on
    plot(X, Y, 'r-', "linewidth", 2)
    hold off
    title('I^2 raportat la U/r^2')

    M = [x, y]

    alpha = -weights(1) / 10000;

    miu0 = 4 * pi * (10^(-7));
    n    = 154;
    R    = 0.2;

    em = (125/32) * ((R^2) / ((miu0^2) * (n^2))) * (1 / alpha);
    em 

endfunction