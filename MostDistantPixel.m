function [r,g,b] = MostDistantPixel(pixels)
% MostDistantPixels finds the pixel from a list of pixels which is the most
% distant from the median RGB values for the list of pixels. The distance
% will be calculated using the same method as in the PixelDistance function
% Inputs:   pixels, a list of pixels to be compared
% Outputs:  r, red value for most distant pixel
%           g, green value for most distant pixel
%           b, blue value for most distant pixel
% Author: Henry Man

[nrows, ncols, colours] = size(pixels);

% Calculates median red, green and blue pixels
[med_r, med_g, med_b] = MedianPixel(pixels);
median_pixel = [med_r, med_g, med_b];

% Array to store pixel distances from median pixel
pixel_distances = zeros(1, ncols);

% Calculates distance of each pixel from median pixel
for i = 1:ncols
%     current_pixel = [R(i), G(i), B(i)];
    current_pixel = [pixels(1,i,1),pixels(1,i,2),pixels(1,i,3)];
    pixel_distances(i) = PixelDistance(median_pixel, current_pixel);
end
% Retrieves max value from pixel_distances along with it's index
    [M, I] = max(pixel_distances);

% Retrieves red, green and blue values for pixel which is most distant from
% median pixel
r = pixels(1, I, 1);
g = pixels(1, I, 2);
b = pixels(1, I, 3);


end