function GetCDF(name)

file = xlsread(name);
z = file(:,1);

for t1 = 1:102
    t2 = t1 * 10;
    temp = 0;
    for i = 1:length(z)
        if (z(i) >= 0 && z(i)< t2)
            temp = temp + 1;
        end
    end
    file(t1,3) = temp/length(z);
end
xlswrite('cdf', file)
end
