function GetBeta(name)

number = 400;
for i = 1:17
    arr = strcat('arranged_', name, '_', int2str(number),'.csv');
    z =xlsread(arr);
    z = z(:,3);
    z = z / 1000;
    phat = betafit(z);
    a = phat(1,1);
    b = phat(1,2);
    r = rand(10000,1);
    x = betainv(r, a, b);
    sa = mean(x);
    value(i,1) = number;
    value(i,2) = sa;
    value(i,3) = sa * 1000;
    nw = strcat(name,'_most_likelihood_value.csv');
    number = number + 100;
end
xlswrite(nw, value);
end
        
    