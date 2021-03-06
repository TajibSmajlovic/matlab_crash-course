%\\-Introduction to MATLAB-//

% -->1.0 Data types<--
% numeric type (we have single(4bytes) and double(8ytes) precision values)

a = 5; % assigning a numeric value

% By default all of the numeric values are in double precision type
% and multiplies 8 bytes. 64bits.

b = 5.1929394959; % double precision allows 4 digits aftet '.'

%b = single(b); % single - name of the function (built in)
                % d - name of variable
              
class(c) % to get the class value of variable

whos b 
whos c

% Character type
c = 'matlab crash course' % a spring variable

% defining array variable
v = [1,2,3]
             % inserting ',' is always better
v = [ 1 2 3]

t = [2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20]
t = [2:1:20] % t = start : step size (increase/decrease) : finish point
t = [2:20]   % if step size is 1, we don't have to specify.
