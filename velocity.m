files = dir('*.mat');

for file = files'
csv = load(file.name);
vx=diff(csv.x_pos);
vy=diff(csv.y_pos);
v=sqrt((vx.^2)+(vy.^2));
v_s=v*(40/5.8); %converting to mm/s: multiply by (frame rate/pixel to mm ratio)
save((file.name),'v_s','-append');   
end