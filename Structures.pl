use strict;
# scalar variables start wiht $
# array variables start  with @
# hash variables start   with %
my $struktura = "test";
print "My first structre!!\n";
print $struktura;

# hash definition and assignment
my %struktura1;
$struktura1{'Name'}='Test1';
$struktura1{'LastName'}='Testovski';
$struktura1{'E-mail'}='Test@gmail.com';

print "Struktura:\n";
print "Name: $struktura1{'Name'}\n" ;
print "Last name: $struktura1{'LastName'}\n";
print "E-mail: $struktura1{'E-mail'}\n";