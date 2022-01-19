% Lab 1
% 9/5/2019
% Christopher Guay
% EDSGN 410  
% Lab 1 part 1 Data Analysis

% variable declaration
voltage=[21.2, 19.5, 20.1, 18.3, 17.7, 15.0, 21.9, 24.7, 23.1, 20.2, 16.3, 22.8, 18.4, 23.5, 21.1];
maxv=max(voltage);
minv=min(voltage);
avev=mean(voltage);
stdv=std(voltage);
medv=median(voltage);
vsort=sort(voltage');
aboveave=[];
x=(1:15);
j=1; %increment counter for above average array

for i=1:15
    if (voltage(i) > avev)
        aboveave(j)=voltage(i);
        j=j+1;
    end
end

%printing output
fprintf('The minimum voltage is: %0.2f\n', minv)
fprintf('The maximum voltage is: %0.2f\n', maxv)
fprintf('The average voltage is: %0.2f\n', avev)
fprintf('The standard deviation of voltage is: %0.2f\n', stdv);
fprintf('The median voltage is: %0.2f\n', medv);
fprintf('The number of values above average is %0.0f\n', j);
fprintf('The values above average are:');
disp(aboveave);
plot(x,voltage);
title('Array element vs. Voltage measurement');
xlabel('Array element');
ylabel('Voltage Measurement');
fprintf('The voltages in order are:\n');
disp(vsort);