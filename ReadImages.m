function [image_list] = ReadImages(directory, filenames)
% This function takes in a list filenames and reads in a list of images
% with the corresponding file names from the directory provided
% Inputs:   directory, string containing directory path
%           filenames, 1D array containing list of images to retrieve
% Outputs:  image_list, list of images with corresponding filename
% Author: Henry Man

% Loops for however many files specified
for i = 1:length(filenames)
    %     Creates string containing file path for image
    path = [directory '\' filenames{i}];
    %     Reads image and adds to array of images
    image_list{i} = imread(path);
end

end


