#!/usr/bin/perl -w
#scrpt to remove any vowels from lines input from stdin

#if you want each line to be processed right after its read
while($line = <STDIN>){
    chomp $line;
    $line =~ s/[aeiouAEIOU]//g;
    print "$line\n";
}

#all lines processed together
foreach $line (<STDIN>){
    $line =~ s/[aeiouAEIOU]//g;
    print "$line\n";
}
