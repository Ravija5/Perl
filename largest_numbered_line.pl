#!/bin/usr/perl -w
use strict;
#use Data::Dumper;

#my %line_values;
foreach my $line (<>){
    chomp $line;
    my @words = split / /, $line;
    foreach my $word (@words){
        print "Word is $word\n";
        if ($word =~ /[0-9]+[\.][0-9]+/ or $word =~ /[0-9]+/){
            #print "$word\n";
            my $num = ($word =~ (/([0-9]+[\.][0-9]+)/));
            
        }
    }
}