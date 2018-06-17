clear;
syms t;
f(t) = 5*cos(2*pi*t);%%Arbitraty Input Signal to be sampled & quantised
f_s=50;%f_s is the sampling frequency
T=2;%%end of the sampling interval
[t,SampledSignal] = IdealSampler(f,f_s,T);
L=2;%%Number of quantisation levels
mp=5;%%Quantiser limit, we did set it to the max value of the signal
QuantisedSignal=quantize_uni(SampledSignal,L,mp);
%% Raised Cosine, Binary 
Tp=200;%%Arbitrary pulse width
PulseWidth= Tp;
wsize=1;%%Window Size
upsampledsignal=upsample(QuantisedSignal,PulseWidth);
Pulse=RaisedCosine(0.5,8,PulseWidth);
    RCosSignal= conv(upsampledsignal,Pulse);
    RCosSignal=RCosSignal(2*8*Tp:end-2*8*Tp+1);
snrMax=25;
snr=1:0.25:snrMax;
Error= zeros(1,length(snr));
for i=1:length(snr)
    SNR=snr(i);
    RCosSignal=awgn(RCosSignal,SNR);
    OutSignalPrevious=RCosSignal(2*8*Tp:end-2*8*Tp+1);
    OutSignal= downsample(OutSignalPrevious,PulseWidth);
    out =quantize_uni(OutSignal,L,mp);

    
    for k=1:length(out)
        if (out(k) ~= QuantisedSignal(k))
                   Error(1, i) = Error (1, i) + 1;

        end
   end
    Error(1,i)= Error(1,i)/length(out);

end
plot(snr, Error); 
xlabel ('SNR'); 
ylabel('Bit Error Rate');
