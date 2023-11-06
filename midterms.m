%Question 8
A = [-5 -1  -4
      4  0  -3
      2  -2 6];
det(A)


%Question 10

A = [3 -5  4
     5  2  1
     2  3 -2];

A1 = [5 -5  4
      0  2  1
      3  3 -2];

A2 = [3  5  4
      5  0  1
      2  3 -2];

A3 = [3 -5  5
      5  2  0
      2  3  3];

D = det(A)
Dx = det(A1)
Dy = det(A2)
Dz = det(A3)

x = Dx/D
y = Dy/D
z = Dz/D

eq1 = 3*x-5*y+4*z
eq2 = 5*x+2*y+z
eq3 = 2*x+3*y-2*z
