function dataTable = parseCountryDataSet(dataPath, indicators)

dataTableRaw = readtable(dataPath, "VariableNamingRule", "preserve");

numOfIndicators = numel(indicators);
numOfDataPoints = size(dataTableRaw, 1);

varNames = ["Country", "Happiness", indicators];
varTypes = ["string", repmat("double", 1, numOfIndicators + 1)];
szTable = [numOfDataPoints, numOfIndicators + 2];
dataTable = table('Size', szTable, 'VariableTypes', varTypes, ...
    'VariableNames', varNames);

dataTable.Country = dataTableRaw.('Country name');
dataTable.Happiness = dataTableRaw.('Ladder score');

for iInd = 1 : numOfIndicators
    currentIndicator = indicators{iInd};
    dataTable.(currentIndicator) = dataTableRaw.(currentIndicator);
end

end