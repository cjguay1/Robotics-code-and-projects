im = imread('C:\Users\Christopher Guay\Documents\school\PSU Spring 2020\EDSGN 420\Computer vision\IM3_1.jpeg');
imshow(im);

Rmin = 120; Rmax = 300;   % need to supply estimate of radius (in pixels)!
[center, radius] = imfindcircles(im, [Rmin Rmax], 'Sensitivity', 0.9); 

viscircles(center, radius);

hold on; plot(center(:,1), center(:,2), 'yx', 'LineWidth', 2); 
hold off; 