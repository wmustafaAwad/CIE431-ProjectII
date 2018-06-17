function y = quantize_uni(signal, L, mp)

N=length(signal);
y=zeros(1,N);
minsig=-1*mp; %minimum value of signal
maxsig=mp; %maximum value of signal
x=maxsig-minsig;
delta=x/(L-1);
ranges=minsig-delta/2:delta:maxsig+delta/2;
qlevels=(mp-x:delta:mp); %quantization levels

for i=1:1:N
    for j=1:1:N
        if (signal(i)>ranges(j)) &&(signal(i)<=ranges(j+1))
            y(i)=qlevels(j);
            break;
        end
    end
    
end

end