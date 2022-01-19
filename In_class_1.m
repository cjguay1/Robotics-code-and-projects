%calculate total resistance of series resistors
%
nres=0;
nres = input('Enter Number of resistors.');
sum=0;
for i=1:nres
    fprintf('Enter resistance in ohms for resistor %.0f\n', i);
    r=input(' ');
    sum=sum+r;
end
fprintf('Total resistance is %.0f ohms', sum);
