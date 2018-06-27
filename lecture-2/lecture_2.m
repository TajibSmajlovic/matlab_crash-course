%----->lecture-2:
x = 100 : -5 : 0
a = [100 : -5 : 0] % To quickly define an array, we don't have to insert brackets.
z = 45.7 : -0.1 : 8.3


% Extracting a part of an array
z1 = z(5:95)
z2 = z([3 27 41])
z3 = z([4:16 25:101])


% Defining values in 2D arrays
dim2 = [4 5 6 7; 8 -1 25 9; 33 0 1 3]
dim2_2= [4:40; 5:41]
%dim2_3 = [3:10; 4:8] doesn't work (matrices not consistent)

er = [-8 -5 -6; -2 5 6]
rr = [55; 44; 33]


% Defining 3D array
A = [1 2; 0 2]
A(2, 1)% In order to get an element, we need to insert position parameters (rows/collumn)
A(:, :, 2) = [-1 0; 1 5] % ':' - means all. ---> we defined second face of array
A(:, :, 3) = [9 3; 6 -5] % we defined 3rd face of an array
A(:, :, 3) = 5 % If we were to inser single value in 5 dimensional array definition, value will be replicated


% Matrices of Zeros and Ones
V = zeros(5)
V2 = zeros (5, 2) % We can insert size as parameters
V3 = ones(4)
V4 = ones(3, 8) % First parameter is for row, second is for column

size(V4) % Size of an array( 3 rows 8 collumns)
[a, b] = size(V4) % Size of an array; a = rows, b = collumns

C4 = [ 5 77; 8 99; 12 4]
[s1 s2] = size(C4)
C5 = ones(s1,s2)


% Identity Matrix
I = eye(3) % Ones will go diagonaly
B = eye(5,2)

D = [1 0 5; 7 4 -2; 3 1 -1]
diag(D) % It is uttermost important to know return type of a function. Takes inputs of the matrix diagonaly

F = [5 4 8; 3 9 0]
fliplr(F) % Flip matrices from left to right(lr)
flipud(F) % Flip up to down


% Sum and Magic squares
s2 = [5 1 2; 4 10 9]
sum(s2) % Makes sum of array (collumn-wise)
s3 = [10 -5 4] 
sum(s3) % Single dimensional array summation needs single time usage of sum.

sum(sum(s2))

sum(s2,2) %sum by row-wise
magic(4)
sum(magic(4),2)

trace(magic(4)) % Trace function sums diagonal elements


% Transpose of a Matrix
T = [54 12 23; 2 -1 3; 43 0 -16]
T = T'

% Multiplication
M1 = [4 56 11; 3 30 9]
M2 = [9 0; 1 2; 8 80]