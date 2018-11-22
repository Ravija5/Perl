#!/bin/user/perl -w

$file = $ARGV[0];

open FILE, '<', "$file" or die "Couldnt open file\n";

while ($line = <FILE>){
    chomp $line;
    if (($lname, $fname) = ($line =~ /\|([A-Z][a-z]*), (.*?)\|/)){
        $line =~ s/[A-Z][a-z]+, .*?\|/<Replace ME>/;
        $line =~ s/<Replace ME>/$fname $lname|/;
        print $line."\n";
    }
}