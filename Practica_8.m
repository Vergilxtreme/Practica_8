% Christian Kaleb Morán Cortés
% Simulación de sistemas

% Practica 8
[t, x] = ode45(@prac8, [0, 10], [0 0 0]);

figure(1)
plot(t, x(:, 3), "k-")
grid on

function dx=prac8(t, x)

R = 2;
L = 0.023;
b = 0.0012;
k = 0.01;
J = 0.001;
Va = 1;

dx = zeros(3, 1);

dx(1) = (1/L)*(Va - R*x(1) - k*x(3));
dx(2) = x(3);
dx(3) = (1/J)*(k*x(1) - b*x(3));
end