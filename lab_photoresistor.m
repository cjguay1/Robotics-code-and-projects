%Program name: Lab_photoresistor
%Program purpose: to record values from a photoresistor and plot them
%Program creation date: 9/3/2019
%Programmer: Christopher Guay
%Last revision: 9/3/2019

% clear a; %clear arduino board assignment from previous
a=arduino('COM6','Uno'); % set arduino board assignment
x=1:250;
counter=1;

for i=1:50
    for j=1:5
        voltage(counter)=readVoltage(a, 'A0')
        pause(0.2);
        counter=counter+1;
    end
end
plot(x, voltage);
