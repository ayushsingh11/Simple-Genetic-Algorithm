function newchrom = roulette_wheel(chrom,C)
R = rand(6,1);
count = 1;
newchrom = zeros(6,4);
for i=1:6
    if(R(i)>0) & (R(i)<C(1))
            newchrom(count,:) = chrom(i,:);
    end
    for j=2:6
        if(R(i)>C(j-1)) & (R(i)<C(j))
                newchrom(count,:) = chrom(j,:);
        end
    end
    count=count+1;
end