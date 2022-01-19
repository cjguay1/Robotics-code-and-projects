%Program name: Lab_led_blink
%Program purpose: to turn an LED on and off
%Program creation date: 9/3/2019
%Programmer: Christopher Guay
%Last revision: 9/3/2019

clear a; %clear arduino board assignment from previous
a=arduino('COM6','Uno'); % set arduino board assignment

  for i = 1:10
      writeDigitalPin(a, 'D11', 0); %turn LED off
      pause(2);
      writeDigitalPin(a, 'D11', 1); %turn LED on
      pause(2);
   end