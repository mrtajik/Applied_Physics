% For any N
clear;
clc;
tic;
prompt1 = "Type in Number of rolls=";
N =(input(prompt1));
myProbs = zeros(1,12);

for i=1:N
  throws1  = randsample(6,1);
  throws2  = randsample(6,1);
  sumProbs = throws1 + throws2;  
  if sumProbs == 2
    myProbs(1,2) = myProbs(1,2) + 1;
  elseif sumProbs == 3
    myProbs(1,3) = myProbs(1,3) + 1;
  elseif sumProbs == 4
    myProbs(1,4) = myProbs(1,4) + 1;
  elseif sumProbs == 5
    myProbs(1,5) = myProbs(1,5) + 1;
  elseif sumProbs == 6
    myProbs(1,6) = myProbs(1,6) + 1;
  elseif sumProbs == 7
    myProbs(1,7) = myProbs(1,7) + 1;
  elseif sumProbs == 8
    myProbs(1,8) = myProbs(1,8) + 1;
  elseif sumProbs == 9
    myProbs(1,9) = myProbs(1,9) + 1;
  elseif sumProbs == 10
    myProbs(1,10) = myProbs(1,10) + 1;
  elseif sumProbs == 11
    myProbs(1,11) = myProbs(1,11) + 1;
  else sumProbs == 12
    myProbs(1,12) = myProbs(1,12) + 1;
  end
end
p = 1/6;
diceProb = N*p*[1 2 3 4 5 6 5 4 3 2 1];
b = 2:1:12;

Number = linspace(1, 12, length(myProbs));
bar(Number, myProbs);
hold on
xlabel(' Sum for Roll ');
ylabel(' Frequency ');
averageTime = toc;
str1 = sprintf('Number of Rolls = %d',N);
str2 = sprintf('Runtime = %d s.',averageTime);
title(str1,str2);
plot(Number(1,b),diceProb,'blo')
hold off
 
