# get Args
use strict;
use Data::Dumper;

#--------------------------
# parameters: a string to match
# return: true/false
sub rj_MatchGunInfo
#--------------------------
{

	my $text =$_[0];

	if($text =~ /^gun_\d+_info=\w*/){		
		return 1; #true
	}
	else{
		return 0; #false
	}
}

#--------------------------
# parameters: a string to match
# return: true/false
sub rj_MatchGun1Info
#--------------------------
{

	my $text =$_[0];
	if($text =~ /^gun_1_info=\w*/){
		return 1; #true
	}
	else{
		return 0; #false
	}
}

#--------------------------------
# parameters: a string to match
# return: true/false
sub rj_Match_file_extension_arg
#--------------------------------
{
	my $text =$_[0];
	if($text =~ /^file_extension=\w*/) {
		return 1; #true
	}
	else{
		return 0; #false
	}
}

# -----------------------------------------
sub rj_get_Gun_Number_Gun_Device_mapping_from_Params
#------------------------------------------
{
	my $arg;
	my $tmpData;
	my $gunInfoStartIndex = 0;
	my $gunInfoEndIndex = 0;
	my $index = 0;
	my $k = 0;
	my $strIndex = 0;	
	my @gunInfoStrings =();
	#start : gun_1_info=somthinh
	#end: file_extension=rj3_spot
	foreach $arg (@ARGV)
	{	
		if(	rj_MatchGun1Info($arg)) {
			$gunInfoStartIndex = $index;
		}
		if(rj_Match_file_extension_arg($arg)){
		$gunInfoEndIndex = $index;
		}
	$index+=1;
	}

	#print "Start index: $gunInfoStartIndex\n";
	#print "End index: $gunInfoEndIndex\n";
	
	my $gunInfoKey;
	my %hash_gun;

	$index = $gunInfoStartIndex;
	
	while ($index < $gunInfoEndIndex)
	{
		$arg = $ARGV[$index];
		#print "Arg: $arg\n";
		if(rj_MatchGunInfo($arg))
		{
			$tmpData = $arg;
			$k = $index + 1; 
			$arg = $ARGV[$k];
			while(!rj_MatchGunInfo($arg) && $k< $gunInfoEndIndex)
			{
				$tmpData = $tmpData.$arg.".";
				$k+= 1; 
				$arg = $ARGV[$k];
				#print "i: $k\n";		
			}
			print "tmpData: $tmpData\n";
			@gunInfoStrings[$strIndex] =  $tmpData;
			$strIndex +=1;
		}
		$index +=1;
	}
	return @gunInfoStrings;
}

#----------------------------------
# parameters: ext_info, external index
# return: true/false
sub rj_get_Device_Name_From_ExtInfo
#----------------------------------
{
	# hash of arrays
	my $ext_info_param = $_[0];
	my $ext_info_index = $_[1];
	my $key ="none";
	my $value;	
	my $device; 	
	
	#Step 2) from robot->ext_info get device
	my $atr_indices = $ext_info_param->{'indices'};
	
	while ((my ($key, $value) = each(%$atr_indices)) && ($device ne $key)  )
	{
		#if mathc found save device name and exit
		if($ext_info_index == $value){
			$device = $key;
			last; #break the loop	
		}
	}
	# TODO Check for valid robot group 
	if($value < 2){	
		print "The device is: $device\n";
		return $device;
	}
	else {
		print "Device group is rail!!!";
		return "rail";
	}
	 	
}

#-------------------------------------
# parameters: array of gun mapping, ext_info structre, ext_index on location
# return: gun number
sub rj_get_Gun_Number_from_Mapping
#-------------------------------------
{
	#input params:
	my $gunMapping = $_[0];
	my $ext_info_param = $_[1];
	my $extIndex = $_[2];	
	
	my $gunNumber;
	my $str;
	# get device name from ext_info	
	my $deviceName =rj_get_Device_Name_From_ExtInfo($ext_info_param, $extIndex);
	
	print "--------------------------------------\n";
	print "The final device name is: $deviceName \n";
	print "--------------------------------------\n";
	
	my @tmpArray = @{$gunMapping};
	print Dumper(@tmpArray);
	
	for my $i (0..15)
	{
		$str = $tmpArray[$i];
		#string , substring	
		print "str: $str\n";
		if (index($str, $deviceName) != -1) {
			print "str contains $deviceName\n";
			return $i + 1;
		}
	}
	return -1;
} 

# ============================TEST DATA===============================
 my $ext_info_param = {
					  'joint_type' => [1, 1, 1, 1 ],
					  'names' => {
								   'a7_op330_5000_20060301.j1',
								   'gun1.zange',
								   'gun2.zange',
								   'gun3.zange'
								 },
					  'indices' => {
									 'gun3.zange' => 4,
									 'gun2.zange' => 3,
									 'a7_op330_5000_20060301.j1' => 1,
									 'gun1.zange' => 2
								   },
					  'ext_num' => 4,
					  'units' => {
								   '  mm',
								   '  mm',
								   '  mm',
								   '  mm'
								 }
				};
		
   my %ext_map_param =  {
							'z1' 	=> { 'group' => '3' },
							'3' 	=> { '1' => 2 },
							'gun2' 	=> { 'group' => '2' },
							'2' 	=> { '1' => 1 }
						};

						
my %ext_map_param1  = {
						'1' 						=> { '1' => 1 },
					    'gun1' 						=> { 'group' => '2' },
						'a7_op330_5000_20060301' 	=> { 'group' => '1' },
						'gun3' 						=> { 'group' => '3' },
						'3' 						=> { '1' => 4 },
						'gun2' 						=> { 'group' => '2' },
						'2' 						=> { '1' => 2, '2' => 3 }
					  };
				
# ============================END TEST DATA==============================


# Step3 get gun number from
my @gunMapping = rj_get_Gun_Number_Gun_Device_mapping_from_Params(@ARGV);

my $gunNumber = rj_get_Gun_Number_from_Mapping(\@gunMapping, $ext_info_param, 3);

print "Final gun number is: $gunNumber \n";