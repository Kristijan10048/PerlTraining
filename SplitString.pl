#split string in perl

use strict;

# test array
my @ext =(2447.20,0.00,0.00,70.10);
print "ext val: $ext[0] \n";


my $ext1 = "2447.20,0.00,0.00,70.10";
my @ext2 = split(/[,]/, $ext1);

foreach my $val (@ext2)
{
	print "Val: $val \n";
}


