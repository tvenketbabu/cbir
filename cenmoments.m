function muv = cenmoments (Image,u,v)

[r,c] = find(Image==1); % get (r,c) of region's pixels

rbar = mean(r);

cbar = mean(c);

n = length(r);

momlist = zeros(n,1);

for i = 1 : n

momlist(i) = (r(i) - rbar)^u * (c(i) - cbar)^v; %einai oi kentrikes ropes

end

muv = sum(momlist);