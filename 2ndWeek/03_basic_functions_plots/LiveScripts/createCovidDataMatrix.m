function [monthNames, covidDataMatrix] = createCovidDataMatrix(countries)

[dates, numberOfCases] = readCovidDataBase(countries);

allMonth = month(dates);
months = unique(allMonth, 'stable');
[months, sortIndex] = sort(months);

monthNames = unique(month(dates, 'name'), 'stable');
monthNames = monthNames(sortIndex);

numOfMonths = numel(months);
numOfCountries = numel(countries);

covidDataMatrix = zeros(numOfMonths, numOfCountries);
for i = 1 : numel(months)
    currentMonth = months(i);
    monthFilter = allMonth == currentMonth;
    covidDataMatrix(i, :) = sum(numberOfCases(monthFilter, :), 1);
end

% save('monthlyCovidData.mat', 'covidDataMatrix', 'months', 'countries', ...
%     '-mat');
end