%----->lecture-3:
M1 = [4 56 11; 3 30 9]
M2 = [9 0; 1 2; 8 80]
M1*M2

M3 = [4; 5; 6]
M4 = [8; 9; 10]
%M3*M4 % In matrix multiplication, dimensions must agree.

M1 = [4 56 11; 3 30 9]
M2 = [9 0; 1 2; 8 80]
%M1*M2
M3 = [(M1(1,1)*M2(1,1)+M1(1,2)*M2(2,1)+M1(1,3)*M2(3,1)),(M1(1,1)*M2(1,2)+M1(1,2)*M2(2,2)+M1(1,3)*M2(3,2))
      (M1(2,1)*M2(1,1)+M1(2,2)*M2(2,1)+M1(2,3)*M2(3,1)), (M1(2,1)*M2(1,2)+M1(1,2)*M2(2,2)+M1(2,3)*M2(3,2))]

  
% Dot Product
D1 = [2 23 34; 5 89 8]
D2 = [-2 0 21; 43 1 8]
D1.*D2


% Matrix Powers
% First way
P = [1 2; 3 5]
P2 = P^3
P3 = P*P*P

%Second Way
P4 = P.^3
P5 = P.*P.*P


%Determinants
E = [6 7; 7 6]
determinant = E(1,1) * E(2,2) - E(1,2) * E(2,1)
det(E)


% Inverse of the Matrix
inv(E)
inv(E)*E

C = [10 -7 0; -3 2 6; 5 1 5]
R = [7; 4; 6]
X = inv(C) * R


%Selection Structures
x = 50
y = 49
x < y
x > y

temp = [100, 98, 94, 101, 93]
temp < 95
find(temp<95) % Finds the complying values.

pass = find(temp<95)
fault = find(temp>=95)

%failtable = [fault, temp(fault)]
failtable = [fault', temp(fault)']
passtable = [pass', temp(pass)']


% If statements
A = 70
if A<80
    disp('A is smaller than 80.')
end

G = 0:10:80
if G<80
    disp('G is smaller than 80.')
end
% To compare values of matrices, all of the elements must obey the rule.


X = [1 4 -1 1; 2 7 1 -2; 1 4 -1 2; 3 -10 -2 5]
R = [2; 16; -15; -15]
Xr = inv(X) * R

temperature = temp 
if temperature > 100
    disp('Too hot-equipment malfuctioning.')
elseif temperature > 90
    disp('Normal operating temperature.')
elseif temperature > 80
    disp('Temperature is below desired range.')
else
    disp('Too cold, turn-off.')
end


%Loop Statements
%For Loop
for k=1:5
    disp(k)
end

demand = [25 45 21 34 54 66 18 46 71] % Demand values for 9 months
for k = 1 : length(demand) % k denodes the months.
    if demand(k) < 45
       inventory(k) = 20 + 0.00135*demand(k)^2
    else 
        inventory(k) = 23+ 0.00139*demand(k)^2
    end
end

beforeDemandInventory = inventory
afterDemandInventory = beforeDemandInventory - demand

%While Loops
k = 1 % In while loops, index must be introduced seperately.
while k<=length(demand)
    if demand(k) <= 45
        inventory(k) = 20 + 0.00135*demand(k)^2
    else 
        inventory(k) = 23+ 0.00139*demand(k)^2
    end
    k = k+1
end
    