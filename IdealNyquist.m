function [Signal] = IdealNyquist(N,Tp)
%%Tp is the pulse width
%%N is the number of sinc lobes after truncation
Signal=sinc([-N*Tp:N*Tp-1]/Tp);
end

