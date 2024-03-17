function sinValue = sinTaylor(x, n)

%% Solution A
% sinValue = 0;
% for i = 0 : n
%     sinValue = sinValue + (-1)^i / factorial(2 * i + 1) * x^(2 * i + 1);
% end

%% Solution B
indexVect = 0 : n;
taylorVect = (-1).^indexVect ./ factorial(2 * indexVect + 1) .* ...
    x.^(2 * indexVect + 1);
sinValue = sum(taylorVect);

end