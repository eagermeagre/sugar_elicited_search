files = dir('*.mat');

for file = files'
csv = load(file.name);

x_nor=(csv.x_pos-csv.x_pos(1,1));
y_nor=(csv.y_pos-csv.y_pos(1,1));
r_nor=(sqrt((x_nor).^2+(y_nor).^2));

save((file.name),'x_nor','y_nor','r_nor','-append');

end 