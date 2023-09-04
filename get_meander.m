files = dir('*.mat');

for file = files'
    csv = load(file.name);
    meander=1-(csv.r/csv.pathlength); %r is the beeline of the path
    save((file.name),'meander','-append');
end
