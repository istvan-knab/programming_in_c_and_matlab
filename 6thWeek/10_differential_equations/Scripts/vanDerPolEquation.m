function dX = vanDerPolEquation(time, X, mu)

dX = [X(2); ...
     mu * (1 - X(1)^2) * X(2) - X(1)];
end