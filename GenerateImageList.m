function [matching_files] = GenerateImageList(directory, file_extension)
% GenerateImageList fetches a list of images of the specified file
% extension from the directory provided
% Inputs:   directory, address for the desired directory
%           file_extension, extension for desired file type
% Outputs:  filenames, a 1D array containing a list of the filenames for
%                      all files with the desired extension
% Author: Henry Man

% Creates a structure array of files found in directory
files_list = dir(directory);

% Extracts names of all files found in directory
filenames = {files_list.name};

% Cell array to store filenames
matching_files = {};

% Searches for all files in directory with matching file type
for i = 1:length(filenames)
    %     Checks if file has matching extension
    if strfind(filenames{i}, ['.' file_extension])
        %         Appends matching files to filenames cell array
        matching_files = [matching_files, filenames{i}];
    end
end


end