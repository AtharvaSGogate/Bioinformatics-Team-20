function FP = FisherP( T , Genotype )
n = Genotype(1) + Genotype(2) + Genotype(3);
xA = 2*Genotype(1) + Genotype(2);
xa = 2*Genotype(3) + Genotype(2);

XAA = T(1);  XAa = T(2);  Xaa = T(3);

FP = ( factorial(n)*factorial(xA)*factorial(xa)*(2^(XAa)))/(factorial(2*n)*factorial(XAA)*factorial(XAa)*factorial(Xaa));

end