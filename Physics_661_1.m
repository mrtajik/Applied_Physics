% Physics 661
% 1

% Vector Algebra
% Magnitude of an n-Dimensional Vector
clear
% define vector
v = [1, 2, 3, 4, 5];
for i = 1:length(v)
       v(i)=(v(i)*v(i));
end
magV=(sum(v))^(0.5);
% display result
disp(['Magnitude of v, |v| = ', num2str(magV)])


% Scalar Product of n-Dimensional Vectors
clear
% define vectors
a = [1, 2, 3, 4, 5];
b = [6, 7, 8, 9, 10];
c = zeros(length(a));

for i = 1:length(a)
       c(1,i)=a(1,i)*b(1,i);
end
sProd=sum(sum(c));

% display result
disp(['Scalar product a.b =', num2str(sProd)])


% Matrix Algebra
% Part I: y=Ax
clear
clc

prompt1 = "Type in Vector as a column, x=";
x =(input(prompt1))

prompt2 = "Type in Matrix A=";
A = input(prompt2)
% getting dimensions of A
[a,b] = size(A);

iMax = a;
jMax = b; 
 
myArray = zeros(iMax, jMax);
y = zeros(iMax,1);

for iIdx = 1:iMax
    for jIdx = 1:jMax
       myArray(iIdx,jIdx) = A(iIdx,jIdx)*x(jIdx,1);
    end
    y(iIdx)=sum(myArray(iIdx,:));
end
disp('The result of y=Ax is:')
disp(y)
 

% Part II: C=AxB
clear
clc

prompt1 = "Type in Matrix A=";
A =(input(prompt1))

prompt2 = "Type in Matrix B=";
B = input(prompt2)
% getting dimensions of A and B matrices
[n,p] = size(A);
[p,m] = size(B);

C=zeros(n,m);
for i=1:n
  for j=1:m
     C(i,j)=0.0
     for k=1:p
        C(i,j) = C(i,j)+A(i,k)*B(k,j);
     end 
   end 
end
disp('The result of C=AxB is C=:')
disp(C)
