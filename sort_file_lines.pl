#!/bin/user/perl -w
use strict;
use Data::Dumper;
my %line_length;
my $file = $ARGV[0];

open FILE, "<" , "$file" or die;

foreach my $line (<FILE>){
    chomp ($line);
    $line_length{$line} = length($line) - 1;
}

#print Dumper(\%line_length);

foreach my $key (sort { $line_length{$a} <=> $line_length{$b} or $a cmp $b} keys %line_length){
    print "$key -> $line_length{$key}\n";
    
}