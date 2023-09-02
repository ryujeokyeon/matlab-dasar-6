clear
clc

%% siapkan data untuk ditulis excel
x = 1:10;
y = x.^2;
Data = [x' y'];
DataCell = num2cell(Data)
Header = {'angka','kuadrat'};

%% Menulis ke excel
filename = 'datakuadrat.xlsx';
A = [Header;DataCell];
sheet = 'kuadrat';
xlrange = 'd1';
xlswrite(filename,A,sheet,xlrange);