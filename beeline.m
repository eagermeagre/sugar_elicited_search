files = dir('*.mat');

for file = files'
    csv = load(file.name);
    r_nor=(sqrt((csv.x_nor).^2+(csv.y_nor).^2));
    r_nor=r_nor/5.67;
    r=max(r_nor);
    save((file.name),'r','-append');
end