files = dir('*.mat');

for file = files'
    csv = load(file.name);
    meander=1-(csv.r/csv.pathlength);
    save((file.name),'meander','-append');
end