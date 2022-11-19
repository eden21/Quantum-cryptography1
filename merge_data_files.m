load('C:\Users\User\PycharmProjects\lab_c\quantum_cryptography\movies\VVHH\20_meas_V,V-detectors\V-alice.mat')
data1=data;
load('C:\Users\User\PycharmProjects\lab_c\quantum_cryptography\movies\VVHH\50_meas_v,v-detectors\V-alice.mat')
data2=data;
load('C:\Users\User\PycharmProjects\lab_c\quantum_cryptography\movies\VVHH\100_meas_v,v-detectors\V-alice.mat')
data3=data;
data_all=[data1,data2,data3];
save('C:\Users\User\PycharmProjects\lab_c\quantum_cryptography\movies\VVHH\V-alice_data_all.mat','data_all')