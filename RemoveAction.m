function [action_removed] = RemoveAction(images)
% RemoveAction creates an image which has the action removed by applying a
% median filter.
% Inputs:   images, a 1D cell array containing images with action to be
%                   removed
% Outputs:  action_removed, 3D array with RGB image which has action
%                           removed
% Author: Henry Man

% Create a 4-D array containing images with RGB data
pictures = cat(4, images{:});

% Calculates median pixel for each pixel from the images at each position
action_removed = median(pictures, 4);   

end