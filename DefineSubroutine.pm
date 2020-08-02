use strict;

sub MyFisrstSub
{
	print "Hello world in a sub! \n";
}

sub MySecondSub
{
	return "test";
}

sub MySubWithParameters
{
	my	@args = @_;
	my $firstArg = $_[0];
	my $secondArg = $_[1];
	print "Zero arg: $0\n";
	print "First argument is:  $firstArg\n";
	print "Second argument is: $secondArg\n";	
	print "Args: @args\n";
}
#----------------------------Robcad style-------------------------
sub _create_spot_command {
#--------------------------------------------------------------------  
# passing of parameters :)
  my $robot  = shift;
  my $loc = shift;  
  print "Robot is $robot on $loc";
 }
 
# ************************Main************************
print "Calling my first sub\n";
# Function call
MyFisrstSub();

# return value from functon
my $val = MySecondSub;
print "Return from sub: $val\n";

print "********************ARGS*********************\n";
MySubWithParameters("ArgTest1", "ArgTest2");

print "*******Passing argumetns in robcad style**********\n";
_create_spot_command("R2D2", "Mars");