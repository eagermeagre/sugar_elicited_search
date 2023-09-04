files = dir('*.mat');

for file = files'
csv = load(file.name);
j=csv.feeding_time;
if j>0
       x_walk=csv.x_nor(j:end); %new for catch_release,nor for rest
       y_walk=csv.y_nor(j:end);
       r_walk=csv.r_nor(j:end);
else x_walk=csv.x_nor;
    y_walk=csv.y_nor;
      r_walk=csv.r_nor ;
end
      
       save((file.name), 'r_walk', 'x_walk', 'y_walk','-append');
end  
       