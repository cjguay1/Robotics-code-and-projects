%this program calculates parallel resistor total resistance
nres=0;
nres = input('Enter Number of resistors.');
sum=0;
for i=1:nres
    fprintf('Enter resistance in ohms for resistor %.0f\n', i);
    r=input(' ');
    sum=sum+(1/r);
end
actualsum=(1/sum);
fprintf('Total resistance is %.0f ohms', actualsum);
