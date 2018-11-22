#!/bin/user/perl -w
use strict;
use Data::Dumper;

open FILE, '<', $ARGV[0] or die; 
my %whale_data;

foreach my $line (<FILE>){
    if( $line =~ /^(\d{2}\/\d{2}\/\d{2}) .{2} ([A-Za-z]+.*)/){
        my $date = $1;
        my $name = $2;

        $whale_data{$name} = $date;
    }
}
   
foreach my $key (sort keys %whale_data){
    print "$key, $whale_data{$key}\n";
}
#print Dumper(\%whale_data);