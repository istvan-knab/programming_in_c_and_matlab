function worldHappinesDataVisualization(dataTable, indicators)

fig = figure();
plotAxis = axes(fig);

scatter(plotAxis, dataTable.(indicators{1}), dataTable.(indicators{2}), ...
    [], dataTable.Happiness, "filled");

colorbar(plotAxis)
xlabel(plotAxis, indicators{1})
ylabel(plotAxis, indicators{2})

end