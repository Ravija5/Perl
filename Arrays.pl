#!/usr/bin/perl -w

#appending a value line into an array lines
while ($line = <STDIN>){
    push @lines, $line;
}
print @lines

my @names = ('Rav', 'hrg');
#Executing each for loop once for every element of araay lines
for $name (@names){
    print "$name"." ";
}

#Manipulating arrays

#pop function removes and returns last element of array
$last_name = pop @names;
print $last_name

#push function appends values at the end of array
push @names, 'NewName';
print "@names\n"

#shift moves the array array one unit to the left and returns 
#the leftmost element
$first_name = shift @names;

#unshift places values at the beginning  of the array



