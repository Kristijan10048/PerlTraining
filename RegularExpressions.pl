use strict;

my $expr  = "test 	= 	10.12";
my $expr11  = "test 	= 	10 + 2";
my $expr1 = "Fred 1";
my $expr2 = "3.1";
my $expr3  = "123";

if( $expr11 =~ /^test\s*=\s*(\d+(\.\d+)?)/ ){
	print "pattern match!\n";
	print "1 = $1\n" ;
	print "2 = $2\n" ;
} 		else{ 
	print "unrecognized pattern!";
	
}