#!/bin/user/perl -w

while ($line = <STDIN>){
    chomp $line;
    (@digits) = ($line  =~ /(\d+\.\d+)/);
    foreach $digit (@digits){
        $rounded_num = int($digit+0.5);
        print "$rounded_num\n"
    }
}   