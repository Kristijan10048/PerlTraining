# Regular Expressions Handling with Eval

# read line form keyboard
$line = <>;
$line = <>;

# hash table
%hash = (
 number     => qr/^[0-9]+$/,
 alphabets  => qr/^[a-zA-Z]+$/
);

while( my ($key,$value) = each(%hash) ) 
{
	if(eval    "$line =~ /$value/") 
	{
		print "$key\n";
	}
}