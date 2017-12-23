function [winter, spring, summer, fall] = SplitIntoSeason(arr)

winter_start_year = 19981223 ;
winter_end_year = 19990322;

spring_start_year = 19990323;
spring_end_year = 19990622;

summer_start_year = 19990623;
summer_end_year = 19990922;

fall_start_year = 19990923;
fall_end_year = 19991222;

k1=1;
k2=1;
k3=1;
k4=1;
for j = 1:12
    for i = 1 : 46946
        x = arr(i,1);
        if (x >= winter_start_year && x <= winter_end_year)
            winter(k1,:) = arr(i,:);
            k1= k1 + 1;
        elseif ((x >= spring_start_year && x <= spring_end_year))
            spring(k2,:) = arr(i,:);
            k2= k2 + 1;
        elseif ((x >= summer_start_year && x <= summer_end_year))
            summer(k3,:) = arr(i,:);
            k3= k3 + 1;
        elseif ((x >= fall_start_year && x <= fall_end_year))
            fall(k4,:) = arr(i,:);
            k4= k4 + 1;
        end
    end
    winter_start_year = winter_start_year + 10000;
    winter_end_year = winter_end_year + 10000;

    spring_start_year = spring_start_year + 10000;
    spring_end_year = spring_end_year + 10000;

    summer_start_year = summer_start_year + 10000;
    summer_end_year = summer_end_year + 10000;

    fall_start_year = fall_start_year + 10000;
    fall_end_year = fall_end_year + 10000;
end
end
