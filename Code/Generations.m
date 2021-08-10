function G_ratio = Generations( Ancestor , num_generation , Natural_Selection )
Old = Ancestor;
for k = 1:num_generation
    New = Newgeneration_with_natural_selection( Old , 1000 , Natural_Selection );
    Old = New;
end

tb1 = tabulate( New )

G_ratio = tb1( : , 3 )

end