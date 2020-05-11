function MAT = ScanMatrix(r,c)

MAT=zeros(r,c);

for i=1:r
    for j=1:c
        MAT(i,j)=input();
    end
end