#!/usr/bin/perl -w
use strict;
use Data::Dumper;

my @sorted_arr = sort {$a <=> $b} @ARGV;
#print Dumper(\@sorted_arr);

my $length = $#sorted_arr + 1;
#print "Length = $length\n";

for (my $i = 0; $i < $length; $i++){
    if($sorted_arr[$i]+1 != $sorted_arr[$i+1]){
        my $missing = $sorted_arr[$i]+1;
        print "Missing = $missing\n";
        exit 0;
    }
}