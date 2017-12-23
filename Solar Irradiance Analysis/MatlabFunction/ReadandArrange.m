function ReadandArrange(name)
%read
number = 400;
for i = 1:17
   arr = strcat(name, '_', int2str(number),'.csv');
   number = number + 100;
   temp =xlsread(arr);
   temp = sortrows(temp,3);
   nw = strcat('arranged_',arr);
   xlswrite(nw, temp);
end
end