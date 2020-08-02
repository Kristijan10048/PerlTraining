use strict;

my %person  = (
			'name' => 'stark',
			'model' => "Mk42",
			'Contry' => "Us",
			'Nickname' => "Ultimate bad ass!"
			);

my %currLine = (
	'Points' => [
					   [
                          '1.000000e+000',
                          '0.000000e+000',
                          '0.000000e+000'
                        ],
                        [
                          '0.000000e+000',
                          '1.000000e+000',
                          '0.000000e+000'
                        ]
				],
				
	'Name' =>'Line_0_0_1'
);
			
# access  in simple hash			
foreach my $key (keys %person)
{
	my $val = $person{$key};
	print "Key: $key value:$val\n";
}

my @pts = @{$currLine{'Points'}};
print "$pts[0][0]";
# foreach (@pts)
# {
	# print "Point: $_\n";
# }
# foreach my $key (keys %currLine)
# {
	# my $val = $currLine{$key};
	# print "Key: $key value:$val\n";
# }

print "Hash content\n";
foreach my $k (keys %currLine) 
{
   foreach (@{$currLine{'$k'}}) 
   {
      print " : $_";
   }
   print "\n";
}