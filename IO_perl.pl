#!/usr/bin/perl

#STDIN is the default file handle for reading in text
#--------------------
#TAKING INPUT
#--------------------

#Taking in input from user
$input = <STDIN>;

#Taking in input in a list (Context is very important in perl!!!!!)
@linput = <STDIN>;

#Taking in continuous input
while(<STDIN>){
    print $_;
}

#-------------------------------------------
#OPENING A FILE/ WRITING IN A FILE/CLOSING
#-------------------------------------------

#Opening a file for reading
#open file_handle, '>/<', file_name or die "error_message"
open IN, '<', $filename or
    die "$0: open of $filename failed";

#Opening a file for writing
open OUT, '>', $filename or 
    die "$0: open of $filename failed";

#Writing in a file
#while reading continuously from IN
while($line = <IN>){
    print OUT $line; #prints each line of IN into OUT
}

#Reading an array and printing it out
@lines = <IN>;
print OUT @lines;
close OUT