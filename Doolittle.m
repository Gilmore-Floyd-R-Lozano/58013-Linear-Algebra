%Doolittle Method
A = [1 1 1
     1 2 2
     1 2 3]

B = [5
     6
     8]

matrixSize = length(A)
Lower = zeros(size(A));
Upper = zeros(size(A));
Upper(1,:) = A(1,:);
Lower(:,1) = A(:,1)/ Upper(1,1);
L(1,1)=1;

for k = 2:matrixSize
for i = 2:matrixSize
    for j = i:matrixSize
        Upper(i,j) = A(i,j)-dot(Lower(i,1:i-1), Upper(1:i-1,j));
    end
    Lower(i,k) = (A(i,k)-dot(Lower(i,1:k-1), Upper(1:k-1,k))) / Upper(k,k);
end
end
Upper
Lower

% LY = B
Y = zeros(matrixSize,1);
Y(1)=B(1);
for row = 2:matrixSize
    Y(row) = B(row);
    for col = 1: row-1
        Y(row)=Y(row)-Lower(row,col)*Y(col);
    end
    Y(row)= Y(row)/Lower(row,row);
end
Y

%UX = Y
x = zeros(matrixSize,1);
x(matrixSize) = Y(matrixSize)/Upper(matrixSize,matrixSize);
for row = matrixSize -1: -1 : 1    %Second to the last row
    temp =0;
    for col= matrixSize: -1 : 1
        temp = temp + Upper(row,col)*x(col);
    end
    x(row)=(Y(row)-temp)/Upper(row,row);
end
x



