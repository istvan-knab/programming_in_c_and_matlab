function transformedData = transformData(dataTable, eigVectors, ...
    indicators)

transformedData = renamevars(dataTable, indicators, ...
    ["PC1","PC2"]);

transformedData.PC1 = dataTable.(indicators{1}) * eigVectors(1, 1) + ...
    dataTable.(indicators{2}) * eigVectors(2, 1);
transformedData.PC2 = dataTable.(indicators{1}) * eigVectors(1, 2) + ...
    dataTable.(indicators{2}) * eigVectors(2, 2);

end