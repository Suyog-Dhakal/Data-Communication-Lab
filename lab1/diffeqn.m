
function dy = diffeqn(t,y)
  dy = 2*cos(2*t) - 4*y;
endfunction

[t,y] = ode23("diffeqn",[0,15],2);
plot(t,y);
xlabel("t");
ylabel("y(t)");
