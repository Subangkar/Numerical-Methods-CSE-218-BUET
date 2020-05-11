%simplex_max(prob2MAT())
%simplex_max(probBounded1())
%simplex_max(slideMAT())
%simplex_max(a2MAT())

%errorMAT()
%simplex_max(errorMAT())

MAT_less()

MAX_Table=simplex_maxTable(MAT_less())

[zmax,xopt,yopt]=simplex_MAX(MAX_Table)

GraphPlotter;


