files = dir('*.mat');

for file = files'
    csv = load(file.name);
    %n=length(csv.x_nor);
    searchtime=length(csv.x_walk)/40;
    %searchtime=length(csv.x_walk)/40;
    save((file.name), 'searchtime','-append');
end