 use strict;
 
 my %transf =(
 
 'points' => [
                        [
                          '1.000000e+000',
                          '0.000000e+000',
                          '0.000000e+000'
                        ],
                        [
                          '0.000000e+000',
                          '1.000000e+000',
                          '0.000000e+000'
                        ],
                        [
                          '0.000000e+000',
                          '0.000000e+000',
                          '1.000000e+000'
                        ],
                        [
                          '1.711407e+003',
                          '-1.713223e+003',
                          '1.921236e+003;'
                        ]
               ]
        
);
# access  in simple hash			
foreach my $key (keys %person)
{
	my $val = $person{$key};
	print "Key: $key value:$val\n";
}

#print "$points";