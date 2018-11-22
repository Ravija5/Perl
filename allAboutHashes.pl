#!/usr/bin/perl -w
use Data::Dumper;
#-----------
#Hashes
#-----------
# my %hash1 = (
#     "cat" => "1",
#     "birds" => "2",
#     "fish" => "3",
# );

#Accesing individual value using key 
# print $hash1{"cat"}."\n";

# #Accesing individual key using value 
# #Given meat, find the key i.e cat

#Adding value in a hash 
# ${hash1}{"hamster"} = "4";


# #Deleting element in a hash
# delete $hash1{"hamster"};

# foreach $i (keys %hash1){
#     if ($hash1{$i} eq "meat"){
#         print $i."\n";
#     }
# }

# #Iterating through a hash using foreach/for -> UNSORTED 
# Sorting based on keys  -> foreach $key (sort keys %hash1)
# Sorting based on values  -> foreach $key (sort { $hash1{$a} cmp/le/ge $hash1{$b} }keys %hash1)
# foreach $key (sort {$hash1{$a} <=> $hash1{$b}} keys %hash1){
#     print "$key => $hash1{$key}"."\n";
# }


#Iterating through a hash using while
# while (my ($key, $value) = each %hash1){
#     print "$key, $value\n";
# }
#--------------------
#Hashes of Hashes
#--------------------
my %grades;

#The only way to access internal hash is through teh refernec in the grades hash
$grades{"Maths"}{"1A"} = 84;
$grades{"Maths"}{"1B"} = 90;
$grades{"COMP"}{"2041"} = 80;
$grades{"COMP"}{"1521"} = 85;
$grades{"COMP"}{"1531"} = 95;

print Dumper \%grades;

foreach my $name (sort keys %grades){
    foreach my $marks (keys %{$grades{$name}} ){
        print "$name: $marks = $grades{$name}{$marks}\n";
    }
}


#------------------
#Arrays of Hashes
#------------------

# my @test; 
# #passing a reference of the hash.
# #First element of array ontains a pointer to the whole hash.
# push @test, \%hash1; 

# print $test[0]."\n"; # HASH(Addr value)
# print $test[0]{"fish"}. "\n"; #seeds