close all

% Load Mnist
addpath('/home/jeanbaptiste/Datasets/Mnist')

% Change the filenames if you've saved the files under different names
% On some platforms, the files might be saved as 
% train-images.idx3-ubyte / train-labels.idx1-ubyte
images = loadMNISTImages('/home/jeanbaptiste/Datasets/Mnist/train-images-idx3-ubyte');
labels = loadMNISTLabels('/home/jeanbaptiste/Datasets/Mnist/train-labels-idx1-ubyte');
 
% We are using display_network from the autoencoder code
%display_network(images(:,1:100)); % Show the first 100 images
%disp(labels(1:20));

% Load a nine:
nine_ori = reshape(images(:,5),28,28);

im_nine_ori = figure;
imagesc(nine_ori)
colormap gray
print(im_nine_ori, 'im_nine_ori', '-deps')

% Translation:
xmax = 7;
ymax = 7;
xTrans = -7;%randi([-xmax,xmax]);
yTrans = +5;% randi([-ymax, ymax]);
nine_trl =  circshift(nine_ori,[xTrans, yTrans]);

im_nine_trl = figure;
imagesc(nine_trl)
colormap gray
print(im_nine_trl, 'im_nine_trl', '-deps')

% Rotation:
degRot15 = -15;
degRot90 = 90;

nine_rot15 =  imrotate(nine_ori,degRot15);
nine_rot90 =  imrotate(nine_ori, degRot90);

im_nine_rot15 = figure;
imagesc(nine_rot15)
colormap gray
print(im_nine_rot15, 'im_nine_rot15', '-deps')

im_nine_rot90 = figure;
imagesc(nine_rot90)
colormap gray
print(im_nine_rot90, 'im_nine_rot90', '-deps')

% Deformation:
nine_def = sin(nine_ori);

im_nine_def = figure;
imagesc(nine_def)
colormap gray
print(im_nine_def, 'im_nine_def', '-deps')