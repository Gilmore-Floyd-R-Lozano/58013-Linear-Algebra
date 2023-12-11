%Question 1
syms x y z
eq1 = 3*x - y + z ==5
eq2 = 9*x - 3*y + 3*z == 15
eq3 = -12*x + 4*y - 4*z == -20
sol = solve([eq1,eq2,eq3],[x,y,z])
xsol = sol.x
ysol = sol.y
zsol = sol.z


% Question 2
syms a b c;
eq1 = a + b + c ==  89;
eq2 = a == c - 6;
eq3 = b == c * 3;

sol = solve([eq1, eq2, eq3], [a, b, c]);

asol = sol.a;
bsol = sol.b;
csol = sol.c;

disp('Student A has Php ')
disp(asol)
disp('Student B has Php ')
disp(bsol)
disp('Student C has Php ')
disp(csol)

%Question 3
A = [8 5 -6;-12 -9 12;-3 -3 5];
disp(A);
[ev,dv]=eig(A);
disp("Eigen Vectors:")
disp(ev)
disp("Eigen Values:")
disp([dv(1,1)])
disp([dv(2,2)])
disp([dv(3,3)])


