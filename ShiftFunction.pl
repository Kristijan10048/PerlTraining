use strict;
# ###################################################
# Perl's shift() function is used to remove and return 
# the first element from an array, 
# which reduces the number of elements by one. 
# The first element in the array is the one with the lowest index. 
# ###################################################
my @array = ('One' ,'Two', 'Thre');
my $theOne = shift(@array);
print "The one is: $theOne\n";

# emty var robot
my $robot = shift;
print "My robot is: $robot";