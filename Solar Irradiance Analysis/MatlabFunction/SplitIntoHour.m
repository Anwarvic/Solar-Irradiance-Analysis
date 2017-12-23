function [a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17] = SplitIntoHour(arr, size)

k = ones(1,20);

for i = 1 : size
    x = arr(i,2);
    
    if (x == 600)
        a1(k(1,2),:) = arr(i,:);
        k(1,2)= k(1,2) + 1;
    elseif (x == 700)
        a2(k(1,3),:) = arr(i,:);
        k(1,3)= k(1,3) + 1;
    elseif (x == 800)
        a3(k(1,4),:) = arr(i,:);
        k(1,4)= k(1,4) + 1;
    elseif (x == 900)
        a4(k(1,5),:) = arr(i,:);
        k(1,5)= k(1,5) + 1;
    elseif (x == 1000)
        a5(k(1,6),:) = arr(i,:);
        k(1,6)= k(1,6) + 1;
    elseif (x == 1100)
        a6(k(1,7),:) = arr(i,:);
        k(1,7)= k(1,7) + 1;
    elseif (x == 1200)
        a7(k(1,8),:) = arr(i,:);
        k(1,8)= k(1,8) + 1;
    elseif (x == 1300)
        a8(k(1,9),:) = arr(i,:);
        k(1,9)= k(1,9) + 1;
    elseif (x == 1400)
        a9(k(1,10),:) = arr(i,:);
        k(1,10)= k(1,10) + 1;
    elseif (x == 1500)
        a10(k(1,11),:) = arr(i,:);
        k(1,11)= k(1,11) + 1;
    elseif (x == 1600)
        a11(k(1,12),:) = arr(i,:);
        k(1,12)= k(1,12) + 1;
    elseif (x == 1700)
        a12(k(1,13),:) = arr(i,:);
        k(1,13)= k(1,13) + 1;
    elseif (x == 1800)
        a13(k(1,14),:) = arr(i,:);
        k(1,14)= k(1,14) + 1;
    elseif (x == 1900)
        a14(k(1,15),:) = arr(i,:);
        k(1,15)= k(1,15) + 1;
    elseif (x == 2000)
        a15(k(1,16),:) = arr(i,:);
        k(1,16)= k(1,16) + 1;
    elseif (x == 400)
        a16(k(1,17),:) = arr(i,:);
        k(1,17)= k(1,17) + 1;
    elseif (x == 500)
        a17(k(1,18),:) = arr(i,:);
        k(1,18)= k(1,18) + 1;
    end   
end


xlswrite('spring_600.csv', a1);
xlswrite('spring_700.csv', a2);
xlswrite('spring_800.csv', a3);
xlswrite('spring_900.csv', a4);
xlswrite('spring_1000.csv', a5);
xlswrite('spring_1100.csv', a6);
xlswrite('spring_1200.csv', a7);
xlswrite('spring_1300.csv', a8);
xlswrite('spring_1400.csv', a9);
xlswrite('spring_1500.csv', a10);
xlswrite('spring_1600.csv', a11);
xlswrite('spring_1700.csv', a12);
xlswrite('spring_1800.csv', a13);
xlswrite('spring_1900.csv', a14);
xlswrite('spring_2000.csv', a15);
xlswrite('spring_400.csv', a16);
xlswrite('spring_500.csv', a17);
end
