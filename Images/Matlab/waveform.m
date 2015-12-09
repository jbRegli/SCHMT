close all

[flute,fs]=wavread('flute.wav');

% L and R chanels:
left=flute(:,1);

t=[1/fs:1/fs:length(left)/fs];
waveform_flute = figure;
plot(t,left)
% xlabel('time (sec)');
% ylabel('relative signal strength')

saveas(waveform_flute, 'waveform_flute', 'epsc')