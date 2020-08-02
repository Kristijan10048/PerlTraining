use strict;

my @fruits   = ('apples', 'oranges', 'passionfruit', 'grapes');
my @numbers  = (1, 23, 4, 11, 12, 13, 14, 55, -300);

print "fruits: $fruits[0]; \n";
print "fruits1: $fruits[0,2]";
print $fruits[0,2,3];

#matlab style 
my ($fruit1, $fruit2, $fruit3, $fruit4) = @fruits;

print "fruit1: $fruit1\n";
print "fruit2: $fruit2\n";
print "fruit3: $fruit3\n";
print "fruit4: $fruit4\n";
