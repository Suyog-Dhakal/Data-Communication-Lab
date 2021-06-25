

x= [2 5;4 6];
y = [1 5;6 -2];
z = zeros(2,2);
i=1;
while(i<=2)
  j=1;
  while(j<=2)
    z(i,j) = x(i,j) + y(i,j);
    j++;
   endwhile
   
 i++;
endwhile

display(z);