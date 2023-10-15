A = [3, 0, -9; 7, -4, -1; 4, 6, 5]
disp('Determinant of matrix A:')
a = det(A)
disp(rats(a))

A1 = [33, 0, -9; -15, -4, -1; -6, 6, 5]
disp('Determinant of matrix A1:')
a1 = det(A1)
disp(rats(a1))

A2 = [3, 33, -9; 7, -15, -1; 4, -6, 5]
disp('Determinant of matrix A2:')
a2 = det(A2)
disp(rats(a2))

A3 = [3, 0, 33; 7, -4, -15; 4, 6, -6]
disp('Determinant of matrix A3:')
a3 = det(A3)
disp(rats(a3))


syms x y z

eq1 = 3*x - 9*z == 33
eq2 = 7*x - 4*y - z == -15
eq3 = 4*x + 6*y + 5*z == -6

sol = solve([eq1, eq2, eq3], [x, y, z])
xsol = sol.x
ysol = sol.y
zsol = sol.z


