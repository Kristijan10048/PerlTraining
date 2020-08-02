# Boolean Operators
# && = and
# || = or
# !  = negation

# Note: The function lc() converts a string to lowercase.
my $boolVar = 0; # false;
my $hasTrue = 1; # true;

if($boolVar)
{
	print "your var is true!\n";
}
else
{
	print "Your var is false!\n";
}

if( ($boolVar) || ($hasTrue) )
{
	print "Some of you vars is true!\n";
}
else
{
	print "None of your vars are true!\n";
}
