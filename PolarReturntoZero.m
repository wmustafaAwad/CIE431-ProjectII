function [Signal] = PolarReturntoZero(Tp)
temp=zeros(1,Tp);
temp1=ones(1,Tp/2);
temp(Tp/4+1:0.75*Tp)=temp1;
Signal=temp;
end

