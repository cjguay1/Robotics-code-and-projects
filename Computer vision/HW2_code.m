im = imread('C:\Users\Christopher Guay\Documents\school\PSU Spring 2020\EDSGN 420\Computer vision\IM5.jpg'); % read image from system directory
imrev = im(:,:,1); % filter to grayscale by prevelance of red in each pixel
imbw = im2bw(imrev,0.32); % filter to solid black or white, no grayscale
imwb = ~imbw; % flip black to white and vice versa

figure,imshow(imwb); % display final image for line position detection

% total up number of white pixels per partition, picture split into 5
% vertical sections
totalLeft = sum(sum(imwb(:,1:800,:)));
totalLeftMiddle = sum(sum(imwb(:,801:1600,:)));
totalMiddle = sum(sum(imwb(:,1601:2400,:)));
totalRightMiddle = sum(sum(imwb(:,2401:3200,:)));
totalRight = sum(sum(imwb(:,3201:4000,:)));

% check if line is roughly in the left, middle, and right, displaying what
% logic should follow for actuation of components in robot
if((totalLeft > totalMiddle) && (totalLeft > totalRight) && totalLeft > totalLeftMiddle) && (totalLeft > totalRightMiddle)
    disp("You are way too far right, turn left.");
elseif((totalLeftMiddle > totalMiddle) && (totalLeftMiddle > totalRight) && (totalLeftMiddle > totalLeft) && (totalLeftMiddle > totalRightMiddle))
    disp("You are slightly too far right, turn left.");
elseif ((totalRight > totalMiddle) && (totalRight > totalLeft))
    disp("You are way too far left, turn right.");
elseif((totalRightMiddle > totalMiddle) && (totalRightMiddle > totalRight) && (totalRightMiddle > totalLeftMiddle) && (totalRightMiddle > totalLeftMiddle))
    disp("You are slightly too far left, turn left.");
elseif ((totalMiddle > totalLeft) && (totalMiddle > totalRight))
    disp("You are right on track.");
end
