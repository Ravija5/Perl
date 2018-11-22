#!/bin/usr/perl -w
use strict;

while (my $word = shift @ARGV){
    if ($word =~ /[aeiouAEIOU]{3}/){
        print $word." ";
    }
    
}
print "\n";