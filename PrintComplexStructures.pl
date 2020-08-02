# PrintComplexStructures Dumper

use strict;
use warnings;
use Data::Dumper;

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
				  
print "Data dump:\n";
print Dumper(%hash_of_hasess);