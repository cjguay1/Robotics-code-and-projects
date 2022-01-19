% Lab 1
% 9/5/2019
% Christopher Guay
% EDSGN 410  
% Lab 1 part 2b Data series resistance

%variable declaration
nres=0;

%getting user input
nres = input('Enter Number of resistors.');
sum=0;
for i=1:nres
    fprintf('Enter resistance in ohms for resistor %.0f\n', i);
    r=input(' ');
    sum=sum+1/r;
    parallelsum=1/sum;
end

%printing results
fprintf('Total resistance is %.0f ohms', parallelsum);