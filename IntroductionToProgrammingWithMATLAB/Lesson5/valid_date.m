function valid = valid_date(year, month, day)

% Write a function called valid_date that takes 3 positive integer scalar inputs year, month, day.
% If these 3 represent a valid date, return logical true, otherwise false.
% The name of the output argument is valid.
% If any of the arguments is not a positive integer scalar, return false as well.
% Note that every year that is exactly divisible by 4 is a leap year, except for years that are
% exactly divisible by 100. However, years that are exactly divisible by 400 are also leap years.
% Your solution must not contain any of the date related built-in Matlab functions.

if(isscalar(year) && isscalar(month) && isscalar(day) && year>0 && month>0 && day>0 && year==fix(year) && month==fix(month) && day==fix(day)) %chequeo que sean argumentos validos
    %ahora chequeo todos los meses 
    if(month==1 || month==3 || month==5 || month==7 || month==8 || month==10 || month==12) %meses con 31 dias
        if(day<=31)
            valid=true;
        else
            valid=false;
        end
    elseif(month==4 || month==6 || month==9 || month==11) %meses con 30 dias excepto febrero
        if(day<=30)
            valid=true;
        else
            valid=false;
        end
    elseif(month==2 && (~mod(year,4) && (mod(year,100) || ~mod(year,400)))) %busco años bisiestos para analizar el caso de febrero
        if(day<=29)
            valid=true;
        else
            valid=false;
        end
    elseif(month==2)
        if(day<=28)
            valid=true;
        else
            valid=false;
        end
    else
        valid=false;
    end
else
    valid = false;
end