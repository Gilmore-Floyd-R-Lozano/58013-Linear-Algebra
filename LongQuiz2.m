A = [1 2 3; 4 5 6; 7 8 9]


% Instruction 1
% a. A^T
transpose(A)

% b. A+A
sum = A + A

% c. A*A
product = A * A

% d. Determinant of A
det(A)


% Instruction 2

% a. Extract the matrix into a submatrix as shown: 
B = zeros(3,2);
for row = 1:3
for coulumn = 2:3
    B(row,coulumn-1) = A(row, coulumn);
end
end
disp('B = ')
disp(B)

% b. Determine the dimensions of the matrix
Dimensions = size(B)

% c. Change the element a32 to 0
B(3,2) = 0

% Instruction 3. Solve the systems of linear equations by MATLAB codes.
% Using Cramer's Rule

C = [5 4 1; 10 9 4; 10 13 15]

C1 = [3.4 4 1; 8.8 9 4; 19.2 13 15]

C2 = [5 3.4 1; 10 8.8 4; 10 19.2 15]

C3 = [5 4 3.4; 10 9 8.8; 10 13 19.2]

c = det(C)
c1 = det(C1)
c2 = det(C2)
c3 = det(C3)

x1 = c1/c
x2 = c2/c
x3 = c3/c

eq1 = 5*x1 + 4*x2 + x3
eq2 = 10*x1 + 9*x2 + 4*x3
eq3 = 10*x1 + 13*x2 + 15*x3


