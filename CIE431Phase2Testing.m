%%Part (a) Noiseless Eye Diagrams
%% Two Level PAM
clear;
syms t;
f(t) = 5*cos(2*pi*t);%%Arbitraty Input Signal to be sampled & quantised
f_s=200;%f_s is the sampling frequency
T=2;%%end of the sampling interval
[t,SampledSignal] = IdealSampler(f,f_s,T);
L=2;%%Number of quantisation levels
mp=5;%%Quantiser limit, we did set it to the max value of the signal
QuantisedSignal=quantize_uni(SampledSignal,L,mp);
%% Polar Return to Zero
Tp=200;%%Arbitrary pulse width
wsize=1;%%Window Size
NoiselessEyeDiagram(QuantisedSignal,'PRZ',wsize,Tp);
wsize=2;
NoiselessEyeDiagram(QuantisedSignal,'PRZ',wsize,Tp);
%% Polar non Return to Zero
Tp=200;%%Arbitrary pulse width
wsize=1;%%Window Size
NoiselessEyeDiagram(QuantisedSignal,'PNRZ',wsize,Tp);
wsize=2;
NoiselessEyeDiagram(QuantisedSignal,'PNRZ',wsize,Tp);
%% Raised Cosine
Tp=200;%%Arbitrary pulse width
wsize=1;%%Window Size
NoiselessEyeDiagram(QuantisedSignal,'RCos',wsize,Tp);
wsize=2;
NoiselessEyeDiagram(QuantisedSignal,'RCos',wsize,Tp);
%% Ideal Nyquist Pulse (Sinc)
Tp=200;%%Arbitrary pulse width
wsize=1;%%Window Size
NoiselessEyeDiagram(QuantisedSignal,'Sinc',wsize,Tp);
wsize=2;
NoiselessEyeDiagram(QuantisedSignal,'Sinc',wsize,Tp);
%% Four Level PAM
clear;
syms t;
f(t) = 5*cos(2*pi*t);%%Arbitraty Input Signal to be sampled & quantised
f_s=50;%f_s is the sampling frequency
T=2;%%end of the sampling interval
[t,SampledSignal] = IdealSampler(f,f_s,T);
L=4;%%Number of quantisation levels
mp=5;%%Quantiser limit, we did set it to the max value of the signal
QuantisedSignal=quantize_uni(SampledSignal,L,mp);
%% Polar Return to Zero
Tp=200;%%Arbitrary pulse width
wsize=1;%%Window Size
NoiselessEyeDiagram(QuantisedSignal,'PRZ',wsize,Tp);
wsize=2;
NoiselessEyeDiagram(QuantisedSignal,'PRZ',wsize,Tp);
%% Polar non Return to Zero
Tp=200;%%Arbitrary pulse width
wsize=1;%%Window Size
NoiselessEyeDiagram(QuantisedSignal,'PNRZ',wsize,Tp);
wsize=2;
NoiselessEyeDiagram(QuantisedSignal,'PNRZ',wsize,Tp);
%% Raised Cosine
Tp=200;%%Arbitrary pulse width
wsize=1;%%Window Size
NoiselessEyeDiagram(QuantisedSignal,'RCos',wsize,Tp);
wsize=2;
NoiselessEyeDiagram(QuantisedSignal,'RCos',wsize,Tp);
%% Ideal Nyquist Pulse (Sinc)
Tp=200;%%Arbitrary pulse width
wsize=1;%%Window Size
NoiselessEyeDiagram(QuantisedSignal,'Sinc',wsize,Tp);
wsize=2;
NoiselessEyeDiagram(QuantisedSignal,'Sinc',wsize,Tp); 
%% Part (b) Noisy Eye Diagrams
%% Two Level PAM
clear;
syms t;
f(t) = 5*cos(2*pi*t);%%Arbitraty Input Signal to be sampled & quantised
f_s=50;%f_s is the sampling frequency
T=2;%%end of the sampling interval
[t,SampledSignal] = IdealSampler(f,f_s,T);
L=2;%%Number of quantisation levels
mp=5;%%Quantiser limit, we did set it to the max value of the signal
QuantisedSignal=quantize_uni(SampledSignal,L,mp);
%% Case 1) Polar Non return to Zero, Binary & SNR =0
Tp=200;%%Arbitrary pulse width
wsize=1;%%Window Size
NoisyEyeDiagram(QuantisedSignal,'PRZ',wsize,Tp,0);
wsize=2;
NoisyEyeDiagram(QuantisedSignal,'PRZ',wsize,Tp,0);
%% Case 2) Raised Cosine, Binary & SNR =0
Tp=200;%%Arbitrary pulse width
wsize=1;%%Window Size
NoisyEyeDiagram(QuantisedSignal,'RCos',wsize,Tp,0);
wsize=2;
NoisyEyeDiagram(QuantisedSignal,'RCos',wsize,Tp,0);
%% Case 3) Polar Non return to Zero, Binary & SNR =10
Tp=200;%%Arbitrary pulse width
wsize=1;%%Window Size
NoisyEyeDiagram(QuantisedSignal,'PRZ',wsize,Tp,10);
wsize=2;
NoisyEyeDiagram(QuantisedSignal,'PRZ',wsize,Tp,10);
%% Case 4) Raised Cosine, Binary & SNR =10
Tp=200;%%Arbitrary pulse width
wsize=1;%%Window Size
NoisyEyeDiagram(QuantisedSignal,'RCos',wsize,Tp,10);
wsize=2;
NoisyEyeDiagram(QuantisedSignal,'RCos',wsize,Tp,10);