%ga for the equation : a+2b+3c+4d=30.
%Roulette wheel is used.
pop = 6;
chrom = zeros(6,4);
newchrom2 = zeros(6,4);
for i=1:6
    for j=1:4
        chrom(i,j) = int8(rand(1,1)*30);
    end
end

F_obj = zeros(6,1);
Fitness = zeros(6,1);
Prob = zeros(6,1);
C = zeros(6,1);
R = zeros(6,1);
sum = 0;
count = 0;
for i=1:6
    F_obj(i) = fitnessfunc(chrom(i,1),chrom(i,2),chrom(i,3),chrom(i,4));
    Fitness(i) = 1/(1+F_obj(i));
    sum = sum + Fitness(i);
end
F_obj_rw = [20;20;20;20;20;20];

while (min(F_obj_rw)>0)
    count = count+1;
if (newchrom2 ~= zeros(6,4))
    chrom = newchrom2;
end
for i=1:6
    Prob(i) = Fitness(i)/sum;
end

C(1) = Prob(1);
for i=2:6
    C(i) = C(i-1)+Prob(i);
end

newchrom = roulette_wheel(chrom,C);

F_obj_rw = zeros(6,1);
for i=1:6
    F_obj_rw(i) = fitnessfunc(newchrom(i,1),newchrom(i,2),newchrom(i,3),newchrom(i,4));
end

newchrom1 = cross_over1(newchrom);
F_obj3 = zeros(6,1);
for i=1:6
    F_obj3(i) = fitnessfunc(newchrom1(i,1),newchrom1(i,2),newchrom1(i,3),newchrom1(i,4));
end

newchrom2 = mutation(newchrom1);
F_obj1 = zeros(6,1);
for i=1:6
    F_obj1(i) = fitnessfunc(newchrom2(i,1),newchrom2(i,2),newchrom2(i,3),newchrom2(i,4));
end

end


count

for k = 1:6
    if (F_obj_rw(k) == 0)
        t = k;
    end
end

disp('The final values of variables for optimal fitnessfunc are ');
disp(newchrom(t,1));
disp(newchrom(t,2));
disp(newchrom(t,3));
disp(newchrom(t,4));


       