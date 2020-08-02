function [distance] = PixelDistance(pixel1, pixel2)
% Pixel distance calculates the square of the distance between two pixels
% in 3D colour space
% Inputs:   pixel1, rgb values for first pixel
%           pixel2, rgb values for second pixel
% Outputs:  distance, square of distance between pixel1 and pixel2
% Author: Henry Man

% Converts array values to double
pixel1 = double(pixel1);
pixel2 = double(pixel2);

% Calculates the square of the difference of each indexed value
% e.g. (pixel1(1) - pixel2(1))^2
squares = (pixel1 - pixel2).^2;

% Calculates the sum of all the squares to give final distance
distance = sum(squares);

end