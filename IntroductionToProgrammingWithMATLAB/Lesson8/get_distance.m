function distance = get_distance(cityA, cityB)

% The attached Distances.xlsx file contains a spreadsheet with the
% pairwise distances in miles of the top 100 Us cities by population.
% The first row and first column contain the city names using the 
% following format: cityname comma space capitalized state abbreviation,
% e.g., Nashville, TN. Note that the very first cell of the spreasheet, 
% A1, is blank.
% 
% Write a function called get_distance that accepts two character vector
% inputs representing the names of two cities. The function returns the
% distance between them as an output argument called distance. 
% For example, the call get_distance('Seattle, WA', 'Miami, FL') 
% should return 3723. If one or both of the cities are not in the file, 
% the function returns -1.

col=1;
row=1;
distance=0;
[num,text] = xlsread('Distances.xlsx');

while (strcmp(text(1,col), cityA) == 0)
    col=col+1;
    if col>337
        distance = -1;
        break;
    end
end
while (strcmp(text(row,1), cityB) == 0)
    row=row+1;
    if row>337
        distance = -1;
        break;
    end
end

if distance ~= -1
    distance = num(row-1, col-1);
end

end