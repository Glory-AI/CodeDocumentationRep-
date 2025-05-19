%AC Node Voltage Analysis
R= 1; C= 1/16; L= 1; V= 1;
w= [1 10]; 
vo = zeros(1, 2); 
magnitude = zeros(1, 2);
angle_deg = zeros(1, 2);

for u = 1:2
    Zr = R; 
    Zc = 1 / (1i * w(u) * C); 
    Zl = 1i * w(u) * L;

    % Admittance matrix
    Y = [1/R + 1/Zc + 1/Zl, -1/Zl; 
        -1/Zl, 1/R + 1/Zc + 1/Zl];

    % Current vector
    I = [V/R; 0];

    % Solve for node voltages
    v = Y \ I;
    vo(u) = v(2);  % Node voltage of interest

    % Convert to phasor form
    magnitude(u) = abs(vo(u));
    angle_deg(u) = angle(vo(u)) * 180 / pi;
end

% Display results
fprintf('Voltage V2 @ omega = 1 rad/s:\n');
fprintf('Magnitude = %.4f, Angle = %.2f°\n', magnitude(1), angle_deg(1));

fprintf('\nVoltage V2 @ omega = 10 rad/s:\n');
fprintf('Magnitude = %.4f, Angle = %.2f°\n', magnitude(2), angle_deg(2));