function [ Signal ] = RaisedCosine(RolloffFactor,N,Tp)
%%Tp is the pulse width
%%N is the number of RaisedCosine lobes after truncation
Signal=rcosdesign(RolloffFactor,N,Tp,'normal');
end

