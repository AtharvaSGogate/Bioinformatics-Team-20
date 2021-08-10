function P = EM( PhA , Pha , N )
p = (4*Pha + PhA )/(4*(Pha + PhA));
% p = 1;
n = Pha + PhA;
for k = 1:N
    p = (1/n)*( PhA*(p*(1-p))/(1 - p*p) + Pha );
end
P = p;
end