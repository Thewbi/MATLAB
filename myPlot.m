function myPlot(x_data, y_data, tTitle, xLabel, yLabel)
   
    title(tTitle)
    xlabel(xLabel)
    ylabel(yLabel)
    
    %plot(x_data, y_data)
    plot(x_data, y_data, 'linestyle', 'none', 'marker', '.')
    %stairs(x_data, y_data)
    %bar(x_data, y_data)

    grid on
    
end