% Lab 1
% 9/5/2019
% Christopher Guay
% EDSGN 410  
% Lab 1 part 3 displaying and analyzing an image

% reading an image
pepper=imread('peppers.png');
figure;
imshow(pepper);
title('Original peppers image');

% filtering an image to the red plane
red=pepper(:,:,1);
figure;
imshow(red);
title('Peppers filtered to red plane intensity only');

% translating image to grayscale
gray=rgb2gray(pepper);
figure;
imshow(gray);
title('Grayscale peppers');

% Making a histagram of the grayscale image
figure;
imhist(pepper);
title('Intensity of pixels');

% displaying top half of the image
top=pepper(1:193,:,:);
figure;
imshow(top);
title('Top half of peppers image');

% making the binary representation
threshold=graythresh(pepper);
binary=im2bw(gray,threshold);
figure;
imshow(binary);
title('Binary representation of peppers');