# perl hash tables'
use strict;

#hash table
my %Robot = (
   'Name' => "T800",
   'ext_map' => 1,
  'ext_info' =>2
);


my %test1 = ( 1 =>0, 2 =>0,	3 =>0,	4 =>0, 	5=>0, 6=>0,
			  7=>0,  8=>0,	9=>0,	10=>0,	11=>0,	12=>0,
			  13=>0, 14=>0, 15=>0, 	16=>0
			);
# print hash structure;
while (my ($key, $value) = each(%Robot) )
{
	print "key:$key value:$value \n";
}

my $test = %Robot->{'ext_map'};
print "Hash access: $test\n";


$test1{5} += 1;

print("--------------Gun freq-----------------");
		while (my ($key, $value) = each(%test1)  )
		{
			#if mathc found save device name and exit
			print("key: $key, value: $value\n");		
		}	