clear all
cd 'C:\Users\User\PycharmProjects\lab_c\quantum_cryptography\movies\VVHH\20_meas_V,V-detectors';
filename='H-bob-(2)';
full_file_name=append(filename,'.tif');
V1 = tiffreadVolume(full_file_name);
data_full=im2double(V1);
R_channel=data_full(:,:,:,1);
values=sum(sum(R_channel));
sz=size(values);
for i=1:sz(3)
    data(i)=values(1,1,i);
end
save(filename,'data')
plot(data)
title(filename)
xlabel('frames')
ylabel('sumsum value')