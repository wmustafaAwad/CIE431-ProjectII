function [t,Y] = IdealSampler(m_t,f_s,timelimit)
%%m_t is a function handle %%f_s is the sampling frequency
t_s=1/f_s;
t=0:t_s:timelimit;
Y=zeros(1,length(t));
for i=1:length(t)
    Y(i)= m_t(t(i));
end

