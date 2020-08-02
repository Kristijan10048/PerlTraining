use strict;
# ########################SPrintF##################################
# The sprintf built-in function can be used to translate a format 
# string with some conversions embedded inside, and some parameters 
# into a formatted string. Each conversion is specified by the starting 
# character of the percent sign (%)
# ###############################$$$$$$$###########################
my $str1 = sprintf("The number one is %i\n", 10);
my $address = sprintf("%s\\%i\\%i-%i", "bul.V.S.Bato",35,3,10);
print "Formated string is:\n $str1";
print "The address is: $address";

