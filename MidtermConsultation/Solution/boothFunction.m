function zValue = boothFunction(xValue, yValue)

zValue = (xValue + 2 * yValue - 7).^2 + ...
    (2 * xValue + yValue - 5).^2;

end