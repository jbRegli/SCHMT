%% Introduction
%  This program crops a rectangular portion of a given image
%  Submitted By : Chiranjit Bordoloi & Hemashree Bordoloi
%  Date : 18-Jul-2010

% 'mod_MUSCLE_COL2_080424_1_21_s_2561_2725_40_150.mat'

clc; close all; clear all;               %clean board

%% === Ripple -------------------------------------------------------
dname_rip = '/home/jeanbaptiste/Datasets/Sonar/Area_C_crops2/Training/Ripple/';


files = dir( fullfile(dname_rip,'*.mat'));
flist = {files.name};
n_file =  length(flist);
fname = flist{1};
dfname = strcat(dname_rip, fname);

file_ite = randperm(n_file);

for file=1:3
    fname = flist{file_ite(file)};
    dfname = strcat(dname_rip, fname);

    %% === Read image ------------------------------------------------------
    fprintf('loading data...');
    Im = load(dfname);
    Im = Im.b;
    fprintf('done!\n');
    % --- Assume raw data is complex and that we need to take log abs ---
%     Im = 20*log10(abs(Im)+1);
%     % --- Assume data format needs rotating such that Im = Im(y, range) ---   
%     Im = rot90(Im,-1);
%     % --- Assume whole image is of interest (and make it even sized) ---
%     %Im = Im(1:end-1,1:end-1);
%     Im = Im(1:end - mod(size(Im,1),2), 1:end - mod(size(Im,2),2));
%     % --- nb: at least some images have zeros at y=1, t.f. cut these out ---
%     %Im = Im(2:end - ~mod(size(Im,1),2), 1:end - mod(size(Im,2),2));

    %% === plotting commands -----------------------------------------------
    fig_plot = figure;
    imagesc(Im, [130 max(Im(:))]);
    colormap(pink)
    axis equal
    axis tight
    axis off
    print('sonar_image', '-depsc2')

    saveas(fig_plot, sprintf('patch_ripple_%i', file), 'epsc')
    [m, n]= size(Im);                          %get no of rows and column of the image matrix

end

%% === Ripple -------------------------------------------------------
dname_sea = '/home/jeanbaptiste/Datasets/Sonar/Area_C_crops2/Training/Seabed/';


files = dir( fullfile(dname_sea,'*.mat'));
flist = {files.name};
n_file =  length(flist);
fname = flist{1};
dfname = strcat(dname_sea, fname);

file_ite = randperm(n_file);

for file=1:3
    fname = flist{file_ite(file)};
    dfname = strcat(dname_sea, fname);

    %% === Read image ------------------------------------------------------
    fprintf('loading data...');
    Im = load(dfname);
    Im = Im.b;
    fprintf('done!\n');
    % --- Assume raw data is complex and that we need to take log abs ---
%     Im = 20*log10(abs(Im)+1);
%     % --- Assume data format needs rotating such that Im = Im(y, range) ---   
%     Im = rot90(Im,-1);
%     % --- Assume whole image is of interest (and make it even sized) ---
%     %Im = Im(1:end-1,1:end-1);
%     Im = Im(1:end - mod(size(Im,1),2), 1:end - mod(size(Im,2),2));
%     % --- nb: at least some images have zeros at y=1, t.f. cut these out ---
%     %Im = Im(2:end - ~mod(size(Im,1),2), 1:end - mod(size(Im,2),2));

    %% === plotting commands -----------------------------------------------
    fig_plot = figure;
    imagesc(Im, [130 max(Im(:))]);
    colormap(pink)
    axis equal
    axis tight
    axis off
    print('sonar_image', '-depsc2')

    saveas(fig_plot, sprintf('patch_seabed_%i', file), 'epsc')
    [m, n]= size(Im);                          %get no of rows and column of the image matrix

end
   

