use strict;

# ###################################################
# 				RJ3_spot.pm example
# ###################################################

my @EXPORT = qw(rj_create_spot_command 
				rj_create_eg_spot_command 
				pkg_read_dcm_input 
				pkg_set_application_type);
				
# print export;
foreach my $name (@EXPORT)
{
	print "EXp: $name\n";
}
print "*********************************************\n";

# ********************************************************************
# The 'quote word' function qw() is used to generate a list of words. 
# If takes a string such as:  tempfile tempdir
# and returns a quoted list: 'tempfile', 'tempdir'
# saving you from the tedium of having to quote and comma-separate each element of the list by hand. 
# *********************************************************************		
my @names = qw(Kernighan Ritchie Pike);
# print names
foreach my $name (@names)
{
	print "Name: $name\n";
}
 