close all

[flute,fs]=wavread('flute.wav');

% L and R chanels:
left=flute(:,1);

time=(1/44100)*length(left);
t=linspace(0,time,length(left));
waveform_flute = figure;
plot(t,left)
% xlabel('time (sec)');
% ylabel('relative signal strength')

print(waveform_flute, 'waveform_flute', '-deps')