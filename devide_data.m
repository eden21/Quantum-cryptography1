clear all
folder_name='C:\Users\User\PycharmProjects\lab_c\quantum_cryptography\movies\VH-HV';
filename='V-bob_data_all.mat';
load(fullfile(folder_name,filename));
limit=round(length(data_all)/2);
data1=data_all(1:limit);
data2=data_all(limit+1:length(data_all));
save('C:\Users\User\PycharmProjects\lab_c\quantum_cryptography\movies\VH-HV\meas_part_1\V-bob.mat','data1')
save('C:\Users\User\PycharmProjects\lab_c\quantum_cryptography\movies\VH-HV\meas_part_2\V-bob.mat','data2')