files = dir('*.mat');

for file = files'
    csv = load(file.name);
    euc_dist=(sqrt(diff(csv.x_walk(:)).^2 + diff(csv.y_walk(:)).^2));
    distance=sum(euc_dist);
    %converting pix to mm 
    pathlength=distance/5.8;
    save((file.name), 'pathlength','-append');
end

