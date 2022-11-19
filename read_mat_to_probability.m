clear all
cd C:\Users\User\PycharmProjects\lab_c\quantum_cryptography\movies\VVHH\meas_part_2;
filename='V-bob';
full_file_name=append(filename,'.mat');
load(full_file_name)
data=data2;
avreage_frames_per_bit=round(length(data)/85);
low_lim=1;
high_lim=0;
plot(data)
title(filename)
xlabel('frames')
ylabel('sumsum value')
[frame,threshold]=ginput(1);
hold on
x=[0,length(data)];
y=[threshold,threshold];
li=line(x,y);
li.Color='red';
[pks,locs]=findpeaks(data);
over_threshold=pks>threshold;
count_peaks=sum(over_threshold==1);
for bits=[10,25,50]
    high_lim=low_lim+bits*avreage_frames_per_bit;
    frame_range=(locs>=low_lim)&(locs<=high_lim);
    good_peaks=frame_range.*over_threshold;
    count=sum(good_peaks==1);
    probability_click=count/bits;
    disp("for "+num2str(bits)+" bits:")
    disp("probability of 1:"+num2str(probability_click))
    disp("probability of 0:"+num2str(1-probability_click))
    low_lim=high_lim+1;
end



