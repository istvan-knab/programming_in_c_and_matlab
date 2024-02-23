function covarianceMatrix = computeCovarianceMatrix(dataTable, indicators)

indicatorVect1 = dataTable.(indicators{1});
indicatorVect2 = dataTable.(indicators{2});

meanIndicator1 = mean(indicatorVect1);
meanIndicator2 = mean(indicatorVect2);

covarianceMatrix(1, 1) = mean((indicatorVect1 - meanIndicator1).^2);
covarianceMatrix(2, 2) = mean((indicatorVect2 - meanIndicator2).^2);
covarianceMatrix(1, 2) = mean((indicatorVect1 - meanIndicator1) .* ...
    (indicatorVect2 - meanIndicator2));
covarianceMatrix(2, 1) = covarianceMatrix(1, 2);

end