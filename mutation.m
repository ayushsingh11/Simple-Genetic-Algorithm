function newchrom = mutation(chrom)
C2 = ones(2,1);
D2 = ones(2,1);
B  = ones(2,1);
B = [int8(1+22*rand(1,1)) int8(1+22*rand(1,1))];
C2 = rem(B,6)+1;
D2 = (B-C2)/6 + 1;
newchrom = chrom;
for i=1:2
    newchrom(C2(i),D2(i)) = int8(rand(1,1)*30);
end


