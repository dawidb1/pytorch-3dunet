
file = 'sciezka do pliku h5'

file = 'C:\Users\Dawid\Documents\GitHub\MGR\pytorch-3dunet\\resources\\random_label3D_predictions.h5'
daneStartowe = 'C:\dane\3dunet-data\kostka11_4_maski_h5\kostka11_aorta_dwunastnica_trzustka_watroba.h5'

hinfo = hdf5info(file);
% label/raw - Datasets(1)/Datasets(2)
address_data_1 = hinfo.GroupHierarchy.Datasets(1).Name;
output = double(hdf5read(file,address_data_1));

plot([2 2 2 2 2]);

metadata = dicominfo('CT-MONO2-16-ankle.dcm');
dicomwrite(reshape(output(:,:,:,1),[size(output,1) size(output,2) 1 size(output,3)]), 'wynik.dcm', metadata, 'CreateMode', 'copy');

