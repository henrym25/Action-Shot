function [r, g, b] = MedianPixel(pixels)
% MedianPixel calculates the median RGB values from a list of specified
% pixels
% Inputs:   pixels, A 3D array of RGB values for a list of pixels which we
%                   want to find the median RGB values for
% Outputs:  r, median red pixel value
%           g, median green pixel value
%           b, median blue pixel value
% Author: Henry Man

% Calculates median red, green and blue values and converts to unsigned 8
% bit integers
r = uint8(median(pixels(:,:,1))); 
g = uint8(median(pixels(:,:,2)));
b = uint8(median(pixels(:,:,3)));


end