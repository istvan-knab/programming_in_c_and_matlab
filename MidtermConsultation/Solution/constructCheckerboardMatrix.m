function checkerboardMatrix = constructCheckerboardMatrix(nSize)

checkerboardMatrix = zeros(nSize, nSize); % initialize matrix with zeros
for i = 1 : nSize
    for j = 1 : nSize
        isBothEven = (mod(i, 2) == 0) && (mod(j, 2) == 0);
        isBothOdd = (mod(i, 2) == 1) && (mod(j, 2) == 1);
        if isBothEven || isBothOdd
            checkerboardMatrix(i, j) = 1;
        end
    end
end

end