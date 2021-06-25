
% function f[k] = (e)**(0.05*k)


k = [1:30];

function [var] = f(k) 
  var= exp(0.05 * k)
endfunction



%maximum of function
display(max(f(k)));

%minimum of function
display(min(f(k)));

%sum of entries
display(sum(f(k)));

%mean of all entries
display(mean(f(k)));

%variance of all entries
display(var(f(k)));

%dimension of fk
display(size(f(k)));

%length of fk
display(length(f(k)));








