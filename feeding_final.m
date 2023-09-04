files = dir('*.mat');

for file = files'
    csv = load(file.name);
    feeding_time=0;
    n=size(csv.v_s);
    condition=zeros(n(1,1),1);     
    for i = 1:n;
        if csv.v_s(i)< 4;
           condition(i)=1;
           
        else
            continue;
        end
    end
     for j=1:size(csv.v_s);
         if condition(j)==1
             feeding_time=j;
         else break
         end
               
      end
     save((file.name),'feeding_time','-append')
end
