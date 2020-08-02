function [action_shot] = ActionShot(images)
% ActionShot creates an action shot image from an array of images by
% comparing the RGB values for each pixel in each image with the median RGB
% values for the pixel, then taking the pixel which is furthest from the
% median pixel and displaying ni an image
% Inputs:   images, a cell array containing images
% Outputs:  action_shot, RGB image with action shot effect applied
% Author: Henry Man

% 4-D array containing stack of images
image_stack = cat(4, images{:});

% Getting the number of images in the image stack
n_images = size(image_stack, 4);

% Calculates median pixel for each pixel from the images at each position
med = median(image_stack, 4);

% pre-allocation for action_shot image
[rows_action, cols_action, ~] = size(images{1});
action_shot = zeros(rows_action, cols_action,3);

% Calculates the pixel distance from the median pixel for each image in
% stack (Using PixelDistance formula)
for i = 1:n_images
    squares = (double(image_stack(:,:,:,i)) - double(med)).^2;
    %    Stores pixel distance in disntance array
    distance(:,:,i) = sum(squares,3);
end

% % Finds the pixel which has the greatest distance from the median pixel.
% % I represents the layer which the pixel is sitting on which corresponds to
% % the image from the imagestack
[~, I] = max(distance,[], 3);
%
[rows, cols] = size(I);
%
% % Generates actionshot by pulling RGB data from image with most distant
% % pixel for each row and column
for i = 1:rows
    for j = 1:cols
        action_shot(i,j,:) = image_stack(i,j,:,I(i,j));
    end
end
end