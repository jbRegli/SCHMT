close all

%% ==== Load Mnist: ====
addpath('/home/jeanbaptiste/Datasets/Mnist')

% Change the filenames if you've saved the files under different names
% On some platforms, the files might be saved as 
% train-images.idx3-ubyte / train-labels.idx1-ubyte
images = loadMNISTImages('/home/jeanbaptiste/Datasets/Mnist/train-images-idx3-ubyte');
labels = loadMNISTLabels('/home/jeanbaptiste/Datasets/Mnist/train-labels-idx1-ubyte');
 
% Display first 4 images:
for im = 1:10
    image = reshape(images(:,im),28,28);
    
    im_mnist = figure;
    imagesc(image)
    axis off
    colormap gray
    saveas(im_mnist, sprintf('mnist_%i', im) , 'epsc')
end
clear('images','labels');