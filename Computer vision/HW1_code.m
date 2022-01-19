im = imread('Image1.bmp');
im = imread('C:\Users\Christopher Guay\Documents\school\PSU Spring 2020\EDSGN 420\Image1.bmp');
size(im);
se=strel('disk',5);
imopen(im, se);
open1 = imopen(im, se);
close1 = imclose(im, se);
% imshow(close1)
% imshow(open1)
% imshow(im)