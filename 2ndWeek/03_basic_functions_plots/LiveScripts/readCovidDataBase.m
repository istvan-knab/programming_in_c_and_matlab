function [filtDate, numberOfCases] = readCovidDataBase(countries)
filename = 'covidData_2021_03_09.csv';

dataTable = readtable(filename);
countryData = dataTable.countriesAndTerritories;
caseData = dataTable.cases;
dateData = dataTable.dateRep;
numOfEntries = numel(countryData);
numOfCountries = numel(countries);

numberOfCases = zeros(numOfEntries, numOfCountries);
numOfCountryEntries = zeros(1, numOfCountries);

filtDate = repmat(datetime, numOfEntries, 1);
numOfFiltDates = 0;
for i = 1 : numOfEntries
    for j = 1 : numOfCountries
        currentCountry = countries{j};
        if strcmpi(countryData{i}, currentCountry) && caseData(i) < 1e4
            if ~any(dateData(i) == filtDate)
                numOfFiltDates = numOfFiltDates + 1;
                filtDate(numOfFiltDates) = dateData(i);
                index = numOfFiltDates;
            else
                index = find(dateData(i) == filtDate);
            end
            numOfCountryEntries(j) = numOfCountryEntries(j) + 1;
            numberOfCases(index, j) = caseData(i);
        end
    end
end


filtDate = dateData(1 : numOfFiltDates);
numberOfCases = numberOfCases(1 : numOfFiltDates, :);

[filtDate, sortIndex] = sort(filtDate);
numberOfCases = numberOfCases(sortIndex, :);
 
    
end