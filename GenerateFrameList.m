function [frames_list] = GenerateFrameList(start_frame, n, total_frames)
% GenerateFrameList function is used to generate a list of frame which will
% later be used by other functions. Will be more useful when extracting
% frames from movie file for action shot
% Inputs:   start_frame, first frame to be taken
%           n, step size
%           total_frames, total number of frames to be generated
% Outputs:  frames_list, list of frames to be taken. List starts from the
%                        starting frame and goes in steps of n, until the
%                        desired number of frames has been reached
% Author: Henry Man

% Array to store frames, already has first frame
frames_list = [start_frame];

% Generates frames
for i = 1:total_frames-1
    %     Appends next frame to list according to step size
    frames_list = [frames_list, frames_list(i) + n];
end
