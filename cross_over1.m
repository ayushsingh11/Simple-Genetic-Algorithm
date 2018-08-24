function newchrom = cross_over1(chrom)
temp = 0;
newchrom = chrom;
for i=1:5:2
    for j=3:4
        temp=newchrom(i,j);
        newchrom(i,j)=newchrom(i+1,j);
        newchrom(i,j)=newchrom(i+1,j);
    end
end

        