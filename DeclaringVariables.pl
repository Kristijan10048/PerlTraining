use strict;
my $var    = " somme variable" ;
my $name   = "Arthur";
my $whoami = 'Just oanother Perl Hacker';
my $broj   = 42.0;
my $float  = 0.0001;
my $sum = $broj + $float;

my $br1 = 4.1;
my $br2 = 3.0;
my $res = $br1 %= $br2;
print "sum: $sum \n"; 
print "real mod= $res";

# structure test
print "\n";
print "=======================================\n";
print "===========Structute test==============\n";
print "=======================================\n";
print "\n";

#structure test
my $test_atrtr = 'test_attr';
my $object;
# define structure
$object->{'test_attr'}  = 'test attribute';
# $object->{'level1'} 	= 'level1';
$object->{'level11'}->{'level12'} = 'New level';

print "struct value: 		$object->{'test_attr'} \n";
print "struct value level2: $object->{ 'level11'}->{'level12'} \n";