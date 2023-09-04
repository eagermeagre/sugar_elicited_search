files = dir('*.mat');

for file = files'
    csv = load(file.name);
    euc_dist=(sqrt(diff(csv.x_walk(:)).^2 + diff(csv.y_walk(:)).^2));
    distance=sum(euc_dist);
    %converting pix to mm bee 4.09
    pathlength=distance/5.67;
    
    
    save((file.name), 'pathlength','-append');
end

