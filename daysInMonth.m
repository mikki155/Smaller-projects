function totalDays = daysInMonth(oneToTwelve)
switch (oneToTwelve)
    case 0
       totalDays = 0;
    case 1
       totalDays = 31;
    case 2
       totalDays = 28;
    case 3
       totalDays = 31;
    case 4
       totalDays = 30;
    case 5
       totalDays = 31;
    case 6
       totalDays = 30;
    case 7
       totalDays = 31;
    case 8
       totalDays = 31;
    case 9
       totalDays = 30;
    case 10
       totalDays = 31;
    case 11
       totalDays = 30;
    case 12
       totalDays = 31;
    otherwise
       totalDays = 0;
end
end