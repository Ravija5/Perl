#!/bin/user/perl -w
use strict;

while (my $line = <STDIN>){
    chomp $line;
    my @sent = split /\s+/, $line;
    #print @sent;
   
    my $len = $#sent + 1;
    #print $len;
    for (my $i = $len-1 ; $i >= 0 ; $i--){
        print "$sent[$i] ";
    }
    
}