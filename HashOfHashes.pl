#************************************************************************** 
# 		my %hash_copy = %hash;  # copy a hash
#    	my $href_copy = $href;  # copy a hash ref
#**************************************************************************
use strict;

my %hash_of_hasess =  ( 'first' =>  {
                                    'one'   => '1', 
                                    'two'   => '2', 
                                    'three' => '3',
                                 },
                     'second' => {
                                    'four'  => '4',
                                    'five'  => '5',
                                 },
                   );
				   
print ("-----------------hash access-----------------------\n");

# hash access method 1
my $test1 = $hash_of_hasess{'first'}{'one'};
print "Val1: $test1\n";

# hash access method 2
my $test2 = %hash_of_hasess->{'second'}->{'five'};
print "Val2: $test2\n";
print ("----------------------------------------\n");

# hash reference
my $subhash = $hash_of_hasess{'first'};

print $subhash->{'one'};
