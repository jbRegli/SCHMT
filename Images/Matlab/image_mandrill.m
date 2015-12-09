close all

load mandrill X map

% Create the image display using the image command
im_mandrill = figure;
imagesc(X)

% Use the colormap specified in the image data file
colormap(map)

% Turn the axes off
axis off

saveas(im_mandrill, 'im_mandrill', 'epsc')