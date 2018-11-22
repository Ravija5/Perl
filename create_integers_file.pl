#!/usr/bin/perl

$first_range = $ARGV[0];
$sec_range = $ARGV[1];
$file = $ARGV[2];

#print "$first_range"."$sec_range"."$file"."\n";

open FILE, '>', "$file";
foreach $x ($first_range .. $sec_range){
    print FILE "$x\n";
    $first_range++;
}
close FILE;