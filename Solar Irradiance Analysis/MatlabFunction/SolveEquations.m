function SolveEquations(name)
stg = strcat(name,'_most_likelihood_value.csv');
arr =xlsread(stg);
Sa = arr(:,2);
Ta = 37.3333;

Tc = Ta + Sa * 28.75;
I = Sa .* (3.4 + 1.5 * (Tc-25) );
V = 21.7 - 0.088 .* Tc;
FF = 0.7193;
Ps = 207 * FF .* V .* I;

arr(:,4) = Ta;
arr(:,5) = Tc;
arr(:,6) = I;
arr(:,7) = V;
arr(:,8) = FF;
arr(:,9) = Ps;
nw = strcat(name,'_all_values.csv');
xlswrite(nw, arr);
end